.class public Lorg/brickred/socialauth/provider/HotmailImpl;
.super Lorg/brickred/socialauth/AbstractProvider;
.source "HotmailImpl.java"


# static fields
.field private static final AllPerms:Ljava/lang/String;

.field private static final AuthenticateOnlyPerms:Ljava/lang/String;

.field private static final CONTACTS_URL:Ljava/lang/String; = "https://apis.live.net/v5.0/me/contacts"

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

.field private static final PROFILE_PICTURE_URL:Ljava/lang/String; = "https://apis.live.net/v5.0/me/picture?access_token=%1$s"

.field private static final PROFILE_URL:Ljava/lang/String; = "https://apis.live.net/v5.0/me"

.field private static final UPDATE_STATUS_URL:Ljava/lang/String; = "https://apis.live.net/v5.0/me/share"

.field private static final serialVersionUID:J = 0x3f46d0fef02e9a55L


# instance fields
.field private final LOG:Lorg/apache/commons/logging/Log;

.field private accessGrant:Lorg/brickred/socialauth/util/AccessGrant;

.field private authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

.field private config:Lorg/brickred/socialauth/util/OAuthConfig;

.field private isVerify:Z

.field private scope:Lorg/brickred/socialauth/Permission;

.field private userProfile:Lorg/brickred/socialauth/Profile;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 84
    new-instance v0, Ljava/lang/String;

    .line 85
    const-string/jumbo v1, "wl.basic,wl.emails,wl.share,wl.birthday"

    .line 84
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/brickred/socialauth/provider/HotmailImpl;->AllPerms:Ljava/lang/String;

    .line 86
    new-instance v0, Ljava/lang/String;

    .line 87
    const-string/jumbo v1, "wl.basic,wl.emails"

    .line 86
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/brickred/socialauth/provider/HotmailImpl;->AuthenticateOnlyPerms:Ljava/lang/String;

    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/brickred/socialauth/provider/HotmailImpl;->ENDPOINTS:Ljava/util/Map;

    .line 91
    sget-object v0, Lorg/brickred/socialauth/provider/HotmailImpl;->ENDPOINTS:Ljava/util/Map;

    const-string v1, "authorizationURL"

    .line 92
    const-string v2, "https://oauth.live.com/authorize"

    .line 91
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lorg/brickred/socialauth/provider/HotmailImpl;->ENDPOINTS:Ljava/util/Map;

    const-string v1, "accessTokenURL"

    .line 94
    const-string v2, "https://oauth.live.com/token"

    .line 93
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
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
    .line 105
    invoke-direct {p0}, Lorg/brickred/socialauth/AbstractProvider;-><init>()V

    .line 74
    const-class v0, Lorg/brickred/socialauth/provider/HotmailImpl;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/brickred/socialauth/provider/HotmailImpl;->LOG:Lorg/apache/commons/logging/Log;

    .line 106
    iput-object p1, p0, Lorg/brickred/socialauth/provider/HotmailImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    .line 107
    iget-object v0, p0, Lorg/brickred/socialauth/provider/HotmailImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v0}, Lorg/brickred/socialauth/util/OAuthConfig;->getCustomPermissions()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 108
    sget-object v0, Lorg/brickred/socialauth/Permission;->CUSTOM:Lorg/brickred/socialauth/Permission;

    iput-object v0, p0, Lorg/brickred/socialauth/provider/HotmailImpl;->scope:Lorg/brickred/socialauth/Permission;

    .line 110
    :cond_0
    iget-object v0, p0, Lorg/brickred/socialauth/provider/HotmailImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v0}, Lorg/brickred/socialauth/util/OAuthConfig;->getAuthenticationUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 111
    sget-object v0, Lorg/brickred/socialauth/provider/HotmailImpl;->ENDPOINTS:Ljava/util/Map;

    const-string v1, "authorizationURL"

    .line 112
    iget-object v2, p0, Lorg/brickred/socialauth/provider/HotmailImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v2}, Lorg/brickred/socialauth/util/OAuthConfig;->getAuthenticationUrl()Ljava/lang/String;

    move-result-object v2

    .line 111
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    :goto_0
    iget-object v0, p0, Lorg/brickred/socialauth/provider/HotmailImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v0}, Lorg/brickred/socialauth/util/OAuthConfig;->getAccessTokenUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 119
    sget-object v0, Lorg/brickred/socialauth/provider/HotmailImpl;->ENDPOINTS:Ljava/util/Map;

    const-string v1, "accessTokenURL"

    .line 120
    iget-object v2, p0, Lorg/brickred/socialauth/provider/HotmailImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v2}, Lorg/brickred/socialauth/util/OAuthConfig;->getAccessTokenUrl()Ljava/lang/String;

    move-result-object v2

    .line 119
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    :goto_1
    new-instance v0, Lorg/brickred/socialauth/oauthstrategy/OAuth2;

    iget-object v1, p0, Lorg/brickred/socialauth/provider/HotmailImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    sget-object v2, Lorg/brickred/socialauth/provider/HotmailImpl;->ENDPOINTS:Ljava/util/Map;

    invoke-direct {v0, v1, v2}, Lorg/brickred/socialauth/oauthstrategy/OAuth2;-><init>(Lorg/brickred/socialauth/util/OAuthConfig;Ljava/util/Map;)V

    iput-object v0, p0, Lorg/brickred/socialauth/provider/HotmailImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    .line 126
    iget-object v0, p0, Lorg/brickred/socialauth/provider/HotmailImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    iget-object v1, p0, Lorg/brickred/socialauth/provider/HotmailImpl;->scope:Lorg/brickred/socialauth/Permission;

    invoke-interface {v0, v1}, Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;->setPermission(Lorg/brickred/socialauth/Permission;)V

    .line 127
    iget-object v0, p0, Lorg/brickred/socialauth/provider/HotmailImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    invoke-direct {p0}, Lorg/brickred/socialauth/provider/HotmailImpl;->getScope()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;->setScope(Ljava/lang/String;)V

    .line 128
    return-void

    .line 114
    :cond_1
    iget-object v1, p0, Lorg/brickred/socialauth/provider/HotmailImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    sget-object v0, Lorg/brickred/socialauth/provider/HotmailImpl;->ENDPOINTS:Ljava/util/Map;

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
    iget-object v1, p0, Lorg/brickred/socialauth/provider/HotmailImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    sget-object v0, Lorg/brickred/socialauth/provider/HotmailImpl;->ENDPOINTS:Ljava/util/Map;

    .line 123
    const-string v2, "accessTokenURL"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 122
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
    .line 176
    .local p1, "requestParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/brickred/socialauth/provider/HotmailImpl;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "Retrieving Access Token in verify response function"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 178
    const-string/jumbo v0, "wrap_error_reason"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 179
    const-string/jumbo v0, "user_denied"

    const-string/jumbo v1, "wrap_error_reason"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    new-instance v0, Lorg/brickred/socialauth/exception/UserDeniedPermissionException;

    invoke-direct {v0}, Lorg/brickred/socialauth/exception/UserDeniedPermissionException;-><init>()V

    throw v0

    .line 183
    :cond_0
    iget-object v0, p0, Lorg/brickred/socialauth/provider/HotmailImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    invoke-interface {v0, p1}, Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;->verifyResponse(Ljava/util/Map;)Lorg/brickred/socialauth/util/AccessGrant;

    move-result-object v0

    iput-object v0, p0, Lorg/brickred/socialauth/provider/HotmailImpl;->accessGrant:Lorg/brickred/socialauth/util/AccessGrant;

    .line 185
    iget-object v0, p0, Lorg/brickred/socialauth/provider/HotmailImpl;->accessGrant:Lorg/brickred/socialauth/util/AccessGrant;

    if-eqz v0, :cond_1

    .line 186
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/brickred/socialauth/provider/HotmailImpl;->isVerify:Z

    .line 187
    iget-object v0, p0, Lorg/brickred/socialauth/provider/HotmailImpl;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "Obtaining user profile"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 188
    invoke-direct {p0}, Lorg/brickred/socialauth/provider/HotmailImpl;->getProfile()Lorg/brickred/socialauth/Profile;

    move-result-object v0

    return-object v0

    .line 190
    :cond_1
    new-instance v0, Lorg/brickred/socialauth/exception/SocialAuthException;

    const-string v1, "Unable to get Access token"

    invoke-direct {v0, v1}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getContacts(Ljava/lang/String;)Ljava/util/List;
    .locals 13
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
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
    .line 216
    :try_start_0
    iget-object v10, p0, Lorg/brickred/socialauth/provider/HotmailImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    invoke-interface {v10, p1}, Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;->executeFeed(Ljava/lang/String;)Lorg/brickred/socialauth/util/Response;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 221
    .local v9, "serviceResponse":Lorg/brickred/socialauth/util/Response;
    invoke-virtual {v9}, Lorg/brickred/socialauth/util/Response;->getStatus()I

    move-result v10

    const/16 v11, 0xc8

    if-eq v10, v11, :cond_0

    .line 222
    new-instance v10, Lorg/brickred/socialauth/exception/SocialAuthException;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Error while getting contacts from "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 223
    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "Status : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v9}, Lorg/brickred/socialauth/util/Response;->getStatus()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 222
    invoke-direct {v10, v11}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 217
    .end local v9    # "serviceResponse":Lorg/brickred/socialauth/util/Response;
    :catch_0
    move-exception v1

    .line 218
    .local v1, "e":Ljava/lang/Exception;
    new-instance v10, Lorg/brickred/socialauth/exception/SocialAuthException;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Error while getting contacts from "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 219
    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 218
    invoke-direct {v10, v11, v1}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 228
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v9    # "serviceResponse":Lorg/brickred/socialauth/util/Response;
    :cond_0
    :try_start_1
    const-string v10, "UTF-8"

    invoke-virtual {v9, v10}, Lorg/brickred/socialauth/util/Response;->getResponseBodyAsString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v8

    .line 233
    .local v8, "result":Ljava/lang/String;
    iget-object v10, p0, Lorg/brickred/socialauth/provider/HotmailImpl;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "User Contacts list in JSON "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 234
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 235
    .local v7, "resp":Lorg/json/JSONObject;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 236
    .local v6, "plist":Ljava/util/List;, "Ljava/util/List<Lorg/brickred/socialauth/Contact;>;"
    const-string v10, "data"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 237
    const-string v10, "data"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 238
    .local v0, "addArr":Lorg/json/JSONArray;
    iget-object v10, p0, Lorg/brickred/socialauth/provider/HotmailImpl;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Contacts Found : "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 239
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-lt v3, v10, :cond_2

    .line 263
    .end local v0    # "addArr":Lorg/json/JSONArray;
    .end local v3    # "i":I
    :cond_1
    invoke-virtual {v9}, Lorg/brickred/socialauth/util/Response;->close()V

    .line 264
    return-object v6

    .line 229
    .end local v6    # "plist":Ljava/util/List;, "Ljava/util/List<Lorg/brickred/socialauth/Contact;>;"
    .end local v7    # "resp":Lorg/json/JSONObject;
    .end local v8    # "result":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 230
    .restart local v1    # "e":Ljava/lang/Exception;
    new-instance v10, Lorg/brickred/socialauth/exception/ServerDataException;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Failed to get response from "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11, v1}, Lorg/brickred/socialauth/exception/ServerDataException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 240
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "addArr":Lorg/json/JSONArray;
    .restart local v3    # "i":I
    .restart local v6    # "plist":Ljava/util/List;, "Ljava/util/List<Lorg/brickred/socialauth/Contact;>;"
    .restart local v7    # "resp":Lorg/json/JSONObject;
    .restart local v8    # "result":Ljava/lang/String;
    :cond_2
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 241
    .local v4, "obj":Lorg/json/JSONObject;
    new-instance v5, Lorg/brickred/socialauth/Contact;

    invoke-direct {v5}, Lorg/brickred/socialauth/Contact;-><init>()V

    .line 242
    .local v5, "p":Lorg/brickred/socialauth/Contact;
    const-string v10, "email_hashes"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 243
    const-string v10, "email_hashes"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 244
    .local v2, "emailArr":Lorg/json/JSONArray;
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-lez v10, :cond_3

    .line 245
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lorg/brickred/socialauth/Contact;->setEmailHash(Ljava/lang/String;)V

    .line 248
    .end local v2    # "emailArr":Lorg/json/JSONArray;
    :cond_3
    const-string v10, "name"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 249
    const-string v10, "name"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lorg/brickred/socialauth/Contact;->setDisplayName(Ljava/lang/String;)V

    .line 251
    :cond_4
    const-string v10, "first_name"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 252
    const-string v10, "first_name"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lorg/brickred/socialauth/Contact;->setFirstName(Ljava/lang/String;)V

    .line 254
    :cond_5
    const-string v10, "last_name"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 255
    const-string v10, "last_name"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lorg/brickred/socialauth/Contact;->setLastName(Ljava/lang/String;)V

    .line 257
    :cond_6
    const-string v10, "id"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 258
    const-string v10, "id"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lorg/brickred/socialauth/Contact;->setId(Ljava/lang/String;)V

    .line 260
    :cond_7
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0
.end method

.method private getProfile()Lorg/brickred/socialauth/Profile;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 310
    new-instance v4, Lorg/brickred/socialauth/Profile;

    invoke-direct {v4}, Lorg/brickred/socialauth/Profile;-><init>()V

    .line 313
    .local v4, "p":Lorg/brickred/socialauth/Profile;
    :try_start_0
    iget-object v9, p0, Lorg/brickred/socialauth/provider/HotmailImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    const-string v10, "https://apis.live.net/v5.0/me"

    invoke-interface {v9, v10}, Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;->executeFeed(Ljava/lang/String;)Lorg/brickred/socialauth/util/Response;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 323
    .local v8, "serviceResponse":Lorg/brickred/socialauth/util/Response;
    :try_start_1
    const-string v9, "UTF-8"

    invoke-virtual {v8, v9}, Lorg/brickred/socialauth/util/Response;->getResponseBodyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 324
    .local v7, "result":Ljava/lang/String;
    iget-object v9, p0, Lorg/brickred/socialauth/provider/HotmailImpl;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "User Profile :"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 330
    :try_start_2
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 331
    .local v6, "resp":Lorg/json/JSONObject;
    const-string v9, "id"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 332
    const-string v9, "id"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lorg/brickred/socialauth/Profile;->setValidatedId(Ljava/lang/String;)V

    .line 334
    :cond_0
    const-string v9, "name"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 335
    const-string v9, "name"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lorg/brickred/socialauth/Profile;->setFullName(Ljava/lang/String;)V

    .line 337
    :cond_1
    const-string v9, "first_name"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 338
    const-string v9, "first_name"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lorg/brickred/socialauth/Profile;->setFirstName(Ljava/lang/String;)V

    .line 340
    :cond_2
    const-string v9, "last_name"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 341
    const-string v9, "last_name"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lorg/brickred/socialauth/Profile;->setLastName(Ljava/lang/String;)V

    .line 343
    :cond_3
    const-string v9, "Location"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 344
    const-string v9, "Location"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lorg/brickred/socialauth/Profile;->setLocation(Ljava/lang/String;)V

    .line 346
    :cond_4
    const-string v9, "gender"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 347
    const-string v9, "gender"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lorg/brickred/socialauth/Profile;->setGender(Ljava/lang/String;)V

    .line 349
    :cond_5
    const-string v9, "ThumbnailImageLink"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 350
    const-string v9, "ThumbnailImageLink"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lorg/brickred/socialauth/Profile;->setProfileImageURL(Ljava/lang/String;)V

    .line 353
    :cond_6
    const-string v9, "birth_day"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    const-string v9, "birth_day"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_9

    .line 354
    new-instance v0, Lorg/brickred/socialauth/util/BirthDate;

    invoke-direct {v0}, Lorg/brickred/socialauth/util/BirthDate;-><init>()V

    .line 355
    .local v0, "bd":Lorg/brickred/socialauth/util/BirthDate;
    const-string v9, "birth_day"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v0, v9}, Lorg/brickred/socialauth/util/BirthDate;->setDay(I)V

    .line 356
    const-string v9, "birth_month"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    const-string v9, "birth_month"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 357
    const-string v9, "birth_month"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v0, v9}, Lorg/brickred/socialauth/util/BirthDate;->setMonth(I)V

    .line 359
    :cond_7
    const-string v9, "birth_year"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    const-string v9, "birth_year"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 360
    const-string v9, "birth_year"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v0, v9}, Lorg/brickred/socialauth/util/BirthDate;->setYear(I)V

    .line 362
    :cond_8
    invoke-virtual {v4, v0}, Lorg/brickred/socialauth/Profile;->setDob(Lorg/brickred/socialauth/util/BirthDate;)V

    .line 365
    .end local v0    # "bd":Lorg/brickred/socialauth/util/BirthDate;
    :cond_9
    const-string v9, "emails"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 366
    const-string v9, "emails"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 367
    .local v3, "eobj":Lorg/json/JSONObject;
    const/4 v2, 0x0

    .line 368
    .local v2, "email":Ljava/lang/String;
    const-string v9, "preferred"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 369
    const-string v9, "preferred"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 371
    :cond_a
    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_c

    :cond_b
    const-string v9, "account"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 372
    const-string v9, "account"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 374
    :cond_c
    if-eqz v2, :cond_d

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_e

    :cond_d
    const-string v9, "personal"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 375
    const-string v9, "personal"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 377
    :cond_e
    invoke-virtual {v4, v2}, Lorg/brickred/socialauth/Profile;->setEmail(Ljava/lang/String;)V

    .line 380
    .end local v2    # "email":Ljava/lang/String;
    .end local v3    # "eobj":Lorg/json/JSONObject;
    :cond_f
    const-string v9, "locale"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 381
    const-string v9, "locale"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lorg/brickred/socialauth/Profile;->setLanguage(Ljava/lang/String;)V

    .line 383
    :cond_10
    invoke-virtual {v8}, Lorg/brickred/socialauth/util/Response;->close()V

    .line 384
    invoke-virtual {p0}, Lorg/brickred/socialauth/provider/HotmailImpl;->getProviderId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lorg/brickred/socialauth/Profile;->setProviderId(Ljava/lang/String;)V

    .line 385
    const-string v9, "https://apis.live.net/v5.0/me/picture?access_token=%1$s"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    .line 386
    iget-object v12, p0, Lorg/brickred/socialauth/provider/HotmailImpl;->accessGrant:Lorg/brickred/socialauth/util/AccessGrant;

    invoke-virtual {v12}, Lorg/brickred/socialauth/util/AccessGrant;->getKey()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    .line 385
    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 387
    .local v5, "picUrl":Ljava/lang/String;
    invoke-virtual {v4, v5}, Lorg/brickred/socialauth/Profile;->setProfileImageURL(Ljava/lang/String;)V

    .line 388
    iput-object v4, p0, Lorg/brickred/socialauth/provider/HotmailImpl;->userProfile:Lorg/brickred/socialauth/Profile;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 389
    return-object v4

    .line 314
    .end local v5    # "picUrl":Ljava/lang/String;
    .end local v6    # "resp":Lorg/json/JSONObject;
    .end local v7    # "result":Ljava/lang/String;
    .end local v8    # "serviceResponse":Lorg/brickred/socialauth/util/Response;
    :catch_0
    move-exception v1

    .line 315
    .local v1, "e":Ljava/lang/Exception;
    new-instance v9, Lorg/brickred/socialauth/exception/SocialAuthException;

    .line 316
    const-string v10, "Failed to retrieve the user profile from  https://apis.live.net/v5.0/me"

    .line 315
    invoke-direct {v9, v10, v1}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .line 325
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v8    # "serviceResponse":Lorg/brickred/socialauth/util/Response;
    :catch_1
    move-exception v1

    .line 326
    .restart local v1    # "e":Ljava/lang/Exception;
    new-instance v9, Lorg/brickred/socialauth/exception/SocialAuthException;

    const-string v10, "Failed to read response from  https://apis.live.net/v5.0/me"

    invoke-direct {v9, v10, v1}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .line 390
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v7    # "result":Ljava/lang/String;
    :catch_2
    move-exception v1

    .line 391
    .restart local v1    # "e":Ljava/lang/Exception;
    new-instance v9, Lorg/brickred/socialauth/exception/SocialAuthException;

    .line 392
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Failed to parse the user profile json : "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 391
    invoke-direct {v9, v10, v1}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9
.end method

.method private getScope()Ljava/lang/String;
    .locals 4

    .prologue
    .line 481
    const/4 v1, 0x0

    .line 482
    .local v1, "scopeStr":Ljava/lang/String;
    sget-object v2, Lorg/brickred/socialauth/Permission;->AUTHENTICATE_ONLY:Lorg/brickred/socialauth/Permission;

    iget-object v3, p0, Lorg/brickred/socialauth/provider/HotmailImpl;->scope:Lorg/brickred/socialauth/Permission;

    invoke-virtual {v2, v3}, Lorg/brickred/socialauth/Permission;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 483
    sget-object v1, Lorg/brickred/socialauth/provider/HotmailImpl;->AuthenticateOnlyPerms:Ljava/lang/String;

    .line 489
    :goto_0
    iget-object v2, p0, Lorg/brickred/socialauth/provider/HotmailImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {p0, v2}, Lorg/brickred/socialauth/provider/HotmailImpl;->getPluginsScope(Lorg/brickred/socialauth/util/OAuthConfig;)Ljava/lang/String;

    move-result-object v0

    .line 490
    .local v0, "pluginScopes":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 491
    if-eqz v1, :cond_3

    .line 492
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 497
    :cond_0
    :goto_1
    return-object v1

    .line 484
    .end local v0    # "pluginScopes":Ljava/lang/String;
    :cond_1
    sget-object v2, Lorg/brickred/socialauth/Permission;->CUSTOM:Lorg/brickred/socialauth/Permission;

    iget-object v3, p0, Lorg/brickred/socialauth/provider/HotmailImpl;->scope:Lorg/brickred/socialauth/Permission;

    invoke-virtual {v2, v3}, Lorg/brickred/socialauth/Permission;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 485
    iget-object v2, p0, Lorg/brickred/socialauth/provider/HotmailImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v2}, Lorg/brickred/socialauth/util/OAuthConfig;->getCustomPermissions()Ljava/lang/String;

    move-result-object v1

    .line 486
    goto :goto_0

    .line 487
    :cond_2
    sget-object v1, Lorg/brickred/socialauth/provider/HotmailImpl;->AllPerms:Ljava/lang/String;

    goto :goto_0

    .line 494
    .restart local v0    # "pluginScopes":Ljava/lang/String;
    :cond_3
    move-object v1, v0

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
    .line 431
    .local p3, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, "headerParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/brickred/socialauth/provider/HotmailImpl;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Calling URL : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 434
    :try_start_0
    iget-object v0, p0, Lorg/brickred/socialauth/provider/HotmailImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;->executeFeed(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)Lorg/brickred/socialauth/util/Response;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 440
    .local v7, "serviceResponse":Lorg/brickred/socialauth/util/Response;
    invoke-virtual {v7}, Lorg/brickred/socialauth/util/Response;->getStatus()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_0

    .line 441
    iget-object v0, p0, Lorg/brickred/socialauth/provider/HotmailImpl;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Return statuc for URL "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 442
    invoke-virtual {v7}, Lorg/brickred/socialauth/util/Response;->getStatus()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 441
    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 443
    new-instance v0, Lorg/brickred/socialauth/exception/SocialAuthException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error while making request to URL :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 444
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Status : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Lorg/brickred/socialauth/util/Response;->getStatus()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 443
    invoke-direct {v0, v1}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 436
    .end local v7    # "serviceResponse":Lorg/brickred/socialauth/util/Response;
    :catch_0
    move-exception v6

    .line 437
    .local v6, "e":Ljava/lang/Exception;
    new-instance v0, Lorg/brickred/socialauth/exception/SocialAuthException;

    .line 438
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error while making request to URL : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 437
    invoke-direct {v0, v1, v6}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 446
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v7    # "serviceResponse":Lorg/brickred/socialauth/util/Response;
    :cond_0
    return-object v7
.end method

.method public getAccessGrant()Lorg/brickred/socialauth/util/AccessGrant;
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Lorg/brickred/socialauth/provider/HotmailImpl;->accessGrant:Lorg/brickred/socialauth/util/AccessGrant;

    return-object v0
.end method

.method public getContactList()Ljava/util/List;
    .locals 2
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
    .line 205
    sget-object v0, Lorg/brickred/socialauth/Permission;->AUTHENTICATE_ONLY:Lorg/brickred/socialauth/Permission;

    iget-object v1, p0, Lorg/brickred/socialauth/provider/HotmailImpl;->scope:Lorg/brickred/socialauth/Permission;

    invoke-virtual {v0, v1}, Lorg/brickred/socialauth/Permission;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    new-instance v0, Lorg/brickred/socialauth/exception/SocialAuthException;

    .line 207
    const-string v1, "You have not set permission to get contacts"

    .line 206
    invoke-direct {v0, v1}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :cond_0
    iget-object v0, p0, Lorg/brickred/socialauth/provider/HotmailImpl;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "Fetching contacts from https://apis.live.net/v5.0/me/contacts"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 210
    const-string v0, "https://apis.live.net/v5.0/me/contacts"

    invoke-direct {p0, v0}, Lorg/brickred/socialauth/provider/HotmailImpl;->getContacts(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
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
    .line 155
    iget-object v0, p0, Lorg/brickred/socialauth/provider/HotmailImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    invoke-interface {v0, p1}, Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;->getLoginRedirectURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getOauthStrategy()Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;
    .locals 1

    .prologue
    .line 512
    iget-object v0, p0, Lorg/brickred/socialauth/provider/HotmailImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

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
    .line 502
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 503
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lorg/brickred/socialauth/provider/HotmailImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v1}, Lorg/brickred/socialauth/util/OAuthConfig;->getRegisteredPlugins()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 504
    iget-object v1, p0, Lorg/brickred/socialauth/provider/HotmailImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v1}, Lorg/brickred/socialauth/util/OAuthConfig;->getRegisteredPlugins()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_0

    .line 505
    iget-object v1, p0, Lorg/brickred/socialauth/provider/HotmailImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v1}, Lorg/brickred/socialauth/util/OAuthConfig;->getRegisteredPlugins()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 507
    :cond_0
    return-object v0
.end method

.method public getProviderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Lorg/brickred/socialauth/provider/HotmailImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

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
    .line 456
    iget-object v0, p0, Lorg/brickred/socialauth/provider/HotmailImpl;->userProfile:Lorg/brickred/socialauth/Profile;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/brickred/socialauth/provider/HotmailImpl;->accessGrant:Lorg/brickred/socialauth/util/AccessGrant;

    if-eqz v0, :cond_0

    .line 457
    invoke-direct {p0}, Lorg/brickred/socialauth/provider/HotmailImpl;->getProfile()Lorg/brickred/socialauth/Profile;

    .line 459
    :cond_0
    iget-object v0, p0, Lorg/brickred/socialauth/provider/HotmailImpl;->userProfile:Lorg/brickred/socialauth/Profile;

    return-object v0
.end method

.method public logout()V
    .locals 1

    .prologue
    .line 305
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/brickred/socialauth/provider/HotmailImpl;->accessGrant:Lorg/brickred/socialauth/util/AccessGrant;

    .line 306
    iget-object v0, p0, Lorg/brickred/socialauth/provider/HotmailImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    invoke-interface {v0}, Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;->logout()V

    .line 307
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
    .line 140
    iput-object p1, p0, Lorg/brickred/socialauth/provider/HotmailImpl;->accessGrant:Lorg/brickred/socialauth/util/AccessGrant;

    .line 141
    invoke-virtual {p1}, Lorg/brickred/socialauth/util/AccessGrant;->getPermission()Lorg/brickred/socialauth/Permission;

    move-result-object v0

    iput-object v0, p0, Lorg/brickred/socialauth/provider/HotmailImpl;->scope:Lorg/brickred/socialauth/Permission;

    .line 142
    iget-object v0, p0, Lorg/brickred/socialauth/provider/HotmailImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    invoke-interface {v0, p1}, Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;->setAccessGrant(Lorg/brickred/socialauth/util/AccessGrant;)V

    .line 143
    return-void
.end method

.method public setPermission(Lorg/brickred/socialauth/Permission;)V
    .locals 2
    .param p1, "p"    # Lorg/brickred/socialauth/Permission;

    .prologue
    .line 404
    iput-object p1, p0, Lorg/brickred/socialauth/provider/HotmailImpl;->scope:Lorg/brickred/socialauth/Permission;

    .line 405
    iget-object v0, p0, Lorg/brickred/socialauth/provider/HotmailImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    iget-object v1, p0, Lorg/brickred/socialauth/provider/HotmailImpl;->scope:Lorg/brickred/socialauth/Permission;

    invoke-interface {v0, v1}, Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;->setPermission(Lorg/brickred/socialauth/Permission;)V

    .line 406
    iget-object v0, p0, Lorg/brickred/socialauth/provider/HotmailImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    invoke-direct {p0}, Lorg/brickred/socialauth/provider/HotmailImpl;->getScope()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;->setScope(Ljava/lang/String;)V

    .line 407
    return-void
.end method

.method public updateStatus(Ljava/lang/String;)Lorg/brickred/socialauth/util/Response;
    .locals 8
    .param p1, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 277
    iget-object v0, p0, Lorg/brickred/socialauth/provider/HotmailImpl;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Updating status : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 278
    iget-boolean v0, p0, Lorg/brickred/socialauth/provider/HotmailImpl;->isVerify:Z

    if-nez v0, :cond_0

    .line 279
    new-instance v0, Lorg/brickred/socialauth/exception/SocialAuthException;

    .line 280
    const-string v1, "Please call verifyResponse function first to get Access Token"

    .line 279
    invoke-direct {v0, v1}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 282
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 283
    :cond_1
    new-instance v0, Lorg/brickred/socialauth/exception/ServerDataException;

    const-string v1, "Status cannot be blank"

    invoke-direct {v0, v1}, Lorg/brickred/socialauth/exception/ServerDataException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 286
    :cond_2
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 287
    .local v4, "headerParam":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "Authorization"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bearer "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/brickred/socialauth/provider/HotmailImpl;->accessGrant:Lorg/brickred/socialauth/util/AccessGrant;

    invoke-virtual {v2}, Lorg/brickred/socialauth/util/AccessGrant;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    const-string v0, "Content-Type"

    const-string v1, "application/json"

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{message:\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 291
    .local v5, "body":Ljava/lang/String;
    iget-object v0, p0, Lorg/brickred/socialauth/provider/HotmailImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    const-string v1, "https://apis.live.net/v5.0/me/share"

    .line 292
    sget-object v2, Lorg/brickred/socialauth/util/MethodType;->POST:Lorg/brickred/socialauth/util/MethodType;

    invoke-virtual {v2}, Lorg/brickred/socialauth/util/MethodType;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 291
    invoke-interface/range {v0 .. v5}, Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;->executeFeed(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)Lorg/brickred/socialauth/util/Response;

    move-result-object v7

    .line 294
    .local v7, "serviceResponse":Lorg/brickred/socialauth/util/Response;
    invoke-virtual {v7}, Lorg/brickred/socialauth/util/Response;->getStatus()I

    move-result v6

    .line 295
    .local v6, "code":I
    iget-object v0, p0, Lorg/brickred/socialauth/provider/HotmailImpl;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Status updated and return status code is :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 297
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
    .line 475
    iget-object v0, p0, Lorg/brickred/socialauth/provider/HotmailImpl;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "WARNING: Not implemented for Hotmail"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 476
    new-instance v0, Lorg/brickred/socialauth/exception/SocialAuthException;

    .line 477
    const-string v1, "Update Status is not implemented for Hotmail"

    .line 476
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
    .line 171
    .local p1, "requestParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lorg/brickred/socialauth/provider/HotmailImpl;->doVerifyResponse(Ljava/util/Map;)Lorg/brickred/socialauth/Profile;

    move-result-object v0

    return-object v0
.end method
