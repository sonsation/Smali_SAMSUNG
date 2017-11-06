.class public Lorg/brickred/socialauth/oauthstrategy/OAuth1;
.super Ljava/lang/Object;
.source "OAuth1.java"

# interfaces
.implements Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;


# static fields
.field private static final serialVersionUID:J = -0x636fa305dd66aabL


# instance fields
.field private final LOG:Lorg/apache/commons/logging/Log;

.field private accessToken:Lorg/brickred/socialauth/util/AccessGrant;

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

.field private requestToken:Lorg/brickred/socialauth/util/AccessGrant;

.field private scope:Ljava/lang/String;


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
    .line 57
    .local p2, "endpoints":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const-class v0, Lorg/brickred/socialauth/oauthstrategy/OAuth1;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/brickred/socialauth/oauthstrategy/OAuth1;->LOG:Lorg/apache/commons/logging/Log;

    .line 58
    new-instance v0, Lorg/brickred/socialauth/util/OAuthConsumer;

    invoke-direct {v0, p1}, Lorg/brickred/socialauth/util/OAuthConsumer;-><init>(Lorg/brickred/socialauth/util/OAuthConfig;)V

    iput-object v0, p0, Lorg/brickred/socialauth/oauthstrategy/OAuth1;->oauth:Lorg/brickred/socialauth/util/OAuthConsumer;

    .line 59
    iput-object p2, p0, Lorg/brickred/socialauth/oauthstrategy/OAuth1;->endpoints:Ljava/util/Map;

    .line 60
    sget-object v0, Lorg/brickred/socialauth/Permission;->ALL:Lorg/brickred/socialauth/Permission;

    iput-object v0, p0, Lorg/brickred/socialauth/oauthstrategy/OAuth1;->permission:Lorg/brickred/socialauth/Permission;

    .line 61
    invoke-virtual {p1}, Lorg/brickred/socialauth/util/OAuthConfig;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/brickred/socialauth/oauthstrategy/OAuth1;->providerId:Ljava/lang/String;

    .line 62
    return-void
.end method


# virtual methods
.method public executeFeed(Ljava/lang/String;)Lorg/brickred/socialauth/util/Response;
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 126
    iget-object v0, p0, Lorg/brickred/socialauth/oauthstrategy/OAuth1;->oauth:Lorg/brickred/socialauth/util/OAuthConsumer;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/brickred/socialauth/oauthstrategy/OAuth1;->accessToken:Lorg/brickred/socialauth/util/AccessGrant;

    invoke-virtual {v0, p1, v1, v2}, Lorg/brickred/socialauth/util/OAuthConsumer;->httpGet(Ljava/lang/String;Ljava/util/Map;Lorg/brickred/socialauth/util/AccessGrant;)Lorg/brickred/socialauth/util/Response;

    move-result-object v0

    return-object v0
.end method

.method public executeFeed(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)Lorg/brickred/socialauth/util/Response;
    .locals 9
    .param p1, "urlStr"    # Ljava/lang/String;
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
    .line 134
    .local p3, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, "headerParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v8, 0x0

    .line 135
    .local v8, "response":Lorg/brickred/socialauth/util/Response;
    iget-object v0, p0, Lorg/brickred/socialauth/oauthstrategy/OAuth1;->accessToken:Lorg/brickred/socialauth/util/AccessGrant;

    if-nez v0, :cond_0

    .line 136
    new-instance v0, Lorg/brickred/socialauth/exception/SocialAuthException;

    .line 137
    const-string v1, "Please call verifyResponse function first to get Access Token"

    .line 136
    invoke-direct {v0, v1}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :cond_0
    sget-object v0, Lorg/brickred/socialauth/util/MethodType;->GET:Lorg/brickred/socialauth/util/MethodType;

    invoke-virtual {v0}, Lorg/brickred/socialauth/util/MethodType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 141
    :try_start_0
    iget-object v0, p0, Lorg/brickred/socialauth/oauthstrategy/OAuth1;->oauth:Lorg/brickred/socialauth/util/OAuthConsumer;

    iget-object v1, p0, Lorg/brickred/socialauth/oauthstrategy/OAuth1;->accessToken:Lorg/brickred/socialauth/util/AccessGrant;

    invoke-virtual {v0, p1, p4, v1}, Lorg/brickred/socialauth/util/OAuthConsumer;->httpGet(Ljava/lang/String;Ljava/util/Map;Lorg/brickred/socialauth/util/AccessGrant;)Lorg/brickred/socialauth/util/Response;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 163
    :cond_1
    :goto_0
    return-object v8

    .line 142
    :catch_0
    move-exception v7

    .line 143
    .local v7, "ie":Ljava/lang/Exception;
    new-instance v0, Lorg/brickred/socialauth/exception/SocialAuthException;

    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error while making request to URL : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 143
    invoke-direct {v0, v1, v7}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 146
    .end local v7    # "ie":Ljava/lang/Exception;
    :cond_2
    sget-object v0, Lorg/brickred/socialauth/util/MethodType;->PUT:Lorg/brickred/socialauth/util/MethodType;

    invoke-virtual {v0}, Lorg/brickred/socialauth/util/MethodType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 148
    :try_start_1
    iget-object v0, p0, Lorg/brickred/socialauth/oauthstrategy/OAuth1;->oauth:Lorg/brickred/socialauth/util/OAuthConsumer;

    .line 149
    iget-object v5, p0, Lorg/brickred/socialauth/oauthstrategy/OAuth1;->accessToken:Lorg/brickred/socialauth/util/AccessGrant;

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    .line 148
    invoke-virtual/range {v0 .. v5}, Lorg/brickred/socialauth/util/OAuthConsumer;->httpPut(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Lorg/brickred/socialauth/util/AccessGrant;)Lorg/brickred/socialauth/util/Response;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v8

    goto :goto_0

    .line 150
    :catch_1
    move-exception v6

    .line 151
    .local v6, "e":Ljava/lang/Exception;
    new-instance v0, Lorg/brickred/socialauth/exception/SocialAuthException;

    .line 152
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error while making request to URL : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 151
    invoke-direct {v0, v1, v6}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 154
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_3
    sget-object v0, Lorg/brickred/socialauth/util/MethodType;->POST:Lorg/brickred/socialauth/util/MethodType;

    invoke-virtual {v0}, Lorg/brickred/socialauth/util/MethodType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    :try_start_2
    iget-object v0, p0, Lorg/brickred/socialauth/oauthstrategy/OAuth1;->oauth:Lorg/brickred/socialauth/util/OAuthConsumer;

    .line 157
    iget-object v5, p0, Lorg/brickred/socialauth/oauthstrategy/OAuth1;->accessToken:Lorg/brickred/socialauth/util/AccessGrant;

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    .line 156
    invoke-virtual/range {v0 .. v5}, Lorg/brickred/socialauth/util/OAuthConsumer;->httpPost(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Lorg/brickred/socialauth/util/AccessGrant;)Lorg/brickred/socialauth/util/Response;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v8

    goto :goto_0

    .line 158
    :catch_2
    move-exception v6

    .line 159
    .restart local v6    # "e":Ljava/lang/Exception;
    new-instance v0, Lorg/brickred/socialauth/exception/SocialAuthException;

    .line 160
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error while making request to URL : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 159
    invoke-direct {v0, v1, v6}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getAccessGrant()Lorg/brickred/socialauth/util/AccessGrant;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lorg/brickred/socialauth/oauthstrategy/OAuth1;->accessToken:Lorg/brickred/socialauth/util/AccessGrant;

    return-object v0
.end method

.method public getLoginRedirectURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "successUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 66
    iget-object v2, p0, Lorg/brickred/socialauth/oauthstrategy/OAuth1;->LOG:Lorg/apache/commons/logging/Log;

    const-string v3, "Determining URL for redirection"

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 67
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/brickred/socialauth/oauthstrategy/OAuth1;->providerState:Z

    .line 68
    iget-object v2, p0, Lorg/brickred/socialauth/oauthstrategy/OAuth1;->LOG:Lorg/apache/commons/logging/Log;

    const-string v3, "Call to fetch Request Token"

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 69
    iget-object v3, p0, Lorg/brickred/socialauth/oauthstrategy/OAuth1;->oauth:Lorg/brickred/socialauth/util/OAuthConsumer;

    .line 70
    iget-object v2, p0, Lorg/brickred/socialauth/oauthstrategy/OAuth1;->endpoints:Ljava/util/Map;

    const-string/jumbo v4, "reqTokenURL"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 69
    invoke-virtual {v3, v2, p1}, Lorg/brickred/socialauth/util/OAuthConsumer;->getRequestToken(Ljava/lang/String;Ljava/lang/String;)Lorg/brickred/socialauth/util/AccessGrant;

    move-result-object v2

    iput-object v2, p0, Lorg/brickred/socialauth/oauthstrategy/OAuth1;->requestToken:Lorg/brickred/socialauth/util/AccessGrant;

    .line 71
    iget-object v2, p0, Lorg/brickred/socialauth/oauthstrategy/OAuth1;->endpoints:Ljava/util/Map;

    const-string v3, "authorizationURL"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 72
    .local v0, "authUrl":Ljava/lang/String;
    iget-object v2, p0, Lorg/brickred/socialauth/oauthstrategy/OAuth1;->scope:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 73
    iget-object v2, p0, Lorg/brickred/socialauth/oauthstrategy/OAuth1;->scope:Ljava/lang/String;

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 74
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/brickred/socialauth/oauthstrategy/OAuth1;->scope:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 79
    :cond_0
    :goto_0
    iget-object v2, p0, Lorg/brickred/socialauth/oauthstrategy/OAuth1;->oauth:Lorg/brickred/socialauth/util/OAuthConsumer;

    iget-object v3, p0, Lorg/brickred/socialauth/oauthstrategy/OAuth1;->requestToken:Lorg/brickred/socialauth/util/AccessGrant;

    invoke-virtual {v2, v0, v3, p1}, Lorg/brickred/socialauth/util/OAuthConsumer;->buildAuthUrl(Ljava/lang/String;Lorg/brickred/socialauth/util/AccessGrant;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 81
    .local v1, "urlBuffer":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lorg/brickred/socialauth/oauthstrategy/OAuth1;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Redirection to following URL should happen : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 81
    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 83
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 76
    .end local v1    # "urlBuffer":Ljava/lang/StringBuilder;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "?scope="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/brickred/socialauth/oauthstrategy/OAuth1;->scope:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public logout()V
    .locals 1

    .prologue
    .line 180
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/brickred/socialauth/oauthstrategy/OAuth1;->accessToken:Lorg/brickred/socialauth/util/AccessGrant;

    .line 181
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/brickred/socialauth/oauthstrategy/OAuth1;->providerState:Z

    .line 182
    return-void
.end method

.method public setAccessGrant(Lorg/brickred/socialauth/util/AccessGrant;)V
    .locals 0
    .param p1, "accessGrant"    # Lorg/brickred/socialauth/util/AccessGrant;

    .prologue
    .line 168
    iput-object p1, p0, Lorg/brickred/socialauth/oauthstrategy/OAuth1;->accessToken:Lorg/brickred/socialauth/util/AccessGrant;

    .line 169
    return-void
.end method

.method public setAccessTokenParameterName(Ljava/lang/String;)V
    .locals 2
    .param p1, "accessTokenParameterName"    # Ljava/lang/String;

    .prologue
    .line 174
    iget-object v0, p0, Lorg/brickred/socialauth/oauthstrategy/OAuth1;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "It is not implemented for OAuth1"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 176
    return-void
.end method

.method public setPermission(Lorg/brickred/socialauth/Permission;)V
    .locals 0
    .param p1, "permission"    # Lorg/brickred/socialauth/Permission;

    .prologue
    .line 121
    iput-object p1, p0, Lorg/brickred/socialauth/oauthstrategy/OAuth1;->permission:Lorg/brickred/socialauth/Permission;

    .line 122
    return-void
.end method

.method public setScope(Ljava/lang/String;)V
    .locals 0
    .param p1, "scope"    # Ljava/lang/String;

    .prologue
    .line 116
    iput-object p1, p0, Lorg/brickred/socialauth/oauthstrategy/OAuth1;->scope:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public uploadImage(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Lorg/brickred/socialauth/util/Response;
    .locals 10
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
    .line 190
    .local p3, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, "headerParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/brickred/socialauth/oauthstrategy/OAuth1;->oauth:Lorg/brickred/socialauth/util/OAuthConsumer;

    .line 191
    iget-object v8, p0, Lorg/brickred/socialauth/oauthstrategy/OAuth1;->accessToken:Lorg/brickred/socialauth/util/AccessGrant;

    const/4 v9, 0x1

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object v6, p5

    move-object v7, p2

    .line 190
    invoke-virtual/range {v0 .. v9}, Lorg/brickred/socialauth/util/OAuthConsumer;->uploadImage(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/brickred/socialauth/util/AccessGrant;Z)Lorg/brickred/socialauth/util/Response;

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
    .line 111
    .local p1, "requestParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Lorg/brickred/socialauth/util/MethodType;->GET:Lorg/brickred/socialauth/util/MethodType;

    invoke-virtual {v0}, Lorg/brickred/socialauth/util/MethodType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/brickred/socialauth/oauthstrategy/OAuth1;->verifyResponse(Ljava/util/Map;Ljava/lang/String;)Lorg/brickred/socialauth/util/AccessGrant;

    move-result-object v0

    return-object v0
.end method

.method public verifyResponse(Ljava/util/Map;Ljava/lang/String;)Lorg/brickred/socialauth/util/AccessGrant;
    .locals 4
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
    .line 89
    .local p1, "requestParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lorg/brickred/socialauth/oauthstrategy/OAuth1;->LOG:Lorg/apache/commons/logging/Log;

    const-string v2, "Verifying the authentication response from provider"

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 90
    iget-boolean v1, p0, Lorg/brickred/socialauth/oauthstrategy/OAuth1;->providerState:Z

    if-nez v1, :cond_0

    .line 91
    new-instance v1, Lorg/brickred/socialauth/exception/ProviderStateException;

    invoke-direct {v1}, Lorg/brickred/socialauth/exception/ProviderStateException;-><init>()V

    throw v1

    .line 93
    :cond_0
    iget-object v1, p0, Lorg/brickred/socialauth/oauthstrategy/OAuth1;->requestToken:Lorg/brickred/socialauth/util/AccessGrant;

    if-nez v1, :cond_1

    .line 94
    new-instance v1, Lorg/brickred/socialauth/exception/SocialAuthException;

    const-string v2, "Request token is null"

    invoke-direct {v1, v2}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 96
    :cond_1
    const-string v1, "oauth_verifier"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 97
    .local v0, "verifier":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 98
    iget-object v1, p0, Lorg/brickred/socialauth/oauthstrategy/OAuth1;->requestToken:Lorg/brickred/socialauth/util/AccessGrant;

    const-string v2, "oauth_verifier"

    invoke-virtual {v1, v2, v0}, Lorg/brickred/socialauth/util/AccessGrant;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 100
    :cond_2
    iget-object v1, p0, Lorg/brickred/socialauth/oauthstrategy/OAuth1;->LOG:Lorg/apache/commons/logging/Log;

    const-string v2, "Call to fetch Access Token"

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 101
    iget-object v2, p0, Lorg/brickred/socialauth/oauthstrategy/OAuth1;->oauth:Lorg/brickred/socialauth/util/OAuthConsumer;

    .line 102
    iget-object v1, p0, Lorg/brickred/socialauth/oauthstrategy/OAuth1;->endpoints:Ljava/util/Map;

    const-string v3, "accessTokenURL"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v3, p0, Lorg/brickred/socialauth/oauthstrategy/OAuth1;->requestToken:Lorg/brickred/socialauth/util/AccessGrant;

    .line 101
    invoke-virtual {v2, v1, v3}, Lorg/brickred/socialauth/util/OAuthConsumer;->getAccessToken(Ljava/lang/String;Lorg/brickred/socialauth/util/AccessGrant;)Lorg/brickred/socialauth/util/AccessGrant;

    move-result-object v1

    iput-object v1, p0, Lorg/brickred/socialauth/oauthstrategy/OAuth1;->accessToken:Lorg/brickred/socialauth/util/AccessGrant;

    .line 103
    iget-object v1, p0, Lorg/brickred/socialauth/oauthstrategy/OAuth1;->accessToken:Lorg/brickred/socialauth/util/AccessGrant;

    iget-object v2, p0, Lorg/brickred/socialauth/oauthstrategy/OAuth1;->permission:Lorg/brickred/socialauth/Permission;

    invoke-virtual {v1, v2}, Lorg/brickred/socialauth/util/AccessGrant;->setPermission(Lorg/brickred/socialauth/Permission;)V

    .line 104
    iget-object v1, p0, Lorg/brickred/socialauth/oauthstrategy/OAuth1;->accessToken:Lorg/brickred/socialauth/util/AccessGrant;

    iget-object v2, p0, Lorg/brickred/socialauth/oauthstrategy/OAuth1;->providerId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/brickred/socialauth/util/AccessGrant;->setProviderId(Ljava/lang/String;)V

    .line 105
    iget-object v1, p0, Lorg/brickred/socialauth/oauthstrategy/OAuth1;->accessToken:Lorg/brickred/socialauth/util/AccessGrant;

    return-object v1
.end method
