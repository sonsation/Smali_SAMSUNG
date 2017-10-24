.class Lorg/simpleframework/xml/core/CompositeListUnion;
.super Ljava/lang/Object;
.source "CompositeListUnion.java"

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

    iput-object v0, p0, Lorg/simpleframework/xml/core/CompositeListUnion;->elements:Lorg/simpleframework/xml/core/LabelMap;

    .line 85
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Context;->getStyle()Lorg/simpleframework/xml/stream/Style;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/CompositeListUnion;->style:Lorg/simpleframework/xml/stream/Style;

    .line 86
    iput-object p1, p0, Lorg/simpleframework/xml/core/CompositeListUnion;->context:Lorg/simpleframework/xml/core/Context;

    .line 87
    iput-object p2, p0, Lorg/simpleframework/xml/core/CompositeListUnion;->group:Lorg/simpleframework/xml/core/Group;

    .line 88
    iput-object p4, p0, Lorg/simpleframework/xml/core/CompositeListUnion;->type:Lorg/simpleframework/xml/strategy/Type;

    .line 89
    iput-object p3, p0, Lorg/simpleframework/xml/core/CompositeListUnion;->path:Lorg/simpleframework/xml/core/Expression;

    .line 90
    return-void
.end method

.method private readElement(Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 124
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getName()Ljava/lang/String;

    move-result-object v0

    .line 125
    iget-object v1, p0, Lorg/simpleframework/xml/core/CompositeListUnion;->path:Lorg/simpleframework/xml/core/Expression;

    invoke-interface {v1, v0}, Lorg/simpleframework/xml/core/Expression;->getElement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 126
    iget-object v1, p0, Lorg/simpleframework/xml/core/CompositeListUnion;->elements:Lorg/simpleframework/xml/core/LabelMap;

    invoke-virtual {v1, v0}, Lorg/simpleframework/xml/core/LabelMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/Label;

    .line 127
    iget-object v1, p0, Lorg/simpleframework/xml/core/CompositeListUnion;->context:Lorg/simpleframework/xml/core/Context;

    invoke-interface {v0, v1}, Lorg/simpleframework/xml/core/Label;->getConverter(Lorg/simpleframework/xml/core/Context;)Lorg/simpleframework/xml/core/Converter;

    move-result-object v0

    .line 129
    invoke-interface {v0, p1}, Lorg/simpleframework/xml/core/Converter;->read(Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private readElement(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 184
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getName()Ljava/lang/String;

    move-result-object v0

    .line 185
    iget-object v1, p0, Lorg/simpleframework/xml/core/CompositeListUnion;->path:Lorg/simpleframework/xml/core/Expression;

    invoke-interface {v1, v0}, Lorg/simpleframework/xml/core/Expression;->getElement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 186
    iget-object v1, p0, Lorg/simpleframework/xml/core/CompositeListUnion;->elements:Lorg/simpleframework/xml/core/LabelMap;

    invoke-virtual {v1, v0}, Lorg/simpleframework/xml/core/LabelMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/Label;

    .line 187
    iget-object v1, p0, Lorg/simpleframework/xml/core/CompositeListUnion;->context:Lorg/simpleframework/xml/core/Context;

    invoke-interface {v0, v1}, Lorg/simpleframework/xml/core/Label;->getConverter(Lorg/simpleframework/xml/core/Context;)Lorg/simpleframework/xml/core/Converter;

    move-result-object v0

    .line 189
    invoke-interface {v0, p1, p2}, Lorg/simpleframework/xml/core/Converter;->read(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private readText(Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 143
    iget-object v0, p0, Lorg/simpleframework/xml/core/CompositeListUnion;->group:Lorg/simpleframework/xml/core/Group;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Group;->getText()Lorg/simpleframework/xml/core/Label;

    move-result-object v0

    .line 144
    iget-object v1, p0, Lorg/simpleframework/xml/core/CompositeListUnion;->context:Lorg/simpleframework/xml/core/Context;

    invoke-interface {v0, v1}, Lorg/simpleframework/xml/core/Label;->getConverter(Lorg/simpleframework/xml/core/Context;)Lorg/simpleframework/xml/core/Converter;

    move-result-object v0

    .line 146
    invoke-interface {v0, p1}, Lorg/simpleframework/xml/core/Converter;->read(Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private readText(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 204
    iget-object v0, p0, Lorg/simpleframework/xml/core/CompositeListUnion;->group:Lorg/simpleframework/xml/core/Group;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Group;->getText()Lorg/simpleframework/xml/core/Label;

    move-result-object v0

    .line 205
    iget-object v1, p0, Lorg/simpleframework/xml/core/CompositeListUnion;->context:Lorg/simpleframework/xml/core/Context;

    invoke-interface {v0, v1}, Lorg/simpleframework/xml/core/Label;->getConverter(Lorg/simpleframework/xml/core/Context;)Lorg/simpleframework/xml/core/Converter;

    move-result-object v0

    .line 206
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getParent()Lorg/simpleframework/xml/stream/InputNode;

    move-result-object v1

    .line 208
    invoke-interface {v0, v1, p2}, Lorg/simpleframework/xml/core/Converter;->read(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Label;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 291
    iget-object v0, p0, Lorg/simpleframework/xml/core/CompositeListUnion;->context:Lorg/simpleframework/xml/core/Context;

    invoke-interface {p3, v0}, Lorg/simpleframework/xml/core/Label;->getConverter(Lorg/simpleframework/xml/core/Context;)Lorg/simpleframework/xml/core/Converter;

    move-result-object v0

    .line 292
    invoke-static {p2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    .line 294
    invoke-interface {p3}, Lorg/simpleframework/xml/core/Label;->isInline()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 302
    :cond_0
    :goto_0
    invoke-interface {v0, p1, v1}, Lorg/simpleframework/xml/core/Converter;->write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;)V

    .line 303
    return-void

    .line 295
    :cond_1
    invoke-interface {p3}, Lorg/simpleframework/xml/core/Label;->getName()Ljava/lang/String;

    move-result-object v2

    .line 296
    iget-object v3, p0, Lorg/simpleframework/xml/core/CompositeListUnion;->style:Lorg/simpleframework/xml/stream/Style;

    invoke-interface {v3, v2}, Lorg/simpleframework/xml/stream/Style;->getElement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 298
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/OutputNode;->isCommitted()Z

    move-result v3

    if-nez v3, :cond_0

    .line 299
    invoke-interface {p1, v2}, Lorg/simpleframework/xml/stream/OutputNode;->setName(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 266
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 277
    return-void

    .line 266
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 267
    if-eqz v1, :cond_0

    .line 268
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 269
    iget-object v3, p0, Lorg/simpleframework/xml/core/CompositeListUnion;->group:Lorg/simpleframework/xml/core/Group;

    invoke-interface {v3, v2}, Lorg/simpleframework/xml/core/Group;->getLabel(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Label;

    move-result-object v3

    .line 271
    if-eqz v3, :cond_2

    .line 274
    invoke-direct {p0, p1, v1, v3}, Lorg/simpleframework/xml/core/CompositeListUnion;->write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Label;)V

    goto :goto_0

    .line 272
    :cond_2
    new-instance v0, Lorg/simpleframework/xml/core/UnionException;

    const-string/jumbo v1, "Entry of %s not declared in %s with annotation %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v4

    const/4 v2, 0x1

    iget-object v4, p0, Lorg/simpleframework/xml/core/CompositeListUnion;->type:Lorg/simpleframework/xml/strategy/Type;

    aput-object v4, v3, v2

    const/4 v2, 0x2

    iget-object v4, p0, Lorg/simpleframework/xml/core/CompositeListUnion;->group:Lorg/simpleframework/xml/core/Group;

    aput-object v4, v3, v2

    invoke-direct {v0, v1, v3}, Lorg/simpleframework/xml/core/UnionException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method public read(Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 104
    iget-object v0, p0, Lorg/simpleframework/xml/core/CompositeListUnion;->group:Lorg/simpleframework/xml/core/Group;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Group;->getText()Lorg/simpleframework/xml/core/Label;

    move-result-object v0

    .line 106
    if-eqz v0, :cond_0

    .line 109
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/CompositeListUnion;->readText(Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 107
    :cond_0
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/CompositeListUnion;->readElement(Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public read(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 162
    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/CompositeListUnion;->readElement(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 163
    iget-object v1, p0, Lorg/simpleframework/xml/core/CompositeListUnion;->group:Lorg/simpleframework/xml/core/Group;

    invoke-interface {v1}, Lorg/simpleframework/xml/core/Group;->getText()Lorg/simpleframework/xml/core/Label;

    move-result-object v1

    .line 165
    if-nez v1, :cond_0

    .line 168
    return-object v0

    .line 166
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/CompositeListUnion;->readText(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public validate(Lorg/simpleframework/xml/stream/InputNode;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 223
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getName()Ljava/lang/String;

    move-result-object v0

    .line 224
    iget-object v1, p0, Lorg/simpleframework/xml/core/CompositeListUnion;->path:Lorg/simpleframework/xml/core/Expression;

    invoke-interface {v1, v0}, Lorg/simpleframework/xml/core/Expression;->getElement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 225
    iget-object v1, p0, Lorg/simpleframework/xml/core/CompositeListUnion;->elements:Lorg/simpleframework/xml/core/LabelMap;

    invoke-virtual {v1, v0}, Lorg/simpleframework/xml/core/LabelMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/Label;

    .line 226
    iget-object v1, p0, Lorg/simpleframework/xml/core/CompositeListUnion;->context:Lorg/simpleframework/xml/core/Context;

    invoke-interface {v0, v1}, Lorg/simpleframework/xml/core/Label;->getConverter(Lorg/simpleframework/xml/core/Context;)Lorg/simpleframework/xml/core/Converter;

    move-result-object v0

    .line 228
    invoke-interface {v0, p1}, Lorg/simpleframework/xml/core/Converter;->validate(Lorg/simpleframework/xml/stream/InputNode;)Z

    move-result v0

    return v0
.end method

.method public write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 242
    check-cast p2, Ljava/util/Collection;

    .line 244
    iget-object v0, p0, Lorg/simpleframework/xml/core/CompositeListUnion;->group:Lorg/simpleframework/xml/core/Group;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Group;->isInline()Z

    move-result v0

    if-nez v0, :cond_1

    .line 251
    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/CompositeListUnion;->write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/util/Collection;)V

    .line 253
    :cond_0
    :goto_0
    return-void

    .line 245
    :cond_1
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 247
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/OutputNode;->isCommitted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 248
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/OutputNode;->remove()V

    goto :goto_0

    .line 246
    :cond_2
    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/CompositeListUnion;->write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/util/Collection;)V

    goto :goto_0
.end method
