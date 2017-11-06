.class public Lorg/brickred/socialauth/SocialAuthManager;
.super Ljava/lang/Object;
.source "SocialAuthManager.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x167d070a791a86fdL


# instance fields
.field private final LOG:Lorg/apache/commons/logging/Log;

.field private authProvider:Lorg/brickred/socialauth/AuthProvider;

.field private currentProviderId:Ljava/lang/String;

.field private final permissionsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/brickred/socialauth/Permission;",
            ">;"
        }
    .end annotation
.end field

.field private providerId:Ljava/lang/String;

.field private final providersMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/brickred/socialauth/AuthProvider;",
            ">;"
        }
    .end annotation
.end field

.field private socialAuthConfig:Lorg/brickred/socialauth/SocialAuthConfig;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-class v0, Lorg/brickred/socialauth/SocialAuthManager;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/brickred/socialauth/SocialAuthManager;->LOG:Lorg/apache/commons/logging/Log;

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/brickred/socialauth/SocialAuthManager;->providersMap:Ljava/util/Map;

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/brickred/socialauth/SocialAuthManager;->permissionsMap:Ljava/util/Map;

    .line 65
    return-void
.end method

.method private getAuthURL(Ljava/lang/String;Ljava/lang/String;Lorg/brickred/socialauth/Permission;)Ljava/lang/String;
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "successUrl"    # Ljava/lang/String;
    .param p3, "permission"    # Lorg/brickred/socialauth/Permission;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 146
    iput-object p1, p0, Lorg/brickred/socialauth/SocialAuthManager;->providerId:Ljava/lang/String;

    .line 147
    iget-object v1, p0, Lorg/brickred/socialauth/SocialAuthManager;->socialAuthConfig:Lorg/brickred/socialauth/SocialAuthConfig;

    if-nez v1, :cond_0

    .line 148
    new-instance v1, Lorg/brickred/socialauth/exception/SocialAuthConfigurationException;

    .line 149
    const-string v2, "SocialAuth configuration is null."

    .line 148
    invoke-direct {v1, v2}, Lorg/brickred/socialauth/exception/SocialAuthConfigurationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 151
    :cond_0
    iget-object v1, p0, Lorg/brickred/socialauth/SocialAuthManager;->providersMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 152
    move-object v0, p2

    .line 153
    .local v0, "url":Ljava/lang/String;
    iget-object v1, p0, Lorg/brickred/socialauth/SocialAuthManager;->providersMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/brickred/socialauth/AuthProvider;

    iput-object v1, p0, Lorg/brickred/socialauth/SocialAuthManager;->authProvider:Lorg/brickred/socialauth/AuthProvider;

    .line 164
    :goto_0
    return-object v0

    .line 155
    .end local v0    # "url":Ljava/lang/String;
    :cond_1
    invoke-direct {p0, p1}, Lorg/brickred/socialauth/SocialAuthManager;->getProviderInstance(Ljava/lang/String;)Lorg/brickred/socialauth/AuthProvider;

    move-result-object v1

    iput-object v1, p0, Lorg/brickred/socialauth/SocialAuthManager;->authProvider:Lorg/brickred/socialauth/AuthProvider;

    .line 156
    iget-object v1, p0, Lorg/brickred/socialauth/SocialAuthManager;->permissionsMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 157
    iget-object v2, p0, Lorg/brickred/socialauth/SocialAuthManager;->authProvider:Lorg/brickred/socialauth/AuthProvider;

    iget-object v1, p0, Lorg/brickred/socialauth/SocialAuthManager;->permissionsMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/brickred/socialauth/Permission;

    invoke-interface {v2, v1}, Lorg/brickred/socialauth/AuthProvider;->setPermission(Lorg/brickred/socialauth/Permission;)V

    .line 159
    :cond_2
    if-eqz p3, :cond_3

    .line 160
    iget-object v1, p0, Lorg/brickred/socialauth/SocialAuthManager;->authProvider:Lorg/brickred/socialauth/AuthProvider;

    invoke-interface {v1, p3}, Lorg/brickred/socialauth/AuthProvider;->setPermission(Lorg/brickred/socialauth/Permission;)V

    .line 162
    :cond_3
    iget-object v1, p0, Lorg/brickred/socialauth/SocialAuthManager;->authProvider:Lorg/brickred/socialauth/AuthProvider;

    invoke-interface {v1, p2}, Lorg/brickred/socialauth/AuthProvider;->getLoginRedirectURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "url":Ljava/lang/String;
    goto :goto_0
.end method

.method private getProviderInstance(Ljava/lang/String;)Lorg/brickred/socialauth/AuthProvider;
    .locals 9
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/brickred/socialauth/exception/SocialAuthConfigurationException;,
            Lorg/brickred/socialauth/exception/SocialAuthException;
        }
    .end annotation

    .prologue
    .line 334
    iget-object v6, p0, Lorg/brickred/socialauth/SocialAuthManager;->socialAuthConfig:Lorg/brickred/socialauth/SocialAuthConfig;

    invoke-virtual {v6, p1}, Lorg/brickred/socialauth/SocialAuthConfig;->getProviderConfig(Ljava/lang/String;)Lorg/brickred/socialauth/util/OAuthConfig;

    move-result-object v0

    .line 335
    .local v0, "config":Lorg/brickred/socialauth/util/OAuthConfig;
    invoke-virtual {v0}, Lorg/brickred/socialauth/util/OAuthConfig;->getProviderImplClass()Ljava/lang/Class;

    move-result-object v4

    .line 338
    .local v4, "obj":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v6, 0x1

    :try_start_0
    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Lorg/brickred/socialauth/util/OAuthConfig;

    aput-object v8, v6, v7

    invoke-virtual {v4, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 339
    .local v1, "cons":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-virtual {v1, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/brickred/socialauth/AuthProvider;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 352
    .end local v1    # "cons":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .local v5, "provider":Lorg/brickred/socialauth/AuthProvider;
    :goto_0
    :try_start_1
    invoke-interface {v5}, Lorg/brickred/socialauth/AuthProvider;->registerPlugins()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 357
    return-object v5

    .line 340
    .end local v5    # "provider":Lorg/brickred/socialauth/AuthProvider;
    :catch_0
    move-exception v3

    .line 341
    .local v3, "me":Ljava/lang/NoSuchMethodException;
    iget-object v6, p0, Lorg/brickred/socialauth/SocialAuthManager;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " does not implement a constructor "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 342
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "(Poperties props)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 341
    invoke-interface {v6, v7}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 344
    :try_start_2
    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/brickred/socialauth/AuthProvider;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .restart local v5    # "provider":Lorg/brickred/socialauth/AuthProvider;
    goto :goto_0

    .line 345
    .end local v5    # "provider":Lorg/brickred/socialauth/AuthProvider;
    :catch_1
    move-exception v2

    .line 346
    .local v2, "e":Ljava/lang/Exception;
    new-instance v6, Lorg/brickred/socialauth/exception/SocialAuthConfigurationException;

    invoke-direct {v6, v2}, Lorg/brickred/socialauth/exception/SocialAuthConfigurationException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 348
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "me":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v2

    .line 349
    .restart local v2    # "e":Ljava/lang/Exception;
    new-instance v6, Lorg/brickred/socialauth/exception/SocialAuthConfigurationException;

    invoke-direct {v6, v2}, Lorg/brickred/socialauth/exception/SocialAuthConfigurationException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 353
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v5    # "provider":Lorg/brickred/socialauth/AuthProvider;
    :catch_3
    move-exception v2

    .line 354
    .restart local v2    # "e":Ljava/lang/Exception;
    new-instance v6, Lorg/brickred/socialauth/exception/SocialAuthConfigurationException;

    invoke-direct {v6, v2}, Lorg/brickred/socialauth/exception/SocialAuthConfigurationException;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method


# virtual methods
.method public connect(Ljava/util/Map;)Lorg/brickred/socialauth/AuthProvider;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/brickred/socialauth/AuthProvider;"
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
    iget-object v0, p0, Lorg/brickred/socialauth/SocialAuthManager;->providerId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/brickred/socialauth/SocialAuthManager;->authProvider:Lorg/brickred/socialauth/AuthProvider;

    if-nez v0, :cond_1

    .line 180
    :cond_0
    new-instance v0, Lorg/brickred/socialauth/exception/SocialAuthManagerStateException;

    invoke-direct {v0}, Lorg/brickred/socialauth/exception/SocialAuthManagerStateException;-><init>()V

    throw v0

    .line 182
    :cond_1
    iget-object v0, p0, Lorg/brickred/socialauth/SocialAuthManager;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Connecting provider : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/brickred/socialauth/SocialAuthManager;->providerId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 183
    iget-object v0, p0, Lorg/brickred/socialauth/SocialAuthManager;->providersMap:Ljava/util/Map;

    iget-object v1, p0, Lorg/brickred/socialauth/SocialAuthManager;->providerId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 184
    iget-object v0, p0, Lorg/brickred/socialauth/SocialAuthManager;->authProvider:Lorg/brickred/socialauth/AuthProvider;

    invoke-interface {v0, p1}, Lorg/brickred/socialauth/AuthProvider;->verifyResponse(Ljava/util/Map;)Lorg/brickred/socialauth/Profile;

    .line 185
    iget-object v0, p0, Lorg/brickred/socialauth/SocialAuthManager;->providersMap:Ljava/util/Map;

    iget-object v1, p0, Lorg/brickred/socialauth/SocialAuthManager;->providerId:Ljava/lang/String;

    iget-object v2, p0, Lorg/brickred/socialauth/SocialAuthManager;->authProvider:Lorg/brickred/socialauth/AuthProvider;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    :cond_2
    iget-object v0, p0, Lorg/brickred/socialauth/SocialAuthManager;->providerId:Ljava/lang/String;

    iput-object v0, p0, Lorg/brickred/socialauth/SocialAuthManager;->currentProviderId:Ljava/lang/String;

    .line 188
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/brickred/socialauth/SocialAuthManager;->providerId:Ljava/lang/String;

    .line 189
    iget-object v0, p0, Lorg/brickred/socialauth/SocialAuthManager;->authProvider:Lorg/brickred/socialauth/AuthProvider;

    return-object v0
.end method

.method public connect(Lorg/brickred/socialauth/util/AccessGrant;)Lorg/brickred/socialauth/AuthProvider;
    .locals 4
    .param p1, "accessGrant"    # Lorg/brickred/socialauth/util/AccessGrant;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/brickred/socialauth/exception/SocialAuthConfigurationException;,
            Lorg/brickred/socialauth/exception/AccessTokenExpireException;,
            Lorg/brickred/socialauth/exception/SocialAuthException;
        }
    .end annotation

    .prologue
    .line 269
    invoke-virtual {p1}, Lorg/brickred/socialauth/util/AccessGrant;->getProviderId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/brickred/socialauth/util/AccessGrant;->getKey()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 270
    :cond_0
    new-instance v1, Lorg/brickred/socialauth/exception/SocialAuthException;

    const-string v2, "access grant is not valid"

    invoke-direct {v1, v2}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 272
    :cond_1
    iget-object v1, p0, Lorg/brickred/socialauth/SocialAuthManager;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Connecting provider : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/brickred/socialauth/util/AccessGrant;->getProviderId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 273
    const-string v3, ", from given access grant"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 272
    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 274
    invoke-virtual {p1}, Lorg/brickred/socialauth/util/AccessGrant;->getProviderId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/brickred/socialauth/SocialAuthManager;->getProviderInstance(Ljava/lang/String;)Lorg/brickred/socialauth/AuthProvider;

    move-result-object v0

    .line 275
    .local v0, "provider":Lorg/brickred/socialauth/AuthProvider;
    invoke-interface {v0, p1}, Lorg/brickred/socialauth/AuthProvider;->setAccessGrant(Lorg/brickred/socialauth/util/AccessGrant;)V

    .line 276
    iput-object v0, p0, Lorg/brickred/socialauth/SocialAuthManager;->authProvider:Lorg/brickred/socialauth/AuthProvider;

    .line 277
    invoke-virtual {p1}, Lorg/brickred/socialauth/util/AccessGrant;->getProviderId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/brickred/socialauth/SocialAuthManager;->currentProviderId:Ljava/lang/String;

    .line 278
    iget-object v1, p0, Lorg/brickred/socialauth/SocialAuthManager;->providersMap:Ljava/util/Map;

    iget-object v2, p0, Lorg/brickred/socialauth/SocialAuthManager;->currentProviderId:Ljava/lang/String;

    iget-object v3, p0, Lorg/brickred/socialauth/SocialAuthManager;->authProvider:Lorg/brickred/socialauth/AuthProvider;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    return-object v0
.end method

.method public createAccessGrant(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/brickred/socialauth/util/AccessGrant;
    .locals 4
    .param p1, "providerId"    # Ljava/lang/String;
    .param p2, "authCode"    # Ljava/lang/String;
    .param p3, "redirectURL"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 207
    iput-object p1, p0, Lorg/brickred/socialauth/SocialAuthManager;->providerId:Ljava/lang/String;

    .line 208
    iget-object v1, p0, Lorg/brickred/socialauth/SocialAuthManager;->socialAuthConfig:Lorg/brickred/socialauth/SocialAuthConfig;

    if-nez v1, :cond_0

    .line 209
    new-instance v1, Lorg/brickred/socialauth/exception/SocialAuthConfigurationException;

    .line 210
    const-string v2, "SocialAuth configuration is null."

    .line 209
    invoke-direct {v1, v2}, Lorg/brickred/socialauth/exception/SocialAuthConfigurationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 212
    :cond_0
    invoke-virtual {p0, p1, p3}, Lorg/brickred/socialauth/SocialAuthManager;->getAuthenticationUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 213
    iget-object v1, p0, Lorg/brickred/socialauth/SocialAuthManager;->providersMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 214
    iget-object v1, p0, Lorg/brickred/socialauth/SocialAuthManager;->providersMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/brickred/socialauth/AuthProvider;

    iput-object v1, p0, Lorg/brickred/socialauth/SocialAuthManager;->authProvider:Lorg/brickred/socialauth/AuthProvider;

    .line 216
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 217
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "code"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    invoke-virtual {p0, v0}, Lorg/brickred/socialauth/SocialAuthManager;->connect(Ljava/util/Map;)Lorg/brickred/socialauth/AuthProvider;

    .line 219
    iget-object v1, p0, Lorg/brickred/socialauth/SocialAuthManager;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Access Grant Object :: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/brickred/socialauth/SocialAuthManager;->authProvider:Lorg/brickred/socialauth/AuthProvider;

    invoke-interface {v3}, Lorg/brickred/socialauth/AuthProvider;->getAccessGrant()Lorg/brickred/socialauth/util/AccessGrant;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 220
    iget-object v1, p0, Lorg/brickred/socialauth/SocialAuthManager;->authProvider:Lorg/brickred/socialauth/AuthProvider;

    invoke-interface {v1}, Lorg/brickred/socialauth/AuthProvider;->getAccessGrant()Lorg/brickred/socialauth/util/AccessGrant;

    move-result-object v1

    return-object v1
.end method

.method public createAccessGrant(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lorg/brickred/socialauth/util/AccessGrant;
    .locals 3
    .param p1, "providerId"    # Ljava/lang/String;
    .param p3, "redirectURL"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lorg/brickred/socialauth/util/AccessGrant;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 226
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lorg/brickred/socialauth/SocialAuthManager;->providerId:Ljava/lang/String;

    .line 227
    iget-object v0, p0, Lorg/brickred/socialauth/SocialAuthManager;->socialAuthConfig:Lorg/brickred/socialauth/SocialAuthConfig;

    if-nez v0, :cond_0

    .line 228
    new-instance v0, Lorg/brickred/socialauth/exception/SocialAuthConfigurationException;

    .line 229
    const-string v1, "SocialAuth configuration is null."

    .line 228
    invoke-direct {v0, v1}, Lorg/brickred/socialauth/exception/SocialAuthConfigurationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 232
    :cond_0
    iget-object v0, p0, Lorg/brickred/socialauth/SocialAuthManager;->providersMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 233
    iget-object v0, p0, Lorg/brickred/socialauth/SocialAuthManager;->providersMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/brickred/socialauth/AuthProvider;

    iput-object v0, p0, Lorg/brickred/socialauth/SocialAuthManager;->authProvider:Lorg/brickred/socialauth/AuthProvider;

    .line 235
    :cond_1
    invoke-virtual {p0, p2}, Lorg/brickred/socialauth/SocialAuthManager;->connect(Ljava/util/Map;)Lorg/brickred/socialauth/AuthProvider;

    .line 236
    iget-object v0, p0, Lorg/brickred/socialauth/SocialAuthManager;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Access Grant Object :: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/brickred/socialauth/SocialAuthManager;->authProvider:Lorg/brickred/socialauth/AuthProvider;

    invoke-interface {v2}, Lorg/brickred/socialauth/AuthProvider;->getAccessGrant()Lorg/brickred/socialauth/util/AccessGrant;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 237
    iget-object v0, p0, Lorg/brickred/socialauth/SocialAuthManager;->authProvider:Lorg/brickred/socialauth/AuthProvider;

    invoke-interface {v0}, Lorg/brickred/socialauth/AuthProvider;->getAccessGrant()Lorg/brickred/socialauth/util/AccessGrant;

    move-result-object v0

    return-object v0
.end method

.method public disconnectProvider(Ljava/lang/String;)Z
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 248
    iget-object v1, p0, Lorg/brickred/socialauth/SocialAuthManager;->providersMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 249
    iget-object v1, p0, Lorg/brickred/socialauth/SocialAuthManager;->providersMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/brickred/socialauth/AuthProvider;

    .line 250
    .local v0, "p":Lorg/brickred/socialauth/AuthProvider;
    invoke-interface {v0}, Lorg/brickred/socialauth/AuthProvider;->logout()V

    .line 251
    iget-object v1, p0, Lorg/brickred/socialauth/SocialAuthManager;->providersMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    const/4 v1, 0x1

    .line 254
    .end local v0    # "p":Lorg/brickred/socialauth/AuthProvider;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAuthenticationUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "successUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, Lorg/brickred/socialauth/SocialAuthManager;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Getting Authentication URL for provider "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 115
    const-string v2, ", with success url : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 114
    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 116
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/brickred/socialauth/SocialAuthManager;->getAuthURL(Ljava/lang/String;Ljava/lang/String;Lorg/brickred/socialauth/Permission;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAuthenticationUrl(Ljava/lang/String;Ljava/lang/String;Lorg/brickred/socialauth/Permission;)Ljava/lang/String;
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "successUrl"    # Ljava/lang/String;
    .param p3, "permission"    # Lorg/brickred/socialauth/Permission;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 138
    iget-object v0, p0, Lorg/brickred/socialauth/SocialAuthManager;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Getting Authentication URL for provider "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 139
    const-string v2, ", with success url : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 138
    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 140
    invoke-direct {p0, p1, p2, p3}, Lorg/brickred/socialauth/SocialAuthManager;->getAuthURL(Ljava/lang/String;Ljava/lang/String;Lorg/brickred/socialauth/Permission;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConnectedProvidersIds()Ljava/util/List;
    .locals 4
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
    .line 366
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 367
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lorg/brickred/socialauth/SocialAuthManager;->providersMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 370
    return-object v1

    .line 367
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 368
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/brickred/socialauth/AuthProvider;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getCurrentAuthProvider()Lorg/brickred/socialauth/AuthProvider;
    .locals 2

    .prologue
    .line 379
    iget-object v0, p0, Lorg/brickred/socialauth/SocialAuthManager;->currentProviderId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lorg/brickred/socialauth/SocialAuthManager;->providersMap:Ljava/util/Map;

    iget-object v1, p0, Lorg/brickred/socialauth/SocialAuthManager;->currentProviderId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/brickred/socialauth/AuthProvider;

    .line 382
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getProvider(Ljava/lang/String;)Lorg/brickred/socialauth/AuthProvider;
    .locals 1
    .param p1, "providerId"    # Ljava/lang/String;

    .prologue
    .line 329
    iget-object v0, p0, Lorg/brickred/socialauth/SocialAuthManager;->providersMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/brickred/socialauth/AuthProvider;

    return-object v0
.end method

.method public getSocialAuthConfig()Lorg/brickred/socialauth/SocialAuthConfig;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lorg/brickred/socialauth/SocialAuthManager;->socialAuthConfig:Lorg/brickred/socialauth/SocialAuthConfig;

    return-object v0
.end method

.method public isConnected(Ljava/lang/String;)Z
    .locals 1
    .param p1, "providerId"    # Ljava/lang/String;

    .prologue
    .line 315
    iget-object v0, p0, Lorg/brickred/socialauth/SocialAuthManager;->providersMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    const/4 v0, 0x1

    .line 318
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public refreshToken(Lorg/brickred/socialauth/util/AccessGrant;)Lorg/brickred/socialauth/AuthProvider;
    .locals 4
    .param p1, "accessGrant"    # Lorg/brickred/socialauth/util/AccessGrant;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/brickred/socialauth/exception/SocialAuthConfigurationException;,
            Lorg/brickred/socialauth/exception/SocialAuthException;
        }
    .end annotation

    .prologue
    .line 294
    invoke-virtual {p1}, Lorg/brickred/socialauth/util/AccessGrant;->getProviderId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/brickred/socialauth/util/AccessGrant;->getKey()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 295
    :cond_0
    new-instance v1, Lorg/brickred/socialauth/exception/SocialAuthException;

    const-string v2, "access grant is not valid"

    invoke-direct {v1, v2}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 297
    :cond_1
    iget-object v1, p0, Lorg/brickred/socialauth/SocialAuthManager;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Connecting provider : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/brickred/socialauth/util/AccessGrant;->getProviderId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 298
    const-string v3, ", from given access grant"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 297
    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 299
    invoke-virtual {p1}, Lorg/brickred/socialauth/util/AccessGrant;->getProviderId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/brickred/socialauth/SocialAuthManager;->getProviderInstance(Ljava/lang/String;)Lorg/brickred/socialauth/AuthProvider;

    move-result-object v0

    .line 300
    .local v0, "provider":Lorg/brickred/socialauth/AuthProvider;
    invoke-interface {v0, p1}, Lorg/brickred/socialauth/AuthProvider;->refreshToken(Lorg/brickred/socialauth/util/AccessGrant;)V

    .line 301
    iput-object v0, p0, Lorg/brickred/socialauth/SocialAuthManager;->authProvider:Lorg/brickred/socialauth/AuthProvider;

    .line 302
    invoke-virtual {p1}, Lorg/brickred/socialauth/util/AccessGrant;->getProviderId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/brickred/socialauth/SocialAuthManager;->currentProviderId:Ljava/lang/String;

    .line 303
    iget-object v1, p0, Lorg/brickred/socialauth/SocialAuthManager;->providersMap:Ljava/util/Map;

    iget-object v2, p0, Lorg/brickred/socialauth/SocialAuthManager;->currentProviderId:Ljava/lang/String;

    iget-object v3, p0, Lorg/brickred/socialauth/SocialAuthManager;->authProvider:Lorg/brickred/socialauth/AuthProvider;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    return-object v0
.end method

.method public setPermission(Ljava/lang/String;Lorg/brickred/socialauth/Permission;)V
    .locals 1
    .param p1, "providerId"    # Ljava/lang/String;
    .param p2, "permission"    # Lorg/brickred/socialauth/Permission;

    .prologue
    .line 396
    iget-object v0, p0, Lorg/brickred/socialauth/SocialAuthManager;->permissionsMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    return-void
.end method

.method public setSocialAuthConfig(Lorg/brickred/socialauth/SocialAuthConfig;)V
    .locals 2
    .param p1, "socialAuthConfig"    # Lorg/brickred/socialauth/SocialAuthConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lorg/brickred/socialauth/SocialAuthManager;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "Setting socialauth config"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 87
    if-nez p1, :cond_0

    .line 88
    new-instance v0, Lorg/brickred/socialauth/exception/SocialAuthConfigurationException;

    .line 89
    const-string v1, "SocialAuthConfig is null"

    .line 88
    invoke-direct {v0, v1}, Lorg/brickred/socialauth/exception/SocialAuthConfigurationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_0
    invoke-virtual {p1}, Lorg/brickred/socialauth/SocialAuthConfig;->isConfigSetup()Z

    move-result v0

    if-nez v0, :cond_1

    .line 92
    new-instance v0, Lorg/brickred/socialauth/exception/SocialAuthConfigurationException;

    .line 93
    const-string v1, "Configuration is not provided. Call load() method of SocialAuthConfig class to set up configuration"

    .line 92
    invoke-direct {v0, v1}, Lorg/brickred/socialauth/exception/SocialAuthConfigurationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_1
    iput-object p1, p0, Lorg/brickred/socialauth/SocialAuthManager;->socialAuthConfig:Lorg/brickred/socialauth/SocialAuthConfig;

    .line 97
    return-void
.end method
