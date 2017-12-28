.class public Lcom/android/launcher3/util/ItemListHelper;
.super Ljava/lang/Object;
.source "ItemListHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/util/ItemListHelper$ItemInfoFilter;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public static filterItems(Ljava/util/List;Lcom/android/launcher3/util/ItemListHelper$ItemInfoFilter;)Ljava/util/List;
    .locals 4
    .param p1, "filter"    # Lcom/android/launcher3/util/ItemListHelper$ItemInfoFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;",
            "Lcom/android/launcher3/util/ItemListHelper$ItemInfoFilter;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 101
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 103
    .local v0, "filteredList":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 104
    .local v1, "itemInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    invoke-interface {p1, v1}, Lcom/android/launcher3/util/ItemListHelper$ItemInfoFilter;->filter(Lcom/android/launcher3/common/base/item/ItemInfo;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 105
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 109
    .end local v1    # "itemInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_1
    return-object v0
.end method

.method public static getAllItemMap()Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 20
    invoke-static {}, Lcom/android/launcher3/common/model/DataLoader;->getItemList()Ljava/util/List;

    move-result-object v0

    .line 21
    .local v0, "allItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 23
    .local v2, "itemMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-static {v0}, Lcom/android/launcher3/util/ItemListHelper;->getUnhiddenItemList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 25
    .local v3, "unhiddenItemList":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 26
    .local v1, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-wide v6, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v2, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 28
    .end local v1    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_0
    return-object v2
.end method

.method public static varargs getContainerIdMatchedItemList(Ljava/util/List;[I)Ljava/util/List;
    .locals 2
    .param p1, "containers"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;[I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 69
    .local p0, "allItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v0, Lcom/android/launcher3/util/ItemListHelper$4;

    invoke-direct {v0, p1}, Lcom/android/launcher3/util/ItemListHelper$4;-><init>([I)V

    .line 79
    .local v0, "containerFilter":Lcom/android/launcher3/util/ItemListHelper$ItemInfoFilter;
    invoke-static {p0, v0}, Lcom/android/launcher3/util/ItemListHelper;->filterItems(Ljava/util/List;Lcom/android/launcher3/util/ItemListHelper$ItemInfoFilter;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static getFolderItemList(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    .local p0, "allList":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v0, Lcom/android/launcher3/util/ItemListHelper$3;

    invoke-direct {v0}, Lcom/android/launcher3/util/ItemListHelper$3;-><init>()V

    .line 65
    .local v0, "folderItemFilter":Lcom/android/launcher3/util/ItemListHelper$ItemInfoFilter;
    invoke-static {p0, v0}, Lcom/android/launcher3/util/ItemListHelper;->filterItems(Ljava/util/List;Lcom/android/launcher3/util/ItemListHelper$ItemInfoFilter;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static getFolderList(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, "allList":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v0, Lcom/android/launcher3/util/ItemListHelper$2;

    invoke-direct {v0}, Lcom/android/launcher3/util/ItemListHelper$2;-><init>()V

    .line 53
    .local v0, "folderFilter":Lcom/android/launcher3/util/ItemListHelper$ItemInfoFilter;
    invoke-static {p0, v0}, Lcom/android/launcher3/util/ItemListHelper;->filterItems(Ljava/util/List;Lcom/android/launcher3/util/ItemListHelper$ItemInfoFilter;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static getTitleMatchedItemList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "itemTitle"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 32
    .local p0, "allItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v0, Lcom/android/launcher3/util/ItemListHelper$1;

    invoke-direct {v0, p1}, Lcom/android/launcher3/util/ItemListHelper$1;-><init>(Ljava/lang/String;)V

    .line 41
    .local v0, "titleFilter":Lcom/android/launcher3/util/ItemListHelper$ItemInfoFilter;
    invoke-static {p0, v0}, Lcom/android/launcher3/util/ItemListHelper;->filterItems(Ljava/util/List;Lcom/android/launcher3/util/ItemListHelper$ItemInfoFilter;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static getUnhiddenItemList(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 83
    .local p0, "allItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v0, Lcom/android/launcher3/util/ItemListHelper$5;

    invoke-direct {v0}, Lcom/android/launcher3/util/ItemListHelper$5;-><init>()V

    .line 93
    .local v0, "hiddenItemFilter":Lcom/android/launcher3/util/ItemListHelper$ItemInfoFilter;
    invoke-static {p0, v0}, Lcom/android/launcher3/util/ItemListHelper;->filterItems(Ljava/util/List;Lcom/android/launcher3/util/ItemListHelper$ItemInfoFilter;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method
