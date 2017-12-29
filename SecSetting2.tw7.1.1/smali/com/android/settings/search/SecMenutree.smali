.class public Lcom/android/settings/search/SecMenutree;
.super Ljava/lang/Object;
.source "SecMenutree.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private root:Lcom/android/settings/search/SecMenu;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string/jumbo v0, "SecMenutree"

    iput-object v0, p0, Lcom/android/settings/search/SecMenutree;->TAG:Ljava/lang/String;

    .line 21
    new-instance v0, Lcom/android/settings/search/SecMenu;

    const-string/jumbo v2, "Settings"

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/search/SecMenu;-><init>(Lcom/android/settings/search/SecMenu;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/search/SecMenutree;->root:Lcom/android/settings/search/SecMenu;

    .line 23
    iget-object v0, p0, Lcom/android/settings/search/SecMenutree;->root:Lcom/android/settings/search/SecMenu;

    const-string/jumbo v1, ""

    iput-object v1, v0, Lcom/android/settings/search/SecMenu;->path:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 83
    iget-object v2, p0, Lcom/android/settings/search/SecMenutree;->root:Lcom/android/settings/search/SecMenu;

    iget-object v2, v2, Lcom/android/settings/search/SecMenu;->subMenues:Ljava/util/LinkedHashMap;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/search/SecMenutree;->root:Lcom/android/settings/search/SecMenu;

    iget-object v2, v2, Lcom/android/settings/search/SecMenu;->subMenues:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 84
    iget-object v2, p0, Lcom/android/settings/search/SecMenutree;->root:Lcom/android/settings/search/SecMenu;

    iget-object v2, v2, Lcom/android/settings/search/SecMenu;->subMenues:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "menu$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/search/SecMenu;

    .line 85
    .local v0, "menu":Lcom/android/settings/search/SecMenu;
    invoke-virtual {v0}, Lcom/android/settings/search/SecMenu;->clear()V

    goto :goto_0

    .line 87
    .end local v0    # "menu":Lcom/android/settings/search/SecMenu;
    :cond_0
    iget-object v2, p0, Lcom/android/settings/search/SecMenutree;->root:Lcom/android/settings/search/SecMenu;

    iget-object v2, v2, Lcom/android/settings/search/SecMenu;->subMenues:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->clear()V

    .line 88
    iget-object v2, p0, Lcom/android/settings/search/SecMenutree;->root:Lcom/android/settings/search/SecMenu;

    iput-object v3, v2, Lcom/android/settings/search/SecMenu;->subMenues:Ljava/util/LinkedHashMap;

    .line 82
    .end local v1    # "menu$iterator":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public find(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 93
    iget-object v2, p0, Lcom/android/settings/search/SecMenutree;->root:Lcom/android/settings/search/SecMenu;

    iget-object v2, v2, Lcom/android/settings/search/SecMenu;->subMenues:Ljava/util/LinkedHashMap;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/search/SecMenutree;->root:Lcom/android/settings/search/SecMenu;

    iget-object v2, v2, Lcom/android/settings/search/SecMenu;->subMenues:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 94
    iget-object v2, p0, Lcom/android/settings/search/SecMenutree;->root:Lcom/android/settings/search/SecMenu;

    iget-object v2, v2, Lcom/android/settings/search/SecMenu;->subMenues:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "menu$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/search/SecMenu;

    .line 95
    .local v0, "menu":Lcom/android/settings/search/SecMenu;
    iget-object v2, v0, Lcom/android/settings/search/SecMenu;->key:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0, p1}, Lcom/android/settings/search/SecMenu;->find(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 96
    :cond_1
    iget-object v2, v0, Lcom/android/settings/search/SecMenu;->key:Ljava/lang/String;

    return-object v2

    .line 100
    .end local v0    # "menu":Lcom/android/settings/search/SecMenu;
    .end local v1    # "menu$iterator":Ljava/util/Iterator;
    :cond_2
    return-object v3
.end method

.method public initMainMenues(Landroid/content/Context;Ljava/util/List;)V
    .locals 17
    .param p1, "c"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/settingslib/drawer/DashboardCategory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p2, "categories":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/drawer/DashboardCategory;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .local v12, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/drawer/DashboardCategory;>;"
    move-object/from16 v0, p2

    invoke-interface {v12, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 29
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "category$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settingslib/drawer/DashboardCategory;

    .line 30
    .local v8, "category":Lcom/android/settingslib/drawer/DashboardCategory;
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    invoke-virtual {v8}, Lcom/android/settingslib/drawer/DashboardCategory;->getTilesCount()I

    move-result v2

    if-ge v11, v2, :cond_0

    .line 31
    invoke-virtual {v8, v11}, Lcom/android/settingslib/drawer/DashboardCategory;->getTile(I)Lcom/android/settingslib/drawer/Tile;

    move-result-object v15

    .line 32
    .local v15, "tile":Lcom/android/settingslib/drawer/Tile;
    iget-object v2, v15, Lcom/android/settingslib/drawer/Tile;->title:Ljava/lang/CharSequence;

    if-eqz v2, :cond_2

    iget-object v2, v15, Lcom/android/settingslib/drawer/Tile;->title:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 33
    .local v3, "name":Ljava/lang/String;
    :goto_1
    iget v2, v15, Lcom/android/settingslib/drawer/Tile;->titleRes:I

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/android/settings/Utils;->getKeywordForSearch(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    .line 34
    .local v5, "keyword":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 35
    const-string/jumbo v2, "SecMenutree"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "skip keyword : "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    :cond_1
    iget-object v2, v15, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    const-string/jumbo v4, "com.android.settings.tileid"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 38
    .local v6, "key":Ljava/lang/String;
    iget-object v2, v15, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    const-string/jumbo v4, "com.android.settings.support"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 39
    .local v14, "support":Ljava/lang/String;
    iget-object v2, v15, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    const-string/jumbo v4, "com.android.settings.type"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 40
    .local v16, "type":Ljava/lang/String;
    iget-object v10, v15, Lcom/android/settingslib/drawer/Tile;->category:Ljava/lang/String;

    .line 41
    .local v10, "categoryId":Ljava/lang/String;
    const/4 v1, 0x0

    .line 42
    .local v1, "menu":Lcom/android/settings/search/SecMenu;
    const-string/jumbo v2, "quick"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 30
    .end local v1    # "menu":Lcom/android/settings/search/SecMenu;
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 32
    .end local v3    # "name":Ljava/lang/String;
    .end local v5    # "keyword":Ljava/lang/String;
    .end local v6    # "key":Ljava/lang/String;
    .end local v10    # "categoryId":Ljava/lang/String;
    .end local v14    # "support":Ljava/lang/String;
    .end local v16    # "type":Ljava/lang/String;
    :cond_2
    const-string/jumbo v3, ""

    .restart local v3    # "name":Ljava/lang/String;
    goto :goto_1

    .line 45
    .restart local v1    # "menu":Lcom/android/settings/search/SecMenu;
    .restart local v5    # "keyword":Ljava/lang/String;
    .restart local v6    # "key":Ljava/lang/String;
    .restart local v10    # "categoryId":Ljava/lang/String;
    .restart local v14    # "support":Ljava/lang/String;
    .restart local v16    # "type":Ljava/lang/String;
    :cond_3
    if-nez v6, :cond_4

    .line 46
    iget-object v2, v15, Lcom/android/settingslib/drawer/Tile;->title:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 48
    :cond_4
    if-eqz v16, :cond_5

    .line 49
    iget-object v2, v15, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    const-string/jumbo v4, "type"

    move-object/from16 v0, v16

    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    :cond_5
    iget-object v2, v15, Lcom/android/settingslib/drawer/Tile;->fragment:Ljava/lang/String;

    if-eqz v2, :cond_7

    .line 52
    new-instance v1, Lcom/android/settings/search/SecInnerMenu;

    .end local v1    # "menu":Lcom/android/settings/search/SecMenu;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/search/SecMenutree;->root:Lcom/android/settings/search/SecMenu;

    const-string/jumbo v4, ""

    iget-object v7, v15, Lcom/android/settingslib/drawer/Tile;->fragment:Ljava/lang/String;

    invoke-direct/range {v1 .. v7}, Lcom/android/settings/search/SecInnerMenu;-><init>(Lcom/android/settings/search/SecMenu;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :cond_6
    :goto_3
    if-eqz v1, :cond_8

    .line 58
    iput-object v10, v1, Lcom/android/settings/search/SecMenu;->categoryId:Ljava/lang/String;

    .line 59
    iget v2, v15, Lcom/android/settingslib/drawer/Tile;->iconRes:I

    iput v2, v1, Lcom/android/settings/search/SecMenu;->iconResId:I

    .line 60
    const/4 v2, 0x4

    iput v2, v1, Lcom/android/settings/search/SecMenu;->menuType:I

    .line 61
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/search/SecMenutree;->root:Lcom/android/settings/search/SecMenu;

    invoke-virtual {v2, v1}, Lcom/android/settings/search/SecMenu;->addSubMenu(Lcom/android/settings/search/SecMenu;)V

    goto :goto_2

    .line 53
    .restart local v1    # "menu":Lcom/android/settings/search/SecMenu;
    :cond_7
    iget-object v2, v15, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    if-eqz v2, :cond_6

    .line 54
    new-instance v1, Lcom/android/settings/search/SecLinkedMenu;

    .end local v1    # "menu":Lcom/android/settings/search/SecMenu;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/search/SecMenutree;->root:Lcom/android/settings/search/SecMenu;

    const-string/jumbo v4, ""

    iget-object v7, v15, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    invoke-direct/range {v1 .. v7}, Lcom/android/settings/search/SecLinkedMenu;-><init>(Lcom/android/settings/search/SecMenu;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    .local v1, "menu":Lcom/android/settings/search/SecMenu;
    goto :goto_3

    .line 63
    .end local v1    # "menu":Lcom/android/settings/search/SecMenu;
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "tile don\'t have any link information: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/search/SearchUtils;->insertLogBuffer(Ljava/lang/String;)V

    goto :goto_2

    .line 68
    .end local v3    # "name":Ljava/lang/String;
    .end local v5    # "keyword":Ljava/lang/String;
    .end local v6    # "key":Ljava/lang/String;
    .end local v8    # "category":Lcom/android/settingslib/drawer/DashboardCategory;
    .end local v10    # "categoryId":Ljava/lang/String;
    .end local v11    # "i":I
    .end local v14    # "support":Ljava/lang/String;
    .end local v15    # "tile":Lcom/android/settingslib/drawer/Tile;
    .end local v16    # "type":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/search/SecMenutree;->root:Lcom/android/settings/search/SecMenu;

    iget-object v2, v2, Lcom/android/settings/search/SecMenu;->subMenues:Ljava/util/LinkedHashMap;

    if-nez v2, :cond_a

    .line 69
    const-string/jumbo v2, "root.subMenues is null"

    invoke-static {v2}, Lcom/android/settings/search/SearchUtils;->insertLogBuffer(Ljava/lang/String;)V

    .line 70
    return-void

    .line 73
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/search/SecMenutree;->root:Lcom/android/settings/search/SecMenu;

    iget-object v2, v2, Lcom/android/settings/search/SecMenu;->subMenues:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "menu$iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/search/SecMenu;

    .line 74
    .restart local v1    # "menu":Lcom/android/settings/search/SecMenu;
    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/android/settings/search/SecMenu;->initSubMenu(Landroid/content/Context;)V

    goto :goto_4

    .line 26
    .end local v1    # "menu":Lcom/android/settings/search/SecMenu;
    :cond_b
    return-void
.end method

.method public saveSearchItems(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 1
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "localeStr"    # Ljava/lang/String;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/settings/search/SecMenutree;->root:Lcom/android/settings/search/SecMenu;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/settings/search/SecMenu;->save(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 78
    return-void
.end method
