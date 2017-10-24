.class Lorg/simpleframework/xml/core/Primitive;
.super Ljava/lang/Object;
.source "Primitive.java"

# interfaces
.implements Lorg/simpleframework/xml/core/Converter;


# instance fields
.field private final context:Lorg/simpleframework/xml/core/Context;

.field private final empty:Ljava/lang/String;

.field private final expect:Ljava/lang/Class;

.field private final factory:Lorg/simpleframework/xml/core/PrimitiveFactory;

.field private final type:Lorg/simpleframework/xml/strategy/Type;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Type;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 90
    invoke-direct {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/Primitive;-><init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Type;Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Type;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    new-instance v0, Lorg/simpleframework/xml/core/PrimitiveFactory;

    invoke-direct {v0, p1, p2}, Lorg/simpleframework/xml/core/PrimitiveFactory;-><init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Type;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/Primitive;->factory:Lorg/simpleframework/xml/core/PrimitiveFactory;

    .line 105
    invoke-interface {p2}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/Primitive;->expect:Ljava/lang/Class;

    .line 106
    iput-object p1, p0, Lorg/simpleframework/xml/core/Primitive;->context:Lorg/simpleframework/xml/core/Context;

    .line 107
    iput-object p3, p0, Lorg/simpleframework/xml/core/Primitive;->empty:Ljava/lang/String;

    .line 108
    iput-object p2, p0, Lorg/simpleframework/xml/core/Primitive;->type:Lorg/simpleframework/xml/strategy/Type;

    .line 109
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
    .line 186
    iget-object v0, p0, Lorg/simpleframework/xml/core/Primitive;->factory:Lorg/simpleframework/xml/core/PrimitiveFactory;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/PrimitiveFactory;->getInstance(Lorg/simpleframework/xml/stream/InputNode;)Lorg/simpleframework/xml/core/Instance;

    move-result-object v0

    .line 188
    invoke-interface {v0}, Lorg/simpleframework/xml/core/Instance;->isReference()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 191
    invoke-interface {v0}, Lorg/simpleframework/xml/core/Instance;->getInstance()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 189
    :cond_0
    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/core/Primitive;->readElement(Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/Instance;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private readElement(Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/Instance;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 207
    iget-object v0, p0, Lorg/simpleframework/xml/core/Primitive;->expect:Ljava/lang/Class;

    invoke-virtual {p0, p1, v0}, Lorg/simpleframework/xml/core/Primitive;->read(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 209
    if-nez p2, :cond_0

    .line 212
    :goto_0
    return-object v0

    .line 210
    :cond_0
    invoke-interface {p2, v0}, Lorg/simpleframework/xml/core/Instance;->setInstance(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private readTemplate(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 228
    iget-object v0, p0, Lorg/simpleframework/xml/core/Primitive;->context:Lorg/simpleframework/xml/core/Context;

    invoke-interface {v0, p1}, Lorg/simpleframework/xml/core/Context;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 230
    if-nez v0, :cond_0

    .line 233
    return-object v1

    .line 231
    :cond_0
    iget-object v1, p0, Lorg/simpleframework/xml/core/Primitive;->factory:Lorg/simpleframework/xml/core/PrimitiveFactory;

    invoke-virtual {v1, v0, p2}, Lorg/simpleframework/xml/core/PrimitiveFactory;->getInstance(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private validateElement(Lorg/simpleframework/xml/stream/InputNode;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 268
    iget-object v0, p0, Lorg/simpleframework/xml/core/Primitive;->factory:Lorg/simpleframework/xml/core/PrimitiveFactory;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/PrimitiveFactory;->getInstance(Lorg/simpleframework/xml/stream/InputNode;)Lorg/simpleframework/xml/core/Instance;

    move-result-object v0

    .line 270
    invoke-interface {v0}, Lorg/simpleframework/xml/core/Instance;->isReference()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 273
    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v1, 0x0

    .line 271
    invoke-interface {v0, v1}, Lorg/simpleframework/xml/core/Instance;->setInstance(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
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
    .line 123
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->isElement()Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    iget-object v0, p0, Lorg/simpleframework/xml/core/Primitive;->expect:Ljava/lang/Class;

    invoke-virtual {p0, p1, v0}, Lorg/simpleframework/xml/core/Primitive;->read(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 124
    :cond_0
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/Primitive;->readElement(Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public read(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 163
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 165
    if-eqz v0, :cond_1

    .line 168
    iget-object v1, p0, Lorg/simpleframework/xml/core/Primitive;->empty:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 171
    :cond_0
    invoke-direct {p0, v0, p2}, Lorg/simpleframework/xml/core/Primitive;->readTemplate(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 166
    :cond_1
    return-object v1

    .line 168
    :cond_2
    iget-object v1, p0, Lorg/simpleframework/xml/core/Primitive;->empty:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 169
    iget-object v0, p0, Lorg/simpleframework/xml/core/Primitive;->empty:Ljava/lang/String;

    return-object v0
.end method

.method public read(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 144
    if-nez p2, :cond_0

    .line 147
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/Primitive;->read(Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 145
    :cond_0
    new-instance v0, Lorg/simpleframework/xml/core/PersistenceException;

    const-string/jumbo v1, "Can not read existing %s for %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/simpleframework/xml/core/Primitive;->expect:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lorg/simpleframework/xml/core/Primitive;->type:Lorg/simpleframework/xml/strategy/Type;

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lorg/simpleframework/xml/core/PersistenceException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public validate(Lorg/simpleframework/xml/stream/InputNode;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 248
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->isElement()Z

    move-result v0

    if-nez v0, :cond_0

    .line 251
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getValue()Ljava/lang/String;

    .line 253
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 249
    :cond_0
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/Primitive;->validateElement(Lorg/simpleframework/xml/stream/InputNode;)Z

    goto :goto_0
.end method

.method public write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 288
    iget-object v0, p0, Lorg/simpleframework/xml/core/Primitive;->factory:Lorg/simpleframework/xml/core/PrimitiveFactory;

    invoke-virtual {v0, p2}, Lorg/simpleframework/xml/core/PrimitiveFactory;->getText(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 290
    if-nez v0, :cond_0

    .line 293
    :goto_0
    return-void

    .line 291
    :cond_0
    invoke-interface {p1, v0}, Lorg/simpleframework/xml/stream/OutputNode;->setValue(Ljava/lang/String;)V

    goto :goto_0
.end method
