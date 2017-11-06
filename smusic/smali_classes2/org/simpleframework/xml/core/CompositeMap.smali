.class Lorg/simpleframework/xml/core/CompositeMap;
.super Ljava/lang/Object;
.source "CompositeMap.java"

# interfaces
.implements Lorg/simpleframework/xml/core/Converter;


# instance fields
.field private final entry:Lorg/simpleframework/xml/core/Entry;

.field private final factory:Lorg/simpleframework/xml/core/MapFactory;

.field private final key:Lorg/simpleframework/xml/core/Converter;

.field private final style:Lorg/simpleframework/xml/stream/Style;

.field private final value:Lorg/simpleframework/xml/core/Converter;


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
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Lorg/simpleframework/xml/core/MapFactory;

    invoke-direct {v0, p1, p3}, Lorg/simpleframework/xml/core/MapFactory;-><init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Type;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/CompositeMap;->factory:Lorg/simpleframework/xml/core/MapFactory;

    .line 95
    invoke-virtual {p2, p1}, Lorg/simpleframework/xml/core/Entry;->getValue(Lorg/simpleframework/xml/core/Context;)Lorg/simpleframework/xml/core/Converter;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/CompositeMap;->value:Lorg/simpleframework/xml/core/Converter;

    .line 96
    invoke-virtual {p2, p1}, Lorg/simpleframework/xml/core/Entry;->getKey(Lorg/simpleframework/xml/core/Context;)Lorg/simpleframework/xml/core/Converter;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/CompositeMap;->key:Lorg/simpleframework/xml/core/Converter;

    .line 97
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Context;->getStyle()Lorg/simpleframework/xml/stream/Style;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/CompositeMap;->style:Lorg/simpleframework/xml/stream/Style;

    .line 98
    iput-object p2, p0, Lorg/simpleframework/xml/core/CompositeMap;->entry:Lorg/simpleframework/xml/core/Entry;

    .line 99
    return-void
.end method

.method private populate(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "node"    # Lorg/simpleframework/xml/stream/InputNode;
    .param p2, "result"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 167
    move-object v2, p2

    check-cast v2, Ljava/util/Map;

    .line 170
    .local v2, "map":Ljava/util/Map;
    :goto_0
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getNext()Lorg/simpleframework/xml/stream/InputNode;

    move-result-object v3

    .line 172
    .local v3, "next":Lorg/simpleframework/xml/stream/InputNode;
    if-nez v3, :cond_0

    .line 173
    return-object v2

    .line 175
    :cond_0
    iget-object v4, p0, Lorg/simpleframework/xml/core/CompositeMap;->key:Lorg/simpleframework/xml/core/Converter;

    invoke-interface {v4, v3}, Lorg/simpleframework/xml/core/Converter;->read(Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/Object;

    move-result-object v0

    .line 176
    .local v0, "index":Ljava/lang/Object;
    iget-object v4, p0, Lorg/simpleframework/xml/core/CompositeMap;->value:Lorg/simpleframework/xml/core/Converter;

    invoke-interface {v4, v3}, Lorg/simpleframework/xml/core/Converter;->read(Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/Object;

    move-result-object v1

    .line 178
    .local v1, "item":Ljava/lang/Object;
    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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
    .line 115
    iget-object v2, p0, Lorg/simpleframework/xml/core/CompositeMap;->factory:Lorg/simpleframework/xml/core/MapFactory;

    invoke-virtual {v2, p1}, Lorg/simpleframework/xml/core/MapFactory;->getInstance(Lorg/simpleframework/xml/stream/InputNode;)Lorg/simpleframework/xml/core/Instance;

    move-result-object v1

    .line 116
    .local v1, "type":Lorg/simpleframework/xml/core/Instance;
    invoke-interface {v1}, Lorg/simpleframework/xml/core/Instance;->getInstance()Ljava/lang/Object;

    move-result-object v0

    .line 118
    .local v0, "map":Ljava/lang/Object;
    invoke-interface {v1}, Lorg/simpleframework/xml/core/Instance;->isReference()Z

    move-result v2

    if-nez v2, :cond_0

    .line 119
    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/core/CompositeMap;->populate(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 121
    .end local v0    # "map":Ljava/lang/Object;
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
    .line 139
    iget-object v1, p0, Lorg/simpleframework/xml/core/CompositeMap;->factory:Lorg/simpleframework/xml/core/MapFactory;

    invoke-virtual {v1, p1}, Lorg/simpleframework/xml/core/MapFactory;->getInstance(Lorg/simpleframework/xml/stream/InputNode;)Lorg/simpleframework/xml/core/Instance;

    move-result-object v0

    .line 141
    .local v0, "type":Lorg/simpleframework/xml/core/Instance;
    invoke-interface {v0}, Lorg/simpleframework/xml/core/Instance;->isReference()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 142
    invoke-interface {v0}, Lorg/simpleframework/xml/core/Instance;->getInstance()Ljava/lang/Object;

    move-result-object p2

    .line 149
    .end local p2    # "result":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object p2

    .line 144
    .restart local p2    # "result":Ljava/lang/Object;
    :cond_1
    invoke-interface {v0, p2}, Lorg/simpleframework/xml/core/Instance;->setInstance(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    if-eqz p2, :cond_0

    .line 147
    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/CompositeMap;->populate(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0
.end method

.method public write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;)V
    .locals 8
    .param p1, "node"    # Lorg/simpleframework/xml/stream/OutputNode;
    .param p2, "source"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 249
    move-object v3, p2

    check-cast v3, Ljava/util/Map;

    .line 251
    .local v3, "map":Ljava/util/Map;
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 252
    .local v1, "index":Ljava/lang/Object;
    iget-object v7, p0, Lorg/simpleframework/xml/core/CompositeMap;->entry:Lorg/simpleframework/xml/core/Entry;

    invoke-virtual {v7}, Lorg/simpleframework/xml/core/Entry;->getEntry()Ljava/lang/String;

    move-result-object v6

    .line 253
    .local v6, "root":Ljava/lang/String;
    iget-object v7, p0, Lorg/simpleframework/xml/core/CompositeMap;->style:Lorg/simpleframework/xml/stream/Style;

    invoke-interface {v7, v6}, Lorg/simpleframework/xml/stream/Style;->getElement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 254
    .local v4, "name":Ljava/lang/String;
    invoke-interface {p1, v4}, Lorg/simpleframework/xml/stream/OutputNode;->getChild(Ljava/lang/String;)Lorg/simpleframework/xml/stream/OutputNode;

    move-result-object v5

    .line 255
    .local v5, "next":Lorg/simpleframework/xml/stream/OutputNode;
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 257
    .local v2, "item":Ljava/lang/Object;
    iget-object v7, p0, Lorg/simpleframework/xml/core/CompositeMap;->key:Lorg/simpleframework/xml/core/Converter;

    invoke-interface {v7, v5, v1}, Lorg/simpleframework/xml/core/Converter;->write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;)V

    .line 258
    iget-object v7, p0, Lorg/simpleframework/xml/core/CompositeMap;->value:Lorg/simpleframework/xml/core/Converter;

    invoke-interface {v7, v5, v2}, Lorg/simpleframework/xml/core/Converter;->write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;)V

    goto :goto_0

    .line 260
    .end local v1    # "index":Ljava/lang/Object;
    .end local v2    # "item":Ljava/lang/Object;
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "next":Lorg/simpleframework/xml/stream/OutputNode;
    .end local v6    # "root":Ljava/lang/String;
    :cond_0
    return-void
.end method
