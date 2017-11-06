.class public Lorg/brickred/socialauth/provider/LinkedInImpl;
.super Lorg/brickred/socialauth/AbstractProvider;
.source "LinkedInImpl.java"


# static fields
.field private static final AllPerms:[Ljava/lang/String;

.field private static final AuthPerms:[Ljava/lang/String;

.field private static final CONNECTION_URL:Ljava/lang/String; = "http://api.linkedin.com/v1/people/~/connections:(id,first-name,last-name,public-profile-url,picture-url)"

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

.field private static final PROFILE_URL:Ljava/lang/String; = "http://api.linkedin.com/v1/people/~:(id,first-name,last-name,languages,date-of-birth,picture-url,email-address,location:(name),phone-numbers,main-address)"

.field private static final STATUS_BODY:Ljava/lang/String; = "<?xml version=\"1.0\" encoding=\"UTF-8\"?><share><comment>%1$s</comment><visibility><code>anyone</code></visibility></share>"

.field private static final UPDATE_STATUS_URL:Ljava/lang/String; = "http://api.linkedin.com/v1/people/~/shares"

.field private static final serialVersionUID:J = -0x553acf12b294349dL


# instance fields
.field private final LOG:Lorg/apache/commons/logging/Log;

.field private accessToken:Lorg/brickred/socialauth/util/AccessGrant;

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

    .line 81
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "r_fullprofile"

    aput-object v1, v0, v3

    .line 82
    const-string v1, "r_emailaddress"

    aput-object v1, v0, v4

    const-string v1, "r_network"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "r_contactinfo"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "rw_nus"

    aput-object v2, v0, v1

    .line 81
    sput-object v0, Lorg/brickred/socialauth/provider/LinkedInImpl;->AllPerms:[Ljava/lang/String;

    .line 83
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "r_fullprofile"

    aput-object v1, v0, v3

    .line 84
    const-string v1, "r_emailaddress"

    aput-object v1, v0, v4

    .line 83
    sput-object v0, Lorg/brickred/socialauth/provider/LinkedInImpl;->AuthPerms:[Ljava/lang/String;

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/brickred/socialauth/provider/LinkedInImpl;->ENDPOINTS:Ljava/util/Map;

    .line 88
    sget-object v0, Lorg/brickred/socialauth/provider/LinkedInImpl;->ENDPOINTS:Ljava/util/Map;

    const-string/jumbo v1, "reqTokenURL"

    .line 89
    const-string v2, "https://api.linkedin.com/uas/oauth/requestToken"

    .line 88
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lorg/brickred/socialauth/provider/LinkedInImpl;->ENDPOINTS:Ljava/util/Map;

    const-string v1, "authorizationURL"

    .line 91
    const-string v2, "https://api.linkedin.com/uas/oauth/authenticate"

    .line 90
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lorg/brickred/socialauth/provider/LinkedInImpl;->ENDPOINTS:Ljava/util/Map;

    const-string v1, "accessTokenURL"

    .line 93
    const-string v2, "https://api.linkedin.com/uas/oauth/accessToken"

    .line 92
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    return-void
.end method

.method public constructor <init>(Lorg/brickred/socialauth/util/OAuthConfig;)V
    .locals 5
    .param p1, "providerConfig"    # Lorg/brickred/socialauth/util/OAuthConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 104
    invoke-direct {p0}, Lorg/brickred/socialauth/AbstractProvider;-><init>()V

    .line 73
    const-class v2, Lorg/brickred/socialauth/provider/LinkedInImpl;

    invoke-static {v2}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v2

    iput-object v2, p0, Lorg/brickred/socialauth/provider/LinkedInImpl;->LOG:Lorg/apache/commons/logging/Log;

    .line 105
    iput-object p1, p0, Lorg/brickred/socialauth/provider/LinkedInImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    .line 108
    iget-object v2, p0, Lorg/brickred/socialauth/provider/LinkedInImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v2}, Lorg/brickred/socialauth/util/OAuthConfig;->getCustomPermissions()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 109
    sget-object v2, Lorg/brickred/socialauth/Permission;->CUSTOM:Lorg/brickred/socialauth/Permission;

    iput-object v2, p0, Lorg/brickred/socialauth/provider/LinkedInImpl;->scope:Lorg/brickred/socialauth/Permission;

    .line 112
    :cond_0
    iget-object v2, p0, Lorg/brickred/socialauth/provider/LinkedInImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v2}, Lorg/brickred/socialauth/util/OAuthConfig;->getRequestTokenUrl()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 113
    sget-object v2, Lorg/brickred/socialauth/provider/LinkedInImpl;->ENDPOINTS:Ljava/util/Map;

    const-string/jumbo v3, "reqTokenURL"

    .line 114
    iget-object v4, p0, Lorg/brickred/socialauth/provider/LinkedInImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v4}, Lorg/brickred/socialauth/util/OAuthConfig;->getRequestTokenUrl()Ljava/lang/String;

    move-result-object v4

    .line 113
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    :goto_0
    iget-object v2, p0, Lorg/brickred/socialauth/provider/LinkedInImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v2}, Lorg/brickred/socialauth/util/OAuthConfig;->getAuthenticationUrl()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 121
    sget-object v2, Lorg/brickred/socialauth/provider/LinkedInImpl;->ENDPOINTS:Ljava/util/Map;

    const-string v3, "authorizationURL"

    .line 122
    iget-object v4, p0, Lorg/brickred/socialauth/provider/LinkedInImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v4}, Lorg/brickred/socialauth/util/OAuthConfig;->getAuthenticationUrl()Ljava/lang/String;

    move-result-object v4

    .line 121
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    :goto_1
    iget-object v2, p0, Lorg/brickred/socialauth/provider/LinkedInImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v2}, Lorg/brickred/socialauth/util/OAuthConfig;->getAccessTokenUrl()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 129
    sget-object v2, Lorg/brickred/socialauth/provider/LinkedInImpl;->ENDPOINTS:Ljava/util/Map;

    const-string v3, "accessTokenURL"

    .line 130
    iget-object v4, p0, Lorg/brickred/socialauth/provider/LinkedInImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v4}, Lorg/brickred/socialauth/util/OAuthConfig;->getAccessTokenUrl()Ljava/lang/String;

    move-result-object v4

    .line 129
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    :goto_2
    invoke-direct {p0}, Lorg/brickred/socialauth/provider/LinkedInImpl;->getScope()Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, "perms":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 138
    sget-object v2, Lorg/brickred/socialauth/provider/LinkedInImpl;->ENDPOINTS:Ljava/util/Map;

    const-string/jumbo v3, "reqTokenURL"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 139
    .local v1, "rURL":Ljava/lang/String;
    const-string/jumbo v2, "scope="

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 140
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "?scope="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 145
    :goto_3
    sget-object v2, Lorg/brickred/socialauth/provider/LinkedInImpl;->ENDPOINTS:Ljava/util/Map;

    const-string/jumbo v3, "reqTokenURL"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    iget-object v2, p0, Lorg/brickred/socialauth/provider/LinkedInImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v2, v1}, Lorg/brickred/socialauth/util/OAuthConfig;->setRequestTokenUrl(Ljava/lang/String;)V

    .line 149
    .end local v1    # "rURL":Ljava/lang/String;
    :cond_1
    new-instance v2, Lorg/brickred/socialauth/oauthstrategy/OAuth1;

    iget-object v3, p0, Lorg/brickred/socialauth/provider/LinkedInImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    sget-object v4, Lorg/brickred/socialauth/provider/LinkedInImpl;->ENDPOINTS:Ljava/util/Map;

    invoke-direct {v2, v3, v4}, Lorg/brickred/socialauth/oauthstrategy/OAuth1;-><init>(Lorg/brickred/socialauth/util/OAuthConfig;Ljava/util/Map;)V

    iput-object v2, p0, Lorg/brickred/socialauth/provider/LinkedInImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    .line 150
    iget-object v3, p0, Lorg/brickred/socialauth/provider/LinkedInImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    sget-object v2, Lorg/brickred/socialauth/provider/LinkedInImpl;->ENDPOINTS:Ljava/util/Map;

    .line 151
    const-string/jumbo v4, "reqTokenURL"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 150
    invoke-virtual {v3, v2}, Lorg/brickred/socialauth/util/OAuthConfig;->setRequestTokenUrl(Ljava/lang/String;)V

    .line 152
    iget-object v3, p0, Lorg/brickred/socialauth/provider/LinkedInImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    sget-object v2, Lorg/brickred/socialauth/provider/LinkedInImpl;->ENDPOINTS:Ljava/util/Map;

    .line 153
    const-string v4, "authorizationURL"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 152
    invoke-virtual {v3, v2}, Lorg/brickred/socialauth/util/OAuthConfig;->setAuthenticationUrl(Ljava/lang/String;)V

    .line 154
    iget-object v3, p0, Lorg/brickred/socialauth/provider/LinkedInImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    sget-object v2, Lorg/brickred/socialauth/provider/LinkedInImpl;->ENDPOINTS:Ljava/util/Map;

    .line 155
    const-string v4, "accessTokenURL"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 154
    invoke-virtual {v3, v2}, Lorg/brickred/socialauth/util/OAuthConfig;->setAccessTokenUrl(Ljava/lang/String;)V

    .line 156
    return-void

    .line 116
    .end local v0    # "perms":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lorg/brickred/socialauth/provider/LinkedInImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    sget-object v2, Lorg/brickred/socialauth/provider/LinkedInImpl;->ENDPOINTS:Ljava/util/Map;

    .line 117
    const-string/jumbo v4, "reqTokenURL"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 116
    invoke-virtual {v3, v2}, Lorg/brickred/socialauth/util/OAuthConfig;->setRequestTokenUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 124
    :cond_3
    iget-object v3, p0, Lorg/brickred/socialauth/provider/LinkedInImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    sget-object v2, Lorg/brickred/socialauth/provider/LinkedInImpl;->ENDPOINTS:Ljava/util/Map;

    .line 125
    const-string v4, "authorizationURL"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 124
    invoke-virtual {v3, v2}, Lorg/brickred/socialauth/util/OAuthConfig;->setAuthenticationUrl(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 132
    :cond_4
    iget-object v3, p0, Lorg/brickred/socialauth/provider/LinkedInImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    sget-object v2, Lorg/brickred/socialauth/provider/LinkedInImpl;->ENDPOINTS:Ljava/util/Map;

    .line 133
    const-string v4, "accessTokenURL"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 132
    invoke-virtual {v3, v2}, Lorg/brickred/socialauth/util/OAuthConfig;->setAccessTokenUrl(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 142
    .restart local v0    # "perms":Ljava/lang/String;
    .restart local v1    # "rURL":Ljava/lang/String;
    :cond_5
    const/4 v2, 0x0

    const/16 v3, 0x3f

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 143
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "?scope="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3
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
    .line 204
    .local p1, "requestParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/brickred/socialauth/provider/LinkedInImpl;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "Verifying the authentication response from provider"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 205
    iget-object v0, p0, Lorg/brickred/socialauth/provider/LinkedInImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    invoke-interface {v0, p1}, Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;->verifyResponse(Ljava/util/Map;)Lorg/brickred/socialauth/util/AccessGrant;

    move-result-object v0

    iput-object v0, p0, Lorg/brickred/socialauth/provider/LinkedInImpl;->accessToken:Lorg/brickred/socialauth/util/AccessGrant;

    .line 206
    invoke-direct {p0}, Lorg/brickred/socialauth/provider/LinkedInImpl;->getProfile()Lorg/brickred/socialauth/Profile;

    move-result-object v0

    return-object v0
.end method

.method private getProfile()Lorg/brickred/socialauth/Profile;
    .locals 30
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 318
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/brickred/socialauth/provider/LinkedInImpl;->LOG:Lorg/apache/commons/logging/Log;

    move-object/from16 v27, v0

    const-string v28, "Obtaining user profile"

    invoke-interface/range {v27 .. v28}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 319
    new-instance v22, Lorg/brickred/socialauth/Profile;

    invoke-direct/range {v22 .. v22}, Lorg/brickred/socialauth/Profile;-><init>()V

    .line 320
    .local v22, "profile":Lorg/brickred/socialauth/Profile;
    const/16 v24, 0x0

    .line 322
    .local v24, "serviceResponse":Lorg/brickred/socialauth/util/Response;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/brickred/socialauth/provider/LinkedInImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    move-object/from16 v27, v0

    const-string v28, "http://api.linkedin.com/v1/people/~:(id,first-name,last-name,languages,date-of-birth,picture-url,email-address,location:(name),phone-numbers,main-address)"

    invoke-interface/range {v27 .. v28}, Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;->executeFeed(Ljava/lang/String;)Lorg/brickred/socialauth/util/Response;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v24

    .line 328
    invoke-virtual/range {v24 .. v24}, Lorg/brickred/socialauth/util/Response;->getStatus()I

    move-result v27

    const/16 v28, 0xc8

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_0

    .line 329
    new-instance v27, Lorg/brickred/socialauth/exception/SocialAuthException;

    .line 330
    new-instance v28, Ljava/lang/StringBuilder;

    const-string v29, "Failed to retrieve the user profile from  http://api.linkedin.com/v1/people/~:(id,first-name,last-name,languages,date-of-birth,picture-url,email-address,location:(name),phone-numbers,main-address). Staus :"

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 331
    invoke-virtual/range {v24 .. v24}, Lorg/brickred/socialauth/util/Response;->getStatus()I

    move-result v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    .line 330
    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    .line 329
    invoke-direct/range {v27 .. v28}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;)V

    throw v27

    .line 323
    :catch_0
    move-exception v7

    .line 324
    .local v7, "e":Ljava/lang/Exception;
    new-instance v27, Lorg/brickred/socialauth/exception/SocialAuthException;

    .line 325
    const-string v28, "Failed to retrieve the user profile from  http://api.linkedin.com/v1/people/~:(id,first-name,last-name,languages,date-of-birth,picture-url,email-address,location:(name),phone-numbers,main-address)"

    .line 324
    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v7}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v27

    .line 337
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_0
    :try_start_1
    invoke-virtual/range {v24 .. v24}, Lorg/brickred/socialauth/util/Response;->getInputStream()Ljava/io/InputStream;

    move-result-object v27

    .line 336
    invoke-static/range {v27 .. v27}, Lorg/brickred/socialauth/util/XMLParseUtil;->loadXmlResource(Ljava/io/InputStream;)Lorg/w3c/dom/Element;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v23

    .line 344
    .local v23, "root":Lorg/w3c/dom/Element;
    if-eqz v23, :cond_b

    .line 345
    const-string v27, "first-name"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lorg/brickred/socialauth/util/XMLParseUtil;->getElementData(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 346
    .local v9, "fname":Ljava/lang/String;
    const-string v27, "last-name"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lorg/brickred/socialauth/util/XMLParseUtil;->getElementData(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 347
    .local v11, "lname":Ljava/lang/String;
    const-string v27, "date-of-birth"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v5

    .line 348
    .local v5, "dob":Lorg/w3c/dom/NodeList;
    if-eqz v5, :cond_4

    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v27

    if-lez v27, :cond_4

    .line 349
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-interface {v5, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/Element;

    .line 350
    .local v6, "dobel":Lorg/w3c/dom/Element;
    if-eqz v6, :cond_4

    .line 351
    const-string/jumbo v27, "year"

    move-object/from16 v0, v27

    invoke-static {v6, v0}, Lorg/brickred/socialauth/util/XMLParseUtil;->getElementData(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 352
    .local v26, "y":Ljava/lang/String;
    const-string v27, "month"

    move-object/from16 v0, v27

    invoke-static {v6, v0}, Lorg/brickred/socialauth/util/XMLParseUtil;->getElementData(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 353
    .local v15, "m":Ljava/lang/String;
    const-string v27, "day"

    move-object/from16 v0, v27

    invoke-static {v6, v0}, Lorg/brickred/socialauth/util/XMLParseUtil;->getElementData(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 354
    .local v4, "d":Ljava/lang/String;
    new-instance v3, Lorg/brickred/socialauth/util/BirthDate;

    invoke-direct {v3}, Lorg/brickred/socialauth/util/BirthDate;-><init>()V

    .line 355
    .local v3, "bd":Lorg/brickred/socialauth/util/BirthDate;
    if-eqz v15, :cond_1

    .line 356
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    move/from16 v0, v27

    invoke-virtual {v3, v0}, Lorg/brickred/socialauth/util/BirthDate;->setMonth(I)V

    .line 358
    :cond_1
    if-eqz v4, :cond_2

    .line 359
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    move/from16 v0, v27

    invoke-virtual {v3, v0}, Lorg/brickred/socialauth/util/BirthDate;->setDay(I)V

    .line 361
    :cond_2
    if-eqz v26, :cond_3

    .line 362
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    move/from16 v0, v27

    invoke-virtual {v3, v0}, Lorg/brickred/socialauth/util/BirthDate;->setYear(I)V

    .line 364
    :cond_3
    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Lorg/brickred/socialauth/Profile;->setDob(Lorg/brickred/socialauth/util/BirthDate;)V

    .line 367
    .end local v3    # "bd":Lorg/brickred/socialauth/util/BirthDate;
    .end local v4    # "d":Ljava/lang/String;
    .end local v6    # "dobel":Lorg/w3c/dom/Element;
    .end local v15    # "m":Ljava/lang/String;
    .end local v26    # "y":Ljava/lang/String;
    :cond_4
    const-string v27, "picture-url"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lorg/brickred/socialauth/util/XMLParseUtil;->getElementData(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 368
    .local v21, "picUrl":Ljava/lang/String;
    const-string v27, "id"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lorg/brickred/socialauth/util/XMLParseUtil;->getElementData(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 369
    .local v10, "id":Ljava/lang/String;
    if-eqz v21, :cond_5

    .line 370
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/brickred/socialauth/Profile;->setProfileImageURL(Ljava/lang/String;)V

    .line 372
    :cond_5
    const-string v27, "email-address"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lorg/brickred/socialauth/util/XMLParseUtil;->getElementData(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 373
    .local v8, "email":Ljava/lang/String;
    if-eqz v8, :cond_6

    .line 374
    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Lorg/brickred/socialauth/Profile;->setEmail(Ljava/lang/String;)V

    .line 376
    :cond_6
    const-string v27, "location"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v13

    .line 377
    .local v13, "location":Lorg/w3c/dom/NodeList;
    if-eqz v13, :cond_7

    invoke-interface {v13}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v27

    if-lez v27, :cond_7

    .line 378
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-interface {v13, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v14

    check-cast v14, Lorg/w3c/dom/Element;

    .line 379
    .local v14, "locationEl":Lorg/w3c/dom/Element;
    const-string v27, "name"

    move-object/from16 v0, v27

    invoke-static {v14, v0}, Lorg/brickred/socialauth/util/XMLParseUtil;->getElementData(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 380
    .local v12, "loc":Ljava/lang/String;
    if-eqz v12, :cond_7

    .line 381
    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Lorg/brickred/socialauth/Profile;->setLocation(Ljava/lang/String;)V

    .line 384
    .end local v12    # "loc":Ljava/lang/String;
    .end local v14    # "locationEl":Lorg/w3c/dom/Element;
    :cond_7
    new-instance v17, Ljava/util/HashMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    .line 385
    .local v17, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v27, "phone-number"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v20

    .line 386
    .local v20, "phoneNodes":Lorg/w3c/dom/NodeList;
    if-eqz v20, :cond_8

    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v27

    if-lez v27, :cond_8

    .line 387
    const/16 v27, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v19

    check-cast v19, Lorg/w3c/dom/Element;

    .line 389
    .local v19, "phoneEl":Lorg/w3c/dom/Element;
    const-string v27, "phone-type"

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lorg/brickred/socialauth/util/XMLParseUtil;->getElementData(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 391
    .local v25, "type":Ljava/lang/String;
    const-string v27, "phone-number"

    .line 390
    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lorg/brickred/socialauth/util/XMLParseUtil;->getElementData(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 392
    .local v18, "phone":Ljava/lang/String;
    if-eqz v25, :cond_8

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v27

    if-lez v27, :cond_8

    if-eqz v18, :cond_8

    .line 393
    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    .end local v18    # "phone":Ljava/lang/String;
    .end local v19    # "phoneEl":Lorg/w3c/dom/Element;
    .end local v25    # "type":Ljava/lang/String;
    :cond_8
    const-string v27, "main-address"

    .line 396
    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lorg/brickred/socialauth/util/XMLParseUtil;->getElementData(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 398
    .local v16, "mainAddress":Ljava/lang/String;
    if-eqz v16, :cond_9

    .line 399
    const-string v27, "mainAddress"

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    :cond_9
    if-eqz v17, :cond_a

    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->isEmpty()Z

    move-result v27

    if-nez v27, :cond_a

    .line 402
    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/brickred/socialauth/Profile;->setContactInfo(Ljava/util/Map;)V

    .line 404
    :cond_a
    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Lorg/brickred/socialauth/Profile;->setFirstName(Ljava/lang/String;)V

    .line 405
    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Lorg/brickred/socialauth/Profile;->setLastName(Ljava/lang/String;)V

    .line 406
    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Lorg/brickred/socialauth/Profile;->setValidatedId(Ljava/lang/String;)V

    .line 407
    invoke-virtual/range {p0 .. p0}, Lorg/brickred/socialauth/provider/LinkedInImpl;->getProviderId()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/brickred/socialauth/Profile;->setProviderId(Ljava/lang/String;)V

    .line 408
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/brickred/socialauth/provider/LinkedInImpl;->LOG:Lorg/apache/commons/logging/Log;

    move-object/from16 v27, v0

    new-instance v28, Ljava/lang/StringBuilder;

    const-string v29, "User Profile :"

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v22 .. v22}, Lorg/brickred/socialauth/Profile;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-interface/range {v27 .. v28}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 409
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/brickred/socialauth/provider/LinkedInImpl;->userProfile:Lorg/brickred/socialauth/Profile;

    .line 411
    .end local v5    # "dob":Lorg/w3c/dom/NodeList;
    .end local v8    # "email":Ljava/lang/String;
    .end local v9    # "fname":Ljava/lang/String;
    .end local v10    # "id":Ljava/lang/String;
    .end local v11    # "lname":Ljava/lang/String;
    .end local v13    # "location":Lorg/w3c/dom/NodeList;
    .end local v16    # "mainAddress":Ljava/lang/String;
    .end local v17    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v20    # "phoneNodes":Lorg/w3c/dom/NodeList;
    .end local v21    # "picUrl":Ljava/lang/String;
    :cond_b
    return-object v22

    .line 338
    .end local v23    # "root":Lorg/w3c/dom/Element;
    :catch_1
    move-exception v7

    .line 339
    .restart local v7    # "e":Ljava/lang/Exception;
    new-instance v27, Lorg/brickred/socialauth/exception/ServerDataException;

    .line 340
    const-string v28, "Failed to parse the profile from response.http://api.linkedin.com/v1/people/~:(id,first-name,last-name,languages,date-of-birth,picture-url,email-address,location:(name),phone-numbers,main-address)"

    .line 339
    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v7}, Lorg/brickred/socialauth/exception/ServerDataException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v27
.end method

.method private getScope()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 504
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 505
    .local v2, "result":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .line 506
    .local v0, "arr":[Ljava/lang/String;
    sget-object v5, Lorg/brickred/socialauth/Permission;->AUTHENTICATE_ONLY:Lorg/brickred/socialauth/Permission;

    iget-object v6, p0, Lorg/brickred/socialauth/provider/LinkedInImpl;->scope:Lorg/brickred/socialauth/Permission;

    invoke-virtual {v5, v6}, Lorg/brickred/socialauth/Permission;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 507
    sget-object v0, Lorg/brickred/socialauth/provider/LinkedInImpl;->AuthPerms:[Ljava/lang/String;

    .line 514
    :goto_0
    aget-object v5, v0, v7

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 515
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    array-length v5, v0

    if-lt v1, v5, :cond_3

    .line 518
    iget-object v5, p0, Lorg/brickred/socialauth/provider/LinkedInImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v5}, Lorg/brickred/socialauth/util/OAuthConfig;->getPluginsScopes()Ljava/util/List;

    move-result-object v3

    .line 519
    .local v3, "scopes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 520
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 521
    .local v4, "scopesStr":Ljava/lang/String;
    const/4 v1, 0x1

    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lt v1, v5, :cond_4

    .line 524
    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 526
    .end local v4    # "scopesStr":Ljava/lang/String;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 508
    .end local v1    # "i":I
    .end local v3    # "scopes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    sget-object v5, Lorg/brickred/socialauth/Permission;->CUSTOM:Lorg/brickred/socialauth/Permission;

    iget-object v6, p0, Lorg/brickred/socialauth/provider/LinkedInImpl;->scope:Lorg/brickred/socialauth/Permission;

    invoke-virtual {v5, v6}, Lorg/brickred/socialauth/Permission;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 509
    iget-object v5, p0, Lorg/brickred/socialauth/provider/LinkedInImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v5}, Lorg/brickred/socialauth/util/OAuthConfig;->getCustomPermissions()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 510
    iget-object v5, p0, Lorg/brickred/socialauth/provider/LinkedInImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v5}, Lorg/brickred/socialauth/util/OAuthConfig;->getCustomPermissions()Ljava/lang/String;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 511
    goto :goto_0

    .line 512
    :cond_2
    sget-object v0, Lorg/brickred/socialauth/provider/LinkedInImpl;->AllPerms:[Ljava/lang/String;

    goto :goto_0

    .line 516
    .restart local v1    # "i":I
    :cond_3
    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    aget-object v6, v0, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 515
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 522
    .restart local v3    # "scopes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4    # "scopesStr":Ljava/lang/String;
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 521
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
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
    .line 450
    .local p3, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, "headerParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/brickred/socialauth/provider/LinkedInImpl;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Calling URL : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 451
    iget-object v0, p0, Lorg/brickred/socialauth/provider/LinkedInImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    move-object v1, p1

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
    .line 470
    iget-object v0, p0, Lorg/brickred/socialauth/provider/LinkedInImpl;->accessToken:Lorg/brickred/socialauth/util/AccessGrant;

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
    .line 218
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/brickred/socialauth/provider/LinkedInImpl;->LOG:Lorg/apache/commons/logging/Log;

    const-string v16, "Fetching contacts from http://api.linkedin.com/v1/people/~/connections:(id,first-name,last-name,public-profile-url,picture-url)"

    invoke-interface/range {v15 .. v16}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 219
    const/4 v14, 0x0

    .line 221
    .local v14, "serviceResponse":Lorg/brickred/socialauth/util/Response;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/brickred/socialauth/provider/LinkedInImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    .line 222
    const-string v16, "http://api.linkedin.com/v1/people/~/connections:(id,first-name,last-name,public-profile-url,picture-url)"

    invoke-interface/range {v15 .. v16}, Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;->executeFeed(Ljava/lang/String;)Lorg/brickred/socialauth/util/Response;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    .line 231
    :try_start_1
    invoke-virtual {v14}, Lorg/brickred/socialauth/util/Response;->getInputStream()Ljava/io/InputStream;

    move-result-object v15

    .line 230
    invoke-static {v15}, Lorg/brickred/socialauth/util/XMLParseUtil;->loadXmlResource(Ljava/io/InputStream;)Lorg/w3c/dom/Element;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v13

    .line 237
    .local v13, "root":Lorg/w3c/dom/Element;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 238
    .local v2, "contactList":Ljava/util/List;, "Ljava/util/List<Lorg/brickred/socialauth/Contact;>;"
    if-eqz v13, :cond_0

    .line 239
    const-string v15, "person"

    invoke-interface {v13, v15}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v10

    .line 240
    .local v10, "pList":Lorg/w3c/dom/NodeList;
    if-eqz v10, :cond_7

    invoke-interface {v10}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v15

    if-lez v15, :cond_7

    .line 241
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/brickred/socialauth/provider/LinkedInImpl;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "Found contacts : "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v10}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 242
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-interface {v10}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v15

    if-lt v5, v15, :cond_1

    .line 274
    .end local v5    # "i":I
    .end local v10    # "pList":Lorg/w3c/dom/NodeList;
    :cond_0
    :goto_1
    return-object v2

    .line 223
    .end local v2    # "contactList":Ljava/util/List;, "Ljava/util/List<Lorg/brickred/socialauth/Contact;>;"
    .end local v13    # "root":Lorg/w3c/dom/Element;
    :catch_0
    move-exception v7

    .line 224
    .local v7, "ie":Ljava/lang/Exception;
    new-instance v15, Lorg/brickred/socialauth/exception/SocialAuthException;

    .line 225
    const-string v16, "Failed to retrieve the contacts from http://api.linkedin.com/v1/people/~/connections:(id,first-name,last-name,public-profile-url,picture-url)"

    .line 224
    move-object/from16 v0, v16

    invoke-direct {v15, v0, v7}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v15

    .line 232
    .end local v7    # "ie":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 233
    .local v3, "e":Ljava/lang/Exception;
    new-instance v15, Lorg/brickred/socialauth/exception/ServerDataException;

    .line 234
    const-string v16, "Failed to parse the contacts from response.http://api.linkedin.com/v1/people/~/connections:(id,first-name,last-name,public-profile-url,picture-url)"

    .line 233
    move-object/from16 v0, v16

    invoke-direct {v15, v0, v3}, Lorg/brickred/socialauth/exception/ServerDataException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v15

    .line 243
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v2    # "contactList":Ljava/util/List;, "Ljava/util/List<Lorg/brickred/socialauth/Contact;>;"
    .restart local v5    # "i":I
    .restart local v10    # "pList":Lorg/w3c/dom/NodeList;
    .restart local v13    # "root":Lorg/w3c/dom/Element;
    :cond_1
    invoke-interface {v10, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    check-cast v9, Lorg/w3c/dom/Element;

    .line 244
    .local v9, "p":Lorg/w3c/dom/Element;
    const-string v15, "first-name"

    invoke-static {v9, v15}, Lorg/brickred/socialauth/util/XMLParseUtil;->getElementData(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 245
    .local v4, "fname":Ljava/lang/String;
    const-string v15, "last-name"

    invoke-static {v9, v15}, Lorg/brickred/socialauth/util/XMLParseUtil;->getElementData(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 246
    .local v8, "lname":Ljava/lang/String;
    const-string v15, "id"

    invoke-static {v9, v15}, Lorg/brickred/socialauth/util/XMLParseUtil;->getElementData(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 248
    .local v6, "id":Ljava/lang/String;
    const-string v15, "public-profile-url"

    .line 247
    invoke-static {v9, v15}, Lorg/brickred/socialauth/util/XMLParseUtil;->getElementData(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 250
    .local v12, "profileUrl":Ljava/lang/String;
    const-string v15, "picture-url"

    .line 249
    invoke-static {v9, v15}, Lorg/brickred/socialauth/util/XMLParseUtil;->getElementData(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 251
    .local v11, "pictureUrl":Ljava/lang/String;
    if-eqz v6, :cond_6

    .line 252
    new-instance v1, Lorg/brickred/socialauth/Contact;

    invoke-direct {v1}, Lorg/brickred/socialauth/Contact;-><init>()V

    .line 253
    .local v1, "cont":Lorg/brickred/socialauth/Contact;
    if-eqz v4, :cond_2

    .line 254
    invoke-virtual {v1, v4}, Lorg/brickred/socialauth/Contact;->setFirstName(Ljava/lang/String;)V

    .line 256
    :cond_2
    if-eqz v8, :cond_3

    .line 257
    invoke-virtual {v1, v8}, Lorg/brickred/socialauth/Contact;->setLastName(Ljava/lang/String;)V

    .line 259
    :cond_3
    if-eqz v12, :cond_4

    .line 260
    invoke-virtual {v1, v12}, Lorg/brickred/socialauth/Contact;->setProfileUrl(Ljava/lang/String;)V

    .line 262
    :cond_4
    if-eqz v11, :cond_5

    .line 263
    invoke-virtual {v1, v11}, Lorg/brickred/socialauth/Contact;->setProfileImageURL(Ljava/lang/String;)V

    .line 265
    :cond_5
    invoke-virtual {v1, v6}, Lorg/brickred/socialauth/Contact;->setId(Ljava/lang/String;)V

    .line 266
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    .end local v1    # "cont":Lorg/brickred/socialauth/Contact;
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 270
    .end local v4    # "fname":Ljava/lang/String;
    .end local v5    # "i":I
    .end local v6    # "id":Ljava/lang/String;
    .end local v8    # "lname":Ljava/lang/String;
    .end local v9    # "p":Lorg/w3c/dom/Element;
    .end local v11    # "pictureUrl":Ljava/lang/String;
    .end local v12    # "profileUrl":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/brickred/socialauth/provider/LinkedInImpl;->LOG:Lorg/apache/commons/logging/Log;

    const-string v16, "No connections were obtained from : http://api.linkedin.com/v1/people/~/connections:(id,first-name,last-name,public-profile-url,picture-url)"

    invoke-interface/range {v15 .. v16}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

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
    .line 182
    iget-object v0, p0, Lorg/brickred/socialauth/provider/LinkedInImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    invoke-interface {v0, p1}, Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;->getLoginRedirectURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getOauthStrategy()Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Lorg/brickred/socialauth/provider/LinkedInImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

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
    .line 488
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 489
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "org.brickred.socialauth.plugin.linkedin.FeedPluginImpl"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 490
    const-string v1, "org.brickred.socialauth.plugin.linkedin.CareerPluginImpl"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 491
    iget-object v1, p0, Lorg/brickred/socialauth/provider/LinkedInImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v1}, Lorg/brickred/socialauth/util/OAuthConfig;->getRegisteredPlugins()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 492
    iget-object v1, p0, Lorg/brickred/socialauth/provider/LinkedInImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v1}, Lorg/brickred/socialauth/util/OAuthConfig;->getRegisteredPlugins()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_0

    .line 493
    iget-object v1, p0, Lorg/brickred/socialauth/provider/LinkedInImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-virtual {v1}, Lorg/brickred/socialauth/util/OAuthConfig;->getRegisteredPlugins()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 495
    :cond_0
    return-object v0
.end method

.method public getProviderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Lorg/brickred/socialauth/provider/LinkedInImpl;->config:Lorg/brickred/socialauth/util/OAuthConfig;

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
    .line 462
    iget-object v0, p0, Lorg/brickred/socialauth/provider/LinkedInImpl;->userProfile:Lorg/brickred/socialauth/Profile;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/brickred/socialauth/provider/LinkedInImpl;->accessToken:Lorg/brickred/socialauth/util/AccessGrant;

    if-eqz v0, :cond_0

    .line 463
    invoke-direct {p0}, Lorg/brickred/socialauth/provider/LinkedInImpl;->getProfile()Lorg/brickred/socialauth/Profile;

    .line 465
    :cond_0
    iget-object v0, p0, Lorg/brickred/socialauth/provider/LinkedInImpl;->userProfile:Lorg/brickred/socialauth/Profile;

    return-object v0
.end method

.method public logout()V
    .locals 1

    .prologue
    .line 313
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/brickred/socialauth/provider/LinkedInImpl;->accessToken:Lorg/brickred/socialauth/util/AccessGrant;

    .line 314
    iget-object v0, p0, Lorg/brickred/socialauth/provider/LinkedInImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    invoke-interface {v0}, Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;->logout()V

    .line 315
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
    .line 168
    iput-object p1, p0, Lorg/brickred/socialauth/provider/LinkedInImpl;->accessToken:Lorg/brickred/socialauth/util/AccessGrant;

    .line 169
    iget-object v0, p0, Lorg/brickred/socialauth/provider/LinkedInImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    invoke-interface {v0, p1}, Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;->setAccessGrant(Lorg/brickred/socialauth/util/AccessGrant;)V

    .line 170
    return-void
.end method

.method public setPermission(Lorg/brickred/socialauth/Permission;)V
    .locals 3
    .param p1, "p"    # Lorg/brickred/socialauth/Permission;

    .prologue
    .line 422
    iget-object v0, p0, Lorg/brickred/socialauth/provider/LinkedInImpl;->LOG:Lorg/apache/commons/logging/Log;

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

    .line 423
    iput-object p1, p0, Lorg/brickred/socialauth/provider/LinkedInImpl;->scope:Lorg/brickred/socialauth/Permission;

    .line 424
    iget-object v0, p0, Lorg/brickred/socialauth/provider/LinkedInImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    iget-object v1, p0, Lorg/brickred/socialauth/provider/LinkedInImpl;->scope:Lorg/brickred/socialauth/Permission;

    invoke-interface {v0, v1}, Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;->setPermission(Lorg/brickred/socialauth/Permission;)V

    .line 425
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
    const/16 v2, 0x2bc

    const/4 v3, 0x0

    .line 279
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 280
    :cond_0
    new-instance v0, Lorg/brickred/socialauth/exception/ServerDataException;

    const-string v1, "Status cannot be blank"

    invoke-direct {v0, v1}, Lorg/brickred/socialauth/exception/ServerDataException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 282
    :cond_1
    move-object v7, p1

    .line 283
    .local v7, "message":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_2

    .line 284
    iget-object v0, p0, Lorg/brickred/socialauth/provider/LinkedInImpl;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "Message length can not be greater than 700 characters. So truncating it to 700 chars"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 285
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 288
    :cond_2
    const-string v0, "&"

    const-string v1, "&amp;"

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 289
    iget-object v0, p0, Lorg/brickred/socialauth/provider/LinkedInImpl;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Updating status "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "http://api.linkedin.com/v1/people/~/shares"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 290
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 291
    .local v4, "headerParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "Content-Type"

    const-string/jumbo v1, "text/xml;charset=UTF-8"

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    const-string v0, "<?xml version=\"1.0\" encoding=\"UTF-8\"?><share><comment>%1$s</comment><visibility><code>anyone</code></visibility></share>"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v7, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 293
    .local v5, "msgBody":Ljava/lang/String;
    const/4 v8, 0x0

    .line 295
    .local v8, "serviceResponse":Lorg/brickred/socialauth/util/Response;
    :try_start_0
    iget-object v0, p0, Lorg/brickred/socialauth/provider/LinkedInImpl;->authenticationStrategy:Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    .line 296
    const-string v1, "http://api.linkedin.com/v1/people/~/shares"

    sget-object v2, Lorg/brickred/socialauth/util/MethodType;->POST:Lorg/brickred/socialauth/util/MethodType;

    invoke-virtual {v2}, Lorg/brickred/socialauth/util/MethodType;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 295
    invoke-interface/range {v0 .. v5}, Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;->executeFeed(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)Lorg/brickred/socialauth/util/Response;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 302
    iget-object v0, p0, Lorg/brickred/socialauth/provider/LinkedInImpl;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Status Updated and return status code is : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 303
    invoke-virtual {v8}, Lorg/brickred/socialauth/util/Response;->getStatus()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 302
    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 305
    return-object v8

    .line 298
    :catch_0
    move-exception v6

    .line 299
    .local v6, "ie":Ljava/lang/Exception;
    new-instance v0, Lorg/brickred/socialauth/exception/SocialAuthException;

    const-string v1, "Failed to update status on http://api.linkedin.com/v1/people/~/shares"

    invoke-direct {v0, v1, v6}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

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
    .line 481
    iget-object v0, p0, Lorg/brickred/socialauth/provider/LinkedInImpl;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "WARNING: Not implemented for LinkedIn"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 482
    new-instance v0, Lorg/brickred/socialauth/exception/SocialAuthException;

    .line 483
    const-string v1, "Update Image is not implemented for LinkedIn"

    .line 482
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
    .line 199
    .local p1, "requestParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lorg/brickred/socialauth/provider/LinkedInImpl;->doVerifyResponse(Ljava/util/Map;)Lorg/brickred/socialauth/Profile;

    move-result-object v0

    return-object v0
.end method
