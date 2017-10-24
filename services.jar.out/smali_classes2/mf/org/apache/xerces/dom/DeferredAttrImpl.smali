.class public final Lmf/org/apache/xerces/dom/DeferredAttrImpl;
.super Lmf/org/apache/xerces/dom/AttrImpl;
.source "DeferredAttrImpl.java"

# interfaces
.implements Lmf/org/apache/xerces/dom/DeferredNode;


# static fields
.field static final serialVersionUID:J = 0x5fcd35369ab8d3dcL


# instance fields
.field protected transient fNodeIndex:I


# direct methods
.method constructor <init>(Lmf/org/apache/xerces/dom/DeferredDocumentImpl;I)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 92
    invoke-direct {p0, p1, v0}, Lmf/org/apache/xerces/dom/AttrImpl;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V

    .line 94
    iput p2, p0, Lmf/org/apache/xerces/dom/DeferredAttrImpl;->fNodeIndex:I

    .line 95
    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/dom/DeferredAttrImpl;->needsSyncData(Z)V

    .line 96
    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/dom/DeferredAttrImpl;->needsSyncChildren(Z)V

    .line 98
    return-void
.end method


# virtual methods
.method public getNodeIndex()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lmf/org/apache/xerces/dom/DeferredAttrImpl;->fNodeIndex:I

    return v0
.end method

.method protected synchronizeChildren()V
    .locals 2

    .prologue
    .line 139
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/DeferredAttrImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    .line 140
    iget v1, p0, Lmf/org/apache/xerces/dom/DeferredAttrImpl;->fNodeIndex:I

    invoke-virtual {v0, p0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->synchronizeChildren(Lmf/org/apache/xerces/dom/AttrImpl;I)V

    .line 141
    return-void
.end method

.method protected synchronizeData()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 117
    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/dom/DeferredAttrImpl;->needsSyncData(Z)V

    .line 121
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/DeferredAttrImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    .line 122
    iget v1, p0, Lmf/org/apache/xerces/dom/DeferredAttrImpl;->fNodeIndex:I

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeName(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmf/org/apache/xerces/dom/DeferredAttrImpl;->name:Ljava/lang/String;

    .line 123
    iget v1, p0, Lmf/org/apache/xerces/dom/DeferredAttrImpl;->fNodeIndex:I

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeExtra(I)I

    move-result v4

    .line 124
    and-int/lit8 v1, v4, 0x20

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/dom/DeferredAttrImpl;->isSpecified(Z)V

    .line 125
    and-int/lit16 v1, v4, 0x200

    if-nez v1, :cond_1

    :goto_1
    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/dom/DeferredAttrImpl;->isIdAttribute(Z)V

    .line 127
    iget v1, p0, Lmf/org/apache/xerces/dom/DeferredAttrImpl;->fNodeIndex:I

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getLastChild(I)I

    move-result v1

    .line 128
    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getTypeInfo(I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DeferredAttrImpl;->type:Ljava/lang/Object;

    .line 129
    return-void

    :cond_0
    move v1, v3

    .line 124
    goto :goto_0

    :cond_1
    move v2, v3

    .line 125
    goto :goto_1
.end method
