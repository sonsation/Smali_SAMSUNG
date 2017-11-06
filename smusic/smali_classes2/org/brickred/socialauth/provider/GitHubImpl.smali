.class public Lorg/brickred/socialauth/provider/GitHubImpl;
.super Lorg/brickred/socialauth/AbstractProvider;
.source "GitHubImpl.java"


# static fields
.field private static final AllPerms:[Ljava/lang/String;

.field private static final AuthPerms:[Ljava/lang/String;

.field private static final ENDPOINTS:Ljava/util/Map;
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

.field private static final PROFILE_URL:Ljava/lang/String; = "https://api.github.com/user"

.field private static final serialVersionUID:J = -0x30fbddf563769510L


# instance fields
.field private final LOG:Lorg/apache/commons/logging/Log;

.field private accessGrant:Lorg/brickred/socialauth/util/AccessGrant;

.field private authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

.field private config:Lorg/brickred/socialauth/util/OAuthConfig;

.field private scope:Lorg/brickred/socialauth/Permission;

.field private userProfile:Lorg/brickred/socialauth/Profile;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 73
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "user"

    aput-object v1, v0, v2

    .line 74
    const-string/jumbo v1, "user:email"

    aput-object v1, v0, v3

    .line 73
    sput-object v0, Lorg/brickred/socialauth/provider/GitHubImpl;->AllPerms:[Ljava/lang/String;

    .line 75
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "user"

    aput-object v1, v0, v2

    .line 76
    const-string/jumbo v1, "user:email"

    aput-object v1, v0, v3

    .line 75
    sput-object v0, Lorg/brickred/socialauth/provider/GitHubImpl;->AuthPerms:[Ljava/lang/String;

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/brickred/socialauth/provider/GitHubImpl;->ENDPOINTS:Ljava/util/Map;

    .line 80
    sget-object v0, Lorg/brickred/socialauth/provider/GitHubImpl;->ENDPOINTS:Ljava/util/Map;

    const-string v1, "authorizationURL"

    .line 81
    const-string v2, "https://github.com/login/oauth/authorize"

    .line 80
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lorg/brickred/socialauth/provider/GitHubImpl;->ENDPOINTS:Ljava/util/Map;

    const-string v1, "accessTokenURL"

    .line 83
    const-string v2, "https://github.com/login/oauth/access_token"

    .line 82
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    return-void
.end method

.method public constructor <init>(Lorg/brickred/socialauth/util/OAuthConfig;)V
    .locals 3
    .param p1, "providerConfig"    # Lorg/brickred/socialauth/util/OAuthConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 94
    invoke-direct {p0}, Lorg/brickred/socialauth/AbstractProvider;-><init>()V

    .line 65
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/brickred/socialauth/provider/GitHubImpl;->LOG:Lorg/apache/commons/logging/Log;

    .line 95
    iput-object p1, p0, Lorg/brickred/socialauth/provider/GitHubImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    .line 96
    iget-object v0, p0, Lorg/brickred/socialauth/provider/GitHubImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v0}, Lorg/brickred/socialauth/util/OAuthConfig;->getCustomPermissions()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 97
    sget-object v0, Lorg/brickred/socialauth/Permission;->CUSTOM:Lorg/brickred/socialauth/Permission;

    iput-object v0, p0, Lorg/brickred/socialauth/provider/GitHubImpl;->scope:Lorg/brickred/socialauth/Permission;

    .line 100
    :cond_0
    iget-object v0, p0, Lorg/brickred/socialauth/provider/GitHubImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v0}, Lorg/brickred/socialauth/util/OAuthConfig;->getAuthenticationUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 101
    sget-object v0, Lorg/brickred/socialauth/provider/GitHubImpl;->ENDPOINTS:Ljava/util/Map;

    const-string v1, "authorizationURL"

    .line 102
    iget-object v2, p0, Lorg/brickred/socialauth/provider/GitHubImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v2}, Lorg/brickred/socialauth/util/OAuthConfig;->getAuthenticationUrl()Ljava/lang/String;

    move-result-object v2

    .line 101
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    :goto_0
    iget-object v0, p0, Lorg/brickred/socialauth/provider/GitHubImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v0}, Lorg/brickred/socialauth/util/OAuthConfig;->getAccessTokenUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 109
    sget-object v0, Lorg/brickred/socialauth/provider/GitHubImpl;->ENDPOINTS:Ljava/util/Map;

    const-string v1, "accessTokenURL"

    .line 110
    iget-object v2, p0, Lorg/brickred/socialauth/provider/GitHubImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v2}, Lorg/brickred/socialauth/util/OAuthConfig;->getAccessTokenUrl()Ljava/lang/String;

    move-result-object v2

    .line 109
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    :goto_1
    new-instance v0, Lorg/brickred/socialauth/oauthstrategy/OAuth2;

    iget-object v1, p0, Lorg/brickred/socialauth/provider/GitHubImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    sget-object v2, Lorg/brickred/socialauth/provider/GitHubImpl;->ENDPOINTS:Ljava/util/Map;

    invoke-direct {v0, v1, v2}, Lorg/brickred/socialauth/oauthstrategy/OAuth2;-><init>(Lorg/brickred/socialauth/util/OAuthConfig;Ljava/util/Map;)V

    iput-object v0, p0, Lorg/brickred/socialauth/provider/GitHubImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    .line 117
    iget-object v0, p0, Lorg/brickred/socialauth/provider/GitHubImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    iget-object v1, p0, Lorg/brickred/socialauth/provider/GitHubImpl;->scope:Lorg/brickred/socialauth/Permission;

    invoke-interface {v0, v1}, Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;->setPermission(Lorg/brickred/socialauth/Permission;)V

    .line 118
    iget-object v0, p0, Lorg/brickred/socialauth/provider/GitHubImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    invoke-direct {p0}, Lorg/brickred/socialauth/provider/GitHubImpl;->getScope()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;->setScope(Ljava/lang/String;)V

    .line 119
    return-void

    .line 104
    :cond_1
    iget-object v1, p0, Lorg/brickred/socialauth/provider/GitHubImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    sget-object v0, Lorg/brickred/socialauth/provider/GitHubImpl;->ENDPOINTS:Ljava/util/Map;

    .line 105
    const-string v2, "authorizationURL"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 104
    invoke-virtual {v1, v0}, Lorg/brickred/socialauth/util/OAuthConfig;->setAuthenticationUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 112
    :cond_2
    iget-object v1, p0, Lorg/brickred/socialauth/provider/GitHubImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    sget-object v0, Lorg/brickred/socialauth/provider/GitHubImpl;->ENDPOINTS:Ljava/util/Map;

    .line 113
    const-string v2, "accessTokenURL"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 112
    invoke-virtual {v1, v0}, Lorg/brickred/socialauth/util/OAuthConfig;->setAccessTokenUrl(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private doVerifyResponse(Ljava/util/Map;)Lorg/brickred/socialauth/Profile;
    .locals 2
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
    .line 134
    .local p1, "requestParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/brickred/socialauth/provider/GitHubImpl;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "Retrieving Access Token in verify response function"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 135
    const-string v0, "error_reason"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 136
    const-string/jumbo v0, "user_denied"

    const-string v1, "error_reason"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    new-instance v0, Lorg/brickred/socialauth/exception/UserDeniedPermissionException;

    invoke-direct {v0}, Lorg/brickred/socialauth/exception/UserDeniedPermissionException;-><init>()V

    throw v0

    .line 139
    :cond_0
    iget-object v0, p0, Lorg/brickred/socialauth/provider/GitHubImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    .line 140
    sget-object v1, Lorg/brickred/socialauth/util/MethodType;->POST:Lorg/brickred/socialauth/util/MethodType;

    invoke-virtual {v1}, Lorg/brickred/socialauth/util/MethodType;->toString()Ljava/lang/String;

    move-result-object v1

    .line 139
    invoke-interface {v0, p1, v1}, Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;->verifyResponse(Ljava/util/Map;Ljava/lang/String;)Lorg/brickred/socialauth/util/AccessGrant;

    move-result-object v0

    iput-object v0, p0, Lorg/brickred/socialauth/provider/GitHubImpl;->accessGrant:Lorg/brickred/socialauth/util/AccessGrant;

    .line 142
    iget-object v0, p0, Lorg/brickred/socialauth/provider/GitHubImpl;->accessGrant:Lorg/brickred/socialauth/util/AccessGrant;

    if-eqz v0, :cond_1

    .line 143
    iget-object v0, p0, Lorg/brickred/socialauth/provider/GitHubImpl;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "Obtaining user profile"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 144
    invoke-direct {p0}, Lorg/brickred/socialauth/provider/GitHubImpl;->getProfile()Lorg/brickred/socialauth/Profile;

    move-result-object v0

    return-object v0

    .line 146
    :cond_1
    new-instance v0, Lorg/brickred/socialauth/exception/SocialAuthException;

    const-string v1, "Access token not found"

    invoke-direct {v0, v1}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getProfile()Lorg/brickred/socialauth/Profile;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 154
    :try_start_0
    iget-object v7, p0, Lorg/brickred/socialauth/provider/GitHubImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    const-string v8, "https://api.github.com/user"

    invoke-interface {v7, v8}, Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;->executeFeed(Ljava/lang/String;)Lorg/brickred/socialauth/util/Response;

    move-result-object v6

    .line 155
    .local v6, "response":Lorg/brickred/socialauth/util/Response;
    const-string v7, "UTF-8"

    invoke-virtual {v6, v7}, Lorg/brickred/socialauth/util/Response;->getResponseBodyAsString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 161
    .local v4, "presp":Ljava/lang/String;
    :try_start_1
    iget-object v7, p0, Lorg/brickred/socialauth/provider/GitHubImpl;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "User Profile : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 162
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 163
    .local v5, "resp":Lorg/json/JSONObject;
    new-instance v3, Lorg/brickred/socialauth/Profile;

    invoke-direct {v3}, Lorg/brickred/socialauth/Profile;-><init>()V

    .line 164
    .local v3, "p":Lorg/brickred/socialauth/Profile;
    const-string v7, "id"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lorg/brickred/socialauth/Profile;->setValidatedId(Ljava/lang/String;)V

    .line 165
    const-string v7, "name"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 166
    const-string v7, "name"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lorg/brickred/socialauth/Profile;->setFullName(Ljava/lang/String;)V

    .line 168
    :cond_0
    const-string v7, "email"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 169
    const-string v7, "email"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 170
    .local v1, "email":Ljava/lang/String;
    const-string v7, "null"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 171
    const-string v7, "email"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lorg/brickred/socialauth/Profile;->setEmail(Ljava/lang/String;)V

    .line 174
    .end local v1    # "email":Ljava/lang/String;
    :cond_1
    const-string v7, "location"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 175
    const-string v7, "location"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lorg/brickred/socialauth/Profile;->setLocation(Ljava/lang/String;)V

    .line 177
    :cond_2
    const-string v7, "avatar_url"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 178
    const-string v7, "avatar_url"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lorg/brickred/socialauth/Profile;->setProfileImageURL(Ljava/lang/String;)V

    .line 180
    :cond_3
    invoke-virtual {p0}, Lorg/brickred/socialauth/provider/GitHubImpl;->getProviderId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lorg/brickred/socialauth/Profile;->setProviderId(Ljava/lang/String;)V

    .line 181
    iput-object v3, p0, Lorg/brickred/socialauth/provider/GitHubImpl;->userProfile:Lorg/brickred/socialauth/Profile;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 182
    return-object v3

    .line 156
    .end local v3    # "p":Lorg/brickred/socialauth/Profile;
    .end local v4    # "presp":Ljava/lang/String;
    .end local v5    # "resp":Lorg/json/JSONObject;
    .end local v6    # "response":Lorg/brickred/socialauth/util/Response;
    :catch_0
    move-exception v0

    .line 157
    .local v0, "e":Ljava/lang/Exception;
    new-instance v7, Lorg/brickred/socialauth/exception/SocialAuthException;

    const-string v8, "Error while getting profile from https://api.github.com/user"

    invoke-direct {v7, v8, v0}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 183
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v4    # "presp":Ljava/lang/String;
    .restart local v6    # "response":Lorg/brickred/socialauth/util/Response;
    :catch_1
    move-exception v2

    .line 184
    .local v2, "ex":Ljava/lang/Exception;
    new-instance v7, Lorg/brickred/socialauth/exception/ServerDataException;

    .line 185
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Failed to parse the user profile json : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 184
    invoke-direct {v7, v8, v2}, Lorg/brickred/socialauth/exception/ServerDataException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
.end method

.method private getScope()Ljava/lang/String;
    .locals 6

    .prologue
    .line 284
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 285
    .local v3, "result":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .line 286
    .local v0, "arr":[Ljava/lang/String;
    sget-object v4, Lorg/brickred/socialauth/Permission;->AUTHENTICATE_ONLY:Lorg/brickred/socialauth/Permission;

    iget-object v5, p0, Lorg/brickred/socialauth/provider/GitHubImpl;->scope:Lorg/brickred/socialauth/Permission;

    invoke-virtual {v4, v5}, Lorg/brickred/socialauth/Permission;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 287
    sget-object v0, Lorg/brickred/socialauth/provider/GitHubImpl;->AuthPerms:[Ljava/lang/String;

    .line 294
    :goto_0
    const/4 v4, 0x0

    aget-object v4, v0, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 295
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    array-length v4, v0

    if-lt v1, v4, :cond_3

    .line 298
    iget-object v4, p0, Lorg/brickred/socialauth/provider/GitHubImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {p0, v4}, Lorg/brickred/socialauth/provider/GitHubImpl;->getPluginsScope(Lorg/brickred/socialauth/util/OAuthConfig;)Ljava/lang/String;

    move-result-object v2

    .line 299
    .local v2, "pluginScopes":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 300
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 302
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 288
    .end local v1    # "i":I
    .end local v2    # "pluginScopes":Ljava/lang/String;
    :cond_1
    sget-object v4, Lorg/brickred/socialauth/Permission;->CUSTOM:Lorg/brickred/socialauth/Permission;

    iget-object v5, p0, Lorg/brickred/socialauth/provider/GitHubImpl;->scope:Lorg/brickred/socialauth/Permission;

    invoke-virtual {v4, v5}, Lorg/brickred/socialauth/Permission;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 289
    iget-object v4, p0, Lorg/brickred/socialauth/provider/GitHubImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v4}, Lorg/brickred/socialauth/util/OAuthConfig;->getCustomPermissions()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 290
    iget-object v4, p0, Lorg/brickred/socialauth/provider/GitHubImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v4}, Lorg/brickred/socialauth/util/OAuthConfig;->getCustomPermissions()Ljava/lang/String;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 291
    goto :goto_0

    .line 292
    :cond_2
    sget-object v0, Lorg/brickred/socialauth/provider/GitHubImpl;->AllPerms:[Ljava/lang/String;

    goto :goto_0

    .line 296
    .restart local v1    # "i":I
    :cond_3
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    aget-object v5, v0, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 295
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public api(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)Lorg/brickred/socialauth/util/Response;
    .locals 8
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
    .line 230
    .local p3, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, "headerParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/brickred/socialauth/provider/GitHubImpl;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Calling api function for url\t:\t"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 231
    const/4 v7, 0x0

    .line 233
    .local v7, "response":Lorg/brickred/socialauth/util/Response;
    :try_start_0
    iget-object v0, p0, Lorg/brickred/socialauth/provider/GitHubImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;->executeFeed(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)Lorg/brickred/socialauth/util/Response;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 239
    return-object v7

    .line 235
    :catch_0
    move-exception v6

    .line 236
    .local v6, "e":Ljava/lang/Exception;
    new-instance v0, Lorg/brickred/socialauth/exception/SocialAuthException;

    .line 237
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error while making request to URL : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 236
    invoke-direct {v0, v1, v6}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getAccessGrant()Lorg/brickred/socialauth/util/AccessGrant;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lorg/brickred/socialauth/provider/GitHubImpl;->accessGrant:Lorg/brickred/socialauth/util/AccessGrant;

    return-object v0
.end method

.method public getContactList()Ljava/util/List;
    .locals 2
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
    .line 198
    iget-object v0, p0, Lorg/brickred/socialauth/provider/GitHubImpl;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "WARNING: Not implemented for GitHub"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 199
    new-instance v0, Lorg/brickred/socialauth/exception/SocialAuthException;

    .line 200
    const-string v1, "Get contact list is not implemented for GitHub"

    .line 199
    invoke-direct {v0, v1}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLoginRedirectURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "successUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 123
    iget-object v0, p0, Lorg/brickred/socialauth/provider/GitHubImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    invoke-interface {v0, p1}, Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;->getLoginRedirectURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getOauthStrategy()Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lorg/brickred/socialauth/provider/GitHubImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

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
    .line 270
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 271
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lorg/brickred/socialauth/provider/GitHubImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v1}, Lorg/brickred/socialauth/util/OAuthConfig;->getRegisteredPlugins()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 272
    iget-object v1, p0, Lorg/brickred/socialauth/provider/GitHubImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v1}, Lorg/brickred/socialauth/util/OAuthConfig;->getRegisteredPlugins()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_0

    .line 273
    iget-object v1, p0, Lorg/brickred/socialauth/provider/GitHubImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v1}, Lorg/brickred/socialauth/util/OAuthConfig;->getRegisteredPlugins()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 275
    :cond_0
    return-object v0
.end method

.method public getProviderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lorg/brickred/socialauth/provider/GitHubImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

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
    .line 205
    iget-object v0, p0, Lorg/brickred/socialauth/provider/GitHubImpl;->userProfile:Lorg/brickred/socialauth/Profile;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/brickred/socialauth/provider/GitHubImpl;->accessGrant:Lorg/brickred/socialauth/util/AccessGrant;

    if-eqz v0, :cond_0

    .line 206
    invoke-direct {p0}, Lorg/brickred/socialauth/provider/GitHubImpl;->getProfile()Lorg/brickred/socialauth/Profile;

    .line 208
    :cond_0
    iget-object v0, p0, Lorg/brickred/socialauth/provider/GitHubImpl;->userProfile:Lorg/brickred/socialauth/Profile;

    return-object v0
.end method

.method public logout()V
    .locals 1

    .prologue
    .line 213
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/brickred/socialauth/provider/GitHubImpl;->accessGrant:Lorg/brickred/socialauth/util/AccessGrant;

    .line 214
    iget-object v0, p0, Lorg/brickred/socialauth/provider/GitHubImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    invoke-interface {v0}, Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;->logout()V

    .line 215
    return-void
.end method

.method public setAccessGrant(Lorg/brickred/socialauth/util/AccessGrant;)V
    .locals 1
    .param p1, "accessGrant"    # Lorg/brickred/socialauth/util/AccessGrant;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/brickred/socialauth/exception/AccessTokenExpireException;,
            Lorg/brickred/socialauth/exception/SocialAuthException;
        }
    .end annotation

    .prologue
    .line 255
    iput-object p1, p0, Lorg/brickred/socialauth/provider/GitHubImpl;->accessGrant:Lorg/brickred/socialauth/util/AccessGrant;

    .line 256
    iget-object v0, p0, Lorg/brickred/socialauth/provider/GitHubImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    invoke-interface {v0, p1}, Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;->setAccessGrant(Lorg/brickred/socialauth/util/AccessGrant;)V

    .line 258
    return-void
.end method

.method public setPermission(Lorg/brickred/socialauth/Permission;)V
    .locals 3
    .param p1, "p"    # Lorg/brickred/socialauth/Permission;

    .prologue
    .line 219
    iget-object v0, p0, Lorg/brickred/socialauth/provider/GitHubImpl;->LOG:Lorg/apache/commons/logging/Log;

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

    .line 220
    iput-object p1, p0, Lorg/brickred/socialauth/provider/GitHubImpl;->scope:Lorg/brickred/socialauth/Permission;

    .line 221
    iget-object v0, p0, Lorg/brickred/socialauth/provider/GitHubImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    iget-object v1, p0, Lorg/brickred/socialauth/provider/GitHubImpl;->scope:Lorg/brickred/socialauth/Permission;

    invoke-interface {v0, v1}, Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;->setPermission(Lorg/brickred/socialauth/Permission;)V

    .line 222
    iget-object v0, p0, Lorg/brickred/socialauth/provider/GitHubImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    invoke-direct {p0}, Lorg/brickred/socialauth/provider/GitHubImpl;->getScope()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;->setScope(Ljava/lang/String;)V

    .line 223
    return-void
.end method

.method public updateStatus(Ljava/lang/String;)Lorg/brickred/socialauth/util/Response;
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 191
    iget-object v0, p0, Lorg/brickred/socialauth/provider/GitHubImpl;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "WARNING: Not implemented for GitHub"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 192
    new-instance v0, Lorg/brickred/socialauth/exception/SocialAuthException;

    .line 193
    const-string v1, "Update Status is not implemented for GitHub"

    .line 192
    invoke-direct {v0, v1}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;)V

    throw v0
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
    .line 263
    iget-object v0, p0, Lorg/brickred/socialauth/provider/GitHubImpl;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "WARNING: Not implemented for GitHub"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 264
    new-instance v0, Lorg/brickred/socialauth/exception/SocialAuthException;

    .line 265
    const-string v1, "Upload Image is not implemented for GitHub"

    .line 264
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
    .line 129
    .local p1, "requestParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lorg/brickred/socialauth/provider/GitHubImpl;->doVerifyResponse(Ljava/util/Map;)Lorg/brickred/socialauth/Profile;

    move-result-object v0

    return-object v0
.end method
