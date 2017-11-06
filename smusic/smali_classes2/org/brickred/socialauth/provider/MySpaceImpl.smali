.class public Lorg/brickred/socialauth/provider/MySpaceImpl;
.super Lorg/brickred/socialauth/AbstractProvider;
.source "MySpaceImpl.java"


# static fields
.field private static final AllPerms:Ljava/lang/String; = "VIEWER_FULL_PROFILE_INFO|ViewFullProfileInfo|UpdateMoodStatus"

.field private static final AuthPerms:Ljava/lang/String; = "VIEWER_FULL_PROFILE_INFO|ViewFullProfileInfo"

.field private static final CONTACTS_URL:Ljava/lang/String; = "http://api.myspace.com/1.0/people/@me/@all"

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

.field private static final PROFILE_URL:Ljava/lang/String; = "http://api.myspace.com/1.0/people/@me/@self"

.field private static final UPDATE_STATUS_URL:Ljava/lang/String; = "http://api.myspace.com/1.0/statusmood/@me/@self"

.field private static final serialVersionUID:J = -0x3889e598bc9ba51eL


# instance fields
.field private final LOG:Lorg/apache/commons/logging/Log;

.field private accessToken:Lorg/brickred/socialauth/util/AccessGrant;

.field private authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

.field private config:Lorg/brickred/socialauth/util/OAuthConfig;

.field private scope:Lorg/brickred/socialauth/Permission;

.field private userProfile:Lorg/brickred/socialauth/Profile;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/brickred/socialauth/provider/MySpaceImpl;->ENDPOINTS:Ljava/util/Map;

    .line 79
    sget-object v0, Lorg/brickred/socialauth/provider/MySpaceImpl;->ENDPOINTS:Ljava/util/Map;

    const-string/jumbo v1, "reqTokenURL"

    .line 80
    const-string v2, "http://api.myspace.com/request_token"

    .line 79
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lorg/brickred/socialauth/provider/MySpaceImpl;->ENDPOINTS:Ljava/util/Map;

    const-string v1, "authorizationURL"

    .line 82
    const-string v2, "http://api.myspace.com/authorize?myspaceid.permissions="

    .line 81
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lorg/brickred/socialauth/provider/MySpaceImpl;->ENDPOINTS:Ljava/util/Map;

    const-string v1, "accessTokenURL"

    .line 84
    const-string v2, "http://api.myspace.com/access_token"

    .line 83
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
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
    .line 95
    invoke-direct {p0}, Lorg/brickred/socialauth/AbstractProvider;-><init>()V

    .line 66
    const-class v0, Lorg/brickred/socialauth/provider/MySpaceImpl;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/brickred/socialauth/provider/MySpaceImpl;->LOG:Lorg/apache/commons/logging/Log;

    .line 96
    iput-object p1, p0, Lorg/brickred/socialauth/provider/MySpaceImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    .line 97
    iget-object v0, p0, Lorg/brickred/socialauth/provider/MySpaceImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v0}, Lorg/brickred/socialauth/util/OAuthConfig;->getCustomPermissions()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 98
    sget-object v0, Lorg/brickred/socialauth/Permission;->CUSTOM:Lorg/brickred/socialauth/Permission;

    iput-object v0, p0, Lorg/brickred/socialauth/provider/MySpaceImpl;->scope:Lorg/brickred/socialauth/Permission;

    .line 101
    :cond_0
    iget-object v0, p0, Lorg/brickred/socialauth/provider/MySpaceImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v0}, Lorg/brickred/socialauth/util/OAuthConfig;->getRequestTokenUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 102
    sget-object v0, Lorg/brickred/socialauth/provider/MySpaceImpl;->ENDPOINTS:Ljava/util/Map;

    const-string/jumbo v1, "reqTokenURL"

    .line 103
    iget-object v2, p0, Lorg/brickred/socialauth/provider/MySpaceImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v2}, Lorg/brickred/socialauth/util/OAuthConfig;->getRequestTokenUrl()Ljava/lang/String;

    move-result-object v2

    .line 102
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    :goto_0
    iget-object v0, p0, Lorg/brickred/socialauth/provider/MySpaceImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v0}, Lorg/brickred/socialauth/util/OAuthConfig;->getAuthenticationUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 110
    sget-object v0, Lorg/brickred/socialauth/provider/MySpaceImpl;->ENDPOINTS:Ljava/util/Map;

    const-string v1, "authorizationURL"

    .line 111
    iget-object v2, p0, Lorg/brickred/socialauth/provider/MySpaceImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v2}, Lorg/brickred/socialauth/util/OAuthConfig;->getAuthenticationUrl()Ljava/lang/String;

    move-result-object v2

    .line 110
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    :goto_1
    iget-object v0, p0, Lorg/brickred/socialauth/provider/MySpaceImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v0}, Lorg/brickred/socialauth/util/OAuthConfig;->getAccessTokenUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 118
    sget-object v0, Lorg/brickred/socialauth/provider/MySpaceImpl;->ENDPOINTS:Ljava/util/Map;

    const-string v1, "accessTokenURL"

    .line 119
    iget-object v2, p0, Lorg/brickred/socialauth/provider/MySpaceImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v2}, Lorg/brickred/socialauth/util/OAuthConfig;->getAccessTokenUrl()Ljava/lang/String;

    move-result-object v2

    .line 118
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    :goto_2
    new-instance v0, Lorg/brickred/socialauth/oauthstrategy/OAuth1;

    iget-object v1, p0, Lorg/brickred/socialauth/provider/MySpaceImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    sget-object v2, Lorg/brickred/socialauth/provider/MySpaceImpl;->ENDPOINTS:Ljava/util/Map;

    invoke-direct {v0, v1, v2}, Lorg/brickred/socialauth/oauthstrategy/OAuth1;-><init>(Lorg/brickred/socialauth/util/OAuthConfig;Ljava/util/Map;)V

    iput-object v0, p0, Lorg/brickred/socialauth/provider/MySpaceImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    .line 125
    iget-object v0, p0, Lorg/brickred/socialauth/provider/MySpaceImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    iget-object v1, p0, Lorg/brickred/socialauth/provider/MySpaceImpl;->scope:Lorg/brickred/socialauth/Permission;

    invoke-interface {v0, v1}, Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;->setPermission(Lorg/brickred/socialauth/Permission;)V

    .line 126
    iget-object v0, p0, Lorg/brickred/socialauth/provider/MySpaceImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    invoke-direct {p0}, Lorg/brickred/socialauth/provider/MySpaceImpl;->getScope()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;->setScope(Ljava/lang/String;)V

    .line 127
    return-void

    .line 105
    :cond_1
    iget-object v1, p0, Lorg/brickred/socialauth/provider/MySpaceImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    sget-object v0, Lorg/brickred/socialauth/provider/MySpaceImpl;->ENDPOINTS:Ljava/util/Map;

    .line 106
    const-string/jumbo v2, "reqTokenURL"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 105
    invoke-virtual {v1, v0}, Lorg/brickred/socialauth/util/OAuthConfig;->setRequestTokenUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 113
    :cond_2
    iget-object v1, p0, Lorg/brickred/socialauth/provider/MySpaceImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    sget-object v0, Lorg/brickred/socialauth/provider/MySpaceImpl;->ENDPOINTS:Ljava/util/Map;

    .line 114
    const-string v2, "authorizationURL"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 113
    invoke-virtual {v1, v0}, Lorg/brickred/socialauth/util/OAuthConfig;->setAuthenticationUrl(Ljava/lang/String;)V

    goto :goto_1

    .line 121
    :cond_3
    iget-object v1, p0, Lorg/brickred/socialauth/provider/MySpaceImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    sget-object v0, Lorg/brickred/socialauth/provider/MySpaceImpl;->ENDPOINTS:Ljava/util/Map;

    .line 122
    const-string v2, "accessTokenURL"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 121
    invoke-virtual {v1, v0}, Lorg/brickred/socialauth/util/OAuthConfig;->setAccessTokenUrl(Ljava/lang/String;)V

    goto :goto_2
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
    .line 176
    .local p1, "requestParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/brickred/socialauth/provider/MySpaceImpl;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "Verifying the authentication response from provider"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 177
    const-string v0, "oauth_problem"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 178
    const-string/jumbo v0, "user_refused"

    const-string v1, "oauth_problem"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    new-instance v0, Lorg/brickred/socialauth/exception/UserDeniedPermissionException;

    invoke-direct {v0}, Lorg/brickred/socialauth/exception/UserDeniedPermissionException;-><init>()V

    throw v0

    .line 181
    :cond_0
    iget-object v0, p0, Lorg/brickred/socialauth/provider/MySpaceImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    invoke-interface {v0, p1}, Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;->verifyResponse(Ljava/util/Map;)Lorg/brickred/socialauth/util/AccessGrant;

    move-result-object v0

    iput-object v0, p0, Lorg/brickred/socialauth/provider/MySpaceImpl;->accessToken:Lorg/brickred/socialauth/util/AccessGrant;

    .line 182
    invoke-direct {p0}, Lorg/brickred/socialauth/provider/MySpaceImpl;->getProfile()Lorg/brickred/socialauth/Profile;

    move-result-object v0

    return-object v0
.end method

.method private getProfile()Lorg/brickred/socialauth/Profile;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 307
    iget-object v8, p0, Lorg/brickred/socialauth/provider/MySpaceImpl;->LOG:Lorg/apache/commons/logging/Log;

    const-string v9, "Obtaining user profile"

    invoke-interface {v8, v9}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 308
    new-instance v5, Lorg/brickred/socialauth/Profile;

    invoke-direct {v5}, Lorg/brickred/socialauth/Profile;-><init>()V

    .line 310
    .local v5, "profile":Lorg/brickred/socialauth/Profile;
    const/4 v7, 0x0

    .line 312
    .local v7, "serviceResponse":Lorg/brickred/socialauth/util/Response;
    :try_start_0
    iget-object v8, p0, Lorg/brickred/socialauth/provider/MySpaceImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    const-string v9, "http://api.myspace.com/1.0/people/@me/@self"

    invoke-interface {v8, v9}, Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;->executeFeed(Ljava/lang/String;)Lorg/brickred/socialauth/util/Response;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 318
    invoke-virtual {v7}, Lorg/brickred/socialauth/util/Response;->getStatus()I

    move-result v8

    const/16 v9, 0xc8

    if-eq v8, v9, :cond_0

    .line 319
    new-instance v8, Lorg/brickred/socialauth/exception/SocialAuthException;

    .line 320
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Failed to retrieve the user profile from  http://api.myspace.com/1.0/people/@me/@self. Staus :"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 321
    invoke-virtual {v7}, Lorg/brickred/socialauth/util/Response;->getStatus()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 320
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 319
    invoke-direct {v8, v9}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 313
    :catch_0
    move-exception v0

    .line 314
    .local v0, "e":Ljava/lang/Exception;
    new-instance v8, Lorg/brickred/socialauth/exception/SocialAuthException;

    .line 315
    const-string v9, "Failed to retrieve the user profile from  http://api.myspace.com/1.0/people/@me/@self"

    .line 314
    invoke-direct {v8, v9, v0}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 327
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :try_start_1
    const-string v8, "UTF-8"

    invoke-virtual {v7, v8}, Lorg/brickred/socialauth/util/Response;->getResponseBodyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 328
    .local v6, "result":Ljava/lang/String;
    iget-object v8, p0, Lorg/brickred/socialauth/provider/MySpaceImpl;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "User Profile :"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 333
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 334
    .local v4, "pObj":Lorg/json/JSONObject;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 335
    .local v2, "jobj":Lorg/json/JSONObject;
    const-string v8, "person"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 336
    const-string v8, "person"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 341
    const-string v8, "displayName"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 342
    const-string v8, "displayName"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lorg/brickred/socialauth/Profile;->setDisplayName(Ljava/lang/String;)V

    .line 344
    :cond_1
    const-string v8, "id"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 345
    const-string v8, "id"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lorg/brickred/socialauth/Profile;->setValidatedId(Ljava/lang/String;)V

    .line 347
    :cond_2
    const-string v8, "name"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 348
    const-string v8, "name"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 349
    .local v3, "nobj":Lorg/json/JSONObject;
    const-string v8, "familyName"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 350
    const-string v8, "familyName"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lorg/brickred/socialauth/Profile;->setLastName(Ljava/lang/String;)V

    .line 352
    :cond_3
    const-string v8, "givenName"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 353
    const-string v8, "givenName"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lorg/brickred/socialauth/Profile;->setFirstName(Ljava/lang/String;)V

    .line 356
    .end local v3    # "nobj":Lorg/json/JSONObject;
    :cond_4
    const-string v8, "location"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 357
    const-string v8, "location"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lorg/brickred/socialauth/Profile;->setLocation(Ljava/lang/String;)V

    .line 359
    :cond_5
    const-string v8, "nickname"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 360
    const-string v8, "nickname"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lorg/brickred/socialauth/Profile;->setDisplayName(Ljava/lang/String;)V

    .line 362
    :cond_6
    const-string v8, "lang"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 363
    const-string v8, "lang"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lorg/brickred/socialauth/Profile;->setLanguage(Ljava/lang/String;)V

    .line 365
    :cond_7
    const-string/jumbo v8, "thumbnailUrl"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 366
    const-string/jumbo v8, "thumbnailUrl"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lorg/brickred/socialauth/Profile;->setProfileImageURL(Ljava/lang/String;)V

    .line 368
    :cond_8
    invoke-virtual {p0}, Lorg/brickred/socialauth/provider/MySpaceImpl;->getProviderId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lorg/brickred/socialauth/Profile;->setProviderId(Ljava/lang/String;)V

    .line 369
    iput-object v5, p0, Lorg/brickred/socialauth/provider/MySpaceImpl;->userProfile:Lorg/brickred/socialauth/Profile;

    .line 370
    return-object v5

    .line 329
    .end local v2    # "jobj":Lorg/json/JSONObject;
    .end local v4    # "pObj":Lorg/json/JSONObject;
    .end local v6    # "result":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 330
    .local v1, "exc":Ljava/lang/Exception;
    new-instance v8, Lorg/brickred/socialauth/exception/SocialAuthException;

    const-string v9, "Failed to read response from  http://api.myspace.com/1.0/people/@me/@self"

    invoke-direct {v8, v9, v1}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 338
    .end local v1    # "exc":Ljava/lang/Exception;
    .restart local v2    # "jobj":Lorg/json/JSONObject;
    .restart local v4    # "pObj":Lorg/json/JSONObject;
    .restart local v6    # "result":Ljava/lang/String;
    :cond_9
    new-instance v8, Lorg/brickred/socialauth/exception/ServerDataException;

    .line 339
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Failed to parse the user profile json : "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 338
    invoke-direct {v8, v9}, Lorg/brickred/socialauth/exception/ServerDataException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method private getScope()Ljava/lang/String;
    .locals 5

    .prologue
    .line 434
    sget-object v3, Lorg/brickred/socialauth/Permission;->AUTHENTICATE_ONLY:Lorg/brickred/socialauth/Permission;

    iget-object v4, p0, Lorg/brickred/socialauth/provider/MySpaceImpl;->scope:Lorg/brickred/socialauth/Permission;

    invoke-virtual {v3, v4}, Lorg/brickred/socialauth/Permission;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 435
    const-string v1, "VIEWER_FULL_PROFILE_INFO|ViewFullProfileInfo"

    .line 442
    .local v1, "scopeStr":Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lorg/brickred/socialauth/provider/MySpaceImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {p0, v3}, Lorg/brickred/socialauth/provider/MySpaceImpl;->getPluginsScope(Lorg/brickred/socialauth/util/OAuthConfig;)Ljava/lang/String;

    move-result-object v0

    .line 443
    .local v0, "pluginScopes":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 444
    const-string v3, ","

    const-string/jumbo v4, "|"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 445
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 447
    :cond_0
    return-object v1

    .line 436
    .end local v0    # "pluginScopes":Ljava/lang/String;
    .end local v1    # "scopeStr":Ljava/lang/String;
    :cond_1
    sget-object v3, Lorg/brickred/socialauth/Permission;->CUSTOM:Lorg/brickred/socialauth/Permission;

    iget-object v4, p0, Lorg/brickred/socialauth/provider/MySpaceImpl;->scope:Lorg/brickred/socialauth/Permission;

    invoke-virtual {v3, v4}, Lorg/brickred/socialauth/Permission;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 437
    iget-object v3, p0, Lorg/brickred/socialauth/provider/MySpaceImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v3}, Lorg/brickred/socialauth/util/OAuthConfig;->getCustomPermissions()Ljava/lang/String;

    move-result-object v2

    .line 438
    .local v2, "str":Ljava/lang/String;
    const-string v3, ","

    const-string/jumbo v4, "|"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 439
    .restart local v1    # "scopeStr":Ljava/lang/String;
    goto :goto_0

    .line 440
    .end local v1    # "scopeStr":Ljava/lang/String;
    .end local v2    # "str":Ljava/lang/String;
    :cond_2
    const-string v1, "VIEWER_FULL_PROFILE_INFO|ViewFullProfileInfo|UpdateMoodStatus"

    .restart local v1    # "scopeStr":Ljava/lang/String;
    goto :goto_0
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
    .line 396
    .local p3, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, "headerParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/brickred/socialauth/provider/MySpaceImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;->executeFeed(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)Lorg/brickred/socialauth/util/Response;

    move-result-object v0

    return-object v0
.end method

.method public getAccessGrant()Lorg/brickred/socialauth/util/AccessGrant;
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lorg/brickred/socialauth/provider/MySpaceImpl;->accessToken:Lorg/brickred/socialauth/util/AccessGrant;

    return-object v0
.end method

.method public getContactList()Ljava/util/List;
    .locals 15
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
    .line 194
    iget-object v12, p0, Lorg/brickred/socialauth/provider/MySpaceImpl;->accessToken:Lorg/brickred/socialauth/util/AccessGrant;

    if-nez v12, :cond_0

    .line 195
    new-instance v12, Lorg/brickred/socialauth/exception/SocialAuthException;

    .line 196
    const-string v13, "Please call verifyResponse function first to get Access Token"

    .line 195
    invoke-direct {v12, v13}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 198
    :cond_0
    iget-object v12, p0, Lorg/brickred/socialauth/provider/MySpaceImpl;->LOG:Lorg/apache/commons/logging/Log;

    const-string v13, "Fetching contacts from http://api.myspace.com/1.0/people/@me/@all"

    invoke-interface {v12, v13}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 200
    const/4 v11, 0x0

    .line 202
    .local v11, "serviceResponse":Lorg/brickred/socialauth/util/Response;
    :try_start_0
    iget-object v12, p0, Lorg/brickred/socialauth/provider/MySpaceImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    const-string v13, "http://api.myspace.com/1.0/people/@me/@all"

    invoke-interface {v12, v13}, Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;->executeFeed(Ljava/lang/String;)Lorg/brickred/socialauth/util/Response;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 210
    :try_start_1
    const-string v12, "UTF-8"

    invoke-virtual {v11, v12}, Lorg/brickred/socialauth/util/Response;->getResponseBodyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 211
    .local v10, "result":Ljava/lang/String;
    iget-object v12, p0, Lorg/brickred/socialauth/provider/MySpaceImpl;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Contacts JSON :"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 216
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 217
    .local v2, "fArr":Lorg/json/JSONArray;
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 218
    .local v9, "resObj":Lorg/json/JSONObject;
    const-string v12, "entry"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 219
    const-string v12, "entry"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 224
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 225
    .local v8, "plist":Ljava/util/List;, "Ljava/util/List<Lorg/brickred/socialauth/Contact;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-lt v4, v12, :cond_2

    .line 252
    return-object v8

    .line 203
    .end local v2    # "fArr":Lorg/json/JSONArray;
    .end local v4    # "i":I
    .end local v8    # "plist":Ljava/util/List;, "Ljava/util/List<Lorg/brickred/socialauth/Contact;>;"
    .end local v9    # "resObj":Lorg/json/JSONObject;
    .end local v10    # "result":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 204
    .local v5, "ie":Ljava/lang/Exception;
    new-instance v12, Lorg/brickred/socialauth/exception/SocialAuthException;

    .line 205
    const-string v13, "Failed to retrieve the contacts from http://api.myspace.com/1.0/people/@me/@all"

    .line 204
    invoke-direct {v12, v13, v5}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v12

    .line 212
    .end local v5    # "ie":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 213
    .local v1, "exc":Ljava/lang/Exception;
    new-instance v12, Lorg/brickred/socialauth/exception/SocialAuthException;

    const-string v13, "Failed to read contacts from  http://api.myspace.com/1.0/people/@me/@all"

    invoke-direct {v12, v13, v1}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v12

    .line 221
    .end local v1    # "exc":Ljava/lang/Exception;
    .restart local v2    # "fArr":Lorg/json/JSONArray;
    .restart local v9    # "resObj":Lorg/json/JSONObject;
    .restart local v10    # "result":Ljava/lang/String;
    :cond_1
    new-instance v12, Lorg/brickred/socialauth/exception/ServerDataException;

    .line 222
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Failed to parse the user Contacts json : "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 221
    invoke-direct {v12, v13}, Lorg/brickred/socialauth/exception/ServerDataException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 226
    .restart local v4    # "i":I
    .restart local v8    # "plist":Ljava/util/List;, "Ljava/util/List<Lorg/brickred/socialauth/Contact;>;"
    :cond_2
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 227
    .local v3, "fObj":Lorg/json/JSONObject;
    const-string v12, "person"

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 228
    new-instance v0, Lorg/brickred/socialauth/Contact;

    invoke-direct {v0}, Lorg/brickred/socialauth/Contact;-><init>()V

    .line 229
    .local v0, "contact":Lorg/brickred/socialauth/Contact;
    const-string v12, "person"

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 230
    .local v7, "pObj":Lorg/json/JSONObject;
    const-string v12, "displayName"

    invoke-virtual {v7, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 231
    const-string v12, "displayName"

    invoke-virtual {v7, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Lorg/brickred/socialauth/Contact;->setDisplayName(Ljava/lang/String;)V

    .line 233
    :cond_3
    const-string v12, "name"

    invoke-virtual {v7, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 234
    const-string v12, "name"

    invoke-virtual {v7, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 235
    .local v6, "nobj":Lorg/json/JSONObject;
    const-string v12, "familyName"

    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 236
    const-string v12, "familyName"

    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Lorg/brickred/socialauth/Contact;->setLastName(Ljava/lang/String;)V

    .line 238
    :cond_4
    const-string v12, "givenName"

    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 239
    const-string v12, "givenName"

    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Lorg/brickred/socialauth/Contact;->setFirstName(Ljava/lang/String;)V

    .line 243
    .end local v6    # "nobj":Lorg/json/JSONObject;
    :cond_5
    const-string v12, "profileUrl"

    invoke-virtual {v7, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 244
    const-string v12, "profileUrl"

    invoke-virtual {v7, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Lorg/brickred/socialauth/Contact;->setProfileUrl(Ljava/lang/String;)V

    .line 246
    :cond_6
    const-string v12, "id"

    invoke-virtual {v7, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 247
    const-string v12, "id"

    invoke-virtual {v7, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Lorg/brickred/socialauth/Contact;->setId(Ljava/lang/String;)V

    .line 249
    :cond_7
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    .end local v0    # "contact":Lorg/brickred/socialauth/Contact;
    .end local v7    # "pObj":Lorg/json/JSONObject;
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0
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
    .line 154
    iget-object v0, p0, Lorg/brickred/socialauth/provider/MySpaceImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    invoke-interface {v0, p1}, Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;->getLoginRedirectURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getOauthStrategy()Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Lorg/brickred/socialauth/provider/MySpaceImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

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
    .line 452
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 453
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lorg/brickred/socialauth/provider/MySpaceImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v1}, Lorg/brickred/socialauth/util/OAuthConfig;->getRegisteredPlugins()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 454
    iget-object v1, p0, Lorg/brickred/socialauth/provider/MySpaceImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v1}, Lorg/brickred/socialauth/util/OAuthConfig;->getRegisteredPlugins()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_0

    .line 455
    iget-object v1, p0, Lorg/brickred/socialauth/provider/MySpaceImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v1}, Lorg/brickred/socialauth/util/OAuthConfig;->getRegisteredPlugins()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 457
    :cond_0
    return-object v0
.end method

.method public getProviderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lorg/brickred/socialauth/provider/MySpaceImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

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
    .line 408
    iget-object v0, p0, Lorg/brickred/socialauth/provider/MySpaceImpl;->userProfile:Lorg/brickred/socialauth/Profile;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/brickred/socialauth/provider/MySpaceImpl;->accessToken:Lorg/brickred/socialauth/util/AccessGrant;

    if-eqz v0, :cond_0

    .line 409
    invoke-direct {p0}, Lorg/brickred/socialauth/provider/MySpaceImpl;->getProfile()Lorg/brickred/socialauth/Profile;

    .line 411
    :cond_0
    iget-object v0, p0, Lorg/brickred/socialauth/provider/MySpaceImpl;->userProfile:Lorg/brickred/socialauth/Profile;

    return-object v0
.end method

.method public logout()V
    .locals 1

    .prologue
    .line 288
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/brickred/socialauth/provider/MySpaceImpl;->accessToken:Lorg/brickred/socialauth/util/AccessGrant;

    .line 289
    iget-object v0, p0, Lorg/brickred/socialauth/provider/MySpaceImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    invoke-interface {v0}, Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;->logout()V

    .line 290
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
    .line 139
    iput-object p1, p0, Lorg/brickred/socialauth/provider/MySpaceImpl;->accessToken:Lorg/brickred/socialauth/util/AccessGrant;

    .line 140
    invoke-virtual {p1}, Lorg/brickred/socialauth/util/AccessGrant;->getPermission()Lorg/brickred/socialauth/Permission;

    move-result-object v0

    iput-object v0, p0, Lorg/brickred/socialauth/provider/MySpaceImpl;->scope:Lorg/brickred/socialauth/Permission;

    .line 141
    iget-object v0, p0, Lorg/brickred/socialauth/provider/MySpaceImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    invoke-interface {v0, p1}, Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;->setAccessGrant(Lorg/brickred/socialauth/util/AccessGrant;)V

    .line 142
    return-void
.end method

.method public setPermission(Lorg/brickred/socialauth/Permission;)V
    .locals 3
    .param p1, "p"    # Lorg/brickred/socialauth/Permission;

    .prologue
    .line 300
    iget-object v0, p0, Lorg/brickred/socialauth/provider/MySpaceImpl;->LOG:Lorg/apache/commons/logging/Log;

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

    .line 301
    iput-object p1, p0, Lorg/brickred/socialauth/provider/MySpaceImpl;->scope:Lorg/brickred/socialauth/Permission;

    .line 302
    iget-object v0, p0, Lorg/brickred/socialauth/provider/MySpaceImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    iget-object v1, p0, Lorg/brickred/socialauth/provider/MySpaceImpl;->scope:Lorg/brickred/socialauth/Permission;

    invoke-interface {v0, v1}, Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;->setPermission(Lorg/brickred/socialauth/Permission;)V

    .line 303
    iget-object v0, p0, Lorg/brickred/socialauth/provider/MySpaceImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    invoke-direct {p0}, Lorg/brickred/socialauth/provider/MySpaceImpl;->getScope()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;->setScope(Ljava/lang/String;)V

    .line 304
    return-void
.end method

.method public updateStatus(Ljava/lang/String;)Lorg/brickred/socialauth/util/Response;
    .locals 8
    .param p1, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 265
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 266
    :cond_0
    new-instance v0, Lorg/brickred/socialauth/exception/ServerDataException;

    const-string v1, "Status cannot be blank"

    invoke-direct {v0, v1}, Lorg/brickred/socialauth/exception/ServerDataException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 268
    :cond_1
    iget-object v0, p0, Lorg/brickred/socialauth/provider/MySpaceImpl;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Updating status "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "http://api.myspace.com/1.0/statusmood/@me/@self"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{\"status\":\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 270
    .local v5, "msgBody":Ljava/lang/String;
    const/4 v7, 0x0

    .line 272
    .local v7, "serviceResponse":Lorg/brickred/socialauth/util/Response;
    :try_start_0
    iget-object v0, p0, Lorg/brickred/socialauth/provider/MySpaceImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    .line 273
    const-string v1, "http://api.myspace.com/1.0/statusmood/@me/@self"

    sget-object v2, Lorg/brickred/socialauth/util/MethodType;->PUT:Lorg/brickred/socialauth/util/MethodType;

    invoke-virtual {v2}, Lorg/brickred/socialauth/util/MethodType;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 272
    invoke-interface/range {v0 .. v5}, Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;->executeFeed(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)Lorg/brickred/socialauth/util/Response;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 279
    iget-object v0, p0, Lorg/brickred/socialauth/provider/MySpaceImpl;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Update Status Response :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lorg/brickred/socialauth/util/Response;->getStatus()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 280
    return-object v7

    .line 275
    :catch_0
    move-exception v6

    .line 276
    .local v6, "ie":Ljava/lang/Exception;
    new-instance v0, Lorg/brickred/socialauth/exception/SocialAuthException;

    const-string v1, "Failed to update status on http://api.myspace.com/1.0/statusmood/@me/@self"

    invoke-direct {v0, v1, v6}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

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
    .line 427
    iget-object v0, p0, Lorg/brickred/socialauth/provider/MySpaceImpl;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "WARNING: Not implemented for MySpace"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 428
    new-instance v0, Lorg/brickred/socialauth/exception/SocialAuthException;

    .line 429
    const-string v1, "Update Status is not implemented for MySpace"

    .line 428
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
    .line 171
    .local p1, "requestParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lorg/brickred/socialauth/provider/MySpaceImpl;->doVerifyResponse(Ljava/util/Map;)Lorg/brickred/socialauth/Profile;

    move-result-object v0

    return-object v0
.end method
