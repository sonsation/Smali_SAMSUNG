.class Lorg/simpleframework/xml/core/CompositeKey;
.super Ljava/lang/Object;
.source "CompositeKey.java"

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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Lorg/simpleframework/xml/core/Traverser;

    invoke-direct {v0, p1}, Lorg/simpleframework/xml/core/Traverser;-><init>(Lorg/simpleframework/xml/core/Context;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/CompositeKey;->root:Lorg/simpleframework/xml/core/Traverser;

    .line 78
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Context;->getStyle()Lorg/simpleframework/xml/stream/Style;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/CompositeKey;->style:Lorg/simpleframework/xml/stream/Style;

    .line 79
    iput-object p1, p0, Lorg/simpleframework/xml/core/CompositeKey;->context:Lorg/simpleframework/xml/core/Context;

    .line 80
    iput-object p2, p0, Lorg/simpleframework/xml/core/CompositeKey;->entry:Lorg/simpleframework/xml/core/Entry;

    .line 81
    iput-object p3, p0, Lorg/simpleframework/xml/core/CompositeKey;->type:Lorg/simpleframework/xml/strategy/Type;

    .line 82
    return-void
.end method

.method private read(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 143
    iget-object v0, p0, Lorg/simpleframework/xml/core/CompositeKey;->style:Lorg/simpleframework/xml/stream/Style;

    invoke-interface {v0, p2}, Lorg/simpleframework/xml/stream/Style;->getElement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 144
    iget-object v1, p0, Lorg/simpleframework/xml/core/CompositeKey;->type:Lorg/simpleframework/xml/strategy/Type;

    invoke-interface {v1}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object v1

    .line 146
    if-nez v0, :cond_0

    .line 149
    :goto_0
    if-eqz p1, :cond_1

    .line 152
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 155
    iget-object v0, p0, Lorg/simpleframework/xml/core/CompositeKey;->root:Lorg/simpleframework/xml/core/Traverser;

    invoke-virtual {v0, p1, v1}, Lorg/simpleframework/xml/core/Traverser;->read(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 147
    :cond_0
    invoke-interface {p1, v0}, Lorg/simpleframework/xml/stream/InputNode;->getNext(Ljava/lang/String;)Lorg/simpleframework/xml/stream/InputNode;

    move-result-object p1

    goto :goto_0

    .line 150
    :cond_1
    return-object v2

    .line 153
    :cond_2
    return-object v2
.end method

.method private validate(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 194
    iget-object v0, p0, Lorg/simpleframework/xml/core/CompositeKey;->style:Lorg/simpleframework/xml/stream/Style;

    invoke-interface {v0, p2}, Lorg/simpleframework/xml/stream/Style;->getElement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 195
    invoke-interface {p1, v0}, Lorg/simpleframework/xml/stream/InputNode;->getNext(Ljava/lang/String;)Lorg/simpleframework/xml/stream/InputNode;

    move-result-object v0

    .line 196
    iget-object v1, p0, Lorg/simpleframework/xml/core/CompositeKey;->type:Lorg/simpleframework/xml/strategy/Type;

    invoke-interface {v1}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object v1

    .line 198
    if-eqz v0, :cond_0

    .line 201
    invoke-interface {v0}, Lorg/simpleframework/xml/stream/InputNode;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 204
    iget-object v2, p0, Lorg/simpleframework/xml/core/CompositeKey;->root:Lorg/simpleframework/xml/core/Traverser;

    invoke-virtual {v2, v0, v1}, Lorg/simpleframework/xml/core/Traverser;->validate(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Class;)Z

    move-result v0

    return v0

    .line 199
    :cond_0
    return v3

    .line 202
    :cond_1
    return v3
.end method


# virtual methods
.method public read(Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 95
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getPosition()Lorg/simpleframework/xml/stream/Position;

    move-result-object v1

    .line 96
    iget-object v0, p0, Lorg/simpleframework/xml/core/CompositeKey;->type:Lorg/simpleframework/xml/strategy/Type;

    invoke-interface {v0}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object v2

    .line 97
    iget-object v0, p0, Lorg/simpleframework/xml/core/CompositeKey;->entry:Lorg/simpleframework/xml/core/Entry;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/Entry;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 99
    if-eqz v0, :cond_0

    .line 102
    :goto_0
    iget-object v3, p0, Lorg/simpleframework/xml/core/CompositeKey;->entry:Lorg/simpleframework/xml/core/Entry;

    invoke-virtual {v3}, Lorg/simpleframework/xml/core/Entry;->isAttribute()Z

    move-result v3

    if-nez v3, :cond_1

    .line 105
    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/core/CompositeKey;->read(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 100
    :cond_0
    iget-object v0, p0, Lorg/simpleframework/xml/core/CompositeKey;->context:Lorg/simpleframework/xml/core/Context;

    invoke-interface {v0, v2}, Lorg/simpleframework/xml/core/Context;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 103
    :cond_1
    new-instance v0, Lorg/simpleframework/xml/core/AttributeException;

    const-string/jumbo v3, "Can not have %s as an attribute for %s at %s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v5

    const/4 v2, 0x1

    iget-object v5, p0, Lorg/simpleframework/xml/core/CompositeKey;->entry:Lorg/simpleframework/xml/core/Entry;

    aput-object v5, v4, v2

    const/4 v2, 0x2

    aput-object v1, v4, v2

    invoke-direct {v0, v3, v4}, Lorg/simpleframework/xml/core/AttributeException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public read(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 122
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getPosition()Lorg/simpleframework/xml/stream/Position;

    move-result-object v0

    .line 123
    iget-object v1, p0, Lorg/simpleframework/xml/core/CompositeKey;->type:Lorg/simpleframework/xml/strategy/Type;

    invoke-interface {v1}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object v1

    .line 125
    if-nez p2, :cond_0

    .line 128
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/CompositeKey;->read(Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 126
    :cond_0
    new-instance v2, Lorg/simpleframework/xml/core/PersistenceException;

    const-string/jumbo v3, "Can not read key of %s for %s at %s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    iget-object v5, p0, Lorg/simpleframework/xml/core/CompositeKey;->entry:Lorg/simpleframework/xml/core/Entry;

    aput-object v5, v4, v1

    const/4 v1, 0x2

    aput-object v0, v4, v1

    invoke-direct {v2, v3, v4}, Lorg/simpleframework/xml/core/PersistenceException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2
.end method

.method public validate(Lorg/simpleframework/xml/stream/InputNode;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 169
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getPosition()Lorg/simpleframework/xml/stream/Position;

    move-result-object v1

    .line 170
    iget-object v0, p0, Lorg/simpleframework/xml/core/CompositeKey;->type:Lorg/simpleframework/xml/strategy/Type;

    invoke-interface {v0}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object v2

    .line 171
    iget-object v0, p0, Lorg/simpleframework/xml/core/CompositeKey;->entry:Lorg/simpleframework/xml/core/Entry;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/Entry;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 173
    if-eqz v0, :cond_0

    .line 176
    :goto_0
    iget-object v3, p0, Lorg/simpleframework/xml/core/CompositeKey;->entry:Lorg/simpleframework/xml/core/Entry;

    invoke-virtual {v3}, Lorg/simpleframework/xml/core/Entry;->isAttribute()Z

    move-result v3

    if-nez v3, :cond_1

    .line 179
    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/core/CompositeKey;->validate(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 174
    :cond_0
    iget-object v0, p0, Lorg/simpleframework/xml/core/CompositeKey;->context:Lorg/simpleframework/xml/core/Context;

    invoke-interface {v0, v2}, Lorg/simpleframework/xml/core/Context;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 177
    :cond_1
    new-instance v0, Lorg/simpleframework/xml/core/ElementException;

    const-string/jumbo v3, "Can not have %s as an attribute for %s at %s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v5

    const/4 v2, 0x1

    iget-object v5, p0, Lorg/simpleframework/xml/core/CompositeKey;->entry:Lorg/simpleframework/xml/core/Entry;

    aput-object v5, v4, v2

    const/4 v2, 0x2

    aput-object v1, v4, v2

    invoke-direct {v0, v3, v4}, Lorg/simpleframework/xml/core/ElementException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 217
    iget-object v0, p0, Lorg/simpleframework/xml/core/CompositeKey;->type:Lorg/simpleframework/xml/strategy/Type;

    invoke-interface {v0}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object v1

    .line 218
    iget-object v0, p0, Lorg/simpleframework/xml/core/CompositeKey;->entry:Lorg/simpleframework/xml/core/Entry;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/Entry;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 220
    iget-object v2, p0, Lorg/simpleframework/xml/core/CompositeKey;->entry:Lorg/simpleframework/xml/core/Entry;

    invoke-virtual {v2}, Lorg/simpleframework/xml/core/Entry;->isAttribute()Z

    move-result v2

    if-nez v2, :cond_0

    .line 223
    if-eqz v0, :cond_1

    .line 226
    :goto_0
    iget-object v2, p0, Lorg/simpleframework/xml/core/CompositeKey;->style:Lorg/simpleframework/xml/stream/Style;

    invoke-interface {v2, v0}, Lorg/simpleframework/xml/stream/Style;->getElement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 228
    iget-object v2, p0, Lorg/simpleframework/xml/core/CompositeKey;->root:Lorg/simpleframework/xml/core/Traverser;

    invoke-virtual {v2, p1, p2, v1, v0}, Lorg/simpleframework/xml/core/Traverser;->write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)V

    .line 229
    return-void

    .line 221
    :cond_0
    new-instance v0, Lorg/simpleframework/xml/core/ElementException;

    const-string/jumbo v2, "Can not have %s as an attribute for %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v4

    const/4 v1, 0x1

    iget-object v4, p0, Lorg/simpleframework/xml/core/CompositeKey;->entry:Lorg/simpleframework/xml/core/Entry;

    aput-object v4, v3, v1

    invoke-direct {v0, v2, v3}, Lorg/simpleframework/xml/core/ElementException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 224
    :cond_1
    iget-object v0, p0, Lorg/simpleframework/xml/core/CompositeKey;->context:Lorg/simpleframework/xml/core/Context;

    invoke-interface {v0, v1}, Lorg/simpleframework/xml/core/Context;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
