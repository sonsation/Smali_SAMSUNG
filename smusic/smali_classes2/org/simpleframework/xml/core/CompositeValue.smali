.class Lorg/simpleframework/xml/core/CompositeValue;
.super Ljava/lang/Object;
.source "CompositeValue.java"

# interfaces
.implements Lorg/simpleframework/xml/core/Converter;


# instance fields
.field private final context:Lorg/simpleframework/xml/core/Context;

.field private final entry:Lorg/simpleframework/xml/core/Entry;

.field private final root:Lorg/simpleframework/xml/core/Traverser;

.field private final style:Lorg/simpleframework/xml/stream/Style;

.field private final type:Lorg/simpleframework/xml/strategy/Type;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/core/Entry;Lorg/simpleframework/xml/strategy/Type;)V
    .locals 1
    .param p1, "context"    # Lorg/simpleframework/xml/core/Context;
    .param p2, "entry"    # Lorg/simpleframework/xml/core/Entry;
    .param p3, "type"    # Lorg/simpleframework/xml/strategy/Type;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Lorg/simpleframework/xml/core/Traverser;

    invoke-direct {v0, p1}, Lorg/simpleframework/xml/core/Traverser;-><init>(Lorg/simpleframework/xml/core/Context;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/CompositeValue;->root:Lorg/simpleframework/xml/core/Traverser;

    .line 76
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Context;->getStyle()Lorg/simpleframework/xml/stream/Style;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/CompositeValue;->style:Lorg/simpleframework/xml/stream/Style;

    .line 77
    iput-object p1, p0, Lorg/simpleframework/xml/core/CompositeValue;->context:Lorg/simpleframework/xml/core/Context;

    .line 78
    iput-object p2, p0, Lorg/simpleframework/xml/core/CompositeValue;->entry:Lorg/simpleframework/xml/core/Entry;

    .line 79
    iput-object p3, p0, Lorg/simpleframework/xml/core/CompositeValue;->type:Lorg/simpleframework/xml/strategy/Type;

    .line 80
    return-void
.end method


# virtual methods
.method public read(Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/Object;
    .locals 4
    .param p1, "node"    # Lorg/simpleframework/xml/stream/InputNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 93
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getNext()Lorg/simpleframework/xml/stream/InputNode;

    move-result-object v1

    .line 94
    .local v1, "next":Lorg/simpleframework/xml/stream/InputNode;
    iget-object v3, p0, Lorg/simpleframework/xml/core/CompositeValue;->type:Lorg/simpleframework/xml/strategy/Type;

    invoke-interface {v3}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 96
    .local v0, "expect":Ljava/lang/Class;
    if-nez v1, :cond_1

    .line 102
    :cond_0
    :goto_0
    return-object v2

    .line 99
    :cond_1
    invoke-interface {v1}, Lorg/simpleframework/xml/stream/InputNode;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 102
    iget-object v2, p0, Lorg/simpleframework/xml/core/CompositeValue;->root:Lorg/simpleframework/xml/core/Traverser;

    invoke-virtual {v2, v1, v0}, Lorg/simpleframework/xml/core/Traverser;->read(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0
.end method

.method public read(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "node"    # Lorg/simpleframework/xml/stream/InputNode;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 119
    iget-object v1, p0, Lorg/simpleframework/xml/core/CompositeValue;->type:Lorg/simpleframework/xml/strategy/Type;

    invoke-interface {v1}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 121
    .local v0, "expect":Ljava/lang/Class;
    if-eqz p2, :cond_0

    .line 122
    new-instance v1, Lorg/simpleframework/xml/core/PersistenceException;

    const-string v2, "Can not read value of %s for %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lorg/simpleframework/xml/core/CompositeValue;->entry:Lorg/simpleframework/xml/core/Entry;

    aput-object v5, v3, v4

    invoke-direct {v1, v2, v3}, Lorg/simpleframework/xml/core/PersistenceException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 124
    :cond_0
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/CompositeValue;->read(Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;)V
    .locals 4
    .param p1, "node"    # Lorg/simpleframework/xml/stream/OutputNode;
    .param p2, "item"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 181
    iget-object v3, p0, Lorg/simpleframework/xml/core/CompositeValue;->type:Lorg/simpleframework/xml/strategy/Type;

    invoke-interface {v3}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 182
    .local v0, "expect":Ljava/lang/Class;
    iget-object v3, p0, Lorg/simpleframework/xml/core/CompositeValue;->entry:Lorg/simpleframework/xml/core/Entry;

    invoke-virtual {v3}, Lorg/simpleframework/xml/core/Entry;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 184
    .local v1, "key":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 185
    iget-object v3, p0, Lorg/simpleframework/xml/core/CompositeValue;->context:Lorg/simpleframework/xml/core/Context;

    invoke-interface {v3, v0}, Lorg/simpleframework/xml/core/Context;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    .line 187
    :cond_0
    iget-object v3, p0, Lorg/simpleframework/xml/core/CompositeValue;->style:Lorg/simpleframework/xml/stream/Style;

    invoke-interface {v3, v1}, Lorg/simpleframework/xml/stream/Style;->getElement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 189
    .local v2, "name":Ljava/lang/String;
    iget-object v3, p0, Lorg/simpleframework/xml/core/CompositeValue;->root:Lorg/simpleframework/xml/core/Traverser;

    invoke-virtual {v3, p1, p2, v0, v2}, Lorg/simpleframework/xml/core/Traverser;->write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)V

    .line 190
    return-void
.end method
