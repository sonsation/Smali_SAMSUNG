.class abstract Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;
.super Ljava/lang/Object;
.source "SeslMapCollections.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$ValuesCollection;,
        Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$KeySet;,
        Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$EntrySet;,
        Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$MapIterator;,
        Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$ArrayIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field mEntrySet:Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$EntrySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/support/sesl/core/util/SeslMapCollections",
            "<TK;TV;>.EntrySet;"
        }
    .end annotation
.end field

.field mKeySet:Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$KeySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/support/sesl/core/util/SeslMapCollections",
            "<TK;TV;>.KeySet;"
        }
    .end annotation
.end field

.field mValues:Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$ValuesCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/support/sesl/core/util/SeslMapCollections",
            "<TK;TV;>.ValuesCollection;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 29
    .local p0, "this":Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;, "Lcom/samsung/android/support/sesl/core/util/SeslMapCollections<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static containsAllHelper(Ljava/util/Map;Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 454
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 455
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 456
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 457
    const/4 v1, 0x0

    .line 460
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static equalsSetHelper(Ljava/util/Set;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<TT;>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, "set":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 510
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 524
    :cond_0
    :goto_0
    return v3

    .line 513
    :cond_1
    instance-of v4, p1, Ljava/util/Set;

    if-eqz v4, :cond_0

    move-object v1, p1

    .line 514
    check-cast v1, Ljava/util/Set;

    .line 517
    .local v1, "s":Ljava/util/Set;, "Ljava/util/Set<*>;"
    :try_start_0
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v4

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v5

    if-ne v4, v5, :cond_2

    invoke-interface {p0, v1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    if-eqz v4, :cond_2

    :goto_1
    move v3, v2

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1

    .line 518
    :catch_0
    move-exception v0

    .line 519
    .local v0, "ignored":Ljava/lang/NullPointerException;
    goto :goto_0

    .line 520
    .end local v0    # "ignored":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 521
    .local v0, "ignored":Ljava/lang/ClassCastException;
    goto :goto_0
.end method

.method public static removeAllHelper(Ljava/util/Map;Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 464
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    .line 465
    .local v1, "oldSize":I
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 466
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 467
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 469
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static retainAllHelper(Ljava/util/Map;Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 473
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    .line 474
    .local v1, "oldSize":I
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 475
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TK;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 476
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 477
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 480
    :cond_1
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method


# virtual methods
.method protected abstract colClear()V
.end method

.method protected abstract colGetEntry(II)Ljava/lang/Object;
.end method

.method protected abstract colGetMap()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation
.end method

.method protected abstract colGetSize()I
.end method

.method protected abstract colIndexOfKey(Ljava/lang/Object;)I
.end method

.method protected abstract colIndexOfValue(Ljava/lang/Object;)I
.end method

.method protected abstract colPut(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation
.end method

.method protected abstract colRemoveAt(I)V
.end method

.method protected abstract colSetValue(ILjava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation
.end method

.method public getEntrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 528
    .local p0, "this":Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;, "Lcom/samsung/android/support/sesl/core/util/SeslMapCollections<TK;TV;>;"
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;->mEntrySet:Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$EntrySet;

    if-nez v0, :cond_0

    .line 529
    new-instance v0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$EntrySet;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$EntrySet;-><init>(Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;->mEntrySet:Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$EntrySet;

    .line 531
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;->mEntrySet:Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$EntrySet;

    return-object v0
.end method

.method public getKeySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 535
    .local p0, "this":Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;, "Lcom/samsung/android/support/sesl/core/util/SeslMapCollections<TK;TV;>;"
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;->mKeySet:Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$KeySet;

    if-nez v0, :cond_0

    .line 536
    new-instance v0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$KeySet;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$KeySet;-><init>(Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;->mKeySet:Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$KeySet;

    .line 538
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;->mKeySet:Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$KeySet;

    return-object v0
.end method

.method public getValues()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 542
    .local p0, "this":Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;, "Lcom/samsung/android/support/sesl/core/util/SeslMapCollections<TK;TV;>;"
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;->mValues:Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$ValuesCollection;

    if-nez v0, :cond_0

    .line 543
    new-instance v0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$ValuesCollection;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$ValuesCollection;-><init>(Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;->mValues:Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$ValuesCollection;

    .line 545
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;->mValues:Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$ValuesCollection;

    return-object v0
.end method

.method public toArrayHelper(I)[Ljava/lang/Object;
    .locals 4
    .param p1, "offset"    # I

    .prologue
    .line 485
    .local p0, "this":Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;, "Lcom/samsung/android/support/sesl/core/util/SeslMapCollections<TK;TV;>;"
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;->colGetSize()I

    move-result v0

    .line 486
    .local v0, "N":I
    new-array v2, v0, [Ljava/lang/Object;

    .line 487
    .local v2, "result":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 488
    invoke-virtual {p0, v1, p1}, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v1

    .line 487
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 490
    :cond_0
    return-object v2
.end method

.method public toArrayHelper([Ljava/lang/Object;I)[Ljava/lang/Object;
    .locals 4
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I)[TT;"
        }
    .end annotation

    .prologue
    .line 494
    .local p0, "this":Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;, "Lcom/samsung/android/support/sesl/core/util/SeslMapCollections<TK;TV;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;->colGetSize()I

    move-result v0

    .line 495
    .local v0, "N":I
    array-length v3, p1

    if-ge v3, v0, :cond_0

    .line 497
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    move-object v2, v3

    check-cast v2, [Ljava/lang/Object;

    .line 498
    .local v2, "newArray":[Ljava/lang/Object;, "[TT;"
    move-object p1, v2

    .line 500
    .end local v2    # "newArray":[Ljava/lang/Object;, "[TT;"
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 501
    invoke-virtual {p0, v1, p2}, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, p1, v1

    .line 500
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 503
    :cond_1
    array-length v3, p1

    if-le v3, v0, :cond_2

    .line 504
    const/4 v3, 0x0

    aput-object v3, p1, v0

    .line 506
    :cond_2
    return-object p1
.end method
