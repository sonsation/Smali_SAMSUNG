.class public Lorg/brickred/socialauth/provider/GooglePlusImpl;
.super Lorg/brickred/socialauth/AbstractProvider;
.source "GooglePlusImpl.java"


# static fields
.field private static final AllPerms:[Ljava/lang/String;

.field private static final AuthPerms:[Ljava/lang/String;

.field private static final CONTACTS_FEED_URL:Ljava/lang/String; = "https://www.google.com/m8/feeds/contacts/default/full/?max-results=1000"

.field private static final CONTACT_NAMESPACE:Ljava/lang/String; = "http://schemas.google.com/g/2005"

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

.field private static final PROFILE_URL:Ljava/lang/String; = "https://www.googleapis.com/oauth2/v1/userinfo"

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
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 83
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    .line 84
    const-string v1, "https://www.googleapis.com/auth/userinfo.profile"

    aput-object v1, v0, v3

    .line 85
    const-string v1, "https://www.googleapis.com/auth/userinfo.email"

    aput-object v1, v0, v4

    .line 86
    const-string v1, "https://www.googleapis.com/auth/plus.login"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    .line 87
    const-string v2, "https://www.google.com/m8/feeds"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 88
    const-string v2, "https://picasaweb.google.com/data/"

    aput-object v2, v0, v1

    .line 83
    sput-object v0, Lorg/brickred/socialauth/provider/GooglePlusImpl;->AllPerms:[Ljava/lang/String;

    .line 90
    new-array v0, v5, [Ljava/lang/String;

    .line 91
    const-string v1, "https://www.googleapis.com/auth/userinfo.profile"

    aput-object v1, v0, v3

    .line 92
    const-string v1, "https://www.googleapis.com/auth/userinfo.email"

    aput-object v1, v0, v4

    .line 90
    sput-object v0, Lorg/brickred/socialauth/provider/GooglePlusImpl;->AuthPerms:[Ljava/lang/String;

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/brickred/socialauth/provider/GooglePlusImpl;->ENDPOINTS:Ljava/util/Map;

    .line 96
    sget-object v0, Lorg/brickred/socialauth/provider/GooglePlusImpl;->ENDPOINTS:Ljava/util/Map;

    const-string v1, "authorizationURL"

    .line 97
    const-string v2, "https://accounts.google.com/o/oauth2/auth"

    .line 96
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lorg/brickred/socialauth/provider/GooglePlusImpl;->ENDPOINTS:Ljava/util/Map;

    const-string v1, "accessTokenURL"

    .line 99
    const-string v2, "https://accounts.google.com/o/oauth2/token"

    .line 98
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
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
    .line 110
    invoke-direct {p0}, Lorg/brickred/socialauth/AbstractProvider;-><init>()V

    .line 74
    const-class v0, Lorg/brickred/socialauth/provider/GooglePlusImpl;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/brickred/socialauth/provider/GooglePlusImpl;->LOG:Lorg/apache/commons/logging/Log;

    .line 111
    iput-object p1, p0, Lorg/brickred/socialauth/provider/GooglePlusImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    .line 112
    iget-object v0, p0, Lorg/brickred/socialauth/provider/GooglePlusImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v0}, Lorg/brickred/socialauth/util/OAuthConfig;->getCustomPermissions()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 113
    sget-object v0, Lorg/brickred/socialauth/Permission;->CUSTOM:Lorg/brickred/socialauth/Permission;

    iput-object v0, p0, Lorg/brickred/socialauth/provider/GooglePlusImpl;->scope:Lorg/brickred/socialauth/Permission;

    .line 116
    :cond_0
    iget-object v0, p0, Lorg/brickred/socialauth/provider/GooglePlusImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v0}, Lorg/brickred/socialauth/util/OAuthConfig;->getAuthenticationUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 117
    sget-object v0, Lorg/brickred/socialauth/provider/GooglePlusImpl;->ENDPOINTS:Ljava/util/Map;

    const-string v1, "authorizationURL"

    .line 118
    iget-object v2, p0, Lorg/brickred/socialauth/provider/GooglePlusImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v2}, Lorg/brickred/socialauth/util/OAuthConfig;->getAuthenticationUrl()Ljava/lang/String;

    move-result-object v2

    .line 117
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    :goto_0
    iget-object v0, p0, Lorg/brickred/socialauth/provider/GooglePlusImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v0}, Lorg/brickred/socialauth/util/OAuthConfig;->getAccessTokenUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 125
    sget-object v0, Lorg/brickred/socialauth/provider/GooglePlusImpl;->ENDPOINTS:Ljava/util/Map;

    const-string v1, "accessTokenURL"

    .line 126
    iget-object v2, p0, Lorg/brickred/socialauth/provider/GooglePlusImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v2}, Lorg/brickred/socialauth/util/OAuthConfig;->getAccessTokenUrl()Ljava/lang/String;

    move-result-object v2

    .line 125
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    :goto_1
    new-instance v0, Lorg/brickred/socialauth/oauthstrategy/OAuth2;

    iget-object v1, p0, Lorg/brickred/socialauth/provider/GooglePlusImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    sget-object v2, Lorg/brickred/socialauth/provider/GooglePlusImpl;->ENDPOINTS:Ljava/util/Map;

    invoke-direct {v0, v1, v2}, Lorg/brickred/socialauth/oauthstrategy/OAuth2;-><init>(Lorg/brickred/socialauth/util/OAuthConfig;Ljava/util/Map;)V

    iput-object v0, p0, Lorg/brickred/socialauth/provider/GooglePlusImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    .line 133
    iget-object v0, p0, Lorg/brickred/socialauth/provider/GooglePlusImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    iget-object v1, p0, Lorg/brickred/socialauth/provider/GooglePlusImpl;->scope:Lorg/brickred/socialauth/Permission;

    invoke-interface {v0, v1}, Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;->setPermission(Lorg/brickred/socialauth/Permission;)V

    .line 134
    iget-object v0, p0, Lorg/brickred/socialauth/provider/GooglePlusImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    invoke-direct {p0}, Lorg/brickred/socialauth/provider/GooglePlusImpl;->getScope()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;->setScope(Ljava/lang/String;)V

    .line 135
    return-void

    .line 120
    :cond_1
    iget-object v1, p0, Lorg/brickred/socialauth/provider/GooglePlusImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    sget-object v0, Lorg/brickred/socialauth/provider/GooglePlusImpl;->ENDPOINTS:Ljava/util/Map;

    .line 121
    const-string v2, "authorizationURL"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 120
    invoke-virtual {v1, v0}, Lorg/brickred/socialauth/util/OAuthConfig;->setAuthenticationUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 128
    :cond_2
    iget-object v1, p0, Lorg/brickred/socialauth/provider/GooglePlusImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    sget-object v0, Lorg/brickred/socialauth/provider/GooglePlusImpl;->ENDPOINTS:Ljava/util/Map;

    .line 129
    const-string v2, "accessTokenURL"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 128
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
    .line 181
    .local p1, "requestParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/brickred/socialauth/provider/GooglePlusImpl;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "Retrieving Access Token in verify response function"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 182
    const-string v0, "error_reason"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 183
    const-string/jumbo v0, "user_denied"

    const-string v1, "error_reason"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    new-instance v0, Lorg/brickred/socialauth/exception/UserDeniedPermissionException;

    invoke-direct {v0}, Lorg/brickred/socialauth/exception/UserDeniedPermissionException;-><init>()V

    throw v0

    .line 186
    :cond_0
    iget-object v0, p0, Lorg/brickred/socialauth/provider/GooglePlusImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    .line 187
    sget-object v1, Lorg/brickred/socialauth/util/MethodType;->POST:Lorg/brickred/socialauth/util/MethodType;

    invoke-virtual {v1}, Lorg/brickred/socialauth/util/MethodType;->toString()Ljava/lang/String;

    move-result-object v1

    .line 186
    invoke-interface {v0, p1, v1}, Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;->verifyResponse(Ljava/util/Map;Ljava/lang/String;)Lorg/brickred/socialauth/util/AccessGrant;

    move-result-object v0

    iput-object v0, p0, Lorg/brickred/socialauth/provider/GooglePlusImpl;->accessGrant:Lorg/brickred/socialauth/util/AccessGrant;

    .line 189
    iget-object v0, p0, Lorg/brickred/socialauth/provider/GooglePlusImpl;->accessGrant:Lorg/brickred/socialauth/util/AccessGrant;

    if-eqz v0, :cond_1

    .line 190
    iget-object v0, p0, Lorg/brickred/socialauth/provider/GooglePlusImpl;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "Obtaining user profile"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 191
    invoke-direct {p0}, Lorg/brickred/socialauth/provider/GooglePlusImpl;->getProfile()Lorg/brickred/socialauth/Profile;

    move-result-object v0

    return-object v0

    .line 193
    :cond_1
    new-instance v0, Lorg/brickred/socialauth/exception/SocialAuthException;

    const-string v1, "Access token not found"

    invoke-direct {v0, v1}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getProfile()Lorg/brickred/socialauth/Profile;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 201
    :try_start_0
    iget-object v6, p0, Lorg/brickred/socialauth/provider/GooglePlusImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    const-string v7, "https://www.googleapis.com/oauth2/v1/userinfo"

    invoke-interface {v6, v7}, Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;->executeFeed(Ljava/lang/String;)Lorg/brickred/socialauth/util/Response;

    move-result-object v5

    .line 202
    .local v5, "response":Lorg/brickred/socialauth/util/Response;
    const-string v6, "UTF-8"

    invoke-virtual {v5, v6}, Lorg/brickred/socialauth/util/Response;->getResponseBodyAsString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 208
    .local v3, "presp":Ljava/lang/String;
    :try_start_1
    iget-object v6, p0, Lorg/brickred/socialauth/provider/GooglePlusImpl;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "User Profile : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 209
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 210
    .local v4, "resp":Lorg/json/JSONObject;
    new-instance v2, Lorg/brickred/socialauth/Profile;

    invoke-direct {v2}, Lorg/brickred/socialauth/Profile;-><init>()V

    .line 211
    .local v2, "p":Lorg/brickred/socialauth/Profile;
    const-string v6, "id"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/brickred/socialauth/Profile;->setValidatedId(Ljava/lang/String;)V

    .line 212
    const-string v6, "name"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 213
    const-string v6, "name"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/brickred/socialauth/Profile;->setFullName(Ljava/lang/String;)V

    .line 215
    :cond_0
    const-string v6, "given_name"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 216
    const-string v6, "given_name"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/brickred/socialauth/Profile;->setFirstName(Ljava/lang/String;)V

    .line 218
    :cond_1
    const-string v6, "family_name"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 219
    const-string v6, "family_name"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/brickred/socialauth/Profile;->setLastName(Ljava/lang/String;)V

    .line 221
    :cond_2
    const-string v6, "email"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 222
    const-string v6, "email"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/brickred/socialauth/Profile;->setEmail(Ljava/lang/String;)V

    .line 224
    :cond_3
    const-string v6, "gender"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 225
    const-string v6, "gender"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/brickred/socialauth/Profile;->setGender(Ljava/lang/String;)V

    .line 227
    :cond_4
    const-string v6, "picture"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 228
    const-string v6, "picture"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/brickred/socialauth/Profile;->setProfileImageURL(Ljava/lang/String;)V

    .line 230
    :cond_5
    const-string v6, "id"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 231
    const-string v6, "id"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/brickred/socialauth/Profile;->setValidatedId(Ljava/lang/String;)V

    .line 234
    :cond_6
    invoke-virtual {p0}, Lorg/brickred/socialauth/provider/GooglePlusImpl;->getProviderId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/brickred/socialauth/Profile;->setProviderId(Ljava/lang/String;)V

    .line 235
    iput-object v2, p0, Lorg/brickred/socialauth/provider/GooglePlusImpl;->userProfile:Lorg/brickred/socialauth/Profile;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 236
    return-object v2

    .line 203
    .end local v2    # "p":Lorg/brickred/socialauth/Profile;
    .end local v3    # "presp":Ljava/lang/String;
    .end local v4    # "resp":Lorg/json/JSONObject;
    .end local v5    # "response":Lorg/brickred/socialauth/util/Response;
    :catch_0
    move-exception v0

    .line 204
    .local v0, "e":Ljava/lang/Exception;
    new-instance v6, Lorg/brickred/socialauth/exception/SocialAuthException;

    const-string v7, "Error while getting profile from https://www.googleapis.com/oauth2/v1/userinfo"

    invoke-direct {v6, v7, v0}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 238
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v3    # "presp":Ljava/lang/String;
    .restart local v5    # "response":Lorg/brickred/socialauth/util/Response;
    :catch_1
    move-exception v1

    .line 239
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v6, Lorg/brickred/socialauth/exception/ServerDataException;

    .line 240
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Failed to parse the user profile json : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 239
    invoke-direct {v6, v7, v1}, Lorg/brickred/socialauth/exception/ServerDataException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

.method private getScope()Ljava/lang/String;
    .locals 6

    .prologue
    .line 439
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 440
    .local v3, "result":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .line 441
    .local v0, "arr":[Ljava/lang/String;
    sget-object v4, Lorg/brickred/socialauth/Permission;->AUTHENTICATE_ONLY:Lorg/brickred/socialauth/Permission;

    iget-object v5, p0, Lorg/brickred/socialauth/provider/GooglePlusImpl;->scope:Lorg/brickred/socialauth/Permission;

    invoke-virtual {v4, v5}, Lorg/brickred/socialauth/Permission;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 442
    sget-object v0, Lorg/brickred/socialauth/provider/GooglePlusImpl;->AuthPerms:[Ljava/lang/String;

    .line 449
    :goto_0
    const/4 v4, 0x0

    aget-object v4, v0, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 450
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    array-length v4, v0

    if-lt v1, v4, :cond_3

    .line 453
    iget-object v4, p0, Lorg/brickred/socialauth/provider/GooglePlusImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {p0, v4}, Lorg/brickred/socialauth/provider/GooglePlusImpl;->getPluginsScope(Lorg/brickred/socialauth/util/OAuthConfig;)Ljava/lang/String;

    move-result-object v2

    .line 454
    .local v2, "pluginScopes":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 455
    const-string v4, "+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 457
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 443
    .end local v1    # "i":I
    .end local v2    # "pluginScopes":Ljava/lang/String;
    :cond_1
    sget-object v4, Lorg/brickred/socialauth/Permission;->CUSTOM:Lorg/brickred/socialauth/Permission;

    iget-object v5, p0, Lorg/brickred/socialauth/provider/GooglePlusImpl;->scope:Lorg/brickred/socialauth/Permission;

    invoke-virtual {v4, v5}, Lorg/brickred/socialauth/Permission;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 444
    iget-object v4, p0, Lorg/brickred/socialauth/provider/GooglePlusImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v4}, Lorg/brickred/socialauth/util/OAuthConfig;->getCustomPermissions()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 445
    iget-object v4, p0, Lorg/brickred/socialauth/provider/GooglePlusImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v4}, Lorg/brickred/socialauth/util/OAuthConfig;->getCustomPermissions()Ljava/lang/String;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 446
    goto :goto_0

    .line 447
    :cond_2
    sget-object v0, Lorg/brickred/socialauth/provider/GooglePlusImpl;->AllPerms:[Ljava/lang/String;

    goto :goto_0

    .line 451
    .restart local v1    # "i":I
    :cond_3
    const-string v4, "+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    aget-object v5, v0, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 450
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
    .line 395
    .local p3, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, "headerParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/brickred/socialauth/provider/GooglePlusImpl;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Calling api function for url\t:\t"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 396
    const/4 v7, 0x0

    .line 398
    .local v7, "response":Lorg/brickred/socialauth/util/Response;
    :try_start_0
    iget-object v0, p0, Lorg/brickred/socialauth/provider/GooglePlusImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;->executeFeed(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)Lorg/brickred/socialauth/util/Response;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 404
    return-object v7

    .line 400
    :catch_0
    move-exception v6

    .line 401
    .local v6, "e":Ljava/lang/Exception;
    new-instance v0, Lorg/brickred/socialauth/exception/SocialAuthException;

    .line 402
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error while making request to URL : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 401
    invoke-direct {v0, v1, v6}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getAccessGrant()Lorg/brickred/socialauth/util/AccessGrant;
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lorg/brickred/socialauth/provider/GooglePlusImpl;->accessGrant:Lorg/brickred/socialauth/util/AccessGrant;

    return-object v0
.end method

.method public getContactList()Ljava/util/List;
    .locals 28
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
    .line 262
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/brickred/socialauth/provider/GooglePlusImpl;->LOG:Lorg/apache/commons/logging/Log;

    const-string v3, "Fetching contacts from https://www.google.com/m8/feeds/contacts/default/full/?max-results=1000"

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 263
    sget-object v2, Lorg/brickred/socialauth/Permission;->AUTHENTICATE_ONLY:Lorg/brickred/socialauth/Permission;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/brickred/socialauth/provider/GooglePlusImpl;->scope:Lorg/brickred/socialauth/Permission;

    invoke-virtual {v2, v3}, Lorg/brickred/socialauth/Permission;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 264
    new-instance v2, Lorg/brickred/socialauth/exception/SocialAuthException;

    .line 265
    const-string v3, "You have not set Permission to get contacts."

    .line 264
    invoke-direct {v2, v3}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 267
    :cond_0
    const/16 v27, 0x0

    .line 269
    .local v27, "serviceResponse":Lorg/brickred/socialauth/util/Response;
    :try_start_0
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 270
    .local v6, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "Authorization"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Bearer "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/brickred/socialauth/provider/GooglePlusImpl;->getAccessGrant()Lorg/brickred/socialauth/util/AccessGrant;

    move-result-object v4

    invoke-virtual {v4}, Lorg/brickred/socialauth/util/AccessGrant;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/brickred/socialauth/provider/GooglePlusImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    .line 272
    const-string v3, "https://www.google.com/m8/feeds/contacts/default/full/?max-results=1000"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 271
    invoke-interface/range {v2 .. v7}, Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;->executeFeed(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)Lorg/brickred/socialauth/util/Response;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v27

    .line 278
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 283
    .local v23, "plist":Ljava/util/List;, "Ljava/util/List<Lorg/brickred/socialauth/Contact;>;"
    :try_start_1
    invoke-virtual/range {v27 .. v27}, Lorg/brickred/socialauth/util/Response;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 282
    invoke-static {v2}, Lorg/brickred/socialauth/util/XMLParseUtil;->loadXmlResource(Ljava/io/InputStream;)Lorg/w3c/dom/Element;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v24

    .line 289
    .local v24, "root":Lorg/w3c/dom/Element;
    const-string v2, "entry"

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v10

    .line 290
    .local v10, "contactsList":Lorg/w3c/dom/NodeList;
    if-eqz v10, :cond_a

    invoke-interface {v10}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-lez v2, :cond_a

    .line 291
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/brickred/socialauth/provider/GooglePlusImpl;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Found contacts : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v10}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 292
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_0
    invoke-interface {v10}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    move/from16 v0, v16

    if-lt v0, v2, :cond_1

    .line 348
    .end local v16    # "i":I
    :goto_1
    return-object v23

    .line 273
    .end local v6    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v10    # "contactsList":Lorg/w3c/dom/NodeList;
    .end local v23    # "plist":Ljava/util/List;, "Ljava/util/List<Lorg/brickred/socialauth/Contact;>;"
    .end local v24    # "root":Lorg/w3c/dom/Element;
    :catch_0
    move-exception v18

    .line 274
    .local v18, "ie":Ljava/lang/Exception;
    new-instance v2, Lorg/brickred/socialauth/exception/SocialAuthException;

    .line 275
    const-string v3, "Failed to retrieve the contacts from https://www.google.com/m8/feeds/contacts/default/full/?max-results=1000"

    .line 274
    move-object/from16 v0, v18

    invoke-direct {v2, v3, v0}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 284
    .end local v18    # "ie":Ljava/lang/Exception;
    .restart local v6    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v23    # "plist":Ljava/util/List;, "Ljava/util/List<Lorg/brickred/socialauth/Contact;>;"
    :catch_1
    move-exception v12

    .line 285
    .local v12, "e":Ljava/lang/Exception;
    new-instance v2, Lorg/brickred/socialauth/exception/ServerDataException;

    .line 286
    const-string v3, "Failed to parse the contacts from response.https://www.google.com/m8/feeds/contacts/default/full/?max-results=1000"

    .line 285
    invoke-direct {v2, v3, v12}, Lorg/brickred/socialauth/exception/ServerDataException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 293
    .end local v12    # "e":Ljava/lang/Exception;
    .restart local v10    # "contactsList":Lorg/w3c/dom/NodeList;
    .restart local v16    # "i":I
    .restart local v24    # "root":Lorg/w3c/dom/Element;
    :cond_1
    move/from16 v0, v16

    invoke-interface {v10, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    check-cast v9, Lorg/w3c/dom/Element;

    .line 294
    .local v9, "contact":Lorg/w3c/dom/Element;
    const-string v15, ""

    .line 295
    .local v15, "fname":Ljava/lang/String;
    const-string v2, "http://schemas.google.com/g/2005"

    .line 296
    const-string v3, "email"

    .line 295
    invoke-interface {v9, v2, v3}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v20

    .line 297
    .local v20, "l":Lorg/w3c/dom/NodeList;
    const/4 v8, 0x0

    .line 298
    .local v8, "address":Ljava/lang/String;
    const/4 v14, 0x0

    .line 299
    .local v14, "emailArr":[Ljava/lang/String;
    if-eqz v20, :cond_3

    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-lez v2, :cond_3

    .line 300
    const/4 v2, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v13

    check-cast v13, Lorg/w3c/dom/Element;

    .line 301
    .local v13, "el":Lorg/w3c/dom/Element;
    if-eqz v13, :cond_2

    .line 302
    const-string v2, "address"

    invoke-interface {v13, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 304
    :cond_2
    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_3

    .line 305
    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    new-array v14, v2, [Ljava/lang/String;

    .line 306
    const/16 v19, 0x1

    .local v19, "k":I
    :goto_2
    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    move/from16 v0, v19

    if-lt v0, v2, :cond_7

    .line 314
    .end local v13    # "el":Lorg/w3c/dom/Element;
    .end local v19    # "k":I
    :cond_3
    const-string v21, ""

    .line 315
    .local v21, "lname":Ljava/lang/String;
    const-string/jumbo v2, "title"

    invoke-static {v9, v2}, Lorg/brickred/socialauth/util/XMLParseUtil;->getElementData(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 316
    .local v11, "dispName":Ljava/lang/String;
    if-eqz v11, :cond_5

    .line 317
    const-string v2, " "

    invoke-virtual {v11, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v25

    .line 318
    .local v25, "sarr":[Ljava/lang/String;
    move-object/from16 v0, v25

    array-length v2, v0

    if-lez v2, :cond_5

    .line 319
    move-object/from16 v0, v25

    array-length v2, v0

    const/4 v3, 0x1

    if-lt v2, v3, :cond_4

    .line 320
    const/4 v2, 0x0

    aget-object v15, v25, v2

    .line 322
    :cond_4
    move-object/from16 v0, v25

    array-length v2, v0

    const/4 v3, 0x2

    if-lt v2, v3, :cond_5

    .line 323
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    .line 324
    .local v26, "sb":Ljava/lang/StringBuilder;
    const/16 v19, 0x1

    .restart local v19    # "k":I
    :goto_3
    move-object/from16 v0, v25

    array-length v2, v0

    move/from16 v0, v19

    if-lt v0, v2, :cond_9

    .line 327
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 331
    .end local v19    # "k":I
    .end local v25    # "sarr":[Ljava/lang/String;
    .end local v26    # "sb":Ljava/lang/StringBuilder;
    :cond_5
    const-string v2, "id"

    invoke-static {v9, v2}, Lorg/brickred/socialauth/util/XMLParseUtil;->getElementData(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 333
    .local v17, "id":Ljava/lang/String;
    if-eqz v8, :cond_6

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_6

    .line 334
    new-instance v22, Lorg/brickred/socialauth/Contact;

    invoke-direct/range {v22 .. v22}, Lorg/brickred/socialauth/Contact;-><init>()V

    .line 335
    .local v22, "p":Lorg/brickred/socialauth/Contact;
    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Lorg/brickred/socialauth/Contact;->setFirstName(Ljava/lang/String;)V

    .line 336
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/brickred/socialauth/Contact;->setLastName(Ljava/lang/String;)V

    .line 337
    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Lorg/brickred/socialauth/Contact;->setEmail(Ljava/lang/String;)V

    .line 338
    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Lorg/brickred/socialauth/Contact;->setDisplayName(Ljava/lang/String;)V

    .line 339
    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Lorg/brickred/socialauth/Contact;->setOtherEmails([Ljava/lang/String;)V

    .line 340
    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/brickred/socialauth/Contact;->setId(Ljava/lang/String;)V

    .line 341
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    .end local v22    # "p":Lorg/brickred/socialauth/Contact;
    :cond_6
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_0

    .line 307
    .end local v11    # "dispName":Ljava/lang/String;
    .end local v17    # "id":Ljava/lang/String;
    .end local v21    # "lname":Ljava/lang/String;
    .restart local v13    # "el":Lorg/w3c/dom/Element;
    .restart local v19    # "k":I
    :cond_7
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v12

    check-cast v12, Lorg/w3c/dom/Element;

    .line 308
    .local v12, "e":Lorg/w3c/dom/Element;
    if-eqz v12, :cond_8

    .line 309
    add-int/lit8 v2, v19, -0x1

    const-string v3, "address"

    invoke-interface {v12, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v14, v2

    .line 306
    :cond_8
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_2

    .line 325
    .end local v12    # "e":Lorg/w3c/dom/Element;
    .end local v13    # "el":Lorg/w3c/dom/Element;
    .restart local v11    # "dispName":Ljava/lang/String;
    .restart local v21    # "lname":Ljava/lang/String;
    .restart local v25    # "sarr":[Ljava/lang/String;
    .restart local v26    # "sb":Ljava/lang/StringBuilder;
    :cond_9
    aget-object v2, v25, v19

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    add-int/lit8 v19, v19, 0x1

    goto :goto_3

    .line 345
    .end local v8    # "address":Ljava/lang/String;
    .end local v9    # "contact":Lorg/w3c/dom/Element;
    .end local v11    # "dispName":Ljava/lang/String;
    .end local v14    # "emailArr":[Ljava/lang/String;
    .end local v15    # "fname":Ljava/lang/String;
    .end local v16    # "i":I
    .end local v19    # "k":I
    .end local v20    # "l":Lorg/w3c/dom/NodeList;
    .end local v21    # "lname":Ljava/lang/String;
    .end local v25    # "sarr":[Ljava/lang/String;
    .end local v26    # "sb":Ljava/lang/StringBuilder;
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/brickred/socialauth/provider/GooglePlusImpl;->LOG:Lorg/apache/commons/logging/Log;

    const-string v3, "No contacts were obtained from the feed : https://www.google.com/m8/feeds/contacts/default/full/?max-results=1000"

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto/16 :goto_1
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
    .line 159
    iget-object v0, p0, Lorg/brickred/socialauth/provider/GooglePlusImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    invoke-interface {v0, p1}, Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;->getLoginRedirectURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getOauthStrategy()Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lorg/brickred/socialauth/provider/GooglePlusImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

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
    .line 462
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 463
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "org.brickred.socialauth.plugin.googleplus.FeedPluginImpl"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 464
    const-string v1, "org.brickred.socialauth.plugin.googleplus.AlbumsPluginImpl"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 465
    iget-object v1, p0, Lorg/brickred/socialauth/provider/GooglePlusImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v1}, Lorg/brickred/socialauth/util/OAuthConfig;->getRegisteredPlugins()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 466
    iget-object v1, p0, Lorg/brickred/socialauth/provider/GooglePlusImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v1}, Lorg/brickred/socialauth/util/OAuthConfig;->getRegisteredPlugins()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_0

    .line 467
    iget-object v1, p0, Lorg/brickred/socialauth/provider/GooglePlusImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v1}, Lorg/brickred/socialauth/util/OAuthConfig;->getRegisteredPlugins()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 469
    :cond_0
    return-object v0
.end method

.method public getProviderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Lorg/brickred/socialauth/provider/GooglePlusImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

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
    .line 414
    iget-object v0, p0, Lorg/brickred/socialauth/provider/GooglePlusImpl;->userProfile:Lorg/brickred/socialauth/Profile;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/brickred/socialauth/provider/GooglePlusImpl;->accessGrant:Lorg/brickred/socialauth/util/AccessGrant;

    if-eqz v0, :cond_0

    .line 415
    invoke-direct {p0}, Lorg/brickred/socialauth/provider/GooglePlusImpl;->getProfile()Lorg/brickred/socialauth/Profile;

    .line 417
    :cond_0
    iget-object v0, p0, Lorg/brickred/socialauth/provider/GooglePlusImpl;->userProfile:Lorg/brickred/socialauth/Profile;

    return-object v0
.end method

.method public logout()V
    .locals 1

    .prologue
    .line 356
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/brickred/socialauth/provider/GooglePlusImpl;->accessGrant:Lorg/brickred/socialauth/util/AccessGrant;

    .line 357
    iget-object v0, p0, Lorg/brickred/socialauth/provider/GooglePlusImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    invoke-interface {v0}, Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;->logout()V

    .line 358
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
    .line 147
    iput-object p1, p0, Lorg/brickred/socialauth/provider/GooglePlusImpl;->accessGrant:Lorg/brickred/socialauth/util/AccessGrant;

    .line 148
    iget-object v0, p0, Lorg/brickred/socialauth/provider/GooglePlusImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    invoke-interface {v0, p1}, Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;->setAccessGrant(Lorg/brickred/socialauth/util/AccessGrant;)V

    .line 149
    return-void
.end method

.method public setPermission(Lorg/brickred/socialauth/Permission;)V
    .locals 3
    .param p1, "p"    # Lorg/brickred/socialauth/Permission;

    .prologue
    .line 368
    iget-object v0, p0, Lorg/brickred/socialauth/provider/GooglePlusImpl;->LOG:Lorg/apache/commons/logging/Log;

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

    .line 369
    iput-object p1, p0, Lorg/brickred/socialauth/provider/GooglePlusImpl;->scope:Lorg/brickred/socialauth/Permission;

    .line 370
    iget-object v0, p0, Lorg/brickred/socialauth/provider/GooglePlusImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    iget-object v1, p0, Lorg/brickred/socialauth/provider/GooglePlusImpl;->scope:Lorg/brickred/socialauth/Permission;

    invoke-interface {v0, v1}, Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;->setPermission(Lorg/brickred/socialauth/Permission;)V

    .line 371
    iget-object v0, p0, Lorg/brickred/socialauth/provider/GooglePlusImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    invoke-direct {p0}, Lorg/brickred/socialauth/provider/GooglePlusImpl;->getScope()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;->setScope(Ljava/lang/String;)V

    .line 372
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
    .line 255
    iget-object v0, p0, Lorg/brickred/socialauth/provider/GooglePlusImpl;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "WARNING: Not implemented for GooglePlus"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 256
    new-instance v0, Lorg/brickred/socialauth/exception/SocialAuthException;

    .line 257
    const-string v1, "Update Status is not implemented for GooglePlus"

    .line 256
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
    .line 433
    iget-object v0, p0, Lorg/brickred/socialauth/provider/GooglePlusImpl;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "WARNING: Not implemented for GooglePlus"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 434
    new-instance v0, Lorg/brickred/socialauth/exception/SocialAuthException;

    .line 435
    const-string v1, "Upload Image is not implemented for GooglePlus"

    .line 434
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
    .line 176
    .local p1, "requestParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lorg/brickred/socialauth/provider/GooglePlusImpl;->doVerifyResponse(Ljava/util/Map;)Lorg/brickred/socialauth/Profile;

    move-result-object v0

    return-object v0
.end method
