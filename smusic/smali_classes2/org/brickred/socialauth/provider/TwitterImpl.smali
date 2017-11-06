.class public Lorg/brickred/socialauth/provider/TwitterImpl;
.super Lorg/brickred/socialauth/AbstractProvider;
.source "TwitterImpl.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/brickred/socialauth/AuthProvider;


# static fields
.field private static final CONTACTS_URL:Ljava/lang/String; = "https://api.twitter.com/1.1/friends/ids.json?screen_name=%1$s&cursor=-1"

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

.field private static final IMAGE_FILE_PATTERN:Ljava/util/regex/Pattern;

.field private static final IMAGE_UPLOAD_URL:Ljava/lang/String; = "https://api.twitter.com/1.1/statuses/update_with_media.json"

.field private static final LOOKUP_URL:Ljava/lang/String; = "https://api.twitter.com/1.1/users/lookup.json?user_id="

.field private static final PROFILE_URL:Ljava/lang/String; = "https://api.twitter.com/1.1/users/show.json?screen_name="

.field private static final PROPERTY_DOMAIN:Ljava/lang/String; = "twitter.com"

.field private static final UPDATE_STATUS_URL:Ljava/lang/String; = "https://api.twitter.com/1.1/statuses/update.json?status="

.field private static final serialVersionUID:J = 0x1a7bf9e9a773ca9aL


# instance fields
.field private final LOG:Lorg/apache/commons/logging/Log;

.field private accessToken:Lorg/brickred/socialauth/util/AccessGrant;

.field private authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

.field private config:Lorg/brickred/socialauth/util/OAuthConfig;

.field private isVerify:Z

.field private scope:Lorg/brickred/socialauth/Permission;

.field private userProfile:Lorg/brickred/socialauth/Profile;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 79
    const-string v0, "(jpg|jpeg|gif|png)$"

    const/4 v1, 0x2

    .line 78
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/brickred/socialauth/provider/TwitterImpl;->IMAGE_FILE_PATTERN:Ljava/util/regex/Pattern;

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/brickred/socialauth/provider/TwitterImpl;->ENDPOINTS:Ljava/util/Map;

    .line 92
    sget-object v0, Lorg/brickred/socialauth/provider/TwitterImpl;->ENDPOINTS:Ljava/util/Map;

    const-string/jumbo v1, "reqTokenURL"

    .line 93
    const-string v2, "https://api.twitter.com/oauth/request_token"

    .line 92
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lorg/brickred/socialauth/provider/TwitterImpl;->ENDPOINTS:Ljava/util/Map;

    const-string v1, "authorizationURL"

    .line 95
    const-string v2, "https://api.twitter.com/oauth/authenticate"

    .line 94
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lorg/brickred/socialauth/provider/TwitterImpl;->ENDPOINTS:Ljava/util/Map;

    const-string v1, "accessTokenURL"

    .line 97
    const-string v2, "https://api.twitter.com/oauth/access_token"

    .line 96
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
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
    .line 108
    invoke-direct {p0}, Lorg/brickred/socialauth/AbstractProvider;-><init>()V

    .line 81
    const-class v0, Lorg/brickred/socialauth/provider/TwitterImpl;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/brickred/socialauth/provider/TwitterImpl;->LOG:Lorg/apache/commons/logging/Log;

    .line 109
    iput-object p1, p0, Lorg/brickred/socialauth/provider/TwitterImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    .line 110
    iget-object v0, p0, Lorg/brickred/socialauth/provider/TwitterImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v0}, Lorg/brickred/socialauth/util/OAuthConfig;->getRequestTokenUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 111
    sget-object v0, Lorg/brickred/socialauth/provider/TwitterImpl;->ENDPOINTS:Ljava/util/Map;

    const-string/jumbo v1, "reqTokenURL"

    .line 112
    iget-object v2, p0, Lorg/brickred/socialauth/provider/TwitterImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v2}, Lorg/brickred/socialauth/util/OAuthConfig;->getRequestTokenUrl()Ljava/lang/String;

    move-result-object v2

    .line 111
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    :goto_0
    iget-object v0, p0, Lorg/brickred/socialauth/provider/TwitterImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v0}, Lorg/brickred/socialauth/util/OAuthConfig;->getAuthenticationUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 119
    sget-object v0, Lorg/brickred/socialauth/provider/TwitterImpl;->ENDPOINTS:Ljava/util/Map;

    const-string v1, "authorizationURL"

    .line 120
    iget-object v2, p0, Lorg/brickred/socialauth/provider/TwitterImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v2}, Lorg/brickred/socialauth/util/OAuthConfig;->getAuthenticationUrl()Ljava/lang/String;

    move-result-object v2

    .line 119
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    :goto_1
    iget-object v0, p0, Lorg/brickred/socialauth/provider/TwitterImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v0}, Lorg/brickred/socialauth/util/OAuthConfig;->getAccessTokenUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 127
    sget-object v0, Lorg/brickred/socialauth/provider/TwitterImpl;->ENDPOINTS:Ljava/util/Map;

    const-string v1, "accessTokenURL"

    .line 128
    iget-object v2, p0, Lorg/brickred/socialauth/provider/TwitterImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v2}, Lorg/brickred/socialauth/util/OAuthConfig;->getAccessTokenUrl()Ljava/lang/String;

    move-result-object v2

    .line 127
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    :goto_2
    new-instance v0, Lorg/brickred/socialauth/oauthstrategy/OAuth1;

    iget-object v1, p0, Lorg/brickred/socialauth/provider/TwitterImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    sget-object v2, Lorg/brickred/socialauth/provider/TwitterImpl;->ENDPOINTS:Ljava/util/Map;

    invoke-direct {v0, v1, v2}, Lorg/brickred/socialauth/oauthstrategy/OAuth1;-><init>(Lorg/brickred/socialauth/util/OAuthConfig;Ljava/util/Map;)V

    iput-object v0, p0, Lorg/brickred/socialauth/provider/TwitterImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    .line 134
    return-void

    .line 114
    :cond_0
    iget-object v1, p0, Lorg/brickred/socialauth/provider/TwitterImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    sget-object v0, Lorg/brickred/socialauth/provider/TwitterImpl;->ENDPOINTS:Ljava/util/Map;

    .line 115
    const-string/jumbo v2, "reqTokenURL"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 114
    invoke-virtual {v1, v0}, Lorg/brickred/socialauth/util/OAuthConfig;->setRequestTokenUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 122
    :cond_1
    iget-object v1, p0, Lorg/brickred/socialauth/provider/TwitterImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    sget-object v0, Lorg/brickred/socialauth/provider/TwitterImpl;->ENDPOINTS:Ljava/util/Map;

    .line 123
    const-string v2, "authorizationURL"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 122
    invoke-virtual {v1, v0}, Lorg/brickred/socialauth/util/OAuthConfig;->setAuthenticationUrl(Ljava/lang/String;)V

    goto :goto_1

    .line 130
    :cond_2
    iget-object v1, p0, Lorg/brickred/socialauth/provider/TwitterImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    sget-object v0, Lorg/brickred/socialauth/provider/TwitterImpl;->ENDPOINTS:Ljava/util/Map;

    .line 131
    const-string v2, "accessTokenURL"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 130
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
    .line 182
    .local p1, "requestParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/brickred/socialauth/provider/TwitterImpl;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "Verifying the authentication response from provider"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 183
    const-string v0, "denied"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 184
    new-instance v0, Lorg/brickred/socialauth/exception/UserDeniedPermissionException;

    invoke-direct {v0}, Lorg/brickred/socialauth/exception/UserDeniedPermissionException;-><init>()V

    throw v0

    .line 186
    :cond_0
    iget-object v0, p0, Lorg/brickred/socialauth/provider/TwitterImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    invoke-interface {v0, p1}, Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;->verifyResponse(Ljava/util/Map;)Lorg/brickred/socialauth/util/AccessGrant;

    move-result-object v0

    iput-object v0, p0, Lorg/brickred/socialauth/provider/TwitterImpl;->accessToken:Lorg/brickred/socialauth/util/AccessGrant;

    .line 187
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/brickred/socialauth/provider/TwitterImpl;->isVerify:Z

    .line 188
    invoke-direct {p0}, Lorg/brickred/socialauth/provider/TwitterImpl;->getProfile()Lorg/brickred/socialauth/Profile;

    move-result-object v0

    return-object v0
.end method

.method private getProfile()Lorg/brickred/socialauth/Profile;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 192
    new-instance v3, Lorg/brickred/socialauth/Profile;

    invoke-direct {v3}, Lorg/brickred/socialauth/Profile;-><init>()V

    .line 193
    .local v3, "profile":Lorg/brickred/socialauth/Profile;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "https://api.twitter.com/1.1/users/show.json?screen_name="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lorg/brickred/socialauth/provider/TwitterImpl;->accessToken:Lorg/brickred/socialauth/util/AccessGrant;

    const-string/jumbo v9, "screen_name"

    invoke-virtual {v8, v9}, Lorg/brickred/socialauth/util/AccessGrant;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 194
    .local v6, "url":Ljava/lang/String;
    iget-object v7, p0, Lorg/brickred/socialauth/provider/TwitterImpl;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Obtaining user profile. Profile URL : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 195
    const/4 v5, 0x0

    .line 197
    .local v5, "serviceResponse":Lorg/brickred/socialauth/util/Response;
    :try_start_0
    iget-object v7, p0, Lorg/brickred/socialauth/provider/TwitterImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    invoke-interface {v7, v6}, Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;->executeFeed(Ljava/lang/String;)Lorg/brickred/socialauth/util/Response;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 202
    invoke-virtual {v5}, Lorg/brickred/socialauth/util/Response;->getStatus()I

    move-result v7

    const/16 v8, 0xc8

    if-eq v7, v8, :cond_0

    .line 203
    new-instance v7, Lorg/brickred/socialauth/exception/SocialAuthException;

    .line 204
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Failed to retrieve the user profile from  "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 205
    const-string v9, ". Status :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Lorg/brickred/socialauth/util/Response;->getStatus()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 204
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 203
    invoke-direct {v7, v8}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 198
    :catch_0
    move-exception v0

    .line 199
    .local v0, "e":Ljava/lang/Exception;
    new-instance v7, Lorg/brickred/socialauth/exception/SocialAuthException;

    .line 200
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Failed to retrieve the user profile from  "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 199
    invoke-direct {v7, v8, v0}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 210
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :try_start_1
    const-string v7, "UTF-8"

    invoke-virtual {v5, v7}, Lorg/brickred/socialauth/util/Response;->getResponseBodyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 211
    .local v4, "result":Ljava/lang/String;
    iget-object v7, p0, Lorg/brickred/socialauth/provider/TwitterImpl;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "User Profile :"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 217
    :try_start_2
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 218
    .local v2, "pObj":Lorg/json/JSONObject;
    const-string v7, "id_str"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 219
    const-string v7, "id_str"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lorg/brickred/socialauth/Profile;->setValidatedId(Ljava/lang/String;)V

    .line 221
    :cond_1
    const-string v7, "name"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 222
    const-string v7, "name"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lorg/brickred/socialauth/Profile;->setFullName(Ljava/lang/String;)V

    .line 224
    :cond_2
    const-string v7, "location"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 225
    const-string v7, "location"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lorg/brickred/socialauth/Profile;->setLocation(Ljava/lang/String;)V

    .line 227
    :cond_3
    const-string/jumbo v7, "screen_name"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 228
    const-string/jumbo v7, "screen_name"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lorg/brickred/socialauth/Profile;->setDisplayName(Ljava/lang/String;)V

    .line 230
    :cond_4
    const-string v7, "lang"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 231
    const-string v7, "lang"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lorg/brickred/socialauth/Profile;->setLanguage(Ljava/lang/String;)V

    .line 233
    :cond_5
    const-string v7, "profile_image_url"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 234
    const-string v7, "profile_image_url"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lorg/brickred/socialauth/Profile;->setProfileImageURL(Ljava/lang/String;)V

    .line 236
    :cond_6
    invoke-virtual {p0}, Lorg/brickred/socialauth/provider/TwitterImpl;->getProviderId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lorg/brickred/socialauth/Profile;->setProviderId(Ljava/lang/String;)V

    .line 237
    iput-object v3, p0, Lorg/brickred/socialauth/provider/TwitterImpl;->userProfile:Lorg/brickred/socialauth/Profile;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 238
    return-object v3

    .line 212
    .end local v2    # "pObj":Lorg/json/JSONObject;
    .end local v4    # "result":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 213
    .local v1, "exc":Ljava/lang/Exception;
    new-instance v7, Lorg/brickred/socialauth/exception/SocialAuthException;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Failed to read response from  "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 214
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 213
    invoke-direct {v7, v8, v1}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 239
    .end local v1    # "exc":Ljava/lang/Exception;
    .restart local v4    # "result":Ljava/lang/String;
    :catch_2
    move-exception v0

    .line 240
    .restart local v0    # "e":Ljava/lang/Exception;
    new-instance v7, Lorg/brickred/socialauth/exception/ServerDataException;

    .line 241
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Failed to parse the user profile json : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 240
    invoke-direct {v7, v8, v0}, Lorg/brickred/socialauth/exception/ServerDataException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
.end method

.method private lookupUsers([I)Ljava/util/List;
    .locals 16
    .param p1, "fids"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
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
    .line 357
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 358
    .local v10, "strb":Ljava/lang/StringBuilder;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 359
    .local v7, "plist":Ljava/util/List;, "Ljava/util/List<Lorg/brickred/socialauth/Contact;>;"
    move-object/from16 v0, p1

    array-length v14, v0

    const/4 v13, 0x0

    :goto_0
    if-lt v13, v14, :cond_0

    .line 365
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "https://api.twitter.com/1.1/users/lookup.json?user_id="

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 366
    .local v11, "url":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/brickred/socialauth/provider/TwitterImpl;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Fetching info of following users : "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 367
    const/4 v9, 0x0

    .line 369
    .local v9, "serviceResponse":Lorg/brickred/socialauth/util/Response;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/brickred/socialauth/provider/TwitterImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    invoke-interface {v13, v11}, Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;->executeFeed(Ljava/lang/String;)Lorg/brickred/socialauth/util/Response;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 377
    :try_start_1
    const-string v13, "UTF-8"

    invoke-virtual {v9, v13}, Lorg/brickred/socialauth/util/Response;->getResponseBodyAsString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v8

    .line 382
    .local v8, "result":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/brickred/socialauth/provider/TwitterImpl;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Users info : "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 384
    :try_start_2
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5, v8}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 385
    .local v5, "jarr":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v13

    if-lt v3, v13, :cond_2

    .line 405
    return-object v7

    .line 359
    .end local v3    # "i":I
    .end local v5    # "jarr":Lorg/json/JSONArray;
    .end local v8    # "result":Ljava/lang/String;
    .end local v9    # "serviceResponse":Lorg/brickred/socialauth/util/Response;
    .end local v11    # "url":Ljava/lang/String;
    :cond_0
    aget v12, p1, v13

    .line 360
    .local v12, "value":I
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v15

    if-eqz v15, :cond_1

    .line 361
    const-string v15, ","

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    :cond_1
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 359
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 370
    .end local v12    # "value":I
    .restart local v9    # "serviceResponse":Lorg/brickred/socialauth/util/Response;
    .restart local v11    # "url":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 371
    .local v4, "ie":Ljava/lang/Exception;
    new-instance v13, Lorg/brickred/socialauth/exception/SocialAuthException;

    .line 372
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Failed to retrieve the contacts from "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 371
    invoke-direct {v13, v14, v4}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v13

    .line 378
    .end local v4    # "ie":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 379
    .local v2, "e":Ljava/lang/Exception;
    new-instance v13, Lorg/brickred/socialauth/exception/ServerDataException;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Failed to get response from "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14, v2}, Lorg/brickred/socialauth/exception/ServerDataException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v13

    .line 386
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "i":I
    .restart local v5    # "jarr":Lorg/json/JSONArray;
    .restart local v8    # "result":Ljava/lang/String;
    :cond_2
    :try_start_3
    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 387
    .local v6, "jobj":Lorg/json/JSONObject;
    new-instance v1, Lorg/brickred/socialauth/Contact;

    invoke-direct {v1}, Lorg/brickred/socialauth/Contact;-><init>()V

    .line 388
    .local v1, "cont":Lorg/brickred/socialauth/Contact;
    const-string v13, "name"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 389
    const-string v13, "name"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Lorg/brickred/socialauth/Contact;->setFirstName(Ljava/lang/String;)V

    .line 391
    :cond_3
    const-string/jumbo v13, "screen_name"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 392
    const-string/jumbo v13, "screen_name"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Lorg/brickred/socialauth/Contact;->setDisplayName(Ljava/lang/String;)V

    .line 393
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "https://twitter.com/"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 394
    const-string/jumbo v14, "screen_name"

    invoke-virtual {v6, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 393
    invoke-virtual {v1, v13}, Lorg/brickred/socialauth/Contact;->setProfileUrl(Ljava/lang/String;)V

    .line 396
    :cond_4
    const-string v13, "profile_image_url"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Lorg/brickred/socialauth/Contact;->setProfileImageURL(Ljava/lang/String;)V

    .line 397
    const-string v13, "id_str"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 398
    const-string v13, "id_str"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Lorg/brickred/socialauth/Contact;->setId(Ljava/lang/String;)V

    .line 400
    :cond_5
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 385
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 402
    .end local v1    # "cont":Lorg/brickred/socialauth/Contact;
    .end local v3    # "i":I
    .end local v5    # "jarr":Lorg/json/JSONArray;
    .end local v6    # "jobj":Lorg/json/JSONObject;
    :catch_2
    move-exception v2

    .line 403
    .restart local v2    # "e":Ljava/lang/Exception;
    throw v2
.end method


# virtual methods
.method public api(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)Lorg/brickred/socialauth/util/Response;
    .locals 7
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
    .line 452
    .local p3, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, "headerParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-boolean v0, p0, Lorg/brickred/socialauth/provider/TwitterImpl;->isVerify:Z

    if-nez v0, :cond_0

    .line 453
    new-instance v0, Lorg/brickred/socialauth/exception/SocialAuthException;

    .line 454
    const-string v1, "Please call verifyResponse function first to get Access Token"

    .line 453
    invoke-direct {v0, v1}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 456
    :cond_0
    const/4 v6, 0x0

    .line 457
    .local v6, "response":Lorg/brickred/socialauth/util/Response;
    iget-object v0, p0, Lorg/brickred/socialauth/provider/TwitterImpl;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Calling URL : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 458
    iget-object v0, p0, Lorg/brickred/socialauth/provider/TwitterImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;->executeFeed(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)Lorg/brickred/socialauth/util/Response;

    move-result-object v6

    .line 460
    return-object v6
.end method

.method public getAccessGrant()Lorg/brickred/socialauth/util/AccessGrant;
    .locals 1

    .prologue
    .line 478
    iget-object v0, p0, Lorg/brickred/socialauth/provider/TwitterImpl;->accessToken:Lorg/brickred/socialauth/util/AccessGrant;

    return-object v0
.end method

.method public getContactList()Ljava/util/List;
    .locals 22
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
    .line 294
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/brickred/socialauth/provider/TwitterImpl;->isVerify:Z

    move/from16 v17, v0

    if-nez v17, :cond_0

    .line 295
    new-instance v17, Lorg/brickred/socialauth/exception/SocialAuthException;

    .line 296
    const-string v18, "Please call verifyResponse function first to get Access Token"

    .line 295
    invoke-direct/range {v17 .. v18}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 298
    :cond_0
    const-string v17, "https://api.twitter.com/1.1/friends/ids.json?screen_name=%1$s&cursor=-1"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/brickred/socialauth/provider/TwitterImpl;->accessToken:Lorg/brickred/socialauth/util/AccessGrant;

    move-object/from16 v20, v0

    const-string/jumbo v21, "screen_name"

    invoke-virtual/range {v20 .. v21}, Lorg/brickred/socialauth/util/AccessGrant;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    aput-object v20, v18, v19

    .line 298
    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 300
    .local v16, "url":Ljava/lang/String;
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 301
    .local v12, "plist":Ljava/util/List;, "Ljava/util/List<Lorg/brickred/socialauth/Contact;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/brickred/socialauth/provider/TwitterImpl;->LOG:Lorg/apache/commons/logging/Log;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "Fetching contacts from "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 302
    const/4 v14, 0x0

    .line 304
    .local v14, "serviceResponse":Lorg/brickred/socialauth/util/Response;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/brickred/socialauth/provider/TwitterImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;->executeFeed(Ljava/lang/String;)Lorg/brickred/socialauth/util/Response;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    .line 312
    :try_start_1
    const-string v17, "UTF-8"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lorg/brickred/socialauth/util/Response;->getResponseBodyAsString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v13

    .line 316
    .local v13, "result":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/brickred/socialauth/provider/TwitterImpl;->LOG:Lorg/apache/commons/logging/Log;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "User friends ids : "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 318
    :try_start_2
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10, v13}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 319
    .local v10, "jobj":Lorg/json/JSONObject;
    const-string v17, "ids"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 320
    const-string v17, "ids"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 321
    .local v6, "idList":Lorg/json/JSONArray;
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v4

    .line 322
    .local v4, "flength":I
    new-array v7, v4, [I

    .line 323
    .local v7, "ids":[I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v17

    move/from16 v0, v17

    if-lt v5, v0, :cond_2

    .line 326
    if-lez v4, :cond_1

    .line 327
    const/16 v17, 0x64

    move/from16 v0, v17

    if-le v4, v0, :cond_6

    .line 328
    div-int/lit8 v5, v4, 0x64

    .line 330
    const/4 v9, 0x1

    .local v9, "j":I
    :goto_1
    if-le v9, v5, :cond_3

    .line 337
    mul-int/lit8 v17, v5, 0x64

    move/from16 v0, v17

    if-le v4, v0, :cond_1

    .line 338
    mul-int/lit8 v17, v5, 0x64

    sub-int v17, v4, v17

    move/from16 v0, v17

    new-array v15, v0, [I

    .line 339
    .local v15, "temparr":[I
    mul-int/lit8 v11, v5, 0x64

    .local v11, "k":I
    const/4 v2, 0x0

    .local v2, "c":I
    :goto_2
    if-lt v11, v4, :cond_5

    .line 342
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lorg/brickred/socialauth/provider/TwitterImpl;->lookupUsers([I)Ljava/util/List;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v12, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 353
    .end local v2    # "c":I
    .end local v4    # "flength":I
    .end local v5    # "i":I
    .end local v6    # "idList":Lorg/json/JSONArray;
    .end local v7    # "ids":[I
    .end local v9    # "j":I
    .end local v11    # "k":I
    .end local v15    # "temparr":[I
    :cond_1
    :goto_3
    return-object v12

    .line 305
    .end local v10    # "jobj":Lorg/json/JSONObject;
    .end local v13    # "result":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 306
    .local v8, "ie":Ljava/lang/Exception;
    new-instance v17, Lorg/brickred/socialauth/exception/SocialAuthException;

    .line 307
    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "Failed to retrieve the contacts from "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 306
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v8}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v17

    .line 313
    .end local v8    # "ie":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 314
    .local v3, "e":Ljava/lang/Exception;
    new-instance v17, Lorg/brickred/socialauth/exception/ServerDataException;

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "Failed to get response from "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Lorg/brickred/socialauth/exception/ServerDataException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 324
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v4    # "flength":I
    .restart local v5    # "i":I
    .restart local v6    # "idList":Lorg/json/JSONArray;
    .restart local v7    # "ids":[I
    .restart local v10    # "jobj":Lorg/json/JSONObject;
    .restart local v13    # "result":Ljava/lang/String;
    :cond_2
    :try_start_3
    invoke-virtual {v6, v5}, Lorg/json/JSONArray;->getInt(I)I

    move-result v17

    aput v17, v7, v5

    .line 323
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 331
    .restart local v9    # "j":I
    :cond_3
    const/16 v17, 0x64

    move/from16 v0, v17

    new-array v15, v0, [I

    .line 332
    .restart local v15    # "temparr":[I
    add-int/lit8 v17, v9, -0x1

    mul-int/lit8 v11, v17, 0x64

    .restart local v11    # "k":I
    const/4 v2, 0x0

    .restart local v2    # "c":I
    :goto_4
    mul-int/lit8 v17, v9, 0x64

    move/from16 v0, v17

    if-lt v11, v0, :cond_4

    .line 335
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lorg/brickred/socialauth/provider/TwitterImpl;->lookupUsers([I)Ljava/util/List;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v12, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 330
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 333
    :cond_4
    aget v17, v7, v11

    aput v17, v15, v2

    .line 332
    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 340
    :cond_5
    aget v17, v7, v11

    aput v17, v15, v2

    .line 339
    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 345
    .end local v2    # "c":I
    .end local v9    # "j":I
    .end local v11    # "k":I
    .end local v15    # "temparr":[I
    :cond_6
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lorg/brickred/socialauth/provider/TwitterImpl;->lookupUsers([I)Ljava/util/List;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v12, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    .line 349
    .end local v4    # "flength":I
    .end local v5    # "i":I
    .end local v6    # "idList":Lorg/json/JSONArray;
    .end local v7    # "ids":[I
    .end local v10    # "jobj":Lorg/json/JSONObject;
    :catch_2
    move-exception v3

    .line 350
    .restart local v3    # "e":Ljava/lang/Exception;
    new-instance v17, Lorg/brickred/socialauth/exception/ServerDataException;

    .line 351
    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "Failed to parse the user friends json : "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 350
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v3}, Lorg/brickred/socialauth/exception/ServerDataException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v17
.end method

.method public getLoginRedirectURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "successUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 160
    iget-object v0, p0, Lorg/brickred/socialauth/provider/TwitterImpl;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "Determining URL for redirection"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 161
    iget-object v0, p0, Lorg/brickred/socialauth/provider/TwitterImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    invoke-interface {v0, p1}, Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;->getLoginRedirectURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getOauthStrategy()Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;
    .locals 1

    .prologue
    .line 531
    iget-object v0, p0, Lorg/brickred/socialauth/provider/TwitterImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

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
    .line 519
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 520
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "org.brickred.socialauth.plugin.twitter.FeedPluginImpl"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 521
    const-string v1, "org.brickred.socialauth.plugin.twitter.AlbumsPluginImpl"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 522
    iget-object v1, p0, Lorg/brickred/socialauth/provider/TwitterImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v1}, Lorg/brickred/socialauth/util/OAuthConfig;->getRegisteredPlugins()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 523
    iget-object v1, p0, Lorg/brickred/socialauth/provider/TwitterImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v1}, Lorg/brickred/socialauth/util/OAuthConfig;->getRegisteredPlugins()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_0

    .line 524
    iget-object v1, p0, Lorg/brickred/socialauth/provider/TwitterImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v1}, Lorg/brickred/socialauth/util/OAuthConfig;->getRegisteredPlugins()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 526
    :cond_0
    return-object v0
.end method

.method public getProviderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Lorg/brickred/socialauth/provider/TwitterImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

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
    .line 470
    iget-object v0, p0, Lorg/brickred/socialauth/provider/TwitterImpl;->userProfile:Lorg/brickred/socialauth/Profile;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/brickred/socialauth/provider/TwitterImpl;->accessToken:Lorg/brickred/socialauth/util/AccessGrant;

    if-eqz v0, :cond_0

    .line 471
    invoke-direct {p0}, Lorg/brickred/socialauth/provider/TwitterImpl;->getProfile()Lorg/brickred/socialauth/Profile;

    .line 473
    :cond_0
    iget-object v0, p0, Lorg/brickred/socialauth/provider/TwitterImpl;->userProfile:Lorg/brickred/socialauth/Profile;

    return-object v0
.end method

.method public logout()V
    .locals 1

    .prologue
    .line 413
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/brickred/socialauth/provider/TwitterImpl;->accessToken:Lorg/brickred/socialauth/util/AccessGrant;

    .line 414
    iget-object v0, p0, Lorg/brickred/socialauth/provider/TwitterImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    invoke-interface {v0}, Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;->logout()V

    .line 415
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
    .line 146
    iput-object p1, p0, Lorg/brickred/socialauth/provider/TwitterImpl;->accessToken:Lorg/brickred/socialauth/util/AccessGrant;

    .line 147
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/brickred/socialauth/provider/TwitterImpl;->isVerify:Z

    .line 148
    iget-object v0, p0, Lorg/brickred/socialauth/provider/TwitterImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    invoke-interface {v0, p1}, Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;->setAccessGrant(Lorg/brickred/socialauth/util/AccessGrant;)V

    .line 149
    return-void
.end method

.method public setPermission(Lorg/brickred/socialauth/Permission;)V
    .locals 3
    .param p1, "p"    # Lorg/brickred/socialauth/Permission;

    .prologue
    .line 425
    iget-object v0, p0, Lorg/brickred/socialauth/provider/TwitterImpl;->LOG:Lorg/apache/commons/logging/Log;

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

    .line 426
    iput-object p1, p0, Lorg/brickred/socialauth/provider/TwitterImpl;->scope:Lorg/brickred/socialauth/Permission;

    .line 427
    return-void
.end method

.method public updateStatus(Ljava/lang/String;)Lorg/brickred/socialauth/util/Response;
    .locals 9
    .param p1, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v4, 0x8c

    .line 255
    iget-object v0, p0, Lorg/brickred/socialauth/provider/TwitterImpl;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Updatting status "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 256
    iget-boolean v0, p0, Lorg/brickred/socialauth/provider/TwitterImpl;->isVerify:Z

    if-nez v0, :cond_0

    .line 257
    new-instance v0, Lorg/brickred/socialauth/exception/SocialAuthException;

    .line 258
    const-string v2, "Please call verifyResponse function first to get Access Token"

    .line 257
    invoke-direct {v0, v2}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 260
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 261
    :cond_1
    new-instance v0, Lorg/brickred/socialauth/exception/ServerDataException;

    const-string v2, "Status cannot be blank"

    invoke-direct {v0, v2}, Lorg/brickred/socialauth/exception/ServerDataException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 263
    :cond_2
    move-object v7, p1

    .line 264
    .local v7, "message":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v4, :cond_3

    .line 265
    iget-object v0, p0, Lorg/brickred/socialauth/provider/TwitterImpl;->LOG:Lorg/apache/commons/logging/Log;

    const-string v2, "Truncating message up to 140 characters"

    invoke-interface {v0, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 266
    const/4 v0, 0x0

    invoke-virtual {v7, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 269
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "https://api.twitter.com/1.1/statuses/update.json?status="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 270
    const-string v2, "UTF-8"

    invoke-static {v7, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 269
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 271
    .local v1, "url":Ljava/lang/String;
    const/4 v8, 0x0

    .line 273
    .local v8, "serviceResponse":Lorg/brickred/socialauth/util/Response;
    :try_start_0
    iget-object v0, p0, Lorg/brickred/socialauth/provider/TwitterImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    .line 274
    sget-object v2, Lorg/brickred/socialauth/util/MethodType;->POST:Lorg/brickred/socialauth/util/MethodType;

    invoke-virtual {v2}, Lorg/brickred/socialauth/util/MethodType;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 273
    invoke-interface/range {v0 .. v5}, Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;->executeFeed(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)Lorg/brickred/socialauth/util/Response;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 279
    invoke-virtual {v8}, Lorg/brickred/socialauth/util/Response;->getStatus()I

    move-result v0

    const/16 v2, 0xc8

    if-eq v0, v2, :cond_4

    .line 280
    new-instance v0, Lorg/brickred/socialauth/exception/SocialAuthException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to update status on "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 281
    const-string v3, ". Status :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Lorg/brickred/socialauth/util/Response;->getStatus()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 280
    invoke-direct {v0, v2}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 275
    :catch_0
    move-exception v6

    .line 276
    .local v6, "e":Ljava/lang/Exception;
    new-instance v0, Lorg/brickred/socialauth/exception/SocialAuthException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to update status on "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v6}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 283
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_4
    return-object v8
.end method

.method public uploadImage(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Lorg/brickred/socialauth/util/Response;
    .locals 9
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 502
    iget-object v0, p0, Lorg/brickred/socialauth/provider/TwitterImpl;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Uploading Image :: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", message :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 503
    sget-object v0, Lorg/brickred/socialauth/provider/TwitterImpl;->IMAGE_FILE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-nez v0, :cond_0

    .line 504
    new-instance v0, Lorg/brickred/socialauth/exception/SocialAuthException;

    .line 505
    const-string v1, "Twitter supports only PNG, JPG and GIF image formats"

    .line 504
    invoke-direct {v0, v1}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 507
    :cond_0
    const-string v7, "media[]"

    .line 508
    .local v7, "fileNameParam":Ljava/lang/String;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 509
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "status"

    invoke-interface {v3, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    iget-object v0, p0, Lorg/brickred/socialauth/provider/TwitterImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    .line 511
    const-string v1, "https://api.twitter.com/1.1/statuses/update_with_media.json"

    sget-object v2, Lorg/brickred/socialauth/util/MethodType;->POST:Lorg/brickred/socialauth/util/MethodType;

    invoke-virtual {v2}, Lorg/brickred/socialauth/util/MethodType;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    move-object v5, p2

    move-object v6, p3

    .line 510
    invoke-interface/range {v0 .. v7}, Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;->uploadImage(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Lorg/brickred/socialauth/util/Response;

    move-result-object v8

    .line 513
    .local v8, "response":Lorg/brickred/socialauth/util/Response;
    iget-object v0, p0, Lorg/brickred/socialauth/provider/TwitterImpl;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Upload Image status::"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lorg/brickred/socialauth/util/Response;->getStatus()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 514
    return-object v8
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
    .line 177
    .local p1, "requestParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lorg/brickred/socialauth/provider/TwitterImpl;->doVerifyResponse(Ljava/util/Map;)Lorg/brickred/socialauth/Profile;

    move-result-object v0

    return-object v0
.end method
