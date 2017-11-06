.class Lorg/simpleframework/xml/core/ObjectFactory;
.super Lorg/simpleframework/xml/core/PrimitiveFactory;
.source "ObjectFactory.java"


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Class;)V
    .locals 0
    .param p1, "context"    # Lorg/simpleframework/xml/core/Context;
    .param p2, "type"    # Lorg/simpleframework/xml/strategy/Type;
    .param p3, "override"    # Ljava/lang/Class;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Lorg/simpleframework/xml/core/PrimitiveFactory;-><init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Class;)V

    .line 49
    return-void
.end method


# virtual methods
.method public getInstance(Lorg/simpleframework/xml/stream/InputNode;)Lorg/simpleframework/xml/core/Instance;
    .locals 7
    .param p1, "node"    # Lorg/simpleframework/xml/stream/InputNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/ObjectFactory;->getOverride(Lorg/simpleframework/xml/stream/InputNode;)Lorg/simpleframework/xml/strategy/Value;

    move-result-object v1

    .line 64
    .local v1, "value":Lorg/simpleframework/xml/strategy/Value;
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/ObjectFactory;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 66
    .local v0, "expect":Ljava/lang/Class;
    if-nez v1, :cond_1

    .line 67
    invoke-static {v0}, Lorg/simpleframework/xml/core/ObjectFactory;->isInstantiable(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 68
    new-instance v2, Lorg/simpleframework/xml/core/InstantiationException;

    const-string v3, "Cannot instantiate %s for %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lorg/simpleframework/xml/core/ObjectFactory;->type:Lorg/simpleframework/xml/strategy/Type;

    aput-object v6, v4, v5

    invoke-direct {v2, v3, v4}, Lorg/simpleframework/xml/core/InstantiationException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2

    .line 70
    :cond_0
    iget-object v2, p0, Lorg/simpleframework/xml/core/ObjectFactory;->context:Lorg/simpleframework/xml/core/Context;

    invoke-interface {v2, v0}, Lorg/simpleframework/xml/core/Context;->getInstance(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Instance;

    move-result-object v2

    .line 72
    :goto_0
    return-object v2

    :cond_1
    new-instance v2, Lorg/simpleframework/xml/core/ObjectInstance;

    iget-object v3, p0, Lorg/simpleframework/xml/core/ObjectFactory;->context:Lorg/simpleframework/xml/core/Context;

    invoke-direct {v2, v3, v1}, Lorg/simpleframework/xml/core/ObjectInstance;-><init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Value;)V

    goto :goto_0
.end method
