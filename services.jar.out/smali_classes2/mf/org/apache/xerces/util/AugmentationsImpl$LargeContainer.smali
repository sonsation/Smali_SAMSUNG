.class final Lmf/org/apache/xerces/util/AugmentationsImpl$LargeContainer;
.super Lmf/org/apache/xerces/util/AugmentationsImpl$AugmentationsItemsContainer;
.source "AugmentationsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/util/AugmentationsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LargeContainer"
.end annotation


# instance fields
.field private final fAugmentations:Ljava/util/HashMap;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 243
    invoke-direct {p0}, Lmf/org/apache/xerces/util/AugmentationsImpl$AugmentationsItemsContainer;-><init>()V

    .line 245
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/util/AugmentationsImpl$LargeContainer;->fAugmentations:Ljava/util/HashMap;

    .line 243
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lmf/org/apache/xerces/util/AugmentationsImpl$LargeContainer;->fAugmentations:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 265
    return-void
.end method

.method public expand()Lmf/org/apache/xerces/util/AugmentationsImpl$AugmentationsItemsContainer;
    .locals 0

    .prologue
    .line 272
    return-object p0
.end method

.method public getItem(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lmf/org/apache/xerces/util/AugmentationsImpl$LargeContainer;->fAugmentations:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isFull()Z
    .locals 1

    .prologue
    .line 268
    const/4 v0, 0x0

    return v0
.end method

.method public keys()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lmf/org/apache/xerces/util/AugmentationsImpl$LargeContainer;->fAugmentations:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public putItem(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lmf/org/apache/xerces/util/AugmentationsImpl$LargeContainer;->fAugmentations:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public removeItem(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lmf/org/apache/xerces/util/AugmentationsImpl$LargeContainer;->fAugmentations:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 276
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v0, "LargeContainer"

    .line 277
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 278
    iget-object v0, p0, Lmf/org/apache/xerces/util/AugmentationsImpl$LargeContainer;->fAugmentations:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 279
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    const-string/jumbo v3, "\nkey == "

    .line 281
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 282
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string/jumbo v3, "; value == "

    .line 283
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 284
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 286
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
