.class public Lmf/org/apache/xerces/dom/DOMImplementationListImpl;
.super Ljava/lang/Object;
.source "DOMImplementationListImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/DOMImplementationList;


# instance fields
.field private final fImplementations:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DOMImplementationListImpl;->fImplementations:Ljava/util/ArrayList;

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lmf/org/apache/xerces/dom/DOMImplementationListImpl;->fImplementations:Ljava/util/ArrayList;

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/util/Vector;)V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DOMImplementationListImpl;->fImplementations:Ljava/util/ArrayList;

    .line 58
    return-void
.end method


# virtual methods
.method public getLength()I
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMImplementationListImpl;->fImplementations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public item(I)Lmf/org/w3c/dom/DOMImplementation;
    .locals 1

    .prologue
    .line 66
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/DOMImplementationListImpl;->getLength()I

    move-result v0

    .line 67
    if-gez p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 70
    return-object v0

    .line 67
    :cond_1
    if-ge p1, v0, :cond_0

    .line 68
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMImplementationListImpl;->fImplementations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/w3c/dom/DOMImplementation;

    return-object v0
.end method
