.class public Lmf/org/apache/html/dom/HTMLTitleElementImpl;
.super Lmf/org/apache/html/dom/HTMLElementImpl;
.source "HTMLTitleElementImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/html/HTMLTitleElement;


# static fields
.field private static final serialVersionUID:J = 0xc3521a708d71303L


# direct methods
.method public constructor <init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Lmf/org/apache/html/dom/HTMLElementImpl;-><init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V

    .line 82
    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 3

    .prologue
    .line 40
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 44
    invoke-virtual {p0}, Lmf/org/apache/html/dom/HTMLTitleElementImpl;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v1

    .line 45
    :goto_0
    if-eqz v1, :cond_1

    .line 47
    instance-of v0, v1, Lmf/org/w3c/dom/Text;

    if-nez v0, :cond_0

    .line 50
    :goto_1
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 48
    check-cast v0, Lmf/org/w3c/dom/Text;

    invoke-interface {v0}, Lmf/org/w3c/dom/Text;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 52
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 63
    invoke-virtual {p0}, Lmf/org/apache/html/dom/HTMLTitleElementImpl;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 64
    :goto_0
    if-eqz v0, :cond_0

    .line 66
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v1

    .line 67
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLTitleElementImpl;->removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-object v0, v1

    .line 68
    goto :goto_0

    .line 70
    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/html/dom/HTMLTitleElementImpl;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v0

    invoke-interface {v0, p1}, Lmf/org/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lmf/org/w3c/dom/Text;

    move-result-object v0

    invoke-virtual {p0}, Lmf/org/apache/html/dom/HTMLTitleElementImpl;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/html/dom/HTMLTitleElementImpl;->insertBefore(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    .line 71
    return-void
.end method
