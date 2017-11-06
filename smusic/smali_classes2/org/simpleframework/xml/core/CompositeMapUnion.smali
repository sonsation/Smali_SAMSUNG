.class Lorg/simpleframework/xml/core/CompositeMapUnion;
.super Ljava/lang/Object;
.source "CompositeMapUnion.java"

# interfaces
.implements Lorg/simpleframework/xml/core/Repeater;


# instance fields
.field private final context:Lorg/simpleframework/xml/core/Context;

.field private final elements:Lorg/simpleframework/xml/core/LabelMap;

.field private final group:Lorg/simpleframework/xml/core/Group;

.field private final path:Lorg/simpleframework/xml/core/Expression;

.field private final style:Lorg/simpleframework/xml/stream/Style;

.field private final type:Lorg/simpleframework/xml/strategy/Type;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/core/Group;Lorg/simpleframework/xml/core/Expression;Lorg/simpleframework/xml/strategy/Type;)V
    .locals 1
    .param p1, "context"    # Lorg/simpleframework/xml/core/Context;
    .param p2, "group"    # Lorg/simpleframework/xml/core/Group;
    .param p3, "path"    # Lorg/simpleframework/xml/core/Expression;
    .param p4, "type"    # Lorg/simpleframework/xml/strategy/Type;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    invoke-interface {p2}, Lorg/simpleframework/xml/core/Group;->getElements()Lorg/simpleframework/xml/core/LabelMap;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/CompositeMapUnion;->elements:Lorg/simpleframework/xml/core/LabelMap;

    .line 85
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Context;->getStyle()Lorg/simpleframework/xml/stream/Style;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/CompositeMapUnion;->style:Lorg/simpleframework/xml/stream/Style;

    .line 86
    iput-object p1, p0, Lorg/simpleframework/xml/core/CompositeMapUnion;->context:Lorg/simpleframework/xml/core/Context;

    .line 87
    iput-object p2, p0, Lorg/simpleframework/xml/core/CompositeMapUnion;->group:Lorg/simpleframework/xml/core/Group;

    .line 88
    iput-object p4, p0, Lorg/simpleframework/xml/core/CompositeMapUnion;->type:Lorg/simpleframework/xml/strategy/Type;

    .line 89
    iput-object p3, p0, Lorg/simpleframework/xml/core/CompositeMapUnion;->path:Lorg/simpleframework/xml/core/Expression;

    .line 90
    return-void
.end method

.method private write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Ljava/lang/Object;Lorg/simpleframework/xml/core/Label;)V
    .locals 5
    .param p1, "node"    # Lorg/simpleframework/xml/stream/OutputNode;
    .param p2, "key"    # Ljava/lang/Object;
    .param p3, "item"    # Ljava/lang/Object;
    .param p4, "label"    # Lorg/simpleframework/xml/core/Label;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 216
    iget-object v4, p0, Lorg/simpleframework/xml/core/CompositeMapUnion;->context:Lorg/simpleframework/xml/core/Context;

    invoke-interface {p4, v4}, Lorg/simpleframework/xml/core/Label;->getConverter(Lorg/simpleframework/xml/core/Context;)Lorg/simpleframework/xml/core/Converter;

    move-result-object v0

    .line 217
    .local v0, "converter":Lorg/simpleframework/xml/core/Converter;
    invoke-static {p2, p3}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    .line 219
    .local v1, "map":Ljava/util/Map;
    invoke-interface {p4}, Lorg/simpleframework/xml/core/Label;->isInline()Z

    move-result v4

    if-nez v4, :cond_0

    .line 220
    invoke-interface {p4}, Lorg/simpleframework/xml/core/Label;->getName()Ljava/lang/String;

    move-result-object v2

    .line 221
    .local v2, "name":Ljava/lang/String;
    iget-object v4, p0, Lorg/simpleframework/xml/core/CompositeMapUnion;->style:Lorg/simpleframework/xml/stream/Style;

    invoke-interface {v4, v2}, Lorg/simpleframework/xml/stream/Style;->getElement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 223
    .local v3, "root":Ljava/lang/String;
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/OutputNode;->isCommitted()Z

    move-result v4

    if-nez v4, :cond_0

    .line 224
    invoke-interface {p1, v3}, Lorg/simpleframework/xml/stream/OutputNode;->setName(Ljava/lang/String;)V

    .line 227
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "root":Ljava/lang/String;
    :cond_0
    invoke-interface {v0, p1, v1}, Lorg/simpleframework/xml/core/Converter;->write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;)V

    .line 228
    return-void
.end method

.method private write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/util/Map;)V
    .locals 10
    .param p1, "node"    # Lorg/simpleframework/xml/stream/OutputNode;
    .param p2, "map"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 188
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 189
    .local v2, "key":Ljava/lang/Object;
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 191
    .local v1, "item":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 192
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 193
    .local v4, "real":Ljava/lang/Class;
    iget-object v5, p0, Lorg/simpleframework/xml/core/CompositeMapUnion;->group:Lorg/simpleframework/xml/core/Group;

    invoke-interface {v5, v4}, Lorg/simpleframework/xml/core/Group;->getLabel(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Label;

    move-result-object v3

    .line 195
    .local v3, "label":Lorg/simpleframework/xml/core/Label;
    if-nez v3, :cond_1

    .line 196
    new-instance v5, Lorg/simpleframework/xml/core/UnionException;

    const-string v6, "Value of %s not declared in %s with annotation %s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    const/4 v8, 0x1

    iget-object v9, p0, Lorg/simpleframework/xml/core/CompositeMapUnion;->type:Lorg/simpleframework/xml/strategy/Type;

    aput-object v9, v7, v8

    const/4 v8, 0x2

    iget-object v9, p0, Lorg/simpleframework/xml/core/CompositeMapUnion;->group:Lorg/simpleframework/xml/core/Group;

    aput-object v9, v7, v8

    invoke-direct {v5, v6, v7}, Lorg/simpleframework/xml/core/UnionException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v5

    .line 198
    :cond_1
    invoke-direct {p0, p1, v2, v1, v3}, Lorg/simpleframework/xml/core/CompositeMapUnion;->write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Ljava/lang/Object;Lorg/simpleframework/xml/core/Label;)V

    goto :goto_0

    .line 201
    .end local v1    # "item":Ljava/lang/Object;
    .end local v2    # "key":Ljava/lang/Object;
    .end local v3    # "label":Lorg/simpleframework/xml/core/Label;
    .end local v4    # "real":Ljava/lang/Class;
    :cond_2
    return-void
.end method


# virtual methods
.method public read(Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/Object;
    .locals 5
    .param p1, "node"    # Lorg/simpleframework/xml/stream/InputNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 104
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getName()Ljava/lang/String;

    move-result-object v3

    .line 105
    .local v3, "name":Ljava/lang/String;
    iget-object v4, p0, Lorg/simpleframework/xml/core/CompositeMapUnion;->path:Lorg/simpleframework/xml/core/Expression;

    invoke-interface {v4, v3}, Lorg/simpleframework/xml/core/Expression;->getElement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 106
    .local v1, "element":Ljava/lang/String;
    iget-object v4, p0, Lorg/simpleframework/xml/core/CompositeMapUnion;->elements:Lorg/simpleframework/xml/core/LabelMap;

    invoke-virtual {v4, v1}, Lorg/simpleframework/xml/core/LabelMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/simpleframework/xml/core/Label;

    .line 107
    .local v2, "label":Lorg/simpleframework/xml/core/Label;
    iget-object v4, p0, Lorg/simpleframework/xml/core/CompositeMapUnion;->context:Lorg/simpleframework/xml/core/Context;

    invoke-interface {v2, v4}, Lorg/simpleframework/xml/core/Label;->getConverter(Lorg/simpleframework/xml/core/Context;)Lorg/simpleframework/xml/core/Converter;

    move-result-object v0

    .line 109
    .local v0, "converter":Lorg/simpleframework/xml/core/Converter;
    invoke-interface {v0, p1}, Lorg/simpleframework/xml/core/Converter;->read(Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/Object;

    move-result-object v4

    return-object v4
.end method

.method public read(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "node"    # Lorg/simpleframework/xml/stream/InputNode;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 125
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getName()Ljava/lang/String;

    move-result-object v3

    .line 126
    .local v3, "name":Ljava/lang/String;
    iget-object v4, p0, Lorg/simpleframework/xml/core/CompositeMapUnion;->path:Lorg/simpleframework/xml/core/Expression;

    invoke-interface {v4, v3}, Lorg/simpleframework/xml/core/Expression;->getElement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 127
    .local v1, "element":Ljava/lang/String;
    iget-object v4, p0, Lorg/simpleframework/xml/core/CompositeMapUnion;->elements:Lorg/simpleframework/xml/core/LabelMap;

    invoke-virtual {v4, v1}, Lorg/simpleframework/xml/core/LabelMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/simpleframework/xml/core/Label;

    .line 128
    .local v2, "label":Lorg/simpleframework/xml/core/Label;
    iget-object v4, p0, Lorg/simpleframework/xml/core/CompositeMapUnion;->context:Lorg/simpleframework/xml/core/Context;

    invoke-interface {v2, v4}, Lorg/simpleframework/xml/core/Label;->getConverter(Lorg/simpleframework/xml/core/Context;)Lorg/simpleframework/xml/core/Converter;

    move-result-object v0

    .line 130
    .local v0, "converter":Lorg/simpleframework/xml/core/Converter;
    invoke-interface {v0, p1, p2}, Lorg/simpleframework/xml/core/Converter;->read(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    return-object v4
.end method

.method public write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;)V
    .locals 2
    .param p1, "node"    # Lorg/simpleframework/xml/stream/OutputNode;
    .param p2, "source"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 164
    move-object v0, p2

    check-cast v0, Ljava/util/Map;

    .line 166
    .local v0, "map":Ljava/util/Map;
    iget-object v1, p0, Lorg/simpleframework/xml/core/CompositeMapUnion;->group:Lorg/simpleframework/xml/core/Group;

    invoke-interface {v1}, Lorg/simpleframework/xml/core/Group;->isInline()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 167
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 168
    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/core/CompositeMapUnion;->write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/util/Map;)V

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 169
    :cond_1
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/OutputNode;->isCommitted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 170
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/OutputNode;->remove()V

    goto :goto_0

    .line 173
    :cond_2
    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/core/CompositeMapUnion;->write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/util/Map;)V

    goto :goto_0
.end method
