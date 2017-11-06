.class public Lorg/brickred/socialauth/provider/OpenIdImpl;
.super Lorg/brickred/socialauth/AbstractProvider;
.source "OpenIdImpl.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/brickred/socialauth/AuthProvider;


# static fields
.field private static final serialVersionUID:J = 0x6ac7428a1a7ce5e4L


# instance fields
.field private final LOG:Lorg/apache/commons/logging/Log;

.field private accessGrant:Lorg/brickred/socialauth/util/AccessGrant;

.field private discovered:Lorg/openid4java/discovery/DiscoveryInformation;

.field private id:Ljava/lang/String;

.field private manager:Lorg/openid4java/consumer/ConsumerManager;

.field private providerState:Z

.field private successUrl:Ljava/lang/String;

.field private userProfile:Lorg/brickred/socialauth/Profile;


# direct methods
.method public constructor <init>(Ljava/util/Properties;)V
    .locals 1
    .param p1, "props"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/openid4java/consumer/ConsumerException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 81
    invoke-direct {p0}, Lorg/brickred/socialauth/AbstractProvider;-><init>()V

    .line 71
    const-class v0, Lorg/brickred/socialauth/provider/OpenIdImpl;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/brickred/socialauth/provider/OpenIdImpl;->LOG:Lorg/apache/commons/logging/Log;

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/brickred/socialauth/provider/OpenIdImpl;->providerState:Z

    .line 83
    new-instance v0, Lorg/openid4java/consumer/ConsumerManager;

    invoke-direct {v0}, Lorg/openid4java/consumer/ConsumerManager;-><init>()V

    iput-object v0, p0, Lorg/brickred/socialauth/provider/OpenIdImpl;->manager:Lorg/openid4java/consumer/ConsumerManager;

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/brickred/socialauth/provider/OpenIdImpl;->discovered:Lorg/openid4java/discovery/DiscoveryInformation;

    .line 85
    const-string v0, "id"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/brickred/socialauth/provider/OpenIdImpl;->id:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public constructor <init>(Lorg/brickred/socialauth/util/OAuthConfig;)V
    .locals 1
    .param p1, "config"    # Lorg/brickred/socialauth/util/OAuthConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/openid4java/consumer/ConsumerException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 88
    invoke-direct {p0}, Lorg/brickred/socialauth/AbstractProvider;-><init>()V

    .line 71
    const-class v0, Lorg/brickred/socialauth/provider/OpenIdImpl;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/brickred/socialauth/provider/OpenIdImpl;->LOG:Lorg/apache/commons/logging/Log;

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/brickred/socialauth/provider/OpenIdImpl;->providerState:Z

    .line 90
    new-instance v0, Lorg/openid4java/consumer/ConsumerManager;

    invoke-direct {v0}, Lorg/openid4java/consumer/ConsumerManager;-><init>()V

    iput-object v0, p0, Lorg/brickred/socialauth/provider/OpenIdImpl;->manager:Lorg/openid4java/consumer/ConsumerManager;

    .line 91
    invoke-virtual {p1}, Lorg/brickred/socialauth/util/OAuthConfig;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/brickred/socialauth/provider/OpenIdImpl;->id:Ljava/lang/String;

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/brickred/socialauth/provider/OpenIdImpl;->discovered:Lorg/openid4java/discovery/DiscoveryInformation;

    .line 93
    return-void
.end method

.method private authRequest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "userSuppliedString"    # Ljava/lang/String;
    .param p2, "returnToUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 128
    :try_start_0
    iget-object v4, p0, Lorg/brickred/socialauth/provider/OpenIdImpl;->manager:Lorg/openid4java/consumer/ConsumerManager;

    invoke-virtual {v4, p1}, Lorg/openid4java/consumer/ConsumerManager;->discover(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 132
    .local v1, "discoveries":Ljava/util/List;
    iget-object v4, p0, Lorg/brickred/socialauth/provider/OpenIdImpl;->manager:Lorg/openid4java/consumer/ConsumerManager;

    invoke-virtual {v4, v1}, Lorg/openid4java/consumer/ConsumerManager;->associate(Ljava/util/List;)Lorg/openid4java/discovery/DiscoveryInformation;

    move-result-object v4

    iput-object v4, p0, Lorg/brickred/socialauth/provider/OpenIdImpl;->discovered:Lorg/openid4java/discovery/DiscoveryInformation;

    .line 138
    iget-object v4, p0, Lorg/brickred/socialauth/provider/OpenIdImpl;->manager:Lorg/openid4java/consumer/ConsumerManager;

    iget-object v5, p0, Lorg/brickred/socialauth/provider/OpenIdImpl;->discovered:Lorg/openid4java/discovery/DiscoveryInformation;

    invoke-virtual {v4, v5, p2}, Lorg/openid4java/consumer/ConsumerManager;->authenticate(Lorg/openid4java/discovery/DiscoveryInformation;Ljava/lang/String;)Lorg/openid4java/message/AuthRequest;

    move-result-object v0

    .line 141
    .local v0, "authReq":Lorg/openid4java/message/AuthRequest;
    invoke-static {}, Lorg/openid4java/message/ax/FetchRequest;->createFetchRequest()Lorg/openid4java/message/ax/FetchRequest;

    move-result-object v3

    .line 144
    .local v3, "fetch":Lorg/openid4java/message/ax/FetchRequest;
    const-string v4, "emailax"

    const-string v5, "http://axschema.org/contact/email"

    .line 145
    const/4 v6, 0x1

    .line 144
    invoke-virtual {v3, v4, v5, v6}, Lorg/openid4java/message/ax/FetchRequest;->addAttribute(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 147
    const-string v4, "firstnameax"

    .line 148
    const-string v5, "http://axschema.org/namePerson/first"

    const/4 v6, 0x1

    .line 147
    invoke-virtual {v3, v4, v5, v6}, Lorg/openid4java/message/ax/FetchRequest;->addAttribute(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 150
    const-string v4, "lastnameax"

    .line 151
    const-string v5, "http://axschema.org/namePerson/last"

    const/4 v6, 0x1

    .line 150
    invoke-virtual {v3, v4, v5, v6}, Lorg/openid4java/message/ax/FetchRequest;->addAttribute(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 153
    const-string v4, "fullnameax"

    const-string v5, "http://axschema.org/namePerson"

    .line 154
    const/4 v6, 0x1

    .line 153
    invoke-virtual {v3, v4, v5, v6}, Lorg/openid4java/message/ax/FetchRequest;->addAttribute(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 156
    const-string v4, "email"

    .line 157
    const-string v5, "http://schema.openid.net/contact/email"

    const/4 v6, 0x1

    .line 156
    invoke-virtual {v3, v4, v5, v6}, Lorg/openid4java/message/ax/FetchRequest;->addAttribute(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 160
    const-string v4, "firstname"

    .line 161
    const-string v5, "http://schema.openid.net/namePerson/first"

    const/4 v6, 0x1

    .line 160
    invoke-virtual {v3, v4, v5, v6}, Lorg/openid4java/message/ax/FetchRequest;->addAttribute(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 163
    const-string v4, "lastname"

    .line 164
    const-string v5, "http://schema.openid.net/namePerson/last"

    const/4 v6, 0x1

    .line 163
    invoke-virtual {v3, v4, v5, v6}, Lorg/openid4java/message/ax/FetchRequest;->addAttribute(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 166
    const-string v4, "fullname"

    .line 167
    const-string v5, "http://schema.openid.net/namePerson"

    const/4 v6, 0x1

    .line 166
    invoke-virtual {v3, v4, v5, v6}, Lorg/openid4java/message/ax/FetchRequest;->addAttribute(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 170
    invoke-virtual {v0, v3}, Lorg/openid4java/message/AuthRequest;->addExtension(Lorg/openid4java/message/MessageExtension;)V

    .line 172
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lorg/openid4java/message/AuthRequest;->getDestinationUrl(Z)Ljava/lang/String;
    :try_end_0
    .catch Lorg/openid4java/OpenIDException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 177
    .end local v0    # "authReq":Lorg/openid4java/message/AuthRequest;
    .end local v1    # "discoveries":Ljava/util/List;
    .end local v3    # "fetch":Lorg/openid4java/message/ax/FetchRequest;
    :goto_0
    return-object v4

    .line 173
    :catch_0
    move-exception v2

    .line 174
    .local v2, "e":Lorg/openid4java/OpenIDException;
    invoke-virtual {v2}, Lorg/openid4java/OpenIDException;->printStackTrace()V

    .line 177
    const/4 v4, 0x0

    goto :goto_0
.end method


# virtual methods
.method public api(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)Lorg/brickred/socialauth/util/Response;
    .locals 2
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
    .line 322
    .local p3, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, "headerParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/brickred/socialauth/provider/OpenIdImpl;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "WARNING: API method is not implemented for OpenId"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 323
    new-instance v0, Lorg/brickred/socialauth/exception/SocialAuthException;

    .line 324
    const-string v1, "API method is not implemented for OpenId"

    .line 323
    invoke-direct {v0, v1}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAccessGrant()Lorg/brickred/socialauth/util/AccessGrant;
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lorg/brickred/socialauth/provider/OpenIdImpl;->accessGrant:Lorg/brickred/socialauth/util/AccessGrant;

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

    .prologue
    .line 283
    iget-object v0, p0, Lorg/brickred/socialauth/provider/OpenIdImpl;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "Contacts are not available in OpenId"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 284
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLoginRedirectURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "successUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 117
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/brickred/socialauth/provider/OpenIdImpl;->providerState:Z

    .line 118
    iget-object v1, p0, Lorg/brickred/socialauth/provider/OpenIdImpl;->id:Ljava/lang/String;

    invoke-direct {p0, v1, p1}, Lorg/brickred/socialauth/provider/OpenIdImpl;->authRequest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, "url":Ljava/lang/String;
    iput-object p1, p0, Lorg/brickred/socialauth/provider/OpenIdImpl;->successUrl:Ljava/lang/String;

    .line 120
    iget-object v1, p0, Lorg/brickred/socialauth/provider/OpenIdImpl;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Redirection to following URL should happen : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 121
    return-object v0
.end method

.method protected getOauthStrategy()Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;
    .locals 1

    .prologue
    .line 357
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getPluginsList()Ljava/util/List;
    .locals 1
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
    .line 363
    const/4 v0, 0x0

    return-object v0
.end method

.method public getProviderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lorg/brickred/socialauth/provider/OpenIdImpl;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getUserProfile()Lorg/brickred/socialauth/Profile;
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lorg/brickred/socialauth/provider/OpenIdImpl;->userProfile:Lorg/brickred/socialauth/Profile;

    return-object v0
.end method

.method public logout()V
    .locals 1

    .prologue
    .line 292
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/brickred/socialauth/provider/OpenIdImpl;->discovered:Lorg/openid4java/discovery/DiscoveryInformation;

    .line 293
    return-void
.end method

.method public setAccessGrant(Lorg/brickred/socialauth/util/AccessGrant;)V
    .locals 2
    .param p1, "accessGrant"    # Lorg/brickred/socialauth/util/AccessGrant;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/brickred/socialauth/exception/AccessTokenExpireException;
        }
    .end annotation

    .prologue
    .line 99
    :try_start_0
    new-instance v1, Lorg/openid4java/consumer/ConsumerManager;

    invoke-direct {v1}, Lorg/openid4java/consumer/ConsumerManager;-><init>()V

    iput-object v1, p0, Lorg/brickred/socialauth/provider/OpenIdImpl;->manager:Lorg/openid4java/consumer/ConsumerManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/brickred/socialauth/provider/OpenIdImpl;->discovered:Lorg/openid4java/discovery/DiscoveryInformation;

    .line 104
    iput-object p1, p0, Lorg/brickred/socialauth/provider/OpenIdImpl;->accessGrant:Lorg/brickred/socialauth/util/AccessGrant;

    .line 105
    return-void

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setPermission(Lorg/brickred/socialauth/Permission;)V
    .locals 2
    .param p1, "p"    # Lorg/brickred/socialauth/Permission;

    .prologue
    .line 303
    iget-object v0, p0, Lorg/brickred/socialauth/provider/OpenIdImpl;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "Setting Permission for openid is not valid."

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 304
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
    .line 271
    iget-object v0, p0, Lorg/brickred/socialauth/provider/OpenIdImpl;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "WARNING: Not implemented for OpenId"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 272
    new-instance v0, Lorg/brickred/socialauth/exception/SocialAuthException;

    .line 273
    const-string v1, "Update Status is not implemented for OpenId"

    .line 272
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
    .line 350
    iget-object v0, p0, Lorg/brickred/socialauth/provider/OpenIdImpl;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "WARNING: Not implemented for OpenId"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 351
    new-instance v0, Lorg/brickred/socialauth/exception/SocialAuthException;

    .line 352
    const-string v1, "Upload Image is not implemented for OpenId"

    .line 351
    invoke-direct {v0, v1}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public verifyResponse(Ljava/util/Map;)Lorg/brickred/socialauth/Profile;
    .locals 16
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
    .line 194
    .local p1, "requestParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lorg/brickred/socialauth/provider/OpenIdImpl;->providerState:Z

    if-nez v13, :cond_0

    .line 195
    new-instance v13, Lorg/brickred/socialauth/exception/ProviderStateException;

    invoke-direct {v13}, Lorg/brickred/socialauth/exception/ProviderStateException;-><init>()V

    throw v13

    .line 200
    :cond_0
    :try_start_0
    new-instance v8, Lorg/openid4java/message/ParameterList;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Lorg/openid4java/message/ParameterList;-><init>(Ljava/util/Map;)V

    .line 203
    .local v8, "response":Lorg/openid4java/message/ParameterList;
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 204
    .local v7, "receivingURL":Ljava/lang/StringBuffer;
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/brickred/socialauth/provider/OpenIdImpl;->successUrl:Ljava/lang/String;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 205
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 206
    .local v9, "sb":Ljava/lang/StringBuffer;
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-nez v14, :cond_5

    .line 214
    const-string v13, "?"

    invoke-virtual {v7, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 218
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/brickred/socialauth/provider/OpenIdImpl;->manager:Lorg/openid4java/consumer/ConsumerManager;

    .line 219
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/brickred/socialauth/provider/OpenIdImpl;->discovered:Lorg/openid4java/discovery/DiscoveryInformation;

    .line 218
    invoke-virtual {v13, v14, v8, v15}, Lorg/openid4java/consumer/ConsumerManager;->verify(Ljava/lang/String;Lorg/openid4java/message/ParameterList;Lorg/openid4java/discovery/DiscoveryInformation;)Lorg/openid4java/consumer/VerificationResult;

    move-result-object v11

    .line 223
    .local v11, "verification":Lorg/openid4java/consumer/VerificationResult;
    invoke-virtual {v11}, Lorg/openid4java/consumer/VerificationResult;->getVerifiedId()Lorg/openid4java/discovery/Identifier;

    move-result-object v12

    .line 224
    .local v12, "verified":Lorg/openid4java/discovery/Identifier;
    if-eqz v12, :cond_7

    .line 225
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/brickred/socialauth/provider/OpenIdImpl;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Verified Id : "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v12}, Lorg/openid4java/discovery/Identifier;->getIdentifier()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 226
    new-instance v6, Lorg/brickred/socialauth/Profile;

    invoke-direct {v6}, Lorg/brickred/socialauth/Profile;-><init>()V

    .line 227
    .local v6, "p":Lorg/brickred/socialauth/Profile;
    invoke-interface {v12}, Lorg/openid4java/discovery/Identifier;->getIdentifier()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Lorg/brickred/socialauth/Profile;->setValidatedId(Ljava/lang/String;)V

    .line 229
    invoke-virtual {v11}, Lorg/openid4java/consumer/VerificationResult;->getAuthResponse()Lorg/openid4java/message/Message;

    move-result-object v1

    .line 228
    check-cast v1, Lorg/openid4java/message/AuthSuccess;

    .line 231
    .local v1, "authSuccess":Lorg/openid4java/message/AuthSuccess;
    const-string v13, "http://openid.net/srv/ax/1.0"

    invoke-virtual {v1, v13}, Lorg/openid4java/message/AuthSuccess;->hasExtension(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 233
    const-string v13, "http://openid.net/srv/ax/1.0"

    invoke-virtual {v1, v13}, Lorg/openid4java/message/AuthSuccess;->getExtension(Ljava/lang/String;)Lorg/openid4java/message/MessageExtension;

    move-result-object v4

    .line 232
    check-cast v4, Lorg/openid4java/message/ax/FetchResponse;

    .line 235
    .local v4, "fetchResp":Lorg/openid4java/message/ax/FetchResponse;
    const-string v13, "email"

    invoke-virtual {v4, v13}, Lorg/openid4java/message/ax/FetchResponse;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Lorg/brickred/socialauth/Profile;->setEmail(Ljava/lang/String;)V

    .line 236
    const-string v13, "firstname"

    invoke-virtual {v4, v13}, Lorg/openid4java/message/ax/FetchResponse;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Lorg/brickred/socialauth/Profile;->setFirstName(Ljava/lang/String;)V

    .line 237
    const-string v13, "lastname"

    invoke-virtual {v4, v13}, Lorg/openid4java/message/ax/FetchResponse;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Lorg/brickred/socialauth/Profile;->setLastName(Ljava/lang/String;)V

    .line 238
    const-string v13, "fullname"

    invoke-virtual {v4, v13}, Lorg/openid4java/message/ax/FetchResponse;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Lorg/brickred/socialauth/Profile;->setFullName(Ljava/lang/String;)V

    .line 241
    invoke-virtual {v6}, Lorg/brickred/socialauth/Profile;->getEmail()Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_1

    .line 242
    const-string v13, "emailax"

    invoke-virtual {v4, v13}, Lorg/openid4java/message/ax/FetchResponse;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Lorg/brickred/socialauth/Profile;->setEmail(Ljava/lang/String;)V

    .line 244
    :cond_1
    invoke-virtual {v6}, Lorg/brickred/socialauth/Profile;->getFirstName()Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_2

    .line 246
    const-string v13, "firstnameax"

    invoke-virtual {v4, v13}, Lorg/openid4java/message/ax/FetchResponse;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 245
    invoke-virtual {v6, v13}, Lorg/brickred/socialauth/Profile;->setFirstName(Ljava/lang/String;)V

    .line 248
    :cond_2
    invoke-virtual {v6}, Lorg/brickred/socialauth/Profile;->getLastName()Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_3

    .line 249
    const-string v13, "lastnameax"

    invoke-virtual {v4, v13}, Lorg/openid4java/message/ax/FetchResponse;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Lorg/brickred/socialauth/Profile;->setLastName(Ljava/lang/String;)V

    .line 251
    :cond_3
    invoke-virtual {v6}, Lorg/brickred/socialauth/Profile;->getFullName()Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_4

    .line 252
    const-string v13, "fullnameax"

    invoke-virtual {v4, v13}, Lorg/openid4java/message/ax/FetchResponse;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Lorg/brickred/socialauth/Profile;->setFullName(Ljava/lang/String;)V

    .line 256
    .end local v4    # "fetchResp":Lorg/openid4java/message/ax/FetchResponse;
    :cond_4
    move-object/from16 v0, p0

    iput-object v6, v0, Lorg/brickred/socialauth/provider/OpenIdImpl;->userProfile:Lorg/brickred/socialauth/Profile;

    .line 263
    .end local v1    # "authSuccess":Lorg/openid4java/message/AuthSuccess;
    .end local v6    # "p":Lorg/brickred/socialauth/Profile;
    :goto_1
    return-object v6

    .line 206
    .end local v11    # "verification":Lorg/openid4java/consumer/VerificationResult;
    .end local v12    # "verified":Lorg/openid4java/discovery/Identifier;
    :cond_5
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 207
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 208
    .local v5, "key":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 209
    .local v10, "value":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->length()I

    move-result v14

    if-lez v14, :cond_6

    .line 210
    const-string v14, "&"

    invoke-virtual {v9, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 212
    :cond_6
    invoke-virtual {v9, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    const-string v15, "="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Lorg/openid4java/OpenIDException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 259
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "key":Ljava/lang/String;
    .end local v7    # "receivingURL":Ljava/lang/StringBuffer;
    .end local v8    # "response":Lorg/openid4java/message/ParameterList;
    .end local v9    # "sb":Ljava/lang/StringBuffer;
    .end local v10    # "value":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 260
    .local v2, "e":Lorg/openid4java/OpenIDException;
    throw v2

    .line 263
    .end local v2    # "e":Lorg/openid4java/OpenIDException;
    .restart local v7    # "receivingURL":Ljava/lang/StringBuffer;
    .restart local v8    # "response":Lorg/openid4java/message/ParameterList;
    .restart local v9    # "sb":Ljava/lang/StringBuffer;
    .restart local v11    # "verification":Lorg/openid4java/consumer/VerificationResult;
    .restart local v12    # "verified":Lorg/openid4java/discovery/Identifier;
    :cond_7
    const/4 v6, 0x0

    goto :goto_1
.end method
