.class public Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;
.super Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;
.source "SeslArrayMap.java"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap",
        "<TK;TV;>;",
        "Ljava/util/Map",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field mCollections:Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/support/sesl/core/util/SeslMapCollections",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    .local p0, "this":Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;, "Lcom/samsung/android/support/sesl/core/util/SeslArrayMap<TK;TV;>;"
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;-><init>()V

    .line 55
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "capacity"    # I

    .prologue
    .line 61
    .local p0, "this":Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;, "Lcom/samsung/android/support/sesl/core/util/SeslArrayMap<TK;TV;>;"
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;-><init>(I)V

    .line 62
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;)V
    .locals 0
    .param p1, "map"    # Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;

    .prologue
    .line 68
    .local p0, "this":Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;, "Lcom/samsung/android/support/sesl/core/util/SeslArrayMap<TK;TV;>;"
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;-><init>(Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;)V

    .line 69
    return-void
.end method

.method private getCollection()Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/android/support/sesl/core/util/SeslMapCollections",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 72
    .local p0, "this":Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;, "Lcom/samsung/android/support/sesl/core/util/SeslArrayMap<TK;TV;>;"
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;->mCollections:Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap$1;-><init>(Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;->mCollections:Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;->mCollections:Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;

    return-object v0
.end method


# virtual methods
.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 130
    .local p0, "this":Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;, "Lcom/samsung/android/support/sesl/core/util/SeslArrayMap<TK;TV;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-static {p0, p1}, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;->containsAllHelper(Ljava/util/Map;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public entrySet()Ljava/util/Set;
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
    .line 179
    .local p0, "this":Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;, "Lcom/samsung/android/support/sesl/core/util/SeslArrayMap<TK;TV;>;"
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;->getCollection()Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;->getEntrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 191
    .local p0, "this":Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;, "Lcom/samsung/android/support/sesl/core/util/SeslArrayMap<TK;TV;>;"
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;->getCollection()Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;->getKeySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 139
    .local p0, "this":Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;, "Lcom/samsung/android/support/sesl/core/util/SeslArrayMap<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    iget v1, p0, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;->mSize:I

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;->ensureCapacity(I)V

    .line 140
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 141
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 143
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    :cond_0
    return-void
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 151
    .local p0, "this":Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;, "Lcom/samsung/android/support/sesl/core/util/SeslArrayMap<TK;TV;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-static {p0, p1}, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;->removeAllHelper(Ljava/util/Map;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 161
    .local p0, "this":Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;, "Lcom/samsung/android/support/sesl/core/util/SeslArrayMap<TK;TV;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-static {p0, p1}, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;->retainAllHelper(Ljava/util/Map;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 203
    .local p0, "this":Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;, "Lcom/samsung/android/support/sesl/core/util/SeslArrayMap<TK;TV;>;"
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;->getCollection()Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;->getValues()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
