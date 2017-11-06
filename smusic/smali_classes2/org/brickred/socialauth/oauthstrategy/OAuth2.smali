.class public Lorg/brickred/socialauth/oauthstrategy/OAuth2;
.super Ljava/lang/Object;
.source "OAuth2.java"

# interfaces
.implements Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;


# static fields
.field private static final serialVersionUID:J = -0x750422cce2d5850bL


# instance fields
.field private final LOG:Lorg/apache/commons/logging/Log;

.field private accessGrant:Lorg/brickred/socialauth/util/AccessGrant;

.field private accessTokenParameterName:Ljava/lang/String;

.field private endpoints:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private oauth:Lorg/brickred/socialauth/util/OAuthConsumer;

.field private permission:Lorg/brickred/socialauth/Permission;

.field private providerId:Ljava/lang/String;

.field private providerState:Z

.field private scope:Ljava/lang/String;

.field private successUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/brickred/socialauth/util/OAuthConfig;Ljava/util/Map;)V
    .locals 1
    .param p1, "config"    # Lorg/brickred/socialauth/util/OAuthConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/brickred/socialauth/util/OAuthConfig;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p2, "endpoints":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-class v0, Lorg/brickred/socialauth/oauthstrategy/OAuth2;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/brickred/socialauth/oauthstrategy/OAuth2;->LOG:Lorg/apache/commons/logging/Log;

    .line 66
    new-instance v0, Lorg/brickred/socialauth/util/OAuthConsumer;

    invoke-direct {v0, p1}, Lorg/brickred/socialauth/util/OAuthConsumer;-><init>(Lorg/brickred/socialauth/util/OAuthConfig;)V

    iput-object v0, p0, Lorg/brickred/socialauth/oauthstrategy/OAuth2;->oauth:Lorg/brickred/socialauth/util/OAuthConsumer;

    .line 67
    iput-object p2, p0, Lorg/brickred/socialauth/oauthstrategy/OAuth2;->endpoints:Ljava/util/Map;

    .line 68
    sget-object v0, Lorg/brickred/socialauth/Permission;->DEFAULT:Lorg/brickred/socialauth/Permission;

    iput-object v0, p0, Lorg/brickred/socialauth/oauthstrategy/OAuth2;->permission:Lorg/brickred/socialauth/Permission;

    .line 69
    invoke-virtual {p1}, Lorg/brickred/socialauth/util/OAuthConfig;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/brickred/socialauth/oauthstrategy/OAuth2;->providerId:Ljava/lang/String;

    .line 70
    const-string v0, "access_token"

    iput-object v0, p0, Lorg/brickred/socialauth/oauthstrategy/OAuth2;->accessTokenParameterName:Ljava/lang/String;

    .line 71
    return-void
.end method


# virtual methods
.method public executeFeed(Ljava/lang/String;)Lorg/brickred/socialauth/util/Response;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/16 v0, 0x3f

    .line 265
    iget-object v2, p0, Lorg/brickred/socialauth/oauthstrategy/OAuth2;->accessGrant:Lorg/brickred/socialauth/util/AccessGrant;

    if-nez v2, :cond_0

    .line 266
    new-instance v2, Lorg/brickred/socialauth/exception/SocialAuthException;

    .line 267
    const-string v3, "Please call verifyResponse function first to get Access Token"

    .line 266
    invoke-direct {v2, v3}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 269
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 270
    .local v0, "separator":C
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/brickred/socialauth/oauthstrategy/OAuth2;->accessTokenParameterName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 271
    iget-object v3, p0, Lorg/brickred/socialauth/oauthstrategy/OAuth2;->accessGrant:Lorg/brickred/socialauth/util/AccessGrant;

    invoke-virtual {v3}, Lorg/brickred/socialauth/util/AccessGrant;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 270
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 272
    .local v1, "urlStr":Ljava/lang/String;
    iget-object v2, p0, Lorg/brickred/socialauth/oauthstrategy/OAuth2;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Calling URL : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 273
    sget-object v2, Lorg/brickred/socialauth/util/MethodType;->GET:Lorg/brickred/socialauth/util/MethodType;

    invoke-virtual {v2}, Lorg/brickred/socialauth/util/MethodType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5, v5}, Lorg/brickred/socialauth/util/HttpUtil;->doHttpRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lorg/brickred/socialauth/util/Response;

    move-result-object v2

    return-object v2

    .line 269
    .end local v0    # "separator":C
    .end local v1    # "urlStr":Ljava/lang/String;
    :cond_1
    const/16 v0, 0x26

    goto :goto_0
.end method

.method public executeFeed(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)Lorg/brickred/socialauth/util/Response;
    .locals 9
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "methodType"    # Ljava/lang/String;
    .param p5, "body"    # Ljava/lang/String;
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
            "Ljava/lang/String;",
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
    .line 282
    .local p3, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, "headerParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v6, p0, Lorg/brickred/socialauth/oauthstrategy/OAuth2;->accessGrant:Lorg/brickred/socialauth/util/AccessGrant;

    if-nez v6, :cond_0

    .line 283
    new-instance v6, Lorg/brickred/socialauth/exception/SocialAuthException;

    .line 284
    const-string v7, "Please call verifyResponse function first to get Access Token"

    .line 283
    invoke-direct {v6, v7}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 286
    :cond_0
    move-object v3, p1

    .line 287
    .local v3, "reqURL":Ljava/lang/String;
    move-object v0, p5

    .line 288
    .local v0, "bodyStr":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 289
    .local v4, "sb":Ljava/lang/StringBuffer;
    iget-object v6, p0, Lorg/brickred/socialauth/oauthstrategy/OAuth2;->accessTokenParameterName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    .line 290
    iget-object v7, p0, Lorg/brickred/socialauth/oauthstrategy/OAuth2;->accessGrant:Lorg/brickred/socialauth/util/AccessGrant;

    invoke-virtual {v7}, Lorg/brickred/socialauth/util/AccessGrant;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 291
    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 292
    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_3

    .line 299
    :cond_1
    sget-object v6, Lorg/brickred/socialauth/util/MethodType;->GET:Lorg/brickred/socialauth/util/MethodType;

    invoke-virtual {v6}, Lorg/brickred/socialauth/util/MethodType;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 300
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 301
    const/16 v6, 0x3f

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 302
    .local v1, "idx":I
    const/4 v6, -0x1

    if-ne v1, v6, :cond_5

    .line 303
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 307
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 330
    .end local v1    # "idx":I
    :cond_2
    :goto_2
    iget-object v6, p0, Lorg/brickred/socialauth/oauthstrategy/OAuth2;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Calling URL\t:\t"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 331
    iget-object v6, p0, Lorg/brickred/socialauth/oauthstrategy/OAuth2;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Body\t\t:\t"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 332
    iget-object v6, p0, Lorg/brickred/socialauth/oauthstrategy/OAuth2;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Header Params\t:\t"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 334
    invoke-static {v3, p2, v0, p4}, Lorg/brickred/socialauth/util/HttpUtil;->doHttpRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lorg/brickred/socialauth/util/Response;

    move-result-object v6

    .line 333
    return-object v6

    .line 292
    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 293
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    if-lez v6, :cond_4

    .line 294
    const-string v6, "&"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 296
    :cond_4
    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v8, "="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 305
    .end local v2    # "key":Ljava/lang/String;
    .restart local v1    # "idx":I
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "&"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 309
    .end local v1    # "idx":I
    :cond_6
    sget-object v6, Lorg/brickred/socialauth/util/MethodType;->POST:Lorg/brickred/socialauth/util/MethodType;

    invoke-virtual {v6}, Lorg/brickred/socialauth/util/MethodType;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 310
    sget-object v6, Lorg/brickred/socialauth/util/MethodType;->PUT:Lorg/brickred/socialauth/util/MethodType;

    invoke-virtual {v6}, Lorg/brickred/socialauth/util/MethodType;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 311
    :cond_7
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 312
    if-eqz v0, :cond_9

    .line 313
    if-eqz p4, :cond_8

    .line 314
    const-string v6, "Content-Type"

    invoke-interface {p4, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 315
    const-string v6, "Content-Type"

    invoke-interface {p4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 316
    .local v5, "val":Ljava/lang/String;
    const-string v6, "application/json"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 317
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "&"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 318
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 320
    goto/16 :goto_2

    .line 321
    .end local v5    # "val":Ljava/lang/String;
    :cond_8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "&"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 322
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 324
    goto/16 :goto_2

    .line 325
    :cond_9
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2
.end method

.method public getAccessGrant()Lorg/brickred/socialauth/util/AccessGrant;
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lorg/brickred/socialauth/oauthstrategy/OAuth2;->accessGrant:Lorg/brickred/socialauth/util/AccessGrant;

    return-object v0
.end method

.method public getLoginRedirectURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "successUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v2, 0x3f

    .line 75
    iget-object v4, p0, Lorg/brickred/socialauth/oauthstrategy/OAuth2;->LOG:Lorg/apache/commons/logging/Log;

    const-string v5, "Determining URL for redirection"

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 76
    const/4 v4, 0x1

    iput-boolean v4, p0, Lorg/brickred/socialauth/oauthstrategy/OAuth2;->providerState:Z

    .line 78
    :try_start_0
    const-string v4, "UTF-8"

    invoke-static {p1, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/brickred/socialauth/oauthstrategy/OAuth2;->successUrl:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :goto_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 83
    .local v1, "sb":Ljava/lang/StringBuffer;
    iget-object v4, p0, Lorg/brickred/socialauth/oauthstrategy/OAuth2;->endpoints:Ljava/util/Map;

    const-string v5, "authorizationURL"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 84
    iget-object v4, p0, Lorg/brickred/socialauth/oauthstrategy/OAuth2;->endpoints:Ljava/util/Map;

    const-string v5, "authorizationURL"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 85
    invoke-virtual {v4, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    .line 84
    if-ne v4, v5, :cond_1

    .line 86
    .local v2, "separator":C
    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 87
    const-string v4, "client_id="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lorg/brickred/socialauth/oauthstrategy/OAuth2;->oauth:Lorg/brickred/socialauth/util/OAuthConsumer;

    invoke-virtual {v5}, Lorg/brickred/socialauth/util/OAuthConsumer;->getConfig()Lorg/brickred/socialauth/util/OAuthConfig;

    move-result-object v5

    invoke-virtual {v5}, Lorg/brickred/socialauth/util/OAuthConfig;->get_consumerKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 88
    const-string v4, "&response_type=code"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 89
    const-string v4, "&redirect_uri="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lorg/brickred/socialauth/oauthstrategy/OAuth2;->successUrl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 90
    iget-object v4, p0, Lorg/brickred/socialauth/oauthstrategy/OAuth2;->scope:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 91
    const-string v4, "&scope="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lorg/brickred/socialauth/oauthstrategy/OAuth2;->scope:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 93
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 95
    .local v3, "url":Ljava/lang/String;
    iget-object v4, p0, Lorg/brickred/socialauth/oauthstrategy/OAuth2;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Redirection to following URL should happen : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 96
    return-object v3

    .line 79
    .end local v1    # "sb":Ljava/lang/StringBuffer;
    .end local v2    # "separator":C
    .end local v3    # "url":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    iput-object p1, p0, Lorg/brickred/socialauth/oauthstrategy/OAuth2;->successUrl:Ljava/lang/String;

    goto :goto_0

    .line 85
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v1    # "sb":Ljava/lang/StringBuffer;
    :cond_1
    const/16 v2, 0x26

    goto :goto_1
.end method

.method public logout()V
    .locals 1

    .prologue
    .line 350
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/brickred/socialauth/oauthstrategy/OAuth2;->accessGrant:Lorg/brickred/socialauth/util/AccessGrant;

    .line 351
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/brickred/socialauth/oauthstrategy/OAuth2;->providerState:Z

    .line 352
    return-void
.end method

.method public setAccessGrant(Lorg/brickred/socialauth/util/AccessGrant;)V
    .locals 0
    .param p1, "accessGrant"    # Lorg/brickred/socialauth/util/AccessGrant;

    .prologue
    .line 339
    iput-object p1, p0, Lorg/brickred/socialauth/oauthstrategy/OAuth2;->accessGrant:Lorg/brickred/socialauth/util/AccessGrant;

    .line 340
    return-void
.end method

.method public setAccessTokenParameterName(Ljava/lang/String;)V
    .locals 0
    .param p1, "accessTokenParameterName"    # Ljava/lang/String;

    .prologue
    .line 345
    iput-object p1, p0, Lorg/brickred/socialauth/oauthstrategy/OAuth2;->accessTokenParameterName:Ljava/lang/String;

    .line 346
    return-void
.end method

.method public setPermission(Lorg/brickred/socialauth/Permission;)V
    .locals 0
    .param p1, "permission"    # Lorg/brickred/socialauth/Permission;

    .prologue
    .line 260
    iput-object p1, p0, Lorg/brickred/socialauth/oauthstrategy/OAuth2;->permission:Lorg/brickred/socialauth/Permission;

    .line 261
    return-void
.end method

.method public setScope(Ljava/lang/String;)V
    .locals 0
    .param p1, "scope"    # Ljava/lang/String;

    .prologue
    .line 255
    iput-object p1, p0, Lorg/brickred/socialauth/oauthstrategy/OAuth2;->scope:Ljava/lang/String;

    .line 256
    return-void
.end method

.method public uploadImage(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Lorg/brickred/socialauth/util/Response;
    .locals 7
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "methodType"    # Ljava/lang/String;
    .param p5, "fileName"    # Ljava/lang/String;
    .param p6, "inputStream"    # Ljava/io/InputStream;
    .param p7, "fileParamName"    # Ljava/lang/String;
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
            "Ljava/lang/String;",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
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
    .line 360
    .local p3, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, "headerParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 361
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/brickred/socialauth/oauthstrategy/OAuth2;->accessTokenParameterName:Ljava/lang/String;

    iget-object v1, p0, Lorg/brickred/socialauth/oauthstrategy/OAuth2;->accessGrant:Lorg/brickred/socialauth/util/AccessGrant;

    invoke-virtual {v1}, Lorg/brickred/socialauth/util/AccessGrant;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 363
    invoke-interface {v2, p3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 366
    :cond_0
    const/4 v6, 0x0

    move-object v0, p1

    move-object v1, p2

    move-object v3, p4

    move-object v4, p6

    move-object v5, p5

    .line 365
    invoke-static/range {v0 .. v6}, Lorg/brickred/socialauth/util/HttpUtil;->doHttpRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Lorg/brickred/socialauth/util/Response;

    move-result-object v0

    return-object v0
.end method

.method public verifyResponse(Ljava/util/Map;)Lorg/brickred/socialauth/util/AccessGrant;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/brickred/socialauth/util/AccessGrant;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 102
    .local p1, "requestParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Lorg/brickred/socialauth/util/MethodType;->GET:Lorg/brickred/socialauth/util/MethodType;

    invoke-virtual {v0}, Lorg/brickred/socialauth/util/MethodType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/brickred/socialauth/oauthstrategy/OAuth2;->verifyResponse(Ljava/util/Map;Ljava/lang/String;)Lorg/brickred/socialauth/util/AccessGrant;

    move-result-object v0

    return-object v0
.end method

.method public verifyResponse(Ljava/util/Map;Ljava/lang/String;)Lorg/brickred/socialauth/util/AccessGrant;
    .locals 27
    .param p2, "methodType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lorg/brickred/socialauth/util/AccessGrant;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 108
    .local p1, "requestParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/brickred/socialauth/oauthstrategy/OAuth2;->LOG:Lorg/apache/commons/logging/Log;

    move-object/from16 v23, v0

    const-string v24, "Verifying the authentication response from provider"

    invoke-interface/range {v23 .. v24}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 110
    const-string v23, "access_token"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    if-eqz v23, :cond_2

    .line 111
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/brickred/socialauth/oauthstrategy/OAuth2;->LOG:Lorg/apache/commons/logging/Log;

    move-object/from16 v23, v0

    const-string v24, "Creating Access Grant"

    invoke-interface/range {v23 .. v24}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 112
    const-string v23, "access_token"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 113
    .local v3, "accessToken":Ljava/lang/String;
    const/4 v9, 0x0

    .line 114
    .local v9, "expires":Ljava/lang/Integer;
    const-string v23, "expires"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    if-eqz v23, :cond_0

    .line 115
    new-instance v9, Ljava/lang/Integer;

    .end local v9    # "expires":Ljava/lang/Integer;
    const-string v23, "expires"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-direct {v9, v0}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    .line 117
    .restart local v9    # "expires":Ljava/lang/Integer;
    :cond_0
    new-instance v23, Lorg/brickred/socialauth/util/AccessGrant;

    invoke-direct/range {v23 .. v23}, Lorg/brickred/socialauth/util/AccessGrant;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/brickred/socialauth/oauthstrategy/OAuth2;->accessGrant:Lorg/brickred/socialauth/util/AccessGrant;

    .line 118
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/brickred/socialauth/oauthstrategy/OAuth2;->accessGrant:Lorg/brickred/socialauth/util/AccessGrant;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lorg/brickred/socialauth/util/AccessGrant;->setKey(Ljava/lang/String;)V

    .line 119
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/brickred/socialauth/oauthstrategy/OAuth2;->accessGrant:Lorg/brickred/socialauth/util/AccessGrant;

    move-object/from16 v23, v0

    const-string v24, "expires"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v9}, Lorg/brickred/socialauth/util/AccessGrant;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 120
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/brickred/socialauth/oauthstrategy/OAuth2;->permission:Lorg/brickred/socialauth/Permission;

    move-object/from16 v23, v0

    if-eqz v23, :cond_1

    .line 121
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/brickred/socialauth/oauthstrategy/OAuth2;->accessGrant:Lorg/brickred/socialauth/util/AccessGrant;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/brickred/socialauth/oauthstrategy/OAuth2;->permission:Lorg/brickred/socialauth/Permission;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Lorg/brickred/socialauth/util/AccessGrant;->setPermission(Lorg/brickred/socialauth/Permission;)V

    .line 125
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/brickred/socialauth/oauthstrategy/OAuth2;->accessGrant:Lorg/brickred/socialauth/util/AccessGrant;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/brickred/socialauth/oauthstrategy/OAuth2;->providerId:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Lorg/brickred/socialauth/util/AccessGrant;->setProviderId(Ljava/lang/String;)V

    .line 126
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/brickred/socialauth/oauthstrategy/OAuth2;->LOG:Lorg/apache/commons/logging/Log;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/brickred/socialauth/oauthstrategy/OAuth2;->accessGrant:Lorg/brickred/socialauth/util/AccessGrant;

    move-object/from16 v24, v0

    invoke-interface/range {v23 .. v24}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 127
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/brickred/socialauth/oauthstrategy/OAuth2;->accessGrant:Lorg/brickred/socialauth/util/AccessGrant;

    move-object/from16 v23, v0

    .line 250
    :goto_1
    return-object v23

    .line 123
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/brickred/socialauth/oauthstrategy/OAuth2;->accessGrant:Lorg/brickred/socialauth/util/AccessGrant;

    move-object/from16 v23, v0

    sget-object v24, Lorg/brickred/socialauth/Permission;->ALL:Lorg/brickred/socialauth/Permission;

    invoke-virtual/range {v23 .. v24}, Lorg/brickred/socialauth/util/AccessGrant;->setPermission(Lorg/brickred/socialauth/Permission;)V

    goto :goto_0

    .line 130
    .end local v3    # "accessToken":Ljava/lang/String;
    .end local v9    # "expires":Ljava/lang/Integer;
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/brickred/socialauth/oauthstrategy/OAuth2;->providerState:Z

    move/from16 v23, v0

    if-nez v23, :cond_3

    .line 131
    new-instance v23, Lorg/brickred/socialauth/exception/ProviderStateException;

    invoke-direct/range {v23 .. v23}, Lorg/brickred/socialauth/exception/ProviderStateException;-><init>()V

    throw v23

    .line 134
    :cond_3
    const-string v23, "code"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 135
    .local v7, "code":Ljava/lang/String;
    if-eqz v7, :cond_4

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v23

    if-nez v23, :cond_5

    .line 136
    :cond_4
    new-instance v23, Lorg/brickred/socialauth/exception/SocialAuthException;

    const-string v24, "Verification code is null"

    invoke-direct/range {v23 .. v24}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 138
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/brickred/socialauth/oauthstrategy/OAuth2;->LOG:Lorg/apache/commons/logging/Log;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "Verification Code : "

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-interface/range {v23 .. v24}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 140
    const/4 v3, 0x0

    .line 142
    .restart local v3    # "accessToken":Ljava/lang/String;
    :try_start_0
    const-string v23, "UTF-8"

    move-object/from16 v0, v23

    invoke-static {v7, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 146
    .local v4, "acode":Ljava/lang/String;
    :goto_2
    new-instance v20, Ljava/lang/StringBuffer;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuffer;-><init>()V

    .line 147
    .local v20, "sb":Ljava/lang/StringBuffer;
    sget-object v23, Lorg/brickred/socialauth/util/MethodType;->GET:Lorg/brickred/socialauth/util/MethodType;

    invoke-virtual/range {v23 .. v23}, Lorg/brickred/socialauth/util/MethodType;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_6

    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/brickred/socialauth/oauthstrategy/OAuth2;->endpoints:Ljava/util/Map;

    move-object/from16 v23, v0

    const-string v24, "accessTokenURL"

    invoke-interface/range {v23 .. v24}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 149
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/brickred/socialauth/oauthstrategy/OAuth2;->endpoints:Ljava/util/Map;

    move-object/from16 v23, v0

    const-string v24, "accessTokenURL"

    invoke-interface/range {v23 .. v24}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    .line 150
    const/16 v24, 0x3f

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->indexOf(I)I

    move-result v23

    const/16 v24, -0x1

    .line 149
    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_9

    .line 150
    const/16 v21, 0x3f

    .line 151
    .local v21, "separator":C
    :goto_3
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 153
    .end local v21    # "separator":C
    :cond_6
    const-string v23, "client_id="

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/brickred/socialauth/oauthstrategy/OAuth2;->oauth:Lorg/brickred/socialauth/util/OAuthConsumer;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lorg/brickred/socialauth/util/OAuthConsumer;->getConfig()Lorg/brickred/socialauth/util/OAuthConfig;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lorg/brickred/socialauth/util/OAuthConfig;->get_consumerKey()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 154
    const-string v23, "&redirect_uri="

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/brickred/socialauth/oauthstrategy/OAuth2;->successUrl:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 155
    const-string v23, "&client_secret="

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v23

    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/brickred/socialauth/oauthstrategy/OAuth2;->oauth:Lorg/brickred/socialauth/util/OAuthConsumer;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lorg/brickred/socialauth/util/OAuthConsumer;->getConfig()Lorg/brickred/socialauth/util/OAuthConfig;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lorg/brickred/socialauth/util/OAuthConfig;->get_consumerSecret()Ljava/lang/String;

    move-result-object v24

    .line 155
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 157
    const-string v23, "&code="

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 158
    const-string v23, "&grant_type=authorization_code"

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 161
    const/4 v6, 0x0

    .line 163
    .local v6, "authURL":Ljava/lang/String;
    :try_start_1
    sget-object v23, Lorg/brickred/socialauth/util/MethodType;->GET:Lorg/brickred/socialauth/util/MethodType;

    invoke-virtual/range {v23 .. v23}, Lorg/brickred/socialauth/util/MethodType;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_a

    .line 164
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    .line 165
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/brickred/socialauth/oauthstrategy/OAuth2;->LOG:Lorg/apache/commons/logging/Log;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "URL for Access Token request : "

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-interface/range {v23 .. v24}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 166
    const/16 v23, 0x0

    .line 167
    const/16 v24, 0x0

    .line 166
    move-object/from16 v0, p2

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-static {v6, v0, v1, v2}, Lorg/brickred/socialauth/util/HttpUtil;->doHttpRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lorg/brickred/socialauth/util/Response;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v18

    .line 179
    .local v18, "response":Lorg/brickred/socialauth/util/Response;
    :goto_4
    :try_start_2
    const-string v23, "UTF-8"

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/brickred/socialauth/util/Response;->getResponseBodyAsString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v19

    .line 183
    .local v19, "result":Ljava/lang/String;
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 184
    .local v5, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v9, 0x0

    .line 185
    .restart local v9    # "expires":Ljava/lang/Integer;
    const-string/jumbo v23, "{"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v23

    if-gez v23, :cond_10

    .line 186
    const-string v23, "&"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 187
    .local v17, "pairs":[Ljava/lang/String;
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v24, v0

    const/16 v23, 0x0

    :goto_5
    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_b

    .line 231
    .end local v17    # "pairs":[Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/brickred/socialauth/oauthstrategy/OAuth2;->LOG:Lorg/apache/commons/logging/Log;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "Access Token : "

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-interface/range {v23 .. v24}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 232
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/brickred/socialauth/oauthstrategy/OAuth2;->LOG:Lorg/apache/commons/logging/Log;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "Expires : "

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-interface/range {v23 .. v24}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 233
    if-eqz v3, :cond_15

    .line 234
    new-instance v23, Lorg/brickred/socialauth/util/AccessGrant;

    invoke-direct/range {v23 .. v23}, Lorg/brickred/socialauth/util/AccessGrant;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/brickred/socialauth/oauthstrategy/OAuth2;->accessGrant:Lorg/brickred/socialauth/util/AccessGrant;

    .line 235
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/brickred/socialauth/oauthstrategy/OAuth2;->accessGrant:Lorg/brickred/socialauth/util/AccessGrant;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lorg/brickred/socialauth/util/AccessGrant;->setKey(Ljava/lang/String;)V

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/brickred/socialauth/oauthstrategy/OAuth2;->accessGrant:Lorg/brickred/socialauth/util/AccessGrant;

    move-object/from16 v23, v0

    const-string v24, "expires"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v9}, Lorg/brickred/socialauth/util/AccessGrant;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 237
    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v23

    if-lez v23, :cond_8

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/brickred/socialauth/oauthstrategy/OAuth2;->accessGrant:Lorg/brickred/socialauth/util/AccessGrant;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Lorg/brickred/socialauth/util/AccessGrant;->setAttributes(Ljava/util/Map;)V

    .line 240
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/brickred/socialauth/oauthstrategy/OAuth2;->permission:Lorg/brickred/socialauth/Permission;

    move-object/from16 v23, v0

    if-eqz v23, :cond_14

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/brickred/socialauth/oauthstrategy/OAuth2;->accessGrant:Lorg/brickred/socialauth/util/AccessGrant;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/brickred/socialauth/oauthstrategy/OAuth2;->permission:Lorg/brickred/socialauth/Permission;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Lorg/brickred/socialauth/util/AccessGrant;->setPermission(Lorg/brickred/socialauth/Permission;)V

    .line 245
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/brickred/socialauth/oauthstrategy/OAuth2;->accessGrant:Lorg/brickred/socialauth/util/AccessGrant;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/brickred/socialauth/oauthstrategy/OAuth2;->providerId:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Lorg/brickred/socialauth/util/AccessGrant;->setProviderId(Ljava/lang/String;)V

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/brickred/socialauth/oauthstrategy/OAuth2;->accessGrant:Lorg/brickred/socialauth/util/AccessGrant;

    move-object/from16 v23, v0

    goto/16 :goto_1

    .line 143
    .end local v4    # "acode":Ljava/lang/String;
    .end local v5    # "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v6    # "authURL":Ljava/lang/String;
    .end local v9    # "expires":Ljava/lang/Integer;
    .end local v18    # "response":Lorg/brickred/socialauth/util/Response;
    .end local v19    # "result":Ljava/lang/String;
    .end local v20    # "sb":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v8

    .line 144
    .local v8, "e":Ljava/lang/Exception;
    move-object v4, v7

    .restart local v4    # "acode":Ljava/lang/String;
    goto/16 :goto_2

    .line 150
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v20    # "sb":Ljava/lang/StringBuffer;
    :cond_9
    const/16 v21, 0x26

    goto/16 :goto_3

    .line 169
    .restart local v6    # "authURL":Ljava/lang/String;
    :cond_a
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/brickred/socialauth/oauthstrategy/OAuth2;->endpoints:Ljava/util/Map;

    move-object/from16 v23, v0

    const-string v24, "accessTokenURL"

    invoke-interface/range {v23 .. v24}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v0, v23

    check-cast v0, Ljava/lang/String;

    move-object v6, v0

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/brickred/socialauth/oauthstrategy/OAuth2;->LOG:Lorg/apache/commons/logging/Log;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "URL for Access Token request : "

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-interface/range {v23 .. v24}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 172
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    .line 171
    move-object/from16 v0, p2

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-static {v6, v0, v1, v2}, Lorg/brickred/socialauth/util/HttpUtil;->doHttpRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lorg/brickred/socialauth/util/Response;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v18

    .restart local v18    # "response":Lorg/brickred/socialauth/util/Response;
    goto/16 :goto_4

    .line 174
    .end local v18    # "response":Lorg/brickred/socialauth/util/Response;
    :catch_1
    move-exception v8

    .line 175
    .restart local v8    # "e":Ljava/lang/Exception;
    new-instance v23, Lorg/brickred/socialauth/exception/SocialAuthException;

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "Error in url : "

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-direct {v0, v1, v8}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v23

    .line 180
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v18    # "response":Lorg/brickred/socialauth/util/Response;
    :catch_2
    move-exception v10

    .line 181
    .local v10, "io":Ljava/io/IOException;
    new-instance v23, Lorg/brickred/socialauth/exception/SocialAuthException;

    move-object/from16 v0, v23

    invoke-direct {v0, v10}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/Throwable;)V

    throw v23

    .line 187
    .end local v10    # "io":Ljava/io/IOException;
    .restart local v5    # "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v9    # "expires":Ljava/lang/Integer;
    .restart local v17    # "pairs":[Ljava/lang/String;
    .restart local v19    # "result":Ljava/lang/String;
    :cond_b
    aget-object v16, v17, v23

    .line 188
    .local v16, "pair":Ljava/lang/String;
    const-string v25, "="

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 189
    .local v15, "kv":[Ljava/lang/String;
    array-length v0, v15

    move/from16 v25, v0

    const/16 v26, 0x2

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_c

    .line 190
    new-instance v23, Lorg/brickred/socialauth/exception/SocialAuthException;

    .line 191
    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "Unexpected auth response from "

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 190
    invoke-direct/range {v23 .. v24}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 193
    :cond_c
    const/16 v25, 0x0

    aget-object v25, v15, v25

    const-string v26, "access_token"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_d

    .line 194
    const/16 v25, 0x1

    aget-object v3, v15, v25

    .line 187
    :goto_7
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_5

    .line 195
    :cond_d
    const/16 v25, 0x0

    aget-object v25, v15, v25

    const-string v26, "expires"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_e

    .line 196
    const/16 v25, 0x1

    aget-object v25, v15, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    .line 197
    goto :goto_7

    :cond_e
    const/16 v25, 0x0

    aget-object v25, v15, v25

    const-string v26, "expires_in"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_f

    .line 198
    const/16 v25, 0x1

    aget-object v25, v15, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    .line 199
    goto :goto_7

    .line 200
    :cond_f
    const/16 v25, 0x0

    aget-object v25, v15, v25

    const/16 v26, 0x1

    aget-object v26, v15, v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 206
    .end local v15    # "kv":[Ljava/lang/String;
    .end local v16    # "pair":Ljava/lang/String;
    .end local v17    # "pairs":[Ljava/lang/String;
    :cond_10
    :try_start_4
    new-instance v11, Lorg/json/JSONObject;

    move-object/from16 v0, v19

    invoke-direct {v11, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 207
    .local v11, "jObj":Lorg/json/JSONObject;
    const-string v23, "access_token"

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_11

    .line 208
    const-string v23, "access_token"

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 210
    :cond_11
    const-string v23, "expires_in"

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_12

    .line 211
    const-string v23, "expires_in"

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 212
    .local v22, "str":Ljava/lang/String;
    if-eqz v22, :cond_12

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v23

    if-lez v23, :cond_12

    .line 213
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    .line 216
    .end local v22    # "str":Ljava/lang/String;
    :cond_12
    if-eqz v3, :cond_7

    .line 217
    invoke-virtual {v11}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v14

    .line 218
    .local v14, "keyItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_13
    :goto_8
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_7

    .line 219
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 220
    .local v13, "key":Ljava/lang/String;
    const-string v23, "access_token"

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_13

    .line 221
    const-string v23, "expires_in"

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_13

    .line 222
    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-interface {v5, v13, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_8

    .line 226
    .end local v11    # "jObj":Lorg/json/JSONObject;
    .end local v13    # "key":Ljava/lang/String;
    .end local v14    # "keyItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :catch_3
    move-exception v12

    .line 227
    .local v12, "je":Lorg/json/JSONException;
    new-instance v23, Lorg/brickred/socialauth/exception/SocialAuthException;

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "Unexpected auth response from "

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 228
    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 227
    invoke-direct/range {v23 .. v24}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 243
    .end local v12    # "je":Lorg/json/JSONException;
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/brickred/socialauth/oauthstrategy/OAuth2;->accessGrant:Lorg/brickred/socialauth/util/AccessGrant;

    move-object/from16 v23, v0

    sget-object v24, Lorg/brickred/socialauth/Permission;->ALL:Lorg/brickred/socialauth/Permission;

    invoke-virtual/range {v23 .. v24}, Lorg/brickred/socialauth/util/AccessGrant;->setPermission(Lorg/brickred/socialauth/Permission;)V

    goto/16 :goto_6

    .line 247
    :cond_15
    new-instance v23, Lorg/brickred/socialauth/exception/SocialAuthException;

    .line 248
    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "Access token and expires not found from "

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 247
    invoke-direct/range {v23 .. v24}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;)V

    throw v23
.end method
