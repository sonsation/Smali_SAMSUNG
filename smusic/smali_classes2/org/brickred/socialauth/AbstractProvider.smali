.class public abstract Lorg/brickred/socialauth/AbstractProvider;
.super Ljava/lang/Object;
.source "AbstractProvider.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/brickred/socialauth/AuthProvider;


# static fields
.field private static final serialVersionUID:J = -0x6c9f9b8d3d82c918L


# instance fields
.field private final LOG:Lorg/apache/commons/logging/Log;

.field private pluginsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lorg/brickred/socialauth/plugin/Plugin;",
            ">;",
            "Ljava/lang/Class",
            "<+",
            "Lorg/brickred/socialauth/plugin/Plugin;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/brickred/socialauth/AbstractProvider;->LOG:Lorg/apache/commons/logging/Log;

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/brickred/socialauth/AbstractProvider;->pluginsMap:Ljava/util/Map;

    .line 58
    return-void
.end method


# virtual methods
.method protected abstract getOauthStrategy()Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;
.end method

.method public getPlugin(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 62
    iget-object v4, p0, Lorg/brickred/socialauth/AbstractProvider;->pluginsMap:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 63
    .local v2, "plugin":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/brickred/socialauth/plugin/Plugin;>;"
    new-array v4, v7, [Ljava/lang/Class;

    .line 64
    const-class v5, Lorg/brickred/socialauth/util/ProviderSupport;

    aput-object v5, v4, v6

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 65
    .local v0, "cons":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lorg/brickred/socialauth/plugin/Plugin;>;"
    new-instance v3, Lorg/brickred/socialauth/util/ProviderSupport;

    invoke-virtual {p0}, Lorg/brickred/socialauth/AbstractProvider;->getOauthStrategy()Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/brickred/socialauth/util/ProviderSupport;-><init>(Lorg/brickred/socialauth/oauthstrategy/OAuthStrategyBase;)V

    .line 66
    .local v3, "support":Lorg/brickred/socialauth/util/ProviderSupport;
    new-array v4, v7, [Ljava/lang/Object;

    aput-object v3, v4, v6

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/brickred/socialauth/plugin/Plugin;

    .line 67
    .local v1, "obj":Lorg/brickred/socialauth/plugin/Plugin;
    return-object v1
.end method

.method protected abstract getPluginsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public getPluginsScope(Lorg/brickred/socialauth/util/OAuthConfig;)Ljava/lang/String;
    .locals 5
    .param p1, "oauthConfig"    # Lorg/brickred/socialauth/util/OAuthConfig;

    .prologue
    .line 118
    invoke-virtual {p1}, Lorg/brickred/socialauth/util/OAuthConfig;->getPluginsScopes()Ljava/util/List;

    move-result-object v1

    .line 119
    .local v1, "scopes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 120
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 121
    .local v2, "scopesStr":Ljava/lang/String;
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lt v0, v3, :cond_0

    .line 126
    .end local v0    # "i":I
    .end local v2    # "scopesStr":Ljava/lang/String;
    :goto_1
    return-object v2

    .line 122
    .restart local v0    # "i":I
    .restart local v2    # "scopesStr":Ljava/lang/String;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 121
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 126
    .end local v0    # "i":I
    .end local v2    # "scopesStr":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public isSupportedPlugin(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/brickred/socialauth/plugin/Plugin;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 72
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/brickred/socialauth/plugin/Plugin;>;"
    iget-object v0, p0, Lorg/brickred/socialauth/AbstractProvider;->pluginsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    const/4 v0, 0x1

    .line 75
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public refreshToken(Lorg/brickred/socialauth/util/AccessGrant;)V
    .locals 2
    .param p1, "accessGrant"    # Lorg/brickred/socialauth/util/AccessGrant;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/brickred/socialauth/exception/SocialAuthException;
        }
    .end annotation

    .prologue
    .line 104
    new-instance v0, Lorg/brickred/socialauth/exception/SocialAuthException;

    const-string v1, "Not implemented for given provider"

    invoke-direct {v0, v1}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final registerPlugins()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 81
    iget-object v6, p0, Lorg/brickred/socialauth/AbstractProvider;->LOG:Lorg/apache/commons/logging/Log;

    const-string v8, "Loading plugins"

    invoke-interface {v6, v8}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 82
    invoke-virtual {p0}, Lorg/brickred/socialauth/AbstractProvider;->getPluginsList()Ljava/util/List;

    move-result-object v4

    .line 83
    .local v4, "pluginsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 84
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    .line 99
    :cond_1
    return-void

    .line 84
    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 85
    .local v5, "s":Ljava/lang/String;
    iget-object v6, p0, Lorg/brickred/socialauth/AbstractProvider;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Loading plugin :: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v9}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 86
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 87
    const-class v9, Lorg/brickred/socialauth/plugin/Plugin;

    .line 86
    invoke-virtual {v6, v9}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    .line 89
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/brickred/socialauth/plugin/Plugin;>;"
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    .line 90
    const-class v9, Lorg/brickred/socialauth/util/ProviderSupport;

    aput-object v9, v6, v7

    invoke-virtual {v1, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 91
    .local v2, "cons":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lorg/brickred/socialauth/plugin/Plugin;>;"
    invoke-virtual {v1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v3

    .line 92
    .local v3, "interfaces":[Ljava/lang/Class;
    array-length v9, v3

    move v6, v7

    :goto_0
    if-ge v6, v9, :cond_0

    aget-object v0, v3, v6

    .line 93
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v10, Lorg/brickred/socialauth/plugin/Plugin;

    invoke-virtual {v10, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 94
    iget-object v10, p0, Lorg/brickred/socialauth/AbstractProvider;->pluginsMap:Ljava/util/Map;

    const-class v11, Lorg/brickred/socialauth/plugin/Plugin;

    invoke-virtual {v0, v11}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v11

    invoke-interface {v10, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method
