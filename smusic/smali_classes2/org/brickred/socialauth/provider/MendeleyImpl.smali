.class public Lorg/brickred/socialauth/provider/MendeleyImpl;
.super Lorg/brickred/socialauth/AbstractProvider;
.source "MendeleyImpl.java"


# static fields
.field private static final CONTACTS_URL:Ljava/lang/String; = "https://api.mendeley.com/oapi/profiles/contacts/"

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

.field private static final PROFILE_URL:Ljava/lang/String; = "https://api.mendeley.com/oapi/profiles/info/me/"

.field private static final serialVersionUID:J = -0x7a010002afce6054L


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
    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/brickred/socialauth/provider/MendeleyImpl;->ENDPOINTS:Ljava/util/Map;

    .line 77
    sget-object v0, Lorg/brickred/socialauth/provider/MendeleyImpl;->ENDPOINTS:Ljava/util/Map;

    const-string/jumbo v1, "reqTokenURL"

    .line 78
    const-string v2, "https://www.mendeley.com/oauth/request_token/"

    .line 77
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lorg/brickred/socialauth/provider/MendeleyImpl;->ENDPOINTS:Ljava/util/Map;

    const-string v1, "authorizationURL"

    .line 80
    const-string v2, "https://www.mendeley.com/oauth/authorize/"

    .line 79
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lorg/brickred/socialauth/provider/MendeleyImpl;->ENDPOINTS:Ljava/util/Map;

    const-string v1, "accessTokenURL"

    .line 82
    const-string v2, "https://www.mendeley.com/oauth/access_token/"

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

    .line 66
    const-class v0, Lorg/brickred/socialauth/provider/MendeleyImpl;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/brickred/socialauth/provider/MendeleyImpl;->LOG:Lorg/apache/commons/logging/Log;

    .line 94
    iput-object p1, p0, Lorg/brickred/socialauth/provider/MendeleyImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    .line 95
    iget-object v0, p0, Lorg/brickred/socialauth/provider/MendeleyImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v0}, Lorg/brickred/socialauth/util/OAuthConfig;->getRequestTokenUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 96
    sget-object v0, Lorg/brickred/socialauth/provider/MendeleyImpl;->ENDPOINTS:Ljava/util/Map;

    const-string/jumbo v1, "reqTokenURL"

    .line 97
    iget-object v2, p0, Lorg/brickred/socialauth/provider/MendeleyImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v2}, Lorg/brickred/socialauth/util/OAuthConfig;->getRequestTokenUrl()Ljava/lang/String;

    move-result-object v2

    .line 96
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    :goto_0
    iget-object v0, p0, Lorg/brickred/socialauth/provider/MendeleyImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v0}, Lorg/brickred/socialauth/util/OAuthConfig;->getAuthenticationUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 104
    sget-object v0, Lorg/brickred/socialauth/provider/MendeleyImpl;->ENDPOINTS:Ljava/util/Map;

    const-string v1, "authorizationURL"

    .line 105
    iget-object v2, p0, Lorg/brickred/socialauth/provider/MendeleyImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v2}, Lorg/brickred/socialauth/util/OAuthConfig;->getAuthenticationUrl()Ljava/lang/String;

    move-result-object v2

    .line 104
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    :goto_1
    iget-object v0, p0, Lorg/brickred/socialauth/provider/MendeleyImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v0}, Lorg/brickred/socialauth/util/OAuthConfig;->getAccessTokenUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 112
    sget-object v0, Lorg/brickred/socialauth/provider/MendeleyImpl;->ENDPOINTS:Ljava/util/Map;

    const-string v1, "accessTokenURL"

    .line 113
    iget-object v2, p0, Lorg/brickred/socialauth/provider/MendeleyImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v2}, Lorg/brickred/socialauth/util/OAuthConfig;->getAccessTokenUrl()Ljava/lang/String;

    move-result-object v2

    .line 112
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    :goto_2
    new-instance v0, Lorg/brickred/socialauth/oauthstrategy/OAuth1;

    iget-object v1, p0, Lorg/brickred/socialauth/provider/MendeleyImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    sget-object v2, Lorg/brickred/socialauth/provider/MendeleyImpl;->ENDPOINTS:Ljava/util/Map;

    invoke-direct {v0, v1, v2}, Lorg/brickred/socialauth/oauthstrategy/OAuth1;-><init>(Lorg/brickred/socialauth/util/OAuthConfig;Ljava/util/Map;)V

    iput-object v0, p0, Lorg/brickred/socialauth/provider/MendeleyImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    .line 119
    return-void

    .line 99
    :cond_0
    iget-object v1, p0, Lorg/brickred/socialauth/provider/MendeleyImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    sget-object v0, Lorg/brickred/socialauth/provider/MendeleyImpl;->ENDPOINTS:Ljava/util/Map;

    .line 100
    const-string/jumbo v2, "reqTokenURL"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 99
    invoke-virtual {v1, v0}, Lorg/brickred/socialauth/util/OAuthConfig;->setRequestTokenUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 107
    :cond_1
    iget-object v1, p0, Lorg/brickred/socialauth/provider/MendeleyImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    sget-object v0, Lorg/brickred/socialauth/provider/MendeleyImpl;->ENDPOINTS:Ljava/util/Map;

    .line 108
    const-string v2, "authorizationURL"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 107
    invoke-virtual {v1, v0}, Lorg/brickred/socialauth/util/OAuthConfig;->setAuthenticationUrl(Ljava/lang/String;)V

    goto :goto_1

    .line 115
    :cond_2
    iget-object v1, p0, Lorg/brickred/socialauth/provider/MendeleyImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    sget-object v0, Lorg/brickred/socialauth/provider/MendeleyImpl;->ENDPOINTS:Ljava/util/Map;

    .line 116
    const-string v2, "accessTokenURL"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 115
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
    .line 167
    .local p1, "requestParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/brickred/socialauth/provider/MendeleyImpl;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "Verifying the authentication response from provider"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 168
    iget-object v0, p0, Lorg/brickred/socialauth/provider/MendeleyImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    invoke-interface {v0, p1}, Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;->verifyResponse(Ljava/util/Map;)Lorg/brickred/socialauth/util/AccessGrant;

    move-result-object v0

    iput-object v0, p0, Lorg/brickred/socialauth/provider/MendeleyImpl;->accessToken:Lorg/brickred/socialauth/util/AccessGrant;

    .line 169
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/brickred/socialauth/provider/MendeleyImpl;->isVerify:Z

    .line 170
    invoke-direct {p0}, Lorg/brickred/socialauth/provider/MendeleyImpl;->getProfile()Lorg/brickred/socialauth/Profile;

    move-result-object v0

    return-object v0
.end method

.method private getProfile()Lorg/brickred/socialauth/Profile;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 174
    new-instance v6, Lorg/brickred/socialauth/Profile;

    invoke-direct {v6}, Lorg/brickred/socialauth/Profile;-><init>()V

    .line 175
    .local v6, "profile":Lorg/brickred/socialauth/Profile;
    const-string v9, "https://api.mendeley.com/oapi/profiles/info/me/"

    .line 176
    .local v9, "url":Ljava/lang/String;
    iget-object v10, p0, Lorg/brickred/socialauth/provider/MendeleyImpl;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Obtaining user profile. Profile URL : "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 177
    const/4 v8, 0x0

    .line 179
    .local v8, "serviceResponse":Lorg/brickred/socialauth/util/Response;
    :try_start_0
    iget-object v10, p0, Lorg/brickred/socialauth/provider/MendeleyImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    invoke-interface {v10, v9}, Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;->executeFeed(Ljava/lang/String;)Lorg/brickred/socialauth/util/Response;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 184
    invoke-virtual {v8}, Lorg/brickred/socialauth/util/Response;->getStatus()I

    move-result v10

    const/16 v11, 0xc8

    if-eq v10, v11, :cond_0

    .line 185
    new-instance v10, Lorg/brickred/socialauth/exception/SocialAuthException;

    .line 186
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Failed to retrieve the user profile from  "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 187
    const-string v12, ". Staus :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v8}, Lorg/brickred/socialauth/util/Response;->getStatus()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 186
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 185
    invoke-direct {v10, v11}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 180
    :catch_0
    move-exception v0

    .line 181
    .local v0, "e":Ljava/lang/Exception;
    new-instance v10, Lorg/brickred/socialauth/exception/SocialAuthException;

    .line 182
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Failed to retrieve the user profile from  "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 181
    invoke-direct {v10, v11, v0}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 192
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :try_start_1
    const-string v10, "UTF-8"

    invoke-virtual {v8, v10}, Lorg/brickred/socialauth/util/Response;->getResponseBodyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 193
    .local v7, "result":Ljava/lang/String;
    iget-object v10, p0, Lorg/brickred/socialauth/provider/MendeleyImpl;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "User Profile :"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 199
    :try_start_2
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 200
    .local v4, "pRes":Lorg/json/JSONObject;
    const-string v10, "main"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 201
    .local v3, "pObj":Lorg/json/JSONObject;
    const-string v10, "profile_id"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 202
    const-string v10, "profile_id"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Lorg/brickred/socialauth/Profile;->setValidatedId(Ljava/lang/String;)V

    .line 204
    :cond_1
    const-string v10, "name"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 205
    const-string v10, "name"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 206
    .local v2, "name":Ljava/lang/String;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_2

    .line 207
    const-string v10, "name"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Lorg/brickred/socialauth/Profile;->setFirstName(Ljava/lang/String;)V

    .line 210
    .end local v2    # "name":Ljava/lang/String;
    :cond_2
    const-string v10, "photo"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 211
    const-string v10, "photo"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 212
    .local v5, "photo":Ljava/lang/String;
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_3

    .line 213
    const-string v10, "photo"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Lorg/brickred/socialauth/Profile;->setProfileImageURL(Ljava/lang/String;)V

    .line 216
    .end local v5    # "photo":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Lorg/brickred/socialauth/provider/MendeleyImpl;->getProviderId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Lorg/brickred/socialauth/Profile;->setProviderId(Ljava/lang/String;)V

    .line 217
    iput-object v6, p0, Lorg/brickred/socialauth/provider/MendeleyImpl;->userProfile:Lorg/brickred/socialauth/Profile;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 218
    return-object v6

    .line 194
    .end local v3    # "pObj":Lorg/json/JSONObject;
    .end local v4    # "pRes":Lorg/json/JSONObject;
    .end local v7    # "result":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 195
    .local v1, "exc":Ljava/lang/Exception;
    new-instance v10, Lorg/brickred/socialauth/exception/SocialAuthException;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Failed to read response from  "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 196
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 195
    invoke-direct {v10, v11, v1}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 219
    .end local v1    # "exc":Ljava/lang/Exception;
    .restart local v7    # "result":Ljava/lang/String;
    :catch_2
    move-exception v0

    .line 220
    .restart local v0    # "e":Ljava/lang/Exception;
    new-instance v10, Lorg/brickred/socialauth/exception/ServerDataException;

    .line 221
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Failed to parse the user profile json : "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 220
    invoke-direct {v10, v11, v0}, Lorg/brickred/socialauth/exception/ServerDataException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10
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
    .line 340
    .local p3, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, "headerParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-boolean v0, p0, Lorg/brickred/socialauth/provider/MendeleyImpl;->isVerify:Z

    if-nez v0, :cond_0

    .line 341
    new-instance v0, Lorg/brickred/socialauth/exception/SocialAuthException;

    .line 342
    const-string v1, "Please call verifyResponse function first to get Access Token"

    .line 341
    invoke-direct {v0, v1}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 344
    :cond_0
    const/4 v6, 0x0

    .line 345
    .local v6, "response":Lorg/brickred/socialauth/util/Response;
    iget-object v0, p0, Lorg/brickred/socialauth/provider/MendeleyImpl;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Calling URL : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 346
    iget-object v0, p0, Lorg/brickred/socialauth/provider/MendeleyImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;->executeFeed(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)Lorg/brickred/socialauth/util/Response;

    move-result-object v6

    .line 348
    return-object v6
.end method

.method public getAccessGrant()Lorg/brickred/socialauth/util/AccessGrant;
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lorg/brickred/socialauth/provider/MendeleyImpl;->accessToken:Lorg/brickred/socialauth/util/AccessGrant;

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
    .line 247
    iget-boolean v12, p0, Lorg/brickred/socialauth/provider/MendeleyImpl;->isVerify:Z

    if-nez v12, :cond_0

    .line 248
    new-instance v12, Lorg/brickred/socialauth/exception/SocialAuthException;

    .line 249
    const-string v13, "Please call verifyResponse function first to get Access Token"

    .line 248
    invoke-direct {v12, v13}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 251
    :cond_0
    const-string v11, "https://api.mendeley.com/oapi/profiles/contacts/"

    .line 252
    .local v11, "url":Ljava/lang/String;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 253
    .local v8, "plist":Ljava/util/List;, "Ljava/util/List<Lorg/brickred/socialauth/Contact;>;"
    iget-object v12, p0, Lorg/brickred/socialauth/provider/MendeleyImpl;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Fetching contacts from "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 254
    const/4 v10, 0x0

    .line 256
    .local v10, "serviceResponse":Lorg/brickred/socialauth/util/Response;
    :try_start_0
    iget-object v12, p0, Lorg/brickred/socialauth/provider/MendeleyImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    invoke-interface {v12, v11}, Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;->executeFeed(Ljava/lang/String;)Lorg/brickred/socialauth/util/Response;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 264
    :try_start_1
    const-string v12, "UTF-8"

    invoke-virtual {v10, v12}, Lorg/brickred/socialauth/util/Response;->getResponseBodyAsString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v9

    .line 269
    .local v9, "result":Ljava/lang/String;
    :try_start_2
    iget-object v12, p0, Lorg/brickred/socialauth/provider/MendeleyImpl;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "User Contacts list in json : "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 270
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, v9}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 271
    .local v0, "data":Lorg/json/JSONArray;
    iget-object v12, p0, Lorg/brickred/socialauth/provider/MendeleyImpl;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Found contacts : "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 272
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v12

    if-lt v2, v12, :cond_1

    .line 293
    return-object v8

    .line 257
    .end local v0    # "data":Lorg/json/JSONArray;
    .end local v2    # "i":I
    .end local v9    # "result":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 258
    .local v3, "ie":Ljava/lang/Exception;
    new-instance v12, Lorg/brickred/socialauth/exception/SocialAuthException;

    .line 259
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Failed to retrieve the contacts from "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 258
    invoke-direct {v12, v13, v3}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v12

    .line 265
    .end local v3    # "ie":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 266
    .local v1, "e":Ljava/lang/Exception;
    new-instance v12, Lorg/brickred/socialauth/exception/ServerDataException;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Failed to get response from "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lorg/brickred/socialauth/exception/ServerDataException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 273
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "data":Lorg/json/JSONArray;
    .restart local v2    # "i":I
    .restart local v9    # "result":Ljava/lang/String;
    :cond_1
    :try_start_3
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 274
    .local v6, "obj":Lorg/json/JSONObject;
    new-instance v7, Lorg/brickred/socialauth/Contact;

    invoke-direct {v7}, Lorg/brickred/socialauth/Contact;-><init>()V

    .line 275
    .local v7, "p":Lorg/brickred/socialauth/Contact;
    const-string v12, "name"

    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 276
    .local v4, "name":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 277
    const-string v12, " "

    invoke-virtual {v4, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 278
    .local v5, "nameArr":[Ljava/lang/String;
    array-length v12, v5

    const/4 v13, 0x1

    if-le v12, v13, :cond_3

    .line 279
    const/4 v12, 0x0

    aget-object v12, v5, v12

    invoke-virtual {v7, v12}, Lorg/brickred/socialauth/Contact;->setFirstName(Ljava/lang/String;)V

    .line 280
    const/4 v12, 0x1

    aget-object v12, v5, v12

    invoke-virtual {v7, v12}, Lorg/brickred/socialauth/Contact;->setLastName(Ljava/lang/String;)V

    .line 284
    :goto_1
    invoke-virtual {v7, v4}, Lorg/brickred/socialauth/Contact;->setDisplayName(Ljava/lang/String;)V

    .line 286
    .end local v5    # "nameArr":[Ljava/lang/String;
    :cond_2
    const-string v12, "profile_id"

    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Lorg/brickred/socialauth/Contact;->setId(Ljava/lang/String;)V

    .line 287
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 282
    .restart local v5    # "nameArr":[Ljava/lang/String;
    :cond_3
    const-string v12, "name"

    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Lorg/brickred/socialauth/Contact;->setFirstName(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 289
    .end local v0    # "data":Lorg/json/JSONArray;
    .end local v2    # "i":I
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "nameArr":[Ljava/lang/String;
    .end local v6    # "obj":Lorg/json/JSONObject;
    .end local v7    # "p":Lorg/brickred/socialauth/Contact;
    :catch_2
    move-exception v1

    .line 290
    .restart local v1    # "e":Ljava/lang/Exception;
    new-instance v12, Lorg/brickred/socialauth/exception/ServerDataException;

    .line 291
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Failed to parse the user friends json : "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 290
    invoke-direct {v12, v13, v1}, Lorg/brickred/socialauth/exception/ServerDataException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v12
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
    .line 145
    iget-object v0, p0, Lorg/brickred/socialauth/provider/MendeleyImpl;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "Determining URL for redirection"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 146
    iget-object v0, p0, Lorg/brickred/socialauth/provider/MendeleyImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    invoke-interface {v0, p1}, Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;->getLoginRedirectURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getOauthStrategy()Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lorg/brickred/socialauth/provider/MendeleyImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

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
    .line 384
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 385
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lorg/brickred/socialauth/provider/MendeleyImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v1}, Lorg/brickred/socialauth/util/OAuthConfig;->getRegisteredPlugins()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 386
    iget-object v1, p0, Lorg/brickred/socialauth/provider/MendeleyImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v1}, Lorg/brickred/socialauth/util/OAuthConfig;->getRegisteredPlugins()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_0

    .line 387
    iget-object v1, p0, Lorg/brickred/socialauth/provider/MendeleyImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v1}, Lorg/brickred/socialauth/util/OAuthConfig;->getRegisteredPlugins()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 389
    :cond_0
    return-object v0
.end method

.method public getProviderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lorg/brickred/socialauth/provider/MendeleyImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

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
    .line 358
    iget-object v0, p0, Lorg/brickred/socialauth/provider/MendeleyImpl;->userProfile:Lorg/brickred/socialauth/Profile;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/brickred/socialauth/provider/MendeleyImpl;->accessToken:Lorg/brickred/socialauth/util/AccessGrant;

    if-eqz v0, :cond_0

    .line 359
    invoke-direct {p0}, Lorg/brickred/socialauth/provider/MendeleyImpl;->getProfile()Lorg/brickred/socialauth/Profile;

    .line 361
    :cond_0
    iget-object v0, p0, Lorg/brickred/socialauth/provider/MendeleyImpl;->userProfile:Lorg/brickred/socialauth/Profile;

    return-object v0
.end method

.method public logout()V
    .locals 1

    .prologue
    .line 301
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/brickred/socialauth/provider/MendeleyImpl;->accessToken:Lorg/brickred/socialauth/util/AccessGrant;

    .line 302
    iget-object v0, p0, Lorg/brickred/socialauth/provider/MendeleyImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    invoke-interface {v0}, Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;->logout()V

    .line 303
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
    .line 131
    iput-object p1, p0, Lorg/brickred/socialauth/provider/MendeleyImpl;->accessToken:Lorg/brickred/socialauth/util/AccessGrant;

    .line 132
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/brickred/socialauth/provider/MendeleyImpl;->isVerify:Z

    .line 133
    iget-object v0, p0, Lorg/brickred/socialauth/provider/MendeleyImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    invoke-interface {v0, p1}, Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;->setAccessGrant(Lorg/brickred/socialauth/util/AccessGrant;)V

    .line 134
    return-void
.end method

.method public setPermission(Lorg/brickred/socialauth/Permission;)V
    .locals 3
    .param p1, "p"    # Lorg/brickred/socialauth/Permission;

    .prologue
    .line 313
    iget-object v0, p0, Lorg/brickred/socialauth/provider/MendeleyImpl;->LOG:Lorg/apache/commons/logging/Log;

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

    .line 314
    iput-object p1, p0, Lorg/brickred/socialauth/provider/MendeleyImpl;->scope:Lorg/brickred/socialauth/Permission;

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
    .line 235
    new-instance v0, Lorg/brickred/socialauth/exception/SocialAuthException;

    .line 236
    const-string v1, "Mendeley does not support status updates"

    .line 235
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
    .line 377
    iget-object v0, p0, Lorg/brickred/socialauth/provider/MendeleyImpl;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "WARNING: Not implemented for Mendeley"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 378
    new-instance v0, Lorg/brickred/socialauth/exception/SocialAuthException;

    .line 379
    const-string v1, "Upload Image is not implemented for Mendeley"

    .line 378
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
    .line 162
    .local p1, "requestParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lorg/brickred/socialauth/provider/MendeleyImpl;->doVerifyResponse(Ljava/util/Map;)Lorg/brickred/socialauth/Profile;

    move-result-object v0

    return-object v0
.end method
