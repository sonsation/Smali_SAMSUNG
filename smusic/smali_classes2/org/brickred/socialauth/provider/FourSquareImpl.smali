.class public Lorg/brickred/socialauth/provider/FourSquareImpl;
.super Lorg/brickred/socialauth/AbstractProvider;
.source "FourSquareImpl.java"


# static fields
.field private static final CONTACTS_URL:Ljava/lang/String; = "https://api.foursquare.com/v2/users/self/friends?v=20140101"

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

.field private static final FOURSQUARE_VERSION_PARAMETER:Ljava/lang/String; = "v=20140101"

.field private static final PROFILE_URL:Ljava/lang/String; = "https://api.foursquare.com/v2/users/self?v=20140101"

.field private static final VIEW_PROFILE_URL:Ljava/lang/String; = "http://foursquare.com/user/"

.field private static final serialVersionUID:J = 0x2eb0dbb5de343b9eL


# instance fields
.field private final LOG:Lorg/apache/commons/logging/Log;

.field private accessGrant:Lorg/brickred/socialauth/util/AccessGrant;

.field private accessToken:Ljava/lang/String;

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

    sput-object v0, Lorg/brickred/socialauth/provider/FourSquareImpl;->ENDPOINTS:Ljava/util/Map;

    .line 79
    sget-object v0, Lorg/brickred/socialauth/provider/FourSquareImpl;->ENDPOINTS:Ljava/util/Map;

    const-string v1, "authorizationURL"

    .line 80
    const-string v2, "https://foursquare.com/oauth2/authenticate"

    .line 79
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lorg/brickred/socialauth/provider/FourSquareImpl;->ENDPOINTS:Ljava/util/Map;

    const-string v1, "accessTokenURL"

    .line 82
    const-string v2, "https://foursquare.com/oauth2/access_token"

    .line 81
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
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
    .line 93
    invoke-direct {p0}, Lorg/brickred/socialauth/AbstractProvider;-><init>()V

    .line 68
    const-class v0, Lorg/brickred/socialauth/provider/FourSquareImpl;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/brickred/socialauth/provider/FourSquareImpl;->LOG:Lorg/apache/commons/logging/Log;

    .line 94
    iput-object p1, p0, Lorg/brickred/socialauth/provider/FourSquareImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    .line 96
    iget-object v0, p0, Lorg/brickred/socialauth/provider/FourSquareImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v0}, Lorg/brickred/socialauth/util/OAuthConfig;->getAuthenticationUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 97
    sget-object v0, Lorg/brickred/socialauth/provider/FourSquareImpl;->ENDPOINTS:Ljava/util/Map;

    const-string v1, "authorizationURL"

    .line 98
    iget-object v2, p0, Lorg/brickred/socialauth/provider/FourSquareImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v2}, Lorg/brickred/socialauth/util/OAuthConfig;->getAuthenticationUrl()Ljava/lang/String;

    move-result-object v2

    .line 97
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    :goto_0
    iget-object v0, p0, Lorg/brickred/socialauth/provider/FourSquareImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v0}, Lorg/brickred/socialauth/util/OAuthConfig;->getAccessTokenUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 105
    sget-object v0, Lorg/brickred/socialauth/provider/FourSquareImpl;->ENDPOINTS:Ljava/util/Map;

    const-string v1, "accessTokenURL"

    .line 106
    iget-object v2, p0, Lorg/brickred/socialauth/provider/FourSquareImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v2}, Lorg/brickred/socialauth/util/OAuthConfig;->getAccessTokenUrl()Ljava/lang/String;

    move-result-object v2

    .line 105
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    :goto_1
    new-instance v0, Lorg/brickred/socialauth/oauthstrategy/OAuth2;

    iget-object v1, p0, Lorg/brickred/socialauth/provider/FourSquareImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    sget-object v2, Lorg/brickred/socialauth/provider/FourSquareImpl;->ENDPOINTS:Ljava/util/Map;

    invoke-direct {v0, v1, v2}, Lorg/brickred/socialauth/oauthstrategy/OAuth2;-><init>(Lorg/brickred/socialauth/util/OAuthConfig;Ljava/util/Map;)V

    iput-object v0, p0, Lorg/brickred/socialauth/provider/FourSquareImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    .line 113
    iget-object v0, p0, Lorg/brickred/socialauth/provider/FourSquareImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    const-string v1, "oauth_token"

    invoke-interface {v0, v1}, Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;->setAccessTokenParameterName(Ljava/lang/String;)V

    .line 114
    return-void

    .line 100
    :cond_0
    iget-object v1, p0, Lorg/brickred/socialauth/provider/FourSquareImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    sget-object v0, Lorg/brickred/socialauth/provider/FourSquareImpl;->ENDPOINTS:Ljava/util/Map;

    .line 101
    const-string v2, "authorizationURL"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 100
    invoke-virtual {v1, v0}, Lorg/brickred/socialauth/util/OAuthConfig;->setAuthenticationUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 108
    :cond_1
    iget-object v1, p0, Lorg/brickred/socialauth/provider/FourSquareImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    sget-object v0, Lorg/brickred/socialauth/provider/FourSquareImpl;->ENDPOINTS:Ljava/util/Map;

    .line 109
    const-string v2, "accessTokenURL"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 108
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
    .line 162
    .local p1, "requestParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/brickred/socialauth/provider/FourSquareImpl;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "Verifying the authentication response from provider"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 163
    const-string v0, "error"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 164
    const-string v0, "access_denied"

    const-string v1, "error"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    new-instance v0, Lorg/brickred/socialauth/exception/UserDeniedPermissionException;

    invoke-direct {v0}, Lorg/brickred/socialauth/exception/UserDeniedPermissionException;-><init>()V

    throw v0

    .line 168
    :cond_0
    iget-object v0, p0, Lorg/brickred/socialauth/provider/FourSquareImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    invoke-interface {v0, p1}, Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;->verifyResponse(Ljava/util/Map;)Lorg/brickred/socialauth/util/AccessGrant;

    move-result-object v0

    iput-object v0, p0, Lorg/brickred/socialauth/provider/FourSquareImpl;->accessGrant:Lorg/brickred/socialauth/util/AccessGrant;

    .line 169
    iget-object v0, p0, Lorg/brickred/socialauth/provider/FourSquareImpl;->accessGrant:Lorg/brickred/socialauth/util/AccessGrant;

    if-eqz v0, :cond_1

    .line 170
    iget-object v0, p0, Lorg/brickred/socialauth/provider/FourSquareImpl;->accessGrant:Lorg/brickred/socialauth/util/AccessGrant;

    invoke-virtual {v0}, Lorg/brickred/socialauth/util/AccessGrant;->getKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/brickred/socialauth/provider/FourSquareImpl;->accessToken:Ljava/lang/String;

    .line 171
    iget-object v0, p0, Lorg/brickred/socialauth/provider/FourSquareImpl;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "Obtaining user profile"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 172
    invoke-direct {p0}, Lorg/brickred/socialauth/provider/FourSquareImpl;->getProfile()Lorg/brickred/socialauth/Profile;

    move-result-object v0

    return-object v0

    .line 174
    :cond_1
    new-instance v0, Lorg/brickred/socialauth/exception/SocialAuthException;

    const-string v1, "Access token not found"

    invoke-direct {v0, v1}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getProfile()Lorg/brickred/socialauth/Profile;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 179
    iget-object v9, p0, Lorg/brickred/socialauth/provider/FourSquareImpl;->LOG:Lorg/apache/commons/logging/Log;

    const-string v10, "Obtaining user profile"

    invoke-interface {v9, v10}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 180
    new-instance v4, Lorg/brickred/socialauth/Profile;

    invoke-direct {v4}, Lorg/brickred/socialauth/Profile;-><init>()V

    .line 183
    .local v4, "profile":Lorg/brickred/socialauth/Profile;
    :try_start_0
    iget-object v9, p0, Lorg/brickred/socialauth/provider/FourSquareImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    const-string v10, "https://api.foursquare.com/v2/users/self?v=20140101"

    invoke-interface {v9, v10}, Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;->executeFeed(Ljava/lang/String;)Lorg/brickred/socialauth/util/Response;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 191
    .local v7, "serviceResponse":Lorg/brickred/socialauth/util/Response;
    :try_start_1
    const-string v9, "UTF-8"

    invoke-virtual {v7, v9}, Lorg/brickred/socialauth/util/Response;->getResponseBodyAsString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    .line 197
    .local v6, "res":Ljava/lang/String;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 200
    .local v3, "jobj":Lorg/json/JSONObject;
    const-string/jumbo v9, "response"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 201
    const-string/jumbo v9, "response"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 206
    .local v5, "rObj":Lorg/json/JSONObject;
    const-string/jumbo v9, "user"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 207
    const-string/jumbo v9, "user"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 212
    .local v8, "uObj":Lorg/json/JSONObject;
    const-string v9, "id"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 213
    const-string v9, "id"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lorg/brickred/socialauth/Profile;->setValidatedId(Ljava/lang/String;)V

    .line 215
    :cond_0
    const-string v9, "firstName"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 216
    const-string v9, "firstName"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lorg/brickred/socialauth/Profile;->setFirstName(Ljava/lang/String;)V

    .line 218
    :cond_1
    const-string v9, "lastName"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 219
    const-string v9, "lastName"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lorg/brickred/socialauth/Profile;->setLastName(Ljava/lang/String;)V

    .line 221
    :cond_2
    const-string v9, "photo"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 222
    const-string v9, "photo"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lorg/brickred/socialauth/Profile;->setProfileImageURL(Ljava/lang/String;)V

    .line 224
    :cond_3
    const-string v9, "gender"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 225
    const-string v9, "gender"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lorg/brickred/socialauth/Profile;->setGender(Ljava/lang/String;)V

    .line 227
    :cond_4
    const-string v9, "homeCity"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 228
    const-string v9, "homeCity"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lorg/brickred/socialauth/Profile;->setLocation(Ljava/lang/String;)V

    .line 230
    :cond_5
    const-string v9, "contact"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 231
    const-string v9, "contact"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 232
    .local v0, "cobj":Lorg/json/JSONObject;
    const-string v9, "email"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 233
    const-string v9, "email"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lorg/brickred/socialauth/Profile;->setEmail(Ljava/lang/String;)V

    .line 236
    .end local v0    # "cobj":Lorg/json/JSONObject;
    :cond_6
    invoke-virtual {p0}, Lorg/brickred/socialauth/provider/FourSquareImpl;->getProviderId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lorg/brickred/socialauth/Profile;->setProviderId(Ljava/lang/String;)V

    .line 237
    iput-object v4, p0, Lorg/brickred/socialauth/provider/FourSquareImpl;->userProfile:Lorg/brickred/socialauth/Profile;

    .line 238
    return-object v4

    .line 184
    .end local v3    # "jobj":Lorg/json/JSONObject;
    .end local v5    # "rObj":Lorg/json/JSONObject;
    .end local v6    # "res":Ljava/lang/String;
    .end local v7    # "serviceResponse":Lorg/brickred/socialauth/util/Response;
    .end local v8    # "uObj":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 185
    .local v1, "e":Ljava/lang/Exception;
    new-instance v9, Lorg/brickred/socialauth/exception/SocialAuthException;

    .line 186
    const-string v10, "Failed to retrieve the user profile from  https://api.foursquare.com/v2/users/self?v=20140101"

    .line 185
    invoke-direct {v9, v10, v1}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .line 192
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v7    # "serviceResponse":Lorg/brickred/socialauth/util/Response;
    :catch_1
    move-exception v2

    .line 193
    .local v2, "exc":Ljava/lang/Exception;
    new-instance v9, Lorg/brickred/socialauth/exception/SocialAuthException;

    const-string v10, "Failed to read response from  https://api.foursquare.com/v2/users/self?v=20140101"

    invoke-direct {v9, v10, v2}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .line 203
    .end local v2    # "exc":Ljava/lang/Exception;
    .restart local v3    # "jobj":Lorg/json/JSONObject;
    .restart local v6    # "res":Ljava/lang/String;
    :cond_7
    new-instance v9, Lorg/brickred/socialauth/exception/SocialAuthException;

    .line 204
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Failed to parse the user profile json : "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 203
    invoke-direct {v9, v10}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 209
    .restart local v5    # "rObj":Lorg/json/JSONObject;
    :cond_8
    new-instance v9, Lorg/brickred/socialauth/exception/SocialAuthException;

    .line 210
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Failed to parse the user profile json : "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 209
    invoke-direct {v9, v10}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;)V

    throw v9
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
    .line 374
    .local p3, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, "headerParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 375
    .local v7, "response":Lorg/brickred/socialauth/util/Response;
    iget-object v0, p0, Lorg/brickred/socialauth/provider/FourSquareImpl;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Calling URL : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 377
    :try_start_0
    iget-object v0, p0, Lorg/brickred/socialauth/provider/FourSquareImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;->executeFeed(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)Lorg/brickred/socialauth/util/Response;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 383
    return-object v7

    .line 379
    :catch_0
    move-exception v6

    .line 380
    .local v6, "e":Ljava/lang/Exception;
    new-instance v0, Lorg/brickred/socialauth/exception/SocialAuthException;

    .line 381
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error while making request to URL : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 380
    invoke-direct {v0, v1, v6}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getAccessGrant()Lorg/brickred/socialauth/util/AccessGrant;
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lorg/brickred/socialauth/provider/FourSquareImpl;->accessGrant:Lorg/brickred/socialauth/util/AccessGrant;

    return-object v0
.end method

.method public getContactList()Ljava/util/List;
    .locals 17
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
    .line 250
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/brickred/socialauth/provider/FourSquareImpl;->LOG:Lorg/apache/commons/logging/Log;

    const-string v15, "Fetching contacts from https://api.foursquare.com/v2/users/self/friends?v=20140101"

    invoke-interface {v14, v15}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 254
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/brickred/socialauth/provider/FourSquareImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    const-string v15, "https://api.foursquare.com/v2/users/self/friends?v=20140101"

    invoke-interface {v14, v15}, Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;->executeFeed(Ljava/lang/String;)Lorg/brickred/socialauth/util/Response;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v13

    .line 259
    .local v13, "serviceResponse":Lorg/brickred/socialauth/util/Response;
    invoke-virtual {v13}, Lorg/brickred/socialauth/util/Response;->getStatus()I

    move-result v14

    const/16 v15, 0xc8

    if-eq v14, v15, :cond_0

    .line 260
    new-instance v14, Lorg/brickred/socialauth/exception/SocialAuthException;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "Error while getting contacts from https://api.foursquare.com/v2/users/self/friends?v=20140101Status : "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 261
    invoke-virtual {v13}, Lorg/brickred/socialauth/util/Response;->getStatus()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 260
    invoke-direct {v14, v15}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 255
    .end local v13    # "serviceResponse":Lorg/brickred/socialauth/util/Response;
    :catch_0
    move-exception v2

    .line 256
    .local v2, "e":Ljava/lang/Exception;
    new-instance v14, Lorg/brickred/socialauth/exception/SocialAuthException;

    const-string v15, "Error while getting contacts from https://api.foursquare.com/v2/users/self/friends?v=20140101"

    invoke-direct {v14, v15, v2}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v14

    .line 266
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v13    # "serviceResponse":Lorg/brickred/socialauth/util/Response;
    :cond_0
    :try_start_1
    const-string v14, "UTF-8"

    invoke-virtual {v13, v14}, Lorg/brickred/socialauth/util/Response;->getResponseBodyAsString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v11

    .line 271
    .local v11, "respStr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/brickred/socialauth/provider/FourSquareImpl;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "User Contacts list in JSON "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 272
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 273
    .local v10, "resp":Lorg/json/JSONObject;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 274
    .local v9, "plist":Ljava/util/List;, "Ljava/util/List<Lorg/brickred/socialauth/Contact;>;"
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 275
    .local v6, "items":Lorg/json/JSONArray;
    const-string/jumbo v14, "response"

    invoke-virtual {v10, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 276
    const-string/jumbo v14, "response"

    invoke-virtual {v10, v14}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    .line 277
    .local v12, "robj":Lorg/json/JSONObject;
    const-string v14, "friends"

    invoke-virtual {v12, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 278
    const-string v14, "friends"

    invoke-virtual {v12, v14}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 279
    .local v4, "fobj":Lorg/json/JSONObject;
    const-string v14, "items"

    invoke-virtual {v4, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 280
    const-string v14, "items"

    invoke-virtual {v4, v14}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 290
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/brickred/socialauth/provider/FourSquareImpl;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "Contacts Found : "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 291
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-lt v5, v14, :cond_4

    .line 313
    return-object v9

    .line 267
    .end local v4    # "fobj":Lorg/json/JSONObject;
    .end local v5    # "i":I
    .end local v6    # "items":Lorg/json/JSONArray;
    .end local v9    # "plist":Ljava/util/List;, "Ljava/util/List<Lorg/brickred/socialauth/Contact;>;"
    .end local v10    # "resp":Lorg/json/JSONObject;
    .end local v11    # "respStr":Ljava/lang/String;
    .end local v12    # "robj":Lorg/json/JSONObject;
    :catch_1
    move-exception v3

    .line 268
    .local v3, "exc":Ljava/lang/Exception;
    new-instance v14, Lorg/brickred/socialauth/exception/SocialAuthException;

    const-string v15, "Failed to read response from  https://api.foursquare.com/v2/users/self/friends?v=20140101"

    invoke-direct {v14, v15, v3}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v14

    .line 283
    .end local v3    # "exc":Ljava/lang/Exception;
    .restart local v6    # "items":Lorg/json/JSONArray;
    .restart local v9    # "plist":Ljava/util/List;, "Ljava/util/List<Lorg/brickred/socialauth/Contact;>;"
    .restart local v10    # "resp":Lorg/json/JSONObject;
    .restart local v11    # "respStr":Ljava/lang/String;
    .restart local v12    # "robj":Lorg/json/JSONObject;
    :cond_2
    new-instance v14, Lorg/brickred/socialauth/exception/SocialAuthException;

    .line 284
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "Failed to parse the user profile json : "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 283
    invoke-direct {v14, v15}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 287
    .end local v12    # "robj":Lorg/json/JSONObject;
    :cond_3
    new-instance v14, Lorg/brickred/socialauth/exception/SocialAuthException;

    .line 288
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "Failed to parse the user profile json : "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 287
    invoke-direct {v14, v15}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 292
    .restart local v4    # "fobj":Lorg/json/JSONObject;
    .restart local v5    # "i":I
    .restart local v12    # "robj":Lorg/json/JSONObject;
    :cond_4
    invoke-virtual {v6, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 293
    .local v7, "obj":Lorg/json/JSONObject;
    new-instance v1, Lorg/brickred/socialauth/Contact;

    invoke-direct {v1}, Lorg/brickred/socialauth/Contact;-><init>()V

    .line 294
    .local v1, "c":Lorg/brickred/socialauth/Contact;
    const-string v14, "firstName"

    invoke-virtual {v7, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 295
    const-string v14, "firstName"

    invoke-virtual {v7, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Lorg/brickred/socialauth/Contact;->setFirstName(Ljava/lang/String;)V

    .line 297
    :cond_5
    const-string v14, "lastName"

    invoke-virtual {v7, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 298
    const-string v14, "lastName"

    invoke-virtual {v7, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Lorg/brickred/socialauth/Contact;->setLastName(Ljava/lang/String;)V

    .line 300
    :cond_6
    const-string v14, "id"

    invoke-virtual {v7, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 301
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "http://foursquare.com/user/"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, "id"

    invoke-virtual {v7, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Lorg/brickred/socialauth/Contact;->setProfileUrl(Ljava/lang/String;)V

    .line 302
    const-string v14, "id"

    invoke-virtual {v7, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Lorg/brickred/socialauth/Contact;->setId(Ljava/lang/String;)V

    .line 304
    :cond_7
    const-string v14, "photo"

    invoke-virtual {v7, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 305
    const-string v14, "photo"

    invoke-virtual {v7, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 306
    .local v8, "photo":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v14

    const/4 v15, 0x1

    if-le v14, v15, :cond_8

    .line 307
    invoke-virtual {v1, v8}, Lorg/brickred/socialauth/Contact;->setProfileImageURL(Ljava/lang/String;)V

    .line 310
    .end local v8    # "photo":Ljava/lang/String;
    :cond_8
    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    add-int/lit8 v5, v5, 0x1

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
    .line 141
    iget-object v0, p0, Lorg/brickred/socialauth/provider/FourSquareImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    invoke-interface {v0, p1}, Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;->getLoginRedirectURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getOauthStrategy()Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lorg/brickred/socialauth/provider/FourSquareImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

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
    .line 419
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 420
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lorg/brickred/socialauth/provider/FourSquareImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v1}, Lorg/brickred/socialauth/util/OAuthConfig;->getRegisteredPlugins()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 421
    iget-object v1, p0, Lorg/brickred/socialauth/provider/FourSquareImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v1}, Lorg/brickred/socialauth/util/OAuthConfig;->getRegisteredPlugins()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_0

    .line 422
    iget-object v1, p0, Lorg/brickred/socialauth/provider/FourSquareImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v1}, Lorg/brickred/socialauth/util/OAuthConfig;->getRegisteredPlugins()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 424
    :cond_0
    return-object v0
.end method

.method public getProviderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lorg/brickred/socialauth/provider/FourSquareImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

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
    .line 393
    iget-object v0, p0, Lorg/brickred/socialauth/provider/FourSquareImpl;->userProfile:Lorg/brickred/socialauth/Profile;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/brickred/socialauth/provider/FourSquareImpl;->accessToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 394
    invoke-direct {p0}, Lorg/brickred/socialauth/provider/FourSquareImpl;->getProfile()Lorg/brickred/socialauth/Profile;

    .line 396
    :cond_0
    iget-object v0, p0, Lorg/brickred/socialauth/provider/FourSquareImpl;->userProfile:Lorg/brickred/socialauth/Profile;

    return-object v0
.end method

.method public logout()V
    .locals 1

    .prologue
    .line 336
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/brickred/socialauth/provider/FourSquareImpl;->accessToken:Ljava/lang/String;

    .line 337
    iget-object v0, p0, Lorg/brickred/socialauth/provider/FourSquareImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    invoke-interface {v0}, Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;->logout()V

    .line 338
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
    .line 126
    iput-object p1, p0, Lorg/brickred/socialauth/provider/FourSquareImpl;->accessGrant:Lorg/brickred/socialauth/util/AccessGrant;

    .line 127
    invoke-virtual {p1}, Lorg/brickred/socialauth/util/AccessGrant;->getKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/brickred/socialauth/provider/FourSquareImpl;->accessToken:Ljava/lang/String;

    .line 128
    iget-object v0, p0, Lorg/brickred/socialauth/provider/FourSquareImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    invoke-interface {v0, p1}, Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;->setAccessGrant(Lorg/brickred/socialauth/util/AccessGrant;)V

    .line 129
    return-void
.end method

.method public setPermission(Lorg/brickred/socialauth/Permission;)V
    .locals 3
    .param p1, "p"    # Lorg/brickred/socialauth/Permission;

    .prologue
    .line 348
    iget-object v0, p0, Lorg/brickred/socialauth/provider/FourSquareImpl;->LOG:Lorg/apache/commons/logging/Log;

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

    .line 349
    iput-object p1, p0, Lorg/brickred/socialauth/provider/FourSquareImpl;->scope:Lorg/brickred/socialauth/Permission;

    .line 350
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
    .line 326
    iget-object v0, p0, Lorg/brickred/socialauth/provider/FourSquareImpl;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "WARNING: Not implemented for FourSquare"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 327
    new-instance v0, Lorg/brickred/socialauth/exception/SocialAuthException;

    .line 328
    const-string v1, "Update Status is not implemented for FourSquare"

    .line 327
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
    .line 412
    iget-object v0, p0, Lorg/brickred/socialauth/provider/FourSquareImpl;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "WARNING: Not implemented for FourSquare"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 413
    new-instance v0, Lorg/brickred/socialauth/exception/SocialAuthException;

    .line 414
    const-string v1, "Update Status is not implemented for FourSquare"

    .line 413
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
    .line 157
    .local p1, "requestParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lorg/brickred/socialauth/provider/FourSquareImpl;->doVerifyResponse(Ljava/util/Map;)Lorg/brickred/socialauth/Profile;

    move-result-object v0

    return-object v0
.end method
