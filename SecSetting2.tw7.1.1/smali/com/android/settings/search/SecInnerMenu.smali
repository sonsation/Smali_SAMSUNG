.class public Lcom/android/settings/search/SecInnerMenu;
.super Lcom/android/settings/search/SecMenu;
.source "SecInnerMenu.java"


# instance fields
.field private args:Landroid/os/Bundle;

.field private fragment:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/settings/search/SecMenu;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "parent"    # Lcom/android/settings/search/SecMenu;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "summary"    # Ljava/lang/String;
    .param p4, "keywords"    # Ljava/lang/String;
    .param p5, "key"    # Ljava/lang/String;
    .param p6, "fragment"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-direct/range {p0 .. p5}, Lcom/android/settings/search/SecMenu;-><init>(Lcom/android/settings/search/SecMenu;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    iput-object p6, p0, Lcom/android/settings/search/SecInnerMenu;->fragment:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public constructor <init>(Lcom/android/settings/search/SecMenu;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "parent"    # Lcom/android/settings/search/SecMenu;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "summary"    # Ljava/lang/String;
    .param p4, "keywords"    # Ljava/lang/String;
    .param p5, "key"    # Ljava/lang/String;
    .param p6, "fragment"    # Ljava/lang/String;
    .param p7, "args"    # Landroid/os/Bundle;

    .prologue
    .line 26
    invoke-direct/range {p0 .. p5}, Lcom/android/settings/search/SecMenu;-><init>(Lcom/android/settings/search/SecMenu;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    iput-object p6, p0, Lcom/android/settings/search/SecInnerMenu;->fragment:Ljava/lang/String;

    .line 28
    iput-object p7, p0, Lcom/android/settings/search/SecInnerMenu;->args:Landroid/os/Bundle;

    .line 25
    return-void
.end method


# virtual methods
.method public getFragment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/settings/search/SecInnerMenu;->fragment:Ljava/lang/String;

    return-object v0
.end method

.method public initSubMenu(Landroid/content/Context;)V
    .locals 4
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 34
    iget-object v2, p0, Lcom/android/settings/search/SecInnerMenu;->fragment:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/search/SecInnerMenu;->args:Landroid/os/Bundle;

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/settings/search/SecInnerMenu;->initInnerSubMenu(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 36
    iget-object v2, p0, Lcom/android/settings/search/SecInnerMenu;->subMenues:Ljava/util/LinkedHashMap;

    if-nez v2, :cond_0

    return-void

    .line 38
    :cond_0
    iget-object v2, p0, Lcom/android/settings/search/SecInnerMenu;->subMenues:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "menu$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/search/SecMenu;

    .line 39
    .local v0, "menu":Lcom/android/settings/search/SecMenu;
    invoke-virtual {v0, p1}, Lcom/android/settings/search/SecMenu;->initSubMenu(Landroid/content/Context;)V

    goto :goto_0

    .line 33
    .end local v0    # "menu":Lcom/android/settings/search/SecMenu;
    :cond_1
    return-void
.end method

.method public saveInnerMenu(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 24
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "locale"    # Ljava/lang/String;

    .prologue
    .line 44
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/search/SecInnerMenu;->title:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/search/SecInnerMenu;->summary:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settings/search/SecInnerMenu;->fragment:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/search/SecInnerMenu;->title:Ljava/lang/String;

    .line 45
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/settings/search/SecInnerMenu;->iconResId:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/settings/search/SecInnerMenu;->index:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/search/SecInnerMenu;->keywords:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/search/SecInnerMenu;->key:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/search/SecInnerMenu;->menuType:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/search/SecInnerMenu;->path:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/search/SecInnerMenu;->categoryId:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/search/SecInnerMenu;->args:Landroid/os/Bundle;

    move-object/from16 v23, v0

    .line 44
    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 45
    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v19, -0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    .line 44
    invoke-virtual/range {v1 .. v23}, Lcom/android/settings/search/SecInnerMenu;->updateOneRowWithFilteredData(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 43
    return-void
.end method
