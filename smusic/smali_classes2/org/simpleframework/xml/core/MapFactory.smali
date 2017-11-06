.class Lorg/simpleframework/xml/core/MapFactory;
.super Lorg/simpleframework/xml/core/Factory;
.source "MapFactory.java"


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Type;)V
    .locals 0
    .param p1, "context"    # Lorg/simpleframework/xml/core/Context;
    .param p2, "type"    # Lorg/simpleframework/xml/strategy/Type;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/Factory;-><init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Type;)V

    .line 51
    return-void
.end method

.method private isMap(Ljava/lang/Class;)Z
    .locals 1
    .param p1, "type"    # Ljava/lang/Class;

    .prologue
    .line 153
    const-class v0, Ljava/util/Map;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getConversion(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 5
    .param p1, "require"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 134
    const-class v0, Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    const-class v0, Ljava/util/HashMap;

    .line 138
    :goto_0
    return-object v0

    .line 137
    :cond_0
    const-class v0, Ljava/util/TreeMap;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    const-class v0, Ljava/util/TreeMap;

    goto :goto_0

    .line 140
    :cond_1
    new-instance v0, Lorg/simpleframework/xml/core/InstantiationException;

    const-string v1, "Cannot instantiate %s for %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lorg/simpleframework/xml/core/MapFactory;->type:Lorg/simpleframework/xml/strategy/Type;

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lorg/simpleframework/xml/core/InstantiationException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public getInstance()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 62
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/MapFactory;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 63
    .local v0, "expect":Ljava/lang/Class;
    move-object v1, v0

    .line 65
    .local v1, "real":Ljava/lang/Class;
    invoke-static {v1}, Lorg/simpleframework/xml/core/MapFactory;->isInstantiable(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 66
    invoke-virtual {p0, v0}, Lorg/simpleframework/xml/core/MapFactory;->getConversion(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    .line 68
    :cond_0
    invoke-direct {p0, v1}, Lorg/simpleframework/xml/core/MapFactory;->isMap(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 69
    new-instance v2, Lorg/simpleframework/xml/core/InstantiationException;

    const-string v3, "Invalid map %s for %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lorg/simpleframework/xml/core/MapFactory;->type:Lorg/simpleframework/xml/strategy/Type;

    aput-object v6, v4, v5

    invoke-direct {v2, v3, v4}, Lorg/simpleframework/xml/core/InstantiationException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2

    .line 71
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public getInstance(Lorg/simpleframework/xml/strategy/Value;)Lorg/simpleframework/xml/core/Instance;
    .locals 6
    .param p1, "value"    # Lorg/simpleframework/xml/strategy/Value;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 111
    invoke-interface {p1}, Lorg/simpleframework/xml/strategy/Value;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 113
    .local v0, "expect":Ljava/lang/Class;
    invoke-static {v0}, Lorg/simpleframework/xml/core/MapFactory;->isInstantiable(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 114
    invoke-virtual {p0, v0}, Lorg/simpleframework/xml/core/MapFactory;->getConversion(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 116
    :cond_0
    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/MapFactory;->isMap(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 117
    new-instance v1, Lorg/simpleframework/xml/core/InstantiationException;

    const-string v2, "Invalid map %s for %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lorg/simpleframework/xml/core/MapFactory;->type:Lorg/simpleframework/xml/strategy/Type;

    aput-object v5, v3, v4

    invoke-direct {v1, v2, v3}, Lorg/simpleframework/xml/core/InstantiationException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 119
    :cond_1
    new-instance v1, Lorg/simpleframework/xml/core/ConversionInstance;

    iget-object v2, p0, Lorg/simpleframework/xml/core/MapFactory;->context:Lorg/simpleframework/xml/core/Context;

    invoke-direct {v1, v2, p1, v0}, Lorg/simpleframework/xml/core/ConversionInstance;-><init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Value;Ljava/lang/Class;)V

    return-object v1
.end method

.method public getInstance(Lorg/simpleframework/xml/stream/InputNode;)Lorg/simpleframework/xml/core/Instance;
    .locals 7
    .param p1, "node"    # Lorg/simpleframework/xml/stream/InputNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/MapFactory;->getOverride(Lorg/simpleframework/xml/stream/InputNode;)Lorg/simpleframework/xml/strategy/Value;

    move-result-object v1

    .line 86
    .local v1, "value":Lorg/simpleframework/xml/strategy/Value;
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/MapFactory;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 88
    .local v0, "expect":Ljava/lang/Class;
    if-eqz v1, :cond_0

    .line 89
    invoke-virtual {p0, v1}, Lorg/simpleframework/xml/core/MapFactory;->getInstance(Lorg/simpleframework/xml/strategy/Value;)Lorg/simpleframework/xml/core/Instance;

    move-result-object v2

    .line 97
    :goto_0
    return-object v2

    .line 91
    :cond_0
    invoke-static {v0}, Lorg/simpleframework/xml/core/MapFactory;->isInstantiable(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 92
    invoke-virtual {p0, v0}, Lorg/simpleframework/xml/core/MapFactory;->getConversion(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 94
    :cond_1
    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/MapFactory;->isMap(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 95
    new-instance v2, Lorg/simpleframework/xml/core/InstantiationException;

    const-string v3, "Invalid map %s for %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lorg/simpleframework/xml/core/MapFactory;->type:Lorg/simpleframework/xml/strategy/Type;

    aput-object v6, v4, v5

    invoke-direct {v2, v3, v4}, Lorg/simpleframework/xml/core/InstantiationException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2

    .line 97
    :cond_2
    iget-object v2, p0, Lorg/simpleframework/xml/core/MapFactory;->context:Lorg/simpleframework/xml/core/Context;

    invoke-interface {v2, v0}, Lorg/simpleframework/xml/core/Context;->getInstance(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Instance;

    move-result-object v2

    goto :goto_0
.end method
