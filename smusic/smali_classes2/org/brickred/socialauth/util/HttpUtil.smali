.class public Lorg/brickred/socialauth/util/HttpUtil;
.super Ljava/lang/Object;
.source "HttpUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/brickred/socialauth/util/HttpUtil$DefaultTrustManager;
    }
.end annotation


# static fields
.field private static final LOG:Lorg/apache/commons/logging/Log;

.field private static proxyObj:Ljava/net/Proxy;

.field private static timeoutValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 77
    const-class v5, Lorg/brickred/socialauth/util/HttpUtil;

    invoke-static {v5}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v5

    sput-object v5, Lorg/brickred/socialauth/util/HttpUtil;->LOG:Lorg/apache/commons/logging/Log;

    .line 78
    sput-object v6, Lorg/brickred/socialauth/util/HttpUtil;->proxyObj:Ljava/net/Proxy;

    .line 79
    sput v7, Lorg/brickred/socialauth/util/HttpUtil;->timeoutValue:I

    .line 82
    const/4 v4, 0x0

    .line 86
    .local v4, "isAndroidFroyo":Z
    :try_start_0
    const-string v5, "android.os.Build$VERSION"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 87
    .local v0, "clazz":Ljava/lang/Class;
    const-string v5, "SDK_INT"

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 88
    .local v3, "field":Ljava/lang/reflect/Field;
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    move-result v5

    const/16 v6, 0xa

    if-ge v5, v6, :cond_0

    .line 89
    const/4 v4, 0x1

    .line 98
    .end local v0    # "clazz":Ljava/lang/Class;
    .end local v3    # "field":Ljava/lang/reflect/Field;
    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    .line 100
    :try_start_1
    const-string v5, "TLS"

    invoke-static {v5}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    .line 101
    .local v1, "ctx":Ljavax/net/ssl/SSLContext;
    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljavax/net/ssl/TrustManager;

    const/4 v7, 0x0

    new-instance v8, Lorg/brickred/socialauth/util/HttpUtil$1;

    invoke-direct {v8}, Lorg/brickred/socialauth/util/HttpUtil$1;-><init>()V

    aput-object v8, v6, v7

    .line 116
    const/4 v7, 0x0

    .line 101
    invoke-virtual {v1, v5, v6, v7}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 118
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v5

    .line 117
    invoke-static {v5}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 120
    new-instance v5, Lorg/brickred/socialauth/util/HttpUtil$2;

    invoke-direct {v5}, Lorg/brickred/socialauth/util/HttpUtil$2;-><init>()V

    invoke-static {v5}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 374
    .end local v1    # "ctx":Ljavax/net/ssl/SSLContext;
    :goto_1
    return-void

    .line 129
    :catch_0
    move-exception v2

    .line 130
    .local v2, "e":Ljava/lang/Exception;
    sget-object v5, Lorg/brickred/socialauth/util/HttpUtil;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "SSLContext is not supported by your android application."

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 131
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 130
    invoke-interface {v5, v6}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    goto :goto_1

    .line 137
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_2
    const-string v5, "TLS"

    invoke-static {v5}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    .line 138
    .restart local v1    # "ctx":Ljavax/net/ssl/SSLContext;
    const/4 v5, 0x0

    new-array v5, v5, [Ljavax/net/ssl/KeyManager;

    .line 139
    const/4 v6, 0x1

    new-array v6, v6, [Ljavax/net/ssl/TrustManager;

    const/4 v7, 0x0

    new-instance v8, Lorg/brickred/socialauth/util/HttpUtil$DefaultTrustManager;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Lorg/brickred/socialauth/util/HttpUtil$DefaultTrustManager;-><init>(Lorg/brickred/socialauth/util/HttpUtil$DefaultTrustManager;)V

    aput-object v8, v6, v7

    .line 140
    new-instance v7, Ljava/security/SecureRandom;

    invoke-direct {v7}, Ljava/security/SecureRandom;-><init>()V

    .line 138
    invoke-virtual {v1, v5, v6, v7}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 141
    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->setDefault(Ljavax/net/ssl/SSLContext;)V
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/KeyManagementException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_1

    .line 142
    .end local v1    # "ctx":Ljavax/net/ssl/SSLContext;
    :catch_1
    move-exception v2

    .line 143
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_1

    .line 144
    .end local v2    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_2
    move-exception v2

    .line 145
    .local v2, "e":Ljava/security/KeyManagementException;
    invoke-virtual {v2}, Ljava/security/KeyManagementException;->printStackTrace()V

    goto :goto_1

    .line 146
    .end local v2    # "e":Ljava/security/KeyManagementException;
    :catch_3
    move-exception v2

    .line 147
    .local v2, "e":Ljava/lang/NoClassDefFoundError;
    sget-object v5, Lorg/brickred/socialauth/util/HttpUtil;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "SSLContext is not supported by your applicaiton server."

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 148
    invoke-virtual {v2}, Ljava/lang/NoClassDefFoundError;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 147
    invoke-interface {v5, v6}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 149
    invoke-virtual {v2}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    goto :goto_1

    .line 150
    .end local v2    # "e":Ljava/lang/NoClassDefFoundError;
    :catch_4
    move-exception v2

    .line 151
    .local v2, "e":Ljava/lang/Exception;
    sget-object v5, Lorg/brickred/socialauth/util/HttpUtil;->LOG:Lorg/apache/commons/logging/Log;

    const-string v6, "Error while createing SSLContext"

    invoke-interface {v5, v6}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 152
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 91
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v5

    goto/16 :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildParams(Ljava/util/Map;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 354
    .local p0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 356
    .local v1, "argList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_1

    .line 363
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 364
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 365
    .local v4, "s":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-lt v2, v6, :cond_2

    .line 371
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 356
    .end local v2    # "i":I
    .end local v4    # "s":Ljava/lang/StringBuilder;
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 357
    .local v3, "key":Ljava/lang/String;
    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 358
    .local v5, "val":Ljava/lang/String;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 359
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v5}, Lorg/brickred/socialauth/util/HttpUtil;->encodeURIComponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 360
    .local v0, "arg":Ljava/lang/String;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 366
    .end local v0    # "arg":Ljava/lang/String;
    .end local v3    # "key":Ljava/lang/String;
    .end local v5    # "val":Ljava/lang/String;
    .restart local v2    # "i":I
    .restart local v4    # "s":Ljava/lang/StringBuilder;
    :cond_2
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-eq v2, v6, :cond_3

    .line 368
    const-string v6, "&"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static decodeURIComponent(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "encodedURI"    # Ljava/lang/String;

    .prologue
    .line 427
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 429
    .local v1, "buffer":Ljava/lang/StringBuffer;
    const/4 v7, 0x0

    .line 431
    .local v7, "sumb":I
    const/4 v4, 0x0

    .local v4, "i":I
    const/4 v6, -0x1

    .local v6, "more":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-lt v4, v8, :cond_0

    .line 478
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 432
    :cond_0
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 434
    .local v0, "actualChar":C
    sparse-switch v0, :sswitch_data_0

    .line 450
    move v2, v0

    .line 454
    .local v2, "bytePattern":I
    :goto_1
    and-int/lit16 v8, v2, 0xc0

    const/16 v9, 0x80

    if-ne v8, v9, :cond_4

    .line 455
    shl-int/lit8 v8, v7, 0x6

    and-int/lit8 v9, v2, 0x3f

    or-int v7, v8, v9

    .line 456
    add-int/lit8 v6, v6, -0x1

    if-nez v6, :cond_1

    .line 457
    int-to-char v8, v7

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 431
    :cond_1
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 436
    .end local v2    # "bytePattern":I
    :sswitch_0
    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 437
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v8

    if-eqz v8, :cond_2

    add-int/lit8 v8, v0, -0x30

    :goto_3
    and-int/lit8 v3, v8, 0xf

    .line 439
    .local v3, "hb":I
    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 440
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v8

    if-eqz v8, :cond_3

    add-int/lit8 v8, v0, -0x30

    :goto_4
    and-int/lit8 v5, v8, 0xf

    .line 442
    .local v5, "lb":I
    shl-int/lit8 v8, v3, 0x4

    or-int v2, v8, v5

    .line 443
    .restart local v2    # "bytePattern":I
    goto :goto_1

    .line 438
    .end local v2    # "bytePattern":I
    .end local v3    # "hb":I
    .end local v5    # "lb":I
    :cond_2
    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v8

    add-int/lit8 v8, v8, 0xa

    add-int/lit8 v8, v8, -0x61

    goto :goto_3

    .line 441
    .restart local v3    # "hb":I
    :cond_3
    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v8

    add-int/lit8 v8, v8, 0xa

    add-int/lit8 v8, v8, -0x61

    goto :goto_4

    .line 446
    .end local v3    # "hb":I
    :sswitch_1
    const/16 v2, 0x20

    .line 447
    .restart local v2    # "bytePattern":I
    goto :goto_1

    .line 459
    :cond_4
    and-int/lit16 v8, v2, 0x80

    if-nez v8, :cond_5

    .line 460
    int-to-char v8, v2

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 461
    :cond_5
    and-int/lit16 v8, v2, 0xe0

    const/16 v9, 0xc0

    if-ne v8, v9, :cond_6

    .line 462
    and-int/lit8 v7, v2, 0x1f

    .line 463
    const/4 v6, 0x1

    .line 464
    goto :goto_2

    :cond_6
    and-int/lit16 v8, v2, 0xf0

    const/16 v9, 0xe0

    if-ne v8, v9, :cond_7

    .line 465
    and-int/lit8 v7, v2, 0xf

    .line 466
    const/4 v6, 0x2

    .line 467
    goto :goto_2

    :cond_7
    and-int/lit16 v8, v2, 0xf8

    const/16 v9, 0xf0

    if-ne v8, v9, :cond_8

    .line 468
    and-int/lit8 v7, v2, 0x7

    .line 469
    const/4 v6, 0x3

    .line 470
    goto :goto_2

    :cond_8
    and-int/lit16 v8, v2, 0xfc

    const/16 v9, 0xf8

    if-ne v8, v9, :cond_9

    .line 471
    and-int/lit8 v7, v2, 0x3

    .line 472
    const/4 v6, 0x4

    .line 473
    goto :goto_2

    .line 474
    :cond_9
    and-int/lit8 v7, v2, 0x1

    .line 475
    const/4 v6, 0x5

    goto :goto_2

    .line 434
    nop

    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_0
        0x2b -> :sswitch_1
    .end sparse-switch
.end method

.method public static doHttpRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lorg/brickred/socialauth/util/Response;
    .locals 9
    .param p0, "urlStr"    # Ljava/lang/String;
    .param p1, "requestMethod"    # Ljava/lang/String;
    .param p2, "body"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/brickred/socialauth/util/Response;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/brickred/socialauth/exception/SocialAuthException;
        }
    .end annotation

    .prologue
    .line 177
    .local p3, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 178
    .local v5, "url":Ljava/net/URL;
    sget-object v6, Lorg/brickred/socialauth/util/HttpUtil;->proxyObj:Ljava/net/Proxy;

    if-eqz v6, :cond_6

    .line 179
    sget-object v6, Lorg/brickred/socialauth/util/HttpUtil;->proxyObj:Ljava/net/Proxy;

    invoke-virtual {v5, v6}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 184
    .local v0, "conn":Ljava/net/HttpURLConnection;
    :goto_0
    sget-object v6, Lorg/brickred/socialauth/util/MethodType;->POST:Lorg/brickred/socialauth/util/MethodType;

    invoke-virtual {v6}, Lorg/brickred/socialauth/util/MethodType;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 185
    sget-object v6, Lorg/brickred/socialauth/util/MethodType;->PUT:Lorg/brickred/socialauth/util/MethodType;

    invoke-virtual {v6}, Lorg/brickred/socialauth/util/MethodType;->toString()Ljava/lang/String;

    move-result-object v6

    .line 186
    invoke-virtual {v6, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 187
    :cond_0
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 190
    :cond_1
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 192
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 193
    sget v6, Lorg/brickred/socialauth/util/HttpUtil;->timeoutValue:I

    if-lez v6, :cond_2

    .line 194
    sget-object v6, Lorg/brickred/socialauth/util/HttpUtil;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Setting connection timeout : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v8, Lorg/brickred/socialauth/util/HttpUtil;->timeoutValue:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 195
    sget v6, Lorg/brickred/socialauth/util/HttpUtil;->timeoutValue:I

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 197
    :cond_2
    if-eqz p1, :cond_3

    .line 198
    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 200
    :cond_3
    if-eqz p3, :cond_4

    .line 201
    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_7

    .line 207
    :cond_4
    const/4 v3, 0x0

    .line 208
    .local v3, "os":Ljava/io/OutputStream;
    if-eqz p2, :cond_5

    .line 209
    if-eqz p1, :cond_5

    .line 210
    sget-object v6, Lorg/brickred/socialauth/util/MethodType;->GET:Lorg/brickred/socialauth/util/MethodType;

    invoke-virtual {v6}, Lorg/brickred/socialauth/util/MethodType;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 211
    sget-object v6, Lorg/brickred/socialauth/util/MethodType;->DELETE:Lorg/brickred/socialauth/util/MethodType;

    invoke-virtual {v6}, Lorg/brickred/socialauth/util/MethodType;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 212
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    .line 213
    new-instance v4, Ljava/io/DataOutputStream;

    invoke-direct {v4, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 214
    .local v4, "out":Ljava/io/DataOutputStream;
    const-string v6, "UTF-8"

    invoke-virtual {p2, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/DataOutputStream;->write([B)V

    .line 215
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->flush()V

    .line 218
    .end local v4    # "out":Ljava/io/DataOutputStream;
    :cond_5
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    new-instance v6, Lorg/brickred/socialauth/util/Response;

    invoke-direct {v6, v0}, Lorg/brickred/socialauth/util/Response;-><init>(Ljava/net/HttpURLConnection;)V

    return-object v6

    .line 181
    .end local v0    # "conn":Ljava/net/HttpURLConnection;
    .end local v3    # "os":Ljava/io/OutputStream;
    :cond_6
    :try_start_1
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .restart local v0    # "conn":Ljava/net/HttpURLConnection;
    goto/16 :goto_0

    .line 201
    :cond_7
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 202
    .local v2, "key":Ljava/lang/String;
    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v0, v2, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 219
    .end local v0    # "conn":Ljava/net/HttpURLConnection;
    .end local v2    # "key":Ljava/lang/String;
    .end local v5    # "url":Ljava/net/URL;
    :catch_0
    move-exception v1

    .line 220
    .local v1, "e":Ljava/lang/Exception;
    new-instance v6, Lorg/brickred/socialauth/exception/SocialAuthException;

    invoke-direct {v6, v1}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method

.method public static doHttpRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Lorg/brickred/socialauth/util/Response;
    .locals 16
    .param p0, "urlStr"    # Ljava/lang/String;
    .param p1, "requestMethod"    # Ljava/lang/String;
    .param p4, "inputStream"    # Ljava/io/InputStream;
    .param p5, "fileName"    # Ljava/lang/String;
    .param p6, "fileParamName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lorg/brickred/socialauth/util/Response;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/brickred/socialauth/exception/SocialAuthException;
        }
    .end annotation

    .prologue
    .line 253
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p3, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    new-instance v11, Ljava/net/URL;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 254
    .local v11, "url":Ljava/net/URL;
    sget-object v12, Lorg/brickred/socialauth/util/HttpUtil;->proxyObj:Ljava/net/Proxy;

    if-eqz v12, :cond_6

    .line 255
    sget-object v12, Lorg/brickred/socialauth/util/HttpUtil;->proxyObj:Ljava/net/Proxy;

    invoke-virtual {v11, v12}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;

    .line 260
    .local v4, "conn":Ljava/net/HttpURLConnection;
    :goto_0
    sget-object v12, Lorg/brickred/socialauth/util/MethodType;->POST:Lorg/brickred/socialauth/util/MethodType;

    invoke-virtual {v12}, Lorg/brickred/socialauth/util/MethodType;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 262
    sget-object v12, Lorg/brickred/socialauth/util/MethodType;->PUT:Lorg/brickred/socialauth/util/MethodType;

    invoke-virtual {v12}, Lorg/brickred/socialauth/util/MethodType;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 263
    :cond_0
    const/4 v12, 0x1

    invoke-virtual {v4, v12}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 266
    :cond_1
    const/4 v12, 0x1

    invoke-virtual {v4, v12}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 268
    const/4 v12, 0x1

    invoke-virtual {v4, v12}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 269
    sget v12, Lorg/brickred/socialauth/util/HttpUtil;->timeoutValue:I

    if-lez v12, :cond_2

    .line 270
    sget-object v12, Lorg/brickred/socialauth/util/HttpUtil;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Setting connection timeout : "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v14, Lorg/brickred/socialauth/util/HttpUtil;->timeoutValue:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 271
    sget v12, Lorg/brickred/socialauth/util/HttpUtil;->timeoutValue:I

    invoke-virtual {v4, v12}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 273
    :cond_2
    if-eqz p1, :cond_3

    .line 274
    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 276
    :cond_3
    if-eqz p3, :cond_4

    .line 277
    invoke-interface/range {p3 .. p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_7

    .line 283
    :cond_4
    const/4 v9, 0x0

    .line 284
    .local v9, "os":Ljava/io/OutputStream;
    if-eqz p4, :cond_5

    .line 285
    if-eqz p1, :cond_5

    .line 286
    sget-object v12, Lorg/brickred/socialauth/util/MethodType;->GET:Lorg/brickred/socialauth/util/MethodType;

    invoke-virtual {v12}, Lorg/brickred/socialauth/util/MethodType;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5

    .line 287
    sget-object v12, Lorg/brickred/socialauth/util/MethodType;->DELETE:Lorg/brickred/socialauth/util/MethodType;

    invoke-virtual {v12}, Lorg/brickred/socialauth/util/MethodType;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5

    .line 288
    sget-object v12, Lorg/brickred/socialauth/util/HttpUtil;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, " request"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 289
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "----Socialauth-posting"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 290
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 289
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 291
    .local v3, "boundary":Ljava/lang/String;
    const-string v12, "Content-Type"

    .line 292
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "multipart/form-data; boundary="

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 291
    invoke-virtual {v4, v12, v13}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "--"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 295
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v9

    .line 296
    new-instance v10, Ljava/io/DataOutputStream;

    invoke-direct {v10, v9}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 297
    .local v10, "out":Ljava/io/DataOutputStream;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v13, "\r\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Lorg/brickred/socialauth/util/HttpUtil;->write(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 299
    if-eqz p6, :cond_8

    .line 300
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Content-Disposition: form-data; name=\""

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 301
    move-object/from16 v0, p6

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\"; filename=\""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p5

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 302
    const-string v13, "\"\r\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 300
    invoke-static {v10, v12}, Lorg/brickred/socialauth/util/HttpUtil;->write(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 308
    :goto_2
    const-string v12, "Content-Type: multipart/form-data\r\n\r\n"

    invoke-static {v10, v12}, Lorg/brickred/socialauth/util/HttpUtil;->write(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 311
    :goto_3
    invoke-virtual/range {p4 .. p4}, Ljava/io/InputStream;->read()I

    move-result v2

    .local v2, "b":I
    const/4 v12, -0x1

    if-ne v2, v12, :cond_9

    .line 315
    const-string v12, "\r\n"

    invoke-static {v10, v12}, Lorg/brickred/socialauth/util/HttpUtil;->write(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 318
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 319
    .local v6, "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_a

    .line 331
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v13, "--\r\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Lorg/brickred/socialauth/util/HttpUtil;->write(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 332
    const-string v12, "\r\n"

    invoke-static {v10, v12}, Lorg/brickred/socialauth/util/HttpUtil;->write(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 335
    .end local v2    # "b":I
    .end local v3    # "boundary":Ljava/lang/String;
    .end local v6    # "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v10    # "out":Ljava/io/DataOutputStream;
    :cond_5
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->connect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 339
    new-instance v12, Lorg/brickred/socialauth/util/Response;

    invoke-direct {v12, v4}, Lorg/brickred/socialauth/util/Response;-><init>(Ljava/net/HttpURLConnection;)V

    return-object v12

    .line 257
    .end local v4    # "conn":Ljava/net/HttpURLConnection;
    .end local v9    # "os":Ljava/io/OutputStream;
    :cond_6
    :try_start_1
    invoke-virtual {v11}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;

    .restart local v4    # "conn":Ljava/net/HttpURLConnection;
    goto/16 :goto_0

    .line 277
    :cond_7
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 278
    .local v8, "key":Ljava/lang/String;
    move-object/from16 v0, p3

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v4, v8, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 336
    .end local v4    # "conn":Ljava/net/HttpURLConnection;
    .end local v8    # "key":Ljava/lang/String;
    .end local v11    # "url":Ljava/net/URL;
    :catch_0
    move-exception v5

    .line 337
    .local v5, "e":Ljava/lang/Exception;
    new-instance v12, Lorg/brickred/socialauth/exception/SocialAuthException;

    invoke-direct {v12, v5}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/Throwable;)V

    throw v12

    .line 305
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v3    # "boundary":Ljava/lang/String;
    .restart local v4    # "conn":Ljava/net/HttpURLConnection;
    .restart local v9    # "os":Ljava/io/OutputStream;
    .restart local v10    # "out":Ljava/io/DataOutputStream;
    .restart local v11    # "url":Ljava/net/URL;
    :cond_8
    :try_start_2
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Content-Disposition: form-data;  filename=\""

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 306
    move-object/from16 v0, p5

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\"\r\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 305
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 304
    invoke-static {v10, v12}, Lorg/brickred/socialauth/util/HttpUtil;->write(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    goto :goto_2

    .line 312
    .restart local v2    # "b":I
    :cond_9
    invoke-virtual {v10, v2}, Ljava/io/DataOutputStream;->write(I)V

    goto :goto_3

    .line 320
    .restart local v6    # "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_a
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 321
    .local v7, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v13, "\r\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Lorg/brickred/socialauth/util/HttpUtil;->write(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 322
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v12, "Content-Disposition: form-data; name=\""

    invoke-direct {v13, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 323
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\"\r\n\r\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 322
    invoke-static {v10, v12}, Lorg/brickred/socialauth/util/HttpUtil;->write(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 326
    sget-object v12, Lorg/brickred/socialauth/util/HttpUtil;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v12, v13}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 327
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    const-string v13, "UTF-8"

    invoke-virtual {v12, v13}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/io/DataOutputStream;->write([B)V

    .line 328
    const-string v12, "\r\n"

    invoke-static {v10, v12}, Lorg/brickred/socialauth/util/HttpUtil;->write(Ljava/io/DataOutputStream;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_4
.end method

.method public static encodeURIComponent(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 378
    if-nez p0, :cond_0

    .line 379
    const-string v1, ""

    .line 383
    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    const-string/jumbo v1, "utf-8"

    invoke-static {p0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 385
    const-string v2, "+"

    const-string v3, "%20"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "*"

    const-string v3, "%2A"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 386
    const-string v2, "%7E"

    const-string/jumbo v3, "~"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 388
    :catch_0
    move-exception v0

    .line 389
    .local v0, "wow":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Lorg/brickred/socialauth/exception/SocialAuthException;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static setConnectionTimeout(I)V
    .locals 0
    .param p0, "timeout"    # I

    .prologue
    .line 527
    sput p0, Lorg/brickred/socialauth/util/HttpUtil;->timeoutValue:I

    .line 528
    return-void
.end method

.method public static setProxyConfig(Ljava/lang/String;I)V
    .locals 4
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "port"    # I

    .prologue
    .line 509
    if-eqz p0, :cond_1

    .line 510
    move v0, p1

    .line 511
    .local v0, "proxyPort":I
    if-gez v0, :cond_0

    .line 512
    const/4 v0, 0x0

    .line 514
    :cond_0
    sget-object v1, Lorg/brickred/socialauth/util/HttpUtil;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Setting proxy - Host : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   port : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 515
    new-instance v1, Ljava/net/Proxy;

    sget-object v2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v3, Ljava/net/InetSocketAddress;

    invoke-direct {v3, p0, p1}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v1, v2, v3}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    sput-object v1, Lorg/brickred/socialauth/util/HttpUtil;->proxyObj:Ljava/net/Proxy;

    .line 517
    .end local v0    # "proxyPort":I
    :cond_1
    return-void
.end method

.method public static write(Ljava/io/DataOutputStream;Ljava/lang/String;)V
    .locals 1
    .param p0, "out"    # Ljava/io/DataOutputStream;
    .param p1, "outStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 532
    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 533
    sget-object v0, Lorg/brickred/socialauth/util/HttpUtil;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v0, p1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 534
    return-void
.end method
