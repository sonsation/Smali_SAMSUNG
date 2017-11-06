.class public Lorg/brickred/socialauth/provider/NimbleImpl;
.super Lorg/brickred/socialauth/AbstractProvider;
.source "NimbleImpl.java"


# static fields
.field private static final CONTACTS_URL:Ljava/lang/String; = "https://api.nimble.com/api/v1/contacts?per_page=200"

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

.field private static final serialVersionUID:J = 0x7c1bda705fdbfbaeL


# instance fields
.field private final LOG:Lorg/apache/commons/logging/Log;

.field private accessGrant:Lorg/brickred/socialauth/util/AccessGrant;

.field private authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

.field private config:Lorg/brickred/socialauth/util/OAuthConfig;

.field private scope:Lorg/brickred/socialauth/Permission;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/brickred/socialauth/provider/NimbleImpl;->ENDPOINTS:Ljava/util/Map;

    .line 76
    sget-object v0, Lorg/brickred/socialauth/provider/NimbleImpl;->ENDPOINTS:Ljava/util/Map;

    const-string v1, "authorizationURL"

    .line 77
    const-string v2, "https://api.nimble.com/oauth/authorize"

    .line 76
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lorg/brickred/socialauth/provider/NimbleImpl;->ENDPOINTS:Ljava/util/Map;

    const-string v1, "accessTokenURL"

    .line 79
    const-string v2, "https://api.nimble.com/oauth/token"

    .line 78
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
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

    .line 67
    const-class v0, Lorg/brickred/socialauth/provider/NimbleImpl;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/brickred/socialauth/provider/NimbleImpl;->LOG:Lorg/apache/commons/logging/Log;

    .line 91
    iput-object p1, p0, Lorg/brickred/socialauth/provider/NimbleImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    .line 92
    iget-object v0, p0, Lorg/brickred/socialauth/provider/NimbleImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v0}, Lorg/brickred/socialauth/util/OAuthConfig;->getCustomPermissions()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 93
    sget-object v0, Lorg/brickred/socialauth/Permission;->CUSTOM:Lorg/brickred/socialauth/Permission;

    iput-object v0, p0, Lorg/brickred/socialauth/provider/NimbleImpl;->scope:Lorg/brickred/socialauth/Permission;

    .line 96
    :cond_0
    iget-object v0, p0, Lorg/brickred/socialauth/provider/NimbleImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v0}, Lorg/brickred/socialauth/util/OAuthConfig;->getAuthenticationUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 97
    sget-object v0, Lorg/brickred/socialauth/provider/NimbleImpl;->ENDPOINTS:Ljava/util/Map;

    const-string v1, "authorizationURL"

    .line 98
    iget-object v2, p0, Lorg/brickred/socialauth/provider/NimbleImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v2}, Lorg/brickred/socialauth/util/OAuthConfig;->getAuthenticationUrl()Ljava/lang/String;

    move-result-object v2

    .line 97
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    :goto_0
    iget-object v0, p0, Lorg/brickred/socialauth/provider/NimbleImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v0}, Lorg/brickred/socialauth/util/OAuthConfig;->getAccessTokenUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 105
    sget-object v0, Lorg/brickred/socialauth/provider/NimbleImpl;->ENDPOINTS:Ljava/util/Map;

    const-string v1, "accessTokenURL"

    .line 106
    iget-object v2, p0, Lorg/brickred/socialauth/provider/NimbleImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v2}, Lorg/brickred/socialauth/util/OAuthConfig;->getAccessTokenUrl()Ljava/lang/String;

    move-result-object v2

    .line 105
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    :goto_1
    new-instance v0, Lorg/brickred/socialauth/oauthstrategy/OAuth2;

    iget-object v1, p0, Lorg/brickred/socialauth/provider/NimbleImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    sget-object v2, Lorg/brickred/socialauth/provider/NimbleImpl;->ENDPOINTS:Ljava/util/Map;

    invoke-direct {v0, v1, v2}, Lorg/brickred/socialauth/oauthstrategy/OAuth2;-><init>(Lorg/brickred/socialauth/util/OAuthConfig;Ljava/util/Map;)V

    iput-object v0, p0, Lorg/brickred/socialauth/provider/NimbleImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    .line 112
    iget-object v0, p0, Lorg/brickred/socialauth/provider/NimbleImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    iget-object v1, p0, Lorg/brickred/socialauth/provider/NimbleImpl;->scope:Lorg/brickred/socialauth/Permission;

    invoke-interface {v0, v1}, Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;->setPermission(Lorg/brickred/socialauth/Permission;)V

    .line 113
    iget-object v0, p0, Lorg/brickred/socialauth/provider/NimbleImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    invoke-direct {p0}, Lorg/brickred/socialauth/provider/NimbleImpl;->getScope()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;->setScope(Ljava/lang/String;)V

    .line 114
    return-void

    .line 100
    :cond_1
    iget-object v1, p0, Lorg/brickred/socialauth/provider/NimbleImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    sget-object v0, Lorg/brickred/socialauth/provider/NimbleImpl;->ENDPOINTS:Ljava/util/Map;

    .line 101
    const-string v2, "authorizationURL"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 100
    invoke-virtual {v1, v0}, Lorg/brickred/socialauth/util/OAuthConfig;->setAuthenticationUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 108
    :cond_2
    iget-object v1, p0, Lorg/brickred/socialauth/provider/NimbleImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    sget-object v0, Lorg/brickred/socialauth/provider/NimbleImpl;->ENDPOINTS:Ljava/util/Map;

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
    .line 160
    .local p1, "requestParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/brickred/socialauth/provider/NimbleImpl;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "Retrieving Access Token in verify response function"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 161
    const-string v0, "error"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 162
    const-string v0, "access_denied"

    const-string v1, "error"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    new-instance v0, Lorg/brickred/socialauth/exception/UserDeniedPermissionException;

    invoke-direct {v0}, Lorg/brickred/socialauth/exception/UserDeniedPermissionException;-><init>()V

    throw v0

    .line 165
    :cond_0
    iget-object v0, p0, Lorg/brickred/socialauth/provider/NimbleImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    .line 166
    sget-object v1, Lorg/brickred/socialauth/util/MethodType;->POST:Lorg/brickred/socialauth/util/MethodType;

    invoke-virtual {v1}, Lorg/brickred/socialauth/util/MethodType;->toString()Ljava/lang/String;

    move-result-object v1

    .line 165
    invoke-interface {v0, p1, v1}, Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;->verifyResponse(Ljava/util/Map;Ljava/lang/String;)Lorg/brickred/socialauth/util/AccessGrant;

    move-result-object v0

    iput-object v0, p0, Lorg/brickred/socialauth/provider/NimbleImpl;->accessGrant:Lorg/brickred/socialauth/util/AccessGrant;

    .line 168
    iget-object v0, p0, Lorg/brickred/socialauth/provider/NimbleImpl;->accessGrant:Lorg/brickred/socialauth/util/AccessGrant;

    if-eqz v0, :cond_1

    .line 169
    iget-object v0, p0, Lorg/brickred/socialauth/provider/NimbleImpl;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "Obtaining user profile"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 170
    const/4 v0, 0x0

    return-object v0

    .line 172
    :cond_1
    new-instance v0, Lorg/brickred/socialauth/exception/SocialAuthException;

    const-string v1, "Access token not found"

    invoke-direct {v0, v1}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getScope()Ljava/lang/String;
    .locals 1

    .prologue
    .line 370
    const/4 v0, 0x0

    return-object v0
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
    .line 328
    .local p3, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, "headerParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/brickred/socialauth/provider/NimbleImpl;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Calling api function for url\t:\t"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 329
    const/4 v7, 0x0

    .line 331
    .local v7, "response":Lorg/brickred/socialauth/util/Response;
    :try_start_0
    iget-object v0, p0, Lorg/brickred/socialauth/provider/NimbleImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;->executeFeed(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)Lorg/brickred/socialauth/util/Response;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 337
    return-object v7

    .line 333
    :catch_0
    move-exception v6

    .line 334
    .local v6, "e":Ljava/lang/Exception;
    new-instance v0, Lorg/brickred/socialauth/exception/SocialAuthException;

    .line 335
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error while making request to URL : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 334
    invoke-direct {v0, v1, v6}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getAccessGrant()Lorg/brickred/socialauth/util/AccessGrant;
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lorg/brickred/socialauth/provider/NimbleImpl;->accessGrant:Lorg/brickred/socialauth/util/AccessGrant;

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
    .line 193
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 194
    .local v9, "plist":Ljava/util/List;, "Ljava/util/List<Lorg/brickred/socialauth/Contact;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/brickred/socialauth/provider/NimbleImpl;->LOG:Lorg/apache/commons/logging/Log;

    const-string v16, "Fetching contacts from https://api.nimble.com/api/v1/contacts?per_page=200"

    invoke-interface/range {v15 .. v16}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 197
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/brickred/socialauth/provider/NimbleImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    .line 198
    const-string v16, "https://api.nimble.com/api/v1/contacts?per_page=200"

    invoke-interface/range {v15 .. v16}, Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;->executeFeed(Ljava/lang/String;)Lorg/brickred/socialauth/util/Response;

    move-result-object v12

    .line 199
    .local v12, "response":Lorg/brickred/socialauth/util/Response;
    const-string v15, "UTF-8"

    invoke-virtual {v12, v15}, Lorg/brickred/socialauth/util/Response;->getResponseBodyAsString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 205
    .local v11, "respStr":Ljava/lang/String;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/brickred/socialauth/provider/NimbleImpl;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "User Contacts list in json : "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 206
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 207
    .local v10, "resp":Lorg/json/JSONObject;
    const-string/jumbo v15, "resources"

    invoke-virtual {v10, v15}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v13

    .line 208
    .local v13, "responses":Lorg/json/JSONArray;
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/brickred/socialauth/provider/NimbleImpl;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "Found contacts : "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 209
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v15

    if-lt v4, v15, :cond_0

    .line 281
    return-object v9

    .line 200
    .end local v4    # "i":I
    .end local v10    # "resp":Lorg/json/JSONObject;
    .end local v11    # "respStr":Ljava/lang/String;
    .end local v12    # "response":Lorg/brickred/socialauth/util/Response;
    .end local v13    # "responses":Lorg/json/JSONArray;
    :catch_0
    move-exception v2

    .line 201
    .local v2, "e":Ljava/lang/Exception;
    new-instance v15, Lorg/brickred/socialauth/exception/SocialAuthException;

    const-string v16, "Error while getting contacts from https://api.nimble.com/api/v1/contacts?per_page=200"

    move-object/from16 v0, v16

    invoke-direct {v15, v0, v2}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v15

    .line 210
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v4    # "i":I
    .restart local v10    # "resp":Lorg/json/JSONObject;
    .restart local v11    # "respStr":Ljava/lang/String;
    .restart local v12    # "response":Lorg/brickred/socialauth/util/Response;
    .restart local v13    # "responses":Lorg/json/JSONArray;
    :cond_0
    :try_start_2
    invoke-virtual {v13, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 211
    .local v7, "obj":Lorg/json/JSONObject;
    const-string v15, "fields"

    invoke-virtual {v7, v15}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 212
    .local v3, "fields":Lorg/json/JSONObject;
    new-instance v8, Lorg/brickred/socialauth/Contact;

    invoke-direct {v8}, Lorg/brickred/socialauth/Contact;-><init>()V

    .line 213
    .local v8, "p":Lorg/brickred/socialauth/Contact;
    const-string/jumbo v15, "record_type"

    invoke-virtual {v7, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 214
    const-string v15, "company"

    const-string/jumbo v16, "record_type"

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 215
    const-string v15, "company name"

    invoke-virtual {v3, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 216
    const-string v15, "company name"

    invoke-virtual {v3, v15}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 217
    .local v1, "arr":Lorg/json/JSONArray;
    const/4 v15, 0x0

    invoke-virtual {v1, v15}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 218
    .local v5, "jobj":Lorg/json/JSONObject;
    const-string/jumbo v15, "value"

    invoke-virtual {v5, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 219
    const-string/jumbo v15, "value"

    invoke-virtual {v5, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8, v15}, Lorg/brickred/socialauth/Contact;->setFirstName(Ljava/lang/String;)V

    .line 222
    .end local v1    # "arr":Lorg/json/JSONArray;
    .end local v5    # "jobj":Lorg/json/JSONObject;
    :cond_1
    const-string v15, "avatar_url"

    invoke-virtual {v7, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 223
    const-string v15, "avatar_url"

    invoke-virtual {v7, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8, v15}, Lorg/brickred/socialauth/Contact;->setProfileImageURL(Ljava/lang/String;)V

    .line 225
    :cond_2
    const-string v15, "URL"

    invoke-virtual {v3, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 226
    const-string v15, "URL"

    invoke-virtual {v3, v15}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 227
    .restart local v1    # "arr":Lorg/json/JSONArray;
    const/4 v15, 0x0

    invoke-virtual {v1, v15}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 228
    .restart local v5    # "jobj":Lorg/json/JSONObject;
    const-string/jumbo v15, "value"

    invoke-virtual {v5, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 229
    const-string/jumbo v15, "value"

    invoke-virtual {v5, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8, v15}, Lorg/brickred/socialauth/Contact;->setProfileUrl(Ljava/lang/String;)V

    .line 232
    .end local v1    # "arr":Lorg/json/JSONArray;
    .end local v5    # "jobj":Lorg/json/JSONObject;
    :cond_3
    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    :cond_4
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 233
    :cond_5
    const-string v15, "person"

    const-string/jumbo v16, "record_type"

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 234
    const-string v15, "last name"

    invoke-virtual {v3, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 235
    const-string v15, "last name"

    invoke-virtual {v3, v15}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 236
    .restart local v1    # "arr":Lorg/json/JSONArray;
    const/4 v15, 0x0

    invoke-virtual {v1, v15}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 237
    .restart local v5    # "jobj":Lorg/json/JSONObject;
    const-string/jumbo v15, "value"

    invoke-virtual {v5, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 238
    const-string/jumbo v15, "value"

    invoke-virtual {v5, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8, v15}, Lorg/brickred/socialauth/Contact;->setLastName(Ljava/lang/String;)V

    .line 241
    .end local v1    # "arr":Lorg/json/JSONArray;
    .end local v5    # "jobj":Lorg/json/JSONObject;
    :cond_6
    const-string v15, "first name"

    invoke-virtual {v3, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 242
    const-string v15, "first name"

    invoke-virtual {v3, v15}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 243
    .restart local v1    # "arr":Lorg/json/JSONArray;
    const/4 v15, 0x0

    invoke-virtual {v1, v15}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 244
    .restart local v5    # "jobj":Lorg/json/JSONObject;
    const-string/jumbo v15, "value"

    invoke-virtual {v5, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 245
    const-string/jumbo v15, "value"

    invoke-virtual {v5, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8, v15}, Lorg/brickred/socialauth/Contact;->setFirstName(Ljava/lang/String;)V

    .line 248
    .end local v1    # "arr":Lorg/json/JSONArray;
    .end local v5    # "jobj":Lorg/json/JSONObject;
    :cond_7
    const-string v15, "avatar_url"

    invoke-virtual {v7, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 249
    const-string v15, "avatar_url"

    invoke-virtual {v7, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8, v15}, Lorg/brickred/socialauth/Contact;->setProfileImageURL(Ljava/lang/String;)V

    .line 251
    :cond_8
    const-string v15, "URL"

    invoke-virtual {v3, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 252
    const-string v15, "URL"

    invoke-virtual {v3, v15}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 253
    .restart local v1    # "arr":Lorg/json/JSONArray;
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_a

    .line 254
    const/4 v15, 0x0

    invoke-virtual {v1, v15}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 255
    .restart local v5    # "jobj":Lorg/json/JSONObject;
    const-string/jumbo v15, "value"

    invoke-virtual {v5, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 256
    const-string/jumbo v15, "value"

    invoke-virtual {v5, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8, v15}, Lorg/brickred/socialauth/Contact;->setProfileUrl(Ljava/lang/String;)V

    .line 273
    .end local v1    # "arr":Lorg/json/JSONArray;
    .end local v5    # "jobj":Lorg/json/JSONObject;
    :cond_9
    :goto_2
    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 277
    .end local v3    # "fields":Lorg/json/JSONObject;
    .end local v4    # "i":I
    .end local v7    # "obj":Lorg/json/JSONObject;
    .end local v8    # "p":Lorg/brickred/socialauth/Contact;
    .end local v10    # "resp":Lorg/json/JSONObject;
    .end local v13    # "responses":Lorg/json/JSONArray;
    :catch_1
    move-exception v2

    .line 278
    .restart local v2    # "e":Ljava/lang/Exception;
    new-instance v15, Lorg/brickred/socialauth/exception/ServerDataException;

    .line 279
    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "Failed to parse the contacts json : "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 278
    move-object/from16 v0, v16

    invoke-direct {v15, v0, v2}, Lorg/brickred/socialauth/exception/ServerDataException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v15

    .line 259
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "arr":Lorg/json/JSONArray;
    .restart local v3    # "fields":Lorg/json/JSONObject;
    .restart local v4    # "i":I
    .restart local v7    # "obj":Lorg/json/JSONObject;
    .restart local v8    # "p":Lorg/brickred/socialauth/Contact;
    .restart local v10    # "resp":Lorg/json/JSONObject;
    .restart local v13    # "responses":Lorg/json/JSONArray;
    :cond_a
    const/4 v14, 0x0

    .line 260
    .local v14, "url":Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "k":I
    :goto_3
    :try_start_3
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-lt v6, v15, :cond_c

    .line 268
    :cond_b
    if-eqz v14, :cond_9

    .line 269
    invoke-virtual {v8, v14}, Lorg/brickred/socialauth/Contact;->setProfileUrl(Ljava/lang/String;)V

    goto :goto_2

    .line 261
    :cond_c
    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 262
    .restart local v5    # "jobj":Lorg/json/JSONObject;
    const-string/jumbo v15, "value"

    invoke-virtual {v5, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 263
    const-string v15, "personal"

    .line 264
    const-string v16, "modifier"

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 263
    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result v15

    .line 264
    if-nez v15, :cond_b

    .line 260
    add-int/lit8 v6, v6, 0x1

    goto :goto_3
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
    .line 138
    iget-object v0, p0, Lorg/brickred/socialauth/provider/NimbleImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    invoke-interface {v0, p1}, Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;->getLoginRedirectURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getOauthStrategy()Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lorg/brickred/socialauth/provider/NimbleImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

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
    .line 375
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 376
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lorg/brickred/socialauth/provider/NimbleImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v1}, Lorg/brickred/socialauth/util/OAuthConfig;->getRegisteredPlugins()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 377
    iget-object v1, p0, Lorg/brickred/socialauth/provider/NimbleImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v1}, Lorg/brickred/socialauth/util/OAuthConfig;->getRegisteredPlugins()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_0

    .line 378
    iget-object v1, p0, Lorg/brickred/socialauth/provider/NimbleImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v1}, Lorg/brickred/socialauth/util/OAuthConfig;->getRegisteredPlugins()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 380
    :cond_0
    return-object v0
.end method

.method public getProviderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lorg/brickred/socialauth/provider/NimbleImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v0}, Lorg/brickred/socialauth/util/OAuthConfig;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserProfile()Lorg/brickred/socialauth/Profile;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 347
    iget-object v0, p0, Lorg/brickred/socialauth/provider/NimbleImpl;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "WARNING: Get Profile function not implemented for Nimble"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 348
    const/4 v0, 0x0

    return-object v0
.end method

.method public logout()V
    .locals 1

    .prologue
    .line 289
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/brickred/socialauth/provider/NimbleImpl;->accessGrant:Lorg/brickred/socialauth/util/AccessGrant;

    .line 290
    iget-object v0, p0, Lorg/brickred/socialauth/provider/NimbleImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    invoke-interface {v0}, Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;->logout()V

    .line 291
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
    .line 126
    iput-object p1, p0, Lorg/brickred/socialauth/provider/NimbleImpl;->accessGrant:Lorg/brickred/socialauth/util/AccessGrant;

    .line 127
    iget-object v0, p0, Lorg/brickred/socialauth/provider/NimbleImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    invoke-interface {v0, p1}, Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;->setAccessGrant(Lorg/brickred/socialauth/util/AccessGrant;)V

    .line 128
    return-void
.end method

.method public setPermission(Lorg/brickred/socialauth/Permission;)V
    .locals 3
    .param p1, "p"    # Lorg/brickred/socialauth/Permission;

    .prologue
    .line 301
    iget-object v0, p0, Lorg/brickred/socialauth/provider/NimbleImpl;->LOG:Lorg/apache/commons/logging/Log;

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

    .line 302
    iput-object p1, p0, Lorg/brickred/socialauth/provider/NimbleImpl;->scope:Lorg/brickred/socialauth/Permission;

    .line 303
    iget-object v0, p0, Lorg/brickred/socialauth/provider/NimbleImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    iget-object v1, p0, Lorg/brickred/socialauth/provider/NimbleImpl;->scope:Lorg/brickred/socialauth/Permission;

    invoke-interface {v0, v1}, Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;->setPermission(Lorg/brickred/socialauth/Permission;)V

    .line 304
    iget-object v0, p0, Lorg/brickred/socialauth/provider/NimbleImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    invoke-direct {p0}, Lorg/brickred/socialauth/provider/NimbleImpl;->getScope()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;->setScope(Ljava/lang/String;)V

    .line 305
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
    .line 178
    iget-object v0, p0, Lorg/brickred/socialauth/provider/NimbleImpl;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "WARNING: Not implemented for Nimble"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 179
    new-instance v0, Lorg/brickred/socialauth/exception/SocialAuthException;

    .line 180
    const-string v1, "Update Status is not implemented for Nimble"

    .line 179
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
    .line 364
    iget-object v0, p0, Lorg/brickred/socialauth/provider/NimbleImpl;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "WARNING: Not implemented for Nimble"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 365
    new-instance v0, Lorg/brickred/socialauth/exception/SocialAuthException;

    .line 366
    const-string v1, "Upload Image is not implemented for Nimble"

    .line 365
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
    .line 155
    .local p1, "requestParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lorg/brickred/socialauth/provider/NimbleImpl;->doVerifyResponse(Ljava/util/Map;)Lorg/brickred/socialauth/Profile;

    move-result-object v0

    return-object v0
.end method
