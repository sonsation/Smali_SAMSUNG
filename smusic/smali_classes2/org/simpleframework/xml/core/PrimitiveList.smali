.class Lorg/simpleframework/xml/core/PrimitiveList;
.super Ljava/lang/Object;
.source "PrimitiveList.java"

# interfaces
.implements Lorg/simpleframework/xml/core/Converter;


# instance fields
.field private final entry:Lorg/simpleframework/xml/strategy/Type;

.field private final factory:Lorg/simpleframework/xml/core/CollectionFactory;

.field private final parent:Ljava/lang/String;

.field private final root:Lorg/simpleframework/xml/core/Primitive;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Type;Lorg/simpleframework/xml/strategy/Type;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Lorg/simpleframework/xml/core/Context;
    .param p2, "type"    # Lorg/simpleframework/xml/strategy/Type;
    .param p3, "entry"    # Lorg/simpleframework/xml/strategy/Type;
    .param p4, "parent"    # Ljava/lang/String;

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Lorg/simpleframework/xml/core/CollectionFactory;

    invoke-direct {v0, p1, p2}, Lorg/simpleframework/xml/core/CollectionFactory;-><init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Type;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/PrimitiveList;->factory:Lorg/simpleframework/xml/core/CollectionFactory;

    .line 90
    new-instance v0, Lorg/simpleframework/xml/core/Primitive;

    invoke-direct {v0, p1, p3}, Lorg/simpleframework/xml/core/Primitive;-><init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Type;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/PrimitiveList;->root:Lorg/simpleframework/xml/core/Primitive;

    .line 91
    iput-object p4, p0, Lorg/simpleframework/xml/core/PrimitiveList;->parent:Ljava/lang/String;

    .line 92
    iput-object p3, p0, Lorg/simpleframework/xml/core/PrimitiveList;->entry:Lorg/simpleframework/xml/strategy/Type;

    .line 93
    return-void
.end method

.method private isOverridden(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "node"    # Lorg/simpleframework/xml/stream/OutputNode;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 248
    iget-object v0, p0, Lorg/simpleframework/xml/core/PrimitiveList;->factory:Lorg/simpleframework/xml/core/CollectionFactory;

    iget-object v1, p0, Lorg/simpleframework/xml/core/PrimitiveList;->entry:Lorg/simpleframework/xml/strategy/Type;

    invoke-virtual {v0, v1, p2, p1}, Lorg/simpleframework/xml/core/CollectionFactory;->setOverride(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Object;Lorg/simpleframework/xml/stream/OutputNode;)Z

    move-result v0

    return v0
.end method

.method private populate(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "node"    # Lorg/simpleframework/xml/stream/InputNode;
    .param p2, "result"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 155
    move-object v0, p2

    check-cast v0, Ljava/util/Collection;

    .line 158
    .local v0, "list":Ljava/util/Collection;
    :goto_0
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getNext()Lorg/simpleframework/xml/stream/InputNode;

    move-result-object v1

    .line 160
    .local v1, "next":Lorg/simpleframework/xml/stream/InputNode;
    if-nez v1, :cond_0

    .line 161
    return-object v0

    .line 163
    :cond_0
    iget-object v2, p0, Lorg/simpleframework/xml/core/PrimitiveList;->root:Lorg/simpleframework/xml/core/Primitive;

    invoke-virtual {v2, v1}, Lorg/simpleframework/xml/core/Primitive;->read(Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0
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
    .line 106
    iget-object v2, p0, Lorg/simpleframework/xml/core/PrimitiveList;->factory:Lorg/simpleframework/xml/core/CollectionFactory;

    invoke-virtual {v2, p1}, Lorg/simpleframework/xml/core/CollectionFactory;->getInstance(Lorg/simpleframework/xml/stream/InputNode;)Lorg/simpleframework/xml/core/Instance;

    move-result-object v1

    .line 107
    .local v1, "type":Lorg/simpleframework/xml/core/Instance;
    invoke-interface {v1}, Lorg/simpleframework/xml/core/Instance;->getInstance()Ljava/lang/Object;

    move-result-object v0

    .line 109
    .local v0, "list":Ljava/lang/Object;
    invoke-interface {v1}, Lorg/simpleframework/xml/core/Instance;->isReference()Z

    move-result v2

    if-nez v2, :cond_0

    .line 110
    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/core/PrimitiveList;->populate(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 112
    .end local v0    # "list":Ljava/lang/Object;
    :cond_0
    return-object v0
.end method

.method public read(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "node"    # Lorg/simpleframework/xml/stream/InputNode;
    .param p2, "result"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 130
    iget-object v1, p0, Lorg/simpleframework/xml/core/PrimitiveList;->factory:Lorg/simpleframework/xml/core/CollectionFactory;

    invoke-virtual {v1, p1}, Lorg/simpleframework/xml/core/CollectionFactory;->getInstance(Lorg/simpleframework/xml/stream/InputNode;)Lorg/simpleframework/xml/core/Instance;

    move-result-object v0

    .line 132
    .local v0, "type":Lorg/simpleframework/xml/core/Instance;
    invoke-interface {v0}, Lorg/simpleframework/xml/core/Instance;->isReference()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 133
    invoke-interface {v0}, Lorg/simpleframework/xml/core/Instance;->getInstance()Ljava/lang/Object;

    move-result-object p2

    .line 140
    .end local p2    # "result":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object p2

    .line 135
    .restart local p2    # "result":Ljava/lang/Object;
    :cond_1
    invoke-interface {v0, p2}, Lorg/simpleframework/xml/core/Instance;->setInstance(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    if-eqz p2, :cond_0

    .line 138
    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/PrimitiveList;->populate(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0
.end method

.method public write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;)V
    .locals 5
    .param p1, "node"    # Lorg/simpleframework/xml/stream/OutputNode;
    .param p2, "source"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 223
    move-object v3, p2

    check-cast v3, Ljava/util/Collection;

    .line 225
    .local v3, "list":Ljava/util/Collection;
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 226
    .local v2, "item":Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 227
    iget-object v4, p0, Lorg/simpleframework/xml/core/PrimitiveList;->parent:Ljava/lang/String;

    invoke-interface {p1, v4}, Lorg/simpleframework/xml/stream/OutputNode;->getChild(Ljava/lang/String;)Lorg/simpleframework/xml/stream/OutputNode;

    move-result-object v0

    .line 229
    .local v0, "child":Lorg/simpleframework/xml/stream/OutputNode;
    invoke-direct {p0, v0, v2}, Lorg/simpleframework/xml/core/PrimitiveList;->isOverridden(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 230
    iget-object v4, p0, Lorg/simpleframework/xml/core/PrimitiveList;->root:Lorg/simpleframework/xml/core/Primitive;

    invoke-virtual {v4, v0, v2}, Lorg/simpleframework/xml/core/Primitive;->write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;)V

    goto :goto_0

    .line 234
    .end local v0    # "child":Lorg/simpleframework/xml/stream/OutputNode;
    .end local v2    # "item":Ljava/lang/Object;
    :cond_1
    return-void
.end method
