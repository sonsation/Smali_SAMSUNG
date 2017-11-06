.class public Lorg/brickred/socialauth/provider/GoogleImpl;
.super Lorg/brickred/socialauth/AbstractProvider;
.source "GoogleImpl.java"


# static fields
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

.field private static final OAUTH_SCOPE:Ljava/lang/String; = "https://www.google.com/m8/feeds/"

.field private static final serialVersionUID:J = -0x5450cdd065b48dc5L


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
    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/brickred/socialauth/provider/GoogleImpl;->ENDPOINTS:Ljava/util/Map;

    .line 85
    sget-object v0, Lorg/brickred/socialauth/provider/GoogleImpl;->ENDPOINTS:Ljava/util/Map;

    const-string/jumbo v1, "reqTokenURL"

    .line 86
    const-string v2, "https://www.google.com/accounts/o8/ud"

    .line 85
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lorg/brickred/socialauth/provider/GoogleImpl;->ENDPOINTS:Ljava/util/Map;

    const-string v1, "accessTokenURL"

    .line 88
    const-string v2, "https://www.google.com/accounts/OAuthGetAccessToken"

    .line 87
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
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
    .line 99
    invoke-direct {p0}, Lorg/brickred/socialauth/AbstractProvider;-><init>()V

    .line 75
    const-class v0, Lorg/brickred/socialauth/provider/GoogleImpl;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/brickred/socialauth/provider/GoogleImpl;->LOG:Lorg/apache/commons/logging/Log;

    .line 100
    iput-object p1, p0, Lorg/brickred/socialauth/provider/GoogleImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/brickred/socialauth/provider/GoogleImpl;->accessToken:Lorg/brickred/socialauth/util/AccessGrant;

    .line 102
    iget-object v0, p0, Lorg/brickred/socialauth/provider/GoogleImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v0}, Lorg/brickred/socialauth/util/OAuthConfig;->getCustomPermissions()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 103
    sget-object v0, Lorg/brickred/socialauth/Permission;->CUSTOM:Lorg/brickred/socialauth/Permission;

    iput-object v0, p0, Lorg/brickred/socialauth/provider/GoogleImpl;->scope:Lorg/brickred/socialauth/Permission;

    .line 105
    :cond_0
    iget-object v0, p0, Lorg/brickred/socialauth/provider/GoogleImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v0}, Lorg/brickred/socialauth/util/OAuthConfig;->getRequestTokenUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 106
    sget-object v0, Lorg/brickred/socialauth/provider/GoogleImpl;->ENDPOINTS:Ljava/util/Map;

    const-string/jumbo v1, "reqTokenURL"

    .line 107
    iget-object v2, p0, Lorg/brickred/socialauth/provider/GoogleImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v2}, Lorg/brickred/socialauth/util/OAuthConfig;->getRequestTokenUrl()Ljava/lang/String;

    move-result-object v2

    .line 106
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    :goto_0
    iget-object v0, p0, Lorg/brickred/socialauth/provider/GoogleImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v0}, Lorg/brickred/socialauth/util/OAuthConfig;->getAccessTokenUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 114
    sget-object v0, Lorg/brickred/socialauth/provider/GoogleImpl;->ENDPOINTS:Ljava/util/Map;

    const-string v1, "accessTokenURL"

    .line 115
    iget-object v2, p0, Lorg/brickred/socialauth/provider/GoogleImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v2}, Lorg/brickred/socialauth/util/OAuthConfig;->getAccessTokenUrl()Ljava/lang/String;

    move-result-object v2

    .line 114
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    :goto_1
    new-instance v0, Lorg/brickred/socialauth/oauthstrategy/Hybrid;

    iget-object v1, p0, Lorg/brickred/socialauth/provider/GoogleImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    sget-object v2, Lorg/brickred/socialauth/provider/GoogleImpl;->ENDPOINTS:Ljava/util/Map;

    invoke-direct {v0, v1, v2}, Lorg/brickred/socialauth/oauthstrategy/Hybrid;-><init>(Lorg/brickred/socialauth/util/OAuthConfig;Ljava/util/Map;)V

    iput-object v0, p0, Lorg/brickred/socialauth/provider/GoogleImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    .line 122
    iget-object v0, p0, Lorg/brickred/socialauth/provider/GoogleImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    iget-object v1, p0, Lorg/brickred/socialauth/provider/GoogleImpl;->scope:Lorg/brickred/socialauth/Permission;

    invoke-interface {v0, v1}, Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;->setPermission(Lorg/brickred/socialauth/Permission;)V

    .line 123
    iget-object v0, p0, Lorg/brickred/socialauth/provider/GoogleImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    invoke-direct {p0}, Lorg/brickred/socialauth/provider/GoogleImpl;->getScope()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;->setScope(Ljava/lang/String;)V

    .line 124
    return-void

    .line 109
    :cond_1
    iget-object v1, p0, Lorg/brickred/socialauth/provider/GoogleImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    sget-object v0, Lorg/brickred/socialauth/provider/GoogleImpl;->ENDPOINTS:Ljava/util/Map;

    .line 110
    const-string v2, "authorizationURL"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 109
    invoke-virtual {v1, v0}, Lorg/brickred/socialauth/util/OAuthConfig;->setRequestTokenUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 117
    :cond_2
    iget-object v1, p0, Lorg/brickred/socialauth/provider/GoogleImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    sget-object v0, Lorg/brickred/socialauth/provider/GoogleImpl;->ENDPOINTS:Ljava/util/Map;

    .line 118
    const-string v2, "accessTokenURL"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 117
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
    .line 172
    .local p1, "requestParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/brickred/socialauth/provider/GoogleImpl;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "Verifying the authentication response from provider"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 173
    iget-object v0, p0, Lorg/brickred/socialauth/provider/GoogleImpl;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "Verifying the authentication response from provider"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 174
    const-string v0, "openid.mode"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 175
    const-string v0, "cancel"

    const-string v1, "openid.mode"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    new-instance v0, Lorg/brickred/socialauth/exception/UserDeniedPermissionException;

    invoke-direct {v0}, Lorg/brickred/socialauth/exception/UserDeniedPermissionException;-><init>()V

    throw v0

    .line 178
    :cond_0
    iget-object v0, p0, Lorg/brickred/socialauth/provider/GoogleImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    invoke-interface {v0, p1}, Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;->verifyResponse(Ljava/util/Map;)Lorg/brickred/socialauth/util/AccessGrant;

    move-result-object v0

    iput-object v0, p0, Lorg/brickred/socialauth/provider/GoogleImpl;->accessToken:Lorg/brickred/socialauth/util/AccessGrant;

    .line 179
    iget-object v0, p0, Lorg/brickred/socialauth/provider/GoogleImpl;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "Obtaining profile from OpenID response"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 180
    invoke-direct {p0, p1}, Lorg/brickred/socialauth/provider/GoogleImpl;->getProfile(Ljava/util/Map;)Lorg/brickred/socialauth/Profile;

    move-result-object v0

    return-object v0
.end method

.method private getProfile(Ljava/util/Map;)Lorg/brickred/socialauth/Profile;
    .locals 3
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

    .prologue
    .line 184
    .local p1, "requestParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Lorg/brickred/socialauth/util/OpenIdConsumer;->getUserInfo(Ljava/util/Map;)Lorg/brickred/socialauth/Profile;

    move-result-object v0

    iput-object v0, p0, Lorg/brickred/socialauth/provider/GoogleImpl;->userProfile:Lorg/brickred/socialauth/Profile;

    .line 185
    iget-object v0, p0, Lorg/brickred/socialauth/provider/GoogleImpl;->userProfile:Lorg/brickred/socialauth/Profile;

    invoke-virtual {p0}, Lorg/brickred/socialauth/provider/GoogleImpl;->getProviderId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/brickred/socialauth/Profile;->setProviderId(Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lorg/brickred/socialauth/provider/GoogleImpl;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "User Info : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/brickred/socialauth/provider/GoogleImpl;->userProfile:Lorg/brickred/socialauth/Profile;

    invoke-virtual {v2}, Lorg/brickred/socialauth/Profile;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 187
    iget-object v0, p0, Lorg/brickred/socialauth/provider/GoogleImpl;->userProfile:Lorg/brickred/socialauth/Profile;

    return-object v0
.end method

.method private getScope()Ljava/lang/String;
    .locals 7

    .prologue
    .line 398
    sget-object v5, Lorg/brickred/socialauth/Permission;->AUTHENTICATE_ONLY:Lorg/brickred/socialauth/Permission;

    iget-object v6, p0, Lorg/brickred/socialauth/provider/GoogleImpl;->scope:Lorg/brickred/socialauth/Permission;

    invoke-virtual {v5, v6}, Lorg/brickred/socialauth/Permission;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 399
    const/4 v4, 0x0

    .line 411
    .local v4, "scopeStr":Ljava/lang/String;
    :goto_0
    iget-object v5, p0, Lorg/brickred/socialauth/provider/GoogleImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {p0, v5}, Lorg/brickred/socialauth/provider/GoogleImpl;->getPluginsScope(Lorg/brickred/socialauth/util/OAuthConfig;)Ljava/lang/String;

    move-result-object v2

    .line 412
    .local v2, "pluginScopes":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 413
    if-eqz v4, :cond_4

    .line 414
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 419
    :cond_0
    :goto_1
    return-object v4

    .line 400
    .end local v2    # "pluginScopes":Ljava/lang/String;
    .end local v4    # "scopeStr":Ljava/lang/String;
    :cond_1
    sget-object v5, Lorg/brickred/socialauth/Permission;->CUSTOM:Lorg/brickred/socialauth/Permission;

    iget-object v6, p0, Lorg/brickred/socialauth/provider/GoogleImpl;->scope:Lorg/brickred/socialauth/Permission;

    invoke-virtual {v5, v6}, Lorg/brickred/socialauth/Permission;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 401
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 402
    .local v3, "sb":Ljava/lang/StringBuffer;
    iget-object v5, p0, Lorg/brickred/socialauth/provider/GoogleImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v5}, Lorg/brickred/socialauth/util/OAuthConfig;->getCustomPermissions()Ljava/lang/String;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 403
    .local v0, "arr":[Ljava/lang/String;
    const/4 v5, 0x0

    aget-object v5, v0, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 404
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_2
    array-length v5, v0

    if-lt v1, v5, :cond_2

    .line 407
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 408
    .restart local v4    # "scopeStr":Ljava/lang/String;
    goto :goto_0

    .line 405
    .end local v4    # "scopeStr":Ljava/lang/String;
    :cond_2
    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    aget-object v6, v0, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 404
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 409
    .end local v0    # "arr":[Ljava/lang/String;
    .end local v1    # "i":I
    .end local v3    # "sb":Ljava/lang/StringBuffer;
    :cond_3
    const-string v4, "https://www.google.com/m8/feeds/"

    .restart local v4    # "scopeStr":Ljava/lang/String;
    goto :goto_0

    .line 416
    .restart local v2    # "pluginScopes":Ljava/lang/String;
    :cond_4
    move-object v4, v2

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
    .line 340
    .local p3, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, "headerParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 341
    .local v7, "serviceResponse":Lorg/brickred/socialauth/util/Response;
    sget-object v0, Lorg/brickred/socialauth/util/MethodType;->GET:Lorg/brickred/socialauth/util/MethodType;

    invoke-virtual {v0}, Lorg/brickred/socialauth/util/MethodType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 342
    new-instance v0, Lorg/brickred/socialauth/exception/SocialAuthException;

    .line 343
    const-string v1, "Only GET method is implemented in Google API function"

    .line 342
    invoke-direct {v0, v1}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 345
    :cond_0
    iget-object v0, p0, Lorg/brickred/socialauth/provider/GoogleImpl;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Calling URL : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 347
    :try_start_0
    iget-object v0, p0, Lorg/brickred/socialauth/provider/GoogleImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;->executeFeed(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)Lorg/brickred/socialauth/util/Response;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 353
    return-object v7

    .line 349
    :catch_0
    move-exception v6

    .line 350
    .local v6, "ie":Ljava/lang/Exception;
    new-instance v0, Lorg/brickred/socialauth/exception/SocialAuthException;

    .line 351
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error while making request to URL : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 350
    invoke-direct {v0, v1, v6}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getAccessGrant()Lorg/brickred/socialauth/util/AccessGrant;
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lorg/brickred/socialauth/provider/GoogleImpl;->accessToken:Lorg/brickred/socialauth/util/AccessGrant;

    return-object v0
.end method

.method public getContactList()Ljava/util/List;
    .locals 25
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
    .line 207
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/brickred/socialauth/provider/GoogleImpl;->LOG:Lorg/apache/commons/logging/Log;

    move-object/from16 v22, v0

    const-string v23, "Fetching contacts from https://www.google.com/m8/feeds/contacts/default/full/?max-results=1000"

    invoke-interface/range {v22 .. v23}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 208
    sget-object v22, Lorg/brickred/socialauth/Permission;->AUTHENTICATE_ONLY:Lorg/brickred/socialauth/Permission;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/brickred/socialauth/provider/GoogleImpl;->scope:Lorg/brickred/socialauth/Permission;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lorg/brickred/socialauth/Permission;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 209
    new-instance v22, Lorg/brickred/socialauth/exception/SocialAuthException;

    .line 210
    const-string v23, "You have not set Permission to get contacts."

    .line 209
    invoke-direct/range {v22 .. v23}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 212
    :cond_0
    const/16 v21, 0x0

    .line 214
    .local v21, "serviceResponse":Lorg/brickred/socialauth/util/Response;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/brickred/socialauth/provider/GoogleImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    move-object/from16 v22, v0

    .line 215
    const-string v23, "https://www.google.com/m8/feeds/contacts/default/full/?max-results=1000"

    invoke-interface/range {v22 .. v23}, Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;->executeFeed(Ljava/lang/String;)Lorg/brickred/socialauth/util/Response;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v21

    .line 221
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 226
    .local v17, "plist":Ljava/util/List;, "Ljava/util/List<Lorg/brickred/socialauth/Contact;>;"
    :try_start_1
    invoke-virtual/range {v21 .. v21}, Lorg/brickred/socialauth/util/Response;->getInputStream()Ljava/io/InputStream;

    move-result-object v22

    .line 225
    invoke-static/range {v22 .. v22}, Lorg/brickred/socialauth/util/XMLParseUtil;->loadXmlResource(Ljava/io/InputStream;)Lorg/w3c/dom/Element;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v18

    .line 232
    .local v18, "root":Lorg/w3c/dom/Element;
    const-string v22, "entry"

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 233
    .local v4, "contactsList":Lorg/w3c/dom/NodeList;
    if-eqz v4, :cond_a

    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v22

    if-lez v22, :cond_a

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/brickred/socialauth/provider/GoogleImpl;->LOG:Lorg/apache/commons/logging/Log;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "Found contacts : "

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-interface/range {v22 .. v23}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 235
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v22

    move/from16 v0, v22

    if-lt v10, v0, :cond_1

    .line 291
    .end local v10    # "i":I
    :goto_1
    return-object v17

    .line 216
    .end local v4    # "contactsList":Lorg/w3c/dom/NodeList;
    .end local v17    # "plist":Ljava/util/List;, "Ljava/util/List<Lorg/brickred/socialauth/Contact;>;"
    .end local v18    # "root":Lorg/w3c/dom/Element;
    :catch_0
    move-exception v12

    .line 217
    .local v12, "ie":Ljava/lang/Exception;
    new-instance v22, Lorg/brickred/socialauth/exception/SocialAuthException;

    .line 218
    const-string v23, "Failed to retrieve the contacts from https://www.google.com/m8/feeds/contacts/default/full/?max-results=1000"

    .line 217
    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v12}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v22

    .line 227
    .end local v12    # "ie":Ljava/lang/Exception;
    .restart local v17    # "plist":Ljava/util/List;, "Ljava/util/List<Lorg/brickred/socialauth/Contact;>;"
    :catch_1
    move-exception v6

    .line 228
    .local v6, "e":Ljava/lang/Exception;
    new-instance v22, Lorg/brickred/socialauth/exception/ServerDataException;

    .line 229
    const-string v23, "Failed to parse the contacts from response.https://www.google.com/m8/feeds/contacts/default/full/?max-results=1000"

    .line 228
    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v6}, Lorg/brickred/socialauth/exception/ServerDataException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v22

    .line 236
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v4    # "contactsList":Lorg/w3c/dom/NodeList;
    .restart local v10    # "i":I
    .restart local v18    # "root":Lorg/w3c/dom/Element;
    :cond_1
    invoke-interface {v4, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    .line 237
    .local v3, "contact":Lorg/w3c/dom/Element;
    const-string v9, ""

    .line 238
    .local v9, "fname":Ljava/lang/String;
    const-string v22, "http://schemas.google.com/g/2005"

    .line 239
    const-string v23, "email"

    .line 238
    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v3, v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v14

    .line 240
    .local v14, "l":Lorg/w3c/dom/NodeList;
    const/4 v2, 0x0

    .line 241
    .local v2, "address":Ljava/lang/String;
    const/4 v8, 0x0

    .line 242
    .local v8, "emailArr":[Ljava/lang/String;
    if-eqz v14, :cond_3

    invoke-interface {v14}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v22

    if-lez v22, :cond_3

    .line 243
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-interface {v14, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    check-cast v7, Lorg/w3c/dom/Element;

    .line 244
    .local v7, "el":Lorg/w3c/dom/Element;
    if-eqz v7, :cond_2

    .line 245
    const-string v22, "address"

    move-object/from16 v0, v22

    invoke-interface {v7, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 247
    :cond_2
    invoke-interface {v14}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_3

    .line 248
    invoke-interface {v14}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v22

    add-int/lit8 v22, v22, -0x1

    move/from16 v0, v22

    new-array v8, v0, [Ljava/lang/String;

    .line 249
    const/4 v13, 0x1

    .local v13, "k":I
    :goto_2
    invoke-interface {v14}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v22

    move/from16 v0, v22

    if-lt v13, v0, :cond_7

    .line 257
    .end local v7    # "el":Lorg/w3c/dom/Element;
    .end local v13    # "k":I
    :cond_3
    const-string v15, ""

    .line 258
    .local v15, "lname":Ljava/lang/String;
    const-string/jumbo v22, "title"

    move-object/from16 v0, v22

    invoke-static {v3, v0}, Lorg/brickred/socialauth/util/XMLParseUtil;->getElementData(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 259
    .local v5, "dispName":Ljava/lang/String;
    if-eqz v5, :cond_5

    .line 260
    const-string v22, " "

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 261
    .local v19, "sarr":[Ljava/lang/String;
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v22, v0

    if-lez v22, :cond_5

    .line 262
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_4

    .line 263
    const/16 v22, 0x0

    aget-object v9, v19, v22

    .line 265
    :cond_4
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_5

    .line 266
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    .line 267
    .local v20, "sb":Ljava/lang/StringBuilder;
    const/4 v13, 0x1

    .restart local v13    # "k":I
    :goto_3
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v13, v0, :cond_9

    .line 270
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 274
    .end local v13    # "k":I
    .end local v19    # "sarr":[Ljava/lang/String;
    .end local v20    # "sb":Ljava/lang/StringBuilder;
    :cond_5
    const-string v22, "id"

    move-object/from16 v0, v22

    invoke-static {v3, v0}, Lorg/brickred/socialauth/util/XMLParseUtil;->getElementData(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 276
    .local v11, "id":Ljava/lang/String;
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v22

    if-lez v22, :cond_6

    .line 277
    new-instance v16, Lorg/brickred/socialauth/Contact;

    invoke-direct/range {v16 .. v16}, Lorg/brickred/socialauth/Contact;-><init>()V

    .line 278
    .local v16, "p":Lorg/brickred/socialauth/Contact;
    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Lorg/brickred/socialauth/Contact;->setFirstName(Ljava/lang/String;)V

    .line 279
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lorg/brickred/socialauth/Contact;->setLastName(Ljava/lang/String;)V

    .line 280
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/brickred/socialauth/Contact;->setEmail(Ljava/lang/String;)V

    .line 281
    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lorg/brickred/socialauth/Contact;->setDisplayName(Ljava/lang/String;)V

    .line 282
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Lorg/brickred/socialauth/Contact;->setOtherEmails([Ljava/lang/String;)V

    .line 283
    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Lorg/brickred/socialauth/Contact;->setId(Ljava/lang/String;)V

    .line 284
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    .end local v16    # "p":Lorg/brickred/socialauth/Contact;
    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 250
    .end local v5    # "dispName":Ljava/lang/String;
    .end local v11    # "id":Ljava/lang/String;
    .end local v15    # "lname":Ljava/lang/String;
    .restart local v7    # "el":Lorg/w3c/dom/Element;
    .restart local v13    # "k":I
    :cond_7
    invoke-interface {v14, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/Element;

    .line 251
    .local v6, "e":Lorg/w3c/dom/Element;
    if-eqz v6, :cond_8

    .line 252
    add-int/lit8 v22, v13, -0x1

    const-string v23, "address"

    move-object/from16 v0, v23

    invoke-interface {v6, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v8, v22

    .line 249
    :cond_8
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_2

    .line 268
    .end local v6    # "e":Lorg/w3c/dom/Element;
    .end local v7    # "el":Lorg/w3c/dom/Element;
    .restart local v5    # "dispName":Ljava/lang/String;
    .restart local v15    # "lname":Ljava/lang/String;
    .restart local v19    # "sarr":[Ljava/lang/String;
    .restart local v20    # "sb":Ljava/lang/StringBuilder;
    :cond_9
    aget-object v22, v19, v13

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 288
    .end local v2    # "address":Ljava/lang/String;
    .end local v3    # "contact":Lorg/w3c/dom/Element;
    .end local v5    # "dispName":Ljava/lang/String;
    .end local v8    # "emailArr":[Ljava/lang/String;
    .end local v9    # "fname":Ljava/lang/String;
    .end local v10    # "i":I
    .end local v13    # "k":I
    .end local v14    # "l":Lorg/w3c/dom/NodeList;
    .end local v15    # "lname":Ljava/lang/String;
    .end local v19    # "sarr":[Ljava/lang/String;
    .end local v20    # "sb":Ljava/lang/StringBuilder;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/brickred/socialauth/provider/GoogleImpl;->LOG:Lorg/apache/commons/logging/Log;

    move-object/from16 v22, v0

    const-string v23, "No contacts were obtained from the feed : https://www.google.com/m8/feeds/contacts/default/full/?max-results=1000"

    invoke-interface/range {v22 .. v23}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto/16 :goto_1
.end method

.method public getLoginRedirectURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "successUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 149
    iget-object v1, p0, Lorg/brickred/socialauth/provider/GoogleImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    invoke-interface {v1, p1}, Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;->getLoginRedirectURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, "url":Ljava/lang/String;
    iget-object v1, p0, Lorg/brickred/socialauth/provider/GoogleImpl;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Redirection to following URL should happen : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 151
    return-object v0
.end method

.method protected getOauthStrategy()Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lorg/brickred/socialauth/provider/GoogleImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

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
    .line 424
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 425
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lorg/brickred/socialauth/provider/GoogleImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v1}, Lorg/brickred/socialauth/util/OAuthConfig;->getRegisteredPlugins()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 426
    iget-object v1, p0, Lorg/brickred/socialauth/provider/GoogleImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v1}, Lorg/brickred/socialauth/util/OAuthConfig;->getRegisteredPlugins()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_0

    .line 427
    iget-object v1, p0, Lorg/brickred/socialauth/provider/GoogleImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v1}, Lorg/brickred/socialauth/util/OAuthConfig;->getRegisteredPlugins()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 429
    :cond_0
    return-object v0
.end method

.method public getProviderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lorg/brickred/socialauth/provider/GoogleImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v0}, Lorg/brickred/socialauth/util/OAuthConfig;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserProfile()Lorg/brickred/socialauth/Profile;
    .locals 6

    .prologue
    .line 363
    iget-object v4, p0, Lorg/brickred/socialauth/provider/GoogleImpl;->userProfile:Lorg/brickred/socialauth/Profile;

    if-nez v4, :cond_0

    iget-object v4, p0, Lorg/brickred/socialauth/provider/GoogleImpl;->accessToken:Lorg/brickred/socialauth/util/AccessGrant;

    if-eqz v4, :cond_0

    .line 364
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 365
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v4, p0, Lorg/brickred/socialauth/provider/GoogleImpl;->accessToken:Lorg/brickred/socialauth/util/AccessGrant;

    invoke-virtual {v4}, Lorg/brickred/socialauth/util/AccessGrant;->getAttributes()Ljava/util/Map;

    move-result-object v4

    .line 366
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 365
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 371
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 372
    invoke-direct {p0, v2}, Lorg/brickred/socialauth/provider/GoogleImpl;->getProfile(Ljava/util/Map;)Lorg/brickred/socialauth/Profile;

    .line 375
    .end local v2    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    iget-object v4, p0, Lorg/brickred/socialauth/provider/GoogleImpl;->userProfile:Lorg/brickred/socialauth/Profile;

    return-object v4

    .line 366
    .restart local v2    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 367
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 368
    .local v1, "key":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 369
    .local v3, "value":Ljava/lang/String;
    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public logout()V
    .locals 1

    .prologue
    .line 299
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/brickred/socialauth/provider/GoogleImpl;->accessToken:Lorg/brickred/socialauth/util/AccessGrant;

    .line 300
    iget-object v0, p0, Lorg/brickred/socialauth/provider/GoogleImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    invoke-interface {v0}, Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;->logout()V

    .line 301
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
    .line 136
    iput-object p1, p0, Lorg/brickred/socialauth/provider/GoogleImpl;->accessToken:Lorg/brickred/socialauth/util/AccessGrant;

    .line 137
    iget-object v0, p0, Lorg/brickred/socialauth/provider/GoogleImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    invoke-interface {v0, p1}, Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;->setAccessGrant(Lorg/brickred/socialauth/util/AccessGrant;)V

    .line 138
    return-void
.end method

.method public setPermission(Lorg/brickred/socialauth/Permission;)V
    .locals 3
    .param p1, "p"    # Lorg/brickred/socialauth/Permission;

    .prologue
    .line 311
    iget-object v0, p0, Lorg/brickred/socialauth/provider/GoogleImpl;->LOG:Lorg/apache/commons/logging/Log;

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

    .line 312
    iput-object p1, p0, Lorg/brickred/socialauth/provider/GoogleImpl;->scope:Lorg/brickred/socialauth/Permission;

    .line 313
    iget-object v0, p0, Lorg/brickred/socialauth/provider/GoogleImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    iget-object v1, p0, Lorg/brickred/socialauth/provider/GoogleImpl;->scope:Lorg/brickred/socialauth/Permission;

    invoke-interface {v0, v1}, Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;->setPermission(Lorg/brickred/socialauth/Permission;)V

    .line 314
    iget-object v0, p0, Lorg/brickred/socialauth/provider/GoogleImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    invoke-direct {p0}, Lorg/brickred/socialauth/provider/GoogleImpl;->getScope()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;->setScope(Ljava/lang/String;)V

    .line 315
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
    .line 192
    iget-object v0, p0, Lorg/brickred/socialauth/provider/GoogleImpl;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "WARNING: Not implemented for Google"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 193
    new-instance v0, Lorg/brickred/socialauth/exception/SocialAuthException;

    .line 194
    const-string v1, "Update Status is not implemented for Google"

    .line 193
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
    .line 391
    iget-object v0, p0, Lorg/brickred/socialauth/provider/GoogleImpl;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "WARNING: Not implemented for Google"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 392
    new-instance v0, Lorg/brickred/socialauth/exception/SocialAuthException;

    .line 393
    const-string v1, "Update Status is not implemented for Google"

    .line 392
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
    .line 167
    .local p1, "requestParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lorg/brickred/socialauth/provider/GoogleImpl;->doVerifyResponse(Ljava/util/Map;)Lorg/brickred/socialauth/Profile;

    move-result-object v0

    return-object v0
.end method
