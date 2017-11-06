.class public Lorg/brickred/socialauth/oauthstrategy/Hybrid;
.super Ljava/lang/Object;
.source "Hybrid.java"

# interfaces
.implements Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;


# static fields
.field private static final serialVersionUID:J = -0x1278d447a658ddf8L


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
    .line 62
    .local p2, "endpoints":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const-class v0, Lorg/brickred/socialauth/oauthstrategy/Hybrid;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/brickred/socialauth/oauthstrategy/Hybrid;->LOG:Lorg/apache/commons/logging/Log;

    .line 63
    new-instance v0, Lorg/brickred/socialauth/util/OAuthConsumer;

    invoke-direct {v0, p1}, Lorg/brickred/socialauth/util/OAuthConsumer;-><init>(Lorg/brickred/socialauth/util/OAuthConfig;)V

    iput-object v0, p0, Lorg/brickred/socialauth/oauthstrategy/Hybrid;->oauth:Lorg/brickred/socialauth/util/OAuthConsumer;

    .line 64
    iput-object p2, p0, Lorg/brickred/socialauth/oauthstrategy/Hybrid;->endpoints:Ljava/util/Map;

    .line 65
    sget-object v0, Lorg/brickred/socialauth/Permission;->DEFAULT:Lorg/brickred/socialauth/Permission;

    iput-object v0, p0, Lorg/brickred/socialauth/oauthstrategy/Hybrid;->permission:Lorg/brickred/socialauth/Permission;

    .line 66
    invoke-virtual {p1}, Lorg/brickred/socialauth/util/OAuthConfig;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/brickred/socialauth/oauthstrategy/Hybrid;->providerId:Ljava/lang/String;

    .line 67
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
    .line 167
    iget-object v0, p0, Lorg/brickred/socialauth/oauthstrategy/Hybrid;->accessToken:Lorg/brickred/socialauth/util/AccessGrant;

    if-nez v0, :cond_0

    .line 168
    new-instance v0, Lorg/brickred/socialauth/exception/SocialAuthException;

    .line 169
    const-string v1, "Please call verifyResponse function first to get Access Token"

    .line 168
    invoke-direct {v0, v1}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_0
    iget-object v0, p0, Lorg/brickred/socialauth/oauthstrategy/Hybrid;->oauth:Lorg/brickred/socialauth/util/OAuthConsumer;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/brickred/socialauth/oauthstrategy/Hybrid;->accessToken:Lorg/brickred/socialauth/util/AccessGrant;

    invoke-virtual {v0, p1, v1, v2}, Lorg/brickred/socialauth/util/OAuthConsumer;->httpGet(Ljava/lang/String;Ljava/util/Map;Lorg/brickred/socialauth/util/AccessGrant;)Lorg/brickred/socialauth/util/Response;

    move-result-object v0

    return-object v0
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
    .line 179
    .local p3, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, "headerParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v8, 0x0

    .line 180
    .local v8, "response":Lorg/brickred/socialauth/util/Response;
    iget-object v0, p0, Lorg/brickred/socialauth/oauthstrategy/Hybrid;->accessToken:Lorg/brickred/socialauth/util/AccessGrant;

    if-nez v0, :cond_0

    .line 181
    new-instance v0, Lorg/brickred/socialauth/exception/SocialAuthException;

    .line 182
    const-string v1, "Please call verifyResponse function first to get Access Token"

    .line 181
    invoke-direct {v0, v1}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 184
    :cond_0
    sget-object v0, Lorg/brickred/socialauth/util/MethodType;->GET:Lorg/brickred/socialauth/util/MethodType;

    invoke-virtual {v0}, Lorg/brickred/socialauth/util/MethodType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 186
    :try_start_0
    iget-object v0, p0, Lorg/brickred/socialauth/oauthstrategy/Hybrid;->oauth:Lorg/brickred/socialauth/util/OAuthConsumer;

    iget-object v1, p0, Lorg/brickred/socialauth/oauthstrategy/Hybrid;->accessToken:Lorg/brickred/socialauth/util/AccessGrant;

    invoke-virtual {v0, p1, p4, v1}, Lorg/brickred/socialauth/util/OAuthConsumer;->httpGet(Ljava/lang/String;Ljava/util/Map;Lorg/brickred/socialauth/util/AccessGrant;)Lorg/brickred/socialauth/util/Response;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 200
    :cond_1
    :goto_0
    return-object v8

    .line 187
    :catch_0
    move-exception v7

    .line 188
    .local v7, "ie":Ljava/lang/Exception;
    new-instance v0, Lorg/brickred/socialauth/exception/SocialAuthException;

    .line 189
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error while making request to URL : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 188
    invoke-direct {v0, v1, v7}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 191
    .end local v7    # "ie":Ljava/lang/Exception;
    :cond_2
    sget-object v0, Lorg/brickred/socialauth/util/MethodType;->PUT:Lorg/brickred/socialauth/util/MethodType;

    invoke-virtual {v0}, Lorg/brickred/socialauth/util/MethodType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 193
    :try_start_1
    iget-object v0, p0, Lorg/brickred/socialauth/oauthstrategy/Hybrid;->oauth:Lorg/brickred/socialauth/util/OAuthConsumer;

    .line 194
    iget-object v5, p0, Lorg/brickred/socialauth/oauthstrategy/Hybrid;->accessToken:Lorg/brickred/socialauth/util/AccessGrant;

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    .line 193
    invoke-virtual/range {v0 .. v5}, Lorg/brickred/socialauth/util/OAuthConsumer;->httpPut(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Lorg/brickred/socialauth/util/AccessGrant;)Lorg/brickred/socialauth/util/Response;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v8

    goto :goto_0

    .line 195
    :catch_1
    move-exception v6

    .line 196
    .local v6, "e":Ljava/lang/Exception;
    new-instance v0, Lorg/brickred/socialauth/exception/SocialAuthException;

    .line 197
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error while making request to URL : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 196
    invoke-direct {v0, v1, v6}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getAccessGrant()Lorg/brickred/socialauth/util/AccessGrant;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lorg/brickred/socialauth/oauthstrategy/Hybrid;->accessToken:Lorg/brickred/socialauth/util/AccessGrant;

    return-object v0
.end method

.method public getLoginRedirectURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p1, "successUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lorg/brickred/socialauth/oauthstrategy/Hybrid;->endpoints:Ljava/util/Map;

    .line 72
    const-string/jumbo v1, "reqTokenURL"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 71
    invoke-static {v0}, Lorg/brickred/socialauth/util/OpenIdConsumer;->getAssociationURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 74
    .local v6, "associationURL":Ljava/lang/String;
    sget-object v0, Lorg/brickred/socialauth/util/MethodType;->GET:Lorg/brickred/socialauth/util/MethodType;

    invoke-virtual {v0}, Lorg/brickred/socialauth/util/MethodType;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 73
    invoke-static {v6, v0, v1, v5}, Lorg/brickred/socialauth/util/HttpUtil;->doHttpRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lorg/brickred/socialauth/util/Response;

    move-result-object v9

    .line 75
    .local v9, "r":Lorg/brickred/socialauth/util/Response;
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    .line 76
    .local v11, "sb":Ljava/lang/StringBuffer;
    const-string v3, ""

    .line 78
    .local v3, "assocHandle":Ljava/lang/String;
    :try_start_0
    new-instance v10, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    .line 79
    invoke-virtual {v9}, Lorg/brickred/socialauth/util/Response;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    const-string v5, "UTF-8"

    invoke-direct {v0, v1, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 78
    invoke-direct {v10, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 80
    .local v10, "reader":Ljava/io/BufferedReader;
    const/4 v8, 0x0

    .line 81
    .local v8, "line":Ljava/lang/String;
    :cond_0
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_1

    .line 88
    :goto_0
    iget-object v0, p0, Lorg/brickred/socialauth/oauthstrategy/Hybrid;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "ASSOCCIATION : "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    const-string v0, "/"

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_2

    .line 95
    const/4 v0, 0x0

    const-string v1, "/"

    const/16 v5, 0x9

    invoke-virtual {p1, v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 100
    .local v2, "realm":Ljava/lang/String;
    :goto_1
    const-string v0, "http://"

    const-string v1, ""

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 101
    .local v4, "consumerURL":Ljava/lang/String;
    const-string v0, "https://"

    const-string v1, ""

    invoke-virtual {v4, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 102
    const-string v0, ":{1}\\d*"

    const-string v1, ""

    invoke-virtual {v4, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/brickred/socialauth/oauthstrategy/Hybrid;->providerState:Z

    .line 106
    iget-object v0, p0, Lorg/brickred/socialauth/oauthstrategy/Hybrid;->endpoints:Ljava/util/Map;

    const-string/jumbo v1, "reqTokenURL"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 107
    iget-object v5, p0, Lorg/brickred/socialauth/oauthstrategy/Hybrid;->scope:Ljava/lang/String;

    move-object v1, p1

    .line 105
    invoke-static/range {v0 .. v5}, Lorg/brickred/socialauth/util/OpenIdConsumer;->getRequestTokenURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 108
    .local v12, "url":Ljava/lang/String;
    iget-object v0, p0, Lorg/brickred/socialauth/oauthstrategy/Hybrid;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "Redirection to following URL should happen : "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 109
    return-object v12

    .line 82
    .end local v2    # "realm":Ljava/lang/String;
    .end local v4    # "consumerURL":Ljava/lang/String;
    .end local v12    # "url":Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-virtual {v11, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 83
    const-string v0, "assoc_handle:"

    const/4 v1, 0x0

    const/16 v5, 0xd

    invoke-virtual {v8, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    const/16 v0, 0xd

    invoke-virtual {v8, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    .line 85
    goto/16 :goto_0

    .line 89
    .end local v8    # "line":Ljava/lang/String;
    .end local v10    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v7

    .line 90
    .local v7, "exc":Ljava/lang/Exception;
    new-instance v0, Lorg/brickred/socialauth/exception/SocialAuthException;

    const-string v1, "Failed to read response from  "

    invoke-direct {v0, v1}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    .end local v7    # "exc":Ljava/lang/Exception;
    .restart local v8    # "line":Ljava/lang/String;
    .restart local v10    # "reader":Ljava/io/BufferedReader;
    :cond_2
    move-object v2, p1

    .restart local v2    # "realm":Ljava/lang/String;
    goto :goto_1
.end method

.method public logout()V
    .locals 1

    .prologue
    .line 229
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/brickred/socialauth/oauthstrategy/Hybrid;->accessToken:Lorg/brickred/socialauth/util/AccessGrant;

    .line 230
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/brickred/socialauth/oauthstrategy/Hybrid;->providerState:Z

    .line 231
    return-void
.end method

.method public setAccessGrant(Lorg/brickred/socialauth/util/AccessGrant;)V
    .locals 0
    .param p1, "accessGrant"    # Lorg/brickred/socialauth/util/AccessGrant;

    .prologue
    .line 217
    iput-object p1, p0, Lorg/brickred/socialauth/oauthstrategy/Hybrid;->accessToken:Lorg/brickred/socialauth/util/AccessGrant;

    .line 218
    return-void
.end method

.method public setAccessTokenParameterName(Ljava/lang/String;)V
    .locals 2
    .param p1, "accessTokenParameterName"    # Ljava/lang/String;

    .prologue
    .line 223
    iget-object v0, p0, Lorg/brickred/socialauth/oauthstrategy/Hybrid;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "It is not implemented for Hybrid"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 225
    return-void
.end method

.method public setPermission(Lorg/brickred/socialauth/Permission;)V
    .locals 0
    .param p1, "permission"    # Lorg/brickred/socialauth/Permission;

    .prologue
    .line 205
    iput-object p1, p0, Lorg/brickred/socialauth/oauthstrategy/Hybrid;->permission:Lorg/brickred/socialauth/Permission;

    .line 207
    return-void
.end method

.method public setScope(Ljava/lang/String;)V
    .locals 0
    .param p1, "scope"    # Ljava/lang/String;

    .prologue
    .line 211
    iput-object p1, p0, Lorg/brickred/socialauth/oauthstrategy/Hybrid;->scope:Ljava/lang/String;

    .line 213
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
    .line 239
    .local p3, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, "headerParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/brickred/socialauth/oauthstrategy/Hybrid;->oauth:Lorg/brickred/socialauth/util/OAuthConsumer;

    .line 240
    iget-object v8, p0, Lorg/brickred/socialauth/oauthstrategy/Hybrid;->accessToken:Lorg/brickred/socialauth/util/AccessGrant;

    const/4 v9, 0x1

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object v6, p5

    move-object v7, p2

    .line 239
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
    .line 115
    .local p1, "requestParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Lorg/brickred/socialauth/util/MethodType;->GET:Lorg/brickred/socialauth/util/MethodType;

    invoke-virtual {v0}, Lorg/brickred/socialauth/util/MethodType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/brickred/socialauth/oauthstrategy/Hybrid;->verifyResponse(Ljava/util/Map;Ljava/lang/String;)Lorg/brickred/socialauth/util/AccessGrant;

    move-result-object v0

    return-object v0
.end method

.method public verifyResponse(Ljava/util/Map;Ljava/lang/String;)Lorg/brickred/socialauth/util/AccessGrant;
    .locals 7
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
    .line 121
    .local p1, "requestParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-boolean v4, p0, Lorg/brickred/socialauth/oauthstrategy/Hybrid;->providerState:Z

    if-nez v4, :cond_0

    .line 122
    new-instance v4, Lorg/brickred/socialauth/exception/ProviderStateException;

    invoke-direct {v4}, Lorg/brickred/socialauth/exception/ProviderStateException;-><init>()V

    throw v4

    .line 125
    :cond_0
    iget-object v4, p0, Lorg/brickred/socialauth/oauthstrategy/Hybrid;->LOG:Lorg/apache/commons/logging/Log;

    const-string v5, "Running OpenID discovery"

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 126
    const-string v2, ""

    .line 127
    .local v2, "reqTokenStr":Ljava/lang/String;
    iget-object v4, p0, Lorg/brickred/socialauth/oauthstrategy/Hybrid;->scope:Ljava/lang/String;

    if-eqz v4, :cond_6

    .line 128
    sget-object v4, Lorg/brickred/socialauth/Permission;->AUTHENTICATE_ONLY:Lorg/brickred/socialauth/Permission;

    iget-object v5, p0, Lorg/brickred/socialauth/oauthstrategy/Hybrid;->permission:Lorg/brickred/socialauth/Permission;

    invoke-virtual {v4, v5}, Lorg/brickred/socialauth/Permission;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 129
    new-instance v4, Lorg/brickred/socialauth/util/AccessGrant;

    invoke-direct {v4}, Lorg/brickred/socialauth/util/AccessGrant;-><init>()V

    iput-object v4, p0, Lorg/brickred/socialauth/oauthstrategy/Hybrid;->accessToken:Lorg/brickred/socialauth/util/AccessGrant;

    .line 147
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_4

    .line 152
    iget-object v4, p0, Lorg/brickred/socialauth/oauthstrategy/Hybrid;->permission:Lorg/brickred/socialauth/Permission;

    if-eqz v4, :cond_5

    .line 153
    iget-object v4, p0, Lorg/brickred/socialauth/oauthstrategy/Hybrid;->accessToken:Lorg/brickred/socialauth/util/AccessGrant;

    iget-object v5, p0, Lorg/brickred/socialauth/oauthstrategy/Hybrid;->permission:Lorg/brickred/socialauth/Permission;

    invoke-virtual {v4, v5}, Lorg/brickred/socialauth/util/AccessGrant;->setPermission(Lorg/brickred/socialauth/Permission;)V

    .line 157
    :goto_1
    iget-object v4, p0, Lorg/brickred/socialauth/oauthstrategy/Hybrid;->accessToken:Lorg/brickred/socialauth/util/AccessGrant;

    iget-object v5, p0, Lorg/brickred/socialauth/oauthstrategy/Hybrid;->providerId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lorg/brickred/socialauth/util/AccessGrant;->setProviderId(Ljava/lang/String;)V

    .line 161
    :goto_2
    iget-object v4, p0, Lorg/brickred/socialauth/oauthstrategy/Hybrid;->accessToken:Lorg/brickred/socialauth/util/AccessGrant;

    return-object v4

    .line 131
    :cond_2
    const-string v4, "openid.ext2.request_token"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 133
    const-string v4, "openid.ext2.request_token"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 132
    invoke-static {v4}, Lorg/brickred/socialauth/util/HttpUtil;->decodeURIComponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 135
    :cond_3
    new-instance v4, Lorg/brickred/socialauth/util/AccessGrant;

    invoke-direct {v4}, Lorg/brickred/socialauth/util/AccessGrant;-><init>()V

    iput-object v4, p0, Lorg/brickred/socialauth/oauthstrategy/Hybrid;->requestToken:Lorg/brickred/socialauth/util/AccessGrant;

    .line 136
    iget-object v4, p0, Lorg/brickred/socialauth/oauthstrategy/Hybrid;->requestToken:Lorg/brickred/socialauth/util/AccessGrant;

    invoke-virtual {v4, v2}, Lorg/brickred/socialauth/util/AccessGrant;->setKey(Ljava/lang/String;)V

    .line 137
    iget-object v4, p0, Lorg/brickred/socialauth/oauthstrategy/Hybrid;->LOG:Lorg/apache/commons/logging/Log;

    const-string v5, "Call to fetch Access Token"

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 138
    iget-object v5, p0, Lorg/brickred/socialauth/oauthstrategy/Hybrid;->oauth:Lorg/brickred/socialauth/util/OAuthConsumer;

    .line 139
    iget-object v4, p0, Lorg/brickred/socialauth/oauthstrategy/Hybrid;->endpoints:Ljava/util/Map;

    const-string v6, "accessTokenURL"

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 140
    iget-object v6, p0, Lorg/brickred/socialauth/oauthstrategy/Hybrid;->requestToken:Lorg/brickred/socialauth/util/AccessGrant;

    .line 138
    invoke-virtual {v5, v4, v6}, Lorg/brickred/socialauth/util/OAuthConsumer;->getAccessToken(Ljava/lang/String;Lorg/brickred/socialauth/util/AccessGrant;)Lorg/brickred/socialauth/util/AccessGrant;

    move-result-object v4

    iput-object v4, p0, Lorg/brickred/socialauth/oauthstrategy/Hybrid;->accessToken:Lorg/brickred/socialauth/util/AccessGrant;

    .line 141
    iget-object v4, p0, Lorg/brickred/socialauth/oauthstrategy/Hybrid;->accessToken:Lorg/brickred/socialauth/util/AccessGrant;

    if-nez v4, :cond_1

    .line 142
    new-instance v4, Lorg/brickred/socialauth/exception/SocialAuthConfigurationException;

    .line 143
    const-string v5, "Application keys may not be correct. The server running the application should be same that was registered to get the keys."

    .line 142
    invoke-direct {v4, v5}, Lorg/brickred/socialauth/exception/SocialAuthConfigurationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 147
    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 148
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 149
    .local v1, "key":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 150
    .local v3, "value":Ljava/lang/String;
    iget-object v5, p0, Lorg/brickred/socialauth/oauthstrategy/Hybrid;->accessToken:Lorg/brickred/socialauth/util/AccessGrant;

    invoke-virtual {v5, v1, v3}, Lorg/brickred/socialauth/util/AccessGrant;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 155
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :cond_5
    iget-object v4, p0, Lorg/brickred/socialauth/oauthstrategy/Hybrid;->accessToken:Lorg/brickred/socialauth/util/AccessGrant;

    sget-object v5, Lorg/brickred/socialauth/Permission;->DEFAULT:Lorg/brickred/socialauth/Permission;

    invoke-virtual {v4, v5}, Lorg/brickred/socialauth/util/AccessGrant;->setPermission(Lorg/brickred/socialauth/Permission;)V

    goto :goto_1

    .line 159
    :cond_6
    iget-object v4, p0, Lorg/brickred/socialauth/oauthstrategy/Hybrid;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "No Scope is given for the  Provider : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lorg/brickred/socialauth/oauthstrategy/Hybrid;->providerId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    goto :goto_2
.end method
