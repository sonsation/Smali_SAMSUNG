.class Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;
.super Ljava/lang/Object;
.source "AppsProxyCallbacksImpl.java"

# interfaces
.implements Lcom/android/launcher3/proxy/AppsProxyCallbacks;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/android/launcher3/allapps/controller/AppsController;)V
    .locals 0
    .param p1, "appsController"    # Lcom/android/launcher3/allapps/controller/AppsController;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    .line 49
    return-void
.end method


# virtual methods
.method public changeFolderTitle(Lcom/android/launcher3/common/base/item/ItemInfo;Ljava/lang/String;)V
    .locals 2
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;
    .param p2, "newTitle"    # Ljava/lang/String;

    .prologue
    .line 327
    iget-object v1, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->getItemViewByTitle(Ljava/lang/String;)Lcom/android/launcher3/common/view/IconView;

    move-result-object v0

    .line 328
    .local v0, "iv":Lcom/android/launcher3/common/view/IconView;
    if-nez v0, :cond_0

    .line 336
    :goto_0
    return-void

    .line 332
    :cond_0
    iput-object p2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    .line 333
    iget-object v1, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/view/IconView;->setText(Ljava/lang/CharSequence;)V

    .line 335
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/allapps/controller/AppsController;->updateItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto :goto_0
.end method

.method public changeScreengrid(Ljava/lang/String;)V
    .locals 1
    .param p1, "gridOption"    # Ljava/lang/String;

    .prologue
    .line 345
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsScreenGridPanel()Lcom/android/launcher3/allapps/AppsScreenGridPanel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->setScreenGridProxy(Ljava/lang/String;)V

    .line 360
    return-void
.end method

.method public checkMatchGridOption(Ljava/lang/String;)Z
    .locals 5
    .param p1, "gridOption"    # Ljava/lang/String;

    .prologue
    .line 383
    const/4 v3, 0x2

    new-array v2, v3, [I

    .line 385
    .local v2, "xy":[I
    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/controller/AppsController;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/android/launcher3/util/ScreenGridUtilities;->loadCurrentAppsGridSize(Landroid/content/Context;[I)V

    .line 386
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    aget v4, v2, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    aget v4, v2, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 388
    .local v0, "currentGrid":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    .line 389
    const/4 v1, 0x1

    .line 394
    .local v1, "result":Z
    :goto_0
    return v1

    .line 391
    .end local v1    # "result":Z
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "result":Z
    goto :goto_0
.end method

.method public checkValidGridOption(Ljava/lang/String;)Z
    .locals 6
    .param p1, "gridOption"    # Ljava/lang/String;

    .prologue
    .line 364
    const/4 v1, 0x0

    .line 366
    .local v1, "result":Z
    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/controller/AppsController;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0004

    .line 367
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 369
    .local v0, "mScreenGridButtonMap":[Ljava/lang/String;
    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 370
    array-length v4, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v2, v0, v3

    .line 371
    .local v2, "supportGrid":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    .line 372
    const/4 v1, 0x1

    .line 370
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 377
    .end local v2    # "supportGrid":Ljava/lang/String;
    :cond_1
    return v1
.end method

.method public deleteFolder(Lcom/android/launcher3/folder/FolderInfo;)V
    .locals 3
    .param p1, "folderInfo"    # Lcom/android/launcher3/folder/FolderInfo;

    .prologue
    .line 309
    new-instance v0, Lcom/android/launcher3/common/dialog/FolderDeleteDialog;

    invoke-direct {v0}, Lcom/android/launcher3/common/dialog/FolderDeleteDialog;-><init>()V

    .line 310
    .local v0, "dialog":Lcom/android/launcher3/common/dialog/FolderDeleteDialog;
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/controller/AppsController;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/launcher3/common/dialog/FolderDeleteDialog;->show(Landroid/app/FragmentManager;Lcom/android/launcher3/common/stage/Stage;Lcom/android/launcher3/folder/FolderInfo;)V

    .line 311
    return-void
.end method

.method public getFolderItemViewByTitle(Ljava/lang/String;)Lcom/android/launcher3/folder/view/FolderIconView;
    .locals 4
    .param p1, "itemTitle"    # Ljava/lang/String;

    .prologue
    .line 74
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsPagedView()Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->findIconViews(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 76
    .local v0, "iconViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/view/IconView;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/view/IconView;

    .line 77
    .local v1, "v":Lcom/android/launcher3/common/view/IconView;
    instance-of v3, v1, Lcom/android/launcher3/folder/view/FolderIconView;

    if-eqz v3, :cond_0

    .line 78
    check-cast v1, Lcom/android/launcher3/folder/view/FolderIconView;

    .line 82
    .end local v1    # "v":Lcom/android/launcher3/common/view/IconView;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getItemViewByComponentName(Landroid/content/ComponentName;)Landroid/view/View;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->getItemViewByComponentName(Landroid/content/ComponentName;)Lcom/android/launcher3/common/view/IconView;

    move-result-object v0

    return-object v0
.end method

.method public getItemViewByComponentName(Landroid/content/ComponentName;)Lcom/android/launcher3/common/view/IconView;
    .locals 1
    .param p1, "cn"    # Landroid/content/ComponentName;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsPagedView()Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->findIconView(Landroid/content/ComponentName;)Lcom/android/launcher3/common/view/IconView;

    move-result-object v0

    return-object v0
.end method

.method public getItemViewByTitle(Ljava/lang/String;)Lcom/android/launcher3/common/view/IconView;
    .locals 4
    .param p1, "itemTitle"    # Ljava/lang/String;

    .prologue
    .line 92
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsPagedView()Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->findIconViews(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 94
    .local v0, "iconViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/view/IconView;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/view/IconView;

    .line 95
    .local v1, "v":Lcom/android/launcher3/common/view/IconView;
    instance-of v3, v1, Lcom/android/launcher3/folder/view/FolderIconView;

    if-nez v3, :cond_0

    .line 99
    .end local v1    # "v":Lcom/android/launcher3/common/view/IconView;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPageCount()I
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsPagedView()Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getPageCount()I

    move-result v0

    return v0
.end method

.method public getPagedView()Lcom/android/launcher3/common/base/view/PagedView;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsPagedView()Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v0

    return-object v0
.end method

.method public getViewType()Lcom/android/launcher3/allapps/controller/AppsController$ViewType;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AppsController;->getViewType()Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    move-result-object v0

    return-object v0
.end method

.method public hasPageEmptySpace(I)Z
    .locals 4
    .param p1, "page"    # I

    .prologue
    const/4 v1, 0x0

    .line 274
    if-ltz p1, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsPagedView()Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getPageCount()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    if-le p1, v2, :cond_2

    .line 275
    :cond_0
    sget-object v2, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->TAG:Ljava/lang/String;

    const-string v3, "move to the invalid page"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :cond_1
    :goto_0
    return v1

    .line 278
    :cond_2
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsPagedView()Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getItemCountPageAt(I)I

    move-result v0

    .line 279
    .local v0, "pageItemCount":I
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsPagedView()Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getMaxItemsPerScreen()I

    move-result v2

    if-eq v0, v2, :cond_1

    .line 282
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hideViewTypePopup()V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AppsController;->hideViewTypeDialog()V

    .line 59
    return-void
.end method

.method public moveItem(Lcom/android/launcher3/common/view/IconView;I)V
    .locals 21
    .param p1, "iconView"    # Lcom/android/launcher3/common/view/IconView;
    .param p2, "page"    # I

    .prologue
    .line 130
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsPagedView()Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getPageCount()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    move/from16 v0, p2

    if-gt v0, v3, :cond_0

    if-gez p2, :cond_1

    .line 131
    :cond_0
    sget-object v3, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->TAG:Ljava/lang/String;

    const-string v4, "move to the invalid page"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :goto_0
    return-void

    .line 135
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/common/view/IconView;->getTag()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 136
    .local v11, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsPagedView()Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v3

    iget-wide v12, v11, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    long-to-int v4, v12

    invoke-virtual {v3, v4}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 137
    .local v9, "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Lcom/android/launcher3/common/base/view/CellLayout;->removeView(Landroid/view/View;)V

    .line 140
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsPagedView()Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getItemCountPageAt(I)I

    move-result v3

    add-int/lit8 v19, v3, -0x1

    .line 141
    .local v19, "lastRank":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/controller/AppsController;->getReorderController()Lcom/android/launcher3/allapps/controller/AppsReorderController;

    move-result-object v2

    .line 142
    .local v2, "reorderController":Lcom/android/launcher3/allapps/controller/AppsReorderController;
    iget v5, v11, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    .line 143
    .local v5, "startPos":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsPagedView()Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v3

    iget-wide v12, v11, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    long-to-int v4, v12

    invoke-virtual {v3, v4}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getItemCountPageAt(I)I

    move-result v6

    .line 144
    .local v6, "endPos":I
    const/4 v7, 0x1

    .line 146
    .local v7, "direction":I
    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-wide v12, v11, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    long-to-int v8, v12

    invoke-virtual/range {v2 .. v8}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->realTimeReorder(IFIIII)V

    .line 149
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsPagedView()Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getMaxItemsPerScreen()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move/from16 v0, v19

    if-ne v0, v3, :cond_6

    .line 151
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsPagedView()Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getPageCount()I

    move-result v3

    move/from16 v0, p2

    if-ne v0, v3, :cond_3

    .line 153
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsPagedView()Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/view/AppsPagedView;->createAppsPage()Lcom/android/launcher3/allapps/view/AppsViewCellLayout;

    .line 172
    :cond_2
    const/4 v3, 0x0

    iput v3, v11, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    .line 173
    add-int/lit8 v3, p2, 0x1

    int-to-long v12, v3

    iput-wide v12, v11, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    .line 179
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/controller/AppsController;->removeEmptyPagesAndUpdateAllItemsInfo()Z

    .line 180
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v11}, Lcom/android/launcher3/allapps/controller/AppsController;->addItem(Landroid/view/View;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 181
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    const-wide/16 v12, -0x66

    iget-wide v14, v11, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    iget v3, v11, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    .line 182
    invoke-virtual {v4}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsPagedView()Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellCountX()I

    move-result v4

    rem-int v16, v3, v4

    iget v3, v11, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    .line 183
    invoke-virtual {v4}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsPagedView()Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellCountX()I

    move-result v4

    div-int v17, v3, v4

    iget v0, v11, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    move/from16 v18, v0

    .line 181
    invoke-virtual/range {v10 .. v18}, Lcom/android/launcher3/allapps/controller/AppsController;->addOrMoveItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJIII)V

    .line 184
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/controller/AppsController;->updateDirtyItems()V

    .line 185
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsPagedView()Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->snapToPageImmediately(I)V

    goto/16 :goto_0

    .line 155
    :cond_3
    add-int/lit8 v3, p2, 0x1

    invoke-virtual {v2, v3}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->getNumScreenNeededChange(I)I

    move-result v20

    .line 156
    .local v20, "pageNum":I
    move/from16 v8, v20

    .local v8, "i":I
    :goto_2
    add-int/lit8 v3, p2, 0x1

    if-lt v8, v3, :cond_2

    .line 157
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsPagedView()Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getItemCountPageAt(I)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsPagedView()Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getMaxItemsPerScreen()I

    move-result v4

    if-lt v3, v4, :cond_4

    .line 158
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v8}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->overLastItemNextScreen(IFI)V

    .line 161
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsPagedView()Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getItemCountPageAt(I)I

    move-result v5

    .line 162
    const/4 v6, 0x0

    .line 163
    const/4 v7, 0x1

    .line 164
    if-le v5, v6, :cond_5

    .line 166
    const/4 v7, -0x1

    .line 169
    :cond_5
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->realTimeReorder(IFIIII)V

    .line 156
    add-int/lit8 v8, v8, -0x1

    goto :goto_2

    .line 176
    .end local v8    # "i":I
    .end local v20    # "pageNum":I
    :cond_6
    add-int/lit8 v3, v19, 0x1

    iput v3, v11, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    .line 177
    move/from16 v0, p2

    int-to-long v12, v0

    iput-wide v12, v11, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    goto/16 :goto_1
.end method

.method public moveItemInFolder(Lcom/android/launcher3/common/view/IconView;II)V
    .locals 16
    .param p1, "iconView"    # Lcom/android/launcher3/common/view/IconView;
    .param p2, "pageNumber"    # I
    .param p3, "targetPosition"    # I

    .prologue
    .line 211
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsPagedView()Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getPageCount()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    move/from16 v0, p2

    if-le v0, v2, :cond_0

    .line 212
    sget-object v2, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->TAG:Ljava/lang/String;

    const-string v4, "move to the invalid page"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :goto_0
    return-void

    .line 216
    :cond_0
    move/from16 v14, p2

    .line 217
    .local v14, "screenId":I
    if-gez p2, :cond_1

    .line 219
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsPagedView()Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getPageCount()I

    move-result v2

    add-int/lit8 v14, v2, -0x1

    .line 222
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/common/view/IconView;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 223
    .local v3, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/controller/AppsController;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getOpenFolderView()Lcom/android/launcher3/folder/view/FolderView;

    move-result-object v10

    .line 225
    .local v10, "folder":Lcom/android/launcher3/folder/view/FolderView;
    if-eqz v10, :cond_3

    .line 226
    invoke-virtual {v10}, Lcom/android/launcher3/folder/view/FolderView;->getInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v2

    iget-wide v4, v2, Lcom/android/launcher3/folder/FolderInfo;->screenId:J

    long-to-int v14, v4

    .line 229
    instance-of v2, v3, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v2, :cond_2

    .line 230
    invoke-virtual {v10}, Lcom/android/launcher3/folder/view/FolderView;->getInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v4

    move-object v2, v3

    check-cast v2, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v4, v2}, Lcom/android/launcher3/folder/FolderInfo;->remove(Lcom/android/launcher3/common/base/item/IconInfo;)V

    .line 232
    :cond_2
    invoke-virtual {v10}, Lcom/android/launcher3/folder/view/FolderView;->getBaseController()Lcom/android/launcher3/common/base/controller/ControllerBase;

    move-result-object v2

    invoke-interface {v2, v3}, Lcom/android/launcher3/common/base/controller/ControllerBase;->deleteItemFromDb(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 235
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsPagedView()Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v2

    invoke-virtual {v2, v14}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getItemCountPageAt(I)I

    move-result v11

    .line 236
    .local v11, "lastRank":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/controller/AppsController;->getReorderController()Lcom/android/launcher3/allapps/controller/AppsReorderController;

    move-result-object v13

    .line 238
    .local v13, "reorderController":Lcom/android/launcher3/allapps/controller/AppsReorderController;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsPagedView()Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getMaxItemsPerScreen()I

    move-result v2

    if-ne v11, v2, :cond_4

    .line 239
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsPagedView()Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getPageCount()I

    move-result v2

    if-ne v14, v2, :cond_5

    .line 241
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsPagedView()Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->createAppsPage()Lcom/android/launcher3/allapps/view/AppsViewCellLayout;

    .line 242
    const/4 v11, 0x0

    .line 243
    add-int/lit8 v14, v14, 0x1

    .line 257
    :cond_4
    :goto_1
    iput v11, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    .line 258
    int-to-long v4, v14

    iput-wide v4, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    .line 259
    const-wide/16 v4, -0x66

    iput-wide v4, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    .line 262
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsPagedView()Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v2

    iget-wide v4, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    long-to-int v4, v4

    invoke-virtual {v2, v4}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v9

    .line 263
    .local v9, "cellLayout":Lcom/android/launcher3/common/base/view/CellLayout;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v9, v4}, Lcom/android/launcher3/allapps/controller/AppsController;->createItemView(Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v15

    .line 265
    .local v15, "view":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v2, v15, v3}, Lcom/android/launcher3/allapps/controller/AppsController;->addItem(Landroid/view/View;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 266
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    iget-wide v4, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    iget-wide v6, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    iget v8, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    invoke-virtual/range {v2 .. v8}, Lcom/android/launcher3/allapps/controller/AppsController;->addItemToDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJI)V

    .line 268
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/controller/AppsController;->updateDirtyItems()V

    .line 269
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsPagedView()Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v2

    invoke-virtual {v2, v14}, Lcom/android/launcher3/allapps/view/AppsPagedView;->snapToPage(I)V

    goto/16 :goto_0

    .line 246
    .end local v9    # "cellLayout":Lcom/android/launcher3/common/base/view/CellLayout;
    .end local v15    # "view":Landroid/view/View;
    :cond_5
    invoke-virtual {v13, v14}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->getNumScreenNeededChange(I)I

    move-result v12

    .line 247
    .local v12, "pageNum":I
    if-nez v12, :cond_6

    .line 248
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsPagedView()Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->createAppsPage()Lcom/android/launcher3/allapps/view/AppsViewCellLayout;

    .line 249
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsPagedView()Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getPageCount()I

    move-result v2

    add-int/lit8 v14, v2, -0x1

    .line 250
    const/4 v11, 0x0

    goto :goto_1

    .line 252
    :cond_6
    move v14, v12

    .line 253
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsPagedView()Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v2

    invoke-virtual {v2, v12}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getItemCountPageAt(I)I

    move-result v11

    goto :goto_1
.end method

.method public moveItemToFollowedEmptyPage(Lcom/android/launcher3/common/view/IconView;I)I
    .locals 3
    .param p1, "iconView"    # Lcom/android/launcher3/common/view/IconView;
    .param p2, "page"    # I

    .prologue
    .line 190
    const/4 v0, -0x1

    .line 192
    .local v0, "emptyPageFound":I
    move v1, p2

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->getPageCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 193
    invoke-virtual {p0, v1}, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->hasPageEmptySpace(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 194
    move v0, v1

    .line 199
    :cond_0
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 200
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsPagedView()Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->createAppsPage()Lcom/android/launcher3/allapps/view/AppsViewCellLayout;

    .line 201
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->getPageCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .line 204
    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->moveItem(Lcom/android/launcher3/common/view/IconView;I)V

    .line 206
    return v0

    .line 192
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public movePage(I)V
    .locals 1
    .param p1, "pageNum"    # I

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsPagedView()Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->snapToPage(I)V

    .line 105
    return-void
.end method

.method public movePageToItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 0
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 293
    return-void
.end method

.method public onParamFillingReceived(Lcom/samsung/android/sdk/bixby/data/ParamFilling;)Z
    .locals 1
    .param p1, "pf"    # Lcom/samsung/android/sdk/bixby/data/ParamFilling;

    .prologue
    .line 400
    const/4 v0, 0x0

    return v0
.end method

.method public removeItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 2
    .param p1, "removeItem"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 302
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 303
    .local v0, "removeItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/allapps/controller/AppsController;->removeApps(Ljava/util/ArrayList;)V

    .line 305
    return-void
.end method

.method public selectItem(Lcom/android/launcher3/common/view/IconView;)V
    .locals 2
    .param p1, "iv"    # Lcom/android/launcher3/common/view/IconView;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher3/allapps/controller/AppsController;->onCheckedChanged(Landroid/view/View;Z)V

    .line 121
    return-void
.end method

.method public setViewType(Lcom/android/launcher3/allapps/controller/AppsController$ViewType;)V
    .locals 1
    .param p1, "viewType"    # Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/controller/AppsController;->setViewType(Lcom/android/launcher3/allapps/controller/AppsController$ViewType;)V

    .line 64
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AppsController;->hideViewTypeDialog()V

    .line 65
    return-void
.end method

.method public showAppsGridSettingView()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 340
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AppsController;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/controller/AppsController;->getMode()I

    move-result v1

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/launcher3/Launcher;->showAppsOrWidgets(IZZ)Z

    .line 341
    return-void
.end method

.method public showTidyUpPreview()V
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AppsController;->prepareTidedUpPages()V

    .line 298
    return-void
.end method

.method public showViewTypePopup()V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AppsController;->chooseViewType()V

    .line 54
    return-void
.end method

.method public startSecureFolder()V
    .locals 5

    .prologue
    .line 315
    const-string v2, "com.samsung.knox.securefolder"

    .line 316
    .local v2, "packageName":Ljava/lang/String;
    const-string v0, "com.samsung.knox.securefolder.switcher.SecureFolderShortcutActivity"

    .line 318
    .local v0, "className":Ljava/lang/String;
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, v2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    .local v1, "cn":Landroid/content/ComponentName;
    invoke-virtual {p0, v1}, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->getItemViewByComponentName(Landroid/content/ComponentName;)Lcom/android/launcher3/common/view/IconView;

    move-result-object v3

    .line 320
    .local v3, "v":Landroid/view/View;
    if-eqz v3, :cond_0

    .line 321
    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/controller/AppsController;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/launcher3/Launcher;->startAppShortcutOrInfoActivity(Landroid/view/View;)V

    .line 323
    :cond_0
    return-void
.end method

.method public tidyUpPages()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 114
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/allapps/controller/AppsController;->setApplyTidyUpPage(Z)V

    .line 115
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/allapps/controller/AppsController;->changeState(IZ)Z

    .line 116
    return-void
.end method

.method public unSelectItem(Lcom/android/launcher3/common/view/IconView;)V
    .locals 2
    .param p1, "iv"    # Lcom/android/launcher3/common/view/IconView;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher3/allapps/controller/AppsController;->onCheckedChanged(Landroid/view/View;Z)V

    .line 126
    return-void
.end method
