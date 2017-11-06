.class Lorg/simpleframework/xml/core/Traverser;
.super Ljava/lang/Object;
.source "Traverser.java"


# instance fields
.field private final context:Lorg/simpleframework/xml/core/Context;

.field private final style:Lorg/simpleframework/xml/stream/Style;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Context;)V
    .locals 1
    .param p1, "context"    # Lorg/simpleframework/xml/core/Context;

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
    .locals 4
    .param p1, "expect"    # Ljava/lang/Class;
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
    .local v0, "type":Lorg/simpleframework/xml/strategy/Type;
    if-nez p1, :cond_0

    .line 255
    new-instance v1, Lorg/simpleframework/xml/core/RootException;

    const-string v2, "Can not instantiate null class"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Lorg/simpleframework/xml/core/RootException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 257
    :cond_0
    new-instance v1, Lorg/simpleframework/xml/core/Composite;

    iget-object v2, p0, Lorg/simpleframework/xml/core/Traverser;->context:Lorg/simpleframework/xml/core/Context;

    invoke-direct {v1, v2, v0}, Lorg/simpleframework/xml/core/Composite;-><init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Type;)V

    return-object v1
.end method

.method private getDecorator(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Decorator;
    .locals 1
    .param p1, "type"    # Ljava/lang/Class;
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
    .param p1, "type"    # Ljava/lang/Class;

    .prologue
    .line 270
    new-instance v0, Lorg/simpleframework/xml/core/ClassType;

    invoke-direct {v0, p1}, Lorg/simpleframework/xml/core/ClassType;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method private read(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "node"    # Lorg/simpleframework/xml/stream/InputNode;
    .param p2, "type"    # Ljava/lang/Class;
    .param p3, "value"    # Ljava/lang/Object;
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
    .local v0, "root":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 144
    new-instance v1, Lorg/simpleframework/xml/core/RootException;

    const-string v2, "Root annotation required for %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-direct {v1, v2, v3}, Lorg/simpleframework/xml/core/RootException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 146
    :cond_0
    return-object p3
.end method


# virtual methods
.method protected getName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 3
    .param p1, "type"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 284
    iget-object v2, p0, Lorg/simpleframework/xml/core/Traverser;->context:Lorg/simpleframework/xml/core/Context;

    invoke-interface {v2, p1}, Lorg/simpleframework/xml/core/Context;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    .line 285
    .local v1, "root":Ljava/lang/String;
    iget-object v2, p0, Lorg/simpleframework/xml/core/Traverser;->style:Lorg/simpleframework/xml/stream/Style;

    invoke-interface {v2, v1}, Lorg/simpleframework/xml/stream/Style;->getElement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 287
    .local v0, "name":Ljava/lang/String;
    return-object v0
.end method

.method public read(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .param p1, "node"    # Lorg/simpleframework/xml/stream/InputNode;
    .param p2, "type"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 91
    invoke-direct {p0, p2}, Lorg/simpleframework/xml/core/Traverser;->getComposite(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Composite;

    move-result-object v0

    .line 92
    .local v0, "factory":Lorg/simpleframework/xml/core/Composite;
    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/Composite;->read(Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/Object;

    move-result-object v2

    .line 94
    .local v2, "value":Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 95
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 97
    .local v1, "real":Ljava/lang/Class;
    invoke-direct {p0, p1, v1, v2}, Lorg/simpleframework/xml/core/Traverser;->read(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 99
    .end local v1    # "real":Ljava/lang/Class;
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;)V
    .locals 1
    .param p1, "node"    # Lorg/simpleframework/xml/stream/OutputNode;
    .param p2, "source"    # Ljava/lang/Object;
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
    .locals 6
    .param p1, "node"    # Lorg/simpleframework/xml/stream/OutputNode;
    .param p2, "source"    # Ljava/lang/Object;
    .param p3, "expect"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 202
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 203
    .local v1, "type":Ljava/lang/Class;
    invoke-virtual {p0, v1}, Lorg/simpleframework/xml/core/Traverser;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 205
    .local v0, "root":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 206
    new-instance v2, Lorg/simpleframework/xml/core/RootException;

    const-string v3, "Root annotation required for %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-direct {v2, v3, v4}, Lorg/simpleframework/xml/core/RootException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2

    .line 208
    :cond_0
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/simpleframework/xml/core/Traverser;->write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)V

    .line 209
    return-void
.end method

.method public write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 5
    .param p1, "node"    # Lorg/simpleframework/xml/stream/OutputNode;
    .param p2, "source"    # Ljava/lang/Object;
    .param p3, "expect"    # Ljava/lang/Class;
    .param p4, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 225
    invoke-interface {p1, p4}, Lorg/simpleframework/xml/stream/OutputNode;->getChild(Ljava/lang/String;)Lorg/simpleframework/xml/stream/OutputNode;

    move-result-object v1

    .line 226
    .local v1, "child":Lorg/simpleframework/xml/stream/OutputNode;
    invoke-direct {p0, p3}, Lorg/simpleframework/xml/core/Traverser;->getType(Ljava/lang/Class;)Lorg/simpleframework/xml/strategy/Type;

    move-result-object v3

    .line 228
    .local v3, "type":Lorg/simpleframework/xml/strategy/Type;
    if-eqz p2, :cond_1

    .line 229
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 230
    .local v0, "actual":Ljava/lang/Class;
    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/Traverser;->getDecorator(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Decorator;

    move-result-object v2

    .line 232
    .local v2, "decorator":Lorg/simpleframework/xml/core/Decorator;
    if-eqz v2, :cond_0

    .line 233
    invoke-interface {v2, v1}, Lorg/simpleframework/xml/core/Decorator;->decorate(Lorg/simpleframework/xml/stream/OutputNode;)V

    .line 235
    :cond_0
    iget-object v4, p0, Lorg/simpleframework/xml/core/Traverser;->context:Lorg/simpleframework/xml/core/Context;

    invoke-interface {v4, v3, p2, v1}, Lorg/simpleframework/xml/core/Context;->setOverride(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Object;Lorg/simpleframework/xml/stream/OutputNode;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 236
    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/Traverser;->getComposite(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Composite;

    move-result-object v4

    invoke-virtual {v4, v1, p2}, Lorg/simpleframework/xml/core/Composite;->write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;)V

    .line 239
    .end local v0    # "actual":Ljava/lang/Class;
    .end local v2    # "decorator":Lorg/simpleframework/xml/core/Decorator;
    :cond_1
    invoke-interface {v1}, Lorg/simpleframework/xml/stream/OutputNode;->commit()V

    .line 240
    return-void
.end method
