.class Lorg/simpleframework/xml/core/Traverser;
.super Ljava/lang/Object;
.source "Traverser.java"


# instance fields
.field private final context:Lorg/simpleframework/xml/core/Context;

.field private final style:Lorg/simpleframework/xml/stream/Style;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Context;)V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Context;->getStyle()Lorg/simpleframework/xml/stream/Style;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/Traverser;->style:Lorg/simpleframework/xml/stream/Style;

    .line 57
    iput-object p1, p0, Lorg/simpleframework/xml/core/Traverser;->context:Lorg/simpleframework/xml/core/Context;

    .line 58
    return-void
.end method

.method private getComposite(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Composite;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 252
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/Traverser;->getType(Ljava/lang/Class;)Lorg/simpleframework/xml/strategy/Type;

    move-result-object v0

    .line 254
    if-eqz p1, :cond_0

    .line 257
    new-instance v1, Lorg/simpleframework/xml/core/Composite;

    iget-object v2, p0, Lorg/simpleframework/xml/core/Traverser;->context:Lorg/simpleframework/xml/core/Context;

    invoke-direct {v1, v2, v0}, Lorg/simpleframework/xml/core/Composite;-><init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Type;)V

    return-object v1

    .line 255
    :cond_0
    new-instance v0, Lorg/simpleframework/xml/core/RootException;

    const-string/jumbo v1, "Can not instantiate null class"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/simpleframework/xml/core/RootException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method private getDecorator(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Decorator;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lorg/simpleframework/xml/core/Traverser;->context:Lorg/simpleframework/xml/core/Context;

    invoke-interface {v0, p1}, Lorg/simpleframework/xml/core/Context;->getDecorator(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Decorator;

    move-result-object v0

    return-object v0
.end method

.method private getType(Ljava/lang/Class;)Lorg/simpleframework/xml/strategy/Type;
    .locals 1

    .prologue
    .line 270
    new-instance v0, Lorg/simpleframework/xml/core/ClassType;

    invoke-direct {v0, p1}, Lorg/simpleframework/xml/core/ClassType;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method private read(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 141
    invoke-virtual {p0, p2}, Lorg/simpleframework/xml/core/Traverser;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 143
    if-eqz v0, :cond_0

    .line 146
    return-object p3

    .line 144
    :cond_0
    new-instance v0, Lorg/simpleframework/xml/core/RootException;

    const-string/jumbo v1, "Root annotation required for %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-direct {v0, v1, v2}, Lorg/simpleframework/xml/core/RootException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method protected getName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 284
    iget-object v0, p0, Lorg/simpleframework/xml/core/Traverser;->context:Lorg/simpleframework/xml/core/Context;

    invoke-interface {v0, p1}, Lorg/simpleframework/xml/core/Context;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 285
    iget-object v1, p0, Lorg/simpleframework/xml/core/Traverser;->style:Lorg/simpleframework/xml/stream/Style;

    invoke-interface {v1, v0}, Lorg/simpleframework/xml/stream/Style;->getElement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 287
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

    .line 91
    invoke-direct {p0, p2}, Lorg/simpleframework/xml/core/Traverser;->getComposite(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Composite;

    move-result-object v0

    .line 92
    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/Composite;->read(Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/Object;

    move-result-object v0

    .line 94
    if-nez v0, :cond_0

    .line 99
    return-object v1

    .line 95
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 97
    invoke-direct {p0, p1, v1, v0}, Lorg/simpleframework/xml/core/Traverser;->read(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

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
    .line 118
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 119
    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/Traverser;->getComposite(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Composite;

    move-result-object v1

    .line 120
    invoke-virtual {v1, p1, p2}, Lorg/simpleframework/xml/core/Composite;->read(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 122
    invoke-direct {p0, p1, v0, v1}, Lorg/simpleframework/xml/core/Traverser;->read(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public validate(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Class;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 165
    invoke-direct {p0, p2}, Lorg/simpleframework/xml/core/Traverser;->getComposite(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Composite;

    move-result-object v0

    .line 166
    invoke-virtual {p0, p2}, Lorg/simpleframework/xml/core/Traverser;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    .line 168
    if-eqz v1, :cond_0

    .line 171
    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/Composite;->validate(Lorg/simpleframework/xml/stream/InputNode;)Z

    move-result v0

    return v0

    .line 169
    :cond_0
    new-instance v0, Lorg/simpleframework/xml/core/RootException;

    const-string/jumbo v1, "Root annotation required for %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-direct {v0, v1, v2}, Lorg/simpleframework/xml/core/RootException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 186
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/Traverser;->write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 187
    return-void
.end method

.method public write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 202
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 203
    invoke-virtual {p0, v0}, Lorg/simpleframework/xml/core/Traverser;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    .line 205
    if-eqz v1, :cond_0

    .line 208
    invoke-virtual {p0, p1, p2, p3, v1}, Lorg/simpleframework/xml/core/Traverser;->write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)V

    .line 209
    return-void

    .line 206
    :cond_0
    new-instance v1, Lorg/simpleframework/xml/core/RootException;

    const-string/jumbo v2, "Root annotation required for %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-direct {v1, v2, v3}, Lorg/simpleframework/xml/core/RootException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1
.end method

.method public write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 225
    invoke-interface {p1, p4}, Lorg/simpleframework/xml/stream/OutputNode;->getChild(Ljava/lang/String;)Lorg/simpleframework/xml/stream/OutputNode;

    move-result-object v0

    .line 226
    invoke-direct {p0, p3}, Lorg/simpleframework/xml/core/Traverser;->getType(Ljava/lang/Class;)Lorg/simpleframework/xml/strategy/Type;

    move-result-object v1

    .line 228
    if-nez p2, :cond_1

    .line 239
    :cond_0
    :goto_0
    invoke-interface {v0}, Lorg/simpleframework/xml/stream/OutputNode;->commit()V

    .line 240
    return-void

    .line 229
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 230
    invoke-direct {p0, v2}, Lorg/simpleframework/xml/core/Traverser;->getDecorator(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Decorator;

    move-result-object v3

    .line 232
    if-nez v3, :cond_2

    .line 235
    :goto_1
    iget-object v3, p0, Lorg/simpleframework/xml/core/Traverser;->context:Lorg/simpleframework/xml/core/Context;

    invoke-interface {v3, v1, p2, v0}, Lorg/simpleframework/xml/core/Context;->setOverride(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Object;Lorg/simpleframework/xml/stream/OutputNode;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 236
    invoke-direct {p0, v2}, Lorg/simpleframework/xml/core/Traverser;->getComposite(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Composite;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lorg/simpleframework/xml/core/Composite;->write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;)V

    goto :goto_0

    .line 233
    :cond_2
    invoke-interface {v3, v0}, Lorg/simpleframework/xml/core/Decorator;->decorate(Lorg/simpleframework/xml/stream/OutputNode;)V

    goto :goto_1
.end method
