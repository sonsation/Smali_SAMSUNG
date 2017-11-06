.class public Lorg/brickred/socialauth/util/OAuthConsumer;
.super Ljava/lang/Object;
.source "OAuthConsumer.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final AMPERSAND:Ljava/util/regex/Pattern;

.field private static final serialVersionUID:J = -0x3f48c8867845ac7cL


# instance fields
.field private final LOG:Lorg/apache/commons/logging/Log;

.field private config:Lorg/brickred/socialauth/util/OAuthConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-string v0, "&"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/brickred/socialauth/util/OAuthConsumer;->AMPERSAND:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lorg/brickred/socialauth/util/OAuthConfig;)V
    .locals 1
    .param p1, "config"    # Lorg/brickred/socialauth/util/OAuthConfig;

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-class v0, Lorg/brickred/socialauth/util/OAuthConsumer;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/brickred/socialauth/util/OAuthConsumer;->LOG:Lorg/apache/commons/logging/Log;

    .line 64
    iput-object p1, p0, Lorg/brickred/socialauth/util/OAuthConsumer;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    .line 65
    return-void
.end method

.method private getHMACSHA1(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lorg/brickred/socialauth/util/AccessGrant;)Ljava/lang/String;
    .locals 11
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p4, "token"    # Lorg/brickred/socialauth/util/AccessGrant;
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
            "Lorg/brickred/socialauth/util/AccessGrant;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 108
    .local p3, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v8, p0, Lorg/brickred/socialauth/util/OAuthConsumer;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v8}, Lorg/brickred/socialauth/util/OAuthConfig;->get_consumerSecret()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_0

    .line 109
    new-instance v8, Lorg/brickred/socialauth/exception/SignatureException;

    const-string v9, "Please check consumer secret"

    invoke-direct {v8, v9}, Lorg/brickred/socialauth/exception/SignatureException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 111
    :cond_0
    sget-object v8, Lorg/brickred/socialauth/util/MethodType;->GET:Lorg/brickred/socialauth/util/MethodType;

    invoke-virtual {v8}, Lorg/brickred/socialauth/util/MethodType;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 112
    sget-object v8, Lorg/brickred/socialauth/util/MethodType;->PUT:Lorg/brickred/socialauth/util/MethodType;

    invoke-virtual {v8}, Lorg/brickred/socialauth/util/MethodType;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 113
    sget-object v8, Lorg/brickred/socialauth/util/MethodType;->POST:Lorg/brickred/socialauth/util/MethodType;

    invoke-virtual {v8}, Lorg/brickred/socialauth/util/MethodType;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 111
    const/4 v7, 0x0

    .line 114
    .local v7, "valid":Z
    :goto_0
    if-nez v7, :cond_2

    .line 115
    new-instance v8, Lorg/brickred/socialauth/exception/SignatureException;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Invalid method type :"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/brickred/socialauth/exception/SignatureException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 111
    .end local v7    # "valid":Z
    :cond_1
    const/4 v7, 0x1

    goto :goto_0

    .line 117
    .restart local v7    # "valid":Z
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_3

    .line 118
    new-instance v8, Lorg/brickred/socialauth/exception/SignatureException;

    const-string v9, "Please check URL"

    invoke-direct {v8, v9}, Lorg/brickred/socialauth/exception/SignatureException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 120
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    iget-object v9, p0, Lorg/brickred/socialauth/util/OAuthConsumer;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v9}, Lorg/brickred/socialauth/util/OAuthConfig;->get_consumerSecret()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/brickred/socialauth/util/HttpUtil;->encodeURIComponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    const-string v9, "&"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 120
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 122
    .local v2, "key":Ljava/lang/String;
    if-eqz p4, :cond_4

    invoke-virtual {p4}, Lorg/brickred/socialauth/util/AccessGrant;->getSecret()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 123
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Lorg/brickred/socialauth/util/AccessGrant;->getSecret()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/brickred/socialauth/util/HttpUtil;->encodeURIComponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 127
    :cond_4
    :try_start_0
    new-instance v6, Ljavax/crypto/spec/SecretKeySpec;

    const-string v8, "UTF-8"

    invoke-virtual {v2, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    .line 128
    const-string v9, "HMAC-SHA1"

    .line 127
    invoke-direct {v6, v8, v9}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 131
    .local v6, "signingKey":Ljavax/crypto/spec/SecretKeySpec;
    const-string v8, "HmacSHA1"

    invoke-static {v8}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v3

    .line 132
    .local v3, "mac":Ljavax/crypto/Mac;
    invoke-virtual {v3, v6}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 134
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/brickred/socialauth/util/HttpUtil;->encodeURIComponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "&"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 135
    invoke-static {p2}, Lorg/brickred/socialauth/util/HttpUtil;->encodeURIComponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "&"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 136
    invoke-static {p3}, Lorg/brickred/socialauth/util/HttpUtil;->buildParams(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/brickred/socialauth/util/HttpUtil;->encodeURIComponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 134
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, "data":Ljava/lang/String;
    iget-object v8, p0, Lorg/brickred/socialauth/util/OAuthConsumer;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Signature data : "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 139
    const-string v8, "UTF-8"

    invoke-virtual {v0, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    invoke-virtual {v3, v8}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v4

    .line 142
    .local v4, "rawHmac":[B
    iget-object v8, p0, Lorg/brickred/socialauth/util/OAuthConsumer;->LOG:Lorg/apache/commons/logging/Log;

    const-string v9, "Encoding raw HMAC to Base64"

    invoke-interface {v8, v9}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 143
    invoke-static {v4}, Lorg/brickred/socialauth/util/Base64;->encodeBytes([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 145
    .local v5, "sig":Ljava/lang/String;
    return-object v5

    .line 146
    .end local v0    # "data":Ljava/lang/String;
    .end local v3    # "mac":Ljavax/crypto/Mac;
    .end local v4    # "rawHmac":[B
    .end local v5    # "sig":Ljava/lang/String;
    .end local v6    # "signingKey":Ljavax/crypto/spec/SecretKeySpec;
    :catch_0
    move-exception v1

    .line 147
    .local v1, "e":Ljava/lang/Exception;
    new-instance v8, Lorg/brickred/socialauth/exception/SignatureException;

    const-string v9, "Unable to generate HMAC-SHA1"

    invoke-direct {v8, v9, v1}, Lorg/brickred/socialauth/exception/SignatureException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8
.end method

.method private parse(Ljava/io/InputStream;Lorg/brickred/socialauth/util/AccessGrant;)V
    .locals 17
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "token"    # Lorg/brickred/socialauth/util/AccessGrant;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 429
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 431
    .local v9, "sb":Ljava/lang/StringBuffer;
    :try_start_0
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v12, Ljava/io/InputStreamReader;

    .line 432
    const-string v13, "UTF-8"

    move-object/from16 v0, p1

    invoke-direct {v12, v0, v13}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 431
    invoke-direct {v8, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 433
    .local v8, "reader":Ljava/io/BufferedReader;
    const/4 v5, 0x0

    .line 434
    .local v5, "line":Ljava/lang/String;
    :goto_0
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    if-nez v5, :cond_1

    .line 441
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "&"

    invoke-virtual {v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 442
    .local v7, "pairs":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "key":Ljava/lang/String;
    const/4 v10, 0x0

    .line 443
    .local v10, "secret":Ljava/lang/String;
    array-length v13, v7

    const/4 v12, 0x0

    :goto_1
    if-lt v12, v13, :cond_2

    .line 460
    if-eqz v4, :cond_0

    if-eqz v10, :cond_0

    .line 461
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lorg/brickred/socialauth/util/AccessGrant;->setKey(Ljava/lang/String;)V

    .line 462
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Lorg/brickred/socialauth/util/AccessGrant;->setSecret(Ljava/lang/String;)V

    .line 464
    :cond_0
    return-void

    .line 435
    .end local v4    # "key":Ljava/lang/String;
    .end local v7    # "pairs":[Ljava/lang/String;
    .end local v10    # "secret":Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-virtual {v9, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 437
    .end local v5    # "line":Ljava/lang/String;
    .end local v8    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v1

    .line 438
    .local v1, "exc":Ljava/lang/Exception;
    new-instance v12, Lorg/brickred/socialauth/exception/SocialAuthException;

    const-string v13, "Failed to parse response"

    invoke-direct {v12, v13}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 443
    .end local v1    # "exc":Ljava/lang/Exception;
    .restart local v4    # "key":Ljava/lang/String;
    .restart local v5    # "line":Ljava/lang/String;
    .restart local v7    # "pairs":[Ljava/lang/String;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    .restart local v10    # "secret":Ljava/lang/String;
    :cond_2
    aget-object v6, v7, v12

    .line 444
    .local v6, "pair":Ljava/lang/String;
    const/16 v14, 0x3d

    invoke-virtual {v6, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 445
    .local v2, "idx":I
    const/4 v14, -0x1

    if-ne v2, v14, :cond_3

    .line 443
    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 448
    :cond_3
    const/4 v14, 0x0

    invoke-virtual {v6, v14, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 449
    .local v3, "k":Ljava/lang/String;
    add-int/lit8 v14, v2, 0x1

    invoke-virtual {v6, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lorg/brickred/socialauth/util/HttpUtil;->decodeURIComponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 450
    .local v11, "v":Ljava/lang/String;
    if-nez v4, :cond_4

    const-string v14, "oauth_token"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 451
    move-object v4, v11

    .line 452
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/brickred/socialauth/util/OAuthConsumer;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "KEY : "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto :goto_2

    .line 453
    :cond_4
    if-nez v10, :cond_5

    const-string v14, "oauth_token_secret"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 454
    move-object v10, v11

    .line 455
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/brickred/socialauth/util/OAuthConsumer;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "SECRET : "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto :goto_2

    .line 457
    :cond_5
    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v11}, Lorg/brickred/socialauth/util/AccessGrant;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2
.end method

.method private putOauthParams(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 277
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "oauth_consumer_key"

    iget-object v1, p0, Lorg/brickred/socialauth/util/OAuthConsumer;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v1}, Lorg/brickred/socialauth/util/OAuthConfig;->get_consumerKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    const-string v0, "oauth_signature_method"

    iget-object v1, p0, Lorg/brickred/socialauth/util/OAuthConsumer;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v1}, Lorg/brickred/socialauth/util/OAuthConfig;->get_signatureMethod()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    const-string v0, "oauth_version"

    const-string v1, "1.0"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    invoke-virtual {p0, p1}, Lorg/brickred/socialauth/util/OAuthConsumer;->putNonceAndTimestamp(Ljava/util/Map;)V

    .line 281
    return-void
.end method

.method private send(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Lorg/brickred/socialauth/util/AccessGrant;Z)Lorg/brickred/socialauth/util/Response;
    .locals 16
    .param p1, "reqURL"    # Ljava/lang/String;
    .param p4, "body"    # Ljava/lang/String;
    .param p5, "methodName"    # Ljava/lang/String;
    .param p6, "token"    # Lorg/brickred/socialauth/util/AccessGrant;
    .param p7, "isHeaderRequired"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/brickred/socialauth/util/AccessGrant;",
            "Z)",
            "Lorg/brickred/socialauth/util/Response;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 383
    .local p2, "paramsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p3, "headerParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p2, :cond_1

    .line 384
    move-object/from16 v6, p2

    .line 388
    .local v6, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    const-string v2, "oauth_token"

    invoke-virtual/range {p6 .. p6}, Lorg/brickred/socialauth/util/AccessGrant;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lorg/brickred/socialauth/util/OAuthConsumer;->putOauthParams(Ljava/util/Map;)V

    .line 391
    const/16 v2, 0x3f

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    .line 392
    .local v11, "idx":I
    const/4 v2, -0x1

    if-eq v11, v2, :cond_4

    .line 393
    sget-object v2, Lorg/brickred/socialauth/util/OAuthConsumer;->AMPERSAND:Ljava/util/regex/Pattern;

    add-int/lit8 v3, v11, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v14

    .line 394
    .local v14, "pairs":[Ljava/lang/String;
    array-length v3, v14

    const/4 v2, 0x0

    :goto_1
    if-lt v2, v3, :cond_2

    .line 403
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 407
    .end local v14    # "pairs":[Ljava/lang/String;
    .local v5, "url":Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/brickred/socialauth/util/OAuthConsumer;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v2}, Lorg/brickred/socialauth/util/OAuthConfig;->get_signatureMethod()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v2, p0

    move-object/from16 v4, p5

    move-object/from16 v7, p6

    invoke-virtual/range {v2 .. v7}, Lorg/brickred/socialauth/util/OAuthConsumer;->generateSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lorg/brickred/socialauth/util/AccessGrant;)Ljava/lang/String;

    move-result-object v15

    .line 409
    .local v15, "sig":Ljava/lang/String;
    const-string v2, "oauth_signature"

    invoke-interface {v6, v2, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    const/4 v9, 0x0

    .line 411
    .local v9, "headerMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p7, :cond_6

    .line 412
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/brickred/socialauth/util/OAuthConsumer;->getAuthHeaderValue(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v10

    .line 413
    .local v10, "headerVal":Ljava/lang/String;
    new-instance v9, Ljava/util/HashMap;

    .end local v9    # "headerMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 414
    .restart local v9    # "headerMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "Authorization"

    invoke-interface {v9, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    if-eqz p3, :cond_0

    .line 416
    invoke-interface/range {p3 .. p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_5

    .line 420
    :cond_0
    move-object/from16 v5, p1

    .line 424
    .end local v10    # "headerVal":Ljava/lang/String;
    :goto_4
    move-object/from16 v0, p5

    move-object/from16 v1, p4

    invoke-static {v5, v0, v1, v9}, Lorg/brickred/socialauth/util/HttpUtil;->doHttpRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lorg/brickred/socialauth/util/Response;

    move-result-object v2

    return-object v2

    .line 386
    .end local v5    # "url":Ljava/lang/String;
    .end local v6    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v9    # "headerMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v11    # "idx":I
    .end local v15    # "sig":Ljava/lang/String;
    :cond_1
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .restart local v6    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 394
    .restart local v11    # "idx":I
    .restart local v14    # "pairs":[Ljava/lang/String;
    :cond_2
    aget-object v13, v14, v2

    .line 395
    .local v13, "pair":Ljava/lang/String;
    const/16 v4, 0x3d

    invoke-virtual {v13, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    .line 396
    .local v8, "eq":I
    const/4 v4, -0x1

    if-ne v8, v4, :cond_3

    .line 397
    const-string v4, ""

    invoke-interface {v6, v13, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 399
    :cond_3
    const/4 v4, 0x0

    invoke-virtual {v13, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 400
    add-int/lit8 v7, v8, 0x1

    invoke-virtual {v13, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/brickred/socialauth/util/HttpUtil;->decodeURIComponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 399
    invoke-interface {v6, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 405
    .end local v8    # "eq":I
    .end local v13    # "pair":Ljava/lang/String;
    .end local v14    # "pairs":[Ljava/lang/String;
    :cond_4
    move-object/from16 v5, p1

    .restart local v5    # "url":Ljava/lang/String;
    goto :goto_2

    .line 416
    .restart local v9    # "headerMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v10    # "headerVal":Ljava/lang/String;
    .restart local v15    # "sig":Ljava/lang/String;
    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 417
    .local v12, "key":Ljava/lang/String;
    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v9, v12, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 422
    .end local v10    # "headerVal":Ljava/lang/String;
    .end local v12    # "key":Ljava/lang/String;
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v6}, Lorg/brickred/socialauth/util/HttpUtil;->buildParams(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_4
.end method


# virtual methods
.method public buildAuthUrl(Ljava/lang/String;Lorg/brickred/socialauth/util/AccessGrant;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 5
    .param p1, "authUrl"    # Ljava/lang/String;
    .param p2, "token"    # Lorg/brickred/socialauth/util/AccessGrant;
    .param p3, "callbackUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v0, 0x3f

    const/16 v4, 0x3d

    const/16 v1, 0x26

    .line 490
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 491
    .local v0, "separator":C
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 492
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 493
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 494
    const-string v3, "oauth_token"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 495
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 496
    invoke-virtual {p2}, Lorg/brickred/socialauth/util/AccessGrant;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/brickred/socialauth/util/HttpUtil;->encodeURIComponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 497
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 498
    const-string v2, "oauth_callback"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 499
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 500
    if-nez p3, :cond_1

    const-string v1, "oob"

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 491
    return-object v1

    .end local v0    # "separator":C
    :cond_0
    move v0, v1

    .line 490
    goto :goto_0

    .line 501
    .restart local v0    # "separator":C
    :cond_1
    invoke-static {p3}, Lorg/brickred/socialauth/util/HttpUtil;->encodeURIComponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public generateSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lorg/brickred/socialauth/util/AccessGrant;)Ljava/lang/String;
    .locals 3
    .param p1, "signatureType"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .param p5, "token"    # Lorg/brickred/socialauth/util/AccessGrant;
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
            ">;",
            "Lorg/brickred/socialauth/util/AccessGrant;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 91
    .local p4, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/brickred/socialauth/util/OAuthConsumer;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "Generating OAUTH Signature"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 92
    iget-object v0, p0, Lorg/brickred/socialauth/util/OAuthConsumer;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Given Signature Type : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 93
    iget-object v0, p0, Lorg/brickred/socialauth/util/OAuthConsumer;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Given Method Type : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 94
    iget-object v0, p0, Lorg/brickred/socialauth/util/OAuthConsumer;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Given URL : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 95
    iget-object v0, p0, Lorg/brickred/socialauth/util/OAuthConsumer;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Given Parameters : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 96
    const-string v0, "HMAC-SHA1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    invoke-direct {p0, p2, p3, p4, p5}, Lorg/brickred/socialauth/util/OAuthConsumer;->getHMACSHA1(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lorg/brickred/socialauth/util/AccessGrant;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 99
    :cond_0
    new-instance v0, Lorg/brickred/socialauth/exception/SignatureException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Signature type not implemented :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 99
    invoke-direct {v0, v1}, Lorg/brickred/socialauth/exception/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAccessToken(Ljava/lang/String;Lorg/brickred/socialauth/util/AccessGrant;)Lorg/brickred/socialauth/util/AccessGrant;
    .locals 11
    .param p1, "accessTokenURL"    # Ljava/lang/String;
    .param p2, "reqToken"    # Lorg/brickred/socialauth/util/AccessGrant;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 226
    iget-object v0, p0, Lorg/brickred/socialauth/util/OAuthConsumer;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "Preparing to get Access Token"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 227
    iget-object v0, p0, Lorg/brickred/socialauth/util/OAuthConsumer;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Given Access Token URL : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 228
    iget-object v0, p0, Lorg/brickred/socialauth/util/OAuthConsumer;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Given Request Token : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/brickred/socialauth/util/AccessGrant;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 230
    invoke-virtual {p2}, Lorg/brickred/socialauth/util/AccessGrant;->getKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lorg/brickred/socialauth/util/AccessGrant;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 231
    :cond_0
    new-instance v0, Lorg/brickred/socialauth/exception/SocialAuthException;

    .line 232
    const-string v1, "Key in Request Token is null or blank"

    .line 231
    invoke-direct {v0, v1}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 234
    :cond_1
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 235
    .local v4, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 236
    .local v6, "accessToken":Lorg/brickred/socialauth/util/AccessGrant;
    const-string v0, "oauth_verifier"

    invoke-virtual {p2, v0}, Lorg/brickred/socialauth/util/AccessGrant;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 237
    const-string v0, "oauth_verifier"

    const-string v1, "oauth_verifier"

    invoke-virtual {p2, v1}, Lorg/brickred/socialauth/util/AccessGrant;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 238
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 237
    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    :cond_2
    const-string v0, "oauth_token"

    invoke-virtual {p2}, Lorg/brickred/socialauth/util/AccessGrant;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    invoke-direct {p0, v4}, Lorg/brickred/socialauth/util/OAuthConsumer;->putOauthParams(Ljava/util/Map;)V

    .line 243
    move-object v3, p1

    .line 244
    .local v3, "reqURL":Ljava/lang/String;
    iget-object v0, p0, Lorg/brickred/socialauth/util/OAuthConsumer;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v0}, Lorg/brickred/socialauth/util/OAuthConfig;->get_signatureMethod()Ljava/lang/String;

    move-result-object v1

    .line 245
    iget-object v0, p0, Lorg/brickred/socialauth/util/OAuthConsumer;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v0}, Lorg/brickred/socialauth/util/OAuthConfig;->get_transportName()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v5, p2

    .line 244
    invoke-virtual/range {v0 .. v5}, Lorg/brickred/socialauth/util/OAuthConsumer;->generateSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lorg/brickred/socialauth/util/AccessGrant;)Ljava/lang/String;

    move-result-object v10

    .line 246
    .local v10, "sig":Ljava/lang/String;
    iget-object v0, p0, Lorg/brickred/socialauth/util/OAuthConsumer;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/brickred/socialauth/util/OAuthConsumer;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v2}, Lorg/brickred/socialauth/util/OAuthConfig;->get_signatureMethod()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 247
    const-string v2, " Signature for access token : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 246
    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 248
    const-string v0, "oauth_signature"

    invoke-interface {v4, v0, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    const/4 v7, 0x0

    .line 250
    .local v7, "body":Ljava/lang/String;
    sget-object v0, Lorg/brickred/socialauth/util/MethodType;->GET:Lorg/brickred/socialauth/util/MethodType;

    invoke-virtual {v0}, Lorg/brickred/socialauth/util/MethodType;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/brickred/socialauth/util/OAuthConsumer;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v1}, Lorg/brickred/socialauth/util/OAuthConfig;->get_transportName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v4}, Lorg/brickred/socialauth/util/HttpUtil;->buildParams(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 255
    :goto_0
    iget-object v0, p0, Lorg/brickred/socialauth/util/OAuthConsumer;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Access Token URL : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 256
    const/4 v9, 0x0

    .line 259
    .local v9, "response":Lorg/brickred/socialauth/util/Response;
    :try_start_0
    iget-object v0, p0, Lorg/brickred/socialauth/util/OAuthConsumer;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v0}, Lorg/brickred/socialauth/util/OAuthConfig;->get_transportName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 258
    invoke-static {v3, v0, v7, v1}, Lorg/brickred/socialauth/util/HttpUtil;->doHttpRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lorg/brickred/socialauth/util/Response;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 265
    invoke-virtual {v9}, Lorg/brickred/socialauth/util/Response;->getStatus()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_4

    .line 266
    new-instance v6, Lorg/brickred/socialauth/util/AccessGrant;

    .end local v6    # "accessToken":Lorg/brickred/socialauth/util/AccessGrant;
    invoke-direct {v6}, Lorg/brickred/socialauth/util/AccessGrant;-><init>()V

    .line 267
    .restart local v6    # "accessToken":Lorg/brickred/socialauth/util/AccessGrant;
    invoke-virtual {v9}, Lorg/brickred/socialauth/util/Response;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0, v6}, Lorg/brickred/socialauth/util/OAuthConsumer;->parse(Ljava/io/InputStream;Lorg/brickred/socialauth/util/AccessGrant;)V

    .line 273
    return-object v6

    .line 253
    .end local v9    # "response":Lorg/brickred/socialauth/util/Response;
    :cond_3
    invoke-static {v4}, Lorg/brickred/socialauth/util/HttpUtil;->buildParams(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 260
    .restart local v9    # "response":Lorg/brickred/socialauth/util/Response;
    :catch_0
    move-exception v8

    .line 261
    .local v8, "e":Ljava/lang/Exception;
    iget-object v0, p0, Lorg/brickred/socialauth/util/OAuthConsumer;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "Error while getting Access Token"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 262
    new-instance v0, Lorg/brickred/socialauth/exception/SocialAuthException;

    const-string v1, "Error while getting Access Token"

    invoke-direct {v0, v1, v8}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 269
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_4
    new-instance v0, Lorg/brickred/socialauth/exception/SocialAuthException;

    .line 270
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to retrieve the access token. Status: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 271
    invoke-virtual {v9}, Lorg/brickred/socialauth/util/Response;->getStatus()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 270
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 269
    invoke-direct {v0, v1}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAuthHeaderValue(Ljava/util/Map;)Ljava/lang/String;
    .locals 11
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
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v10, 0x3d

    const/16 v9, 0x2c

    const/4 v6, 0x0

    const/16 v8, 0x22

    .line 519
    iget-object v4, p0, Lorg/brickred/socialauth/util/OAuthConsumer;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "Genrating Authorization header for given parameters : "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 520
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 519
    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 521
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 522
    .local v1, "headerStr":Ljava/lang/StringBuilder;
    const/4 v4, 0x4

    new-array v0, v4, [Ljava/lang/String;

    .line 523
    const-string v4, "oauth_consumer_key"

    aput-object v4, v0, v6

    const/4 v4, 0x1

    const-string v5, "oauth_nonce"

    aput-object v5, v0, v4

    const/4 v4, 0x2

    const-string v5, "oauth_timestamp"

    aput-object v5, v0, v4

    const/4 v4, 0x3

    .line 524
    const-string v5, "oauth_signature_method"

    aput-object v5, v0, v4

    .line 525
    .local v0, "REQUIRED_OAUTH_HEADERS_TO_SIGN":[Ljava/lang/String;
    array-length v7, v0

    move v5, v6

    :goto_0
    if-lt v5, v7, :cond_3

    .line 530
    const-string v4, "oauth_version"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 532
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 533
    const-string v5, "oauth_version"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 534
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 535
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 537
    const-string v4, "oauth_version"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 536
    invoke-static {v4}, Lorg/brickred/socialauth/util/HttpUtil;->encodeURIComponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 537
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 539
    :cond_0
    const-string v4, "oauth_token"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 541
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 542
    const-string v5, "oauth_token"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 543
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 544
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 545
    const-string v4, "oauth_token"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lorg/brickred/socialauth/util/HttpUtil;->encodeURIComponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 546
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 548
    :cond_1
    const-string v4, "oauth_signature"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 550
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 551
    const-string v5, "oauth_signature"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 552
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 553
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 555
    const-string v4, "oauth_signature"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 554
    invoke-static {v4}, Lorg/brickred/socialauth/util/HttpUtil;->encodeURIComponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 555
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 557
    :cond_2
    const/16 v4, 0x20

    invoke-virtual {v1, v6, v4}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 558
    const-string v4, "OAuth"

    invoke-virtual {v1, v6, v4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 559
    iget-object v4, p0, Lorg/brickred/socialauth/util/OAuthConsumer;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Authorize Header : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 560
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 525
    :cond_3
    aget-object v2, v0, v5

    .line 526
    .local v2, "key":Ljava/lang/String;
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lorg/brickred/socialauth/util/HttpUtil;->encodeURIComponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 527
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 528
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 525
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto/16 :goto_0
.end method

.method public getConfig()Lorg/brickred/socialauth/util/OAuthConfig;
    .locals 1

    .prologue
    .line 564
    iget-object v0, p0, Lorg/brickred/socialauth/util/OAuthConsumer;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    return-object v0
.end method

.method public getRequestToken(Ljava/lang/String;Ljava/lang/String;)Lorg/brickred/socialauth/util/AccessGrant;
    .locals 13
    .param p1, "reqTokenURL"    # Ljava/lang/String;
    .param p2, "callbackURL"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 164
    iget-object v0, p0, Lorg/brickred/socialauth/util/OAuthConsumer;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "Preparing to get Request Token"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 165
    iget-object v0, p0, Lorg/brickred/socialauth/util/OAuthConsumer;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Given Request Token URL : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 166
    iget-object v0, p0, Lorg/brickred/socialauth/util/OAuthConsumer;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Given CallBack URL : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 167
    const/4 v12, 0x0

    .line 171
    .local v12, "token":Lorg/brickred/socialauth/util/AccessGrant;
    move-object v3, p1

    .line 172
    .local v3, "reqURL":Ljava/lang/String;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 173
    .local v4, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v0, 0x3f

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_0

    .line 174
    const/4 v0, 0x0

    const/16 v1, 0x3f

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 175
    const/16 v0, 0x3f

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 176
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 175
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 177
    .local v9, "query":Ljava/lang/String;
    const-string v0, "&"

    invoke-virtual {v9, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 179
    .local v8, "pairs":[Ljava/lang/String;
    array-length v1, v8

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_1

    .line 187
    .end local v8    # "pairs":[Ljava/lang/String;
    .end local v9    # "query":Ljava/lang/String;
    :cond_0
    const-string v0, "oauth_callback"

    invoke-interface {v4, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    invoke-direct {p0, v4}, Lorg/brickred/socialauth/util/OAuthConsumer;->putOauthParams(Ljava/util/Map;)V

    .line 190
    iget-object v0, p0, Lorg/brickred/socialauth/util/OAuthConsumer;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v0}, Lorg/brickred/socialauth/util/OAuthConfig;->get_signatureMethod()Ljava/lang/String;

    move-result-object v1

    .line 191
    iget-object v0, p0, Lorg/brickred/socialauth/util/OAuthConsumer;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v0}, Lorg/brickred/socialauth/util/OAuthConfig;->get_transportName()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    move-object v0, p0

    .line 190
    invoke-virtual/range {v0 .. v5}, Lorg/brickred/socialauth/util/OAuthConsumer;->generateSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lorg/brickred/socialauth/util/AccessGrant;)Ljava/lang/String;

    move-result-object v11

    .line 192
    .local v11, "sig":Ljava/lang/String;
    iget-object v0, p0, Lorg/brickred/socialauth/util/OAuthConsumer;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/brickred/socialauth/util/OAuthConsumer;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v2}, Lorg/brickred/socialauth/util/OAuthConfig;->get_signatureMethod()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 193
    const-string v2, " Signature for request token : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 192
    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 194
    const-string v0, "oauth_signature"

    invoke-interface {v4, v0, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v4}, Lorg/brickred/socialauth/util/HttpUtil;->buildParams(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 196
    iget-object v0, p0, Lorg/brickred/socialauth/util/OAuthConsumer;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "URL to get Request Token : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 199
    iget-object v0, p0, Lorg/brickred/socialauth/util/OAuthConsumer;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v0}, Lorg/brickred/socialauth/util/OAuthConfig;->get_transportName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 198
    invoke-static {v3, v0, v1, v2}, Lorg/brickred/socialauth/util/HttpUtil;->doHttpRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lorg/brickred/socialauth/util/Response;

    move-result-object v10

    .line 201
    .local v10, "response":Lorg/brickred/socialauth/util/Response;
    invoke-virtual {v10}, Lorg/brickred/socialauth/util/Response;->getStatus()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_3

    .line 202
    new-instance v12, Lorg/brickred/socialauth/util/AccessGrant;

    .end local v12    # "token":Lorg/brickred/socialauth/util/AccessGrant;
    invoke-direct {v12}, Lorg/brickred/socialauth/util/AccessGrant;-><init>()V

    .line 203
    .restart local v12    # "token":Lorg/brickred/socialauth/util/AccessGrant;
    invoke-virtual {v10}, Lorg/brickred/socialauth/util/Response;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0, v12}, Lorg/brickred/socialauth/util/OAuthConsumer;->parse(Ljava/io/InputStream;Lorg/brickred/socialauth/util/AccessGrant;)V

    .line 210
    return-object v12

    .line 179
    .end local v10    # "response":Lorg/brickred/socialauth/util/Response;
    .end local v11    # "sig":Ljava/lang/String;
    .restart local v8    # "pairs":[Ljava/lang/String;
    .restart local v9    # "query":Ljava/lang/String;
    :cond_1
    aget-object v7, v8, v0

    .line 180
    .local v7, "pair":Ljava/lang/String;
    const-string v2, "="

    invoke-virtual {v7, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 181
    .local v6, "kv":[Ljava/lang/String;
    array-length v2, v6

    const/4 v5, 0x2

    if-ne v2, v5, :cond_2

    .line 182
    const/4 v2, 0x0

    aget-object v2, v6, v2

    const/4 v5, 0x1

    aget-object v5, v6, v5

    invoke-interface {v4, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 205
    .end local v6    # "kv":[Ljava/lang/String;
    .end local v7    # "pair":Ljava/lang/String;
    .end local v8    # "pairs":[Ljava/lang/String;
    .end local v9    # "query":Ljava/lang/String;
    .restart local v10    # "response":Lorg/brickred/socialauth/util/Response;
    .restart local v11    # "sig":Ljava/lang/String;
    :cond_3
    iget-object v0, p0, Lorg/brickred/socialauth/util/OAuthConsumer;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "Error while fetching Request Token"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 206
    new-instance v0, Lorg/brickred/socialauth/exception/SocialAuthConfigurationException;

    .line 207
    const-string v1, "Application keys are not correct. The server running the application should be same that was registered to get the keys."

    .line 206
    invoke-direct {v0, v1}, Lorg/brickred/socialauth/exception/SocialAuthConfigurationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public httpGet(Ljava/lang/String;Ljava/util/Map;Lorg/brickred/socialauth/util/AccessGrant;)Lorg/brickred/socialauth/util/Response;
    .locals 8
    .param p1, "reqURL"    # Ljava/lang/String;
    .param p3, "token"    # Lorg/brickred/socialauth/util/AccessGrant;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lorg/brickred/socialauth/util/AccessGrant;",
            ")",
            "Lorg/brickred/socialauth/util/Response;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p2, "headerParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 298
    .line 299
    sget-object v0, Lorg/brickred/socialauth/util/MethodType;->GET:Lorg/brickred/socialauth/util/MethodType;

    invoke-virtual {v0}, Lorg/brickred/socialauth/util/MethodType;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, v2

    move-object v6, p3

    .line 298
    invoke-direct/range {v0 .. v7}, Lorg/brickred/socialauth/util/OAuthConsumer;->send(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Lorg/brickred/socialauth/util/AccessGrant;Z)Lorg/brickred/socialauth/util/Response;

    move-result-object v0

    return-object v0
.end method

.method public httpPost(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Lorg/brickred/socialauth/util/AccessGrant;)Lorg/brickred/socialauth/util/Response;
    .locals 8
    .param p1, "reqURL"    # Ljava/lang/String;
    .param p4, "body"    # Ljava/lang/String;
    .param p5, "token"    # Lorg/brickred/socialauth/util/AccessGrant;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
            "Ljava/lang/String;",
            "Lorg/brickred/socialauth/util/AccessGrant;",
            ")",
            "Lorg/brickred/socialauth/util/Response;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 322
    .line 323
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p3, "headerParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Lorg/brickred/socialauth/util/MethodType;->POST:Lorg/brickred/socialauth/util/MethodType;

    invoke-virtual {v0}, Lorg/brickred/socialauth/util/MethodType;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    .line 322
    invoke-direct/range {v0 .. v7}, Lorg/brickred/socialauth/util/OAuthConsumer;->send(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Lorg/brickred/socialauth/util/AccessGrant;Z)Lorg/brickred/socialauth/util/Response;

    move-result-object v0

    return-object v0
.end method

.method public httpPut(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Lorg/brickred/socialauth/util/AccessGrant;)Lorg/brickred/socialauth/util/Response;
    .locals 8
    .param p1, "reqURL"    # Ljava/lang/String;
    .param p4, "body"    # Ljava/lang/String;
    .param p5, "token"    # Lorg/brickred/socialauth/util/AccessGrant;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
            "Ljava/lang/String;",
            "Lorg/brickred/socialauth/util/AccessGrant;",
            ")",
            "Lorg/brickred/socialauth/util/Response;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 346
    .line 347
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p3, "headerParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Lorg/brickred/socialauth/util/MethodType;->PUT:Lorg/brickred/socialauth/util/MethodType;

    invoke-virtual {v0}, Lorg/brickred/socialauth/util/MethodType;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    .line 346
    invoke-direct/range {v0 .. v7}, Lorg/brickred/socialauth/util/OAuthConsumer;->send(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Lorg/brickred/socialauth/util/AccessGrant;Z)Lorg/brickred/socialauth/util/Response;

    move-result-object v0

    return-object v0
.end method

.method public httpPut(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Lorg/brickred/socialauth/util/AccessGrant;Z)Lorg/brickred/socialauth/util/Response;
    .locals 8
    .param p1, "reqURL"    # Ljava/lang/String;
    .param p4, "body"    # Ljava/lang/String;
    .param p5, "token"    # Lorg/brickred/socialauth/util/AccessGrant;
    .param p6, "isHeaderRequired"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
            "Ljava/lang/String;",
            "Lorg/brickred/socialauth/util/AccessGrant;",
            "Z)",
            "Lorg/brickred/socialauth/util/Response;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 373
    .line 374
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p3, "headerParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Lorg/brickred/socialauth/util/MethodType;->PUT:Lorg/brickred/socialauth/util/MethodType;

    invoke-virtual {v0}, Lorg/brickred/socialauth/util/MethodType;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    move v7, p6

    .line 373
    invoke-direct/range {v0 .. v7}, Lorg/brickred/socialauth/util/OAuthConsumer;->send(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Lorg/brickred/socialauth/util/AccessGrant;Z)Lorg/brickred/socialauth/util/Response;

    move-result-object v0

    return-object v0
.end method

.method public putNonceAndTimestamp(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 472
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 473
    .local v0, "ts":J
    const-string v2, "oauth_timestamp"

    const-wide/16 v4, 0x3e8

    div-long v4, v0, v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    const-string v2, "oauth_nonce"

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    return-void
.end method

.method public uploadImage(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/brickred/socialauth/util/AccessGrant;Z)Lorg/brickred/socialauth/util/Response;
    .locals 21
    .param p1, "reqURL"    # Ljava/lang/String;
    .param p4, "inputStream"    # Ljava/io/InputStream;
    .param p5, "fileParamName"    # Ljava/lang/String;
    .param p6, "fileName"    # Ljava/lang/String;
    .param p7, "methodName"    # Ljava/lang/String;
    .param p8, "token"    # Lorg/brickred/socialauth/util/AccessGrant;
    .param p9, "isHeaderRequired"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
            "Ljava/lang/String;",
            "Lorg/brickred/socialauth/util/AccessGrant;",
            "Z)",
            "Lorg/brickred/socialauth/util/Response;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 597
    .local p2, "paramsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p3, "headerParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 598
    .local v6, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "oauth_token"

    invoke-virtual/range {p8 .. p8}, Lorg/brickred/socialauth/util/AccessGrant;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 599
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lorg/brickred/socialauth/util/OAuthConsumer;->putOauthParams(Ljava/util/Map;)V

    .line 601
    const/16 v2, 0x3f

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v16

    .line 602
    .local v16, "idx":I
    const/4 v2, -0x1

    move/from16 v0, v16

    if-eq v0, v2, :cond_3

    .line 603
    sget-object v2, Lorg/brickred/socialauth/util/OAuthConsumer;->AMPERSAND:Ljava/util/regex/Pattern;

    add-int/lit8 v3, v16, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v19

    .line 604
    .local v19, "pairs":[Ljava/lang/String;
    move-object/from16 v0, v19

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_1

    .line 613
    const/4 v2, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 617
    .end local v19    # "pairs":[Ljava/lang/String;
    .local v5, "url":Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/brickred/socialauth/util/OAuthConsumer;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v2}, Lorg/brickred/socialauth/util/OAuthConfig;->get_signatureMethod()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v2, p0

    move-object/from16 v4, p7

    move-object/from16 v7, p8

    invoke-virtual/range {v2 .. v7}, Lorg/brickred/socialauth/util/OAuthConsumer;->generateSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lorg/brickred/socialauth/util/AccessGrant;)Ljava/lang/String;

    move-result-object v20

    .line 619
    .local v20, "sig":Ljava/lang/String;
    const-string v2, "oauth_signature"

    move-object/from16 v0, v20

    invoke-interface {v6, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 620
    const/4 v10, 0x0

    .line 621
    .local v10, "headerMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p9, :cond_5

    .line 622
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/brickred/socialauth/util/OAuthConsumer;->getAuthHeaderValue(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v15

    .line 623
    .local v15, "headerVal":Ljava/lang/String;
    new-instance v10, Ljava/util/HashMap;

    .end local v10    # "headerMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 624
    .restart local v10    # "headerMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "Authorization"

    invoke-interface {v10, v2, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 625
    if-eqz p3, :cond_0

    .line 626
    invoke-interface/range {p3 .. p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_4

    .line 630
    :cond_0
    move-object/from16 v5, p1

    .end local v15    # "headerVal":Ljava/lang/String;
    :goto_3
    move-object/from16 v7, p1

    move-object/from16 v8, p7

    move-object/from16 v9, p2

    move-object/from16 v11, p4

    move-object/from16 v12, p6

    move-object/from16 v13, p5

    .line 634
    invoke-static/range {v7 .. v13}, Lorg/brickred/socialauth/util/HttpUtil;->doHttpRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Lorg/brickred/socialauth/util/Response;

    move-result-object v2

    return-object v2

    .line 604
    .end local v5    # "url":Ljava/lang/String;
    .end local v10    # "headerMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v20    # "sig":Ljava/lang/String;
    .restart local v19    # "pairs":[Ljava/lang/String;
    :cond_1
    aget-object v18, v19, v2

    .line 605
    .local v18, "pair":Ljava/lang/String;
    const/16 v4, 0x3d

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    .line 606
    .local v14, "eq":I
    const/4 v4, -0x1

    if-ne v14, v4, :cond_2

    .line 607
    const-string v4, ""

    move-object/from16 v0, v18

    invoke-interface {v6, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 609
    :cond_2
    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 610
    add-int/lit8 v7, v14, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/brickred/socialauth/util/HttpUtil;->decodeURIComponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 609
    invoke-interface {v6, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 615
    .end local v14    # "eq":I
    .end local v18    # "pair":Ljava/lang/String;
    .end local v19    # "pairs":[Ljava/lang/String;
    :cond_3
    move-object/from16 v5, p1

    .restart local v5    # "url":Ljava/lang/String;
    goto :goto_1

    .line 626
    .restart local v10    # "headerMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v15    # "headerVal":Ljava/lang/String;
    .restart local v20    # "sig":Ljava/lang/String;
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 627
    .local v17, "key":Ljava/lang/String;
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-interface {v10, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 632
    .end local v15    # "headerVal":Ljava/lang/String;
    .end local v17    # "key":Ljava/lang/String;
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v6}, Lorg/brickred/socialauth/util/HttpUtil;->buildParams(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_3
.end method
