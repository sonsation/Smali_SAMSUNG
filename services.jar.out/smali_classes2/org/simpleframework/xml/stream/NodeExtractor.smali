.class Lorg/simpleframework/xml/stream/NodeExtractor;
.super Ljava/util/LinkedList;
.source "NodeExtractor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedList",
        "<",
        "Lorg/w3c/dom/Node;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Document;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    .line 48
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/stream/NodeExtractor;->extract(Lorg/w3c/dom/Document;)V

    .line 49
    return-void
.end method

.method private extract(Lorg/w3c/dom/Document;)V
    .locals 1

    .prologue
    .line 60
    invoke-interface {p1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    .line 62
    if-nez v0, :cond_0

    .line 66
    :goto_0
    return-void

    .line 63
    :cond_0
    invoke-virtual {p0, v0}, Lorg/simpleframework/xml/stream/NodeExtractor;->offer(Ljava/lang/Object;)Z

    .line 64
    invoke-direct {p0, v0}, Lorg/simpleframework/xml/stream/NodeExtractor;->extract(Lorg/w3c/dom/Node;)V

    goto :goto_0
.end method

.method private extract(Lorg/w3c/dom/Node;)V
    .locals 6

    .prologue
    .line 77
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 78
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    const/4 v0, 0x0

    .line 80
    :goto_0
    if-lt v0, v2, :cond_0

    .line 89
    return-void

    .line 81
    :cond_0
    invoke-interface {v1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 82
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    const/16 v5, 0x8

    .line 84
    if-ne v4, v5, :cond_1

    .line 80
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 85
    :cond_1
    invoke-virtual {p0, v3}, Lorg/simpleframework/xml/stream/NodeExtractor;->offer(Ljava/lang/Object;)Z

    .line 86
    invoke-direct {p0, v3}, Lorg/simpleframework/xml/stream/NodeExtractor;->extract(Lorg/w3c/dom/Node;)V

    goto :goto_1
.end method
