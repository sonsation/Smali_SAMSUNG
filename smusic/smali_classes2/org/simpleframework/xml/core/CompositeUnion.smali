.class Lorg/simpleframework/xml/core/CompositeUnion;
.super Ljava/lang/Object;
.source "CompositeUnion.java"

# interfaces
.implements Lorg/simpleframework/xml/core/Converter;


# instance fields
.field private final context:Lorg/simpleframework/xml/core/Context;

.field private final elements:Lorg/simpleframework/xml/core/LabelMap;

.field private final group:Lorg/simpleframework/xml/core/Group;

.field private final path:Lorg/simpleframework/xml/core/Expression;

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
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    invoke-interface {p2}, Lorg/simpleframework/xml/core/Group;->getElements()Lorg/simpleframework/xml/core/LabelMap;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/CompositeUnion;->elements:Lorg/simpleframework/xml/core/LabelMap;

    .line 76
    iput-object p1, p0, Lorg/simpleframework/xml/core/CompositeUnion;->context:Lorg/simpleframework/xml/core/Context;

    .line 77
    iput-object p2, p0, Lorg/simpleframework/xml/core/CompositeUnion;->group:Lorg/simpleframework/xml/core/Group;

    .line 78
    iput-object p4, p0, Lorg/simpleframework/xml/core/CompositeUnion;->type:Lorg/simpleframework/xml/strategy/Type;

    .line 79
    iput-object p3, p0, Lorg/simpleframework/xml/core/CompositeUnion;->path:Lorg/simpleframework/xml/core/Expression;

    .line 80
    return-void
.end method

.method private write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Label;)V
    .locals 1
    .param p1, "node"    # Lorg/simpleframework/xml/stream/OutputNode;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "label"    # Lorg/simpleframework/xml/core/Label;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 175
    iget-object v0, p0, Lorg/simpleframework/xml/core/CompositeUnion;->context:Lorg/simpleframework/xml/core/Context;

    invoke-interface {p3, v0}, Lorg/simpleframework/xml/core/Label;->getConverter(Lorg/simpleframework/xml/core/Context;)Lorg/simpleframework/xml/core/Converter;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/simpleframework/xml/core/Converter;->write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;)V

    .line 176
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
    .line 94
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getName()Ljava/lang/String;

    move-result-object v3

    .line 95
    .local v3, "name":Ljava/lang/String;
    iget-object v4, p0, Lorg/simpleframework/xml/core/CompositeUnion;->path:Lorg/simpleframework/xml/core/Expression;

    invoke-interface {v4, v3}, Lorg/simpleframework/xml/core/Expression;->getElement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 96
    .local v1, "element":Ljava/lang/String;
    iget-object v4, p0, Lorg/simpleframework/xml/core/CompositeUnion;->elements:Lorg/simpleframework/xml/core/LabelMap;

    invoke-virtual {v4, v1}, Lorg/simpleframework/xml/core/LabelMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/simpleframework/xml/core/Label;

    .line 97
    .local v2, "label":Lorg/simpleframework/xml/core/Label;
    iget-object v4, p0, Lorg/simpleframework/xml/core/CompositeUnion;->context:Lorg/simpleframework/xml/core/Context;

    invoke-interface {v2, v4}, Lorg/simpleframework/xml/core/Label;->getConverter(Lorg/simpleframework/xml/core/Context;)Lorg/simpleframework/xml/core/Converter;

    move-result-object v0

    .line 99
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
    .line 115
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getName()Ljava/lang/String;

    move-result-object v3

    .line 116
    .local v3, "name":Ljava/lang/String;
    iget-object v4, p0, Lorg/simpleframework/xml/core/CompositeUnion;->path:Lorg/simpleframework/xml/core/Expression;

    invoke-interface {v4, v3}, Lorg/simpleframework/xml/core/Expression;->getElement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 117
    .local v1, "element":Ljava/lang/String;
    iget-object v4, p0, Lorg/simpleframework/xml/core/CompositeUnion;->elements:Lorg/simpleframework/xml/core/LabelMap;

    invoke-virtual {v4, v1}, Lorg/simpleframework/xml/core/LabelMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/simpleframework/xml/core/Label;

    .line 118
    .local v2, "label":Lorg/simpleframework/xml/core/Label;
    iget-object v4, p0, Lorg/simpleframework/xml/core/CompositeUnion;->context:Lorg/simpleframework/xml/core/Context;

    invoke-interface {v2, v4}, Lorg/simpleframework/xml/core/Label;->getConverter(Lorg/simpleframework/xml/core/Context;)Lorg/simpleframework/xml/core/Converter;

    move-result-object v0

    .line 120
    .local v0, "converter":Lorg/simpleframework/xml/core/Converter;
    invoke-interface {v0, p1, p2}, Lorg/simpleframework/xml/core/Converter;->read(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    return-object v4
.end method

.method public write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;)V
    .locals 7
    .param p1, "node"    # Lorg/simpleframework/xml/stream/OutputNode;
    .param p2, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 154
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 155
    .local v1, "real":Ljava/lang/Class;
    iget-object v2, p0, Lorg/simpleframework/xml/core/CompositeUnion;->group:Lorg/simpleframework/xml/core/Group;

    invoke-interface {v2, v1}, Lorg/simpleframework/xml/core/Group;->getLabel(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Label;

    move-result-object v0

    .line 157
    .local v0, "label":Lorg/simpleframework/xml/core/Label;
    if-nez v0, :cond_0

    .line 158
    new-instance v2, Lorg/simpleframework/xml/core/UnionException;

    const-string v3, "Value of %s not declared in %s with annotation %s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lorg/simpleframework/xml/core/CompositeUnion;->type:Lorg/simpleframework/xml/strategy/Type;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget-object v6, p0, Lorg/simpleframework/xml/core/CompositeUnion;->group:Lorg/simpleframework/xml/core/Group;

    aput-object v6, v4, v5

    invoke-direct {v2, v3, v4}, Lorg/simpleframework/xml/core/UnionException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2

    .line 160
    :cond_0
    invoke-direct {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/CompositeUnion;->write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Label;)V

    .line 161
    return-void
.end method
