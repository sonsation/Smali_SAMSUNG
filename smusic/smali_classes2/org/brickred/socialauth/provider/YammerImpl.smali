.class public Lorg/brickred/socialauth/provider/YammerImpl;
.super Lorg/brickred/socialauth/AbstractProvider;
.source "YammerImpl.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/brickred/socialauth/AuthProvider;


# static fields
.field private static final ACCESS_TOKEN_URL:Ljava/lang/String; = "https://www.yammer.com/oauth2/access_token.json?client_id=%1$s&client_secret=%2$s&code=%3$s"

.field private static final AUTHORIZATION_URL:Ljava/lang/String; = "https://www.yammer.com/dialog/oauth?client_id=%1$s&redirect_uri=%2$s"

.field private static final CONTACTS_URL:Ljava/lang/String; = "https://www.yammer.com/api/v1/users.json?sort_by=followers&access_token=%1$s"

.field private static final PROFILE_URL:Ljava/lang/String; = "https://www.yammer.com/api/v1/users/%1$s.json?access_token=%2$s"

.field private static final UPDATE_STATUS_URL:Ljava/lang/String; = "https://www.yammer.com/api/v1/messages.json"

.field private static final serialVersionUID:J = 0x7858a5ebe9d97d68L


# instance fields
.field private final LOG:Lorg/apache/commons/logging/Log;

.field private accessGrant:Lorg/brickred/socialauth/util/AccessGrant;

.field private accessToken:Ljava/lang/String;

.field private config:Lorg/brickred/socialauth/util/OAuthConfig;

.field private isVerify:Z

.field private profileId:Ljava/lang/String;

.field private providerState:Z

.field private scope:Lorg/brickred/socialauth/Permission;

.field private successUrl:Ljava/lang/String;

.field private userProfile:Lorg/brickred/socialauth/Profile;


# direct methods
.method public constructor <init>(Lorg/brickred/socialauth/util/OAuthConfig;)V
    .locals 1
    .param p1, "providerConfig"    # Lorg/brickred/socialauth/util/OAuthConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 93
    invoke-direct {p0}, Lorg/brickred/socialauth/AbstractProvider;-><init>()V

    .line 73
    const-class v0, Lorg/brickred/socialauth/provider/YammerImpl;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/brickred/socialauth/provider/YammerImpl;->LOG:Lorg/apache/commons/logging/Log;

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/brickred/socialauth/provider/YammerImpl;->providerState:Z

    .line 94
    iput-object p1, p0, Lorg/brickred/socialauth/provider/YammerImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    .line 95
    iget-object v0, p0, Lorg/brickred/socialauth/provider/YammerImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v0}, Lorg/brickred/socialauth/util/OAuthConfig;->getCustomPermissions()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 96
    sget-object v0, Lorg/brickred/socialauth/Permission;->CUSTOM:Lorg/brickred/socialauth/Permission;

    iput-object v0, p0, Lorg/brickred/socialauth/provider/YammerImpl;->scope:Lorg/brickred/socialauth/Permission;

    .line 98
    :cond_0
    return-void
.end method

.method private doVerifyResponse(Ljava/util/Map;)Lorg/brickred/socialauth/Profile;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/brickred/socialauth/Profile;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p1, "requestParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v13, 0x1

    .line 166
    iget-object v9, p0, Lorg/brickred/socialauth/provider/YammerImpl;->LOG:Lorg/apache/commons/logging/Log;

    const-string v10, "Retrieving Access Token in verify response function"

    invoke-interface {v9, v10}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 167
    const-string v9, "error"

    invoke-interface {p1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 168
    const-string v9, "access_denied"

    const-string v10, "error"

    invoke-interface {p1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 169
    new-instance v9, Lorg/brickred/socialauth/exception/UserDeniedPermissionException;

    invoke-direct {v9}, Lorg/brickred/socialauth/exception/UserDeniedPermissionException;-><init>()V

    throw v9

    .line 171
    :cond_0
    iget-boolean v9, p0, Lorg/brickred/socialauth/provider/YammerImpl;->providerState:Z

    if-nez v9, :cond_1

    .line 172
    new-instance v9, Lorg/brickred/socialauth/exception/ProviderStateException;

    invoke-direct {v9}, Lorg/brickred/socialauth/exception/ProviderStateException;-><init>()V

    throw v9

    .line 174
    :cond_1
    const-string v9, "code"

    invoke-interface {p1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 175
    .local v1, "code":Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_3

    .line 176
    :cond_2
    new-instance v9, Lorg/brickred/socialauth/exception/SocialAuthException;

    const-string v10, "Verification code is null"

    invoke-direct {v9, v10}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 178
    :cond_3
    const-string v9, "https://www.yammer.com/oauth2/access_token.json?client_id=%1$s&client_secret=%2$s&code=%3$s"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lorg/brickred/socialauth/provider/YammerImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v12}, Lorg/brickred/socialauth/util/OAuthConfig;->get_consumerKey()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    .line 179
    iget-object v11, p0, Lorg/brickred/socialauth/provider/YammerImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v11}, Lorg/brickred/socialauth/util/OAuthConfig;->get_consumerSecret()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v13

    const/4 v11, 0x2

    aput-object v1, v10, v11

    .line 178
    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 180
    .local v8, "url":Ljava/lang/String;
    iget-object v9, p0, Lorg/brickred/socialauth/provider/YammerImpl;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Verification Code : "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 181
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 182
    .local v7, "strb":Ljava/lang/StringBuilder;
    const-string v9, "code="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    const-string v9, "&client_secret="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lorg/brickred/socialauth/provider/YammerImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v10}, Lorg/brickred/socialauth/util/OAuthConfig;->get_consumerSecret()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    iget-object v9, p0, Lorg/brickred/socialauth/provider/YammerImpl;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Parameters for access token : "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 188
    :try_start_0
    sget-object v9, Lorg/brickred/socialauth/util/MethodType;->GET:Lorg/brickred/socialauth/util/MethodType;

    invoke-virtual {v9}, Lorg/brickred/socialauth/util/MethodType;->toString()Ljava/lang/String;

    move-result-object v9

    .line 189
    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 188
    invoke-static {v8, v9, v10, v11}, Lorg/brickred/socialauth/util/HttpUtil;->doHttpRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lorg/brickred/socialauth/util/Response;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 193
    .local v5, "response":Lorg/brickred/socialauth/util/Response;
    const/4 v6, 0x0

    .line 194
    .local v6, "result":Ljava/lang/String;
    invoke-virtual {v5}, Lorg/brickred/socialauth/util/Response;->getStatus()I

    move-result v9

    const/16 v10, 0xc8

    if-ne v9, v10, :cond_4

    .line 196
    :try_start_1
    const-string v9, "UTF-8"

    invoke-virtual {v5, v9}, Lorg/brickred/socialauth/util/Response;->getResponseBodyAsString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    .line 201
    :cond_4
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_6

    .line 202
    :cond_5
    new-instance v9, Lorg/brickred/socialauth/exception/SocialAuthConfigurationException;

    .line 203
    const-string v10, "Problem in getting Access Token. Application key or Secret key may be wrong.The server running the application should be same that was registered to get the keys."

    .line 202
    invoke-direct {v9, v10}, Lorg/brickred/socialauth/exception/SocialAuthConfigurationException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 190
    .end local v5    # "response":Lorg/brickred/socialauth/util/Response;
    .end local v6    # "result":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 191
    .local v2, "e":Ljava/lang/Exception;
    new-instance v9, Lorg/brickred/socialauth/exception/SocialAuthException;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Error in url : "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 197
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v5    # "response":Lorg/brickred/socialauth/util/Response;
    .restart local v6    # "result":Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 198
    .local v3, "exc":Ljava/lang/Exception;
    new-instance v9, Lorg/brickred/socialauth/exception/SocialAuthException;

    const-string v10, "Failed to parse response"

    invoke-direct {v9, v10, v3}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .line 207
    .end local v3    # "exc":Ljava/lang/Exception;
    :cond_6
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 208
    .local v4, "resp":Lorg/json/JSONObject;
    const-string v9, "access_token"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 209
    .local v0, "accessTokenObject":Lorg/json/JSONObject;
    const-string/jumbo v9, "token"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lorg/brickred/socialauth/provider/YammerImpl;->accessToken:Ljava/lang/String;

    .line 210
    iget-object v9, p0, Lorg/brickred/socialauth/provider/YammerImpl;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Access Token : "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lorg/brickred/socialauth/provider/YammerImpl;->accessToken:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 212
    iget-object v9, p0, Lorg/brickred/socialauth/provider/YammerImpl;->accessToken:Ljava/lang/String;

    if-eqz v9, :cond_9

    .line 213
    iput-boolean v13, p0, Lorg/brickred/socialauth/provider/YammerImpl;->isVerify:Z

    .line 214
    new-instance v9, Lorg/brickred/socialauth/util/AccessGrant;

    invoke-direct {v9}, Lorg/brickred/socialauth/util/AccessGrant;-><init>()V

    iput-object v9, p0, Lorg/brickred/socialauth/provider/YammerImpl;->accessGrant:Lorg/brickred/socialauth/util/AccessGrant;

    .line 215
    iget-object v9, p0, Lorg/brickred/socialauth/provider/YammerImpl;->accessGrant:Lorg/brickred/socialauth/util/AccessGrant;

    iget-object v10, p0, Lorg/brickred/socialauth/provider/YammerImpl;->accessToken:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lorg/brickred/socialauth/util/AccessGrant;->setKey(Ljava/lang/String;)V

    .line 216
    iget-object v9, p0, Lorg/brickred/socialauth/provider/YammerImpl;->scope:Lorg/brickred/socialauth/Permission;

    if-eqz v9, :cond_8

    .line 217
    iget-object v9, p0, Lorg/brickred/socialauth/provider/YammerImpl;->accessGrant:Lorg/brickred/socialauth/util/AccessGrant;

    iget-object v10, p0, Lorg/brickred/socialauth/provider/YammerImpl;->scope:Lorg/brickred/socialauth/Permission;

    invoke-virtual {v9, v10}, Lorg/brickred/socialauth/util/AccessGrant;->setPermission(Lorg/brickred/socialauth/Permission;)V

    .line 222
    :goto_0
    const-string/jumbo v9, "user_id"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 223
    const-string/jumbo v9, "user_id"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lorg/brickred/socialauth/provider/YammerImpl;->profileId:Ljava/lang/String;

    .line 225
    :cond_7
    iget-object v9, p0, Lorg/brickred/socialauth/provider/YammerImpl;->accessGrant:Lorg/brickred/socialauth/util/AccessGrant;

    const-string v10, "profileId"

    iget-object v11, p0, Lorg/brickred/socialauth/provider/YammerImpl;->profileId:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Lorg/brickred/socialauth/util/AccessGrant;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 226
    iget-object v9, p0, Lorg/brickred/socialauth/provider/YammerImpl;->accessGrant:Lorg/brickred/socialauth/util/AccessGrant;

    invoke-virtual {p0}, Lorg/brickred/socialauth/provider/YammerImpl;->getProviderId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/brickred/socialauth/util/AccessGrant;->setProviderId(Ljava/lang/String;)V

    .line 228
    invoke-direct {p0}, Lorg/brickred/socialauth/provider/YammerImpl;->getProfile()Lorg/brickred/socialauth/Profile;

    move-result-object v9

    return-object v9

    .line 219
    :cond_8
    iget-object v9, p0, Lorg/brickred/socialauth/provider/YammerImpl;->accessGrant:Lorg/brickred/socialauth/util/AccessGrant;

    sget-object v10, Lorg/brickred/socialauth/Permission;->ALL:Lorg/brickred/socialauth/Permission;

    invoke-virtual {v9, v10}, Lorg/brickred/socialauth/util/AccessGrant;->setPermission(Lorg/brickred/socialauth/Permission;)V

    goto :goto_0

    .line 230
    :cond_9
    new-instance v9, Lorg/brickred/socialauth/exception/SocialAuthException;

    .line 231
    const-string v10, "Access token and expires not found from https://www.yammer.com/oauth2/access_token.json?client_id=%1$s&client_secret=%2$s&code=%3$s"

    .line 230
    invoke-direct {v9, v10}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;)V

    throw v9
.end method

.method private getProfile()Lorg/brickred/socialauth/Profile;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 343
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lorg/brickred/socialauth/provider/YammerImpl;->isVerify:Z

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/brickred/socialauth/provider/YammerImpl;->accessToken:Ljava/lang/String;

    if-nez v14, :cond_1

    .line 344
    :cond_0
    new-instance v14, Lorg/brickred/socialauth/exception/SocialAuthException;

    .line 345
    const-string v15, "Please call verifyResponse function first to get Access Token and then update status"

    .line 344
    invoke-direct {v14, v15}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 347
    :cond_1
    new-instance v8, Lorg/brickred/socialauth/Profile;

    invoke-direct {v8}, Lorg/brickred/socialauth/Profile;-><init>()V

    .line 349
    .local v8, "p":Lorg/brickred/socialauth/Profile;
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/brickred/socialauth/provider/YammerImpl;->profileId:Ljava/lang/String;

    if-nez v14, :cond_2

    .line 350
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/brickred/socialauth/provider/YammerImpl;->accessGrant:Lorg/brickred/socialauth/util/AccessGrant;

    const-string v15, "profileId"

    invoke-virtual {v14, v15}, Lorg/brickred/socialauth/util/AccessGrant;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v14, v0, Lorg/brickred/socialauth/provider/YammerImpl;->profileId:Ljava/lang/String;

    .line 352
    :cond_2
    const-string v14, "https://www.yammer.com/api/v1/users/%1$s.json?access_token=%2$s"

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/brickred/socialauth/provider/YammerImpl;->profileId:Ljava/lang/String;

    move-object/from16 v17, v0

    aput-object v17, v15, v16

    const/16 v16, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/brickred/socialauth/provider/YammerImpl;->accessToken:Ljava/lang/String;

    move-object/from16 v17, v0

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 355
    .local v9, "profileURL":Ljava/lang/String;
    :try_start_0
    const-string v14, "GET"

    const/4 v15, 0x0

    .line 356
    const/16 v16, 0x0

    .line 355
    move-object/from16 v0, v16

    invoke-static {v9, v14, v15, v0}, Lorg/brickred/socialauth/util/HttpUtil;->doHttpRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lorg/brickred/socialauth/util/Response;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 366
    .local v12, "serviceResponse":Lorg/brickred/socialauth/util/Response;
    :try_start_1
    const-string v14, "UTF-8"

    invoke-virtual {v12, v14}, Lorg/brickred/socialauth/util/Response;->getResponseBodyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 367
    .local v11, "result":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/brickred/socialauth/provider/YammerImpl;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "User Profile :"

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 373
    :try_start_2
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 374
    .local v10, "resp":Lorg/json/JSONObject;
    const-string v14, "full_name"

    invoke-virtual {v10, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 375
    const-string v14, "full_name"

    invoke-virtual {v10, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Lorg/brickred/socialauth/Profile;->setFullName(Ljava/lang/String;)V

    .line 377
    :cond_3
    const-string v14, "location"

    invoke-virtual {v10, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 378
    const-string v14, "location"

    invoke-virtual {v10, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Lorg/brickred/socialauth/Profile;->setLocation(Ljava/lang/String;)V

    .line 380
    :cond_4
    const-string v14, "mugshot_url"

    invoke-virtual {v10, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 381
    const-string v14, "mugshot_url"

    invoke-virtual {v10, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Lorg/brickred/socialauth/Profile;->setProfileImageURL(Ljava/lang/String;)V

    .line 383
    :cond_5
    const-string v14, "birth_date"

    invoke-virtual {v10, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 384
    const-string v14, "birth_date"

    invoke-virtual {v10, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 385
    .local v4, "dstr":Ljava/lang/String;
    if-eqz v4, :cond_7

    .line 386
    const-string v14, "\\s+"

    invoke-virtual {v4, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 387
    .local v1, "arr":[Ljava/lang/String;
    new-instance v2, Lorg/brickred/socialauth/util/BirthDate;

    invoke-direct {v2}, Lorg/brickred/socialauth/util/BirthDate;-><init>()V

    .line 388
    .local v2, "bd":Lorg/brickred/socialauth/util/BirthDate;
    array-length v14, v1

    const/4 v15, 0x1

    if-ne v14, v15, :cond_9

    .line 389
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 390
    .local v3, "currentDate":Ljava/util/Calendar;
    const/4 v14, 0x2

    invoke-virtual {v3, v14}, Ljava/util/Calendar;->get(I)I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    invoke-virtual {v2, v14}, Lorg/brickred/socialauth/util/BirthDate;->setMonth(I)V

    .line 391
    const/4 v14, 0x5

    invoke-virtual {v3, v14}, Ljava/util/Calendar;->get(I)I

    move-result v14

    invoke-virtual {v2, v14}, Lorg/brickred/socialauth/util/BirthDate;->setDay(I)V

    .line 401
    .end local v3    # "currentDate":Ljava/util/Calendar;
    :cond_6
    :goto_0
    invoke-virtual {v8, v2}, Lorg/brickred/socialauth/Profile;->setDob(Lorg/brickred/socialauth/util/BirthDate;)V

    .line 404
    .end local v1    # "arr":[Ljava/lang/String;
    .end local v2    # "bd":Lorg/brickred/socialauth/util/BirthDate;
    .end local v4    # "dstr":Ljava/lang/String;
    :cond_7
    const-string v14, "contact"

    invoke-virtual {v10, v14}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    .line 406
    .local v13, "userContactDetails":Lorg/json/JSONObject;
    const-string v14, "email_addresses"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 408
    .local v6, "emailArr":Lorg/json/JSONArray;
    const/4 v14, 0x0

    invoke-virtual {v6, v14}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 409
    .local v7, "eobj":Lorg/json/JSONObject;
    const-string v14, "address"

    invoke-virtual {v7, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 410
    const-string v14, "address"

    invoke-virtual {v7, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Lorg/brickred/socialauth/Profile;->setEmail(Ljava/lang/String;)V

    .line 413
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lorg/brickred/socialauth/provider/YammerImpl;->getProviderId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Lorg/brickred/socialauth/Profile;->setProviderId(Ljava/lang/String;)V

    .line 414
    move-object/from16 v0, p0

    iput-object v8, v0, Lorg/brickred/socialauth/provider/YammerImpl;->userProfile:Lorg/brickred/socialauth/Profile;

    .line 415
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/brickred/socialauth/provider/YammerImpl;->userProfile:Lorg/brickred/socialauth/Profile;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    return-object v14

    .line 357
    .end local v6    # "emailArr":Lorg/json/JSONArray;
    .end local v7    # "eobj":Lorg/json/JSONObject;
    .end local v10    # "resp":Lorg/json/JSONObject;
    .end local v11    # "result":Ljava/lang/String;
    .end local v12    # "serviceResponse":Lorg/brickred/socialauth/util/Response;
    .end local v13    # "userContactDetails":Lorg/json/JSONObject;
    :catch_0
    move-exception v5

    .line 358
    .local v5, "e":Ljava/lang/Exception;
    new-instance v14, Lorg/brickred/socialauth/exception/SocialAuthException;

    .line 359
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "Failed to retrieve the user profile from  "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 358
    invoke-direct {v14, v15, v5}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v14

    .line 368
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v12    # "serviceResponse":Lorg/brickred/socialauth/util/Response;
    :catch_1
    move-exception v5

    .line 369
    .restart local v5    # "e":Ljava/lang/Exception;
    new-instance v14, Lorg/brickred/socialauth/exception/SocialAuthException;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "Failed to read response from  "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 370
    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 369
    invoke-direct {v14, v15, v5}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v14

    .line 393
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v1    # "arr":[Ljava/lang/String;
    .restart local v2    # "bd":Lorg/brickred/socialauth/util/BirthDate;
    .restart local v4    # "dstr":Ljava/lang/String;
    .restart local v10    # "resp":Lorg/json/JSONObject;
    .restart local v11    # "result":Ljava/lang/String;
    :cond_9
    :try_start_3
    array-length v14, v1

    if-lez v14, :cond_a

    .line 394
    const/4 v14, 0x1

    aget-object v14, v1, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v2, v14}, Lorg/brickred/socialauth/util/BirthDate;->setDay(I)V

    .line 396
    :cond_a
    array-length v14, v1

    const/4 v15, 0x1

    if-le v14, v15, :cond_6

    .line 397
    new-instance v14, Ljava/lang/Integer;

    .line 398
    const/4 v15, 0x0

    aget-object v15, v1, v15

    invoke-static {v15}, Lorg/brickred/socialauth/util/SocialAuthUtil;->getMonthInInt(Ljava/lang/String;)I

    move-result v15

    invoke-direct {v14, v15}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 397
    invoke-virtual {v2, v14}, Lorg/brickred/socialauth/util/BirthDate;->setMonth(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 416
    .end local v1    # "arr":[Ljava/lang/String;
    .end local v2    # "bd":Lorg/brickred/socialauth/util/BirthDate;
    .end local v4    # "dstr":Ljava/lang/String;
    .end local v10    # "resp":Lorg/json/JSONObject;
    :catch_2
    move-exception v5

    .line 417
    .restart local v5    # "e":Ljava/lang/Exception;
    new-instance v14, Lorg/brickred/socialauth/exception/SocialAuthException;

    .line 418
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "Failed to parse the user profile json : "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 417
    invoke-direct {v14, v15, v5}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v14
.end method

.method private getScope()Ljava/lang/String;
    .locals 3

    .prologue
    .line 519
    const/4 v0, 0x0

    .line 520
    .local v0, "scopeStr":Ljava/lang/String;
    sget-object v1, Lorg/brickred/socialauth/Permission;->CUSTOM:Lorg/brickred/socialauth/Permission;

    iget-object v2, p0, Lorg/brickred/socialauth/provider/YammerImpl;->scope:Lorg/brickred/socialauth/Permission;

    invoke-virtual {v1, v2}, Lorg/brickred/socialauth/Permission;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 521
    iget-object v1, p0, Lorg/brickred/socialauth/provider/YammerImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v1}, Lorg/brickred/socialauth/util/OAuthConfig;->getCustomPermissions()Ljava/lang/String;

    move-result-object v0

    .line 523
    :cond_0
    return-object v0
.end method


# virtual methods
.method public api(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)Lorg/brickred/socialauth/util/Response;
    .locals 6
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
    .line 455
    .local p3, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, "headerParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-boolean v3, p0, Lorg/brickred/socialauth/provider/YammerImpl;->isVerify:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/brickred/socialauth/provider/YammerImpl;->accessToken:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 456
    :cond_0
    new-instance v3, Lorg/brickred/socialauth/exception/SocialAuthException;

    .line 457
    const-string v4, "Please call verifyResponse function first to get Access Token"

    .line 456
    invoke-direct {v3, v4}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 459
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 460
    .local v1, "headerParam":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "Content-Type"

    const-string v4, "application/json"

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    const-string v3, "Accept"

    const-string v4, "application/json"

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    if-eqz p4, :cond_2

    .line 463
    invoke-interface {v1, p4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 465
    :cond_2
    const-string v3, "Authorization"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Bearer "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lorg/brickred/socialauth/provider/YammerImpl;->accessToken:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    iget-object v3, p0, Lorg/brickred/socialauth/provider/YammerImpl;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Calling URL : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 468
    iget-object v3, p0, Lorg/brickred/socialauth/provider/YammerImpl;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Header Params : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 470
    :try_start_0
    invoke-static {p1, p2, p5, v1}, Lorg/brickred/socialauth/util/HttpUtil;->doHttpRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lorg/brickred/socialauth/util/Response;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 476
    .local v2, "serviceResponse":Lorg/brickred/socialauth/util/Response;
    invoke-virtual {v2}, Lorg/brickred/socialauth/util/Response;->getStatus()I

    move-result v3

    const/16 v4, 0xc8

    if-eq v3, v4, :cond_3

    .line 477
    invoke-virtual {v2}, Lorg/brickred/socialauth/util/Response;->getStatus()I

    move-result v3

    const/16 v4, 0xc9

    if-eq v3, v4, :cond_3

    .line 478
    iget-object v3, p0, Lorg/brickred/socialauth/provider/YammerImpl;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Return statuc for URL "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 479
    invoke-virtual {v2}, Lorg/brickred/socialauth/util/Response;->getStatus()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 478
    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 480
    new-instance v3, Lorg/brickred/socialauth/exception/SocialAuthException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error while making request to URL :"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 481
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Status : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lorg/brickred/socialauth/util/Response;->getStatus()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 480
    invoke-direct {v3, v4}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 472
    .end local v2    # "serviceResponse":Lorg/brickred/socialauth/util/Response;
    :catch_0
    move-exception v0

    .line 473
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Lorg/brickred/socialauth/exception/SocialAuthException;

    .line 474
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error while making request to URL : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 473
    invoke-direct {v3, v4, v0}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 483
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "serviceResponse":Lorg/brickred/socialauth/util/Response;
    :cond_3
    return-object v2
.end method

.method public getAccessGrant()Lorg/brickred/socialauth/util/AccessGrant;
    .locals 1

    .prologue
    .line 502
    iget-object v0, p0, Lorg/brickred/socialauth/provider/YammerImpl;->accessGrant:Lorg/brickred/socialauth/util/AccessGrant;

    return-object v0
.end method

.method public getContactList()Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/brickred/socialauth/Contact;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 246
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lorg/brickred/socialauth/provider/YammerImpl;->isVerify:Z

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/brickred/socialauth/provider/YammerImpl;->accessToken:Ljava/lang/String;

    if-nez v14, :cond_1

    .line 247
    :cond_0
    new-instance v14, Lorg/brickred/socialauth/exception/SocialAuthException;

    .line 248
    const-string v15, "Please call verifyResponse function first to get Access Token"

    .line 247
    invoke-direct {v14, v15}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 250
    :cond_1
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 251
    .local v9, "plist":Ljava/util/List;, "Ljava/util/List<Lorg/brickred/socialauth/Contact;>;"
    const-string v14, "https://www.yammer.com/api/v1/users.json?sort_by=followers&access_token=%1$s"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/brickred/socialauth/provider/YammerImpl;->accessToken:Ljava/lang/String;

    move-object/from16 v17, v0

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 252
    .local v1, "contactURL":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/brickred/socialauth/provider/YammerImpl;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "Fetching contacts from "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 256
    :try_start_0
    sget-object v14, Lorg/brickred/socialauth/util/MethodType;->GET:Lorg/brickred/socialauth/util/MethodType;

    invoke-virtual {v14}, Lorg/brickred/socialauth/util/MethodType;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 255
    move-object/from16 v0, v16

    invoke-static {v1, v14, v15, v0}, Lorg/brickred/socialauth/util/HttpUtil;->doHttpRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lorg/brickred/socialauth/util/Response;

    move-result-object v12

    .line 257
    .local v12, "response":Lorg/brickred/socialauth/util/Response;
    const-string v14, "UTF-8"

    invoke-virtual {v12, v14}, Lorg/brickred/socialauth/util/Response;->getResponseBodyAsString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 263
    .local v11, "respStr":Ljava/lang/String;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/brickred/socialauth/provider/YammerImpl;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "User Contacts list in json : "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 264
    new-instance v10, Lorg/json/JSONArray;

    invoke-direct {v10, v11}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 265
    .local v10, "resp":Lorg/json/JSONArray;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v14

    if-lt v5, v14, :cond_2

    .line 285
    return-object v9

    .line 258
    .end local v5    # "i":I
    .end local v10    # "resp":Lorg/json/JSONArray;
    .end local v11    # "respStr":Ljava/lang/String;
    .end local v12    # "response":Lorg/brickred/socialauth/util/Response;
    :catch_0
    move-exception v2

    .line 259
    .local v2, "e":Ljava/lang/Exception;
    new-instance v14, Lorg/brickred/socialauth/exception/SocialAuthException;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "Error while getting contacts from "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 260
    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 259
    invoke-direct {v14, v15, v2}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v14

    .line 266
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v5    # "i":I
    .restart local v10    # "resp":Lorg/json/JSONArray;
    .restart local v11    # "respStr":Ljava/lang/String;
    .restart local v12    # "response":Lorg/brickred/socialauth/util/Response;
    :cond_2
    :try_start_2
    invoke-virtual {v10, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 267
    .local v7, "obj":Lorg/json/JSONObject;
    new-instance v8, Lorg/brickred/socialauth/Contact;

    invoke-direct {v8}, Lorg/brickred/socialauth/Contact;-><init>()V

    .line 268
    .local v8, "p":Lorg/brickred/socialauth/Contact;
    const-string v14, "full_name"

    invoke-virtual {v7, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 269
    .local v6, "name":Ljava/lang/String;
    invoke-virtual {v8, v6}, Lorg/brickred/socialauth/Contact;->setDisplayName(Ljava/lang/String;)V

    .line 270
    const-string v14, "contact"

    invoke-virtual {v7, v14}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    .line 272
    .local v13, "userContactDetails":Lorg/json/JSONObject;
    const-string v14, "email_addresses"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 273
    .local v3, "emailArr":Lorg/json/JSONArray;
    const/4 v14, 0x0

    invoke-virtual {v3, v14}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 274
    .local v4, "eobj":Lorg/json/JSONObject;
    const-string v14, "address"

    invoke-virtual {v4, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 275
    const-string v14, "address"

    invoke-virtual {v4, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Lorg/brickred/socialauth/Contact;->setEmail(Ljava/lang/String;)V

    .line 277
    :cond_3
    const-string v14, "id"

    invoke-virtual {v7, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Lorg/brickred/socialauth/Contact;->setId(Ljava/lang/String;)V

    .line 278
    const-string/jumbo v14, "web_url"

    invoke-virtual {v7, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Lorg/brickred/socialauth/Contact;->setProfileUrl(Ljava/lang/String;)V

    .line 279
    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 265
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 281
    .end local v3    # "emailArr":Lorg/json/JSONArray;
    .end local v4    # "eobj":Lorg/json/JSONObject;
    .end local v5    # "i":I
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "obj":Lorg/json/JSONObject;
    .end local v8    # "p":Lorg/brickred/socialauth/Contact;
    .end local v10    # "resp":Lorg/json/JSONArray;
    .end local v13    # "userContactDetails":Lorg/json/JSONObject;
    :catch_1
    move-exception v2

    .line 282
    .restart local v2    # "e":Ljava/lang/Exception;
    new-instance v14, Lorg/brickred/socialauth/exception/ServerDataException;

    .line 283
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "Failed to parse the user profile json : "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 282
    invoke-direct {v14, v15, v2}, Lorg/brickred/socialauth/exception/ServerDataException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v14
.end method

.method public getLoginRedirectURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "successUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 125
    iget-object v3, p0, Lorg/brickred/socialauth/provider/YammerImpl;->LOG:Lorg/apache/commons/logging/Log;

    const-string v4, "Determining URL for redirection"

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 126
    iput-boolean v7, p0, Lorg/brickred/socialauth/provider/YammerImpl;->providerState:Z

    .line 128
    :try_start_0
    const-string v3, "UTF-8"

    invoke-static {p1, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/brickred/socialauth/provider/YammerImpl;->successUrl:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :goto_0
    const-string v3, "https://www.yammer.com/dialog/oauth?client_id=%1$s&redirect_uri=%2$s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lorg/brickred/socialauth/provider/YammerImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v6}, Lorg/brickred/socialauth/util/OAuthConfig;->get_consumerKey()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 133
    iget-object v5, p0, Lorg/brickred/socialauth/provider/YammerImpl;->successUrl:Ljava/lang/String;

    aput-object v5, v4, v7

    .line 132
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 134
    .local v2, "url":Ljava/lang/String;
    invoke-direct {p0}, Lorg/brickred/socialauth/provider/YammerImpl;->getScope()Ljava/lang/String;

    move-result-object v1

    .line 135
    .local v1, "scopeStr":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 136
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "&scope="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 138
    :cond_0
    iget-object v3, p0, Lorg/brickred/socialauth/provider/YammerImpl;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Redirection to following URL should happen : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 139
    return-object v2

    .line 129
    .end local v1    # "scopeStr":Ljava/lang/String;
    .end local v2    # "url":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    iput-object p1, p0, Lorg/brickred/socialauth/provider/YammerImpl;->successUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method protected getOauthStrategy()Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;
    .locals 1

    .prologue
    .line 538
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getPluginsList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 528
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 529
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lorg/brickred/socialauth/provider/YammerImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v1}, Lorg/brickred/socialauth/util/OAuthConfig;->getRegisteredPlugins()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 530
    iget-object v1, p0, Lorg/brickred/socialauth/provider/YammerImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v1}, Lorg/brickred/socialauth/util/OAuthConfig;->getRegisteredPlugins()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_0

    .line 531
    iget-object v1, p0, Lorg/brickred/socialauth/provider/YammerImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v1}, Lorg/brickred/socialauth/util/OAuthConfig;->getRegisteredPlugins()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 533
    :cond_0
    return-object v0
.end method

.method public getProviderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 507
    iget-object v0, p0, Lorg/brickred/socialauth/provider/YammerImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v0}, Lorg/brickred/socialauth/util/OAuthConfig;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserProfile()Lorg/brickred/socialauth/Profile;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 493
    iget-object v0, p0, Lorg/brickred/socialauth/provider/YammerImpl;->userProfile:Lorg/brickred/socialauth/Profile;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/brickred/socialauth/provider/YammerImpl;->accessToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 494
    invoke-direct {p0}, Lorg/brickred/socialauth/provider/YammerImpl;->getProfile()Lorg/brickred/socialauth/Profile;

    .line 496
    :cond_0
    iget-object v0, p0, Lorg/brickred/socialauth/provider/YammerImpl;->userProfile:Lorg/brickred/socialauth/Profile;

    return-object v0
.end method

.method public logout()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 334
    iput-object v0, p0, Lorg/brickred/socialauth/provider/YammerImpl;->accessToken:Ljava/lang/String;

    .line 335
    iput-object v0, p0, Lorg/brickred/socialauth/provider/YammerImpl;->accessGrant:Lorg/brickred/socialauth/util/AccessGrant;

    .line 336
    return-void
.end method

.method public setAccessGrant(Lorg/brickred/socialauth/util/AccessGrant;)V
    .locals 1
    .param p1, "accessGrant"    # Lorg/brickred/socialauth/util/AccessGrant;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/brickred/socialauth/exception/AccessTokenExpireException;
        }
    .end annotation

    .prologue
    .line 110
    iput-object p1, p0, Lorg/brickred/socialauth/provider/YammerImpl;->accessGrant:Lorg/brickred/socialauth/util/AccessGrant;

    .line 111
    invoke-virtual {p1}, Lorg/brickred/socialauth/util/AccessGrant;->getKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/brickred/socialauth/provider/YammerImpl;->accessToken:Ljava/lang/String;

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/brickred/socialauth/provider/YammerImpl;->isVerify:Z

    .line 113
    return-void
.end method

.method public setPermission(Lorg/brickred/socialauth/Permission;)V
    .locals 3
    .param p1, "p"    # Lorg/brickred/socialauth/Permission;

    .prologue
    .line 431
    iget-object v0, p0, Lorg/brickred/socialauth/provider/YammerImpl;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Permission requested : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/brickred/socialauth/Permission;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 432
    iput-object p1, p0, Lorg/brickred/socialauth/provider/YammerImpl;->scope:Lorg/brickred/socialauth/Permission;

    .line 433
    return-void
.end method

.method public updateStatus(Ljava/lang/String;)Lorg/brickred/socialauth/util/Response;
    .locals 7
    .param p1, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 300
    iget-object v4, p0, Lorg/brickred/socialauth/provider/YammerImpl;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Updating status : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 301
    iget-boolean v4, p0, Lorg/brickred/socialauth/provider/YammerImpl;->isVerify:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/brickred/socialauth/provider/YammerImpl;->accessToken:Ljava/lang/String;

    if-nez v4, :cond_1

    .line 302
    :cond_0
    new-instance v4, Lorg/brickred/socialauth/exception/SocialAuthException;

    .line 303
    const-string v5, "Please call verifyResponse function first to get Access Token and then update status"

    .line 302
    invoke-direct {v4, v5}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 305
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_3

    .line 306
    :cond_2
    new-instance v4, Lorg/brickred/socialauth/exception/ServerDataException;

    const-string v5, "Status cannot be blank"

    invoke-direct {v4, v5}, Lorg/brickred/socialauth/exception/ServerDataException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 308
    :cond_3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 309
    .local v1, "headerParam":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "Authorization"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Bearer "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lorg/brickred/socialauth/provider/YammerImpl;->accessToken:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    const-string v4, "Content-Type"

    const-string v5, "application/json"

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    const-string v4, "Accept"

    const-string v5, "application/json"

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "{\"body\" : \""

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\"}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 315
    .local v2, "msgBody":Ljava/lang/String;
    :try_start_0
    const-string v4, "https://www.yammer.com/api/v1/messages.json"

    .line 316
    sget-object v5, Lorg/brickred/socialauth/util/MethodType;->POST:Lorg/brickred/socialauth/util/MethodType;

    invoke-virtual {v5}, Lorg/brickred/socialauth/util/MethodType;->toString()Ljava/lang/String;

    move-result-object v5

    .line 315
    invoke-static {v4, v5, v2, v1}, Lorg/brickred/socialauth/util/HttpUtil;->doHttpRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lorg/brickred/socialauth/util/Response;

    move-result-object v3

    .line 318
    .local v3, "serviceResponse":Lorg/brickred/socialauth/util/Response;
    invoke-virtual {v3}, Lorg/brickred/socialauth/util/Response;->getStatus()I

    move-result v4

    const/16 v5, 0xc9

    if-eq v4, v5, :cond_4

    .line 319
    new-instance v4, Lorg/brickred/socialauth/exception/SocialAuthException;

    .line 320
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Status not updated. Return Status code :"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 321
    invoke-virtual {v3}, Lorg/brickred/socialauth/util/Response;->getStatus()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 320
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 319
    invoke-direct {v4, v5}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    .end local v3    # "serviceResponse":Lorg/brickred/socialauth/util/Response;
    :catch_0
    move-exception v0

    .line 324
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Lorg/brickred/socialauth/exception/SocialAuthException;

    invoke-direct {v4, v0}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 326
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v3    # "serviceResponse":Lorg/brickred/socialauth/util/Response;
    :cond_4
    return-object v3
.end method

.method public uploadImage(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Lorg/brickred/socialauth/util/Response;
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 513
    iget-object v0, p0, Lorg/brickred/socialauth/provider/YammerImpl;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "WARNING: Not implemented for Yammer"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 514
    new-instance v0, Lorg/brickred/socialauth/exception/SocialAuthException;

    .line 515
    const-string v1, "Upload Image is not implemented for Yammer"

    .line 514
    invoke-direct {v0, v1}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public verifyResponse(Ljava/util/Map;)Lorg/brickred/socialauth/Profile;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/brickred/socialauth/Profile;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 156
    .local p1, "requestParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lorg/brickred/socialauth/provider/YammerImpl;->doVerifyResponse(Ljava/util/Map;)Lorg/brickred/socialauth/Profile;

    move-result-object v0

    return-object v0
.end method
