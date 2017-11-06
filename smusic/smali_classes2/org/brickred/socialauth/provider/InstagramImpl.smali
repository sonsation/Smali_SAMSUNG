.class public Lorg/brickred/socialauth/provider/InstagramImpl;
.super Lorg/brickred/socialauth/AbstractProvider;
.source "InstagramImpl.java"


# static fields
.field private static final AllPerms:[Ljava/lang/String;

.field private static final AuthPerms:[Ljava/lang/String;

.field public static final CLASSID:Ljava/lang/String; = "instagram"

.field private static final CONTACTS_URL:Ljava/lang/String; = "https://api.instagram.com/v1/users/self/follows"

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

.field private static final PROFILE_URL:Ljava/lang/String; = "https://api.instagram.com/v1/users/self"

.field private static final VIEW_PROFILE_URL:Ljava/lang/String; = "http://instagram.com/"

.field private static final serialVersionUID:J = 0x5448dc213128517dL


# instance fields
.field private final LOG:Lorg/apache/commons/logging/Log;

.field private accessGrant:Lorg/brickred/socialauth/util/AccessGrant;

.field private authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

.field private config:Lorg/brickred/socialauth/util/OAuthConfig;

.field private userProfile:Lorg/brickred/socialauth/Profile;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 78
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "basic"

    aput-object v1, v0, v3

    .line 79
    const-string v1, "comments"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string/jumbo v2, "relationships"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "likes"

    aput-object v2, v0, v1

    .line 78
    sput-object v0, Lorg/brickred/socialauth/provider/InstagramImpl;->AllPerms:[Ljava/lang/String;

    .line 80
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "basic"

    aput-object v1, v0, v3

    sput-object v0, Lorg/brickred/socialauth/provider/InstagramImpl;->AuthPerms:[Ljava/lang/String;

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/brickred/socialauth/provider/InstagramImpl;->ENDPOINTS:Ljava/util/Map;

    .line 84
    sget-object v0, Lorg/brickred/socialauth/provider/InstagramImpl;->ENDPOINTS:Ljava/util/Map;

    const-string v1, "authorizationURL"

    .line 85
    const-string v2, "https://api.instagram.com/oauth/authorize"

    .line 84
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lorg/brickred/socialauth/provider/InstagramImpl;->ENDPOINTS:Ljava/util/Map;

    const-string v1, "accessTokenURL"

    .line 87
    const-string v2, "https://api.instagram.com/oauth/access_token"

    .line 86
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
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
    .line 90
    invoke-direct {p0}, Lorg/brickred/socialauth/AbstractProvider;-><init>()V

    .line 69
    const-class v0, Lorg/brickred/socialauth/provider/InstagramImpl;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/brickred/socialauth/provider/InstagramImpl;->LOG:Lorg/apache/commons/logging/Log;

    .line 92
    iput-object p1, p0, Lorg/brickred/socialauth/provider/InstagramImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    .line 94
    new-instance v0, Lorg/brickred/socialauth/oauthstrategy/OAuth2;

    iget-object v1, p0, Lorg/brickred/socialauth/provider/InstagramImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    sget-object v2, Lorg/brickred/socialauth/provider/InstagramImpl;->ENDPOINTS:Ljava/util/Map;

    invoke-direct {v0, v1, v2}, Lorg/brickred/socialauth/oauthstrategy/OAuth2;-><init>(Lorg/brickred/socialauth/util/OAuthConfig;Ljava/util/Map;)V

    iput-object v0, p0, Lorg/brickred/socialauth/provider/InstagramImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    .line 96
    iget-object v0, p0, Lorg/brickred/socialauth/provider/InstagramImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v0}, Lorg/brickred/socialauth/util/OAuthConfig;->getCustomPermissions()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lorg/brickred/socialauth/provider/InstagramImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    sget-object v1, Lorg/brickred/socialauth/Permission;->CUSTOM:Lorg/brickred/socialauth/Permission;

    invoke-interface {v0, v1}, Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;->setPermission(Lorg/brickred/socialauth/Permission;)V

    .line 98
    iget-object v0, p0, Lorg/brickred/socialauth/provider/InstagramImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    sget-object v1, Lorg/brickred/socialauth/Permission;->CUSTOM:Lorg/brickred/socialauth/Permission;

    invoke-direct {p0, v1}, Lorg/brickred/socialauth/provider/InstagramImpl;->getScope(Lorg/brickred/socialauth/Permission;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;->setScope(Ljava/lang/String;)V

    .line 101
    :cond_0
    iget-object v1, p0, Lorg/brickred/socialauth/provider/InstagramImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    sget-object v0, Lorg/brickred/socialauth/provider/InstagramImpl;->ENDPOINTS:Ljava/util/Map;

    .line 102
    const-string v2, "authorizationURL"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 101
    invoke-virtual {v1, v0}, Lorg/brickred/socialauth/util/OAuthConfig;->setAuthenticationUrl(Ljava/lang/String;)V

    .line 103
    iget-object v1, p0, Lorg/brickred/socialauth/provider/InstagramImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    sget-object v0, Lorg/brickred/socialauth/provider/InstagramImpl;->ENDPOINTS:Ljava/util/Map;

    .line 104
    const-string v2, "accessTokenURL"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 103
    invoke-virtual {v1, v0}, Lorg/brickred/socialauth/util/OAuthConfig;->setAccessTokenUrl(Ljava/lang/String;)V

    .line 105
    return-void
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
    .line 303
    .local p1, "requestParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/brickred/socialauth/provider/InstagramImpl;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "Verifying the authentication response from provider"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 304
    const-string v0, "error"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 305
    const-string v0, "access_denied"

    const-string v1, "error"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    new-instance v0, Lorg/brickred/socialauth/exception/UserDeniedPermissionException;

    invoke-direct {v0}, Lorg/brickred/socialauth/exception/UserDeniedPermissionException;-><init>()V

    throw v0

    .line 309
    :cond_0
    iget-object v0, p0, Lorg/brickred/socialauth/provider/InstagramImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    .line 310
    sget-object v1, Lorg/brickred/socialauth/util/MethodType;->POST:Lorg/brickred/socialauth/util/MethodType;

    invoke-virtual {v1}, Lorg/brickred/socialauth/util/MethodType;->toString()Ljava/lang/String;

    move-result-object v1

    .line 309
    invoke-interface {v0, p1, v1}, Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;->verifyResponse(Ljava/util/Map;Ljava/lang/String;)Lorg/brickred/socialauth/util/AccessGrant;

    move-result-object v0

    iput-object v0, p0, Lorg/brickred/socialauth/provider/InstagramImpl;->accessGrant:Lorg/brickred/socialauth/util/AccessGrant;

    .line 311
    iget-object v0, p0, Lorg/brickred/socialauth/provider/InstagramImpl;->accessGrant:Lorg/brickred/socialauth/util/AccessGrant;

    if-eqz v0, :cond_1

    .line 312
    iget-object v0, p0, Lorg/brickred/socialauth/provider/InstagramImpl;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "Obtaining user profile"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 313
    invoke-direct {p0}, Lorg/brickred/socialauth/provider/InstagramImpl;->getProfile()Lorg/brickred/socialauth/Profile;

    .line 314
    iget-object v0, p0, Lorg/brickred/socialauth/provider/InstagramImpl;->userProfile:Lorg/brickred/socialauth/Profile;

    return-object v0

    .line 316
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
    const/4 v11, 0x1

    .line 220
    iget-object v8, p0, Lorg/brickred/socialauth/provider/InstagramImpl;->LOG:Lorg/apache/commons/logging/Log;

    const-string v9, "Obtaining user profile"

    invoke-interface {v8, v9}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 223
    :try_start_0
    iget-object v8, p0, Lorg/brickred/socialauth/provider/InstagramImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    const-string v9, "https://api.instagram.com/v1/users/self"

    invoke-interface {v8, v9}, Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;->executeFeed(Ljava/lang/String;)Lorg/brickred/socialauth/util/Response;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 230
    .local v7, "response":Lorg/brickred/socialauth/util/Response;
    invoke-virtual {v7}, Lorg/brickred/socialauth/util/Response;->getStatus()I

    move-result v8

    const/16 v9, 0xc8

    if-ne v8, v9, :cond_2

    .line 232
    const-string v8, "UTF-8"

    invoke-virtual {v7, v8}, Lorg/brickred/socialauth/util/Response;->getResponseBodyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 233
    .local v6, "respStr":Ljava/lang/String;
    iget-object v8, p0, Lorg/brickred/socialauth/provider/InstagramImpl;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Profile JSON string :: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 234
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 235
    .local v4, "obj":Lorg/json/JSONObject;
    const-string v8, "data"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 236
    .local v0, "data":Lorg/json/JSONObject;
    new-instance v5, Lorg/brickred/socialauth/Profile;

    invoke-direct {v5}, Lorg/brickred/socialauth/Profile;-><init>()V

    .line 237
    .local v5, "p":Lorg/brickred/socialauth/Profile;
    const-string v8, "id"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lorg/brickred/socialauth/Profile;->setValidatedId(Ljava/lang/String;)V

    .line 238
    const-string v8, "full_name"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 239
    .local v2, "full_name":Ljava/lang/String;
    invoke-virtual {v5, v2}, Lorg/brickred/socialauth/Profile;->setDisplayName(Ljava/lang/String;)V

    .line 240
    if-eqz v2, :cond_0

    .line 241
    const-string v8, " "

    invoke-virtual {v2, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 242
    .local v3, "names":[Ljava/lang/String;
    array-length v8, v3

    if-le v8, v11, :cond_1

    .line 243
    const/4 v8, 0x0

    aget-object v8, v3, v8

    invoke-virtual {v5, v8}, Lorg/brickred/socialauth/Profile;->setFirstName(Ljava/lang/String;)V

    .line 244
    aget-object v8, v3, v11

    invoke-virtual {v5, v8}, Lorg/brickred/socialauth/Profile;->setLastName(Ljava/lang/String;)V

    .line 249
    .end local v3    # "names":[Ljava/lang/String;
    :cond_0
    :goto_0
    const-string v8, "profile_picture"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lorg/brickred/socialauth/Profile;->setProfileImageURL(Ljava/lang/String;)V

    .line 250
    invoke-virtual {p0}, Lorg/brickred/socialauth/provider/InstagramImpl;->getProviderId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lorg/brickred/socialauth/Profile;->setProviderId(Ljava/lang/String;)V

    .line 251
    return-object v5

    .line 224
    .end local v0    # "data":Lorg/json/JSONObject;
    .end local v2    # "full_name":Ljava/lang/String;
    .end local v4    # "obj":Lorg/json/JSONObject;
    .end local v5    # "p":Lorg/brickred/socialauth/Profile;
    .end local v6    # "respStr":Ljava/lang/String;
    .end local v7    # "response":Lorg/brickred/socialauth/util/Response;
    :catch_0
    move-exception v1

    .line 225
    .local v1, "e":Ljava/lang/Exception;
    new-instance v8, Lorg/brickred/socialauth/exception/SocialAuthException;

    .line 226
    const-string v9, "Failed to retrieve the user profile from https://api.instagram.com/v1/users/self"

    .line 225
    invoke-direct {v8, v9, v1}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 246
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "data":Lorg/json/JSONObject;
    .restart local v2    # "full_name":Ljava/lang/String;
    .restart local v3    # "names":[Ljava/lang/String;
    .restart local v4    # "obj":Lorg/json/JSONObject;
    .restart local v5    # "p":Lorg/brickred/socialauth/Profile;
    .restart local v6    # "respStr":Ljava/lang/String;
    .restart local v7    # "response":Lorg/brickred/socialauth/util/Response;
    :cond_1
    invoke-virtual {v5, v2}, Lorg/brickred/socialauth/Profile;->setFirstName(Ljava/lang/String;)V

    goto :goto_0

    .line 253
    .end local v0    # "data":Lorg/json/JSONObject;
    .end local v2    # "full_name":Ljava/lang/String;
    .end local v3    # "names":[Ljava/lang/String;
    .end local v4    # "obj":Lorg/json/JSONObject;
    .end local v5    # "p":Lorg/brickred/socialauth/Profile;
    .end local v6    # "respStr":Ljava/lang/String;
    :cond_2
    new-instance v8, Lorg/brickred/socialauth/exception/SocialAuthException;

    .line 254
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Failed to retrieve the user profile from https://api.instagram.com/v1/users/self. Server response "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 255
    invoke-virtual {v7}, Lorg/brickred/socialauth/util/Response;->getStatus()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 254
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 253
    invoke-direct {v8, v9}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method private getScope(Lorg/brickred/socialauth/Permission;)Ljava/lang/String;
    .locals 6
    .param p1, "scope"    # Lorg/brickred/socialauth/Permission;

    .prologue
    .line 108
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 110
    .local v3, "result":Ljava/lang/StringBuffer;
    sget-object v4, Lorg/brickred/socialauth/Permission;->AUTHENTICATE_ONLY:Lorg/brickred/socialauth/Permission;

    invoke-virtual {v4, p1}, Lorg/brickred/socialauth/Permission;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 111
    sget-object v0, Lorg/brickred/socialauth/provider/InstagramImpl;->AuthPerms:[Ljava/lang/String;

    .line 118
    .local v0, "arr":[Ljava/lang/String;
    :goto_0
    const/4 v4, 0x0

    aget-object v4, v0, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 119
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    array-length v4, v0

    if-lt v1, v4, :cond_3

    .line 122
    iget-object v4, p0, Lorg/brickred/socialauth/provider/InstagramImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {p0, v4}, Lorg/brickred/socialauth/provider/InstagramImpl;->getPluginsScope(Lorg/brickred/socialauth/util/OAuthConfig;)Ljava/lang/String;

    move-result-object v2

    .line 123
    .local v2, "pluginScopes":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 124
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 126
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 112
    .end local v0    # "arr":[Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "pluginScopes":Ljava/lang/String;
    :cond_1
    sget-object v4, Lorg/brickred/socialauth/Permission;->CUSTOM:Lorg/brickred/socialauth/Permission;

    invoke-virtual {v4, p1}, Lorg/brickred/socialauth/Permission;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 113
    iget-object v4, p0, Lorg/brickred/socialauth/provider/InstagramImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v4}, Lorg/brickred/socialauth/util/OAuthConfig;->getCustomPermissions()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 114
    iget-object v4, p0, Lorg/brickred/socialauth/provider/InstagramImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v4}, Lorg/brickred/socialauth/util/OAuthConfig;->getCustomPermissions()Ljava/lang/String;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 115
    .restart local v0    # "arr":[Ljava/lang/String;
    goto :goto_0

    .line 116
    .end local v0    # "arr":[Ljava/lang/String;
    :cond_2
    sget-object v0, Lorg/brickred/socialauth/provider/InstagramImpl;->AllPerms:[Ljava/lang/String;

    .restart local v0    # "arr":[Ljava/lang/String;
    goto :goto_0

    .line 120
    .restart local v1    # "i":I
    :cond_3
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    aget-object v5, v0, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 119
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
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
    .line 135
    .local p3, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, "headerParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/brickred/socialauth/provider/InstagramImpl;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Calling URL : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 137
    :try_start_0
    iget-object v0, p0, Lorg/brickred/socialauth/provider/InstagramImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;->executeFeed(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)Lorg/brickred/socialauth/util/Response;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 139
    :catch_0
    move-exception v6

    .line 140
    .local v6, "e":Ljava/lang/Exception;
    new-instance v0, Lorg/brickred/socialauth/exception/SocialAuthException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 141
    const-string v2, "- while making request to URL : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 140
    invoke-direct {v0, v1, v6}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getAccessGrant()Lorg/brickred/socialauth/util/AccessGrant;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lorg/brickred/socialauth/provider/InstagramImpl;->accessGrant:Lorg/brickred/socialauth/util/AccessGrant;

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
    .line 152
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/brickred/socialauth/provider/InstagramImpl;->LOG:Lorg/apache/commons/logging/Log;

    const-string v15, "Fetching contacts from https://api.instagram.com/v1/users/self/follows"

    invoke-interface {v14, v15}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 155
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/brickred/socialauth/provider/InstagramImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    const-string v15, "https://api.instagram.com/v1/users/self/follows"

    invoke-interface {v14, v15}, Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;->executeFeed(Ljava/lang/String;)Lorg/brickred/socialauth/util/Response;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 161
    .local v12, "serviceResponse":Lorg/brickred/socialauth/util/Response;
    invoke-virtual {v12}, Lorg/brickred/socialauth/util/Response;->getStatus()I

    move-result v14

    const/16 v15, 0xc8

    if-eq v14, v15, :cond_0

    .line 162
    new-instance v14, Lorg/brickred/socialauth/exception/SocialAuthException;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "Error while getting contacts from https://api.instagram.com/v1/users/self/followsStatus : "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 163
    invoke-virtual {v12}, Lorg/brickred/socialauth/util/Response;->getStatus()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 162
    invoke-direct {v14, v15}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 156
    .end local v12    # "serviceResponse":Lorg/brickred/socialauth/util/Response;
    :catch_0
    move-exception v2

    .line 157
    .local v2, "e":Ljava/lang/Exception;
    new-instance v14, Lorg/brickred/socialauth/exception/SocialAuthException;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "Error : "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 158
    const-string v16, " - while getting contacts from "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "https://api.instagram.com/v1/users/self/follows"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 157
    invoke-direct {v14, v15, v2}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v14

    .line 167
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v12    # "serviceResponse":Lorg/brickred/socialauth/util/Response;
    :cond_0
    const-string v14, "UTF-8"

    invoke-virtual {v12, v14}, Lorg/brickred/socialauth/util/Response;->getResponseBodyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 168
    .local v11, "respStr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/brickred/socialauth/provider/InstagramImpl;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "Contacts JSON string :: "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 169
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 171
    .local v9, "plist":Ljava/util/List;, "Ljava/util/List<Lorg/brickred/socialauth/Contact;>;"
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 172
    .local v10, "resp":Lorg/json/JSONObject;
    const-string v14, "data"

    invoke-virtual {v10, v14}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 173
    .local v1, "data":Lorg/json/JSONArray;
    if-eqz v1, :cond_1

    .line 174
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-lt v4, v14, :cond_2

    .line 196
    .end local v4    # "i":I
    :cond_1
    return-object v9

    .line 175
    .restart local v4    # "i":I
    :cond_2
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 176
    .local v7, "obj":Lorg/json/JSONObject;
    new-instance v8, Lorg/brickred/socialauth/Contact;

    invoke-direct {v8}, Lorg/brickred/socialauth/Contact;-><init>()V

    .line 177
    .local v8, "p":Lorg/brickred/socialauth/Contact;
    const-string v14, "id"

    invoke-virtual {v7, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 178
    .local v5, "id":Ljava/lang/String;
    invoke-virtual {v8, v5}, Lorg/brickred/socialauth/Contact;->setId(Ljava/lang/String;)V

    .line 179
    const-string v14, "full_name"

    invoke-virtual {v7, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 180
    .local v3, "full_name":Ljava/lang/String;
    invoke-virtual {v8, v3}, Lorg/brickred/socialauth/Contact;->setDisplayName(Ljava/lang/String;)V

    .line 181
    if-eqz v3, :cond_3

    .line 182
    const-string v14, " "

    invoke-virtual {v3, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 183
    .local v6, "names":[Ljava/lang/String;
    array-length v14, v6

    const/4 v15, 0x1

    if-le v14, v15, :cond_4

    .line 184
    const/4 v14, 0x0

    aget-object v14, v6, v14

    invoke-virtual {v8, v14}, Lorg/brickred/socialauth/Contact;->setFirstName(Ljava/lang/String;)V

    .line 185
    const/4 v14, 0x1

    aget-object v14, v6, v14

    invoke-virtual {v8, v14}, Lorg/brickred/socialauth/Contact;->setLastName(Ljava/lang/String;)V

    .line 190
    .end local v6    # "names":[Ljava/lang/String;
    :cond_3
    :goto_1
    const-string/jumbo v14, "username"

    invoke-virtual {v7, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 191
    .local v13, "username":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "http://instagram.com/"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Lorg/brickred/socialauth/Contact;->setProfileUrl(Ljava/lang/String;)V

    .line 192
    const-string v14, "profile_picture"

    invoke-virtual {v7, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Lorg/brickred/socialauth/Contact;->setProfileImageURL(Ljava/lang/String;)V

    .line 193
    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 187
    .end local v13    # "username":Ljava/lang/String;
    .restart local v6    # "names":[Ljava/lang/String;
    :cond_4
    invoke-virtual {v8, v3}, Lorg/brickred/socialauth/Contact;->setFirstName(Ljava/lang/String;)V

    goto :goto_1
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
    .line 201
    iget-object v0, p0, Lorg/brickred/socialauth/provider/InstagramImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    invoke-interface {v0, p1}, Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;->getLoginRedirectURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getOauthStrategy()Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lorg/brickred/socialauth/provider/InstagramImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

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
    .line 327
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 328
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "org.brickred.socialauth.plugin.instagram.FeedPluginImpl"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 329
    iget-object v1, p0, Lorg/brickred/socialauth/provider/InstagramImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v1}, Lorg/brickred/socialauth/util/OAuthConfig;->getRegisteredPlugins()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 330
    iget-object v1, p0, Lorg/brickred/socialauth/provider/InstagramImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v1}, Lorg/brickred/socialauth/util/OAuthConfig;->getRegisteredPlugins()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_0

    .line 331
    iget-object v1, p0, Lorg/brickred/socialauth/provider/InstagramImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v1}, Lorg/brickred/socialauth/util/OAuthConfig;->getRegisteredPlugins()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 333
    :cond_0
    return-object v0
.end method

.method public getProviderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lorg/brickred/socialauth/provider/InstagramImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

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
    .line 212
    iget-object v0, p0, Lorg/brickred/socialauth/provider/InstagramImpl;->userProfile:Lorg/brickred/socialauth/Profile;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/brickred/socialauth/provider/InstagramImpl;->accessGrant:Lorg/brickred/socialauth/util/AccessGrant;

    if-eqz v0, :cond_0

    .line 213
    invoke-direct {p0}, Lorg/brickred/socialauth/provider/InstagramImpl;->getProfile()Lorg/brickred/socialauth/Profile;

    move-result-object v0

    iput-object v0, p0, Lorg/brickred/socialauth/provider/InstagramImpl;->userProfile:Lorg/brickred/socialauth/Profile;

    .line 216
    :cond_0
    iget-object v0, p0, Lorg/brickred/socialauth/provider/InstagramImpl;->userProfile:Lorg/brickred/socialauth/Profile;

    return-object v0
.end method

.method public logout()V
    .locals 1

    .prologue
    .line 261
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/brickred/socialauth/provider/InstagramImpl;->accessGrant:Lorg/brickred/socialauth/util/AccessGrant;

    .line 262
    iget-object v0, p0, Lorg/brickred/socialauth/provider/InstagramImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    invoke-interface {v0}, Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;->logout()V

    .line 263
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
    .line 268
    iput-object p1, p0, Lorg/brickred/socialauth/provider/InstagramImpl;->accessGrant:Lorg/brickred/socialauth/util/AccessGrant;

    .line 269
    iget-object v0, p0, Lorg/brickred/socialauth/provider/InstagramImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    invoke-interface {v0, p1}, Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;->setAccessGrant(Lorg/brickred/socialauth/util/AccessGrant;)V

    .line 270
    return-void
.end method

.method public setPermission(Lorg/brickred/socialauth/Permission;)V
    .locals 3
    .param p1, "p"    # Lorg/brickred/socialauth/Permission;

    .prologue
    .line 274
    iget-object v0, p0, Lorg/brickred/socialauth/provider/InstagramImpl;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Permission requested: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/brickred/socialauth/Permission;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 276
    iget-object v0, p0, Lorg/brickred/socialauth/provider/InstagramImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    invoke-interface {v0, p1}, Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;->setPermission(Lorg/brickred/socialauth/Permission;)V

    .line 277
    iget-object v0, p0, Lorg/brickred/socialauth/provider/InstagramImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    invoke-direct {p0, p1}, Lorg/brickred/socialauth/provider/InstagramImpl;->getScope(Lorg/brickred/socialauth/Permission;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;->setScope(Ljava/lang/String;)V

    .line 278
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
    .line 282
    iget-object v0, p0, Lorg/brickred/socialauth/provider/InstagramImpl;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "WARNING: Not implemented for Instagram"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 283
    new-instance v0, Lorg/brickred/socialauth/exception/SocialAuthException;

    .line 284
    const-string v1, "Update Status is not implemented for Instagram"

    .line 283
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
    .line 290
    iget-object v0, p0, Lorg/brickred/socialauth/provider/InstagramImpl;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "WARNING: Not implemented for Instagram"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 291
    new-instance v0, Lorg/brickred/socialauth/exception/SocialAuthException;

    .line 292
    const-string v1, "Upload Image is not implemented for Instagram"

    .line 291
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
    .line 298
    .local p1, "requestParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lorg/brickred/socialauth/provider/InstagramImpl;->doVerifyResponse(Ljava/util/Map;)Lorg/brickred/socialauth/Profile;

    move-result-object v0

    return-object v0
.end method
