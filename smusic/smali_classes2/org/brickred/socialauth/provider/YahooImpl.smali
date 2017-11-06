.class public Lorg/brickred/socialauth/provider/YahooImpl;
.super Lorg/brickred/socialauth/AbstractProvider;
.source "YahooImpl.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/brickred/socialauth/AuthProvider;


# static fields
.field private static final CONTACTS_URL:Ljava/lang/String; = "http://social.yahooapis.com/v1/user/%1$s/contacts;count=max"

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

.field private static final PROFILE_URL:Ljava/lang/String; = "http://social.yahooapis.com/v1/user/%1$s/profile?format=json"

.field private static final UPDATE_STATUS_URL:Ljava/lang/String; = "http://social.yahooapis.com/v1/user/%1$s/profile/status"

.field private static final serialVersionUID:J = 0xc8a1b775319200eL


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

    sput-object v0, Lorg/brickred/socialauth/provider/YahooImpl;->ENDPOINTS:Ljava/util/Map;

    .line 85
    sget-object v0, Lorg/brickred/socialauth/provider/YahooImpl;->ENDPOINTS:Ljava/util/Map;

    const-string/jumbo v1, "reqTokenURL"

    .line 86
    const-string v2, "https://api.login.yahoo.com/oauth/v2/get_request_token"

    .line 85
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lorg/brickred/socialauth/provider/YahooImpl;->ENDPOINTS:Ljava/util/Map;

    const-string v1, "authorizationURL"

    .line 88
    const-string v2, "https://api.login.yahoo.com//oauth/v2/request_auth"

    .line 87
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lorg/brickred/socialauth/provider/YahooImpl;->ENDPOINTS:Ljava/util/Map;

    const-string v1, "accessTokenURL"

    .line 90
    const-string v2, "https://api.login.yahoo.com/oauth/v2/get_token"

    .line 89
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
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
    .line 101
    invoke-direct {p0}, Lorg/brickred/socialauth/AbstractProvider;-><init>()V

    .line 74
    const-class v0, Lorg/brickred/socialauth/provider/YahooImpl;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/brickred/socialauth/provider/YahooImpl;->LOG:Lorg/apache/commons/logging/Log;

    .line 102
    iput-object p1, p0, Lorg/brickred/socialauth/provider/YahooImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    .line 103
    iget-object v0, p0, Lorg/brickred/socialauth/provider/YahooImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v0}, Lorg/brickred/socialauth/util/OAuthConfig;->getRequestTokenUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 104
    sget-object v0, Lorg/brickred/socialauth/provider/YahooImpl;->ENDPOINTS:Ljava/util/Map;

    const-string/jumbo v1, "reqTokenURL"

    .line 105
    iget-object v2, p0, Lorg/brickred/socialauth/provider/YahooImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v2}, Lorg/brickred/socialauth/util/OAuthConfig;->getRequestTokenUrl()Ljava/lang/String;

    move-result-object v2

    .line 104
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    :goto_0
    iget-object v0, p0, Lorg/brickred/socialauth/provider/YahooImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v0}, Lorg/brickred/socialauth/util/OAuthConfig;->getAuthenticationUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 112
    sget-object v0, Lorg/brickred/socialauth/provider/YahooImpl;->ENDPOINTS:Ljava/util/Map;

    const-string v1, "authorizationURL"

    .line 113
    iget-object v2, p0, Lorg/brickred/socialauth/provider/YahooImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v2}, Lorg/brickred/socialauth/util/OAuthConfig;->getAuthenticationUrl()Ljava/lang/String;

    move-result-object v2

    .line 112
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    :goto_1
    iget-object v0, p0, Lorg/brickred/socialauth/provider/YahooImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v0}, Lorg/brickred/socialauth/util/OAuthConfig;->getAccessTokenUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 120
    sget-object v0, Lorg/brickred/socialauth/provider/YahooImpl;->ENDPOINTS:Ljava/util/Map;

    const-string v1, "accessTokenURL"

    .line 121
    iget-object v2, p0, Lorg/brickred/socialauth/provider/YahooImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v2}, Lorg/brickred/socialauth/util/OAuthConfig;->getAccessTokenUrl()Ljava/lang/String;

    move-result-object v2

    .line 120
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    :goto_2
    new-instance v0, Lorg/brickred/socialauth/oauthstrategy/OAuth1;

    iget-object v1, p0, Lorg/brickred/socialauth/provider/YahooImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    sget-object v2, Lorg/brickred/socialauth/provider/YahooImpl;->ENDPOINTS:Ljava/util/Map;

    invoke-direct {v0, v1, v2}, Lorg/brickred/socialauth/oauthstrategy/OAuth1;-><init>(Lorg/brickred/socialauth/util/OAuthConfig;Ljava/util/Map;)V

    iput-object v0, p0, Lorg/brickred/socialauth/provider/YahooImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    .line 127
    return-void

    .line 107
    :cond_0
    iget-object v1, p0, Lorg/brickred/socialauth/provider/YahooImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    sget-object v0, Lorg/brickred/socialauth/provider/YahooImpl;->ENDPOINTS:Ljava/util/Map;

    .line 108
    const-string/jumbo v2, "reqTokenURL"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 107
    invoke-virtual {v1, v0}, Lorg/brickred/socialauth/util/OAuthConfig;->setRequestTokenUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 115
    :cond_1
    iget-object v1, p0, Lorg/brickred/socialauth/provider/YahooImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    sget-object v0, Lorg/brickred/socialauth/provider/YahooImpl;->ENDPOINTS:Ljava/util/Map;

    .line 116
    const-string v2, "authorizationURL"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 115
    invoke-virtual {v1, v0}, Lorg/brickred/socialauth/util/OAuthConfig;->setAuthenticationUrl(Ljava/lang/String;)V

    goto :goto_1

    .line 123
    :cond_2
    iget-object v1, p0, Lorg/brickred/socialauth/provider/YahooImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    sget-object v0, Lorg/brickred/socialauth/provider/YahooImpl;->ENDPOINTS:Ljava/util/Map;

    .line 124
    const-string v2, "accessTokenURL"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 123
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
    .line 184
    .local p1, "requestParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/brickred/socialauth/provider/YahooImpl;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "Verifying the authentication response from provider"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 185
    iget-object v0, p0, Lorg/brickred/socialauth/provider/YahooImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    invoke-interface {v0, p1}, Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;->verifyResponse(Ljava/util/Map;)Lorg/brickred/socialauth/util/AccessGrant;

    move-result-object v0

    iput-object v0, p0, Lorg/brickred/socialauth/provider/YahooImpl;->accessToken:Lorg/brickred/socialauth/util/AccessGrant;

    .line 186
    invoke-direct {p0}, Lorg/brickred/socialauth/provider/YahooImpl;->getProfile()Lorg/brickred/socialauth/Profile;

    move-result-object v0

    return-object v0
.end method

.method private getProfile()Lorg/brickred/socialauth/Profile;
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/brickred/socialauth/provider/YahooImpl;->LOG:Lorg/apache/commons/logging/Log;

    move-object/from16 v18, v0

    const-string v19, "Obtaining user profile"

    invoke-interface/range {v18 .. v19}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 191
    new-instance v14, Lorg/brickred/socialauth/Profile;

    invoke-direct {v14}, Lorg/brickred/socialauth/Profile;-><init>()V

    .line 192
    .local v14, "profile":Lorg/brickred/socialauth/Profile;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/brickred/socialauth/provider/YahooImpl;->accessToken:Lorg/brickred/socialauth/util/AccessGrant;

    move-object/from16 v18, v0

    const-string/jumbo v19, "xoauth_yahoo_guid"

    invoke-virtual/range {v18 .. v19}, Lorg/brickred/socialauth/util/AccessGrant;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 193
    .local v9, "guid":Ljava/lang/String;
    const-string v18, "<"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v18

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    .line 194
    const/16 v18, 0x0

    const-string v19, "<"

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/brickred/socialauth/provider/YahooImpl;->accessToken:Lorg/brickred/socialauth/util/AccessGrant;

    move-object/from16 v18, v0

    const-string/jumbo v19, "xoauth_yahoo_guid"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v9}, Lorg/brickred/socialauth/util/AccessGrant;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 197
    :cond_0
    const-string v18, "http://social.yahooapis.com/v1/user/%1$s/profile?format=json"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v9, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    .line 198
    .local v17, "url":Ljava/lang/String;
    const/16 v16, 0x0

    .line 200
    .local v16, "serviceResponse":Lorg/brickred/socialauth/util/Response;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/brickred/socialauth/provider/YahooImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;->executeFeed(Ljava/lang/String;)Lorg/brickred/socialauth/util/Response;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v16

    .line 205
    invoke-virtual/range {v16 .. v16}, Lorg/brickred/socialauth/util/Response;->getStatus()I

    move-result v18

    const/16 v19, 0xc8

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_1

    .line 206
    new-instance v18, Lorg/brickred/socialauth/exception/SocialAuthException;

    .line 207
    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "Failed to retrieve the user profile from  "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 208
    const-string v20, ". Staus :"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v16 .. v16}, Lorg/brickred/socialauth/util/Response;->getStatus()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 207
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 206
    invoke-direct/range {v18 .. v19}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 201
    :catch_0
    move-exception v5

    .line 202
    .local v5, "e":Ljava/lang/Exception;
    new-instance v18, Lorg/brickred/socialauth/exception/SocialAuthException;

    .line 203
    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "Failed to retrieve the user profile from  "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 202
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v5}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v18

    .line 213
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    const-string v18, "UTF-8"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/brickred/socialauth/util/Response;->getResponseBodyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 214
    .local v15, "result":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/brickred/socialauth/provider/YahooImpl;->LOG:Lorg/apache/commons/logging/Log;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "User Profile :"

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 220
    :try_start_2
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12, v15}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 221
    .local v12, "jobj":Lorg/json/JSONObject;
    const-string v18, "profile"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_d

    .line 222
    const-string v18, "profile"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    .line 223
    .local v13, "pObj":Lorg/json/JSONObject;
    const-string v18, "guid"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 224
    const-string v18, "guid"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Lorg/brickred/socialauth/Profile;->setValidatedId(Ljava/lang/String;)V

    .line 226
    :cond_2
    const-string v18, "familyName"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 227
    const-string v18, "familyName"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Lorg/brickred/socialauth/Profile;->setLastName(Ljava/lang/String;)V

    .line 229
    :cond_3
    const-string v18, "gender"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 230
    const-string v18, "gender"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Lorg/brickred/socialauth/Profile;->setGender(Ljava/lang/String;)V

    .line 232
    :cond_4
    const-string v18, "givenName"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 233
    const-string v18, "givenName"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Lorg/brickred/socialauth/Profile;->setFirstName(Ljava/lang/String;)V

    .line 235
    :cond_5
    const-string v18, "location"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 236
    const-string v18, "location"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Lorg/brickred/socialauth/Profile;->setLocation(Ljava/lang/String;)V

    .line 238
    :cond_6
    const-string v18, "nickname"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 239
    const-string v18, "nickname"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Lorg/brickred/socialauth/Profile;->setDisplayName(Ljava/lang/String;)V

    .line 241
    :cond_7
    const-string v18, "lang"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 242
    const-string v18, "lang"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Lorg/brickred/socialauth/Profile;->setLanguage(Ljava/lang/String;)V

    .line 244
    :cond_8
    const-string v18, "birthdate"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_b

    .line 245
    const-string v18, "birthdate"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 246
    .local v4, "dstr":Ljava/lang/String;
    if-eqz v4, :cond_b

    .line 247
    const-string v18, "/"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 248
    .local v2, "arr":[Ljava/lang/String;
    new-instance v3, Lorg/brickred/socialauth/util/BirthDate;

    invoke-direct {v3}, Lorg/brickred/socialauth/util/BirthDate;-><init>()V

    .line 249
    .local v3, "bd":Lorg/brickred/socialauth/util/BirthDate;
    array-length v0, v2

    move/from16 v18, v0

    if-lez v18, :cond_9

    .line 250
    const/16 v18, 0x0

    aget-object v18, v2, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Lorg/brickred/socialauth/util/BirthDate;->setMonth(I)V

    .line 252
    :cond_9
    array-length v0, v2

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_a

    .line 253
    const/16 v18, 0x1

    aget-object v18, v2, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Lorg/brickred/socialauth/util/BirthDate;->setDay(I)V

    .line 255
    :cond_a
    invoke-virtual {v14, v3}, Lorg/brickred/socialauth/Profile;->setDob(Lorg/brickred/socialauth/util/BirthDate;)V

    .line 258
    .end local v2    # "arr":[Ljava/lang/String;
    .end local v3    # "bd":Lorg/brickred/socialauth/util/BirthDate;
    .end local v4    # "dstr":Ljava/lang/String;
    :cond_b
    const-string v18, "image"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_c

    .line 259
    const-string v18, "image"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    .line 260
    .local v11, "imgObj":Lorg/json/JSONObject;
    const-string v18, "imageUrl"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_c

    .line 261
    const-string v18, "imageUrl"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Lorg/brickred/socialauth/Profile;->setProfileImageURL(Ljava/lang/String;)V

    .line 264
    .end local v11    # "imgObj":Lorg/json/JSONObject;
    :cond_c
    const-string v18, "emails"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_d

    .line 265
    const-string v18, "emails"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 266
    .local v6, "earr":Lorg/json/JSONArray;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v18

    move/from16 v0, v18

    if-lt v10, v0, :cond_e

    .line 279
    .end local v6    # "earr":Lorg/json/JSONArray;
    .end local v10    # "i":I
    .end local v13    # "pObj":Lorg/json/JSONObject;
    :cond_d
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lorg/brickred/socialauth/provider/YahooImpl;->getProviderId()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Lorg/brickred/socialauth/Profile;->setProviderId(Ljava/lang/String;)V

    .line 280
    move-object/from16 v0, p0

    iput-object v14, v0, Lorg/brickred/socialauth/provider/YahooImpl;->userProfile:Lorg/brickred/socialauth/Profile;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 281
    return-object v14

    .line 215
    .end local v12    # "jobj":Lorg/json/JSONObject;
    .end local v15    # "result":Ljava/lang/String;
    :catch_1
    move-exception v8

    .line 216
    .local v8, "exc":Ljava/lang/Exception;
    new-instance v18, Lorg/brickred/socialauth/exception/SocialAuthException;

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "Failed to read response from  "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 217
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 216
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v8}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v18

    .line 267
    .end local v8    # "exc":Ljava/lang/Exception;
    .restart local v6    # "earr":Lorg/json/JSONArray;
    .restart local v10    # "i":I
    .restart local v12    # "jobj":Lorg/json/JSONObject;
    .restart local v13    # "pObj":Lorg/json/JSONObject;
    .restart local v15    # "result":Ljava/lang/String;
    :cond_e
    :try_start_3
    invoke-virtual {v6, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 268
    .local v7, "eobj":Lorg/json/JSONObject;
    const-string v18, "primary"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_f

    .line 269
    const-string/jumbo v18, "true"

    const-string v19, "primary"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_f

    .line 270
    const-string v18, "handle"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_d

    .line 271
    const-string v18, "handle"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Lorg/brickred/socialauth/Profile;->setEmail(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 282
    .end local v6    # "earr":Lorg/json/JSONArray;
    .end local v7    # "eobj":Lorg/json/JSONObject;
    .end local v10    # "i":I
    .end local v12    # "jobj":Lorg/json/JSONObject;
    .end local v13    # "pObj":Lorg/json/JSONObject;
    :catch_2
    move-exception v5

    .line 283
    .restart local v5    # "e":Ljava/lang/Exception;
    new-instance v18, Lorg/brickred/socialauth/exception/ServerDataException;

    .line 284
    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "Failed to parse the user profile json : "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 283
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v5}, Lorg/brickred/socialauth/exception/ServerDataException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v18

    .line 266
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v6    # "earr":Lorg/json/JSONArray;
    .restart local v7    # "eobj":Lorg/json/JSONObject;
    .restart local v10    # "i":I
    .restart local v12    # "jobj":Lorg/json/JSONObject;
    .restart local v13    # "pObj":Lorg/json/JSONObject;
    :cond_f
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0
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
    .line 467
    .local p3, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, "headerParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 468
    iget-object v3, p0, Lorg/brickred/socialauth/provider/YahooImpl;->accessToken:Lorg/brickred/socialauth/util/AccessGrant;

    const-string/jumbo v4, "xoauth_yahoo_guid"

    invoke-virtual {v3, v4}, Lorg/brickred/socialauth/util/AccessGrant;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v2

    .line 467
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 469
    .local v1, "urlStr":Ljava/lang/String;
    iget-object v0, p0, Lorg/brickred/socialauth/provider/YahooImpl;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Calling URL : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 471
    iget-object v0, p0, Lorg/brickred/socialauth/provider/YahooImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

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
    .line 490
    iget-object v0, p0, Lorg/brickred/socialauth/provider/YahooImpl;->accessToken:Lorg/brickred/socialauth/util/AccessGrant;

    return-object v0
.end method

.method public getContactList()Ljava/util/List;
    .locals 29
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
    .line 298
    const-string v24, "http://social.yahooapis.com/v1/user/%1$s/contacts;count=max"

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/brickred/socialauth/provider/YahooImpl;->accessToken:Lorg/brickred/socialauth/util/AccessGrant;

    move-object/from16 v27, v0

    const-string/jumbo v28, "xoauth_yahoo_guid"

    invoke-virtual/range {v27 .. v28}, Lorg/brickred/socialauth/util/AccessGrant;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v27

    aput-object v27, v25, v26

    .line 298
    invoke-static/range {v24 .. v25}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    .line 300
    .local v23, "url":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/brickred/socialauth/provider/YahooImpl;->LOG:Lorg/apache/commons/logging/Log;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "Fetching contacts from "

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-interface/range {v24 .. v25}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 302
    const/16 v21, 0x0

    .line 304
    .local v21, "serviceResponse":Lorg/brickred/socialauth/util/Response;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/brickred/socialauth/provider/YahooImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;->executeFeed(Ljava/lang/String;)Lorg/brickred/socialauth/util/Response;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v21

    .line 310
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 314
    .local v18, "plist":Ljava/util/List;, "Ljava/util/List<Lorg/brickred/socialauth/Contact;>;"
    :try_start_1
    invoke-virtual/range {v21 .. v21}, Lorg/brickred/socialauth/util/Response;->getInputStream()Ljava/io/InputStream;

    move-result-object v24

    .line 313
    invoke-static/range {v24 .. v24}, Lorg/brickred/socialauth/util/XMLParseUtil;->loadXmlResource(Ljava/io/InputStream;)Lorg/w3c/dom/Element;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v19

    .line 319
    .local v19, "root":Lorg/w3c/dom/Element;
    const-string v24, "contact"

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v5

    .line 320
    .local v5, "contactsList":Lorg/w3c/dom/NodeList;
    if-eqz v5, :cond_9

    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v24

    if-lez v24, :cond_9

    .line 321
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/brickred/socialauth/provider/YahooImpl;->LOG:Lorg/apache/commons/logging/Log;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "Found contacts : "

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-interface/range {v24 .. v25}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 322
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v24

    move/from16 v0, v24

    if-lt v12, v0, :cond_0

    .line 377
    .end local v12    # "i":I
    :goto_1
    return-object v18

    .line 305
    .end local v5    # "contactsList":Lorg/w3c/dom/NodeList;
    .end local v18    # "plist":Ljava/util/List;, "Ljava/util/List<Lorg/brickred/socialauth/Contact;>;"
    .end local v19    # "root":Lorg/w3c/dom/Element;
    :catch_0
    move-exception v13

    .line 306
    .local v13, "ie":Ljava/lang/Exception;
    new-instance v24, Lorg/brickred/socialauth/exception/SocialAuthException;

    .line 307
    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "Failed to retrieve the contacts from "

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 306
    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-direct {v0, v1, v13}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v24

    .line 315
    .end local v13    # "ie":Ljava/lang/Exception;
    .restart local v18    # "plist":Ljava/util/List;, "Ljava/util/List<Lorg/brickred/socialauth/Contact;>;"
    :catch_1
    move-exception v7

    .line 316
    .local v7, "e":Ljava/lang/Exception;
    new-instance v24, Lorg/brickred/socialauth/exception/ServerDataException;

    .line 317
    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "Failed to parse the contacts from response."

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 316
    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-direct {v0, v1, v7}, Lorg/brickred/socialauth/exception/ServerDataException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v24

    .line 323
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v5    # "contactsList":Lorg/w3c/dom/NodeList;
    .restart local v12    # "i":I
    .restart local v19    # "root":Lorg/w3c/dom/Element;
    :cond_0
    invoke-interface {v5, v12}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    .line 324
    .local v4, "contact":Lorg/w3c/dom/Element;
    const-string v24, "fields"

    move-object/from16 v0, v24

    invoke-interface {v4, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v10

    .line 325
    .local v10, "fieldList":Lorg/w3c/dom/NodeList;
    if-eqz v10, :cond_2

    invoke-interface {v10}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v24

    if-lez v24, :cond_2

    .line 326
    const-string v11, ""

    .line 327
    .local v11, "fname":Ljava/lang/String;
    const-string v16, ""

    .line 328
    .local v16, "lname":Ljava/lang/String;
    const-string v6, ""

    .line 329
    .local v6, "dispName":Ljava/lang/String;
    const-string v2, ""

    .line 330
    .local v2, "address":Ljava/lang/String;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 331
    .local v8, "emailArr":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_2
    invoke-interface {v10}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v24

    move/from16 v0, v24

    if-lt v14, v0, :cond_3

    .line 354
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v24

    if-lez v24, :cond_2

    .line 355
    new-instance v17, Lorg/brickred/socialauth/Contact;

    invoke-direct/range {v17 .. v17}, Lorg/brickred/socialauth/Contact;-><init>()V

    .line 356
    .local v17, "p":Lorg/brickred/socialauth/Contact;
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Lorg/brickred/socialauth/Contact;->setFirstName(Ljava/lang/String;)V

    .line 357
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/brickred/socialauth/Contact;->setLastName(Ljava/lang/String;)V

    .line 358
    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lorg/brickred/socialauth/Contact;->setEmail(Ljava/lang/String;)V

    .line 359
    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Lorg/brickred/socialauth/Contact;->setDisplayName(Ljava/lang/String;)V

    .line 360
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v24

    if-lez v24, :cond_1

    .line 361
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v24

    move/from16 v0, v24

    new-array v3, v0, [Ljava/lang/String;

    .line 362
    .local v3, "arr":[Ljava/lang/String;
    const/4 v15, 0x0

    .line 363
    .local v15, "k":I
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :goto_3
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-nez v25, :cond_8

    .line 367
    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/brickred/socialauth/Contact;->setOtherEmails([Ljava/lang/String;)V

    .line 369
    .end local v3    # "arr":[Ljava/lang/String;
    .end local v15    # "k":I
    :cond_1
    const-string/jumbo v24, "yahoo:uri"

    move-object/from16 v0, v24

    invoke-interface {v4, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/brickred/socialauth/Contact;->setId(Ljava/lang/String;)V

    .line 370
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 322
    .end local v2    # "address":Ljava/lang/String;
    .end local v6    # "dispName":Ljava/lang/String;
    .end local v8    # "emailArr":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v11    # "fname":Ljava/lang/String;
    .end local v14    # "j":I
    .end local v16    # "lname":Ljava/lang/String;
    .end local v17    # "p":Lorg/brickred/socialauth/Contact;
    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 332
    .restart local v2    # "address":Ljava/lang/String;
    .restart local v6    # "dispName":Ljava/lang/String;
    .restart local v8    # "emailArr":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v11    # "fname":Ljava/lang/String;
    .restart local v14    # "j":I
    .restart local v16    # "lname":Ljava/lang/String;
    :cond_3
    invoke-interface {v10, v14}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    check-cast v9, Lorg/w3c/dom/Element;

    .line 334
    .local v9, "field":Lorg/w3c/dom/Element;
    const-string/jumbo v24, "type"

    move-object/from16 v0, v24

    invoke-static {v9, v0}, Lorg/brickred/socialauth/util/XMLParseUtil;->getElementData(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 336
    .local v22, "type":Ljava/lang/String;
    const-string v24, "email"

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_6

    .line 337
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v24

    if-lez v24, :cond_5

    .line 339
    const-string/jumbo v24, "value"

    .line 338
    move-object/from16 v0, v24

    invoke-static {v9, v0}, Lorg/brickred/socialauth/util/XMLParseUtil;->getElementData(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 331
    :cond_4
    :goto_4
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_2

    .line 342
    :cond_5
    const-string/jumbo v24, "value"

    .line 341
    move-object/from16 v0, v24

    invoke-static {v9, v0}, Lorg/brickred/socialauth/util/XMLParseUtil;->getElementData(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 344
    goto :goto_4

    :cond_6
    const-string v24, "name"

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_7

    .line 346
    const-string v24, "givenName"

    .line 345
    move-object/from16 v0, v24

    invoke-static {v9, v0}, Lorg/brickred/socialauth/util/XMLParseUtil;->getElementData(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 348
    const-string v24, "familyName"

    .line 347
    move-object/from16 v0, v24

    invoke-static {v9, v0}, Lorg/brickred/socialauth/util/XMLParseUtil;->getElementData(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 349
    goto :goto_4

    :cond_7
    const-string/jumbo v24, "yahooid"

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_4

    .line 351
    const-string/jumbo v24, "value"

    .line 350
    move-object/from16 v0, v24

    invoke-static {v9, v0}, Lorg/brickred/socialauth/util/XMLParseUtil;->getElementData(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    .line 363
    .end local v9    # "field":Lorg/w3c/dom/Element;
    .end local v22    # "type":Ljava/lang/String;
    .restart local v3    # "arr":[Ljava/lang/String;
    .restart local v15    # "k":I
    .restart local v17    # "p":Lorg/brickred/socialauth/Contact;
    :cond_8
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 364
    .local v20, "s":Ljava/lang/String;
    aput-object v20, v3, v15

    .line 365
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_3

    .line 375
    .end local v2    # "address":Ljava/lang/String;
    .end local v3    # "arr":[Ljava/lang/String;
    .end local v4    # "contact":Lorg/w3c/dom/Element;
    .end local v6    # "dispName":Ljava/lang/String;
    .end local v8    # "emailArr":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "fieldList":Lorg/w3c/dom/NodeList;
    .end local v11    # "fname":Ljava/lang/String;
    .end local v12    # "i":I
    .end local v14    # "j":I
    .end local v15    # "k":I
    .end local v16    # "lname":Ljava/lang/String;
    .end local v17    # "p":Lorg/brickred/socialauth/Contact;
    .end local v20    # "s":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/brickred/socialauth/provider/YahooImpl;->LOG:Lorg/apache/commons/logging/Log;

    move-object/from16 v24, v0

    const-string v25, "No contacts were obtained from : http://social.yahooapis.com/v1/user/%1$s/contacts;count=max"

    invoke-interface/range {v24 .. v25}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto/16 :goto_1
.end method

.method public getLoginRedirectURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "successUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 153
    const/4 v2, 0x0

    .line 155
    .local v2, "url":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lorg/brickred/socialauth/provider/YahooImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    invoke-interface {v3, p1}, Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;->getLoginRedirectURL(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/brickred/socialauth/exception/SocialAuthException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 162
    return-object v2

    .line 157
    :catch_0
    move-exception v0

    .line 158
    .local v0, "ex":Lorg/brickred/socialauth/exception/SocialAuthException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/brickred/socialauth/exception/SocialAuthException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 159
    const-string v4, "OR you have not set any scope while registering your application. You will have to select atlest read public profile scope while registering your application"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 158
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 160
    .local v1, "msg":Ljava/lang/String;
    new-instance v3, Lorg/brickred/socialauth/exception/SocialAuthException;

    invoke-direct {v3, v1, v0}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method protected getOauthStrategy()Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Lorg/brickred/socialauth/provider/YahooImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

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
    .line 508
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 509
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lorg/brickred/socialauth/provider/YahooImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v1}, Lorg/brickred/socialauth/util/OAuthConfig;->getRegisteredPlugins()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 510
    iget-object v1, p0, Lorg/brickred/socialauth/provider/YahooImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v1}, Lorg/brickred/socialauth/util/OAuthConfig;->getRegisteredPlugins()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_0

    .line 511
    iget-object v1, p0, Lorg/brickred/socialauth/provider/YahooImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v1}, Lorg/brickred/socialauth/util/OAuthConfig;->getRegisteredPlugins()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 513
    :cond_0
    return-object v0
.end method

.method public getProviderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lorg/brickred/socialauth/provider/YahooImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

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
    .line 482
    iget-object v0, p0, Lorg/brickred/socialauth/provider/YahooImpl;->userProfile:Lorg/brickred/socialauth/Profile;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/brickred/socialauth/provider/YahooImpl;->accessToken:Lorg/brickred/socialauth/util/AccessGrant;

    if-eqz v0, :cond_0

    .line 483
    invoke-direct {p0}, Lorg/brickred/socialauth/provider/YahooImpl;->getProfile()Lorg/brickred/socialauth/Profile;

    .line 485
    :cond_0
    iget-object v0, p0, Lorg/brickred/socialauth/provider/YahooImpl;->userProfile:Lorg/brickred/socialauth/Profile;

    return-object v0
.end method

.method public logout()V
    .locals 1

    .prologue
    .line 422
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/brickred/socialauth/provider/YahooImpl;->accessToken:Lorg/brickred/socialauth/util/AccessGrant;

    .line 423
    iget-object v0, p0, Lorg/brickred/socialauth/provider/YahooImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    invoke-interface {v0}, Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;->logout()V

    .line 424
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
    iput-object p1, p0, Lorg/brickred/socialauth/provider/YahooImpl;->accessToken:Lorg/brickred/socialauth/util/AccessGrant;

    .line 140
    iget-object v0, p0, Lorg/brickred/socialauth/provider/YahooImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    invoke-interface {v0, p1}, Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;->setAccessGrant(Lorg/brickred/socialauth/util/AccessGrant;)V

    .line 141
    return-void
.end method

.method public setPermission(Lorg/brickred/socialauth/Permission;)V
    .locals 3
    .param p1, "p"    # Lorg/brickred/socialauth/Permission;

    .prologue
    .line 434
    iget-object v0, p0, Lorg/brickred/socialauth/provider/YahooImpl;->LOG:Lorg/apache/commons/logging/Log;

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

    .line 435
    iput-object p1, p0, Lorg/brickred/socialauth/provider/YahooImpl;->scope:Lorg/brickred/socialauth/Permission;

    .line 436
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
    .line 390
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 391
    :cond_0
    new-instance v0, Lorg/brickred/socialauth/exception/ServerDataException;

    const-string v2, "Status cannot be blank"

    invoke-direct {v0, v2}, Lorg/brickred/socialauth/exception/ServerDataException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 393
    :cond_1
    const-string v0, "http://social.yahooapis.com/v1/user/%1$s/profile/status"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 394
    iget-object v4, p0, Lorg/brickred/socialauth/provider/YahooImpl;->accessToken:Lorg/brickred/socialauth/util/AccessGrant;

    const-string/jumbo v8, "xoauth_yahoo_guid"

    invoke-virtual {v4, v8}, Lorg/brickred/socialauth/util/AccessGrant;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    .line 393
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 395
    .local v1, "url":Ljava/lang/String;
    iget-object v0, p0, Lorg/brickred/socialauth/provider/YahooImpl;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Updating status "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 396
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "{\"status\":{\"message\":\""

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\"}}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 397
    .local v5, "msgBody":Ljava/lang/String;
    const/4 v7, 0x0

    .line 399
    .local v7, "serviceResponse":Lorg/brickred/socialauth/util/Response;
    :try_start_0
    iget-object v0, p0, Lorg/brickred/socialauth/provider/YahooImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    .line 400
    sget-object v2, Lorg/brickred/socialauth/util/MethodType;->PUT:Lorg/brickred/socialauth/util/MethodType;

    invoke-virtual {v2}, Lorg/brickred/socialauth/util/MethodType;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 399
    invoke-interface/range {v0 .. v5}, Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;->executeFeed(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)Lorg/brickred/socialauth/util/Response;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 406
    invoke-virtual {v7}, Lorg/brickred/socialauth/util/Response;->getStatus()I

    move-result v0

    const/16 v2, 0xcc

    if-eq v0, v2, :cond_2

    .line 407
    new-instance v0, Lorg/brickred/socialauth/exception/SocialAuthException;

    .line 408
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to update status. Return status code :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 409
    invoke-virtual {v7}, Lorg/brickred/socialauth/util/Response;->getStatus()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 408
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 407
    invoke-direct {v0, v2}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 401
    :catch_0
    move-exception v6

    .line 402
    .local v6, "ie":Ljava/lang/Exception;
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

    .line 411
    .end local v6    # "ie":Ljava/lang/Exception;
    :cond_2
    iget-object v0, p0, Lorg/brickred/socialauth/provider/YahooImpl;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Status Updated and return status code is : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 412
    invoke-virtual {v7}, Lorg/brickred/socialauth/util/Response;->getStatus()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 411
    invoke-interface {v0, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 414
    return-object v7
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
    .line 501
    iget-object v0, p0, Lorg/brickred/socialauth/provider/YahooImpl;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "WARNING: Not implemented for Yahoo"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 502
    new-instance v0, Lorg/brickred/socialauth/exception/SocialAuthException;

    .line 503
    const-string v1, "Upload Image is not implemented for Yahoo"

    .line 502
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
    .line 179
    .local p1, "requestParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lorg/brickred/socialauth/provider/YahooImpl;->doVerifyResponse(Ljava/util/Map;)Lorg/brickred/socialauth/Profile;

    move-result-object v0

    return-object v0
.end method
