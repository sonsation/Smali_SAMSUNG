.class public Lcom/android/launcher3/util/MultiHashMap;
.super Ljava/util/HashMap;
.source "MultiHashMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/HashMap",
        "<TK;",
        "Ljava/util/ArrayList",
        "<TV;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    .local p0, "this":Lcom/android/launcher3/util/MultiHashMap;, "Lcom/android/launcher3/util/MultiHashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 30
    .local p0, "this":Lcom/android/launcher3/util/MultiHashMap;, "Lcom/android/launcher3/util/MultiHashMap<TK;TV;>;"
    invoke-direct {p0, p1}, Ljava/util/HashMap;-><init>(I)V

    .line 31
    return-void
.end method


# virtual methods
.method public addToList(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p0, "this":Lcom/android/launcher3/util/MultiHashMap;, "Lcom/android/launcher3/util/MultiHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/MultiHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 35
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TV;>;"
    if-nez v0, :cond_0

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TV;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .restart local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TV;>;"
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/util/MultiHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    :goto_0
    return-void

    .line 40
    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public clone()Lcom/android/launcher3/util/MultiHashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/launcher3/util/MultiHashMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "this":Lcom/android/launcher3/util/MultiHashMap;, "Lcom/android/launcher3/util/MultiHashMap<TK;TV;>;"
    new-instance v1, Lcom/android/launcher3/util/MultiHashMap;

    invoke-virtual {p0}, Lcom/android/launcher3/util/MultiHashMap;->size()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/android/launcher3/util/MultiHashMap;-><init>(I)V

    .line 47
    .local v1, "map":Lcom/android/launcher3/util/MultiHashMap;, "Lcom/android/launcher3/util/MultiHashMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/util/MultiHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 48
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;Ljava/util/ArrayList<TV;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v4, v5}, Lcom/android/launcher3/util/MultiHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 50
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;Ljava/util/ArrayList<TV;>;>;"
    :cond_0
    return-object v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 25
    .local p0, "this":Lcom/android/launcher3/util/MultiHashMap;, "Lcom/android/launcher3/util/MultiHashMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/util/MultiHashMap;->clone()Lcom/android/launcher3/util/MultiHashMap;

    move-result-object v0

    return-object v0
.end method
