.class public Lokhttp3/internal/Platform;
.super Ljava/lang/Object;
.source "Platform.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/Platform$JettyNegoProvider;,
        Lokhttp3/internal/Platform$JdkWithJettyBootPlatform;,
        Lokhttp3/internal/Platform$Android;
    }
.end annotation


# static fields
.field private static final PLATFORM:Lokhttp3/internal/Platform;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    invoke-static {}, Lokhttp3/internal/Platform;->findPlatform()Lokhttp3/internal/Platform;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/Platform;->PLATFORM:Lokhttp3/internal/Platform;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 353
    return-void
.end method

.method static concatLengthPrefixed(Ljava/util/List;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lokhttp3/Protocol;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .line 403
    .local p0, "protocols":Ljava/util/List;, "Ljava/util/List<Lokhttp3/Protocol;>;"
    new-instance v2, Lokio/Buffer;

    invoke-direct {v2}, Lokio/Buffer;-><init>()V

    .line 404
    .local v2, "result":Lokio/Buffer;
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "size":I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 405
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/Protocol;

    .line 406
    .local v1, "protocol":Lokhttp3/Protocol;
    sget-object v4, Lokhttp3/Protocol;->HTTP_1_0:Lokhttp3/Protocol;

    if-ne v1, v4, :cond_0

    .line 404
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 407
    :cond_0
    invoke-virtual {v1}, Lokhttp3/Protocol;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v4}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 408
    invoke-virtual {v1}, Lokhttp3/Protocol;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;)Lokio/Buffer;

    goto :goto_1

    .line 410
    .end local v1    # "protocol":Lokhttp3/Protocol;
    :cond_1
    invoke-virtual {v2}, Lokio/Buffer;->readByteArray()[B

    move-result-object v4

    return-object v4
.end method

.method private static findPlatform()Lokhttp3/internal/Platform;
    .locals 23

    .prologue
    .line 139
    :try_start_0
    const-string v2, "com.android.org.conscrypt.SSLParametersImpl"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 146
    .local v3, "sslParametersClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    :try_start_1
    new-instance v4, Lokhttp3/internal/OptionalMethod;

    const/4 v2, 0x0

    const-string/jumbo v8, "setUseSessionTickets"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    sget-object v22, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v22, v20, v21

    move-object/from16 v0, v20

    invoke-direct {v4, v2, v8, v0}, Lokhttp3/internal/OptionalMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 148
    .local v4, "setUseSessionTickets":Lokhttp3/internal/OptionalMethod;, "Lokhttp3/internal/OptionalMethod<Ljava/net/Socket;>;"
    new-instance v5, Lokhttp3/internal/OptionalMethod;

    const/4 v2, 0x0

    const-string/jumbo v8, "setHostname"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-class v22, Ljava/lang/String;

    aput-object v22, v20, v21

    move-object/from16 v0, v20

    invoke-direct {v5, v2, v8, v0}, Lokhttp3/internal/OptionalMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 150
    .local v5, "setHostname":Lokhttp3/internal/OptionalMethod;, "Lokhttp3/internal/OptionalMethod<Ljava/net/Socket;>;"
    const/4 v6, 0x0

    .line 151
    .local v6, "getAlpnSelectedProtocol":Lokhttp3/internal/OptionalMethod;, "Lokhttp3/internal/OptionalMethod<Ljava/net/Socket;>;"
    const/4 v7, 0x0

    .line 155
    .local v7, "setAlpnProtocols":Lokhttp3/internal/OptionalMethod;, "Lokhttp3/internal/OptionalMethod<Ljava/net/Socket;>;"
    :try_start_2
    const-string v2, "android.net.Network"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 156
    new-instance v15, Lokhttp3/internal/OptionalMethod;

    const-class v2, [B

    const-string v8, "getAlpnSelectedProtocol"

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-direct {v15, v2, v8, v0}, Lokhttp3/internal/OptionalMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_4

    .line 157
    .end local v6    # "getAlpnSelectedProtocol":Lokhttp3/internal/OptionalMethod;, "Lokhttp3/internal/OptionalMethod<Ljava/net/Socket;>;"
    .local v15, "getAlpnSelectedProtocol":Lokhttp3/internal/OptionalMethod;, "Lokhttp3/internal/OptionalMethod<Ljava/net/Socket;>;"
    :try_start_3
    new-instance v19, Lokhttp3/internal/OptionalMethod;

    const/4 v2, 0x0

    const-string/jumbo v8, "setAlpnProtocols"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-class v22, [B

    aput-object v22, v20, v21

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v0, v2, v8, v1}, Lokhttp3/internal/OptionalMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_5

    .end local v7    # "setAlpnProtocols":Lokhttp3/internal/OptionalMethod;, "Lokhttp3/internal/OptionalMethod<Ljava/net/Socket;>;"
    .local v19, "setAlpnProtocols":Lokhttp3/internal/OptionalMethod;, "Lokhttp3/internal/OptionalMethod<Ljava/net/Socket;>;"
    move-object/from16 v7, v19

    .end local v19    # "setAlpnProtocols":Lokhttp3/internal/OptionalMethod;, "Lokhttp3/internal/OptionalMethod<Ljava/net/Socket;>;"
    .restart local v7    # "setAlpnProtocols":Lokhttp3/internal/OptionalMethod;, "Lokhttp3/internal/OptionalMethod<Ljava/net/Socket;>;"
    move-object v6, v15

    .line 161
    .end local v15    # "getAlpnSelectedProtocol":Lokhttp3/internal/OptionalMethod;, "Lokhttp3/internal/OptionalMethod<Ljava/net/Socket;>;"
    .restart local v6    # "getAlpnSelectedProtocol":Lokhttp3/internal/OptionalMethod;, "Lokhttp3/internal/OptionalMethod<Ljava/net/Socket;>;"
    :goto_1
    :try_start_4
    new-instance v2, Lokhttp3/internal/Platform$Android;

    invoke-direct/range {v2 .. v7}, Lokhttp3/internal/Platform$Android;-><init>(Ljava/lang/Class;Lokhttp3/internal/OptionalMethod;Lokhttp3/internal/OptionalMethod;Lokhttp3/internal/OptionalMethod;Lokhttp3/internal/OptionalMethod;)V

    move-object v8, v2

    .line 183
    .end local v3    # "sslParametersClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "setUseSessionTickets":Lokhttp3/internal/OptionalMethod;, "Lokhttp3/internal/OptionalMethod<Ljava/net/Socket;>;"
    .end local v5    # "setHostname":Lokhttp3/internal/OptionalMethod;, "Lokhttp3/internal/OptionalMethod<Ljava/net/Socket;>;"
    .end local v6    # "getAlpnSelectedProtocol":Lokhttp3/internal/OptionalMethod;, "Lokhttp3/internal/OptionalMethod<Ljava/net/Socket;>;"
    .end local v7    # "setAlpnProtocols":Lokhttp3/internal/OptionalMethod;, "Lokhttp3/internal/OptionalMethod<Ljava/net/Socket;>;"
    .local v17, "negoClassName":Ljava/lang/String;
    :goto_2
    return-object v8

    .line 140
    .end local v17    # "negoClassName":Ljava/lang/String;
    :catch_0
    move-exception v14

    .line 142
    .local v14, "e":Ljava/lang/ClassNotFoundException;
    const-string v2, "org.apache.harmony.xnet.provider.jsse.SSLParametersImpl"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v3

    .restart local v3    # "sslParametersClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_0

    .line 163
    .end local v3    # "sslParametersClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_1
    move-exception v2

    .line 169
    .end local v14    # "e":Ljava/lang/ClassNotFoundException;
    :try_start_5
    const-string v17, "org.eclipse.jetty.alpn.ALPN"

    .line 170
    .restart local v17    # "negoClassName":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v16

    .line 171
    .local v16, "negoClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, "$Provider"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v18

    .line 172
    .local v18, "providerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, "$ClientProvider"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    .line 173
    .local v12, "clientProviderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, "$ServerProvider"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v13

    .line 174
    .local v13, "serverProviderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v2, "put"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Class;

    const/16 v20, 0x0

    const-class v21, Ljavax/net/ssl/SSLSocket;

    aput-object v21, v8, v20

    const/16 v20, 0x1

    aput-object v18, v8, v20

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    .line 175
    .local v9, "putMethod":Ljava/lang/reflect/Method;
    const-string v2, "get"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/16 v20, 0x0

    const-class v21, Ljavax/net/ssl/SSLSocket;

    aput-object v21, v8, v20

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    .line 176
    .local v10, "getMethod":Ljava/lang/reflect/Method;
    const-string/jumbo v2, "remove"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/16 v20, 0x0

    const-class v21, Ljavax/net/ssl/SSLSocket;

    aput-object v21, v8, v20

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    .line 177
    .local v11, "removeMethod":Ljava/lang/reflect/Method;
    new-instance v8, Lokhttp3/internal/Platform$JdkWithJettyBootPlatform;

    invoke-direct/range {v8 .. v13}, Lokhttp3/internal/Platform$JdkWithJettyBootPlatform;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/Class;)V
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_2

    .line 179
    .end local v9    # "putMethod":Ljava/lang/reflect/Method;
    .end local v10    # "getMethod":Ljava/lang/reflect/Method;
    .end local v11    # "removeMethod":Ljava/lang/reflect/Method;
    .end local v12    # "clientProviderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v13    # "serverProviderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v16    # "negoClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v18    # "providerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_2
    move-exception v2

    .line 183
    :goto_3
    new-instance v8, Lokhttp3/internal/Platform;

    invoke-direct {v8}, Lokhttp3/internal/Platform;-><init>()V

    goto/16 :goto_2

    .line 179
    :catch_3
    move-exception v2

    goto :goto_3

    .line 158
    .end local v17    # "negoClassName":Ljava/lang/String;
    .restart local v3    # "sslParametersClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v4    # "setUseSessionTickets":Lokhttp3/internal/OptionalMethod;, "Lokhttp3/internal/OptionalMethod<Ljava/net/Socket;>;"
    .restart local v5    # "setHostname":Lokhttp3/internal/OptionalMethod;, "Lokhttp3/internal/OptionalMethod<Ljava/net/Socket;>;"
    .restart local v6    # "getAlpnSelectedProtocol":Lokhttp3/internal/OptionalMethod;, "Lokhttp3/internal/OptionalMethod<Ljava/net/Socket;>;"
    .restart local v7    # "setAlpnProtocols":Lokhttp3/internal/OptionalMethod;, "Lokhttp3/internal/OptionalMethod<Ljava/net/Socket;>;"
    :catch_4
    move-exception v2

    goto/16 :goto_1

    .end local v6    # "getAlpnSelectedProtocol":Lokhttp3/internal/OptionalMethod;, "Lokhttp3/internal/OptionalMethod<Ljava/net/Socket;>;"
    .restart local v15    # "getAlpnSelectedProtocol":Lokhttp3/internal/OptionalMethod;, "Lokhttp3/internal/OptionalMethod<Ljava/net/Socket;>;"
    :catch_5
    move-exception v2

    move-object v6, v15

    .end local v15    # "getAlpnSelectedProtocol":Lokhttp3/internal/OptionalMethod;, "Lokhttp3/internal/OptionalMethod<Ljava/net/Socket;>;"
    .restart local v6    # "getAlpnSelectedProtocol":Lokhttp3/internal/OptionalMethod;, "Lokhttp3/internal/OptionalMethod<Ljava/net/Socket;>;"
    goto/16 :goto_1
.end method

.method public static get()Lokhttp3/internal/Platform;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lokhttp3/internal/Platform;->PLATFORM:Lokhttp3/internal/Platform;

    return-object v0
.end method

.method static readFieldOrNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 8
    .param p0, "instance"    # Ljava/lang/Object;
    .param p2, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .local p1, "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v5, 0x0

    .line 414
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    const-class v6, Ljava/lang/Object;

    if-eq v0, v6, :cond_2

    .line 416
    :try_start_0
    invoke-virtual {v0, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 417
    .local v3, "field":Ljava/lang/reflect/Field;
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 418
    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 419
    .local v4, "value":Ljava/lang/Object;
    if-eqz v4, :cond_0

    invoke-virtual {p1, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 433
    .end local v3    # "field":Ljava/lang/reflect/Field;
    .end local v4    # "value":Ljava/lang/Object;
    :cond_0
    :goto_1
    return-object v5

    .line 420
    .restart local v3    # "field":Ljava/lang/reflect/Field;
    .restart local v4    # "value":Ljava/lang/Object;
    :cond_1
    invoke-virtual {p1, v4}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_1

    .line 422
    .end local v3    # "field":Ljava/lang/reflect/Field;
    .end local v4    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 423
    .local v2, "e":Ljava/lang/IllegalAccessException;
    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 421
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v6

    .line 414
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 428
    :cond_2
    const-string v6, "delegate"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 429
    const-class v6, Ljava/lang/Object;

    const-string v7, "delegate"

    invoke-static {p0, v6, v7}, Lokhttp3/internal/Platform;->readFieldOrNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 430
    .local v1, "delegate":Ljava/lang/Object;
    if-eqz v1, :cond_0

    invoke-static {v1, p1, p2}, Lokhttp3/internal/Platform;->readFieldOrNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_1
.end method


# virtual methods
.method public afterHandshake(Ljavax/net/ssl/SSLSocket;)V
    .locals 0
    .param p1, "sslSocket"    # Ljavax/net/ssl/SSLSocket;

    .prologue
    .line 117
    return-void
.end method

.method public configureTlsExtensions(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1, "sslSocket"    # Ljavax/net/ssl/SSLSocket;
    .param p2, "hostname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLSocket;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lokhttp3/Protocol;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 110
    .local p3, "protocols":Ljava/util/List;, "Ljava/util/List<Lokhttp3/Protocol;>;"
    return-void
.end method

.method public connectSocket(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    .locals 0
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "address"    # Ljava/net/InetSocketAddress;
    .param p3, "connectTimeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 126
    invoke-virtual {p1, p2, p3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 127
    return-void
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    const-string v0, "OkHttp"

    return-object v0
.end method

.method public getSelectedProtocol(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .locals 1
    .param p1, "socket"    # Ljavax/net/ssl/SSLSocket;

    .prologue
    .line 121
    const/4 v0, 0x0

    return-object v0
.end method

.method public log(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 130
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 131
    return-void
.end method

.method public trustManager(Ljavax/net/ssl/SSLSocketFactory;)Ljavax/net/ssl/X509TrustManager;
    .locals 6
    .param p1, "sslSocketFactory"    # Ljavax/net/ssl/SSLSocketFactory;

    .prologue
    const/4 v4, 0x0

    .line 90
    :try_start_0
    const-string/jumbo v3, "sun.security.ssl.SSLContextImpl"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 91
    .local v2, "sslContextClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "context"

    invoke-static {p1, v2, v3}, Lokhttp3/internal/Platform;->readFieldOrNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 92
    .local v0, "context":Ljava/lang/Object;
    if-nez v0, :cond_0

    move-object v3, v4

    .line 95
    .end local v0    # "context":Ljava/lang/Object;
    .end local v2    # "sslContextClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-object v3

    .line 93
    .restart local v0    # "context":Ljava/lang/Object;
    .restart local v2    # "sslContextClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    const-class v3, Ljavax/net/ssl/X509TrustManager;

    const-string/jumbo v5, "trustManager"

    invoke-static {v0, v3, v5}, Lokhttp3/internal/Platform;->readFieldOrNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/net/ssl/X509TrustManager;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 94
    .end local v0    # "context":Ljava/lang/Object;
    .end local v2    # "sslContextClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/ClassNotFoundException;
    move-object v3, v4

    .line 95
    goto :goto_0
.end method

.method public trustRootIndex(Ljavax/net/ssl/X509TrustManager;)Lokhttp3/internal/tls/TrustRootIndex;
    .locals 2
    .param p1, "trustManager"    # Ljavax/net/ssl/X509TrustManager;

    .prologue
    .line 100
    new-instance v0, Lokhttp3/internal/tls/RealTrustRootIndex;

    invoke-interface {p1}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object v1

    invoke-direct {v0, v1}, Lokhttp3/internal/tls/RealTrustRootIndex;-><init>([Ljava/security/cert/X509Certificate;)V

    return-object v0
.end method
