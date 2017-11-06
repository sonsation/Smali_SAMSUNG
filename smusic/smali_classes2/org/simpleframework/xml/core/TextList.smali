.class Lorg/simpleframework/xml/core/TextList;
.super Ljava/lang/Object;
.source "TextList.java"

# interfaces
.implements Lorg/simpleframework/xml/core/Repeater;


# instance fields
.field private final factory:Lorg/simpleframework/xml/core/CollectionFactory;

.field private final primitive:Lorg/simpleframework/xml/core/Primitive;

.field private final type:Lorg/simpleframework/xml/strategy/Type;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Type;Lorg/simpleframework/xml/core/Label;)V
    .locals 2
    .param p1, "context"    # Lorg/simpleframework/xml/core/Context;
    .param p2, "list"    # Lorg/simpleframework/xml/strategy/Type;
    .param p3, "label"    # Lorg/simpleframework/xml/core/Label;

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Lorg/simpleframework/xml/core/ClassType;

    const-class v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/simpleframework/xml/core/ClassType;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/TextList;->type:Lorg/simpleframework/xml/strategy/Type;

    .line 65
    new-instance v0, Lorg/simpleframework/xml/core/CollectionFactory;

    invoke-direct {v0, p1, p2}, Lorg/simpleframework/xml/core/CollectionFactory;-><init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Type;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/TextList;->factory:Lorg/simpleframework/xml/core/CollectionFactory;

    .line 66
    new-instance v0, Lorg/simpleframework/xml/core/Primitive;

    iget-object v1, p0, Lorg/simpleframework/xml/core/TextList;->type:Lorg/simpleframework/xml/strategy/Type;

    invoke-direct {v0, p1, v1}, Lorg/simpleframework/xml/core/Primitive;-><init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Type;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/TextList;->primitive:Lorg/simpleframework/xml/core/Primitive;

    .line 67
    return-void
.end method


# virtual methods
.method public read(Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/Object;
    .locals 3
    .param p1, "node"    # Lorg/simpleframework/xml/stream/InputNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 80
    iget-object v2, p0, Lorg/simpleframework/xml/core/TextList;->factory:Lorg/simpleframework/xml/core/CollectionFactory;

    invoke-virtual {v2, p1}, Lorg/simpleframework/xml/core/CollectionFactory;->getInstance(Lorg/simpleframework/xml/stream/InputNode;)Lorg/simpleframework/xml/core/Instance;

    move-result-object v1

    .line 81
    .local v1, "value":Lorg/simpleframework/xml/core/Instance;
    invoke-interface {v1}, Lorg/simpleframework/xml/core/Instance;->getInstance()Ljava/lang/Object;

    move-result-object v0

    .line 83
    .local v0, "data":Ljava/lang/Object;
    invoke-interface {v1}, Lorg/simpleframework/xml/core/Instance;->isReference()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 84
    invoke-interface {v1}, Lorg/simpleframework/xml/core/Instance;->getInstance()Ljava/lang/Object;

    move-result-object v2

    .line 86
    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {p0, p1, v0}, Lorg/simpleframework/xml/core/TextList;->read(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0
.end method

.method public read(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "node"    # Lorg/simpleframework/xml/stream/InputNode;
    .param p2, "result"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 101
    move-object v0, p2

    check-cast v0, Ljava/util/Collection;

    .line 102
    .local v0, "list":Ljava/util/Collection;
    iget-object v2, p0, Lorg/simpleframework/xml/core/TextList;->primitive:Lorg/simpleframework/xml/core/Primitive;

    invoke-virtual {v2, p1}, Lorg/simpleframework/xml/core/Primitive;->read(Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/Object;

    move-result-object v1

    .line 104
    .local v1, "value":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 105
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 107
    :cond_0
    return-object p2
.end method

.method public write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;)V
    .locals 5
    .param p1, "node"    # Lorg/simpleframework/xml/stream/OutputNode;
    .param p2, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 133
    move-object v2, p2

    check-cast v2, Ljava/util/Collection;

    .line 134
    .local v2, "list":Ljava/util/Collection;
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/OutputNode;->getParent()Lorg/simpleframework/xml/stream/OutputNode;

    move-result-object v3

    .line 136
    .local v3, "parent":Lorg/simpleframework/xml/stream/OutputNode;
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 137
    .local v1, "item":Ljava/lang/Object;
    iget-object v4, p0, Lorg/simpleframework/xml/core/TextList;->primitive:Lorg/simpleframework/xml/core/Primitive;

    invoke-virtual {v4, v3, v1}, Lorg/simpleframework/xml/core/Primitive;->write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;)V

    goto :goto_0

    .line 139
    .end local v1    # "item":Ljava/lang/Object;
    :cond_0
    return-void
.end method
