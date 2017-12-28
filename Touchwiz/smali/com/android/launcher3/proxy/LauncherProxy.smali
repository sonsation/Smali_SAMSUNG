.class public Lcom/android/launcher3/proxy/LauncherProxy;
.super Ljava/lang/Object;
.source "LauncherProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;
    }
.end annotation


# static fields
.field public static final INVALID_VALUE:I = -0x3e7

.field public static final LAUNCHER_PROXY_NOT_READY:I = -0x1

.field public static final LAUNCHER_PROXY_NOT_SUPPORTED_STATE:I = -0x2

.field public static final LAUNCHER_PROXY_PARAMS_ERROR:I = -0x3

.field public static final LAUNCHER_PROXY_RESULT_OK:I = 0x0

.field public static final PAGE_MOVE_CURRENT:I = -0x3

.field public static final PAGE_MOVE_DEFAULT:I = -0x6

.field public static final PAGE_MOVE_EMPTY:I = 0x0

.field public static final PAGE_MOVE_FIRST:I = -0x4

.field public static final PAGE_MOVE_LAST:I = -0x5

.field public static final PAGE_MOVE_NEXT:I = -0x2

.field public static final PAGE_MOVE_PREV:I = -0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAppsPickerProxyCallback:Lcom/android/launcher3/proxy/AppsPickerProxyCallbacks;

.field private mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

.field private mFolderProxyCallbacks:Lcom/android/launcher3/proxy/FolderProxyCallbacks;

.field private mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

.field private mLauncherActivityProxyCallbacks:Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;

.field private mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

.field private mWidgetProxyCallbacks:Lcom/android/launcher3/proxy/WidgetProxyCallbacks;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-class v0, Lcom/android/launcher3/proxy/LauncherProxy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/proxy/LauncherProxy;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    return-void
.end method

.method private getItemsInfoByComponentName(Landroid/content/ComponentName;I)Ljava/util/List;
    .locals 12
    .param p1, "cn"    # Landroid/content/ComponentName;
    .param p2, "container"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 1642
    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v7

    invoke-static {p1, v7, v8}, Lcom/android/launcher3/common/model/DataLoader;->getItemInfoByComponentName(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 1643
    .local v0, "componentFilteredItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-static {v0}, Lcom/android/launcher3/util/ItemListHelper;->getUnhiddenItemList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    .line 1644
    .local v6, "unhiddenAndComponentFilteredItemList":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    const/4 v7, 0x1

    new-array v7, v7, [I

    aput p2, v7, v8

    invoke-static {v6, v7}, Lcom/android/launcher3/util/ItemListHelper;->getContainerIdMatchedItemList(Ljava/util/List;[I)Ljava/util/List;

    move-result-object v5

    .line 1647
    .local v5, "resultFilteredList":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-static {v6}, Lcom/android/launcher3/util/ItemListHelper;->getFolderItemList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 1648
    .local v2, "folderItemList":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-static {}, Lcom/android/launcher3/util/ItemListHelper;->getAllItemMap()Ljava/util/Map;

    move-result-object v4

    .line 1649
    .local v4, "itemMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 1650
    .local v1, "folderItem":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-wide v8, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 1651
    .local v3, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    if-eqz v3, :cond_0

    iget-wide v8, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    int-to-long v10, p2

    cmp-long v8, v8, v10

    if-nez v8, :cond_0

    .line 1652
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1656
    .end local v1    # "folderItem":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v3    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_1
    return-object v5
.end method

.method private getItemsInfoByTitle(Ljava/lang/String;I)Ljava/util/List;
    .locals 16
    .param p1, "itemTitle"    # Ljava/lang/String;
    .param p2, "container"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1660
    invoke-static {}, Lcom/android/launcher3/common/model/DataLoader;->getItemList()Ljava/util/List;

    move-result-object v2

    .line 1661
    .local v2, "allItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-static {v2}, Lcom/android/launcher3/util/ItemListHelper;->getUnhiddenItemList(Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    .line 1662
    .local v9, "unhiddenItemList":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    move-object/from16 v0, p1

    invoke-static {v9, v0}, Lcom/android/launcher3/util/ItemListHelper;->getTitleMatchedItemList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 1663
    .local v8, "unhiddenAndTitleFilteredList":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    const/4 v10, 0x1

    new-array v10, v10, [I

    const/4 v11, 0x0

    aput p2, v10, v11

    invoke-static {v8, v10}, Lcom/android/launcher3/util/ItemListHelper;->getContainerIdMatchedItemList(Ljava/util/List;[I)Ljava/util/List;

    move-result-object v7

    .line 1666
    .local v7, "resultFilteredList":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-static {v8}, Lcom/android/launcher3/util/ItemListHelper;->getFolderItemList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 1667
    .local v4, "folderItemList":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-static {}, Lcom/android/launcher3/util/ItemListHelper;->getAllItemMap()Ljava/util/Map;

    move-result-object v6

    .line 1668
    .local v6, "itemMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 1669
    .local v3, "folderItem":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-wide v12, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-interface {v6, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 1670
    .local v5, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    if-eqz v5, :cond_0

    iget-wide v12, v5, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    move/from16 v0, p2

    int-to-long v14, v0

    cmp-long v11, v12, v14

    if-nez v11, :cond_0

    .line 1671
    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1675
    .end local v3    # "folderItem":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v5    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_1
    return-object v7
.end method

.method private hideOrUnHideApps(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;Z)I
    .locals 4
    .param p1, "appInfo"    # Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;
    .param p2, "isHide"    # Z

    .prologue
    const/4 v3, 0x6

    .line 683
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getItemInfo()Lcom/android/launcher3/common/base/item/ItemInfo;

    move-result-object v1

    if-nez v1, :cond_1

    .line 684
    :cond_0
    const/4 v1, -0x3

    .line 700
    :goto_0
    return v1

    .line 686
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    invoke-interface {v1}, Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;->getTopStageMode()I

    move-result v1

    if-ne v1, v3, :cond_2

    .line 687
    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    const/4 v2, 0x0

    invoke-interface {v1, v3, v2}, Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;->finishStage(ILcom/android/launcher3/common/stage/StageEntry;)V

    .line 691
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 692
    .local v0, "hideItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getItemInfo()Lcom/android/launcher3/common/base/item/ItemInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 694
    if-eqz p2, :cond_3

    .line 695
    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mLauncherActivityProxyCallbacks:Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;

    invoke-interface {v1, v0}, Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;->hideApps(Ljava/util/ArrayList;)V

    .line 700
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 697
    :cond_3
    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mLauncherActivityProxyCallbacks:Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;

    invoke-interface {v1, v0}, Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;->unHideApps(Ljava/util/ArrayList;)V

    goto :goto_1
.end method


# virtual methods
.method public final addAppsFolderItem(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)I
    .locals 7
    .param p1, "appInfo"    # Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;

    .prologue
    const/4 v3, -0x3

    const/4 v6, 0x6

    .line 1471
    if-nez p1, :cond_1

    .line 1496
    :cond_0
    :goto_0
    return v3

    .line 1474
    :cond_1
    iget-object v4, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    invoke-interface {v4}, Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;->getTopStageMode()I

    move-result v4

    const/4 v5, 0x5

    if-eq v4, v5, :cond_2

    iget-object v4, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    .line 1475
    invoke-interface {v4}, Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;->getTopStageMode()I

    move-result v4

    if-ne v4, v6, :cond_3

    :cond_2
    iget-object v4, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mFolderProxyCallbacks:Lcom/android/launcher3/proxy/FolderProxyCallbacks;

    if-nez v4, :cond_4

    .line 1477
    :cond_3
    const/4 v3, -0x1

    goto :goto_0

    .line 1480
    :cond_4
    iget-object v4, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    invoke-interface {v4}, Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;->getTopStageMode()I

    move-result v4

    if-ne v4, v6, :cond_5

    .line 1481
    iget-object v4, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    const/4 v5, 0x0

    invoke-interface {v4, v6, v5}, Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;->finishStage(ILcom/android/launcher3/common/stage/StageEntry;)V

    .line 1484
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/launcher3/proxy/LauncherProxy;->getAppsItemInfoByStateAppInfo(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Ljava/util/List;

    move-result-object v2

    .line 1485
    .local v2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    const/4 v1, 0x0

    .line 1486
    .local v1, "itemAdded":Z
    if-eqz v2, :cond_6

    .line 1487
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 1489
    .local v0, "i":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-object v5, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mFolderProxyCallbacks:Lcom/android/launcher3/proxy/FolderProxyCallbacks;

    invoke-interface {v5, v0}, Lcom/android/launcher3/proxy/FolderProxyCallbacks;->addFolderItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 1490
    const/4 v1, 0x1

    .line 1491
    goto :goto_1

    .line 1493
    .end local v0    # "i":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_6
    if-eqz v1, :cond_0

    .line 1494
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public final addHomeFolderItem(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)I
    .locals 6
    .param p1, "appInfo"    # Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;

    .prologue
    const/4 v5, 0x6

    .line 1500
    if-nez p1, :cond_0

    .line 1501
    const/4 v3, -0x3

    .line 1535
    :goto_0
    return v3

    .line 1503
    :cond_0
    iget-object v3, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    invoke-interface {v3}, Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;->getTopStageMode()I

    move-result v3

    const/4 v4, 0x5

    if-eq v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    .line 1504
    invoke-interface {v3}, Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;->getTopStageMode()I

    move-result v3

    if-ne v3, v5, :cond_2

    :cond_1
    iget-object v3, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mFolderProxyCallbacks:Lcom/android/launcher3/proxy/FolderProxyCallbacks;

    if-nez v3, :cond_3

    .line 1506
    :cond_2
    const/4 v3, -0x1

    goto :goto_0

    .line 1509
    :cond_3
    iget-object v3, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    invoke-interface {v3}, Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;->getTopStageMode()I

    move-result v3

    if-ne v3, v5, :cond_4

    .line 1510
    iget-object v3, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    const/4 v4, 0x0

    invoke-interface {v3, v5, v4}, Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;->finishStage(ILcom/android/launcher3/common/stage/StageEntry;)V

    .line 1513
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher3/proxy/LauncherProxy;->isHomeOnlyMode()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1514
    invoke-virtual {p0, p1}, Lcom/android/launcher3/proxy/LauncherProxy;->getHomeItemInfoByStateAppInfo(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Ljava/util/List;

    move-result-object v2

    .line 1515
    .local v2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    if-eqz v2, :cond_8

    .line 1516
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 1517
    .local v0, "i":Lcom/android/launcher3/common/base/item/ItemInfo;
    instance-of v3, v0, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v3, :cond_5

    move-object v3, v0

    .line 1518
    check-cast v3, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v3}, Lcom/android/launcher3/common/base/item/IconInfo;->makeCloneInfo()Lcom/android/launcher3/common/base/item/IconInfo;

    move-result-object v1

    .line 1519
    .local v1, "item":Lcom/android/launcher3/common/base/item/IconInfo;
    iget-object v3, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mFolderProxyCallbacks:Lcom/android/launcher3/proxy/FolderProxyCallbacks;

    invoke-interface {v3, v1}, Lcom/android/launcher3/proxy/FolderProxyCallbacks;->addFolderItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 1520
    iget-object v3, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v3, v0}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->removeShortcut(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto :goto_1

    .line 1525
    .end local v0    # "i":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v1    # "item":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v2    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/launcher3/proxy/LauncherProxy;->getAppsItemInfoByStateAppInfo(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Ljava/util/List;

    move-result-object v2

    .line 1526
    .restart local v2    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    if-eqz v2, :cond_8

    .line 1527
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 1528
    .restart local v0    # "i":Lcom/android/launcher3/common/base/item/ItemInfo;
    instance-of v4, v0, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v4, :cond_7

    .line 1529
    check-cast v0, Lcom/android/launcher3/common/base/item/IconInfo;

    .end local v0    # "i":Lcom/android/launcher3/common/base/item/ItemInfo;
    invoke-virtual {v0}, Lcom/android/launcher3/common/base/item/IconInfo;->makeCloneInfo()Lcom/android/launcher3/common/base/item/IconInfo;

    move-result-object v1

    .line 1530
    .restart local v1    # "item":Lcom/android/launcher3/common/base/item/IconInfo;
    iget-object v4, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mFolderProxyCallbacks:Lcom/android/launcher3/proxy/FolderProxyCallbacks;

    invoke-interface {v4, v1}, Lcom/android/launcher3/proxy/FolderProxyCallbacks;->addFolderItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto :goto_2

    .line 1535
    .end local v1    # "item":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_8
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public final addHomeItemToPage(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;III)I
    .locals 2
    .param p1, "appInfo"    # Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;
    .param p2, "pageNumber"    # I
    .param p3, "pageDirection"    # I
    .param p4, "detailDirection"    # I

    .prologue
    const/4 v0, -0x3

    .line 940
    if-nez p1, :cond_1

    .line 951
    :cond_0
    :goto_0
    return v0

    .line 943
    :cond_1
    if-lez p2, :cond_2

    .line 944
    invoke-virtual {p0, p2}, Lcom/android/launcher3/proxy/LauncherProxy;->isHomeValidPage(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 950
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/proxy/LauncherProxy;->createHomeAppShortcut(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;I)I

    .line 951
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final addNewHomePageInOverViewMode()I
    .locals 1

    .prologue
    .line 842
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->addNewHomePageInOverViewMode()V

    .line 843
    const/4 v0, 0x0

    return v0
.end method

.method public final addNewPageInHome()I
    .locals 1

    .prologue
    .line 837
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->addNewPage()V

    .line 838
    const/4 v0, 0x0

    return v0
.end method

.method public final addSearchResultItemToFolder()I
    .locals 1

    .prologue
    .line 788
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsPickerProxyCallback:Lcom/android/launcher3/proxy/AppsPickerProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/AppsPickerProxyCallbacks;->addResultApps()V

    .line 790
    const/4 v0, 0x0

    return v0
.end method

.method public final addSearchResultItemToFolder(I)I
    .locals 1
    .param p1, "ordinalNum"    # I

    .prologue
    .line 794
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsPickerProxyCallback:Lcom/android/launcher3/proxy/AppsPickerProxyCallbacks;

    invoke-interface {v0, p1}, Lcom/android/launcher3/proxy/AppsPickerProxyCallbacks;->addResultApps(I)V

    .line 796
    const/4 v0, 0x0

    return v0
.end method

.method public final addSearchResultItemToFolder(Z)I
    .locals 2
    .param p1, "anapho"    # Z

    .prologue
    .line 800
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsPickerProxyCallback:Lcom/android/launcher3/proxy/AppsPickerProxyCallbacks;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/launcher3/proxy/AppsPickerProxyCallbacks;->addResultApps(Z)V

    .line 802
    const/4 v0, 0x0

    return v0
.end method

.method public final addToSecureFolder(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)I
    .locals 4
    .param p1, "appInfo"    # Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;

    .prologue
    const/4 v2, -0x1

    .line 1401
    iget-object v3, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mLauncherActivityProxyCallbacks:Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;

    if-nez v3, :cond_1

    .line 1412
    :cond_0
    :goto_0
    return v2

    .line 1404
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/launcher3/proxy/LauncherProxy;->getAppsItemInfoByStateAppInfo(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Ljava/util/List;

    move-result-object v1

    .line 1405
    .local v1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1408
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 1409
    .local v0, "i":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-object v3, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mLauncherActivityProxyCallbacks:Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;

    invoke-interface {v3, v0}, Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;->addToSecureFolder(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto :goto_1

    .line 1411
    .end local v0    # "i":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_2
    iget-object v2, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    invoke-interface {v2}, Lcom/android/launcher3/proxy/AppsProxyCallbacks;->startSecureFolder()V

    .line 1412
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final addWidgetResultItemToHome()I
    .locals 2

    .prologue
    .line 972
    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mWidgetProxyCallbacks:Lcom/android/launcher3/proxy/WidgetProxyCallbacks;

    invoke-interface {v1}, Lcom/android/launcher3/proxy/WidgetProxyCallbacks;->getWidgetResultItem()Lcom/android/launcher3/common/base/item/PendingAddItemInfo;

    move-result-object v0

    .line 973
    .local v0, "widget":Lcom/android/launcher3/common/base/item/PendingAddItemInfo;
    if-nez v0, :cond_0

    .line 974
    const/4 v1, -0x3

    .line 982
    :goto_0
    return v1

    .line 977
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v1, v0}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->addHomeWidget(Lcom/android/launcher3/common/base/item/PendingAddItemInfo;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 978
    invoke-virtual {p0}, Lcom/android/launcher3/proxy/LauncherProxy;->goHome()I

    .line 979
    const/4 v1, 0x0

    goto :goto_0

    .line 982
    :cond_1
    const/4 v1, -0x2

    goto :goto_0
.end method

.method public final alignHomeIcon(IZ)I
    .locals 1
    .param p1, "page"    # I
    .param p2, "isTop"    # Z

    .prologue
    .line 852
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v0, p1, p2}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->alignHomeIcon(IZ)V

    .line 853
    const/4 v0, 0x0

    return v0
.end method

.method public final appsTidyUpPages()I
    .locals 1

    .prologue
    .line 1268
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    if-nez v0, :cond_0

    .line 1269
    const/4 v0, -0x1

    .line 1273
    :goto_0
    return v0

    .line 1272
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/AppsProxyCallbacks;->tidyUpPages()V

    .line 1273
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final canAppAddToSecureFolder(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Z
    .locals 3
    .param p1, "appInfo"    # Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;

    .prologue
    const/4 v1, 0x0

    .line 1387
    iget-object v2, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mLauncherActivityProxyCallbacks:Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;

    if-nez v2, :cond_1

    .line 1397
    :cond_0
    :goto_0
    return v1

    .line 1391
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/launcher3/proxy/LauncherProxy;->getAppsItemInfoByStateAppInfo(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Ljava/util/List;

    move-result-object v0

    .line 1393
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 1397
    iget-object v2, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mLauncherActivityProxyCallbacks:Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-interface {v2, v1}, Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;->canAppAddToSecureFolder(Lcom/android/launcher3/common/base/item/ItemInfo;)Z

    move-result v1

    goto :goto_0
.end method

.method public final changeAppsFolderTitle(Ljava/lang/String;)I
    .locals 2
    .param p1, "newTitle"    # Ljava/lang/String;

    .prologue
    .line 727
    if-nez p1, :cond_0

    .line 728
    const/4 v0, -0x3

    .line 738
    :goto_0
    return v0

    .line 730
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mFolderProxyCallbacks:Lcom/android/launcher3/proxy/FolderProxyCallbacks;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mFolderProxyCallbacks:Lcom/android/launcher3/proxy/FolderProxyCallbacks;

    .line 731
    invoke-interface {v0}, Lcom/android/launcher3/proxy/FolderProxyCallbacks;->getOpenedFolder()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v0

    if-nez v0, :cond_2

    .line 732
    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    .line 735
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mFolderProxyCallbacks:Lcom/android/launcher3/proxy/FolderProxyCallbacks;

    .line 736
    invoke-interface {v1}, Lcom/android/launcher3/proxy/FolderProxyCallbacks;->getOpenedFolder()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v1

    .line 735
    invoke-interface {v0, v1, p1}, Lcom/android/launcher3/proxy/AppsProxyCallbacks;->changeFolderTitle(Lcom/android/launcher3/common/base/item/ItemInfo;Ljava/lang/String;)V

    .line 737
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mFolderProxyCallbacks:Lcom/android/launcher3/proxy/FolderProxyCallbacks;

    invoke-interface {v0, p1}, Lcom/android/launcher3/proxy/FolderProxyCallbacks;->changeTitle(Ljava/lang/String;)V

    .line 738
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final changeAppsScreengrid(Ljava/lang/String;)I
    .locals 1
    .param p1, "gridOption"    # Ljava/lang/String;

    .prologue
    .line 885
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    invoke-interface {v0, p1}, Lcom/android/launcher3/proxy/AppsProxyCallbacks;->changeScreengrid(Ljava/lang/String;)V

    .line 886
    const/4 v0, 0x0

    return v0
.end method

.method public final changeAppsViewTypeToAlphabetic()I
    .locals 2

    .prologue
    .line 1232
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    if-nez v0, :cond_0

    .line 1233
    const/4 v0, -0x1

    .line 1237
    :goto_0
    return v0

    .line 1236
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    sget-object v1, Lcom/android/launcher3/allapps/controller/AppsController$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    invoke-interface {v0, v1}, Lcom/android/launcher3/proxy/AppsProxyCallbacks;->setViewType(Lcom/android/launcher3/allapps/controller/AppsController$ViewType;)V

    .line 1237
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final changeAppsViewTypeToCustom()I
    .locals 2

    .prologue
    .line 1241
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    if-nez v0, :cond_0

    .line 1242
    const/4 v0, -0x1

    .line 1246
    :goto_0
    return v0

    .line 1245
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    sget-object v1, Lcom/android/launcher3/allapps/controller/AppsController$ViewType;->CUSTOM_GRID:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    invoke-interface {v0, v1}, Lcom/android/launcher3/proxy/AppsProxyCallbacks;->setViewType(Lcom/android/launcher3/allapps/controller/AppsController$ViewType;)V

    .line 1246
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final changeHomeFolderTitle(Ljava/lang/String;)I
    .locals 2
    .param p1, "newTitle"    # Ljava/lang/String;

    .prologue
    .line 712
    if-nez p1, :cond_0

    .line 713
    const/4 v0, -0x3

    .line 723
    :goto_0
    return v0

    .line 715
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mFolderProxyCallbacks:Lcom/android/launcher3/proxy/FolderProxyCallbacks;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mFolderProxyCallbacks:Lcom/android/launcher3/proxy/FolderProxyCallbacks;

    .line 716
    invoke-interface {v0}, Lcom/android/launcher3/proxy/FolderProxyCallbacks;->getOpenedFolder()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v0

    if-nez v0, :cond_2

    .line 717
    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    .line 720
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mFolderProxyCallbacks:Lcom/android/launcher3/proxy/FolderProxyCallbacks;

    .line 721
    invoke-interface {v1}, Lcom/android/launcher3/proxy/FolderProxyCallbacks;->getOpenedFolder()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v1

    .line 720
    invoke-interface {v0, v1, p1}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->changeFolderTitle(Lcom/android/launcher3/common/base/item/ItemInfo;Ljava/lang/String;)V

    .line 722
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mFolderProxyCallbacks:Lcom/android/launcher3/proxy/FolderProxyCallbacks;

    invoke-interface {v0, p1}, Lcom/android/launcher3/proxy/FolderProxyCallbacks;->changeTitle(Ljava/lang/String;)V

    .line 723
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final changeHomePageOrder(II)I
    .locals 1
    .param p1, "fromPage"    # I
    .param p2, "toPage"    # I

    .prologue
    .line 832
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v0, p1, p2}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->changeHomePageOrder(II)V

    .line 833
    const/4 v0, 0x0

    return v0
.end method

.method public final changeHomeScreengrid(Ljava/lang/String;)I
    .locals 1
    .param p1, "gridOption"    # Ljava/lang/String;

    .prologue
    .line 880
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v0, p1}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->changeScreengrid(Ljava/lang/String;)V

    .line 881
    const/4 v0, 0x0

    return v0
.end method

.method public final changeHomeStyle(Z)I
    .locals 1
    .param p1, "homeOnlyMode"    # Z

    .prologue
    .line 1317
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mLauncherActivityProxyCallbacks:Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;

    invoke-interface {v0, p1}, Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;->changeHomeStyle(Z)V

    .line 1318
    const/4 v0, 0x0

    return v0
.end method

.method public final checkAbleAlignIcon(IZ)Z
    .locals 1
    .param p1, "page"    # I
    .param p2, "isUpward"    # Z

    .prologue
    .line 1613
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v0, p1, p2}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->checkAbleAlignIcon(IZ)Z

    move-result v0

    return v0
.end method

.method public final checkMatchAppsGridOption(Ljava/lang/String;)Z
    .locals 1
    .param p1, "gridOption"    # Ljava/lang/String;

    .prologue
    .line 902
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    invoke-interface {v0, p1}, Lcom/android/launcher3/proxy/AppsProxyCallbacks;->checkMatchGridOption(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final checkMatchHomeGridOption(Ljava/lang/String;)Z
    .locals 1
    .param p1, "gridOption"    # Ljava/lang/String;

    .prologue
    .line 898
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v0, p1}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->checkMatchGridOption(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final checkNeedDisplayAutoalignDialog()Z
    .locals 1

    .prologue
    .line 1609
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->checkNeedDisplayAutoalignDialog()Z

    move-result v0

    return v0
.end method

.method public final checkValidAppsGridOption(Ljava/lang/String;)Z
    .locals 1
    .param p1, "gridOption"    # Ljava/lang/String;

    .prologue
    .line 894
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    invoke-interface {v0, p1}, Lcom/android/launcher3/proxy/AppsProxyCallbacks;->checkValidGridOption(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final checkValidHomeGridOption(Ljava/lang/String;)Z
    .locals 1
    .param p1, "gridOption"    # Ljava/lang/String;

    .prologue
    .line 890
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v0, p1}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->checkValidGridOption(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final clearBadge(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)I
    .locals 4
    .param p1, "appInfo"    # Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;

    .prologue
    const/4 v2, -0x1

    .line 1416
    iget-object v3, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mLauncherActivityProxyCallbacks:Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;

    if-nez v3, :cond_1

    .line 1426
    :cond_0
    :goto_0
    return v2

    .line 1419
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/launcher3/proxy/LauncherProxy;->getAppsItemInfoByStateAppInfo(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Ljava/util/List;

    move-result-object v1

    .line 1420
    .local v1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1423
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 1424
    .local v0, "i":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-object v3, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mLauncherActivityProxyCallbacks:Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;

    invoke-interface {v3, v0}, Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;->clearBadge(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto :goto_1

    .line 1426
    .end local v0    # "i":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final clearFolderBadge(Lcom/android/launcher3/common/base/item/ItemInfo;)I
    .locals 4
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    const/4 v2, -0x1

    .line 1430
    iget-object v3, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mLauncherActivityProxyCallbacks:Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;

    if-nez v3, :cond_1

    .line 1443
    :cond_0
    :goto_0
    return v2

    .line 1433
    :cond_1
    instance-of v3, p1, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 1434
    check-cast v0, Lcom/android/launcher3/folder/FolderInfo;

    .line 1435
    .local v0, "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    iget-object v2, v0, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 1436
    .local v1, "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    iget v3, v1, Lcom/android/launcher3/common/base/item/IconInfo;->mBadgeCount:I

    if-eqz v3, :cond_2

    .line 1437
    iget-object v3, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mLauncherActivityProxyCallbacks:Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;

    invoke-interface {v3, v1}, Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;->clearBadge(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto :goto_1

    .line 1443
    .end local v1    # "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final closeFolder()I
    .locals 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;->getTopStageMode()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 249
    const/4 v0, -0x1

    .line 253
    :goto_0
    return v0

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;->closeFolder()V

    .line 253
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final contactUs()I
    .locals 1

    .prologue
    .line 228
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    .line 229
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 228
    invoke-static {v0}, Lcom/android/launcher3/Utilities;->startContactUsActivity(Landroid/content/Context;)V

    .line 230
    const/4 v0, 0x0

    return v0
.end method

.method public final createHomeAppShortcut(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;I)I
    .locals 5
    .param p1, "appInfo"    # Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;
    .param p2, "page"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 655
    if-nez p1, :cond_0

    .line 656
    const/4 v1, -0x3

    .line 667
    :goto_0
    return v1

    .line 658
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/launcher3/proxy/LauncherProxy;->getAppsItemInfoByStateAppInfo(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Ljava/util/List;

    move-result-object v0

    .line 659
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 660
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-object v1, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->setName(Ljava/lang/String;)V

    .line 661
    if-ltz p2, :cond_2

    .line 662
    iget-object v3, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-virtual {v1}, Lcom/android/launcher3/common/base/item/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-interface {v3, v1, v4, p2}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->createShortcut(Landroid/content/ComponentName;Lcom/android/launcher3/common/base/item/ItemInfo;I)V

    :cond_1
    :goto_1
    move v1, v2

    .line 667
    goto :goto_0

    .line 664
    :cond_2
    iget-object v3, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-virtual {v1}, Lcom/android/launcher3/common/base/item/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-interface {v3, v1, v4, v2}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->createShortcut(Landroid/content/ComponentName;Lcom/android/launcher3/common/base/item/ItemInfo;I)V

    goto :goto_1
.end method

.method public final createHomeFolderShortcut(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)I
    .locals 5
    .param p1, "appInfo"    # Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;

    .prologue
    const/4 v2, 0x0

    .line 671
    if-nez p1, :cond_1

    .line 672
    const/4 v2, -0x3

    .line 679
    :cond_0
    :goto_0
    return v2

    .line 674
    :cond_1
    iget-object v3, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/launcher3/proxy/AppsProxyCallbacks;->getFolderItemViewByTitle(Ljava/lang/String;)Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v1

    .line 675
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 676
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 677
    .local v0, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    const/4 v4, 0x0

    invoke-interface {v3, v4, v0, v2}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->createShortcut(Landroid/content/ComponentName;Lcom/android/launcher3/common/base/item/ItemInfo;I)V

    goto :goto_0
.end method

.method public final disableAllAppsBadge()I
    .locals 1

    .prologue
    .line 1729
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mLauncherActivityProxyCallbacks:Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;->disableAllAppsBadge()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1730
    const/4 v0, -0x1

    .line 1732
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final enableAllAppsBadge(Z)I
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 1722
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mLauncherActivityProxyCallbacks:Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;

    invoke-interface {v0, p1}, Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;->enableAllAppsBadge(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1723
    const/4 v0, -0x1

    .line 1725
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final enableAppsButton(Z)I
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 1322
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mLauncherActivityProxyCallbacks:Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;

    if-nez v0, :cond_0

    .line 1323
    const/4 v0, -0x1

    .line 1335
    :goto_0
    return v0

    .line 1326
    :cond_0
    if-eqz p1, :cond_1

    .line 1327
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mLauncherActivityProxyCallbacks:Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;->showAppsButton()V

    .line 1332
    :goto_1
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;->exitSettingsView()V

    .line 1333
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->exitSubState()V

    .line 1335
    const/4 v0, 0x0

    goto :goto_0

    .line 1329
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mLauncherActivityProxyCallbacks:Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;->hideAppsButton()V

    goto :goto_1
.end method

.method public final enableSingleAppBadge(Ljava/lang/String;Z)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .prologue
    .line 1740
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mLauncherActivityProxyCallbacks:Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;

    invoke-interface {v0, p1, p2}, Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;->enableSingleAppBadge(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1741
    const/4 v0, -0x1

    .line 1743
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final enterAppsFolderAddApps(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)I
    .locals 4
    .param p1, "appInfo"    # Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;

    .prologue
    const/4 v2, -0x3

    .line 759
    if-nez p1, :cond_1

    .line 772
    :cond_0
    :goto_0
    return v2

    .line 763
    :cond_1
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getName()Ljava/lang/String;

    move-result-object v1

    .line 764
    .local v1, "name":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    invoke-interface {v3, v1}, Lcom/android/launcher3/proxy/AppsProxyCallbacks;->getFolderItemViewByTitle(Ljava/lang/String;)Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v0

    .line 766
    .local v0, "iv":Lcom/android/launcher3/common/view/IconView;
    instance-of v3, v0, Lcom/android/launcher3/folder/view/FolderIconView;

    if-eqz v3, :cond_0

    .line 767
    iget-object v2, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    check-cast v0, Lcom/android/launcher3/folder/view/FolderIconView;

    .end local v0    # "iv":Lcom/android/launcher3/common/view/IconView;
    invoke-interface {v2, v0}, Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;->enterFolderAddAppsView(Lcom/android/launcher3/folder/view/FolderIconView;)V

    .line 772
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final enterBadgeManagementView()I
    .locals 1

    .prologue
    .line 1717
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mLauncherActivityProxyCallbacks:Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;->enterBadgeManagementView()V

    .line 1718
    const/4 v0, 0x0

    return v0
.end method

.method public final enterHideAppsView()I
    .locals 1

    .prologue
    .line 862
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;->enterHideAppsView()V

    .line 863
    const/4 v0, 0x0

    return v0
.end method

.method public final enterHomeAboutPageView()I
    .locals 1

    .prologue
    .line 1307
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mLauncherActivityProxyCallbacks:Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;->enterHomeAboutPageView()V

    .line 1308
    const/4 v0, 0x0

    return v0
.end method

.method public final enterHomeEditView()I
    .locals 1

    .prologue
    .line 819
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->enterHomeEditView()V

    .line 820
    const/4 v0, 0x0

    return v0
.end method

.method public final enterHomeFolderAddApps(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)I
    .locals 4
    .param p1, "appInfo"    # Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;

    .prologue
    const/4 v2, -0x3

    .line 742
    if-nez p1, :cond_1

    .line 755
    :cond_0
    :goto_0
    return v2

    .line 746
    :cond_1
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getName()Ljava/lang/String;

    move-result-object v1

    .line 747
    .local v1, "name":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v3, v1}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->getFolderItemViewByTitle(Ljava/lang/String;)Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v0

    .line 749
    .local v0, "iv":Lcom/android/launcher3/common/view/IconView;
    instance-of v3, v0, Lcom/android/launcher3/folder/view/FolderIconView;

    if-eqz v3, :cond_0

    .line 750
    iget-object v2, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    check-cast v0, Lcom/android/launcher3/folder/view/FolderIconView;

    .end local v0    # "iv":Lcom/android/launcher3/common/view/IconView;
    invoke-interface {v2, v0}, Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;->enterFolderAddAppsView(Lcom/android/launcher3/folder/view/FolderIconView;)V

    .line 755
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final enterHomeSettingAppsGridSettingView()I
    .locals 1

    .prologue
    .line 873
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;->exitSettingsView()V

    .line 874
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/AppsProxyCallbacks;->showAppsGridSettingView()V

    .line 876
    const/4 v0, 0x0

    return v0
.end method

.method public final enterHomeSettingHomeGridSettingView()I
    .locals 1

    .prologue
    .line 867
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;->exitSettingsView()V

    .line 868
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->enterHomeSettingGridSettingView()V

    .line 869
    const/4 v0, 0x0

    return v0
.end method

.method public final enterHomeSettingModeChangeView()I
    .locals 1

    .prologue
    .line 1312
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mLauncherActivityProxyCallbacks:Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;->enterHomeSettingChangeModeView()V

    .line 1313
    const/4 v0, 0x0

    return v0
.end method

.method public final enterHomeSettingView()I
    .locals 1

    .prologue
    .line 1302
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mLauncherActivityProxyCallbacks:Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;->enterHomeSettingView()V

    .line 1303
    const/4 v0, 0x0

    return v0
.end method

.method public final enterWidgetListView()I
    .locals 1

    .prologue
    .line 857
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;->enterWidgetListView()V

    .line 858
    const/4 v0, 0x0

    return v0
.end method

.method public final enterWidgetResizeMode(Lcom/android/launcher3/common/base/item/ItemInfo;)I
    .locals 8
    .param p1, "itemInfo"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x2

    .line 633
    instance-of v6, p1, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    if-nez v6, :cond_1

    .line 634
    const/4 v4, -0x3

    .line 651
    :cond_0
    :goto_0
    return v4

    :cond_1
    move-object v2, p1

    .line 636
    check-cast v2, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    .line 637
    .local v2, "widget":Lcom/android/launcher3/home/LauncherAppWidgetInfo;
    iget-object v0, v2, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    .line 638
    .local v0, "cn":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    .line 642
    iget-object v6, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    .line 643
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->getWidgetItemsInfoByPackageName(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 644
    .local v3, "widgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 645
    .local v1, "w":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-object v6, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v6, v1}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->enterWidgetResizeMode(Lcom/android/launcher3/common/base/item/ItemInfo;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v4, v5

    .line 646
    goto :goto_0

    .end local v1    # "w":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_2
    move v4, v5

    .line 651
    goto :goto_0
.end method

.method public final enterWidgetSearchState()I
    .locals 2

    .prologue
    .line 914
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;->getTopStageMode()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 915
    const/4 v0, -0x2

    .line 918
    :goto_0
    return v0

    .line 917
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mWidgetProxyCallbacks:Lcom/android/launcher3/proxy/WidgetProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/WidgetProxyCallbacks;->enterSearchState()V

    .line 918
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final enterWidgetUninstallState()I
    .locals 2

    .prologue
    .line 922
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;->getTopStageMode()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 923
    const/4 v0, -0x2

    .line 926
    :goto_0
    return v0

    .line 925
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mWidgetProxyCallbacks:Lcom/android/launcher3/proxy/WidgetProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/WidgetProxyCallbacks;->enterUninstallState()V

    .line 926
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAppNamebyComponentName(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Ljava/lang/String;
    .locals 3
    .param p1, "appInfo"    # Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;

    .prologue
    .line 1697
    invoke-virtual {p0}, Lcom/android/launcher3/proxy/LauncherProxy;->isHomeOnlyMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1698
    invoke-virtual {p0, p1}, Lcom/android/launcher3/proxy/LauncherProxy;->getHomeItemInfoByStateAppInfo(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Ljava/util/List;

    move-result-object v1

    .line 1703
    .local v1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    :goto_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_1

    .line 1704
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 1705
    .local v0, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    if-eqz v0, :cond_1

    .line 1706
    instance-of v2, v0, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v2, :cond_1

    .line 1707
    iget-object v2, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1712
    .end local v0    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    :goto_1
    return-object v2

    .line 1700
    .end local v1    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/launcher3/proxy/LauncherProxy;->getAppsItemInfo(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Ljava/util/List;

    move-result-object v1

    .restart local v1    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    goto :goto_0

    .line 1712
    :cond_1
    const-string v2, ""

    goto :goto_1
.end method

.method public getAppsItemInfo(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Ljava/util/List;
    .locals 1
    .param p1, "appInfo"    # Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 987
    invoke-virtual {p0, p1}, Lcom/android/launcher3/proxy/LauncherProxy;->getAppsItemInfoByStateAppInfo(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAppsItemInfoByStateAppInfo(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Ljava/util/List;
    .locals 3
    .param p1, "appInfo"    # Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/16 v2, -0x66

    .line 135
    if-nez p1, :cond_1

    .line 146
    :cond_0
    :goto_0
    return-object v0

    .line 139
    :cond_1
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 141
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 140
    invoke-direct {p0, v0, v2}, Lcom/android/launcher3/proxy/LauncherProxy;->getItemsInfoByComponentName(Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 142
    :cond_2
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 143
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/android/launcher3/proxy/LauncherProxy;->getItemsInfoByTitle(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public final getAppsPageCount()I
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/AppsProxyCallbacks;->getPageCount()I

    move-result v0

    return v0
.end method

.method public final getCurrentTopStage()I
    .locals 1

    .prologue
    .line 1601
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;->getTopStageMode()I

    move-result v0

    return v0
.end method

.method public getFolderItemInfoByStateAppInfo(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Ljava/util/ArrayList;
    .locals 10
    .param p1, "appInfo"    # Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 169
    iget-object v5, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mFolderProxyCallbacks:Lcom/android/launcher3/proxy/FolderProxyCallbacks;

    if-nez v5, :cond_1

    .line 170
    const/4 v4, 0x0

    .line 193
    :cond_0
    return-object v4

    .line 172
    :cond_1
    iget-object v5, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mFolderProxyCallbacks:Lcom/android/launcher3/proxy/FolderProxyCallbacks;

    invoke-interface {v5}, Lcom/android/launcher3/proxy/FolderProxyCallbacks;->getOpenedFolderIconView()Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v0

    .line 173
    .local v0, "folderIconView":Lcom/android/launcher3/folder/view/FolderIconView;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 175
    .local v4, "itemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    if-eqz v0, :cond_0

    .line 176
    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v1

    .line 177
    .local v1, "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    iget-object v2, v1, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    .line 179
    .local v2, "folderItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 180
    .local v3, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 181
    invoke-virtual {v3}, Lcom/android/launcher3/common/base/item/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 182
    invoke-virtual {v3}, Lcom/android/launcher3/common/base/item/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 183
    invoke-virtual {v3}, Lcom/android/launcher3/common/base/item/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 184
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 186
    :cond_3
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    iget-object v6, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    if-eqz v6, :cond_2

    iget-object v6, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    .line 187
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "\\s"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 188
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "\\s"

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_2

    .line 189
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getFolderItemViewByTitle(Ljava/lang/String;)Lcom/android/launcher3/folder/view/FolderIconView;
    .locals 1
    .param p1, "folderName"    # Ljava/lang/String;

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v0, p1}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->getFolderItemViewByTitle(Ljava/lang/String;)Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v0

    return-object v0
.end method

.method public final getHomeCurrentPage()I
    .locals 2

    .prologue
    .line 479
    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v1}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->getPagedView()Lcom/android/launcher3/common/base/view/PagedView;

    move-result-object v0

    .line 480
    .local v0, "pv":Lcom/android/launcher3/common/base/view/PagedView;
    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/PagedView;->getCurrentPage()I

    move-result v1

    return v1
.end method

.method public getHomeFolderItemCountByTitle(Ljava/lang/String;)I
    .locals 1
    .param p1, "folderName"    # Ljava/lang/String;

    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v0, p1}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->getFolderItemCountByTitle(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getHomeItemInfoByStateAppInfo(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Ljava/util/List;
    .locals 6
    .param p1, "appInfo"    # Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/16 v5, -0x64

    .line 117
    if-nez p1, :cond_0

    move-object v2, v3

    .line 131
    :goto_0
    return-object v2

    .line 120
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 121
    .local v2, "itemList":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 122
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-direct {p0, v3, v5}, Lcom/android/launcher3/proxy/LauncherProxy;->getItemsInfoByComponentName(Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object v0

    .line 123
    .local v0, "desktopItemList":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    const/16 v4, -0x65

    invoke-direct {p0, v3, v4}, Lcom/android/launcher3/proxy/LauncherProxy;->getItemsInfoByComponentName(Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object v1

    .line 124
    .local v1, "hotseatItemList":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 125
    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 127
    .end local v0    # "desktopItemList":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .end local v1    # "hotseatItemList":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    :cond_1
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 128
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v5}, Lcom/android/launcher3/proxy/LauncherProxy;->getItemsInfoByTitle(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    goto :goto_0

    :cond_2
    move-object v2, v3

    .line 131
    goto :goto_0
.end method

.method public final getHomePageCount()I
    .locals 3

    .prologue
    .line 450
    iget-object v2, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v2}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->getPagedView()Lcom/android/launcher3/common/base/view/PagedView;

    move-result-object v1

    .line 451
    .local v1, "pv":Lcom/android/launcher3/common/base/view/PagedView;
    const/4 v0, 0x1

    .line 452
    .local v0, "pages":I
    if-eqz v1, :cond_0

    .line 453
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/PagedView;->getPageCount()I

    move-result v0

    .line 456
    :cond_0
    return v0
.end method

.method public final getHomePageCountInOverviewMode()I
    .locals 3

    .prologue
    .line 461
    iget-object v2, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v2}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->getPagedView()Lcom/android/launcher3/common/base/view/PagedView;

    move-result-object v1

    .line 462
    .local v1, "pv":Lcom/android/launcher3/common/base/view/PagedView;
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/PagedView;->getPageCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .line 463
    .local v0, "pageCount":I
    iget-object v2, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v2}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->neededToAdjustZeroPage()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 464
    add-int/lit8 v0, v0, -0x1

    .line 467
    :cond_0
    return v0
.end method

.method public final getHomePageNumberByScreenId(J)I
    .locals 1
    .param p1, "screenId"    # J

    .prologue
    .line 1800
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v0, p1, p2}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->getPageIndexForScreenId(J)I

    move-result v0

    return v0
.end method

.method public getHomeWidgetItemInfo(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Ljava/util/ArrayList;
    .locals 2
    .param p1, "appInfo"    # Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 428
    if-nez p1, :cond_1

    .line 439
    :cond_0
    :goto_0
    return-object v0

    .line 431
    :cond_1
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 432
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    .line 434
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    .line 433
    invoke-interface {v0, v1}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->getWidgetItemsInfoByComponentName(Landroid/content/ComponentName;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 435
    :cond_2
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 436
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    .line 437
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getName()Ljava/lang/String;

    move-result-object v1

    .line 436
    invoke-interface {v0, v1}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->getWidgetItemsInfoByTitle(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public final getItemInfoInHideApps(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Lcom/android/launcher3/common/base/item/ItemInfo;
    .locals 3
    .param p1, "appInfo"    # Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;

    .prologue
    const/4 v0, 0x0

    .line 1679
    if-nez p1, :cond_1

    .line 1690
    :cond_0
    :goto_0
    return-object v0

    .line 1683
    :cond_1
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getOrdinalNumber()I

    move-result v1

    const/16 v2, -0x3e7

    if-eq v1, v2, :cond_2

    .line 1684
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsPickerProxyCallback:Lcom/android/launcher3/proxy/AppsPickerProxyCallbacks;

    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getOrdinalNumber()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/launcher3/proxy/AppsPickerProxyCallbacks;->getItem(I)Lcom/android/launcher3/common/base/item/ItemInfo;

    move-result-object v0

    goto :goto_0

    .line 1685
    :cond_2
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1686
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsPickerProxyCallback:Lcom/android/launcher3/proxy/AppsPickerProxyCallbacks;

    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/launcher3/proxy/AppsPickerProxyCallbacks;->getItem(Landroid/content/ComponentName;)Lcom/android/launcher3/common/base/item/ItemInfo;

    move-result-object v0

    goto :goto_0

    .line 1687
    :cond_3
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1688
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsPickerProxyCallback:Lcom/android/launcher3/proxy/AppsPickerProxyCallbacks;

    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/launcher3/proxy/AppsPickerProxyCallbacks;->getItem(Ljava/lang/String;)Lcom/android/launcher3/common/base/item/ItemInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public final getItemPageInApps(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)I
    .locals 4
    .param p1, "appInfo"    # Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;

    .prologue
    .line 1144
    const/4 v1, -0x1

    .line 1146
    .local v1, "result":I
    invoke-virtual {p0, p1}, Lcom/android/launcher3/proxy/LauncherProxy;->getAppsItemInfoByStateAppInfo(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Ljava/util/List;

    move-result-object v0

    .line 1147
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 1148
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-wide v2, v2, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    long-to-int v1, v2

    .line 1151
    :cond_0
    return v1
.end method

.method public getItemViewByComponentName(Landroid/content/ComponentName;)Landroid/view/View;
    .locals 1
    .param p1, "cn"    # Landroid/content/ComponentName;

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v0, p1}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->getItemViewByComponentName(Landroid/content/ComponentName;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getItemViewByTitle(Ljava/lang/String;)Landroid/view/View;
    .locals 1
    .param p1, "itemName"    # Ljava/lang/String;

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v0, p1}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->getItemViewByTitle(Ljava/lang/String;)Lcom/android/launcher3/common/view/IconView;

    move-result-object v0

    return-object v0
.end method

.method public getOpenedAppsFolderPage()I
    .locals 4

    .prologue
    .line 160
    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mFolderProxyCallbacks:Lcom/android/launcher3/proxy/FolderProxyCallbacks;

    invoke-interface {v1}, Lcom/android/launcher3/proxy/FolderProxyCallbacks;->getOpenedFolder()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v0

    .line 162
    .local v0, "folder":Lcom/android/launcher3/folder/FolderInfo;
    if-eqz v0, :cond_0

    .line 163
    iget-wide v2, v0, Lcom/android/launcher3/folder/FolderInfo;->screenId:J

    long-to-int v1, v2

    .line 165
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getOpenedFolderPageCount()I
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mFolderProxyCallbacks:Lcom/android/launcher3/proxy/FolderProxyCallbacks;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mFolderProxyCallbacks:Lcom/android/launcher3/proxy/FolderProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/FolderProxyCallbacks;->getPagedView()Lcom/android/launcher3/common/base/view/PagedView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mFolderProxyCallbacks:Lcom/android/launcher3/proxy/FolderProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/FolderProxyCallbacks;->getPagedView()Lcom/android/launcher3/common/base/view/PagedView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/PagedView;->getPageCount()I

    move-result v0

    .line 292
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOpenedHomeFolderPage()I
    .locals 6

    .prologue
    .line 150
    iget-object v2, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mFolderProxyCallbacks:Lcom/android/launcher3/proxy/FolderProxyCallbacks;

    invoke-interface {v2}, Lcom/android/launcher3/proxy/FolderProxyCallbacks;->getOpenedFolderIconView()Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v0

    .line 152
    .local v0, "folderIconView":Lcom/android/launcher3/folder/view/FolderIconView;
    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderIconView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 154
    .local v1, "itemInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-object v2, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    iget-wide v4, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    invoke-interface {v2, v4, v5}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->getPageIndexForScreenId(J)I

    move-result v2

    .line 156
    .end local v1    # "itemInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final getPageNumberInOverview(I)I
    .locals 2
    .param p1, "pageNumber"    # I

    .prologue
    .line 363
    if-gez p1, :cond_0

    .line 364
    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v1}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->getPagedView()Lcom/android/launcher3/common/base/view/PagedView;

    move-result-object v0

    .line 365
    .local v0, "pv":Lcom/android/launcher3/common/base/view/PagedView;
    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/PagedView;->getCurrentPage()I

    move-result v1

    invoke-virtual {p0, v1, p1}, Lcom/android/launcher3/proxy/LauncherProxy;->getPageNumberInOverview(II)I

    move-result p1

    .line 368
    .end local v0    # "pv":Lcom/android/launcher3/common/base/view/PagedView;
    .end local p1    # "pageNumber":I
    :cond_0
    return p1
.end method

.method public getPageNumberInOverview(II)I
    .locals 6
    .param p1, "pageNumber"    # I
    .param p2, "pageDirection"    # I

    .prologue
    .line 373
    sget-object v3, Lcom/android/launcher3/proxy/LauncherProxy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPageNumberInOverview : pageNumber="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    iget-object v3, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v3}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->neededToAdjustZeroPage()Z

    move-result v0

    .line 375
    .local v0, "hasZeropage":Z
    iget-object v3, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v3}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->getPagedView()Lcom/android/launcher3/common/base/view/PagedView;

    move-result-object v2

    .line 376
    .local v2, "pv":Lcom/android/launcher3/common/base/view/PagedView;
    invoke-virtual {v2}, Lcom/android/launcher3/common/base/view/PagedView;->getCurrentPage()I

    move-result v1

    .line 378
    .local v1, "page":I
    packed-switch p2, :pswitch_data_0

    .line 404
    if-eqz v0, :cond_1

    move v1, p1

    .line 408
    :goto_0
    sget-object v3, Lcom/android/launcher3/proxy/LauncherProxy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPageNumberInOverview : result page="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    return v1

    .line 380
    :pswitch_0
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 381
    :goto_1
    goto :goto_0

    .line 380
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 384
    :pswitch_1
    invoke-virtual {v2}, Lcom/android/launcher3/common/base/view/PagedView;->getPageCount()I

    move-result v3

    add-int/lit8 v1, v3, -0x2

    .line 385
    goto :goto_0

    .line 388
    :pswitch_2
    add-int/lit8 v1, v1, -0x1

    .line 389
    goto :goto_0

    .line 392
    :pswitch_3
    add-int/lit8 v1, v1, 0x1

    .line 393
    goto :goto_0

    .line 396
    :pswitch_4
    invoke-virtual {v2}, Lcom/android/launcher3/common/base/view/PagedView;->getCurrentPage()I

    move-result v1

    .line 397
    goto :goto_0

    .line 400
    :pswitch_5
    iget-object v3, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v3}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->getDefaultPage()I

    move-result v1

    .line 401
    goto :goto_0

    .line 404
    :cond_1
    add-int/lit8 v1, p1, -0x1

    goto :goto_0

    .line 378
    nop

    :pswitch_data_0
    .packed-switch -0x6
        :pswitch_5
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public getPageNumberToMove(Lcom/android/launcher3/proxy/BaseProxyCallbacks;I)I
    .locals 5
    .param p1, "cb"    # Lcom/android/launcher3/proxy/BaseProxyCallbacks;
    .param p2, "pageNumber"    # I

    .prologue
    .line 326
    sget-object v2, Lcom/android/launcher3/proxy/LauncherProxy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pageNumber="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    invoke-interface {p1}, Lcom/android/launcher3/proxy/BaseProxyCallbacks;->getPagedView()Lcom/android/launcher3/common/base/view/PagedView;

    move-result-object v1

    .line 329
    .local v1, "pv":Lcom/android/launcher3/common/base/view/PagedView;
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/PagedView;->getCurrentPage()I

    move-result v0

    .line 331
    .local v0, "page":I
    const/4 v2, -0x4

    if-ne v2, p2, :cond_2

    .line 332
    const/4 v0, 0x0

    .line 351
    :goto_0
    if-gez v0, :cond_0

    .line 352
    const/4 v0, 0x0

    .line 354
    :cond_0
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/PagedView;->getPageCount()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 355
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/PagedView;->getPageCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .line 358
    :cond_1
    sget-object v2, Lcom/android/launcher3/proxy/LauncherProxy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "result page="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    return v0

    .line 333
    :cond_2
    const/4 v2, -0x5

    if-ne v2, p2, :cond_3

    .line 334
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/PagedView;->getPageCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    .line 335
    :cond_3
    const/4 v2, -0x1

    if-ne v2, p2, :cond_4

    .line 336
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 337
    :cond_4
    const/4 v2, -0x2

    if-ne v2, p2, :cond_5

    .line 338
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 339
    :cond_5
    const/4 v2, -0x6

    if-ne v2, p2, :cond_7

    .line 340
    instance-of v2, p1, Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    if-eqz v2, :cond_6

    .line 341
    iget-object v2, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v2}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->getDefaultPage()I

    move-result v0

    goto :goto_0

    .line 343
    :cond_6
    const/4 v0, 0x0

    goto :goto_0

    .line 345
    :cond_7
    const/4 v2, -0x3

    if-ne v2, p2, :cond_8

    .line 346
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/PagedView;->getCurrentPage()I

    move-result v0

    goto :goto_0

    .line 348
    :cond_8
    add-int/lit8 v0, p2, -0x1

    goto :goto_0
.end method

.method public final getSearchResultListCheckedCount()I
    .locals 1

    .prologue
    .line 806
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsPickerProxyCallback:Lcom/android/launcher3/proxy/AppsPickerProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/AppsPickerProxyCallbacks;->getSearchResultListCheckedCount()I

    move-result v0

    return v0
.end method

.method public final getSearchResultListCount()I
    .locals 1

    .prologue
    .line 810
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsPickerProxyCallback:Lcom/android/launcher3/proxy/AppsPickerProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/AppsPickerProxyCallbacks;->getSearchResultListCount()I

    move-result v0

    return v0
.end method

.method public final getSearchResultSingleAppInfo()Lcom/android/launcher3/common/base/item/ItemInfo;
    .locals 1

    .prologue
    .line 814
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsPickerProxyCallback:Lcom/android/launcher3/proxy/AppsPickerProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/AppsPickerProxyCallbacks;->getSearchResultSingleAppInfo()Lcom/android/launcher3/common/base/item/ItemInfo;

    move-result-object v0

    return-object v0
.end method

.method public final getSecondTopStage()I
    .locals 1

    .prologue
    .line 1605
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;->getSecondTopStageMode()I

    move-result v0

    return v0
.end method

.method public getWidgetItemInfo(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Ljava/util/ArrayList;
    .locals 2
    .param p1, "appInfo"    # Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 413
    if-nez p1, :cond_1

    .line 424
    :cond_0
    :goto_0
    return-object v0

    .line 416
    :cond_1
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 418
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mWidgetProxyCallbacks:Lcom/android/launcher3/proxy/WidgetProxyCallbacks;

    .line 419
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    .line 418
    invoke-interface {v0, v1}, Lcom/android/launcher3/proxy/WidgetProxyCallbacks;->getWidgetItemsInfoByComponentName(Landroid/content/ComponentName;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 420
    :cond_2
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 421
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mWidgetProxyCallbacks:Lcom/android/launcher3/proxy/WidgetProxyCallbacks;

    .line 422
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getName()Ljava/lang/String;

    move-result-object v1

    .line 421
    invoke-interface {v0, v1}, Lcom/android/launcher3/proxy/WidgetProxyCallbacks;->getWidgetItemsInfoByTitle(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public getWidgetView(Landroid/content/ComponentName;)Landroid/view/View;
    .locals 1
    .param p1, "cn"    # Landroid/content/ComponentName;

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v0, p1}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->getWidgetView(Landroid/content/ComponentName;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final goHome()I
    .locals 1

    .prologue
    .line 1447
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    if-nez v0, :cond_0

    .line 1448
    const/4 v0, -0x1

    .line 1452
    :goto_0
    return v0

    .line 1450
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;->goHome()V

    .line 1451
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->exitSubState()V

    .line 1452
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasAppsBadge()Z
    .locals 1

    .prologue
    .line 1736
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mLauncherActivityProxyCallbacks:Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;->hasAppsBadge()Z

    move-result v0

    return v0
.end method

.method public final hasAppsEmptySpace(II)Z
    .locals 2
    .param p1, "pageNumber"    # I
    .param p2, "pageDirection"    # I

    .prologue
    .line 502
    move v0, p1

    .line 503
    .local v0, "p":I
    if-gtz v0, :cond_0

    .line 504
    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    invoke-virtual {p0, v1, p2}, Lcom/android/launcher3/proxy/LauncherProxy;->getPageNumberToMove(Lcom/android/launcher3/proxy/BaseProxyCallbacks;I)I

    move-result v0

    .line 506
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    invoke-interface {v1, v0}, Lcom/android/launcher3/proxy/AppsProxyCallbacks;->hasPageEmptySpace(I)Z

    move-result v1

    return v1
.end method

.method public final hasFolderInApps(Ljava/lang/String;)Z
    .locals 3
    .param p1, "folderName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 999
    if-nez p1, :cond_1

    .line 1004
    :cond_0
    :goto_0
    return v1

    .line 1002
    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    .line 1003
    invoke-interface {v2, p1}, Lcom/android/launcher3/proxy/AppsProxyCallbacks;->getFolderItemViewByTitle(Ljava/lang/String;)Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v0

    .line 1004
    .local v0, "iv":Lcom/android/launcher3/folder/view/FolderIconView;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public final hasFolderInHome(Ljava/lang/String;)Z
    .locals 3
    .param p1, "folderName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 529
    if-nez p1, :cond_1

    .line 534
    :cond_0
    :goto_0
    return v1

    .line 532
    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    .line 533
    invoke-interface {v2, p1}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->getFolderItemViewByTitle(Ljava/lang/String;)Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v0

    .line 534
    .local v0, "iv":Lcom/android/launcher3/folder/view/FolderIconView;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public final hasHomeEmptySpace(IIII)Z
    .locals 2
    .param p1, "pageNumber"    # I
    .param p2, "pageDirection"    # I
    .param p3, "spanX"    # I
    .param p4, "spanY"    # I

    .prologue
    .line 485
    move v0, p1

    .line 486
    .local v0, "p":I
    if-gtz v0, :cond_0

    .line 487
    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-virtual {p0, v1, p2}, Lcom/android/launcher3/proxy/LauncherProxy;->getPageNumberToMove(Lcom/android/launcher3/proxy/BaseProxyCallbacks;I)I

    move-result v0

    .line 489
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v1, v0, p3, p4}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->hasPageEmptySpace(III)Z

    move-result v1

    return v1
.end method

.method public final hasItemInApps(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Z
    .locals 3
    .param p1, "appInfo"    # Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;

    .prologue
    const/4 v1, 0x0

    .line 991
    if-nez p1, :cond_1

    .line 995
    :cond_0
    :goto_0
    return v1

    .line 994
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/launcher3/proxy/LauncherProxy;->getAppsItemInfoByStateAppInfo(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Ljava/util/List;

    move-result-object v0

    .line 995
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public final hasItemInFolder(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Z
    .locals 3
    .param p1, "appInfo"    # Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;

    .prologue
    const/4 v1, 0x0

    .line 538
    if-nez p1, :cond_1

    .line 542
    :cond_0
    :goto_0
    return v1

    .line 541
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/launcher3/proxy/LauncherProxy;->getFolderItemInfoByStateAppInfo(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Ljava/util/ArrayList;

    move-result-object v0

    .line 542
    .local v0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public final hasItemInHome(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Z
    .locals 3
    .param p1, "appInfo"    # Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;

    .prologue
    const/4 v1, 0x0

    .line 520
    if-nez p1, :cond_1

    .line 525
    :cond_0
    :goto_0
    return v1

    .line 524
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/launcher3/proxy/LauncherProxy;->getHomeItemInfoByStateAppInfo(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Ljava/util/List;

    move-result-object v0

    .line 525
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public final hasPageDeleteButton(I)Z
    .locals 1
    .param p1, "page"    # I

    .prologue
    .line 471
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v0, p1}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->hasPageDeleteButton(I)Z

    move-result v0

    return v0
.end method

.method public final hideApps(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)I
    .locals 1
    .param p1, "appInfo"    # Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;

    .prologue
    .line 704
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/proxy/LauncherProxy;->hideOrUnHideApps(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;Z)I

    move-result v0

    return v0
.end method

.method public final hideAppsViewTypePopup()I
    .locals 1

    .prologue
    .line 1223
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    if-nez v0, :cond_0

    .line 1224
    const/4 v0, -0x1

    .line 1228
    :goto_0
    return v0

    .line 1227
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/AppsProxyCallbacks;->hideViewTypePopup()V

    .line 1228
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isAllAppsBadgeSwitchChecked()Z
    .locals 1

    .prologue
    .line 1749
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mLauncherActivityProxyCallbacks:Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;->isAllAppsBadgeSwitchChecked()Z

    move-result v0

    return v0
.end method

.method public final isAlreadySleepMode(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Z
    .locals 2
    .param p1, "appInfo"    # Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;

    .prologue
    .line 1362
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mLauncherActivityProxyCallbacks:Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getItemInfo()Lcom/android/launcher3/common/base/item/ItemInfo;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1363
    :cond_0
    const/4 v0, 0x0

    .line 1365
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mLauncherActivityProxyCallbacks:Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;

    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getItemInfo()Lcom/android/launcher3/common/base/item/ItemInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;->isAlreadySleepMode(Lcom/android/launcher3/common/base/item/ItemInfo;)Z

    move-result v0

    goto :goto_0
.end method

.method public final isAppsValidPage(I)Z
    .locals 3
    .param p1, "pageNumber"    # I

    .prologue
    .line 1008
    iget-object v2, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    invoke-interface {v2}, Lcom/android/launcher3/proxy/AppsProxyCallbacks;->getPagedView()Lcom/android/launcher3/common/base/view/PagedView;

    move-result-object v1

    .line 1009
    .local v1, "pv":Lcom/android/launcher3/common/base/view/PagedView;
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/PagedView;->getPageCount()I

    move-result v0

    .line 1011
    .local v0, "pageCount":I
    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final isAppsValidPage(II)Z
    .locals 2
    .param p1, "pageNumber"    # I
    .param p2, "pageDirection"    # I

    .prologue
    .line 1015
    move v0, p1

    .line 1016
    .local v0, "p":I
    if-gtz v0, :cond_0

    .line 1017
    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    invoke-virtual {p0, v1, p2}, Lcom/android/launcher3/proxy/LauncherProxy;->getPageNumberToMove(Lcom/android/launcher3/proxy/BaseProxyCallbacks;I)I

    move-result v0

    .line 1020
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/launcher3/proxy/LauncherProxy;->isAppsValidPage(I)Z

    move-result v1

    return v1
.end method

.method public final isAppsViewTypeAlphabetic()Z
    .locals 2

    .prologue
    .line 1024
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    if-nez v0, :cond_0

    .line 1025
    const/4 v0, 0x0

    .line 1028
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/AppsProxyCallbacks;->getViewType()Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/allapps/controller/AppsController$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/controller/AppsController$ViewType;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final isAvailableSleepMode(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Z
    .locals 2
    .param p1, "appInfo"    # Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;

    .prologue
    .line 1355
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mLauncherActivityProxyCallbacks:Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getItemInfo()Lcom/android/launcher3/common/base/item/ItemInfo;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1356
    :cond_0
    const/4 v0, 0x0

    .line 1358
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mLauncherActivityProxyCallbacks:Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;

    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getItemInfo()Lcom/android/launcher3/common/base/item/ItemInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;->isAvailableSleepMode(Lcom/android/launcher3/common/base/item/ItemInfo;)Z

    move-result v0

    goto :goto_0
.end method

.method public final isDisableApp(Lcom/android/launcher3/common/base/item/ItemInfo;)Z
    .locals 3
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 1578
    const/4 v0, 0x1

    .line 1579
    .local v0, "result":Z
    iget-object v1, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    .line 1580
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1581
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    .line 1582
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1581
    invoke-static {v1, v2}, Lcom/android/launcher3/Utilities;->canDisable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1583
    const/4 v0, 0x0

    .line 1587
    :cond_0
    return v0
.end method

.method public final isEmptyPage(I)Z
    .locals 1
    .param p1, "page"    # I

    .prologue
    .line 475
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v0, p1}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->isEmptyPage(I)Z

    move-result v0

    return v0
.end method

.method public final isEnableAppsButton()Z
    .locals 1

    .prologue
    .line 1347
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mLauncherActivityProxyCallbacks:Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;

    if-nez v0, :cond_0

    .line 1348
    const/4 v0, 0x0

    .line 1351
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mLauncherActivityProxyCallbacks:Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;->isEnableAppsButton()Z

    move-result v0

    goto :goto_0
.end method

.method public final isFolderValidPage(I)Z
    .locals 4
    .param p1, "pageNumber"    # I

    .prologue
    const/4 v2, 0x0

    .line 510
    iget-object v3, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mFolderProxyCallbacks:Lcom/android/launcher3/proxy/FolderProxyCallbacks;

    invoke-interface {v3}, Lcom/android/launcher3/proxy/FolderProxyCallbacks;->getPagedView()Lcom/android/launcher3/common/base/view/PagedView;

    move-result-object v1

    .line 511
    .local v1, "pv":Lcom/android/launcher3/common/base/view/PagedView;
    if-nez v1, :cond_1

    .line 516
    :cond_0
    :goto_0
    return v2

    .line 514
    :cond_1
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/PagedView;->getPageCount()I

    move-result v0

    .line 516
    .local v0, "pageCount":I
    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public final isHomeOnlyMode()Z
    .locals 1

    .prologue
    .line 1339
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mLauncherActivityProxyCallbacks:Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;

    if-nez v0, :cond_0

    .line 1340
    const/4 v0, 0x0

    .line 1343
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mLauncherActivityProxyCallbacks:Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;->isHomeOnlyMode()Z

    move-result v0

    goto :goto_0
.end method

.method public final isHomeValidPage(I)Z
    .locals 3
    .param p1, "pageNumber"    # I

    .prologue
    .line 443
    iget-object v2, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v2}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->getPagedView()Lcom/android/launcher3/common/base/view/PagedView;

    move-result-object v1

    .line 444
    .local v1, "pv":Lcom/android/launcher3/common/base/view/PagedView;
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/PagedView;->getPageCount()I

    move-result v0

    .line 446
    .local v0, "pageCount":I
    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final isHomeValidPageInOverview(IZ)Z
    .locals 6
    .param p1, "pageNumber"    # I
    .param p2, "exceptZeropage"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 494
    iget-object v5, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v5}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->getPagedView()Lcom/android/launcher3/common/base/view/PagedView;

    move-result-object v2

    .line 495
    .local v2, "pv":Lcom/android/launcher3/common/base/view/PagedView;
    invoke-virtual {v2}, Lcom/android/launcher3/common/base/view/PagedView;->getPageCount()I

    move-result v1

    .line 497
    .local v1, "pageCount":I
    iget-object v5, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v5}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->neededToAdjustZeroPage()Z

    move-result v5

    if-eqz v5, :cond_0

    if-eqz p2, :cond_0

    move v0, v3

    .line 498
    .local v0, "firstPage":I
    :goto_0
    if-lt p1, v0, :cond_1

    add-int/lit8 v5, v1, -0x1

    if-ge p1, v5, :cond_1

    :goto_1
    return v3

    .end local v0    # "firstPage":I
    :cond_0
    move v0, v4

    .line 497
    goto :goto_0

    .restart local v0    # "firstPage":I
    :cond_1
    move v3, v4

    .line 498
    goto :goto_1
.end method

.method public final isSecureFolderSetup()Z
    .locals 1

    .prologue
    .line 1383
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mLauncherActivityProxyCallbacks:Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;->isSecureFolderSetup()Z

    move-result v0

    return v0
.end method

.method public final isSingleAppBadgeChecked(Ljava/lang/String;)Z
    .locals 1
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 1746
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mLauncherActivityProxyCallbacks:Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;

    invoke-interface {v0, p1}, Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;->isSingleAppBadgeChecked(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final isUninstallApp(Lcom/android/launcher3/common/base/item/ItemInfo;)Z
    .locals 3
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 1565
    const/4 v0, 0x1

    .line 1566
    .local v0, "result":Z
    iget-object v1, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    .line 1567
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1568
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    .line 1569
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1568
    invoke-static {v1, v2}, Lcom/android/launcher3/Utilities;->canUninstall(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1570
    const/4 v0, 0x0

    .line 1574
    :cond_0
    return v0
.end method

.method public final lockFolder(Lcom/android/launcher3/common/base/item/ItemInfo;)I
    .locals 3
    .param p1, "folderInfo"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    const/4 v2, -0x1

    .line 1752
    instance-of v1, p1, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v1, :cond_1

    .line 1753
    invoke-static {}, Lcom/android/launcher3/folder/folderlock/FolderLock;->getInstance()Lcom/android/launcher3/folder/folderlock/FolderLock;

    move-result-object v0

    .local v0, "folderLock":Lcom/android/launcher3/folder/folderlock/FolderLock;
    move-object v1, p1

    .line 1754
    check-cast v1, Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/folderlock/FolderLock;->isLockedFolder(Lcom/android/launcher3/folder/FolderInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    .line 1761
    .end local v0    # "folderLock":Lcom/android/launcher3/folder/folderlock/FolderLock;
    :goto_0
    return v1

    .line 1757
    .restart local v0    # "folderLock":Lcom/android/launcher3/folder/folderlock/FolderLock;
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/folderlock/FolderLock;->setBackupInfo(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 1758
    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/folderlock/FolderLock;->startLockVerifyActivity(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 1759
    const/4 v1, 0x0

    goto :goto_0

    .end local v0    # "folderLock":Lcom/android/launcher3/folder/folderlock/FolderLock;
    :cond_1
    move v1, v2

    .line 1761
    goto :goto_0
.end method

.method public final lockSingleApp(Lcom/android/launcher3/common/base/item/ItemInfo;)I
    .locals 2
    .param p1, "itemInfo"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 1780
    invoke-static {}, Lcom/android/launcher3/folder/folderlock/FolderLock;->getInstance()Lcom/android/launcher3/folder/folderlock/FolderLock;

    move-result-object v0

    .line 1781
    .local v0, "folderLock":Lcom/android/launcher3/folder/folderlock/FolderLock;
    instance-of v1, p1, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/folderlock/FolderLock;->isLockedApp(Lcom/android/launcher3/common/base/item/IconInfo;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1782
    :cond_0
    const/4 v1, -0x1

    .line 1786
    :goto_0
    return v1

    .line 1784
    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/folderlock/FolderLock;->setBackupInfo(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 1785
    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/folderlock/FolderLock;->startLockVerifyActivity(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 1786
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public mapDirectionToPage(IIZ)I
    .locals 4
    .param p1, "itemPage"    # I
    .param p2, "direction"    # I
    .param p3, "isHome"    # Z

    .prologue
    .line 296
    const/4 v2, -0x1

    .line 297
    .local v2, "toPage":I
    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    .line 298
    .local v0, "cb":Lcom/android/launcher3/proxy/BaseProxyCallbacks;
    :goto_0
    invoke-interface {v0}, Lcom/android/launcher3/proxy/BaseProxyCallbacks;->getPagedView()Lcom/android/launcher3/common/base/view/PagedView;

    move-result-object v1

    .line 299
    .local v1, "pv":Lcom/android/launcher3/common/base/view/PagedView;
    packed-switch p2, :pswitch_data_0

    .line 321
    :cond_0
    :goto_1
    return v2

    .line 297
    .end local v0    # "cb":Lcom/android/launcher3/proxy/BaseProxyCallbacks;
    .end local v1    # "pv":Lcom/android/launcher3/common/base/view/PagedView;
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    goto :goto_0

    .line 301
    .restart local v0    # "cb":Lcom/android/launcher3/proxy/BaseProxyCallbacks;
    .restart local v1    # "pv":Lcom/android/launcher3/common/base/view/PagedView;
    :pswitch_0
    const/4 v2, 0x0

    .line 302
    goto :goto_1

    .line 304
    :pswitch_1
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/PagedView;->getPageCount()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .line 305
    goto :goto_1

    .line 307
    :pswitch_2
    add-int/lit8 v2, p1, -0x1

    .line 308
    goto :goto_1

    .line 310
    :pswitch_3
    add-int/lit8 v2, p1, 0x1

    .line 311
    goto :goto_1

    .line 313
    :pswitch_4
    if-eqz p3, :cond_0

    .line 314
    iget-object v3, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v3}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->getDefaultPage()I

    move-result v2

    goto :goto_1

    .line 318
    :pswitch_5
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/PagedView;->getCurrentPage()I

    move-result v2

    goto :goto_1

    .line 299
    nop

    :pswitch_data_0
    .packed-switch -0x6
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public final moveAppsFolderItemToPage(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;III)I
    .locals 4
    .param p1, "appInfo"    # Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;
    .param p2, "pageNumber"    # I
    .param p3, "pageDirection"    # I
    .param p4, "detailDirection"    # I

    .prologue
    const/4 v1, -0x3

    .line 1098
    if-nez p1, :cond_1

    .line 1118
    :cond_0
    :goto_0
    return v1

    .line 1102
    :cond_1
    if-gez p2, :cond_2

    .line 1103
    iget-object v2, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    invoke-virtual {p0, v2, p3}, Lcom/android/launcher3/proxy/LauncherProxy;->getPageNumberToMove(Lcom/android/launcher3/proxy/BaseProxyCallbacks;I)I

    move-result p2

    .line 1105
    :cond_2
    const/4 v0, 0x0

    .line 1106
    .local v0, "iv":Landroid/view/View;
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 1107
    iget-object v2, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    .line 1108
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/launcher3/proxy/AppsProxyCallbacks;->getItemViewByComponentName(Landroid/content/ComponentName;)Landroid/view/View;

    move-result-object v0

    .line 1113
    :cond_3
    :goto_1
    if-eqz v0, :cond_0

    .line 1117
    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    check-cast v0, Lcom/android/launcher3/common/view/IconView;

    .end local v0    # "iv":Landroid/view/View;
    invoke-interface {v1, v0, p2}, Lcom/android/launcher3/proxy/AppsProxyCallbacks;->moveItem(Lcom/android/launcher3/common/view/IconView;I)V

    .line 1118
    const/4 v1, 0x0

    goto :goto_0

    .line 1109
    .restart local v0    # "iv":Landroid/view/View;
    :cond_4
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1110
    iget-object v2, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/launcher3/proxy/AppsProxyCallbacks;->getFolderItemViewByTitle(Ljava/lang/String;)Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v0

    goto :goto_1
.end method

.method public final moveAppsFolderToFollowedEmptyPage(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;II)I
    .locals 5
    .param p1, "appInfo"    # Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;
    .param p2, "pageNumber"    # I
    .param p3, "pageDirection"    # I

    .prologue
    const/4 v2, -0x3

    .line 1122
    move v1, p2

    .line 1124
    .local v1, "targetPage":I
    if-nez p1, :cond_1

    .line 1140
    :cond_0
    :goto_0
    return v2

    .line 1128
    :cond_1
    if-gez p2, :cond_2

    .line 1129
    iget-object v3, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    invoke-virtual {p0, v3, p3}, Lcom/android/launcher3/proxy/LauncherProxy;->getPageNumberToMove(Lcom/android/launcher3/proxy/BaseProxyCallbacks;I)I

    move-result v1

    .line 1132
    :cond_2
    const/4 v0, 0x0

    .line 1133
    .local v0, "iv":Landroid/view/View;
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1134
    iget-object v3, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/launcher3/proxy/AppsProxyCallbacks;->getFolderItemViewByTitle(Ljava/lang/String;)Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v0

    .line 1136
    :cond_3
    if-eqz v0, :cond_0

    .line 1140
    iget-object v2, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    check-cast v0, Lcom/android/launcher3/common/view/IconView;

    .end local v0    # "iv":Landroid/view/View;
    invoke-interface {v2, v0, v1}, Lcom/android/launcher3/proxy/AppsProxyCallbacks;->moveItemToFollowedEmptyPage(Lcom/android/launcher3/common/view/IconView;I)I

    move-result v2

    goto :goto_0
.end method

.method public final moveAppsItemToFollowedEmptyPage(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;II)I
    .locals 6
    .param p1, "appInfo"    # Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;
    .param p2, "pageNumber"    # I
    .param p3, "pageDirection"    # I

    .prologue
    const/4 v3, -0x3

    .line 1068
    move v2, p2

    .line 1070
    .local v2, "targetPage":I
    if-nez p1, :cond_1

    .line 1093
    :cond_0
    :goto_0
    return v3

    .line 1074
    :cond_1
    if-gez p2, :cond_2

    .line 1075
    iget-object v4, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    invoke-virtual {p0, v4, p3}, Lcom/android/launcher3/proxy/LauncherProxy;->getPageNumberToMove(Lcom/android/launcher3/proxy/BaseProxyCallbacks;I)I

    move-result v2

    .line 1078
    :cond_2
    const/4 v1, 0x0

    .line 1079
    .local v1, "iv":Landroid/view/View;
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 1080
    iget-object v4, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    .line 1081
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/launcher3/proxy/AppsProxyCallbacks;->getItemViewByComponentName(Landroid/content/ComponentName;)Landroid/view/View;

    move-result-object v1

    .line 1085
    :cond_3
    :goto_1
    if-eqz v1, :cond_0

    .line 1088
    invoke-virtual {p0}, Lcom/android/launcher3/proxy/LauncherProxy;->getAppsPageCount()I

    move-result v3

    if-lt v2, v3, :cond_4

    .line 1089
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 1090
    .local v0, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-wide v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    long-to-int v3, v4

    add-int/lit8 v2, v3, 0x1

    .line 1093
    .end local v0    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_4
    iget-object v3, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    check-cast v1, Lcom/android/launcher3/common/view/IconView;

    .end local v1    # "iv":Landroid/view/View;
    invoke-interface {v3, v1, v2}, Lcom/android/launcher3/proxy/AppsProxyCallbacks;->moveItemToFollowedEmptyPage(Lcom/android/launcher3/common/view/IconView;I)I

    move-result v3

    goto :goto_0

    .line 1082
    .restart local v1    # "iv":Landroid/view/View;
    :cond_5
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 1083
    iget-object v4, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/launcher3/proxy/AppsProxyCallbacks;->getItemViewByTitle(Ljava/lang/String;)Lcom/android/launcher3/common/view/IconView;

    move-result-object v1

    goto :goto_1
.end method

.method public final moveAppsItemToPage(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;III)I
    .locals 4
    .param p1, "appInfo"    # Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;
    .param p2, "pageNumber"    # I
    .param p3, "pageDirection"    # I
    .param p4, "detailDirection"    # I

    .prologue
    const/4 v1, -0x3

    .line 1044
    if-nez p1, :cond_1

    .line 1064
    :cond_0
    :goto_0
    return v1

    .line 1048
    :cond_1
    if-gez p2, :cond_2

    .line 1049
    iget-object v2, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    invoke-virtual {p0, v2, p3}, Lcom/android/launcher3/proxy/LauncherProxy;->getPageNumberToMove(Lcom/android/launcher3/proxy/BaseProxyCallbacks;I)I

    move-result p2

    .line 1051
    :cond_2
    const/4 v0, 0x0

    .line 1052
    .local v0, "iv":Landroid/view/View;
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 1053
    iget-object v2, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    .line 1054
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/launcher3/proxy/AppsProxyCallbacks;->getItemViewByComponentName(Landroid/content/ComponentName;)Landroid/view/View;

    move-result-object v0

    .line 1059
    :cond_3
    :goto_1
    if-eqz v0, :cond_0

    .line 1063
    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    check-cast v0, Lcom/android/launcher3/common/view/IconView;

    .end local v0    # "iv":Landroid/view/View;
    invoke-interface {v1, v0, p2}, Lcom/android/launcher3/proxy/AppsProxyCallbacks;->moveItem(Lcom/android/launcher3/common/view/IconView;I)V

    .line 1064
    const/4 v1, 0x0

    goto :goto_0

    .line 1055
    .restart local v0    # "iv":Landroid/view/View;
    :cond_4
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1056
    iget-object v2, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/launcher3/proxy/AppsProxyCallbacks;->getItemViewByTitle(Ljava/lang/String;)Lcom/android/launcher3/common/view/IconView;

    move-result-object v0

    goto :goto_1
.end method

.method public final moveAppsPage(II)I
    .locals 2
    .param p1, "pageNumber"    # I
    .param p2, "pageDirection"    # I

    .prologue
    .line 1250
    move v0, p1

    .line 1251
    .local v0, "p":I
    if-gtz v0, :cond_0

    .line 1252
    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    invoke-virtual {p0, v1, p2}, Lcom/android/launcher3/proxy/LauncherProxy;->getPageNumberToMove(Lcom/android/launcher3/proxy/BaseProxyCallbacks;I)I

    move-result v0

    .line 1255
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/proxy/LauncherProxy;->isAppsValidPage(II)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1256
    const/4 v1, -0x3

    .line 1259
    :goto_0
    return v1

    .line 1258
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    invoke-interface {v1, v0}, Lcom/android/launcher3/proxy/AppsProxyCallbacks;->movePage(I)V

    .line 1259
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final moveFolderItemToHome(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)I
    .locals 4
    .param p1, "appInfo"    # Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;

    .prologue
    const/4 v1, -0x3

    const/4 v2, 0x0

    .line 955
    if-nez p1, :cond_1

    .line 968
    :cond_0
    :goto_0
    return v1

    .line 958
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/launcher3/proxy/LauncherProxy;->getFolderItemInfoByStateAppInfo(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Ljava/util/ArrayList;

    move-result-object v0

    .line 960
    .local v0, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 964
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x1

    if-lt v1, v3, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v1, :cond_2

    .line 965
    iget-object v3, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-interface {v3, v1}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->moveItemFromFolder(Lcom/android/launcher3/common/base/item/IconInfo;)V

    :cond_2
    move v1, v2

    .line 968
    goto :goto_0
.end method

.method public final moveFolderPage(II)I
    .locals 3
    .param p1, "pageNumber"    # I
    .param p2, "pageDirection"    # I

    .prologue
    .line 268
    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    invoke-interface {v1}, Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;->getTopStageMode()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mFolderProxyCallbacks:Lcom/android/launcher3/proxy/FolderProxyCallbacks;

    if-nez v1, :cond_1

    .line 270
    :cond_0
    const/4 v1, -0x1

    .line 281
    :goto_0
    return v1

    .line 272
    :cond_1
    move v0, p1

    .line 273
    .local v0, "p":I
    if-gtz v0, :cond_2

    .line 274
    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mFolderProxyCallbacks:Lcom/android/launcher3/proxy/FolderProxyCallbacks;

    invoke-virtual {p0, v1, p2}, Lcom/android/launcher3/proxy/LauncherProxy;->getPageNumberToMove(Lcom/android/launcher3/proxy/BaseProxyCallbacks;I)I

    move-result v0

    .line 277
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/launcher3/proxy/LauncherProxy;->isFolderValidPage(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 278
    const/4 v1, -0x3

    goto :goto_0

    .line 280
    :cond_3
    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mFolderProxyCallbacks:Lcom/android/launcher3/proxy/FolderProxyCallbacks;

    invoke-interface {v1, v0}, Lcom/android/launcher3/proxy/FolderProxyCallbacks;->movePage(I)V

    .line 281
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final moveHomeItemToPage(Landroid/view/View;III)I
    .locals 1
    .param p1, "iv"    # Landroid/view/View;
    .param p2, "pageNumber"    # I
    .param p3, "pageDirection"    # I
    .param p4, "detailDirection"    # I

    .prologue
    .line 589
    if-gtz p2, :cond_0

    .line 590
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-virtual {p0, v0, p3}, Lcom/android/launcher3/proxy/LauncherProxy;->getPageNumberToMove(Lcom/android/launcher3/proxy/BaseProxyCallbacks;I)I

    move-result p2

    .line 593
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v0, p1, p2}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->moveItem(Landroid/view/View;I)I

    move-result v0

    return v0
.end method

.method public final moveHomePage(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)I
    .locals 4
    .param p1, "appInfo"    # Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;

    .prologue
    const/4 v2, 0x0

    .line 570
    invoke-virtual {p0, p1}, Lcom/android/launcher3/proxy/LauncherProxy;->getHomeItemInfoByStateAppInfo(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Ljava/util/List;

    move-result-object v0

    .line 571
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 572
    iget-object v3, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-interface {v3, v1}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->movePageToItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    move v1, v2

    .line 575
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x2

    goto :goto_0
.end method

.method public final moveHomePageByWidgetItem(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)I
    .locals 4
    .param p1, "appInfo"    # Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;

    .prologue
    const/4 v2, 0x0

    .line 579
    invoke-virtual {p0, p1}, Lcom/android/launcher3/proxy/LauncherProxy;->getHomeWidgetItemInfo(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Ljava/util/ArrayList;

    move-result-object v0

    .line 580
    .local v0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 581
    iget-object v3, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-interface {v3, v1}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->movePageToItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    move v1, v2

    .line 584
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x2

    goto :goto_0
.end method

.method public final moveItemInFolderToAppsPage(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;II)I
    .locals 4
    .param p1, "appInfo"    # Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;
    .param p2, "pageNumber"    # I
    .param p3, "targetPosition"    # I

    .prologue
    const/4 v1, -0x3

    .line 1155
    iget-object v2, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mFolderProxyCallbacks:Lcom/android/launcher3/proxy/FolderProxyCallbacks;

    if-nez v2, :cond_1

    .line 1156
    const/4 v1, -0x1

    .line 1180
    :cond_0
    :goto_0
    return v1

    .line 1158
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/proxy/LauncherProxy;->hasItemInFolder(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1161
    if-lez p2, :cond_2

    .line 1162
    invoke-virtual {p0, p2}, Lcom/android/launcher3/proxy/LauncherProxy;->isAppsValidPage(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1167
    :cond_2
    const/4 v0, 0x0

    .line 1168
    .local v0, "iv":Landroid/view/View;
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 1169
    iget-object v2, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mFolderProxyCallbacks:Lcom/android/launcher3/proxy/FolderProxyCallbacks;

    .line 1170
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/launcher3/proxy/FolderProxyCallbacks;->getItemViewByComponentName(Landroid/content/ComponentName;)Landroid/view/View;

    move-result-object v0

    .line 1175
    :cond_3
    :goto_1
    if-eqz v0, :cond_0

    .line 1179
    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    check-cast v0, Lcom/android/launcher3/common/view/IconView;

    .end local v0    # "iv":Landroid/view/View;
    invoke-interface {v1, v0, p2, p3}, Lcom/android/launcher3/proxy/AppsProxyCallbacks;->moveItemInFolder(Lcom/android/launcher3/common/view/IconView;II)V

    .line 1180
    const/4 v1, 0x0

    goto :goto_0

    .line 1171
    .restart local v0    # "iv":Landroid/view/View;
    :cond_4
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1172
    iget-object v2, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mFolderProxyCallbacks:Lcom/android/launcher3/proxy/FolderProxyCallbacks;

    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/launcher3/proxy/FolderProxyCallbacks;->getItemViewByTitle(Ljava/lang/String;)Lcom/android/launcher3/common/view/IconView;

    move-result-object v0

    goto :goto_1
.end method

.method public final moveToHomePage(I)I
    .locals 1
    .param p1, "pageNumber"    # I

    .prologue
    .line 565
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v0, p1}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->movePage(I)V

    .line 566
    const/4 v0, 0x0

    return v0
.end method

.method public final moveToHomePage(II)I
    .locals 2
    .param p1, "pageNumber"    # I
    .param p2, "pageDirection"    # I

    .prologue
    .line 546
    move v0, p1

    .line 547
    .local v0, "p":I
    if-gtz v0, :cond_0

    .line 548
    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-virtual {p0, v1, p2}, Lcom/android/launcher3/proxy/LauncherProxy;->getPageNumberToMove(Lcom/android/launcher3/proxy/BaseProxyCallbacks;I)I

    move-result v0

    .line 551
    :cond_0
    const/16 v1, -0x3e7

    if-ne p2, v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    .line 552
    invoke-interface {v1}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->neededToAdjustZeroPage()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 553
    add-int/lit8 v0, v0, 0x1

    .line 556
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/launcher3/proxy/LauncherProxy;->isHomeValidPage(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 557
    const/4 v1, -0x3

    .line 561
    :goto_0
    return v1

    .line 560
    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v1, v0}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->movePage(I)V

    .line 561
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onParamFillingReceived(Ljava/lang/String;Lcom/samsung/android/sdk/bixby/data/ParamFilling;)Z
    .locals 1
    .param p1, "topViewState"    # Ljava/lang/String;
    .param p2, "pf"    # Lcom/samsung/android/sdk/bixby/data/ParamFilling;

    .prologue
    .line 1624
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mFolderProxyCallbacks:Lcom/android/launcher3/proxy/FolderProxyCallbacks;

    if-eqz v0, :cond_0

    const-string v0, "AppsFolderView"

    .line 1625
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "HomeFolderView"

    .line 1626
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1627
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mFolderProxyCallbacks:Lcom/android/launcher3/proxy/FolderProxyCallbacks;

    invoke-interface {v0, p2}, Lcom/android/launcher3/proxy/FolderProxyCallbacks;->onParamFillingReceived(Lcom/samsung/android/sdk/bixby/data/ParamFilling;)Z

    .line 1638
    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 1628
    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsPickerProxyCallback:Lcom/android/launcher3/proxy/AppsPickerProxyCallbacks;

    if-eqz v0, :cond_4

    const-string v0, "AppsFolderAddIconSearchView"

    .line 1629
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    const-string v0, "HomeFolderAddIconSearchView"

    .line 1630
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "HomeSettingsHideAppsView"

    .line 1631
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1632
    :cond_5
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsPickerProxyCallback:Lcom/android/launcher3/proxy/AppsPickerProxyCallbacks;

    invoke-interface {v0, p2}, Lcom/android/launcher3/proxy/AppsPickerProxyCallbacks;->onParamFillingReceived(Lcom/samsung/android/sdk/bixby/data/ParamFilling;)Z

    goto :goto_0

    .line 1633
    :cond_6
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mWidgetProxyCallbacks:Lcom/android/launcher3/proxy/WidgetProxyCallbacks;

    if-eqz v0, :cond_2

    const-string v0, "HomePageWidgetSearchView"

    .line 1634
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1635
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mWidgetProxyCallbacks:Lcom/android/launcher3/proxy/WidgetProxyCallbacks;

    invoke-interface {v0, p2}, Lcom/android/launcher3/proxy/WidgetProxyCallbacks;->onParamFillingReceived(Lcom/samsung/android/sdk/bixby/data/ParamFilling;)Z

    goto :goto_0
.end method

.method public final openAppsFolder(Ljava/lang/String;)I
    .locals 2
    .param p1, "folderName"    # Ljava/lang/String;

    .prologue
    .line 1032
    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    .line 1033
    invoke-interface {v1, p1}, Lcom/android/launcher3/proxy/AppsProxyCallbacks;->getFolderItemViewByTitle(Ljava/lang/String;)Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v0

    .line 1034
    .local v0, "iv":Lcom/android/launcher3/folder/view/FolderIconView;
    if-eqz p1, :cond_0

    if-nez v0, :cond_1

    .line 1035
    :cond_0
    const/4 v1, -0x3

    .line 1039
    :goto_0
    return v1

    .line 1038
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    invoke-interface {v1, v0}, Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;->openFolder(Lcom/android/launcher3/folder/view/FolderIconView;)V

    .line 1039
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final openAppsTray()I
    .locals 1

    .prologue
    .line 1205
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    if-nez v0, :cond_0

    .line 1206
    const/4 v0, -0x1

    .line 1210
    :goto_0
    return v0

    .line 1209
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;->openAppsTray()V

    .line 1210
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final openFolderAddItemView()I
    .locals 3

    .prologue
    .line 1456
    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    invoke-interface {v1}, Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;->getTopStageMode()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mFolderProxyCallbacks:Lcom/android/launcher3/proxy/FolderProxyCallbacks;

    if-nez v1, :cond_1

    .line 1458
    :cond_0
    const/4 v1, -0x1

    .line 1467
    :goto_0
    return v1

    .line 1461
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mFolderProxyCallbacks:Lcom/android/launcher3/proxy/FolderProxyCallbacks;

    invoke-interface {v1}, Lcom/android/launcher3/proxy/FolderProxyCallbacks;->getOpenedFolderIconView()Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v0

    .line 1462
    .local v0, "iv":Lcom/android/launcher3/folder/view/FolderIconView;
    if-nez v0, :cond_2

    .line 1463
    const/4 v1, -0x2

    goto :goto_0

    .line 1466
    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    invoke-interface {v1, v0}, Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;->openFolderAddIconView(Lcom/android/launcher3/folder/view/FolderIconView;)V

    .line 1467
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final openFolderColorPanel()I
    .locals 2

    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;->getTopStageMode()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mFolderProxyCallbacks:Lcom/android/launcher3/proxy/FolderProxyCallbacks;

    if-nez v0, :cond_1

    .line 259
    :cond_0
    const/4 v0, -0x1

    .line 263
    :goto_0
    return v0

    .line 262
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mFolderProxyCallbacks:Lcom/android/launcher3/proxy/FolderProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/FolderProxyCallbacks;->openBackgroundColorView()V

    .line 263
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final openHomeFolder(Ljava/lang/String;)I
    .locals 3
    .param p1, "folderName"    # Ljava/lang/String;

    .prologue
    const/4 v1, -0x3

    .line 234
    if-nez p1, :cond_1

    .line 244
    :cond_0
    :goto_0
    return v1

    .line 237
    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    .line 238
    invoke-interface {v2, p1}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->getFolderItemViewByTitle(Ljava/lang/String;)Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v0

    .line 239
    .local v0, "iv":Lcom/android/launcher3/folder/view/FolderIconView;
    if-eqz v0, :cond_0

    .line 243
    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    invoke-interface {v1, v0}, Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;->openFolder(Lcom/android/launcher3/folder/view/FolderIconView;)V

    .line 244
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final openThemeApp()I
    .locals 1

    .prologue
    .line 1561
    const/4 v0, 0x0

    return v0
.end method

.method public final putAppToSleep(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)I
    .locals 4
    .param p1, "appInfo"    # Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;

    .prologue
    const/4 v2, -0x1

    .line 1369
    iget-object v3, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mLauncherActivityProxyCallbacks:Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;

    if-nez v3, :cond_1

    .line 1379
    :cond_0
    :goto_0
    return v2

    .line 1372
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/launcher3/proxy/LauncherProxy;->getAppsItemInfoByStateAppInfo(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Ljava/util/List;

    move-result-object v1

    .line 1373
    .local v1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1376
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 1377
    .local v0, "i":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-object v3, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mLauncherActivityProxyCallbacks:Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;

    invoke-interface {v3, v0}, Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;->putToSleepMode(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto :goto_1

    .line 1379
    .end local v0    # "i":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final putToSleepMode(Lcom/android/launcher3/common/base/item/ItemInfo;)I
    .locals 1
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 1596
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mLauncherActivityProxyCallbacks:Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;

    invoke-interface {v0, p1}, Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;->uninstallOrDisableApp(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 1597
    const/4 v0, 0x0

    return v0
.end method

.method public final removeFolderItem(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)I
    .locals 5
    .param p1, "appInfo"    # Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x3

    .line 1539
    if-nez p1, :cond_1

    .line 1556
    :cond_0
    :goto_0
    return v1

    .line 1542
    :cond_1
    iget-object v3, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    invoke-interface {v3}, Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;->getTopStageMode()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mFolderProxyCallbacks:Lcom/android/launcher3/proxy/FolderProxyCallbacks;

    if-nez v3, :cond_3

    .line 1544
    :cond_2
    const/4 v1, -0x1

    goto :goto_0

    .line 1546
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/launcher3/proxy/LauncherProxy;->hasItemInFolder(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1550
    invoke-virtual {p0, p1}, Lcom/android/launcher3/proxy/LauncherProxy;->getFolderItemInfoByStateAppInfo(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1551
    .local v0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1553
    iget-object v3, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mFolderProxyCallbacks:Lcom/android/launcher3/proxy/FolderProxyCallbacks;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-interface {v3, v1}, Lcom/android/launcher3/proxy/FolderProxyCallbacks;->removeFolderItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    move v1, v2

    .line 1554
    goto :goto_0
.end method

.method public final removeHomeCurrentPage()I
    .locals 1

    .prologue
    .line 847
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->removeCurrentPage()V

    .line 848
    const/4 v0, 0x0

    return v0
.end method

.method public final removeHomeShortcut(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)I
    .locals 4
    .param p1, "appInfo"    # Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;

    .prologue
    .line 597
    if-nez p1, :cond_0

    .line 598
    const/4 v2, -0x3

    .line 609
    :goto_0
    return v2

    .line 601
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/launcher3/proxy/LauncherProxy;->getHomeItemInfoByStateAppInfo(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)Ljava/util/List;

    move-result-object v1

    .line 602
    .local v1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    if-nez v1, :cond_1

    .line 603
    const/4 v2, -0x2

    goto :goto_0

    .line 605
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 606
    .local v0, "i":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-object v3, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v3, v0}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->removeShortcut(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto :goto_1

    .line 609
    .end local v0    # "i":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final removeHomeWidget(Lcom/android/launcher3/common/base/item/ItemInfo;)I
    .locals 6
    .param p1, "itemInfo"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 613
    instance-of v4, p1, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    if-nez v4, :cond_0

    .line 614
    const/4 v4, -0x3

    .line 629
    :goto_0
    return v4

    :cond_0
    move-object v2, p1

    .line 617
    check-cast v2, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    .line 618
    .local v2, "widget":Lcom/android/launcher3/home/LauncherAppWidgetInfo;
    iget-object v0, v2, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    .line 619
    .local v0, "cn":Landroid/content/ComponentName;
    if-nez v0, :cond_1

    .line 620
    const/4 v4, -0x2

    goto :goto_0

    .line 623
    :cond_1
    iget-object v4, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    .line 624
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->getWidgetItemsInfoByPackageName(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 625
    .local v3, "widgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 626
    .local v1, "w":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-object v5, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v5, v1}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->removeWidget(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto :goto_1

    .line 629
    .end local v1    # "w":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public final removeItemInAppsPage(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)I
    .locals 4
    .param p1, "appInfo"    # Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;

    .prologue
    const/4 v1, -0x3

    .line 1184
    const/4 v0, 0x0

    .line 1186
    .local v0, "iv":Landroid/view/View;
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1187
    iget-object v2, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/launcher3/proxy/AppsProxyCallbacks;->getItemViewByComponentName(Landroid/content/ComponentName;)Landroid/view/View;

    move-result-object v0

    .line 1192
    :cond_0
    :goto_0
    if-nez v0, :cond_3

    .line 1201
    :cond_1
    :goto_1
    return v1

    .line 1188
    :cond_2
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1189
    iget-object v2, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/launcher3/proxy/AppsProxyCallbacks;->getItemViewByTitle(Ljava/lang/String;)Lcom/android/launcher3/common/view/IconView;

    move-result-object v0

    goto :goto_0

    .line 1196
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher3/common/base/item/ItemInfo;

    if-eqz v2, :cond_1

    .line 1197
    iget-object v2, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-interface {v2, v1}, Lcom/android/launcher3/proxy/AppsProxyCallbacks;->removeItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 1198
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public final searchWidgetList(Ljava/lang/String;)I
    .locals 3
    .param p1, "keyword"    # Ljava/lang/String;

    .prologue
    .line 906
    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    invoke-interface {v1}, Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;->getTopStageMode()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 907
    const/4 v0, -0x2

    .line 910
    :goto_0
    return v0

    .line 909
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mWidgetProxyCallbacks:Lcom/android/launcher3/proxy/WidgetProxyCallbacks;

    invoke-interface {v1, p1}, Lcom/android/launcher3/proxy/WidgetProxyCallbacks;->search(Ljava/lang/String;)I

    move-result v0

    .line 910
    .local v0, "result":I
    goto :goto_0
.end method

.method public final setAddAppsSearchText(Ljava/lang/String;)I
    .locals 1
    .param p1, "searchText"    # Ljava/lang/String;

    .prologue
    .line 776
    if-nez p1, :cond_0

    .line 777
    const/4 v0, -0x3

    .line 784
    :goto_0
    return v0

    .line 780
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsPickerProxyCallback:Lcom/android/launcher3/proxy/AppsPickerProxyCallbacks;

    invoke-interface {v0, p1}, Lcom/android/launcher3/proxy/AppsPickerProxyCallbacks;->setSearchText(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 781
    const/4 v0, 0x0

    goto :goto_0

    .line 784
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public setAppsPickerProxyCallbacks(Lcom/android/launcher3/proxy/AppsPickerProxyCallbacks;)V
    .locals 0
    .param p1, "appsPickerProxyCallback"    # Lcom/android/launcher3/proxy/AppsPickerProxyCallbacks;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsPickerProxyCallback:Lcom/android/launcher3/proxy/AppsPickerProxyCallbacks;

    .line 109
    return-void
.end method

.method public setAppsProxyCallbacks(Lcom/android/launcher3/proxy/AppsProxyCallbacks;)V
    .locals 0
    .param p1, "appsProxyCallback"    # Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    .line 97
    return-void
.end method

.method public setFolderProxyCallbacks(Lcom/android/launcher3/proxy/FolderProxyCallbacks;)V
    .locals 0
    .param p1, "folderProxyCallback"    # Lcom/android/launcher3/proxy/FolderProxyCallbacks;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mFolderProxyCallbacks:Lcom/android/launcher3/proxy/FolderProxyCallbacks;

    .line 101
    return-void
.end method

.method public final setHomeCurrentAsMainPage()I
    .locals 3

    .prologue
    .line 824
    iget-object v2, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v2}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->getPagedView()Lcom/android/launcher3/common/base/view/PagedView;

    move-result-object v1

    .line 825
    .local v1, "pv":Lcom/android/launcher3/common/base/view/PagedView;
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/PagedView;->getCurrentPage()I

    move-result v0

    .line 826
    .local v0, "page":I
    iget-object v2, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    invoke-interface {v2, v0}, Lcom/android/launcher3/proxy/HomeProxyCallbacks;->setAsMainPage(I)V

    .line 828
    const/4 v2, 0x0

    return v2
.end method

.method public setHomeProxyCallbacks(Lcom/android/launcher3/proxy/HomeProxyCallbacks;)V
    .locals 0
    .param p1, "homeProxyCallback"    # Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mHomeProxyCallbacks:Lcom/android/launcher3/proxy/HomeProxyCallbacks;

    .line 93
    return-void
.end method

.method public setLauncherActivityProxyCallbacks(Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;)V
    .locals 0
    .param p1, "launcherActivityProxyCallback"    # Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mLauncherActivityProxyCallbacks:Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;

    .line 89
    return-void
.end method

.method public setStageManagerProxyCallbacks(Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;)V
    .locals 0
    .param p1, "stageManagerProxyCallback"    # Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    .line 114
    return-void
.end method

.method public setWidgetProxyCallbacks(Lcom/android/launcher3/proxy/WidgetProxyCallbacks;)V
    .locals 0
    .param p1, "widgetProxyCallback"    # Lcom/android/launcher3/proxy/WidgetProxyCallbacks;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mWidgetProxyCallbacks:Lcom/android/launcher3/proxy/WidgetProxyCallbacks;

    .line 105
    return-void
.end method

.method public final showAppInfo(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)I
    .locals 2
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;

    .prologue
    .line 217
    if-nez p1, :cond_0

    .line 218
    const/4 v1, -0x3

    .line 224
    :goto_0
    return v1

    .line 221
    :cond_0
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/LauncherAppsCompat;

    move-result-object v0

    .line 222
    .local v0, "launcherApps":Lcom/android/launcher3/common/compat/LauncherAppsCompat;
    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->showAppDetailsForProfile(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    .line 224
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final showAppsFolderRemovePopUp(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)I
    .locals 5
    .param p1, "appInfo"    # Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;

    .prologue
    const/4 v2, -0x3

    const/16 v4, -0x66

    .line 1277
    const/4 v1, 0x0

    .line 1279
    .local v1, "infos":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    if-nez p1, :cond_1

    .line 1297
    :cond_0
    :goto_0
    return v2

    .line 1281
    :cond_1
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 1282
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v4}, Lcom/android/launcher3/proxy/LauncherProxy;->getItemsInfoByTitle(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    .line 1287
    :cond_2
    :goto_1
    if-eqz v1, :cond_0

    .line 1288
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 1289
    .local v0, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    instance-of v3, v0, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v3, :cond_3

    .line 1290
    iget-object v3, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    check-cast v0, Lcom/android/launcher3/folder/FolderInfo;

    .end local v0    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    invoke-interface {v3, v0}, Lcom/android/launcher3/proxy/AppsProxyCallbacks;->deleteFolder(Lcom/android/launcher3/folder/FolderInfo;)V

    goto :goto_2

    .line 1283
    :cond_4
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1284
    invoke-interface {p1}, Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-direct {p0, v3, v4}, Lcom/android/launcher3/proxy/LauncherProxy;->getItemsInfoByComponentName(Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object v1

    goto :goto_1

    .line 1297
    :cond_5
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final showAppsTidyUpPreview()I
    .locals 1

    .prologue
    .line 1263
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/AppsProxyCallbacks;->showTidyUpPreview()V

    .line 1264
    const/4 v0, 0x0

    return v0
.end method

.method public final showAppsViewTypePopup()I
    .locals 1

    .prologue
    .line 1214
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    if-nez v0, :cond_0

    .line 1215
    const/4 v0, -0x1

    .line 1219
    :goto_0
    return v0

    .line 1218
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mAppsProxyCallbacks:Lcom/android/launcher3/proxy/AppsProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/AppsProxyCallbacks;->showViewTypePopup()V

    .line 1219
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final unHideApps(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;)I
    .locals 1
    .param p1, "appInfo"    # Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;

    .prologue
    .line 708
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/proxy/LauncherProxy;->hideOrUnHideApps(Lcom/android/launcher3/proxy/LauncherProxy$AppInfo;Z)I

    move-result v0

    return v0
.end method

.method public final uninstallOrDisableApp(Lcom/android/launcher3/common/base/item/ItemInfo;)I
    .locals 1
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 1591
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mLauncherActivityProxyCallbacks:Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;

    invoke-interface {v0, p1}, Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;->uninstallOrDisableApp(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 1592
    const/4 v0, 0x0

    return v0
.end method

.method public final uninstallWidget(Lcom/android/launcher3/common/base/item/ItemInfo;)I
    .locals 2
    .param p1, "info"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 930
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mStageManagerProxyCallbacks:Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;->getTopStageMode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    instance-of v0, p1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    if-nez v0, :cond_1

    .line 932
    :cond_0
    const/4 v0, -0x2

    .line 935
    .end local p1    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    :goto_0
    return v0

    .line 934
    .restart local p1    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/proxy/LauncherProxy;->mWidgetProxyCallbacks:Lcom/android/launcher3/proxy/WidgetProxyCallbacks;

    check-cast p1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    .end local p1    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    invoke-interface {v0, p1}, Lcom/android/launcher3/proxy/WidgetProxyCallbacks;->uninstallWidget(Lcom/android/launcher3/common/base/item/PendingAddItemInfo;)V

    .line 935
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final unlockFolder(Lcom/android/launcher3/common/base/item/ItemInfo;)I
    .locals 3
    .param p1, "folderInfo"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    const/4 v2, -0x1

    .line 1766
    instance-of v1, p1, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v1, :cond_1

    .line 1767
    invoke-static {}, Lcom/android/launcher3/folder/folderlock/FolderLock;->getInstance()Lcom/android/launcher3/folder/folderlock/FolderLock;

    move-result-object v0

    .local v0, "folderLock":Lcom/android/launcher3/folder/folderlock/FolderLock;
    move-object v1, p1

    .line 1768
    check-cast v1, Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/folderlock/FolderLock;->isLockedFolder(Lcom/android/launcher3/folder/FolderInfo;)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    .line 1775
    .end local v0    # "folderLock":Lcom/android/launcher3/folder/folderlock/FolderLock;
    :goto_0
    return v1

    .line 1771
    .restart local v0    # "folderLock":Lcom/android/launcher3/folder/folderlock/FolderLock;
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/folderlock/FolderLock;->setBackupInfo(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 1772
    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/folderlock/FolderLock;->startUnlockVerifyActivity(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 1773
    const/4 v1, 0x0

    goto :goto_0

    .end local v0    # "folderLock":Lcom/android/launcher3/folder/folderlock/FolderLock;
    :cond_1
    move v1, v2

    .line 1775
    goto :goto_0
.end method

.method public final unlockSingleApp(Lcom/android/launcher3/common/base/item/ItemInfo;)I
    .locals 2
    .param p1, "itemInfo"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 1790
    invoke-static {}, Lcom/android/launcher3/folder/folderlock/FolderLock;->getInstance()Lcom/android/launcher3/folder/folderlock/FolderLock;

    move-result-object v0

    .line 1791
    .local v0, "folderLock":Lcom/android/launcher3/folder/folderlock/FolderLock;
    instance-of v1, p1, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/folderlock/FolderLock;->isLockedApp(Lcom/android/launcher3/common/base/item/IconInfo;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1792
    :cond_0
    const/4 v1, -0x1

    .line 1796
    :goto_0
    return v1

    .line 1794
    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/folderlock/FolderLock;->setBackupInfo(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 1795
    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/folderlock/FolderLock;->startUnlockVerifyActivity(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 1796
    const/4 v1, 0x0

    goto :goto_0
.end method
