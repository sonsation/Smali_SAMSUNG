.class Lorg/simpleframework/xml/core/PrimitiveKey;
.super Ljava/lang/Object;
.source "PrimitiveKey.java"

# interfaces
.implements Lorg/simpleframework/xml/core/Converter;


# instance fields
.field private final context:Lorg/simpleframework/xml/core/Context;

.field private final entry:Lorg/simpleframework/xml/core/Entry;

.field private final factory:Lorg/simpleframework/xml/core/PrimitiveFactory;

.field private final root:Lorg/simpleframework/xml/core/Primitive;

.field private final style:Lorg/simpleframework/xml/stream/Style;

.field private final type:Lorg/simpleframework/xml/strategy/Type;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/core/Entry;Lorg/simpleframework/xml/strategy/Type;)V
    .locals 1
    .param p1, "context"    # Lorg/simpleframework/xml/core/Context;
    .param p2, "entry"    # Lorg/simpleframework/xml/core/Entry;
    .param p3, "type"    # Lorg/simpleframework/xml/strategy/Type;

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Lorg/simpleframework/xml/core/PrimitiveFactory;

    invoke-direct {v0, p1, p3}, Lorg/simpleframework/xml/core/PrimitiveFactory;-><init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Type;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/PrimitiveKey;->factory:Lorg/simpleframework/xml/core/PrimitiveFactory;

    .line 92
    new-instance v0, Lorg/simpleframework/xml/core/Primitive;

    invoke-direct {v0, p1, p3}, Lorg/simpleframework/xml/core/Primitive;-><init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Type;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/PrimitiveKey;->root:Lorg/simpleframework/xml/core/Primitive;

    .line 93
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Context;->getStyle()Lorg/simpleframework/xml/stream/Style;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/PrimitiveKey;->style:Lorg/simpleframework/xml/stream/Style;

    .line 94
    iput-object p1, p0, Lorg/simpleframework/xml/core/PrimitiveKey;->context:Lorg/simpleframework/xml/core/Context;

    .line 95
    iput-object p2, p0, Lorg/simpleframework/xml/core/PrimitiveKey;->entry:Lorg/simpleframework/xml/core/Entry;

    .line 96
    iput-object p3, p0, Lorg/simpleframework/xml/core/PrimitiveKey;->type:Lorg/simpleframework/xml/strategy/Type;

    .line 97
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
    .line 328
    iget-object v0, p0, Lorg/simpleframework/xml/core/PrimitiveKey;->factory:Lorg/simpleframework/xml/core/PrimitiveFactory;

    iget-object v1, p0, Lorg/simpleframework/xml/core/PrimitiveKey;->type:Lorg/simpleframework/xml/strategy/Type;

    invoke-virtual {v0, v1, p2, p1}, Lorg/simpleframework/xml/core/PrimitiveFactory;->setOverride(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Object;Lorg/simpleframework/xml/stream/OutputNode;)Z

    move-result v0

    return v0
.end method

.method private readAttribute(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "node"    # Lorg/simpleframework/xml/stream/InputNode;
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 156
    iget-object v2, p0, Lorg/simpleframework/xml/core/PrimitiveKey;->style:Lorg/simpleframework/xml/stream/Style;

    invoke-interface {v2, p2}, Lorg/simpleframework/xml/stream/Style;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 157
    .local v1, "name":Ljava/lang/String;
    invoke-interface {p1, v1}, Lorg/simpleframework/xml/stream/InputNode;->getAttribute(Ljava/lang/String;)Lorg/simpleframework/xml/stream/InputNode;

    move-result-object v0

    .line 159
    .local v0, "child":Lorg/simpleframework/xml/stream/InputNode;
    if-nez v0, :cond_0

    .line 160
    const/4 v2, 0x0

    .line 162
    :goto_0
    return-object v2

    :cond_0
    iget-object v2, p0, Lorg/simpleframework/xml/core/PrimitiveKey;->root:Lorg/simpleframework/xml/core/Primitive;

    invoke-virtual {v2, v0}, Lorg/simpleframework/xml/core/Primitive;->read(Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0
.end method

.method private readElement(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "node"    # Lorg/simpleframework/xml/stream/InputNode;
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 177
    iget-object v2, p0, Lorg/simpleframework/xml/core/PrimitiveKey;->style:Lorg/simpleframework/xml/stream/Style;

    invoke-interface {v2, p2}, Lorg/simpleframework/xml/stream/Style;->getElement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 178
    .local v1, "name":Ljava/lang/String;
    invoke-interface {p1, v1}, Lorg/simpleframework/xml/stream/InputNode;->getNext(Ljava/lang/String;)Lorg/simpleframework/xml/stream/InputNode;

    move-result-object v0

    .line 180
    .local v0, "child":Lorg/simpleframework/xml/stream/InputNode;
    if-nez v0, :cond_0

    .line 181
    const/4 v2, 0x0

    .line 183
    :goto_0
    return-object v2

    :cond_0
    iget-object v2, p0, Lorg/simpleframework/xml/core/PrimitiveKey;->root:Lorg/simpleframework/xml/core/Primitive;

    invoke-virtual {v2, v0}, Lorg/simpleframework/xml/core/Primitive;->read(Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0
.end method

.method private writeAttribute(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;)V
    .locals 5
    .param p1, "node"    # Lorg/simpleframework/xml/stream/OutputNode;
    .param p2, "item"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 302
    iget-object v4, p0, Lorg/simpleframework/xml/core/PrimitiveKey;->type:Lorg/simpleframework/xml/strategy/Type;

    invoke-interface {v4}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 303
    .local v0, "expect":Ljava/lang/Class;
    iget-object v4, p0, Lorg/simpleframework/xml/core/PrimitiveKey;->factory:Lorg/simpleframework/xml/core/PrimitiveFactory;

    invoke-virtual {v4, p2}, Lorg/simpleframework/xml/core/PrimitiveFactory;->getText(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 304
    .local v3, "text":Ljava/lang/String;
    iget-object v4, p0, Lorg/simpleframework/xml/core/PrimitiveKey;->entry:Lorg/simpleframework/xml/core/Entry;

    invoke-virtual {v4}, Lorg/simpleframework/xml/core/Entry;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 306
    .local v1, "key":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 307
    iget-object v4, p0, Lorg/simpleframework/xml/core/PrimitiveKey;->context:Lorg/simpleframework/xml/core/Context;

    invoke-interface {v4, v0}, Lorg/simpleframework/xml/core/Context;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    .line 309
    :cond_0
    iget-object v4, p0, Lorg/simpleframework/xml/core/PrimitiveKey;->style:Lorg/simpleframework/xml/stream/Style;

    invoke-interface {v4, v1}, Lorg/simpleframework/xml/stream/Style;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 311
    .local v2, "name":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 312
    invoke-interface {p1, v2, v3}, Lorg/simpleframework/xml/stream/OutputNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/simpleframework/xml/stream/OutputNode;

    .line 314
    :cond_1
    return-void
.end method

.method private writeElement(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;)V
    .locals 5
    .param p1, "node"    # Lorg/simpleframework/xml/stream/OutputNode;
    .param p2, "item"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 277
    iget-object v4, p0, Lorg/simpleframework/xml/core/PrimitiveKey;->type:Lorg/simpleframework/xml/strategy/Type;

    invoke-interface {v4}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object v1

    .line 278
    .local v1, "expect":Ljava/lang/Class;
    iget-object v4, p0, Lorg/simpleframework/xml/core/PrimitiveKey;->entry:Lorg/simpleframework/xml/core/Entry;

    invoke-virtual {v4}, Lorg/simpleframework/xml/core/Entry;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 280
    .local v2, "key":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 281
    iget-object v4, p0, Lorg/simpleframework/xml/core/PrimitiveKey;->context:Lorg/simpleframework/xml/core/Context;

    invoke-interface {v4, v1}, Lorg/simpleframework/xml/core/Context;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    .line 283
    :cond_0
    iget-object v4, p0, Lorg/simpleframework/xml/core/PrimitiveKey;->style:Lorg/simpleframework/xml/stream/Style;

    invoke-interface {v4, v2}, Lorg/simpleframework/xml/stream/Style;->getElement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 284
    .local v3, "name":Ljava/lang/String;
    invoke-interface {p1, v3}, Lorg/simpleframework/xml/stream/OutputNode;->getChild(Ljava/lang/String;)Lorg/simpleframework/xml/stream/OutputNode;

    move-result-object v0

    .line 286
    .local v0, "child":Lorg/simpleframework/xml/stream/OutputNode;
    if-eqz p2, :cond_1

    .line 287
    invoke-direct {p0, v0, p2}, Lorg/simpleframework/xml/core/PrimitiveKey;->isOverridden(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 288
    iget-object v4, p0, Lorg/simpleframework/xml/core/PrimitiveKey;->root:Lorg/simpleframework/xml/core/Primitive;

    invoke-virtual {v4, v0, p2}, Lorg/simpleframework/xml/core/Primitive;->write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;)V

    .line 291
    :cond_1
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
    .line 110
    iget-object v2, p0, Lorg/simpleframework/xml/core/PrimitiveKey;->type:Lorg/simpleframework/xml/strategy/Type;

    invoke-interface {v2}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 111
    .local v0, "expect":Ljava/lang/Class;
    iget-object v2, p0, Lorg/simpleframework/xml/core/PrimitiveKey;->entry:Lorg/simpleframework/xml/core/Entry;

    invoke-virtual {v2}, Lorg/simpleframework/xml/core/Entry;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 113
    .local v1, "name":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 114
    iget-object v2, p0, Lorg/simpleframework/xml/core/PrimitiveKey;->context:Lorg/simpleframework/xml/core/Context;

    invoke-interface {v2, v0}, Lorg/simpleframework/xml/core/Context;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    .line 116
    :cond_0
    iget-object v2, p0, Lorg/simpleframework/xml/core/PrimitiveKey;->entry:Lorg/simpleframework/xml/core/Entry;

    invoke-virtual {v2}, Lorg/simpleframework/xml/core/Entry;->isAttribute()Z

    move-result v2

    if-nez v2, :cond_1

    .line 117
    invoke-direct {p0, p1, v1}, Lorg/simpleframework/xml/core/PrimitiveKey;->readElement(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 119
    :goto_0
    return-object v2

    :cond_1
    invoke-direct {p0, p1, v1}, Lorg/simpleframework/xml/core/PrimitiveKey;->readAttribute(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/String;)Ljava/lang/Object;

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
    .line 136
    iget-object v1, p0, Lorg/simpleframework/xml/core/PrimitiveKey;->type:Lorg/simpleframework/xml/strategy/Type;

    invoke-interface {v1}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 138
    .local v0, "expect":Ljava/lang/Class;
    if-eqz p2, :cond_0

    .line 139
    new-instance v1, Lorg/simpleframework/xml/core/PersistenceException;

    const-string v2, "Can not read key of %s for %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lorg/simpleframework/xml/core/PrimitiveKey;->entry:Lorg/simpleframework/xml/core/Entry;

    aput-object v5, v3, v4

    invoke-direct {v1, v2, v3}, Lorg/simpleframework/xml/core/PersistenceException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 141
    :cond_0
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/PrimitiveKey;->read(Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;)V
    .locals 1
    .param p1, "node"    # Lorg/simpleframework/xml/stream/OutputNode;
    .param p2, "item"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 261
    iget-object v0, p0, Lorg/simpleframework/xml/core/PrimitiveKey;->entry:Lorg/simpleframework/xml/core/Entry;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/Entry;->isAttribute()Z

    move-result v0

    if-nez v0, :cond_1

    .line 262
    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/PrimitiveKey;->writeElement(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;)V

    .line 266
    :cond_0
    :goto_0
    return-void

    .line 263
    :cond_1
    if-eqz p2, :cond_0

    .line 264
    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/PrimitiveKey;->writeAttribute(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;)V

    goto :goto_0
.end method
