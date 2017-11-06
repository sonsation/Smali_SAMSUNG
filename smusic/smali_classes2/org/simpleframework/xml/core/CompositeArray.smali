.class Lorg/simpleframework/xml/core/CompositeArray;
.super Ljava/lang/Object;
.source "CompositeArray.java"

# interfaces
.implements Lorg/simpleframework/xml/core/Converter;


# instance fields
.field private final entry:Lorg/simpleframework/xml/strategy/Type;

.field private final factory:Lorg/simpleframework/xml/core/ArrayFactory;

.field private final parent:Ljava/lang/String;

.field private final root:Lorg/simpleframework/xml/core/Traverser;

.field private final type:Lorg/simpleframework/xml/strategy/Type;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Type;Lorg/simpleframework/xml/strategy/Type;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Lorg/simpleframework/xml/core/Context;
    .param p2, "type"    # Lorg/simpleframework/xml/strategy/Type;
    .param p3, "entry"    # Lorg/simpleframework/xml/strategy/Type;
    .param p4, "parent"    # Ljava/lang/String;

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v0, Lorg/simpleframework/xml/core/ArrayFactory;

    invoke-direct {v0, p1, p2}, Lorg/simpleframework/xml/core/ArrayFactory;-><init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Type;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/CompositeArray;->factory:Lorg/simpleframework/xml/core/ArrayFactory;

    .line 99
    new-instance v0, Lorg/simpleframework/xml/core/Traverser;

    invoke-direct {v0, p1}, Lorg/simpleframework/xml/core/Traverser;-><init>(Lorg/simpleframework/xml/core/Context;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/CompositeArray;->root:Lorg/simpleframework/xml/core/Traverser;

    .line 100
    iput-object p4, p0, Lorg/simpleframework/xml/core/CompositeArray;->parent:Ljava/lang/String;

    .line 101
    iput-object p3, p0, Lorg/simpleframework/xml/core/CompositeArray;->entry:Lorg/simpleframework/xml/strategy/Type;

    .line 102
    iput-object p2, p0, Lorg/simpleframework/xml/core/CompositeArray;->type:Lorg/simpleframework/xml/strategy/Type;

    .line 103
    return-void
.end method

.method private read(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;I)V
    .locals 3
    .param p1, "node"    # Lorg/simpleframework/xml/stream/InputNode;
    .param p2, "list"    # Ljava/lang/Object;
    .param p3, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 166
    iget-object v2, p0, Lorg/simpleframework/xml/core/CompositeArray;->entry:Lorg/simpleframework/xml/strategy/Type;

    invoke-interface {v2}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 167
    .local v0, "type":Ljava/lang/Class;
    const/4 v1, 0x0

    .line 169
    .local v1, "value":Ljava/lang/Object;
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 170
    iget-object v2, p0, Lorg/simpleframework/xml/core/CompositeArray;->root:Lorg/simpleframework/xml/core/Traverser;

    invoke-virtual {v2, p1, v0}, Lorg/simpleframework/xml/core/Traverser;->read(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 172
    .end local v1    # "value":Ljava/lang/Object;
    :cond_0
    invoke-static {p2, p3, v1}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 173
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
    .line 117
    iget-object v2, p0, Lorg/simpleframework/xml/core/CompositeArray;->factory:Lorg/simpleframework/xml/core/ArrayFactory;

    invoke-virtual {v2, p1}, Lorg/simpleframework/xml/core/ArrayFactory;->getInstance(Lorg/simpleframework/xml/stream/InputNode;)Lorg/simpleframework/xml/core/Instance;

    move-result-object v1

    .line 118
    .local v1, "type":Lorg/simpleframework/xml/core/Instance;
    invoke-interface {v1}, Lorg/simpleframework/xml/core/Instance;->getInstance()Ljava/lang/Object;

    move-result-object v0

    .line 120
    .local v0, "list":Ljava/lang/Object;
    invoke-interface {v1}, Lorg/simpleframework/xml/core/Instance;->isReference()Z

    move-result v2

    if-nez v2, :cond_0

    .line 121
    invoke-virtual {p0, p1, v0}, Lorg/simpleframework/xml/core/CompositeArray;->read(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 123
    .end local v0    # "list":Ljava/lang/Object;
    :cond_0
    return-object v0
.end method

.method public read(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .param p1, "node"    # Lorg/simpleframework/xml/stream/InputNode;
    .param p2, "list"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 139
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    .line 141
    .local v0, "length":I
    const/4 v3, 0x0

    .line 142
    .local v3, "pos":I
    :goto_0
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getPosition()Lorg/simpleframework/xml/stream/Position;

    move-result-object v1

    .line 143
    .local v1, "line":Lorg/simpleframework/xml/stream/Position;
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getNext()Lorg/simpleframework/xml/stream/InputNode;

    move-result-object v2

    .line 145
    .local v2, "next":Lorg/simpleframework/xml/stream/InputNode;
    if-nez v2, :cond_0

    .line 146
    return-object p2

    .line 148
    :cond_0
    if-lt v3, v0, :cond_1

    .line 149
    new-instance v4, Lorg/simpleframework/xml/core/ElementException;

    const-string v5, "Array length missing or incorrect for %s at %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lorg/simpleframework/xml/core/CompositeArray;->type:Lorg/simpleframework/xml/strategy/Type;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v1, v6, v7

    invoke-direct {v4, v5, v6}, Lorg/simpleframework/xml/core/ElementException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v4

    .line 151
    :cond_1
    invoke-direct {p0, v2, p2, v3}, Lorg/simpleframework/xml/core/CompositeArray;->read(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;I)V

    .line 141
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;)V
    .locals 6
    .param p1, "node"    # Lorg/simpleframework/xml/stream/OutputNode;
    .param p2, "source"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 234
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    .line 236
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 237
    invoke-static {p2, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    .line 238
    .local v1, "item":Ljava/lang/Object;
    iget-object v4, p0, Lorg/simpleframework/xml/core/CompositeArray;->entry:Lorg/simpleframework/xml/strategy/Type;

    invoke-interface {v4}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object v3

    .line 240
    .local v3, "type":Ljava/lang/Class;
    iget-object v4, p0, Lorg/simpleframework/xml/core/CompositeArray;->root:Lorg/simpleframework/xml/core/Traverser;

    iget-object v5, p0, Lorg/simpleframework/xml/core/CompositeArray;->parent:Ljava/lang/String;

    invoke-virtual {v4, p1, v1, v3, v5}, Lorg/simpleframework/xml/core/Traverser;->write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)V

    .line 236
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 242
    .end local v1    # "item":Ljava/lang/Object;
    .end local v3    # "type":Ljava/lang/Class;
    :cond_0
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/OutputNode;->commit()V

    .line 243
    return-void
.end method
