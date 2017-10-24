.class abstract Lorg/simpleframework/xml/core/Factory;
.super Ljava/lang/Object;
.source "Factory.java"


# instance fields
.field protected context:Lorg/simpleframework/xml/core/Context;

.field protected override:Ljava/lang/Class;

.field protected support:Lorg/simpleframework/xml/core/Support;

.field protected type:Lorg/simpleframework/xml/strategy/Type;


# direct methods
.method protected constructor <init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Type;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 73
    invoke-direct {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/Factory;-><init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Class;)V

    .line 74
    return-void
.end method

.method protected constructor <init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Class;)V
    .locals 1

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Context;->getSupport()Lorg/simpleframework/xml/core/Support;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/Factory;->support:Lorg/simpleframework/xml/core/Support;

    .line 88
    iput-object p3, p0, Lorg/simpleframework/xml/core/Factory;->override:Ljava/lang/Class;

    .line 89
    iput-object p1, p0, Lorg/simpleframework/xml/core/Factory;->context:Lorg/simpleframework/xml/core/Context;

    .line 90
    iput-object p2, p0, Lorg/simpleframework/xml/core/Factory;->type:Lorg/simpleframework/xml/strategy/Type;

    .line 91
    return-void
.end method

.method private getPrimitive(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Class;)Lorg/simpleframework/xml/strategy/Type;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 185
    iget-object v0, p0, Lorg/simpleframework/xml/core/Factory;->support:Lorg/simpleframework/xml/core/Support;

    invoke-static {p2}, Lorg/simpleframework/xml/core/Support;->getPrimitive(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 187
    if-ne v0, p2, :cond_0

    .line 190
    return-object p1

    .line 188
    :cond_0
    new-instance v1, Lorg/simpleframework/xml/core/OverrideType;

    invoke-direct {v1, p1, v0}, Lorg/simpleframework/xml/core/OverrideType;-><init>(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Class;)V

    return-object v1
.end method

.method public static isCompatible(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 1

    .prologue
    .line 231
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_0

    .line 234
    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0

    .line 232
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0
.end method

.method public static isInstantiable(Ljava/lang/Class;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 248
    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    .line 250
    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 253
    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isInterface(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    return v0

    .line 251
    :cond_0
    return v0

    :cond_1
    const/4 v0, 0x1

    .line 253
    goto :goto_0
.end method


# virtual methods
.method public getConversion(Lorg/simpleframework/xml/stream/InputNode;)Lorg/simpleframework/xml/strategy/Value;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 207
    iget-object v0, p0, Lorg/simpleframework/xml/core/Factory;->context:Lorg/simpleframework/xml/core/Context;

    iget-object v1, p0, Lorg/simpleframework/xml/core/Factory;->type:Lorg/simpleframework/xml/strategy/Type;

    invoke-interface {v0, v1, p1}, Lorg/simpleframework/xml/core/Context;->getOverride(Lorg/simpleframework/xml/strategy/Type;Lorg/simpleframework/xml/stream/InputNode;)Lorg/simpleframework/xml/strategy/Value;

    move-result-object v0

    .line 209
    if-nez v0, :cond_1

    .line 216
    :cond_0
    return-object v0

    .line 209
    :cond_1
    iget-object v1, p0, Lorg/simpleframework/xml/core/Factory;->override:Ljava/lang/Class;

    if-eqz v1, :cond_0

    .line 210
    invoke-interface {v0}, Lorg/simpleframework/xml/strategy/Value;->getType()Ljava/lang/Class;

    move-result-object v1

    .line 212
    iget-object v2, p0, Lorg/simpleframework/xml/core/Factory;->override:Ljava/lang/Class;

    invoke-static {v2, v1}, Lorg/simpleframework/xml/core/Factory;->isCompatible(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 213
    new-instance v1, Lorg/simpleframework/xml/core/OverrideValue;

    iget-object v2, p0, Lorg/simpleframework/xml/core/Factory;->override:Ljava/lang/Class;

    invoke-direct {v1, v0, v2}, Lorg/simpleframework/xml/core/OverrideValue;-><init>(Lorg/simpleframework/xml/strategy/Value;Ljava/lang/Class;)V

    return-object v1
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

    .line 116
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/Factory;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 118
    invoke-static {v0}, Lorg/simpleframework/xml/core/Factory;->isInstantiable(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 121
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 119
    :cond_0
    new-instance v1, Lorg/simpleframework/xml/core/InstantiationException;

    const-string/jumbo v2, "Type %s can not be instantiated"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-direct {v1, v2, v3}, Lorg/simpleframework/xml/core/InstantiationException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1
.end method

.method protected getOverride(Lorg/simpleframework/xml/stream/InputNode;)Lorg/simpleframework/xml/strategy/Value;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 139
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/Factory;->getConversion(Lorg/simpleframework/xml/stream/InputNode;)Lorg/simpleframework/xml/strategy/Value;

    move-result-object v0

    .line 141
    if-nez v0, :cond_1

    .line 150
    :cond_0
    return-object v0

    .line 142
    :cond_1
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getPosition()Lorg/simpleframework/xml/stream/Position;

    move-result-object v1

    .line 143
    invoke-interface {v0}, Lorg/simpleframework/xml/strategy/Value;->getType()Ljava/lang/Class;

    move-result-object v2

    .line 144
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/Factory;->getType()Ljava/lang/Class;

    move-result-object v3

    .line 146
    invoke-static {v3, v2}, Lorg/simpleframework/xml/core/Factory;->isCompatible(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 147
    new-instance v0, Lorg/simpleframework/xml/core/InstantiationException;

    const-string/jumbo v3, "Incompatible %s for %s at %s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v5

    const/4 v2, 0x1

    iget-object v5, p0, Lorg/simpleframework/xml/core/Factory;->type:Lorg/simpleframework/xml/strategy/Type;

    aput-object v5, v4, v2

    const/4 v2, 0x2

    aput-object v1, v4, v2

    invoke-direct {v0, v3, v4}, Lorg/simpleframework/xml/core/InstantiationException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lorg/simpleframework/xml/core/Factory;->override:Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 104
    iget-object v0, p0, Lorg/simpleframework/xml/core/Factory;->type:Lorg/simpleframework/xml/strategy/Type;

    invoke-interface {v0}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object v0

    return-object v0

    .line 102
    :cond_0
    iget-object v0, p0, Lorg/simpleframework/xml/core/Factory;->override:Ljava/lang/Class;

    return-object v0
.end method

.method public setOverride(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Object;Lorg/simpleframework/xml/stream/OutputNode;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 165
    invoke-interface {p1}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 167
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-nez v1, :cond_0

    .line 170
    :goto_0
    iget-object v0, p0, Lorg/simpleframework/xml/core/Factory;->context:Lorg/simpleframework/xml/core/Context;

    invoke-interface {v0, p1, p2, p3}, Lorg/simpleframework/xml/core/Context;->setOverride(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Object;Lorg/simpleframework/xml/stream/OutputNode;)Z

    move-result v0

    return v0

    .line 168
    :cond_0
    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/core/Factory;->getPrimitive(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Class;)Lorg/simpleframework/xml/strategy/Type;

    move-result-object p1

    goto :goto_0
.end method
