.class public Lmf/org/apache/wml/dom/WMLNoopElementImpl;
.super Lmf/org/apache/wml/dom/WMLElementImpl;
.source "WMLNoopElementImpl.java"

# interfaces
.implements Lmf/org/apache/wml/WMLNoopElement;


# static fields
.field private static final serialVersionUID:J = -0x15f1f5198c07fc9bL


# direct methods
.method public constructor <init>(Lmf/org/apache/wml/dom/WMLDocumentImpl;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lmf/org/apache/wml/dom/WMLElementImpl;-><init>(Lmf/org/apache/wml/dom/WMLDocumentImpl;Ljava/lang/String;)V

    .line 32
    return-void
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "class"

    .line 39
    invoke-virtual {p0, v0}, Lmf/org/apache/wml/dom/WMLNoopElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "id"

    .line 47
    invoke-virtual {p0, v0}, Lmf/org/apache/wml/dom/WMLNoopElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setClassName(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "class"

    .line 35
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/wml/dom/WMLNoopElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "id"

    .line 43
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/wml/dom/WMLNoopElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-void
.end method
