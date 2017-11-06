.class public Lorg/brickred/socialauth/provider/FlickerImpl;
.super Lorg/brickred/socialauth/AbstractProvider;
.source "FlickerImpl.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/brickred/socialauth/AuthProvider;


# static fields
.field private static final AllPerms:[Ljava/lang/String;

.field private static final AuthPerms:[Ljava/lang/String;

.field private static final CONTACT_URL:Ljava/lang/String; = "http://api.flickr.com/services/rest/?method=flickr.contacts.getList&user_id=%1$s&apikey=%2$s"

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

.field private static final PROFILE_URL:Ljava/lang/String; = "http://api.flickr.com/services/rest/?method=flickr.people.getInfo&user_id=%1$s&apikey=%2$s"

.field private static final serialVersionUID:J = 0x1a7bf9e9a773ca9aL


# instance fields
.field private final LOG:Lorg/apache/commons/logging/Log;

.field private accessToken:Lorg/brickred/socialauth/util/AccessGrant;

.field private final authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

.field private final config:Lorg/brickred/socialauth/util/OAuthConfig;

.field private isVerify:Z

.field private scope:Lorg/brickred/socialauth/Permission;

.field private userProfile:Lorg/brickred/socialauth/Profile;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 81
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "delete"

    aput-object v1, v0, v2

    sput-object v0, Lorg/brickred/socialauth/provider/FlickerImpl;->AllPerms:[Ljava/lang/String;

    .line 82
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "read"

    aput-object v1, v0, v2

    sput-object v0, Lorg/brickred/socialauth/provider/FlickerImpl;->AuthPerms:[Ljava/lang/String;

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/brickred/socialauth/provider/FlickerImpl;->ENDPOINTS:Ljava/util/Map;

    .line 86
    sget-object v0, Lorg/brickred/socialauth/provider/FlickerImpl;->ENDPOINTS:Ljava/util/Map;

    const-string/jumbo v1, "reqTokenURL"

    .line 87
    const-string v2, "http://www.flickr.com/services/oauth/request_token"

    .line 86
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lorg/brickred/socialauth/provider/FlickerImpl;->ENDPOINTS:Ljava/util/Map;

    const-string v1, "authorizationURL"

    .line 89
    const-string v2, "http://www.flickr.com/services/oauth/authorize"

    .line 88
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lorg/brickred/socialauth/provider/FlickerImpl;->ENDPOINTS:Ljava/util/Map;

    const-string v1, "accessTokenURL"

    .line 91
    const-string v2, "http://www.flickr.com/services/oauth/access_token"

    .line 90
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
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
    .line 102
    invoke-direct {p0}, Lorg/brickred/socialauth/AbstractProvider;-><init>()V

    .line 72
    const-class v0, Lorg/brickred/socialauth/provider/FlickerImpl;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/brickred/socialauth/provider/FlickerImpl;->LOG:Lorg/apache/commons/logging/Log;

    .line 103
    iput-object p1, p0, Lorg/brickred/socialauth/provider/FlickerImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    .line 105
    iget-object v0, p0, Lorg/brickred/socialauth/provider/FlickerImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v0}, Lorg/brickred/socialauth/util/OAuthConfig;->getCustomPermissions()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 106
    sget-object v0, Lorg/brickred/socialauth/Permission;->CUSTOM:Lorg/brickred/socialauth/Permission;

    iput-object v0, p0, Lorg/brickred/socialauth/provider/FlickerImpl;->scope:Lorg/brickred/socialauth/Permission;

    .line 109
    :cond_0
    iget-object v0, p0, Lorg/brickred/socialauth/provider/FlickerImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v0}, Lorg/brickred/socialauth/util/OAuthConfig;->getRequestTokenUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 110
    sget-object v0, Lorg/brickred/socialauth/provider/FlickerImpl;->ENDPOINTS:Ljava/util/Map;

    const-string/jumbo v1, "reqTokenURL"

    .line 111
    iget-object v2, p0, Lorg/brickred/socialauth/provider/FlickerImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v2}, Lorg/brickred/socialauth/util/OAuthConfig;->getRequestTokenUrl()Ljava/lang/String;

    move-result-object v2

    .line 110
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    :goto_0
    iget-object v0, p0, Lorg/brickred/socialauth/provider/FlickerImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v0}, Lorg/brickred/socialauth/util/OAuthConfig;->getAuthenticationUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 118
    sget-object v0, Lorg/brickred/socialauth/provider/FlickerImpl;->ENDPOINTS:Ljava/util/Map;

    const-string v1, "authorizationURL"

    .line 119
    iget-object v2, p0, Lorg/brickred/socialauth/provider/FlickerImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v2}, Lorg/brickred/socialauth/util/OAuthConfig;->getAuthenticationUrl()Ljava/lang/String;

    move-result-object v2

    .line 118
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    :goto_1
    iget-object v0, p0, Lorg/brickred/socialauth/provider/FlickerImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v0}, Lorg/brickred/socialauth/util/OAuthConfig;->getAccessTokenUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 126
    sget-object v0, Lorg/brickred/socialauth/provider/FlickerImpl;->ENDPOINTS:Ljava/util/Map;

    const-string v1, "accessTokenURL"

    .line 127
    iget-object v2, p0, Lorg/brickred/socialauth/provider/FlickerImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v2}, Lorg/brickred/socialauth/util/OAuthConfig;->getAccessTokenUrl()Ljava/lang/String;

    move-result-object v2

    .line 126
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    :goto_2
    new-instance v0, Lorg/brickred/socialauth/oauthstrategy/OAuth1;

    iget-object v1, p0, Lorg/brickred/socialauth/provider/FlickerImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    sget-object v2, Lorg/brickred/socialauth/provider/FlickerImpl;->ENDPOINTS:Ljava/util/Map;

    invoke-direct {v0, v1, v2}, Lorg/brickred/socialauth/oauthstrategy/OAuth1;-><init>(Lorg/brickred/socialauth/util/OAuthConfig;Ljava/util/Map;)V

    iput-object v0, p0, Lorg/brickred/socialauth/provider/FlickerImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    .line 133
    iget-object v0, p0, Lorg/brickred/socialauth/provider/FlickerImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    iget-object v1, p0, Lorg/brickred/socialauth/provider/FlickerImpl;->scope:Lorg/brickred/socialauth/Permission;

    invoke-interface {v0, v1}, Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;->setPermission(Lorg/brickred/socialauth/Permission;)V

    .line 134
    iget-object v0, p0, Lorg/brickred/socialauth/provider/FlickerImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    invoke-direct {p0}, Lorg/brickred/socialauth/provider/FlickerImpl;->getScope()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;->setScope(Ljava/lang/String;)V

    .line 135
    return-void

    .line 113
    :cond_1
    iget-object v1, p0, Lorg/brickred/socialauth/provider/FlickerImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    sget-object v0, Lorg/brickred/socialauth/provider/FlickerImpl;->ENDPOINTS:Ljava/util/Map;

    .line 114
    const-string/jumbo v2, "reqTokenURL"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 113
    invoke-virtual {v1, v0}, Lorg/brickred/socialauth/util/OAuthConfig;->setRequestTokenUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 121
    :cond_2
    iget-object v1, p0, Lorg/brickred/socialauth/provider/FlickerImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    sget-object v0, Lorg/brickred/socialauth/provider/FlickerImpl;->ENDPOINTS:Ljava/util/Map;

    .line 122
    const-string v2, "authorizationURL"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 121
    invoke-virtual {v1, v0}, Lorg/brickred/socialauth/util/OAuthConfig;->setAuthenticationUrl(Ljava/lang/String;)V

    goto :goto_1

    .line 129
    :cond_3
    iget-object v1, p0, Lorg/brickred/socialauth/provider/FlickerImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    sget-object v0, Lorg/brickred/socialauth/provider/FlickerImpl;->ENDPOINTS:Ljava/util/Map;

    .line 130
    const-string v2, "accessTokenURL"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 129
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
    .line 183
    .local p1, "requestParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/brickred/socialauth/provider/FlickerImpl;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "Verifying the authentication response from provider"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 184
    const-string v0, "denied"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 185
    new-instance v0, Lorg/brickred/socialauth/exception/UserDeniedPermissionException;

    invoke-direct {v0}, Lorg/brickred/socialauth/exception/UserDeniedPermissionException;-><init>()V

    throw v0

    .line 187
    :cond_0
    iget-object v0, p0, Lorg/brickred/socialauth/provider/FlickerImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    invoke-interface {v0, p1}, Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;->verifyResponse(Ljava/util/Map;)Lorg/brickred/socialauth/util/AccessGrant;

    move-result-object v0

    iput-object v0, p0, Lorg/brickred/socialauth/provider/FlickerImpl;->accessToken:Lorg/brickred/socialauth/util/AccessGrant;

    .line 189
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/brickred/socialauth/provider/FlickerImpl;->isVerify:Z

    .line 190
    invoke-direct {p0}, Lorg/brickred/socialauth/provider/FlickerImpl;->getProfile()Lorg/brickred/socialauth/Profile;

    move-result-object v0

    return-object v0
.end method

.method private getProfile()Lorg/brickred/socialauth/Profile;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 194
    new-instance v8, Lorg/brickred/socialauth/Profile;

    invoke-direct {v8}, Lorg/brickred/socialauth/Profile;-><init>()V

    .line 197
    .local v8, "profile":Lorg/brickred/socialauth/Profile;
    const-string v12, "http://api.flickr.com/services/rest/?method=flickr.people.getInfo&user_id=%1$s&apikey=%2$s"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/brickred/socialauth/provider/FlickerImpl;->accessToken:Lorg/brickred/socialauth/util/AccessGrant;

    const-string/jumbo v16, "user_nsid"

    invoke-virtual/range {v15 .. v16}, Lorg/brickred/socialauth/util/AccessGrant;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    .line 198
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/brickred/socialauth/provider/FlickerImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v15}, Lorg/brickred/socialauth/util/OAuthConfig;->get_consumerKey()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    .line 197
    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 200
    .local v9, "profileUrl":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/brickred/socialauth/provider/FlickerImpl;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Obtaining user profile. Profile URL : "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 201
    const/4 v11, 0x0

    .line 203
    .local v11, "serviceResponse":Lorg/brickred/socialauth/util/Response;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/brickred/socialauth/provider/FlickerImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    invoke-interface {v12, v9}, Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;->executeFeed(Ljava/lang/String;)Lorg/brickred/socialauth/util/Response;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 209
    invoke-virtual {v11}, Lorg/brickred/socialauth/util/Response;->getStatus()I

    move-result v12

    const/16 v13, 0xc8

    if-eq v12, v13, :cond_0

    .line 210
    new-instance v12, Lorg/brickred/socialauth/exception/SocialAuthException;

    .line 211
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Failed to retrieve the user profile from  "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 212
    const-string v14, ". Status :"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v11}, Lorg/brickred/socialauth/util/Response;->getStatus()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 211
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 210
    invoke-direct {v12, v13}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 204
    :catch_0
    move-exception v2

    .line 205
    .local v2, "e":Ljava/lang/Exception;
    new-instance v12, Lorg/brickred/socialauth/exception/SocialAuthException;

    .line 206
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Failed to retrieve the user profile from  "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 205
    invoke-direct {v12, v13, v2}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v12

    .line 218
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :try_start_1
    invoke-virtual {v11}, Lorg/brickred/socialauth/util/Response;->getInputStream()Ljava/io/InputStream;

    move-result-object v12

    .line 217
    invoke-static {v12}, Lorg/brickred/socialauth/util/XMLParseUtil;->loadXmlResource(Ljava/io/InputStream;)Lorg/w3c/dom/Element;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v10

    .line 225
    .local v10, "root":Lorg/w3c/dom/Element;
    if-eqz v10, :cond_1

    .line 226
    const-string v12, "person"

    invoke-interface {v10, v12}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    .line 227
    .local v7, "pList":Lorg/w3c/dom/NodeList;
    if-eqz v7, :cond_1

    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v12

    if-lez v12, :cond_1

    .line 228
    const/4 v12, 0x0

    invoke-interface {v7, v12}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/Element;

    .line 229
    .local v6, "p":Lorg/w3c/dom/Element;
    if-eqz v6, :cond_1

    .line 231
    const-string v12, "realname"

    .line 230
    invoke-static {v6, v12}, Lorg/brickred/socialauth/util/XMLParseUtil;->getElementData(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Lorg/brickred/socialauth/Profile;->setFullName(Ljava/lang/String;)V

    .line 233
    const-string/jumbo v12, "username"

    .line 232
    invoke-static {v6, v12}, Lorg/brickred/socialauth/util/XMLParseUtil;->getElementData(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Lorg/brickred/socialauth/Profile;->setDisplayName(Ljava/lang/String;)V

    .line 235
    const-string v12, "location"

    .line 234
    invoke-static {v6, v12}, Lorg/brickred/socialauth/util/XMLParseUtil;->getElementData(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Lorg/brickred/socialauth/Profile;->setCountry(Ljava/lang/String;)V

    .line 236
    const-string v12, "id"

    invoke-interface {v6, v12}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 237
    .local v5, "id":Ljava/lang/String;
    const-string v12, "iconfarm"

    invoke-interface {v6, v12}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 238
    .local v3, "iconfarm":Ljava/lang/String;
    const-string v12, "iconserver"

    invoke-interface {v6, v12}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 239
    .local v4, "iconserver":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "http://farm"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 240
    const-string v13, ".staticflickr.com/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 241
    const-string v13, "/buddyicons/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".jpg"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 239
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 242
    .local v1, "buddyurl":Ljava/lang/String;
    invoke-virtual {v8, v5}, Lorg/brickred/socialauth/Profile;->setValidatedId(Ljava/lang/String;)V

    .line 243
    const-string v12, "0"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 244
    const-string v12, "http://www.flickr.com/images/buddyicon.gif"

    invoke-virtual {v8, v12}, Lorg/brickred/socialauth/Profile;->setProfileImageURL(Ljava/lang/String;)V

    .line 248
    :goto_0
    move-object/from16 v0, p0

    iput-object v8, v0, Lorg/brickred/socialauth/provider/FlickerImpl;->userProfile:Lorg/brickred/socialauth/Profile;

    .line 252
    .end local v1    # "buddyurl":Ljava/lang/String;
    .end local v3    # "iconfarm":Ljava/lang/String;
    .end local v4    # "iconserver":Ljava/lang/String;
    .end local v5    # "id":Ljava/lang/String;
    .end local v6    # "p":Lorg/w3c/dom/Element;
    .end local v7    # "pList":Lorg/w3c/dom/NodeList;
    :cond_1
    return-object v8

    .line 219
    .end local v10    # "root":Lorg/w3c/dom/Element;
    :catch_1
    move-exception v2

    .line 220
    .restart local v2    # "e":Ljava/lang/Exception;
    new-instance v12, Lorg/brickred/socialauth/exception/ServerDataException;

    .line 221
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Failed to parse the profile from response."

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 220
    invoke-direct {v12, v13, v2}, Lorg/brickred/socialauth/exception/ServerDataException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v12

    .line 246
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "buddyurl":Ljava/lang/String;
    .restart local v3    # "iconfarm":Ljava/lang/String;
    .restart local v4    # "iconserver":Ljava/lang/String;
    .restart local v5    # "id":Ljava/lang/String;
    .restart local v6    # "p":Lorg/w3c/dom/Element;
    .restart local v7    # "pList":Lorg/w3c/dom/NodeList;
    .restart local v10    # "root":Lorg/w3c/dom/Element;
    :cond_2
    invoke-virtual {v8, v1}, Lorg/brickred/socialauth/Profile;->setProfileImageURL(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getScope()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 460
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 461
    .local v2, "result":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .line 462
    .local v0, "arr":[Ljava/lang/String;
    sget-object v6, Lorg/brickred/socialauth/Permission;->AUTHENTICATE_ONLY:Lorg/brickred/socialauth/Permission;

    iget-object v7, p0, Lorg/brickred/socialauth/provider/FlickerImpl;->scope:Lorg/brickred/socialauth/Permission;

    invoke-virtual {v6, v7}, Lorg/brickred/socialauth/Permission;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 463
    sget-object v0, Lorg/brickred/socialauth/provider/FlickerImpl;->AuthPerms:[Ljava/lang/String;

    .line 470
    :goto_0
    aget-object v6, v0, v8

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 471
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    array-length v6, v0

    if-lt v1, v6, :cond_4

    .line 474
    iget-object v6, p0, Lorg/brickred/socialauth/provider/FlickerImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v6}, Lorg/brickred/socialauth/util/OAuthConfig;->getPluginsScopes()Ljava/util/List;

    move-result-object v4

    .line 475
    .local v4, "scopes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 476
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 477
    .local v5, "scopesStr":Ljava/lang/String;
    const/4 v1, 0x1

    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lt v1, v6, :cond_5

    .line 480
    const-string v6, " "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 482
    .end local v5    # "scopesStr":Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    .line 483
    .local v3, "scope":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 484
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "perms="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 486
    :cond_1
    return-object v3

    .line 464
    .end local v1    # "i":I
    .end local v3    # "scope":Ljava/lang/String;
    .end local v4    # "scopes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    sget-object v6, Lorg/brickred/socialauth/Permission;->CUSTOM:Lorg/brickred/socialauth/Permission;

    iget-object v7, p0, Lorg/brickred/socialauth/provider/FlickerImpl;->scope:Lorg/brickred/socialauth/Permission;

    invoke-virtual {v6, v7}, Lorg/brickred/socialauth/Permission;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 465
    iget-object v6, p0, Lorg/brickred/socialauth/provider/FlickerImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v6}, Lorg/brickred/socialauth/util/OAuthConfig;->getCustomPermissions()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 466
    iget-object v6, p0, Lorg/brickred/socialauth/provider/FlickerImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v6}, Lorg/brickred/socialauth/util/OAuthConfig;->getCustomPermissions()Ljava/lang/String;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 467
    goto :goto_0

    .line 468
    :cond_3
    sget-object v0, Lorg/brickred/socialauth/provider/FlickerImpl;->AllPerms:[Ljava/lang/String;

    goto :goto_0

    .line 472
    .restart local v1    # "i":I
    :cond_4
    const-string v6, " "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    aget-object v7, v0, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 471
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 478
    .restart local v4    # "scopes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5    # "scopesStr":Ljava/lang/String;
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 477
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
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
    .line 405
    .local p3, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, "headerParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-boolean v0, p0, Lorg/brickred/socialauth/provider/FlickerImpl;->isVerify:Z

    if-nez v0, :cond_0

    .line 406
    new-instance v0, Lorg/brickred/socialauth/exception/SocialAuthException;

    .line 407
    const-string v1, "Please call verifyResponse function first to get Access Token"

    .line 406
    invoke-direct {v0, v1}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 409
    :cond_0
    const/4 v6, 0x0

    .line 410
    .local v6, "response":Lorg/brickred/socialauth/util/Response;
    iget-object v0, p0, Lorg/brickred/socialauth/provider/FlickerImpl;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Calling URL : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 411
    iget-object v0, p0, Lorg/brickred/socialauth/provider/FlickerImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;->executeFeed(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)Lorg/brickred/socialauth/util/Response;

    move-result-object v6

    .line 413
    return-object v6
.end method

.method public getAccessGrant()Lorg/brickred/socialauth/util/AccessGrant;
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lorg/brickred/socialauth/provider/FlickerImpl;->accessToken:Lorg/brickred/socialauth/util/AccessGrant;

    return-object v0
.end method

.method public getContactList()Ljava/util/List;
    .locals 27
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
    .line 278
    const-string v22, "http://api.flickr.com/services/rest/?method=flickr.contacts.getList&user_id=%1$s&apikey=%2$s"

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/brickred/socialauth/provider/FlickerImpl;->accessToken:Lorg/brickred/socialauth/util/AccessGrant;

    move-object/from16 v25, v0

    const-string/jumbo v26, "user_nsid"

    invoke-virtual/range {v25 .. v26}, Lorg/brickred/socialauth/util/AccessGrant;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x1

    .line 279
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/brickred/socialauth/provider/FlickerImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lorg/brickred/socialauth/util/OAuthConfig;->get_consumerKey()Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    .line 278
    invoke-static/range {v22 .. v23}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 281
    .local v8, "contactUrl":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/brickred/socialauth/provider/FlickerImpl;->LOG:Lorg/apache/commons/logging/Log;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "Obtaining user contacts. Contact URL : "

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-interface/range {v22 .. v23}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 282
    const/16 v20, 0x0

    .line 284
    .local v20, "serviceResponse":Lorg/brickred/socialauth/util/Response;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/brickred/socialauth/provider/FlickerImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-interface {v0, v8}, Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;->executeFeed(Ljava/lang/String;)Lorg/brickred/socialauth/util/Response;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v20

    .line 289
    invoke-virtual/range {v20 .. v20}, Lorg/brickred/socialauth/util/Response;->getStatus()I

    move-result v22

    const/16 v23, 0xc8

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_0

    .line 290
    new-instance v22, Lorg/brickred/socialauth/exception/SocialAuthException;

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "Failed to retrieve contacts from  "

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 291
    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ". Status :"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v20 .. v20}, Lorg/brickred/socialauth/util/Response;->getStatus()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 290
    invoke-direct/range {v22 .. v23}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 285
    :catch_0
    move-exception v10

    .line 286
    .local v10, "e":Ljava/lang/Exception;
    new-instance v22, Lorg/brickred/socialauth/exception/SocialAuthException;

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "Failed to retrieve contacts from  "

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 287
    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 286
    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v10}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v22

    .line 296
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_0
    :try_start_1
    const-string v22, "UTF-8"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/brickred/socialauth/util/Response;->getResponseBodyAsString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v18

    .line 305
    .local v18, "result":Ljava/lang/String;
    :try_start_2
    new-instance v16, Ljava/io/ByteArrayInputStream;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->getBytes()[B

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 306
    .local v16, "is":Ljava/io/InputStream;
    invoke-static/range {v16 .. v16}, Lorg/brickred/socialauth/util/XMLParseUtil;->loadXmlResource(Ljava/io/InputStream;)Lorg/w3c/dom/Element;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v19

    .line 312
    .local v19, "root":Lorg/w3c/dom/Element;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 313
    .local v5, "contactList":Ljava/util/List;, "Ljava/util/List<Lorg/brickred/socialauth/Contact;>;"
    if-eqz v19, :cond_1

    .line 314
    const-string v22, "contacts"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 315
    .local v3, "cList":Lorg/w3c/dom/NodeList;
    if-eqz v3, :cond_8

    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v22

    if-lez v22, :cond_8

    .line 316
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-interface {v3, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    check-cast v9, Lorg/w3c/dom/Element;

    .line 318
    .local v9, "contacts":Lorg/w3c/dom/Element;
    const-string v22, "contact"

    move-object/from16 v0, v22

    invoke-interface {v9, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    .line 319
    .local v6, "contactNodes":Lorg/w3c/dom/NodeList;
    if-eqz v6, :cond_1

    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v22

    if-lez v22, :cond_1

    .line 320
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/brickred/socialauth/provider/FlickerImpl;->LOG:Lorg/apache/commons/logging/Log;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "Found contacts : "

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-interface/range {v22 .. v23}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 321
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v22

    move/from16 v0, v22

    if-lt v12, v0, :cond_2

    .line 358
    .end local v3    # "cList":Lorg/w3c/dom/NodeList;
    .end local v6    # "contactNodes":Lorg/w3c/dom/NodeList;
    .end local v9    # "contacts":Lorg/w3c/dom/Element;
    .end local v12    # "i":I
    :cond_1
    :goto_1
    return-object v5

    .line 297
    .end local v5    # "contactList":Ljava/util/List;, "Ljava/util/List<Lorg/brickred/socialauth/Contact;>;"
    .end local v16    # "is":Ljava/io/InputStream;
    .end local v18    # "result":Ljava/lang/String;
    .end local v19    # "root":Lorg/w3c/dom/Element;
    :catch_1
    move-exception v11

    .line 298
    .local v11, "exc":Ljava/lang/Exception;
    new-instance v22, Lorg/brickred/socialauth/exception/SocialAuthException;

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "Failed to read response from  "

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 299
    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 298
    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v11}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v22

    .line 307
    .end local v11    # "exc":Ljava/lang/Exception;
    .restart local v18    # "result":Ljava/lang/String;
    :catch_2
    move-exception v10

    .line 308
    .restart local v10    # "e":Ljava/lang/Exception;
    new-instance v22, Lorg/brickred/socialauth/exception/ServerDataException;

    .line 309
    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "Failed to parse the user contacts xml : "

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 308
    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v10}, Lorg/brickred/socialauth/exception/ServerDataException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v22

    .line 322
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v3    # "cList":Lorg/w3c/dom/NodeList;
    .restart local v5    # "contactList":Ljava/util/List;, "Ljava/util/List<Lorg/brickred/socialauth/Contact;>;"
    .restart local v6    # "contactNodes":Lorg/w3c/dom/NodeList;
    .restart local v9    # "contacts":Lorg/w3c/dom/Element;
    .restart local v12    # "i":I
    .restart local v16    # "is":Ljava/io/InputStream;
    .restart local v19    # "root":Lorg/w3c/dom/Element;
    :cond_2
    invoke-interface {v6, v12}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    .line 323
    .local v4, "contact":Lorg/w3c/dom/Element;
    const-string v22, "nsid"

    move-object/from16 v0, v22

    invoke-interface {v4, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 324
    .local v15, "id":Ljava/lang/String;
    const-string/jumbo v22, "username"

    move-object/from16 v0, v22

    invoke-interface {v4, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 325
    .local v21, "userName":Ljava/lang/String;
    const-string v22, "realname"

    move-object/from16 v0, v22

    invoke-interface {v4, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 326
    .local v17, "realName":Ljava/lang/String;
    const-string v22, "iconfarm"

    move-object/from16 v0, v22

    invoke-interface {v4, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 327
    .local v13, "iconfarm":Ljava/lang/String;
    const-string v22, "iconserver"

    move-object/from16 v0, v22

    invoke-interface {v4, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 328
    .local v14, "iconserver":Ljava/lang/String;
    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "http://farm"

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 329
    const-string v23, ".staticflickr.com/"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 330
    const-string v23, "/buddyicons/"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ".jpg"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 328
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 332
    .local v2, "buddyurl":Ljava/lang/String;
    if-eqz v15, :cond_6

    .line 333
    new-instance v7, Lorg/brickred/socialauth/Contact;

    invoke-direct {v7}, Lorg/brickred/socialauth/Contact;-><init>()V

    .line 334
    .local v7, "contactObj":Lorg/brickred/socialauth/Contact;
    if-eqz v17, :cond_3

    .line 335
    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lorg/brickred/socialauth/Contact;->setFirstName(Ljava/lang/String;)V

    .line 337
    :cond_3
    if-eqz v21, :cond_4

    .line 338
    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Lorg/brickred/socialauth/Contact;->setDisplayName(Ljava/lang/String;)V

    .line 341
    :cond_4
    if-eqz v14, :cond_5

    .line 342
    const-string v22, "0"

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_7

    .line 344
    const-string v22, "http://www.flickr.com/images/buddyicon.gif"

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Lorg/brickred/socialauth/Contact;->setProfileImageURL(Ljava/lang/String;)V

    .line 349
    :cond_5
    :goto_2
    invoke-virtual {v7, v15}, Lorg/brickred/socialauth/Contact;->setId(Ljava/lang/String;)V

    .line 350
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 321
    .end local v7    # "contactObj":Lorg/brickred/socialauth/Contact;
    :cond_6
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 346
    .restart local v7    # "contactObj":Lorg/brickred/socialauth/Contact;
    :cond_7
    invoke-virtual {v7, v2}, Lorg/brickred/socialauth/Contact;->setProfileImageURL(Ljava/lang/String;)V

    goto :goto_2

    .line 355
    .end local v2    # "buddyurl":Ljava/lang/String;
    .end local v4    # "contact":Lorg/w3c/dom/Element;
    .end local v6    # "contactNodes":Lorg/w3c/dom/NodeList;
    .end local v7    # "contactObj":Lorg/brickred/socialauth/Contact;
    .end local v9    # "contacts":Lorg/w3c/dom/Element;
    .end local v12    # "i":I
    .end local v13    # "iconfarm":Ljava/lang/String;
    .end local v14    # "iconserver":Ljava/lang/String;
    .end local v15    # "id":Ljava/lang/String;
    .end local v17    # "realName":Ljava/lang/String;
    .end local v21    # "userName":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/brickred/socialauth/provider/FlickerImpl;->LOG:Lorg/apache/commons/logging/Log;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "No contacts were obtained from : "

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-interface/range {v22 .. v23}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto/16 :goto_1
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
    .line 161
    iget-object v0, p0, Lorg/brickred/socialauth/provider/FlickerImpl;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "Determining URL for redirection"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 162
    iget-object v0, p0, Lorg/brickred/socialauth/provider/FlickerImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    invoke-interface {v0, p1}, Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;->getLoginRedirectURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getOauthStrategy()Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;
    .locals 1

    .prologue
    .line 501
    iget-object v0, p0, Lorg/brickred/socialauth/provider/FlickerImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

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
    .line 491
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 492
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lorg/brickred/socialauth/provider/FlickerImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v1}, Lorg/brickred/socialauth/util/OAuthConfig;->getRegisteredPlugins()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 493
    iget-object v1, p0, Lorg/brickred/socialauth/provider/FlickerImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v1}, Lorg/brickred/socialauth/util/OAuthConfig;->getRegisteredPlugins()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_0

    .line 494
    iget-object v1, p0, Lorg/brickred/socialauth/provider/FlickerImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v1}, Lorg/brickred/socialauth/util/OAuthConfig;->getRegisteredPlugins()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 496
    :cond_0
    return-object v0
.end method

.method public getProviderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lorg/brickred/socialauth/provider/FlickerImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

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
    .line 423
    iget-object v0, p0, Lorg/brickred/socialauth/provider/FlickerImpl;->userProfile:Lorg/brickred/socialauth/Profile;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/brickred/socialauth/provider/FlickerImpl;->accessToken:Lorg/brickred/socialauth/util/AccessGrant;

    if-eqz v0, :cond_0

    .line 424
    invoke-direct {p0}, Lorg/brickred/socialauth/provider/FlickerImpl;->getProfile()Lorg/brickred/socialauth/Profile;

    .line 426
    :cond_0
    iget-object v0, p0, Lorg/brickred/socialauth/provider/FlickerImpl;->userProfile:Lorg/brickred/socialauth/Profile;

    return-object v0
.end method

.method public logout()V
    .locals 1

    .prologue
    .line 366
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/brickred/socialauth/provider/FlickerImpl;->accessToken:Lorg/brickred/socialauth/util/AccessGrant;

    .line 367
    iget-object v0, p0, Lorg/brickred/socialauth/provider/FlickerImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    invoke-interface {v0}, Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;->logout()V

    .line 368
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
    iput-object p1, p0, Lorg/brickred/socialauth/provider/FlickerImpl;->accessToken:Lorg/brickred/socialauth/util/AccessGrant;

    .line 148
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/brickred/socialauth/provider/FlickerImpl;->isVerify:Z

    .line 149
    iget-object v0, p0, Lorg/brickred/socialauth/provider/FlickerImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    invoke-interface {v0, p1}, Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;->setAccessGrant(Lorg/brickred/socialauth/util/AccessGrant;)V

    .line 150
    return-void
.end method

.method public setPermission(Lorg/brickred/socialauth/Permission;)V
    .locals 3
    .param p1, "p"    # Lorg/brickred/socialauth/Permission;

    .prologue
    .line 378
    iget-object v0, p0, Lorg/brickred/socialauth/provider/FlickerImpl;->LOG:Lorg/apache/commons/logging/Log;

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

    .line 379
    iput-object p1, p0, Lorg/brickred/socialauth/provider/FlickerImpl;->scope:Lorg/brickred/socialauth/Permission;

    .line 380
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
    .line 264
    iget-object v0, p0, Lorg/brickred/socialauth/provider/FlickerImpl;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "WARNING: Not implemented for Flickr"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 265
    new-instance v0, Lorg/brickred/socialauth/exception/SocialAuthException;

    .line 266
    const-string v1, "Update Status is not implemented for Flickr"

    .line 265
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
    .line 455
    iget-object v0, p0, Lorg/brickred/socialauth/provider/FlickerImpl;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "WARNING: Not implemented for Flickr"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 456
    new-instance v0, Lorg/brickred/socialauth/exception/SocialAuthException;

    const-string v1, "Not implemented for Flickr"

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
    .line 178
    .local p1, "requestParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lorg/brickred/socialauth/provider/FlickerImpl;->doVerifyResponse(Ljava/util/Map;)Lorg/brickred/socialauth/Profile;

    move-result-object v0

    return-object v0
.end method
