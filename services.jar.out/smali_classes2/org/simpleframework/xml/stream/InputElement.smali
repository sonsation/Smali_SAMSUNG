.class Lorg/simpleframework/xml/stream/InputElement;
.super Ljava/lang/Object;
.source "InputElement.java"

# interfaces
.implements Lorg/simpleframework/xml/stream/InputNode;


# instance fields
.field private final map:Lorg/simpleframework/xml/stream/InputNodeMap;

.field private final node:Lorg/simpleframework/xml/stream/EventNode;

.field private final parent:Lorg/simpleframework/xml/stream/InputNode;

.field private final reader:Lorg/simpleframework/xml/stream/NodeReader;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/stream/NodeReader;Lorg/simpleframework/xml/stream/EventNode;)V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Lorg/simpleframework/xml/stream/InputNodeMap;

    invoke-direct {v0, p0, p3}, Lorg/simpleframework/xml/stream/InputNodeMap;-><init>(Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/stream/EventNode;)V

    iput-object v0, p0, Lorg/simpleframework/xml/stream/InputElement;->map:Lorg/simpleframework/xml/stream/InputNodeMap;

    .line 66
    iput-object p2, p0, Lorg/simpleframework/xml/stream/InputElement;->reader:Lorg/simpleframework/xml/stream/NodeReader;

    .line 67
    iput-object p1, p0, Lorg/simpleframework/xml/stream/InputElement;->parent:Lorg/simpleframework/xml/stream/InputNode;

    .line 68
    iput-object p3, p0, Lorg/simpleframework/xml/stream/InputElement;->node:Lorg/simpleframework/xml/stream/EventNode;

    .line 69
    return-void
.end method


# virtual methods
.method public getAttribute(Ljava/lang/String;)Lorg/simpleframework/xml/stream/InputNode;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lorg/simpleframework/xml/stream/InputElement;->map:Lorg/simpleframework/xml/stream/InputNodeMap;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/stream/InputNodeMap;->get(Ljava/lang/String;)Lorg/simpleframework/xml/stream/InputNode;

    move-result-object v0

    return-object v0
.end method

.method public getAttributes()Lorg/simpleframework/xml/stream/NodeMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/simpleframework/xml/stream/NodeMap",
            "<",
            "Lorg/simpleframework/xml/stream/InputNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 190
    iget-object v0, p0, Lorg/simpleframework/xml/stream/InputElement;->map:Lorg/simpleframework/xml/stream/InputNodeMap;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lorg/simpleframework/xml/stream/InputElement;->node:Lorg/simpleframework/xml/stream/EventNode;

    invoke-interface {v0}, Lorg/simpleframework/xml/stream/EventNode;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNext()Lorg/simpleframework/xml/stream/InputNode;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 216
    iget-object v0, p0, Lorg/simpleframework/xml/stream/InputElement;->reader:Lorg/simpleframework/xml/stream/NodeReader;

    invoke-virtual {v0, p0}, Lorg/simpleframework/xml/stream/NodeReader;->readElement(Lorg/simpleframework/xml/stream/InputNode;)Lorg/simpleframework/xml/stream/InputNode;

    move-result-object v0

    return-object v0
.end method

.method public getNext(Ljava/lang/String;)Lorg/simpleframework/xml/stream/InputNode;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 233
    iget-object v0, p0, Lorg/simpleframework/xml/stream/InputElement;->reader:Lorg/simpleframework/xml/stream/NodeReader;

    invoke-virtual {v0, p0, p1}, Lorg/simpleframework/xml/stream/NodeReader;->readElement(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/String;)Lorg/simpleframework/xml/stream/InputNode;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Lorg/simpleframework/xml/stream/InputNode;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lorg/simpleframework/xml/stream/InputElement;->parent:Lorg/simpleframework/xml/stream/InputNode;

    return-object v0
.end method

.method public bridge synthetic getParent()Lorg/simpleframework/xml/stream/Node;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lorg/simpleframework/xml/stream/InputElement;->getParent()Lorg/simpleframework/xml/stream/InputNode;

    move-result-object v0

    return-object v0
.end method

.method public getPosition()Lorg/simpleframework/xml/stream/Position;
    .locals 2

    .prologue
    .line 104
    new-instance v0, Lorg/simpleframework/xml/stream/InputPosition;

    iget-object v1, p0, Lorg/simpleframework/xml/stream/InputElement;->node:Lorg/simpleframework/xml/stream/EventNode;

    invoke-direct {v0, v1}, Lorg/simpleframework/xml/stream/InputPosition;-><init>(Lorg/simpleframework/xml/stream/EventNode;)V

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lorg/simpleframework/xml/stream/InputElement;->node:Lorg/simpleframework/xml/stream/EventNode;

    invoke-interface {v0}, Lorg/simpleframework/xml/stream/EventNode;->getPrefix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReference()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lorg/simpleframework/xml/stream/InputElement;->node:Lorg/simpleframework/xml/stream/EventNode;

    invoke-interface {v0}, Lorg/simpleframework/xml/stream/EventNode;->getReference()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSource()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lorg/simpleframework/xml/stream/InputElement;->node:Lorg/simpleframework/xml/stream/EventNode;

    invoke-interface {v0}, Lorg/simpleframework/xml/stream/EventNode;->getSource()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 201
    iget-object v0, p0, Lorg/simpleframework/xml/stream/InputElement;->reader:Lorg/simpleframework/xml/stream/NodeReader;

    invoke-virtual {v0, p0}, Lorg/simpleframework/xml/stream/NodeReader;->readValue(Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isElement()Z
    .locals 1

    .prologue
    .line 166
    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 259
    iget-object v0, p0, Lorg/simpleframework/xml/stream/InputElement;->map:Lorg/simpleframework/xml/stream/InputNodeMap;

    invoke-virtual {v0}, Lorg/simpleframework/xml/stream/InputNodeMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lorg/simpleframework/xml/stream/InputElement;->reader:Lorg/simpleframework/xml/stream/NodeReader;

    invoke-virtual {v0, p0}, Lorg/simpleframework/xml/stream/NodeReader;->isEmpty(Lorg/simpleframework/xml/stream/InputNode;)Z

    move-result v0

    return v0

    .line 260
    :cond_0
    return v1
.end method

.method public isRoot()Z
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lorg/simpleframework/xml/stream/InputElement;->reader:Lorg/simpleframework/xml/stream/NodeReader;

    invoke-virtual {v0, p0}, Lorg/simpleframework/xml/stream/NodeReader;->isRoot(Lorg/simpleframework/xml/stream/InputNode;)Z

    move-result v0

    return v0
.end method

.method public skip()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 245
    iget-object v0, p0, Lorg/simpleframework/xml/stream/InputElement;->reader:Lorg/simpleframework/xml/stream/NodeReader;

    invoke-virtual {v0, p0}, Lorg/simpleframework/xml/stream/NodeReader;->skipElement(Lorg/simpleframework/xml/stream/InputNode;)V

    .line 246
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const-string/jumbo v0, "element %s"

    const/4 v1, 0x1

    .line 273
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lorg/simpleframework/xml/stream/InputElement;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
