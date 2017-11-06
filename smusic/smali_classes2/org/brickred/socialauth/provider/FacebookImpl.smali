.class public Lorg/brickred/socialauth/provider/FacebookImpl;
.super Lorg/brickred/socialauth/AbstractProvider;
.source "FacebookImpl.java"


# static fields
.field private static final AllPerms:[Ljava/lang/String;

.field private static final AuthPerms:[Ljava/lang/String;

.field private static final CONTACTS_URL:Ljava/lang/String; = "https://graph.facebook.com/me/friends"

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

.field private static final IMAGE_UPLOAD_URL:Ljava/lang/String; = "https://graph.facebook.com/me/photos"

.field private static final PROFILE_IMAGE_URL:Ljava/lang/String; = "http://graph.facebook.com/%1$s/picture"

.field private static final PROFILE_URL:Ljava/lang/String; = "https://graph.facebook.com/me"

.field private static final PUBLIC_PROFILE_URL:Ljava/lang/String; = "http://www.facebook.com/profile.php?id="

.field private static final UPDATE_STATUS_URL:Ljava/lang/String; = "https://graph.facebook.com/me/feed"

.field private static final serialVersionUID:J = 0x77f7788edc2fa038L


# instance fields
.field private final LOG:Lorg/apache/commons/logging/Log;

.field private accessGrant:Lorg/brickred/socialauth/util/AccessGrant;

.field private authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

.field private config:Lorg/brickred/socialauth/util/OAuthConfig;

.field private scope:Lorg/brickred/socialauth/Permission;

.field private userProfile:Lorg/brickred/socialauth/Profile;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 83
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "publish_stream"

    aput-object v1, v0, v3

    .line 84
    const-string v1, "email"

    aput-object v1, v0, v4

    const-string/jumbo v1, "user_birthday"

    aput-object v1, v0, v5

    const-string/jumbo v1, "user_location"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string/jumbo v2, "user_photos"

    aput-object v2, v0, v1

    .line 83
    sput-object v0, Lorg/brickred/socialauth/provider/FacebookImpl;->AllPerms:[Ljava/lang/String;

    .line 85
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "email"

    aput-object v1, v0, v3

    .line 86
    const-string/jumbo v1, "user_birthday"

    aput-object v1, v0, v4

    const-string/jumbo v1, "user_location"

    aput-object v1, v0, v5

    .line 85
    sput-object v0, Lorg/brickred/socialauth/provider/FacebookImpl;->AuthPerms:[Ljava/lang/String;

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/brickred/socialauth/provider/FacebookImpl;->ENDPOINTS:Ljava/util/Map;

    .line 90
    sget-object v0, Lorg/brickred/socialauth/provider/FacebookImpl;->ENDPOINTS:Ljava/util/Map;

    const-string v1, "authorizationURL"

    .line 91
    const-string v2, "https://graph.facebook.com/oauth/authorize"

    .line 90
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lorg/brickred/socialauth/provider/FacebookImpl;->ENDPOINTS:Ljava/util/Map;

    const-string v1, "accessTokenURL"

    .line 93
    const-string v2, "https://graph.facebook.com/oauth/access_token"

    .line 92
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
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
    .line 104
    invoke-direct {p0}, Lorg/brickred/socialauth/AbstractProvider;-><init>()V

    .line 74
    const-class v0, Lorg/brickred/socialauth/provider/FacebookImpl;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/brickred/socialauth/provider/FacebookImpl;->LOG:Lorg/apache/commons/logging/Log;

    .line 105
    iput-object p1, p0, Lorg/brickred/socialauth/provider/FacebookImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    .line 106
    iget-object v0, p0, Lorg/brickred/socialauth/provider/FacebookImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v0}, Lorg/brickred/socialauth/util/OAuthConfig;->getCustomPermissions()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 107
    sget-object v0, Lorg/brickred/socialauth/Permission;->CUSTOM:Lorg/brickred/socialauth/Permission;

    iput-object v0, p0, Lorg/brickred/socialauth/provider/FacebookImpl;->scope:Lorg/brickred/socialauth/Permission;

    .line 110
    :cond_0
    iget-object v0, p0, Lorg/brickred/socialauth/provider/FacebookImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v0}, Lorg/brickred/socialauth/util/OAuthConfig;->getAuthenticationUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 111
    sget-object v0, Lorg/brickred/socialauth/provider/FacebookImpl;->ENDPOINTS:Ljava/util/Map;

    const-string v1, "authorizationURL"

    .line 112
    iget-object v2, p0, Lorg/brickred/socialauth/provider/FacebookImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v2}, Lorg/brickred/socialauth/util/OAuthConfig;->getAuthenticationUrl()Ljava/lang/String;

    move-result-object v2

    .line 111
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    :goto_0
    iget-object v0, p0, Lorg/brickred/socialauth/provider/FacebookImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v0}, Lorg/brickred/socialauth/util/OAuthConfig;->getAccessTokenUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 119
    sget-object v0, Lorg/brickred/socialauth/provider/FacebookImpl;->ENDPOINTS:Ljava/util/Map;

    const-string v1, "accessTokenURL"

    .line 120
    iget-object v2, p0, Lorg/brickred/socialauth/provider/FacebookImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v2}, Lorg/brickred/socialauth/util/OAuthConfig;->getAccessTokenUrl()Ljava/lang/String;

    move-result-object v2

    .line 119
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    :goto_1
    new-instance v0, Lorg/brickred/socialauth/oauthstrategy/OAuth2;

    iget-object v1, p0, Lorg/brickred/socialauth/provider/FacebookImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    sget-object v2, Lorg/brickred/socialauth/provider/FacebookImpl;->ENDPOINTS:Ljava/util/Map;

    invoke-direct {v0, v1, v2}, Lorg/brickred/socialauth/oauthstrategy/OAuth2;-><init>(Lorg/brickred/socialauth/util/OAuthConfig;Ljava/util/Map;)V

    iput-object v0, p0, Lorg/brickred/socialauth/provider/FacebookImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    .line 126
    iget-object v0, p0, Lorg/brickred/socialauth/provider/FacebookImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    iget-object v1, p0, Lorg/brickred/socialauth/provider/FacebookImpl;->scope:Lorg/brickred/socialauth/Permission;

    invoke-interface {v0, v1}, Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;->setPermission(Lorg/brickred/socialauth/Permission;)V

    .line 127
    iget-object v0, p0, Lorg/brickred/socialauth/provider/FacebookImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    invoke-direct {p0}, Lorg/brickred/socialauth/provider/FacebookImpl;->getScope()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;->setScope(Ljava/lang/String;)V

    .line 128
    return-void

    .line 114
    :cond_1
    iget-object v1, p0, Lorg/brickred/socialauth/provider/FacebookImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    sget-object v0, Lorg/brickred/socialauth/provider/FacebookImpl;->ENDPOINTS:Ljava/util/Map;

    .line 115
    const-string v2, "authorizationURL"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 114
    invoke-virtual {v1, v0}, Lorg/brickred/socialauth/util/OAuthConfig;->setAuthenticationUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 122
    :cond_2
    iget-object v1, p0, Lorg/brickred/socialauth/provider/FacebookImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    sget-object v0, Lorg/brickred/socialauth/provider/FacebookImpl;->ENDPOINTS:Ljava/util/Map;

    .line 123
    const-string v2, "accessTokenURL"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 122
    invoke-virtual {v1, v0}, Lorg/brickred/socialauth/util/OAuthConfig;->setAccessTokenUrl(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private authFacebookLogin()Lorg/brickred/socialauth/Profile;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 202
    :try_start_0
    iget-object v11, p0, Lorg/brickred/socialauth/provider/FacebookImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    const-string v12, "https://graph.facebook.com/me"

    invoke-interface {v11, v12}, Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;->executeFeed(Ljava/lang/String;)Lorg/brickred/socialauth/util/Response;

    move-result-object v10

    .line 203
    .local v10, "response":Lorg/brickred/socialauth/util/Response;
    const-string v11, "UTF-8"

    invoke-virtual {v10, v11}, Lorg/brickred/socialauth/util/Response;->getResponseBodyAsString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 209
    .local v8, "presp":Ljava/lang/String;
    :try_start_1
    iget-object v11, p0, Lorg/brickred/socialauth/provider/FacebookImpl;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "User Profile : "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 210
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 211
    .local v9, "resp":Lorg/json/JSONObject;
    new-instance v7, Lorg/brickred/socialauth/Profile;

    invoke-direct {v7}, Lorg/brickred/socialauth/Profile;-><init>()V

    .line 212
    .local v7, "p":Lorg/brickred/socialauth/Profile;
    const-string v11, "id"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Lorg/brickred/socialauth/Profile;->setValidatedId(Ljava/lang/String;)V

    .line 213
    const-string v11, "name"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 214
    const-string v11, "name"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Lorg/brickred/socialauth/Profile;->setFullName(Ljava/lang/String;)V

    .line 216
    :cond_0
    const-string v11, "first_name"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 217
    const-string v11, "first_name"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Lorg/brickred/socialauth/Profile;->setFirstName(Ljava/lang/String;)V

    .line 219
    :cond_1
    const-string v11, "last_name"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 220
    const-string v11, "last_name"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Lorg/brickred/socialauth/Profile;->setLastName(Ljava/lang/String;)V

    .line 222
    :cond_2
    const-string v11, "email"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 223
    const-string v11, "email"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Lorg/brickred/socialauth/Profile;->setEmail(Ljava/lang/String;)V

    .line 225
    :cond_3
    const-string v11, "location"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 226
    const-string v11, "location"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    const-string v12, "name"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Lorg/brickred/socialauth/Profile;->setLocation(Ljava/lang/String;)V

    .line 228
    :cond_4
    const-string v11, "birthday"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 229
    const-string v11, "birthday"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 230
    .local v3, "bstr":Ljava/lang/String;
    const-string v11, "/"

    invoke-virtual {v3, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 231
    .local v1, "arr":[Ljava/lang/String;
    new-instance v2, Lorg/brickred/socialauth/util/BirthDate;

    invoke-direct {v2}, Lorg/brickred/socialauth/util/BirthDate;-><init>()V

    .line 232
    .local v2, "bd":Lorg/brickred/socialauth/util/BirthDate;
    array-length v11, v1

    if-lez v11, :cond_5

    .line 233
    const/4 v11, 0x0

    aget-object v11, v1, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v2, v11}, Lorg/brickred/socialauth/util/BirthDate;->setMonth(I)V

    .line 235
    :cond_5
    array-length v11, v1

    const/4 v12, 0x1

    if-le v11, v12, :cond_6

    .line 236
    const/4 v11, 0x1

    aget-object v11, v1, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v2, v11}, Lorg/brickred/socialauth/util/BirthDate;->setDay(I)V

    .line 238
    :cond_6
    array-length v11, v1

    const/4 v12, 0x2

    if-le v11, v12, :cond_7

    .line 239
    const/4 v11, 0x2

    aget-object v11, v1, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v2, v11}, Lorg/brickred/socialauth/util/BirthDate;->setYear(I)V

    .line 241
    :cond_7
    invoke-virtual {v7, v2}, Lorg/brickred/socialauth/Profile;->setDob(Lorg/brickred/socialauth/util/BirthDate;)V

    .line 243
    .end local v1    # "arr":[Ljava/lang/String;
    .end local v2    # "bd":Lorg/brickred/socialauth/util/BirthDate;
    .end local v3    # "bstr":Ljava/lang/String;
    :cond_8
    const-string v11, "gender"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 244
    const-string v11, "gender"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Lorg/brickred/socialauth/Profile;->setGender(Ljava/lang/String;)V

    .line 246
    :cond_9
    const-string v11, "http://graph.facebook.com/%1$s/picture"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    .line 247
    const-string v14, "id"

    invoke-virtual {v9, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    .line 246
    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Lorg/brickred/socialauth/Profile;->setProfileImageURL(Ljava/lang/String;)V

    .line 248
    const-string v11, "locale"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 249
    .local v6, "locale":Ljava/lang/String;
    if-eqz v6, :cond_a

    .line 250
    const-string v11, "_"

    invoke-virtual {v6, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 251
    .local v0, "a":[Ljava/lang/String;
    const/4 v11, 0x0

    aget-object v11, v0, v11

    invoke-virtual {v7, v11}, Lorg/brickred/socialauth/Profile;->setLanguage(Ljava/lang/String;)V

    .line 252
    const/4 v11, 0x1

    aget-object v11, v0, v11

    invoke-virtual {v7, v11}, Lorg/brickred/socialauth/Profile;->setCountry(Ljava/lang/String;)V

    .line 254
    .end local v0    # "a":[Ljava/lang/String;
    :cond_a
    invoke-virtual {p0}, Lorg/brickred/socialauth/provider/FacebookImpl;->getProviderId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Lorg/brickred/socialauth/Profile;->setProviderId(Ljava/lang/String;)V

    .line 255
    iput-object v7, p0, Lorg/brickred/socialauth/provider/FacebookImpl;->userProfile:Lorg/brickred/socialauth/Profile;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 256
    return-object v7

    .line 204
    .end local v6    # "locale":Ljava/lang/String;
    .end local v7    # "p":Lorg/brickred/socialauth/Profile;
    .end local v8    # "presp":Ljava/lang/String;
    .end local v9    # "resp":Lorg/json/JSONObject;
    .end local v10    # "response":Lorg/brickred/socialauth/util/Response;
    :catch_0
    move-exception v4

    .line 205
    .local v4, "e":Ljava/lang/Exception;
    new-instance v11, Lorg/brickred/socialauth/exception/SocialAuthException;

    const-string v12, "Error while getting profile from https://graph.facebook.com/me"

    invoke-direct {v11, v12, v4}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v11

    .line 258
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v8    # "presp":Ljava/lang/String;
    .restart local v10    # "response":Lorg/brickred/socialauth/util/Response;
    :catch_1
    move-exception v5

    .line 259
    .local v5, "ex":Ljava/lang/Exception;
    new-instance v11, Lorg/brickred/socialauth/exception/ServerDataException;

    .line 260
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Failed to parse the user profile json : "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 259
    invoke-direct {v11, v12, v5}, Lorg/brickred/socialauth/exception/ServerDataException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v11
.end method

.method private checkTokenExpiry(Lorg/brickred/socialauth/util/Response;)V
    .locals 8
    .param p1, "response"    # Lorg/brickred/socialauth/util/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/brickred/socialauth/exception/AccessTokenExpireException;,
            Lorg/brickred/socialauth/exception/SocialAuthException;
        }
    .end annotation

    .prologue
    .line 487
    invoke-virtual {p1}, Lorg/brickred/socialauth/util/Response;->getStatus()I

    move-result v5

    const/16 v6, 0x190

    if-ne v5, v6, :cond_1

    .line 490
    :try_start_0
    const-string v5, "UTF-8"

    invoke-virtual {p1, v5}, Lorg/brickred/socialauth/util/Response;->getErrorStreamAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 491
    .local v4, "respStr":Ljava/lang/String;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 498
    .local v3, "resp":Lorg/json/JSONObject;
    const-string v5, "error"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 499
    const-string v5, "error"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 500
    .local v1, "error":Lorg/json/JSONObject;
    const-string v5, "message"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 501
    .local v2, "message":Ljava/lang/String;
    iget-object v5, p0, Lorg/brickred/socialauth/provider/FacebookImpl;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Error message :: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 502
    if-eqz v2, :cond_0

    .line 503
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 505
    :cond_0
    const-string/jumbo v5, "session has expired"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 506
    new-instance v5, Lorg/brickred/socialauth/exception/AccessTokenExpireException;

    invoke-direct {v5}, Lorg/brickred/socialauth/exception/AccessTokenExpireException;-><init>()V

    throw v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 514
    .end local v1    # "error":Lorg/json/JSONObject;
    .end local v2    # "message":Ljava/lang/String;
    .end local v3    # "resp":Lorg/json/JSONObject;
    .end local v4    # "respStr":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 515
    .local v0, "e":Ljava/lang/Exception;
    const-class v5, Lorg/brickred/socialauth/exception/AccessTokenExpireException;

    invoke-virtual {v5, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 516
    new-instance v5, Lorg/brickred/socialauth/exception/AccessTokenExpireException;

    invoke-direct {v5}, Lorg/brickred/socialauth/exception/AccessTokenExpireException;-><init>()V

    .line 522
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    return-void

    .line 508
    .restart local v1    # "error":Lorg/json/JSONObject;
    .restart local v2    # "message":Ljava/lang/String;
    .restart local v3    # "resp":Lorg/json/JSONObject;
    .restart local v4    # "respStr":Ljava/lang/String;
    :cond_2
    :try_start_1
    new-instance v5, Lorg/brickred/socialauth/exception/SocialAuthException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Message :: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 511
    .end local v1    # "error":Lorg/json/JSONObject;
    .end local v2    # "message":Ljava/lang/String;
    :cond_3
    new-instance v5, Lorg/brickred/socialauth/exception/SocialAuthException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Message :: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 517
    .end local v3    # "resp":Lorg/json/JSONObject;
    .end local v4    # "respStr":Ljava/lang/String;
    .restart local v0    # "e":Ljava/lang/Exception;
    :cond_4
    const-class v5, Lorg/brickred/socialauth/exception/SocialAuthException;

    invoke-virtual {v5, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 518
    new-instance v5, Lorg/brickred/socialauth/exception/SocialAuthException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;)V

    throw v5
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
    .line 183
    .local p1, "requestParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/brickred/socialauth/provider/FacebookImpl;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "Retrieving Access Token in verify response function"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 184
    const-string v0, "error_reason"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 185
    const-string/jumbo v0, "user_denied"

    const-string v1, "error_reason"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    new-instance v0, Lorg/brickred/socialauth/exception/UserDeniedPermissionException;

    invoke-direct {v0}, Lorg/brickred/socialauth/exception/UserDeniedPermissionException;-><init>()V

    throw v0

    .line 188
    :cond_0
    iget-object v0, p0, Lorg/brickred/socialauth/provider/FacebookImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    invoke-interface {v0, p1}, Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;->verifyResponse(Ljava/util/Map;)Lorg/brickred/socialauth/util/AccessGrant;

    move-result-object v0

    iput-object v0, p0, Lorg/brickred/socialauth/provider/FacebookImpl;->accessGrant:Lorg/brickred/socialauth/util/AccessGrant;

    .line 190
    iget-object v0, p0, Lorg/brickred/socialauth/provider/FacebookImpl;->accessGrant:Lorg/brickred/socialauth/util/AccessGrant;

    if-eqz v0, :cond_1

    .line 191
    iget-object v0, p0, Lorg/brickred/socialauth/provider/FacebookImpl;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "Obtaining user profile"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 192
    invoke-direct {p0}, Lorg/brickred/socialauth/provider/FacebookImpl;->authFacebookLogin()Lorg/brickred/socialauth/Profile;

    move-result-object v0

    return-object v0

    .line 194
    :cond_1
    new-instance v0, Lorg/brickred/socialauth/exception/SocialAuthException;

    const-string v1, "Access token not found"

    invoke-direct {v0, v1}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getScope()Ljava/lang/String;
    .locals 6

    .prologue
    .line 447
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 448
    .local v3, "result":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .line 449
    .local v0, "arr":[Ljava/lang/String;
    sget-object v4, Lorg/brickred/socialauth/Permission;->AUTHENTICATE_ONLY:Lorg/brickred/socialauth/Permission;

    iget-object v5, p0, Lorg/brickred/socialauth/provider/FacebookImpl;->scope:Lorg/brickred/socialauth/Permission;

    invoke-virtual {v4, v5}, Lorg/brickred/socialauth/Permission;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 450
    sget-object v0, Lorg/brickred/socialauth/provider/FacebookImpl;->AuthPerms:[Ljava/lang/String;

    .line 457
    :goto_0
    const/4 v4, 0x0

    aget-object v4, v0, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 458
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    array-length v4, v0

    if-lt v1, v4, :cond_3

    .line 461
    iget-object v4, p0, Lorg/brickred/socialauth/provider/FacebookImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {p0, v4}, Lorg/brickred/socialauth/provider/FacebookImpl;->getPluginsScope(Lorg/brickred/socialauth/util/OAuthConfig;)Ljava/lang/String;

    move-result-object v2

    .line 462
    .local v2, "pluginScopes":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 463
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 465
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 451
    .end local v1    # "i":I
    .end local v2    # "pluginScopes":Ljava/lang/String;
    :cond_1
    sget-object v4, Lorg/brickred/socialauth/Permission;->CUSTOM:Lorg/brickred/socialauth/Permission;

    iget-object v5, p0, Lorg/brickred/socialauth/provider/FacebookImpl;->scope:Lorg/brickred/socialauth/Permission;

    invoke-virtual {v4, v5}, Lorg/brickred/socialauth/Permission;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 452
    iget-object v4, p0, Lorg/brickred/socialauth/provider/FacebookImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v4}, Lorg/brickred/socialauth/util/OAuthConfig;->getCustomPermissions()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 453
    iget-object v4, p0, Lorg/brickred/socialauth/provider/FacebookImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v4}, Lorg/brickred/socialauth/util/OAuthConfig;->getCustomPermissions()Ljava/lang/String;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 454
    goto :goto_0

    .line 455
    :cond_2
    sget-object v0, Lorg/brickred/socialauth/provider/FacebookImpl;->AllPerms:[Ljava/lang/String;

    goto :goto_0

    .line 459
    .restart local v1    # "i":I
    :cond_3
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    aget-object v5, v0, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 458
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
    .line 397
    .local p3, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, "headerParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/brickred/socialauth/provider/FacebookImpl;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Calling api function for url\t:\t"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 398
    const/4 v7, 0x0

    .line 400
    .local v7, "response":Lorg/brickred/socialauth/util/Response;
    :try_start_0
    iget-object v0, p0, Lorg/brickred/socialauth/provider/FacebookImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;->executeFeed(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)Lorg/brickred/socialauth/util/Response;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 406
    return-object v7

    .line 402
    :catch_0
    move-exception v6

    .line 403
    .local v6, "e":Ljava/lang/Exception;
    new-instance v0, Lorg/brickred/socialauth/exception/SocialAuthException;

    .line 404
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error while making request to URL : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 403
    invoke-direct {v0, v1, v6}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getAccessGrant()Lorg/brickred/socialauth/util/AccessGrant;
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lorg/brickred/socialauth/provider/FacebookImpl;->accessGrant:Lorg/brickred/socialauth/util/AccessGrant;

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
    .line 310
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 311
    .local v7, "plist":Ljava/util/List;, "Ljava/util/List<Lorg/brickred/socialauth/Contact;>;"
    iget-object v11, p0, Lorg/brickred/socialauth/provider/FacebookImpl;->LOG:Lorg/apache/commons/logging/Log;

    const-string v12, "Fetching contacts from https://graph.facebook.com/me/friends"

    invoke-interface {v11, v12}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 314
    :try_start_0
    iget-object v11, p0, Lorg/brickred/socialauth/provider/FacebookImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    .line 315
    const-string v12, "https://graph.facebook.com/me/friends"

    invoke-interface {v11, v12}, Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;->executeFeed(Ljava/lang/String;)Lorg/brickred/socialauth/util/Response;

    move-result-object v10

    .line 316
    .local v10, "response":Lorg/brickred/socialauth/util/Response;
    const-string v11, "UTF-8"

    invoke-virtual {v10, v11}, Lorg/brickred/socialauth/util/Response;->getResponseBodyAsString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 322
    .local v9, "respStr":Ljava/lang/String;
    :try_start_1
    iget-object v11, p0, Lorg/brickred/socialauth/provider/FacebookImpl;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "User Contacts list in json : "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 323
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 324
    .local v8, "resp":Lorg/json/JSONObject;
    const-string v11, "data"

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 325
    .local v0, "data":Lorg/json/JSONArray;
    iget-object v11, p0, Lorg/brickred/socialauth/provider/FacebookImpl;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Found contacts : "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 326
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v11

    if-lt v2, v11, :cond_0

    .line 350
    return-object v7

    .line 317
    .end local v0    # "data":Lorg/json/JSONArray;
    .end local v2    # "i":I
    .end local v8    # "resp":Lorg/json/JSONObject;
    .end local v9    # "respStr":Ljava/lang/String;
    .end local v10    # "response":Lorg/brickred/socialauth/util/Response;
    :catch_0
    move-exception v1

    .line 318
    .local v1, "e":Ljava/lang/Exception;
    new-instance v11, Lorg/brickred/socialauth/exception/SocialAuthException;

    const-string v12, "Error while getting contacts from https://graph.facebook.com/me/friends"

    invoke-direct {v11, v12, v1}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v11

    .line 327
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "data":Lorg/json/JSONArray;
    .restart local v2    # "i":I
    .restart local v8    # "resp":Lorg/json/JSONObject;
    .restart local v9    # "respStr":Ljava/lang/String;
    .restart local v10    # "response":Lorg/brickred/socialauth/util/Response;
    :cond_0
    :try_start_2
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 328
    .local v5, "obj":Lorg/json/JSONObject;
    new-instance v6, Lorg/brickred/socialauth/Contact;

    invoke-direct {v6}, Lorg/brickred/socialauth/Contact;-><init>()V

    .line 329
    .local v6, "p":Lorg/brickred/socialauth/Contact;
    const-string v11, "name"

    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 330
    .local v3, "name":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 331
    const-string v11, " "

    invoke-virtual {v3, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 332
    .local v4, "nameArr":[Ljava/lang/String;
    array-length v11, v4

    const/4 v12, 0x1

    if-le v11, v12, :cond_2

    .line 333
    const/4 v11, 0x0

    aget-object v11, v4, v11

    invoke-virtual {v6, v11}, Lorg/brickred/socialauth/Contact;->setFirstName(Ljava/lang/String;)V

    .line 334
    const/4 v11, 0x1

    aget-object v11, v4, v11

    invoke-virtual {v6, v11}, Lorg/brickred/socialauth/Contact;->setLastName(Ljava/lang/String;)V

    .line 338
    :goto_1
    invoke-virtual {v6, v3}, Lorg/brickred/socialauth/Contact;->setDisplayName(Ljava/lang/String;)V

    .line 340
    .end local v4    # "nameArr":[Ljava/lang/String;
    :cond_1
    const-string v11, "id"

    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Lorg/brickred/socialauth/Contact;->setId(Ljava/lang/String;)V

    .line 341
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "http://www.facebook.com/profile.php?id="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "id"

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Lorg/brickred/socialauth/Contact;->setProfileUrl(Ljava/lang/String;)V

    .line 342
    const-string v11, "http://graph.facebook.com/%1$s/picture"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    .line 343
    const-string v14, "id"

    invoke-virtual {v5, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    .line 342
    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Lorg/brickred/socialauth/Contact;->setProfileImageURL(Ljava/lang/String;)V

    .line 344
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 326
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 336
    .restart local v4    # "nameArr":[Ljava/lang/String;
    :cond_2
    const-string v11, "name"

    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Lorg/brickred/socialauth/Contact;->setFirstName(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 346
    .end local v0    # "data":Lorg/json/JSONArray;
    .end local v2    # "i":I
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "nameArr":[Ljava/lang/String;
    .end local v5    # "obj":Lorg/json/JSONObject;
    .end local v6    # "p":Lorg/brickred/socialauth/Contact;
    .end local v8    # "resp":Lorg/json/JSONObject;
    :catch_1
    move-exception v1

    .line 347
    .restart local v1    # "e":Ljava/lang/Exception;
    new-instance v11, Lorg/brickred/socialauth/exception/ServerDataException;

    .line 348
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Failed to parse the user profile json : "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 347
    invoke-direct {v11, v12, v1}, Lorg/brickred/socialauth/exception/ServerDataException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v11
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
    .line 161
    iget-object v0, p0, Lorg/brickred/socialauth/provider/FacebookImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    invoke-interface {v0, p1}, Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;->getLoginRedirectURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getOauthStrategy()Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Lorg/brickred/socialauth/provider/FacebookImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

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
    .line 470
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 471
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "org.brickred.socialauth.plugin.facebook.AlbumsPluginImpl"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 472
    const-string v1, "org.brickred.socialauth.plugin.facebook.FeedPluginImpl"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 473
    iget-object v1, p0, Lorg/brickred/socialauth/provider/FacebookImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v1}, Lorg/brickred/socialauth/util/OAuthConfig;->getRegisteredPlugins()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 474
    iget-object v1, p0, Lorg/brickred/socialauth/provider/FacebookImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v1}, Lorg/brickred/socialauth/util/OAuthConfig;->getRegisteredPlugins()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_0

    .line 475
    iget-object v1, p0, Lorg/brickred/socialauth/provider/FacebookImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v1}, Lorg/brickred/socialauth/util/OAuthConfig;->getRegisteredPlugins()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 477
    :cond_0
    return-object v0
.end method

.method public getProviderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lorg/brickred/socialauth/provider/FacebookImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

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
    .line 416
    iget-object v0, p0, Lorg/brickred/socialauth/provider/FacebookImpl;->userProfile:Lorg/brickred/socialauth/Profile;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/brickred/socialauth/provider/FacebookImpl;->accessGrant:Lorg/brickred/socialauth/util/AccessGrant;

    if-eqz v0, :cond_0

    .line 417
    invoke-direct {p0}, Lorg/brickred/socialauth/provider/FacebookImpl;->authFacebookLogin()Lorg/brickred/socialauth/Profile;

    .line 419
    :cond_0
    iget-object v0, p0, Lorg/brickred/socialauth/provider/FacebookImpl;->userProfile:Lorg/brickred/socialauth/Profile;

    return-object v0
.end method

.method public logout()V
    .locals 1

    .prologue
    .line 358
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/brickred/socialauth/provider/FacebookImpl;->accessGrant:Lorg/brickred/socialauth/util/AccessGrant;

    .line 359
    iget-object v0, p0, Lorg/brickred/socialauth/provider/FacebookImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    invoke-interface {v0}, Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;->logout()V

    .line 360
    return-void
.end method

.method public refreshToken(Lorg/brickred/socialauth/util/AccessGrant;)V
    .locals 13
    .param p1, "expireAccessGrant"    # Lorg/brickred/socialauth/util/AccessGrant;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/brickred/socialauth/exception/SocialAuthException;
        }
    .end annotation

    .prologue
    .line 527
    iget-object v9, p0, Lorg/brickred/socialauth/provider/FacebookImpl;->LOG:Lorg/apache/commons/logging/Log;

    const-string v10, "Getting refrash token"

    invoke-interface {v9, v10}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 528
    new-instance v10, Ljava/lang/StringBuilder;

    sget-object v9, Lorg/brickred/socialauth/provider/FacebookImpl;->ENDPOINTS:Ljava/util/Map;

    const-string v11, "accessTokenURL"

    invoke-interface {v9, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v10, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 529
    const-string v9, "?grant_type=fb_exchange_token&client_id=%1$s&client_secret=%2$s&fb_exchange_token=%3$s"

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 528
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 530
    .local v8, "url":Ljava/lang/String;
    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lorg/brickred/socialauth/provider/FacebookImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v11}, Lorg/brickred/socialauth/util/OAuthConfig;->get_consumerKey()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 531
    iget-object v11, p0, Lorg/brickred/socialauth/provider/FacebookImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v11}, Lorg/brickred/socialauth/util/OAuthConfig;->get_consumerSecret()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    invoke-virtual {p1}, Lorg/brickred/socialauth/util/AccessGrant;->getKey()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 530
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 532
    iget-object v9, p0, Lorg/brickred/socialauth/provider/FacebookImpl;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "URL for Refresh Token :: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 534
    sget-object v9, Lorg/brickred/socialauth/util/MethodType;->GET:Lorg/brickred/socialauth/util/MethodType;

    invoke-virtual {v9}, Lorg/brickred/socialauth/util/MethodType;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 533
    invoke-static {v8, v9, v10, v11}, Lorg/brickred/socialauth/util/HttpUtil;->doHttpRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lorg/brickred/socialauth/util/Response;

    move-result-object v6

    .line 535
    .local v6, "response":Lorg/brickred/socialauth/util/Response;
    const/4 v7, 0x0

    .line 537
    .local v7, "result":Ljava/lang/String;
    :try_start_0
    const-string v9, "UTF-8"

    invoke-virtual {v6, v9}, Lorg/brickred/socialauth/util/Response;->getResponseBodyAsString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 542
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 543
    .local v1, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v9, "&"

    invoke-virtual {v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 544
    .local v5, "pairs":[Ljava/lang/String;
    new-instance v0, Lorg/brickred/socialauth/util/AccessGrant;

    invoke-direct {v0}, Lorg/brickred/socialauth/util/AccessGrant;-><init>()V

    .line 545
    .local v0, "ag":Lorg/brickred/socialauth/util/AccessGrant;
    array-length v10, v5

    const/4 v9, 0x0

    :goto_0
    if-lt v9, v10, :cond_0

    .line 562
    invoke-virtual {v0, v1}, Lorg/brickred/socialauth/util/AccessGrant;->setAttributes(Ljava/util/Map;)V

    .line 563
    iget-object v9, p0, Lorg/brickred/socialauth/provider/FacebookImpl;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Refresh token Access Grant ::"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 564
    iput-object v0, p0, Lorg/brickred/socialauth/provider/FacebookImpl;->accessGrant:Lorg/brickred/socialauth/util/AccessGrant;

    .line 565
    iget-object v9, p0, Lorg/brickred/socialauth/provider/FacebookImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    invoke-interface {v9, v0}, Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;->setAccessGrant(Lorg/brickred/socialauth/util/AccessGrant;)V

    .line 566
    return-void

    .line 538
    .end local v0    # "ag":Lorg/brickred/socialauth/util/AccessGrant;
    .end local v1    # "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v5    # "pairs":[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 539
    .local v2, "e":Ljava/lang/Exception;
    new-instance v9, Lorg/brickred/socialauth/exception/SocialAuthException;

    invoke-direct {v9, v2}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/Throwable;)V

    throw v9

    .line 545
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "ag":Lorg/brickred/socialauth/util/AccessGrant;
    .restart local v1    # "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v5    # "pairs":[Ljava/lang/String;
    :cond_0
    aget-object v4, v5, v9

    .line 546
    .local v4, "pair":Ljava/lang/String;
    const-string v11, "="

    invoke-virtual {v4, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 547
    .local v3, "kv":[Ljava/lang/String;
    array-length v11, v3

    const/4 v12, 0x2

    if-eq v11, v12, :cond_1

    .line 548
    new-instance v9, Lorg/brickred/socialauth/exception/SocialAuthException;

    .line 549
    const-string v10, "Unexpected response from refresh token call"

    .line 548
    invoke-direct {v9, v10}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 551
    :cond_1
    const/4 v11, 0x0

    aget-object v11, v3, v11

    const-string v12, "access_token"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 552
    const/4 v11, 0x1

    aget-object v11, v3, v11

    invoke-virtual {v0, v11}, Lorg/brickred/socialauth/util/AccessGrant;->setKey(Ljava/lang/String;)V

    .line 545
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 553
    :cond_2
    const/4 v11, 0x0

    aget-object v11, v3, v11

    const-string v12, "expires"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 554
    const-string v11, "expires"

    const/4 v12, 0x1

    aget-object v12, v3, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v0, v11, v12}, Lorg/brickred/socialauth/util/AccessGrant;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 555
    :cond_3
    const/4 v11, 0x0

    aget-object v11, v3, v11

    const-string v12, "expires_in"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 556
    const-string v11, "expires"

    const/4 v12, 0x1

    aget-object v12, v3, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v0, v11, v12}, Lorg/brickred/socialauth/util/AccessGrant;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 558
    :cond_4
    const/4 v11, 0x0

    aget-object v11, v3, v11

    const/4 v12, 0x1

    aget-object v12, v3, v12

    invoke-interface {v1, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public setAccessGrant(Lorg/brickred/socialauth/util/AccessGrant;)V
    .locals 4
    .param p1, "accessGrant"    # Lorg/brickred/socialauth/util/AccessGrant;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/brickred/socialauth/exception/AccessTokenExpireException;,
            Lorg/brickred/socialauth/exception/SocialAuthException;
        }
    .end annotation

    .prologue
    .line 140
    iput-object p1, p0, Lorg/brickred/socialauth/provider/FacebookImpl;->accessGrant:Lorg/brickred/socialauth/util/AccessGrant;

    .line 141
    iget-object v2, p0, Lorg/brickred/socialauth/provider/FacebookImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    invoke-interface {v2, p1}, Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;->setAccessGrant(Lorg/brickred/socialauth/util/AccessGrant;)V

    .line 142
    iget-object v2, p0, Lorg/brickred/socialauth/provider/FacebookImpl;->LOG:Lorg/apache/commons/logging/Log;

    const-string v3, "Checking for token expiry"

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 143
    const/4 v1, 0x0

    .line 145
    .local v1, "response":Lorg/brickred/socialauth/util/Response;
    :try_start_0
    iget-object v2, p0, Lorg/brickred/socialauth/provider/FacebookImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    const-string v3, "https://graph.facebook.com/me"

    invoke-interface {v2, v3}, Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;->executeFeed(Ljava/lang/String;)Lorg/brickred/socialauth/util/Response;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 150
    :goto_0
    invoke-direct {p0, v1}, Lorg/brickred/socialauth/provider/FacebookImpl;->checkTokenExpiry(Lorg/brickred/socialauth/util/Response;)V

    .line 151
    return-void

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lorg/brickred/socialauth/provider/FacebookImpl;->LOG:Lorg/apache/commons/logging/Log;

    const-string v3, "Unable to check token expire"

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;)V

    .line 148
    iget-object v2, p0, Lorg/brickred/socialauth/provider/FacebookImpl;->LOG:Lorg/apache/commons/logging/Log;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setPermission(Lorg/brickred/socialauth/Permission;)V
    .locals 3
    .param p1, "p"    # Lorg/brickred/socialauth/Permission;

    .prologue
    .line 370
    iget-object v0, p0, Lorg/brickred/socialauth/provider/FacebookImpl;->LOG:Lorg/apache/commons/logging/Log;

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

    .line 371
    iput-object p1, p0, Lorg/brickred/socialauth/provider/FacebookImpl;->scope:Lorg/brickred/socialauth/Permission;

    .line 372
    iget-object v0, p0, Lorg/brickred/socialauth/provider/FacebookImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    iget-object v1, p0, Lorg/brickred/socialauth/provider/FacebookImpl;->scope:Lorg/brickred/socialauth/Permission;

    invoke-interface {v0, v1}, Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;->setPermission(Lorg/brickred/socialauth/Permission;)V

    .line 373
    iget-object v0, p0, Lorg/brickred/socialauth/provider/FacebookImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    invoke-direct {p0}, Lorg/brickred/socialauth/provider/FacebookImpl;->getScope()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;->setScope(Ljava/lang/String;)V

    .line 374
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
    .line 275
    iget-object v0, p0, Lorg/brickred/socialauth/provider/FacebookImpl;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Updating status : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 276
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 277
    :cond_0
    new-instance v0, Lorg/brickred/socialauth/exception/ServerDataException;

    const-string v1, "Status cannot be blank"

    invoke-direct {v0, v1}, Lorg/brickred/socialauth/exception/ServerDataException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 279
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 280
    .local v8, "strb":Ljava/lang/StringBuilder;
    const-string v0, "message="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 281
    const-string v1, "UTF-8"

    invoke-static {p1, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 280
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    const-string v0, "&access_token"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/brickred/socialauth/provider/FacebookImpl;->accessGrant:Lorg/brickred/socialauth/util/AccessGrant;

    invoke-virtual {v1}, Lorg/brickred/socialauth/util/AccessGrant;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    :try_start_0
    iget-object v0, p0, Lorg/brickred/socialauth/provider/FacebookImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    .line 286
    const-string v1, "https://graph.facebook.com/me/feed"

    sget-object v2, Lorg/brickred/socialauth/util/MethodType;->POST:Lorg/brickred/socialauth/util/MethodType;

    invoke-virtual {v2}, Lorg/brickred/socialauth/util/MethodType;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 287
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 285
    invoke-interface/range {v0 .. v5}, Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;->executeFeed(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)Lorg/brickred/socialauth/util/Response;

    move-result-object v7

    .line 288
    .local v7, "serviceResponse":Lorg/brickred/socialauth/util/Response;
    invoke-virtual {v7}, Lorg/brickred/socialauth/util/Response;->getStatus()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_2

    .line 289
    new-instance v0, Lorg/brickred/socialauth/exception/SocialAuthException;

    .line 290
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Status not updated. Return Status code :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 291
    invoke-virtual {v7}, Lorg/brickred/socialauth/util/Response;->getStatus()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 290
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 289
    invoke-direct {v0, v1}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    .end local v7    # "serviceResponse":Lorg/brickred/socialauth/util/Response;
    :catch_0
    move-exception v6

    .line 294
    .local v6, "e":Ljava/lang/Exception;
    new-instance v0, Lorg/brickred/socialauth/exception/SocialAuthException;

    invoke-direct {v0, v6}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 296
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v7    # "serviceResponse":Lorg/brickred/socialauth/util/Response;
    :cond_2
    return-object v7
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
    const/4 v4, 0x0

    .line 435
    iget-object v0, p0, Lorg/brickred/socialauth/provider/FacebookImpl;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Uploading Image :: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", status message :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 436
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 435
    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 437
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 438
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "name"

    invoke-interface {v3, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    iget-object v0, p0, Lorg/brickred/socialauth/provider/FacebookImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    .line 440
    const-string v1, "https://graph.facebook.com/me/photos"

    sget-object v2, Lorg/brickred/socialauth/util/MethodType;->POST:Lorg/brickred/socialauth/util/MethodType;

    invoke-virtual {v2}, Lorg/brickred/socialauth/util/MethodType;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v5, p2

    move-object v6, p3

    move-object v7, v4

    .line 439
    invoke-interface/range {v0 .. v7}, Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;->uploadImage(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Lorg/brickred/socialauth/util/Response;

    move-result-object v8

    .line 442
    .local v8, "response":Lorg/brickred/socialauth/util/Response;
    iget-object v0, p0, Lorg/brickred/socialauth/provider/FacebookImpl;->LOG:Lorg/apache/commons/logging/Log;

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

    .line 443
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
    .line 178
    .local p1, "requestParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lorg/brickred/socialauth/provider/FacebookImpl;->doVerifyResponse(Ljava/util/Map;)Lorg/brickred/socialauth/Profile;

    move-result-object v0

    return-object v0
.end method
