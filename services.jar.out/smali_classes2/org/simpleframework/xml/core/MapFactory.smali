.class Lorg/simpleframework/xml/core/MapFactory;
.super Lorg/simpleframework/xml/core/Factory;
.source "MapFactory.java"


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Type;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/Factory;-><init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Type;)V

    .line 51
    return-void
.end method

.method private isMap(Ljava/lang/Class;)Z
    .locals 1

    .prologue
    const-class v0, Ljava/util/Map;

    .line 153
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getConversion(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const-class v0, Ljava/util/HashMap;

    .line 134
    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Ljava/util/TreeMap;

    .line 137
    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 140
    new-instance v0, Lorg/simpleframework/xml/core/InstantiationException;

    const-string/jumbo v1, "Cannot instantiate %s for %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lorg/simpleframework/xml/core/MapFactory;->type:Lorg/simpleframework/xml/strategy/Type;

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lorg/simpleframework/xml/core/InstantiationException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_0
    const-class v0, Ljava/util/HashMap;

    .line 135
    return-object v0

    :cond_1
    const-class v0, Ljava/util/TreeMap;

    .line 138
    return-object v0
.end method

.method public getInstance()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 62
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/MapFactory;->getType()Ljava/lang/Class;

    move-result-object v1

    .line 65
    invoke-static {v1}, Lorg/simpleframework/xml/core/MapFactory;->isInstantiable(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 68
    :goto_0
    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/MapFactory;->isMap(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 71
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 66
    :cond_0
    invoke-virtual {p0, v1}, Lorg/simpleframework/xml/core/MapFactory;->getConversion(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 69
    :cond_1
    new-instance v0, Lorg/simpleframework/xml/core/InstantiationException;

    const-string/jumbo v2, "Invalid map %s for %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v4

    const/4 v1, 0x1

    iget-object v4, p0, Lorg/simpleframework/xml/core/MapFactory;->type:Lorg/simpleframework/xml/strategy/Type;

    aput-object v4, v3, v1

    invoke-direct {v0, v2, v3}, Lorg/simpleframework/xml/core/InstantiationException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public getInstance(Lorg/simpleframework/xml/strategy/Value;)Lorg/simpleframework/xml/core/Instance;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 111
    invoke-interface {p1}, Lorg/simpleframework/xml/strategy/Value;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 113
    invoke-static {v0}, Lorg/simpleframework/xml/core/MapFactory;->isInstantiable(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 116
    :goto_0
    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/MapFactory;->isMap(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 119
    new-instance v1, Lorg/simpleframework/xml/core/ConversionInstance;

    iget-object v2, p0, Lorg/simpleframework/xml/core/MapFactory;->context:Lorg/simpleframework/xml/core/Context;

    invoke-direct {v1, v2, p1, v0}, Lorg/simpleframework/xml/core/ConversionInstance;-><init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Value;Ljava/lang/Class;)V

    return-object v1

    .line 114
    :cond_0
    invoke-virtual {p0, v0}, Lorg/simpleframework/xml/core/MapFactory;->getConversion(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 117
    :cond_1
    new-instance v1, Lorg/simpleframework/xml/core/InstantiationException;

    const-string/jumbo v2, "Invalid map %s for %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    const/4 v0, 0x1

    iget-object v4, p0, Lorg/simpleframework/xml/core/MapFactory;->type:Lorg/simpleframework/xml/strategy/Type;

    aput-object v4, v3, v0

    invoke-direct {v1, v2, v3}, Lorg/simpleframework/xml/core/InstantiationException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1
.end method

.method public getInstance(Lorg/simpleframework/xml/stream/InputNode;)Lorg/simpleframework/xml/core/Instance;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 85
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/MapFactory;->getOverride(Lorg/simpleframework/xml/stream/InputNode;)Lorg/simpleframework/xml/strategy/Value;

    move-result-object v1

    .line 86
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/MapFactory;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 88
    if-nez v1, :cond_0

    .line 91
    invoke-static {v0}, Lorg/simpleframework/xml/core/MapFactory;->isInstantiable(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 94
    :goto_0
    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/MapFactory;->isMap(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 97
    iget-object v1, p0, Lorg/simpleframework/xml/core/MapFactory;->context:Lorg/simpleframework/xml/core/Context;

    invoke-interface {v1, v0}, Lorg/simpleframework/xml/core/Context;->getInstance(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Instance;

    move-result-object v0

    return-object v0

    .line 89
    :cond_0
    invoke-virtual {p0, v1}, Lorg/simpleframework/xml/core/MapFactory;->getInstance(Lorg/simpleframework/xml/strategy/Value;)Lorg/simpleframework/xml/core/Instance;

    move-result-object v0

    return-object v0

    .line 92
    :cond_1
    invoke-virtual {p0, v0}, Lorg/simpleframework/xml/core/MapFactory;->getConversion(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 95
    :cond_2
    new-instance v1, Lorg/simpleframework/xml/core/InstantiationException;

    const-string/jumbo v2, "Invalid map %s for %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    const/4 v0, 0x1

    iget-object v4, p0, Lorg/simpleframework/xml/core/MapFactory;->type:Lorg/simpleframework/xml/strategy/Type;

    aput-object v4, v3, v0

    invoke-direct {v1, v2, v3}, Lorg/simpleframework/xml/core/InstantiationException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1
.end method
