.class Lorg/simpleframework/xml/core/CompositeList;
.super Ljava/lang/Object;
.source "CompositeList.java"

# interfaces
.implements Lorg/simpleframework/xml/core/Converter;


# instance fields
.field private final entry:Lorg/simpleframework/xml/strategy/Type;

.field private final factory:Lorg/simpleframework/xml/core/CollectionFactory;

.field private final name:Ljava/lang/String;

.field private final root:Lorg/simpleframework/xml/core/Traverser;

.field private final type:Lorg/simpleframework/xml/strategy/Type;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Type;Lorg/simpleframework/xml/strategy/Type;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Lorg/simpleframework/xml/core/Context;
    .param p2, "type"    # Lorg/simpleframework/xml/strategy/Type;
    .param p3, "entry"    # Lorg/simpleframework/xml/strategy/Type;
    .param p4, "name"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Lorg/simpleframework/xml/core/CollectionFactory;

    invoke-direct {v0, p1, p2}, Lorg/simpleframework/xml/core/CollectionFactory;-><init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Type;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/CompositeList;->factory:Lorg/simpleframework/xml/core/CollectionFactory;

    .line 98
    new-instance v0, Lorg/simpleframework/xml/core/Traverser;

    invoke-direct {v0, p1}, Lorg/simpleframework/xml/core/Traverser;-><init>(Lorg/simpleframework/xml/core/Context;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/CompositeList;->root:Lorg/simpleframework/xml/core/Traverser;

    .line 99
    iput-object p3, p0, Lorg/simpleframework/xml/core/CompositeList;->entry:Lorg/simpleframework/xml/strategy/Type;

    .line 100
    iput-object p2, p0, Lorg/simpleframework/xml/core/CompositeList;->type:Lorg/simpleframework/xml/strategy/Type;

    .line 101
    iput-object p4, p0, Lorg/simpleframework/xml/core/CompositeList;->name:Ljava/lang/String;

    .line 102
    return-void
.end method

.method private populate(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "node"    # Lorg/simpleframework/xml/stream/InputNode;
    .param p2, "result"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 166
    move-object v1, p2

    check-cast v1, Ljava/util/Collection;

    .line 169
    .local v1, "list":Ljava/util/Collection;
    :goto_0
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getNext()Lorg/simpleframework/xml/stream/InputNode;

    move-result-object v2

    .line 170
    .local v2, "next":Lorg/simpleframework/xml/stream/InputNode;
    iget-object v3, p0, Lorg/simpleframework/xml/core/CompositeList;->entry:Lorg/simpleframework/xml/strategy/Type;

    invoke-interface {v3}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 172
    .local v0, "expect":Ljava/lang/Class;
    if-nez v2, :cond_0

    .line 173
    return-object v1

    .line 175
    :cond_0
    iget-object v3, p0, Lorg/simpleframework/xml/core/CompositeList;->root:Lorg/simpleframework/xml/core/Traverser;

    invoke-virtual {v3, v2, v0}, Lorg/simpleframework/xml/core/Traverser;->read(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

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
    .line 116
    iget-object v2, p0, Lorg/simpleframework/xml/core/CompositeList;->factory:Lorg/simpleframework/xml/core/CollectionFactory;

    invoke-virtual {v2, p1}, Lorg/simpleframework/xml/core/CollectionFactory;->getInstance(Lorg/simpleframework/xml/stream/InputNode;)Lorg/simpleframework/xml/core/Instance;

    move-result-object v1

    .line 117
    .local v1, "type":Lorg/simpleframework/xml/core/Instance;
    invoke-interface {v1}, Lorg/simpleframework/xml/core/Instance;->getInstance()Ljava/lang/Object;

    move-result-object v0

    .line 119
    .local v0, "list":Ljava/lang/Object;
    invoke-interface {v1}, Lorg/simpleframework/xml/core/Instance;->isReference()Z

    move-result v2

    if-nez v2, :cond_0

    .line 120
    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/core/CompositeList;->populate(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 122
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
    .line 140
    iget-object v1, p0, Lorg/simpleframework/xml/core/CompositeList;->factory:Lorg/simpleframework/xml/core/CollectionFactory;

    invoke-virtual {v1, p1}, Lorg/simpleframework/xml/core/CollectionFactory;->getInstance(Lorg/simpleframework/xml/stream/InputNode;)Lorg/simpleframework/xml/core/Instance;

    move-result-object v0

    .line 142
    .local v0, "type":Lorg/simpleframework/xml/core/Instance;
    invoke-interface {v0}, Lorg/simpleframework/xml/core/Instance;->isReference()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 143
    invoke-interface {v0}, Lorg/simpleframework/xml/core/Instance;->getInstance()Ljava/lang/Object;

    move-result-object p2

    .line 150
    .end local p2    # "result":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object p2

    .line 145
    .restart local p2    # "result":Ljava/lang/Object;
    :cond_1
    invoke-interface {v0, p2}, Lorg/simpleframework/xml/core/Instance;->setInstance(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    if-eqz p2, :cond_0

    .line 148
    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/CompositeList;->populate(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0
.end method

.method public write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;)V
    .locals 10
    .param p1, "node"    # Lorg/simpleframework/xml/stream/OutputNode;
    .param p2, "source"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 238
    move-object v4, p2

    check-cast v4, Ljava/util/Collection;

    .line 240
    .local v4, "list":Ljava/util/Collection;
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 241
    .local v3, "item":Ljava/lang/Object;
    if-eqz v3, :cond_0

    .line 242
    iget-object v5, p0, Lorg/simpleframework/xml/core/CompositeList;->entry:Lorg/simpleframework/xml/strategy/Type;

    invoke-interface {v5}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object v1

    .line 243
    .local v1, "expect":Ljava/lang/Class;
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 245
    .local v0, "actual":Ljava/lang/Class;
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 246
    new-instance v5, Lorg/simpleframework/xml/core/PersistenceException;

    const-string v6, "Entry %s does not match %s for %s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    const/4 v8, 0x1

    iget-object v9, p0, Lorg/simpleframework/xml/core/CompositeList;->entry:Lorg/simpleframework/xml/strategy/Type;

    aput-object v9, v7, v8

    const/4 v8, 0x2

    iget-object v9, p0, Lorg/simpleframework/xml/core/CompositeList;->type:Lorg/simpleframework/xml/strategy/Type;

    aput-object v9, v7, v8

    invoke-direct {v5, v6, v7}, Lorg/simpleframework/xml/core/PersistenceException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v5

    .line 248
    :cond_1
    iget-object v5, p0, Lorg/simpleframework/xml/core/CompositeList;->root:Lorg/simpleframework/xml/core/Traverser;

    iget-object v6, p0, Lorg/simpleframework/xml/core/CompositeList;->name:Ljava/lang/String;

    invoke-virtual {v5, p1, v3, v1, v6}, Lorg/simpleframework/xml/core/Traverser;->write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0

    .line 251
    .end local v0    # "actual":Ljava/lang/Class;
    .end local v1    # "expect":Ljava/lang/Class;
    .end local v3    # "item":Ljava/lang/Object;
    :cond_2
    return-void
.end method
