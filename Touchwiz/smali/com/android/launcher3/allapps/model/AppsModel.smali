.class public Lcom/android/launcher3/allapps/model/AppsModel;
.super Lcom/android/launcher3/common/model/DataLoader;
.source "AppsModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/allapps/model/AppsModel$PendingAddOrUpdateStruct;,
        Lcom/android/launcher3/allapps/model/AppsModel$LoadTask;,
        Lcom/android/launcher3/allapps/model/AppsModel$SyncContext;,
        Lcom/android/launcher3/allapps/model/AppsModel$ModelListener;
    }
.end annotation


# static fields
.field public static final INVALID_VERSION:I = -0x1

.field public static TAG:Ljava/lang/String; = null

.field public static final TASK_STATE_COMPLETE:I = 0x1

.field public static final TASK_STATE_PREPARED:I

.field public static final mPostPositionLock:Ljava/lang/Object;


# instance fields
.field private final DEBUG_MODEL:Z

.field private mAllAppsComponentKey:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/util/ComponentKey;",
            ">;"
        }
    .end annotation
.end field

.field private mDataVersion:J

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/allapps/model/AppsModel$ModelListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadTask:Lcom/android/launcher3/allapps/model/AppsModel$LoadTask;

.field private mPendingUpdateList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/allapps/model/AppsModel$PendingAddOrUpdateStruct;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateLock:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    const-string v0, "AppsModel"

    sput-object v0, Lcom/android/launcher3/allapps/model/AppsModel;->TAG:Ljava/lang/String;

    .line 87
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/launcher3/allapps/model/AppsModel;->mPostPositionLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/LauncherModel;Lcom/android/launcher3/common/model/IconCache;Lcom/android/launcher3/common/model/BadgeCache;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "app"    # Lcom/android/launcher3/LauncherAppState;
    .param p3, "model"    # Lcom/android/launcher3/LauncherModel;
    .param p4, "cache"    # Lcom/android/launcher3/common/model/IconCache;
    .param p5, "badgeCache"    # Lcom/android/launcher3/common/model/BadgeCache;

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/android/launcher3/common/model/DataLoader;-><init>()V

    .line 81
    invoke-static {}, Lcom/android/launcher3/Utilities;->DEBUGGABLE()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/allapps/model/AppsModel;->DEBUG_MODEL:Z

    .line 91
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/launcher3/allapps/model/AppsModel;->mDataVersion:J

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/model/AppsModel;->mAllAppsComponentKey:Ljava/util/ArrayList;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/model/AppsModel;->mListeners:Ljava/util/ArrayList;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/model/AppsModel;->mPendingUpdateList:Ljava/util/ArrayList;

    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/allapps/model/AppsModel;->mUpdateLock:Z

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p0

    .line 103
    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/allapps/model/AppsModel;->init(Landroid/content/Context;Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/LauncherModel;Lcom/android/launcher3/common/model/IconCache;Lcom/android/launcher3/common/model/BadgeCache;Lcom/android/launcher3/common/model/DataLoader;)V

    .line 104
    new-instance v0, Lcom/android/launcher3/common/model/FavoritesUpdater;

    invoke-direct {v0, p1, p3, p4, p0}, Lcom/android/launcher3/common/model/FavoritesUpdater;-><init>(Landroid/content/Context;Lcom/android/launcher3/LauncherModel;Lcom/android/launcher3/common/model/IconCache;Lcom/android/launcher3/common/model/DataLoader;)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/model/AppsModel;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    .line 105
    return-void
.end method

.method static synthetic access$1000()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/android/launcher3/allapps/model/AppsModel;->sBindCompleteRunnables:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1100()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/android/launcher3/allapps/model/AppsModel;->sBindCompleteRunnables:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1200(Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/Runnable;

    .prologue
    .line 78
    invoke-static {p0}, Lcom/android/launcher3/allapps/model/AppsModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$1500(Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/Object;

    .prologue
    .line 78
    invoke-static {p0}, Lcom/android/launcher3/allapps/model/AppsModel;->waitWithoutInterrupt(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/launcher3/allapps/model/AppsModel;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/model/AppsModel;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/launcher3/allapps/model/AppsModel;->mPendingUpdateList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/launcher3/allapps/model/AppsModel;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/allapps/model/AppsModel;

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/launcher3/allapps/model/AppsModel;->notifyLoadStart()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/launcher3/allapps/model/AppsModel;Lcom/android/launcher3/allapps/model/AppsModel$SyncContext;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/model/AppsModel;
    .param p1, "x1"    # Lcom/android/launcher3/allapps/model/AppsModel$SyncContext;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/model/AppsModel;->loadAllAppsItemsFromDB(Lcom/android/launcher3/allapps/model/AppsModel$SyncContext;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/launcher3/allapps/model/AppsModel;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/allapps/model/AppsModel;
    .param p1, "x1"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/model/AppsModel;->notifyLoadComplete(I)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/launcher3/allapps/model/AppsModel;Lcom/android/launcher3/allapps/model/AppsModel$SyncContext;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/allapps/model/AppsModel;
    .param p1, "x1"    # Lcom/android/launcher3/allapps/model/AppsModel$SyncContext;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/model/AppsModel;->loadRemainedApplications(Lcom/android/launcher3/allapps/model/AppsModel$SyncContext;)V

    return-void
.end method

.method static synthetic access$2100()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/android/launcher3/allapps/model/AppsModel;->sBgLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/launcher3/allapps/model/AppsModel;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/allapps/model/AppsModel;

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/launcher3/allapps/model/AppsModel;->updateAppsPostposition()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/launcher3/allapps/model/AppsModel;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/model/AppsModel;

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/launcher3/allapps/model/AppsModel;->getInvalidItems()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2500()Lcom/android/launcher3/LauncherModel;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/android/launcher3/allapps/model/AppsModel;->sLauncherModel:Lcom/android/launcher3/LauncherModel;

    return-object v0
.end method

.method static synthetic access$2600()Z
    .locals 1

    .prologue
    .line 78
    sget-boolean v0, Lcom/android/launcher3/allapps/model/AppsModel;->mIsBootCompleted:Z

    return v0
.end method

.method static synthetic access$2700(Lcom/android/launcher3/allapps/model/AppsModel;)Lcom/android/launcher3/allapps/model/AppsModel$LoadTask;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/model/AppsModel;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/launcher3/allapps/model/AppsModel;->mLoadTask:Lcom/android/launcher3/allapps/model/AppsModel$LoadTask;

    return-object v0
.end method

.method static synthetic access$2800()Z
    .locals 1

    .prologue
    .line 78
    sget-boolean v0, Lcom/android/launcher3/allapps/model/AppsModel;->mIsBootCompleted:Z

    return v0
.end method

.method static synthetic access$2900()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/android/launcher3/allapps/model/AppsModel;->sPendingPackages:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/launcher3/allapps/model/AppsModel;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/model/AppsModel;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 78
    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/model/AppsModel;->getUnRestoredItems(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3000()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/android/launcher3/allapps/model/AppsModel;->sWorkerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3100()Landroid/content/Context;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/android/launcher3/allapps/model/AppsModel;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3200()Landroid/content/Context;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/android/launcher3/allapps/model/AppsModel;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/launcher3/allapps/model/AppsModel;)Lcom/android/launcher3/common/model/FavoritesUpdater;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/model/AppsModel;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/launcher3/allapps/model/AppsModel;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/launcher3/allapps/model/AppsModel;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/allapps/model/AppsModel;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/model/AppsModel;->notifyUpdate(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/launcher3/allapps/model/AppsModel;Ljava/util/HashSet;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/allapps/model/AppsModel;
    .param p1, "x1"    # Ljava/util/HashSet;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/model/AppsModel;->updateRestoreItems(Ljava/util/HashSet;)V

    return-void
.end method

.method static synthetic access$700()Lcom/android/launcher3/common/model/IconCache;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/android/launcher3/allapps/model/AppsModel;->sIconCache:Lcom/android/launcher3/common/model/IconCache;

    return-object v0
.end method

.method static synthetic access$800()Lcom/android/launcher3/common/model/IconCache;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/android/launcher3/allapps/model/AppsModel;->sIconCache:Lcom/android/launcher3/common/model/IconCache;

    return-object v0
.end method

.method static synthetic access$900()Z
    .locals 1

    .prologue
    .line 78
    sget-boolean v0, Lcom/android/launcher3/allapps/model/AppsModel;->sIsLoadingAndBindingWorkspace:Z

    return v0
.end method

.method private addToFolderItem(Lcom/android/launcher3/folder/FolderInfo;Ljava/util/ArrayList;)V
    .locals 3
    .param p1, "folder"    # Lcom/android/launcher3/folder/FolderInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/folder/FolderInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1603
    .local p2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    iget-object v1, p0, Lcom/android/launcher3/allapps/model/AppsModel;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/model/AppsModel$ModelListener;

    .line 1604
    .local v0, "listener":Lcom/android/launcher3/allapps/model/AppsModel$ModelListener;
    invoke-interface {v0, p1, p2}, Lcom/android/launcher3/allapps/model/AppsModel$ModelListener;->addItemToFolder(Lcom/android/launcher3/folder/FolderInfo;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 1606
    .end local v0    # "listener":Lcom/android/launcher3/allapps/model/AppsModel$ModelListener;
    :cond_0
    return-void
.end method

.method private createAppInfoIfNecessary(Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;Lcom/android/launcher3/common/compat/UserHandleCompat;)Lcom/android/launcher3/common/base/item/IconInfo;
    .locals 6
    .param p1, "info"    # Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    .param p2, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;

    .prologue
    .line 890
    const/4 v1, 0x0

    .line 891
    .local v1, "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    invoke-virtual {p1}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 893
    .local v0, "cn":Landroid/content/ComponentName;
    iget-object v2, p0, Lcom/android/launcher3/allapps/model/AppsModel;->mAllAppsComponentKey:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/launcher3/util/ComponentKey;

    invoke-direct {v3, v0, p2}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 894
    new-instance v1, Lcom/android/launcher3/common/base/item/IconInfo;

    .end local v1    # "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    sget-object v2, Lcom/android/launcher3/allapps/model/AppsModel;->sContext:Landroid/content/Context;

    sget-object v3, Lcom/android/launcher3/allapps/model/AppsModel;->sIconCache:Lcom/android/launcher3/common/model/IconCache;

    invoke-direct {v1, v2, p1, p2, v3}, Lcom/android/launcher3/common/base/item/IconInfo;-><init>(Landroid/content/Context;Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;Lcom/android/launcher3/common/compat/UserHandleCompat;Lcom/android/launcher3/common/model/IconCache;)V

    .line 895
    .restart local v1    # "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    const-wide/16 v2, -0x66

    iput-wide v2, v1, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    .line 896
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/launcher3/common/base/item/IconInfo;->mDirty:Z

    .line 897
    const-wide/16 v2, -0x1

    iput-wide v2, v1, Lcom/android/launcher3/common/base/item/IconInfo;->screenId:J

    .line 898
    const/4 v2, -0x1

    iput v2, v1, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    .line 899
    iget-object v2, p0, Lcom/android/launcher3/allapps/model/AppsModel;->mQuietModeUsers:Landroid/util/LongSparseArray;

    sget-object v3, Lcom/android/launcher3/allapps/model/AppsModel;->sUserManager:Lcom/android/launcher3/common/compat/UserManagerCompat;

    invoke-virtual {v3, p2}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher3/common/compat/UserHandleCompat;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 900
    iget v2, v1, Lcom/android/launcher3/common/base/item/IconInfo;->isDisabled:I

    or-int/lit8 v2, v2, 0x8

    iput v2, v1, Lcom/android/launcher3/common/base/item/IconInfo;->isDisabled:I

    .line 902
    :cond_0
    iget-boolean v2, p0, Lcom/android/launcher3/allapps/model/AppsModel;->DEBUG_MODEL:Z

    if-eqz v2, :cond_1

    .line 903
    sget-object v2, Lcom/android/launcher3/allapps/model/AppsModel;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " createAppInfoIfNecessary ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    :cond_1
    return-object v1
.end method

.method private createFolderAndAddItem(Lcom/android/launcher3/folder/FolderInfo;Lcom/android/launcher3/common/base/item/ItemInfo;Ljava/util/ArrayList;)V
    .locals 3
    .param p1, "folderInfo"    # Lcom/android/launcher3/folder/FolderInfo;
    .param p2, "targetItem"    # Lcom/android/launcher3/common/base/item/ItemInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/folder/FolderInfo;",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1609
    .local p3, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    iget-object v1, p0, Lcom/android/launcher3/allapps/model/AppsModel;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/model/AppsModel$ModelListener;

    .line 1610
    .local v0, "listener":Lcom/android/launcher3/allapps/model/AppsModel$ModelListener;
    invoke-interface {v0, p1, p2, p3}, Lcom/android/launcher3/allapps/model/AppsModel$ModelListener;->createFolderAndAddItem(Lcom/android/launcher3/folder/FolderInfo;Lcom/android/launcher3/common/base/item/ItemInfo;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 1612
    .end local v0    # "listener":Lcom/android/launcher3/allapps/model/AppsModel$ModelListener;
    :cond_0
    return-void
.end method

.method private createFolderInfo(Landroid/database/Cursor;Lcom/android/launcher3/common/model/CursorInfo;Ljava/util/ArrayList;)Lcom/android/launcher3/common/base/item/ItemInfo;
    .locals 6
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "cursorInfo"    # Lcom/android/launcher3/common/model/CursorInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Lcom/android/launcher3/common/model/CursorInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/android/launcher3/common/base/item/ItemInfo;"
        }
    .end annotation

    .prologue
    .line 656
    .local p3, "restoredRows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget v4, p2, Lcom/android/launcher3/common/model/CursorInfo;->idIndex:I

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 659
    .local v2, "id":J
    sget-object v5, Lcom/android/launcher3/allapps/model/AppsModel;->sBgLock:Ljava/lang/Object;

    monitor-enter v5

    .line 660
    :try_start_0
    sget-object v4, Lcom/android/launcher3/allapps/model/AppsModel;->sBgFolders:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v4, v2, v3}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/folder/FolderInfo;

    .line 661
    .local v0, "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 663
    if-nez v0, :cond_0

    .line 664
    new-instance v0, Lcom/android/launcher3/folder/FolderInfo;

    .end local v0    # "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    invoke-direct {v0}, Lcom/android/launcher3/folder/FolderInfo;-><init>()V

    .line 667
    .restart local v0    # "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    :cond_0
    iget v4, p2, Lcom/android/launcher3/common/model/CursorInfo;->restoredIndex:I

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_2

    const/4 v1, 0x1

    .line 668
    .local v1, "restored":Z
    :goto_0
    iget v4, p2, Lcom/android/launcher3/common/model/CursorInfo;->titleIndex:I

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/launcher3/folder/FolderInfo;->title:Ljava/lang/CharSequence;

    .line 669
    iput-wide v2, v0, Lcom/android/launcher3/folder/FolderInfo;->id:J

    .line 670
    iget v4, p2, Lcom/android/launcher3/common/model/CursorInfo;->containerIndex:I

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v4, v4

    iput-wide v4, v0, Lcom/android/launcher3/folder/FolderInfo;->container:J

    .line 671
    iget v4, p2, Lcom/android/launcher3/common/model/CursorInfo;->screenIndex:I

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v4, v4

    iput-wide v4, v0, Lcom/android/launcher3/folder/FolderInfo;->screenId:J

    .line 672
    iget v4, p2, Lcom/android/launcher3/common/model/CursorInfo;->itemTypeIndex:I

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v0, Lcom/android/launcher3/folder/FolderInfo;->itemType:I

    .line 673
    iget v4, p2, Lcom/android/launcher3/common/model/CursorInfo;->rankIndex:I

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v0, Lcom/android/launcher3/folder/FolderInfo;->rank:I

    .line 674
    iget v4, p2, Lcom/android/launcher3/common/model/CursorInfo;->colorIndex:I

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v0, Lcom/android/launcher3/folder/FolderInfo;->color:I

    .line 675
    iget v4, p2, Lcom/android/launcher3/common/model/CursorInfo;->lockIndex:I

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v0, Lcom/android/launcher3/folder/FolderInfo;->lock:I

    .line 676
    iget v4, p2, Lcom/android/launcher3/common/model/CursorInfo;->optionsIndex:I

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v0, Lcom/android/launcher3/folder/FolderInfo;->options:I

    .line 678
    if-eqz v1, :cond_1

    .line 680
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 683
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/model/AppsModel;->putItemToIdMap(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 685
    return-object v0

    .line 661
    .end local v0    # "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    .end local v1    # "restored":Z
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 667
    .restart local v0    # "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private createIconInfo(Landroid/database/Cursor;Lcom/android/launcher3/common/model/CursorInfo;Ljava/util/ArrayList;)Lcom/android/launcher3/common/base/item/IconInfo;
    .locals 29
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "cursorInfo"    # Lcom/android/launcher3/common/model/CursorInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Lcom/android/launcher3/common/model/CursorInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/android/launcher3/common/base/item/IconInfo;"
        }
    .end annotation

    .prologue
    .line 714
    .local p3, "restoredRows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/launcher3/common/model/CursorInfo;->containerIndex:I

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 715
    .local v14, "container":I
    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/launcher3/common/model/CursorInfo;->idIndex:I

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v0, v4

    move-wide/from16 v18, v0

    .line 716
    .local v18, "id":J
    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/launcher3/common/model/CursorInfo;->profileIdIndex:I

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v0, v4

    move-wide/from16 v22, v0

    .line 717
    .local v22, "serialNumber":J
    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/launcher3/common/model/CursorInfo;->restoredIndex:I

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 718
    .local v8, "promiseType":I
    if-eqz v8, :cond_1

    const/16 v21, 0x1

    .line 723
    .local v21, "restored":Z
    :goto_0
    :try_start_0
    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/launcher3/common/model/CursorInfo;->intentIndex:I

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v7

    .line 724
    .local v7, "intent":Landroid/content/Intent;
    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 729
    .local v6, "cn":Landroid/content/ComponentName;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/model/AppsModel;->mAllUsers:Landroid/util/LongSparseArray;

    move-wide/from16 v0, v22

    invoke-virtual {v4, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/launcher3/common/compat/UserHandleCompat;

    .line 730
    .local v24, "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    if-nez v24, :cond_2

    .line 731
    const/4 v12, 0x0

    .line 879
    .end local v6    # "cn":Landroid/content/ComponentName;
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v24    # "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    :cond_0
    :goto_1
    return-object v12

    .line 718
    .end local v21    # "restored":Z
    :cond_1
    const/16 v21, 0x0

    goto :goto_0

    .line 725
    .restart local v21    # "restored":Z
    :catch_0
    move-exception v16

    .line 726
    .local v16, "e":Ljava/net/URISyntaxException;
    const/4 v12, 0x0

    goto :goto_1

    .line 735
    .end local v16    # "e":Ljava/net/URISyntaxException;
    .restart local v6    # "cn":Landroid/content/ComponentName;
    .restart local v7    # "intent":Landroid/content/Intent;
    .restart local v24    # "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/model/AppsModel;->mAllAppsComponentKey:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/launcher3/util/ComponentKey;

    move-object/from16 v0, v24

    invoke-direct {v5, v6, v0}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 736
    sget-object v4, Lcom/android/launcher3/allapps/model/AppsModel;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " createIconInfo fail- already exist:"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, " user:"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    const/4 v12, 0x0

    goto :goto_1

    .line 740
    :cond_3
    const/16 v26, 0x1

    .line 741
    .local v26, "validPkg":Z
    const/16 v25, 0x1

    .line 742
    .local v25, "validComponent":Z
    const/4 v11, 0x0

    .line 743
    .local v11, "allowMissingTarget":Z
    const/4 v15, 0x0

    .line 744
    .local v15, "disabledState":I
    const/16 v17, 0x0

    .line 746
    .local v17, "notAvailableType":I
    sget-object v4, Lcom/android/launcher3/allapps/model/AppsModel;->sLauncherApps:Lcom/android/launcher3/common/compat/LauncherAppsCompat;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-virtual {v4, v5, v0}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Ljava/util/List;

    move-result-object v13

    .line 747
    .local v13, "apps":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;>;"
    if-eqz v13, :cond_4

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 748
    :cond_4
    const/16 v26, 0x0

    .line 750
    :cond_5
    if-eqz v26, :cond_c

    move-object/from16 v0, v24

    invoke-static {v13, v6, v0}, Lcom/android/launcher3/allapps/model/AppsModel;->findActivityInfo(Ljava/util/List;Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;

    move-result-object v10

    .line 751
    .local v10, "activityInfo":Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    :goto_2
    if-nez v10, :cond_6

    .line 752
    const/16 v25, 0x0

    .line 755
    :cond_6
    if-eqz v25, :cond_d

    .line 756
    if-eqz v21, :cond_8

    .line 757
    and-int/lit8 v4, v8, 0x20

    if-eqz v4, :cond_7

    .line 758
    new-instance v27, Landroid/content/ContentValues;

    invoke-direct/range {v27 .. v27}, Landroid/content/ContentValues;-><init>()V

    .line 759
    .local v27, "values":Landroid/content/ContentValues;
    const-string v4, "title"

    const-string v5, ""

    move-object/from16 v0, v27

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    const-string v5, "icon"

    const/4 v4, 0x0

    check-cast v4, [B

    move-object/from16 v0, v27

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 761
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/allapps/model/AppsModel;->updateItem(JLandroid/content/ContentValues;)V

    .line 763
    .end local v27    # "values":Landroid/content/ContentValues;
    :cond_7
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 764
    const/16 v21, 0x0

    .line 766
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/model/AppsModel;->mQuietModeUsers:Landroid/util/LongSparseArray;

    move-wide/from16 v0, v22

    invoke-virtual {v4, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 767
    const/16 v15, 0x8

    .line 823
    :cond_9
    :goto_3
    if-eqz v21, :cond_19

    .line 824
    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Lcom/android/launcher3/common/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 825
    sget-object v4, Lcom/android/launcher3/allapps/model/AppsModel;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "constructing info for restored package promiseType: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x1

    invoke-static {v4, v5, v9}, Lcom/android/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v9, p2

    .line 826
    invoke-virtual/range {v4 .. v9}, Lcom/android/launcher3/allapps/model/AppsModel;->getRestoredItemInfo(Landroid/database/Cursor;Landroid/content/ComponentName;Landroid/content/Intent;ILcom/android/launcher3/common/model/CursorInfo;)Lcom/android/launcher3/common/base/item/IconInfo;

    move-result-object v12

    .line 827
    .local v12, "appInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    iput-object v6, v12, Lcom/android/launcher3/common/base/item/IconInfo;->componentName:Landroid/content/ComponentName;

    .line 828
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Lcom/android/launcher3/allapps/model/AppsModel;->getRestoredItemIntent(Landroid/content/Intent;I)Landroid/content/Intent;

    move-result-object v7

    .line 829
    iput-object v7, v12, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    .line 849
    :goto_4
    if-eqz v12, :cond_a

    .line 850
    int-to-long v4, v14

    iput-wide v4, v12, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    .line 851
    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/launcher3/common/model/CursorInfo;->screenIndex:I

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v4, v4

    iput-wide v4, v12, Lcom/android/launcher3/common/base/item/IconInfo;->screenId:J

    .line 852
    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/launcher3/common/model/CursorInfo;->rankIndex:I

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v12, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    .line 853
    move-wide/from16 v0, v18

    iput-wide v0, v12, Lcom/android/launcher3/common/base/item/IconInfo;->id:J

    .line 854
    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/launcher3/common/model/CursorInfo;->hiddenIndex:I

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v12, Lcom/android/launcher3/common/base/item/IconInfo;->hidden:I

    .line 855
    iget v4, v12, Lcom/android/launcher3/common/base/item/IconInfo;->isDisabled:I

    or-int/2addr v4, v15

    iput v4, v12, Lcom/android/launcher3/common/base/item/IconInfo;->isDisabled:I

    .line 857
    if-eqz v21, :cond_a

    .line 858
    invoke-virtual {v12}, Lcom/android/launcher3/common/base/item/IconInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v6

    .line 859
    if-eqz v6, :cond_a

    .line 860
    sget-object v4, Lcom/android/launcher3/allapps/model/AppsModel;->sInstallingPkgs:Ljava/util/HashMap;

    if-nez v4, :cond_1c

    const/16 v20, 0x0

    .line 861
    .local v20, "progress":Ljava/lang/Integer;
    :goto_5
    if-eqz v20, :cond_1d

    .line 862
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v12, v4}, Lcom/android/launcher3/common/base/item/IconInfo;->setInstallProgress(I)V

    .line 871
    .end local v20    # "progress":Ljava/lang/Integer;
    :cond_a
    :goto_6
    if-eqz v12, :cond_0

    .line 872
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/launcher3/allapps/model/AppsModel;->DEBUG_MODEL:Z

    if-eqz v4, :cond_b

    .line 873
    sget-object v4, Lcom/android/launcher3/allapps/model/AppsModel;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "===> createIconInfo appInfo="

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/model/AppsModel;->mAllAppsComponentKey:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/launcher3/util/ComponentKey;

    iget-object v9, v12, Lcom/android/launcher3/common/base/item/IconInfo;->componentName:Landroid/content/ComponentName;

    iget-object v0, v12, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-direct {v5, v9, v0}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 876
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/launcher3/allapps/model/AppsModel;->setBadgeCount(Lcom/android/launcher3/common/base/item/IconInfo;)V

    goto/16 :goto_1

    .line 750
    .end local v10    # "activityInfo":Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    .end local v12    # "appInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_c
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 769
    .restart local v10    # "activityInfo":Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    :cond_d
    if-eqz v26, :cond_12

    .line 770
    const/4 v7, 0x0

    .line 771
    and-int/lit8 v4, v8, 0x2

    if-nez v4, :cond_e

    and-int/lit8 v4, v8, 0x20

    if-eqz v4, :cond_f

    .line 774
    :cond_e
    sget-object v4, Lcom/android/launcher3/allapps/model/AppsModel;->sPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    .line 775
    if-eqz v7, :cond_f

    .line 776
    new-instance v27, Landroid/content/ContentValues;

    invoke-direct/range {v27 .. v27}, Landroid/content/ContentValues;-><init>()V

    .line 777
    .restart local v27    # "values":Landroid/content/ContentValues;
    const-string v4, "intent"

    const/4 v5, 0x0

    invoke-virtual {v7, v5}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v27

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/allapps/model/AppsModel;->updateItem(JLandroid/content/ContentValues;)V

    .line 782
    .end local v27    # "values":Landroid/content/ContentValues;
    :cond_f
    if-nez v7, :cond_10

    .line 784
    sget-object v4, Lcom/android/launcher3/allapps/model/AppsModel;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid component removed: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x1

    invoke-static {v4, v5, v9}, Lcom/android/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 785
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 787
    :cond_10
    and-int/lit8 v4, v8, 0x20

    if-eqz v4, :cond_11

    .line 788
    new-instance v27, Landroid/content/ContentValues;

    invoke-direct/range {v27 .. v27}, Landroid/content/ContentValues;-><init>()V

    .line 789
    .restart local v27    # "values":Landroid/content/ContentValues;
    const-string v4, "title"

    const-string v5, ""

    move-object/from16 v0, v27

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 790
    const-string v5, "icon"

    const/4 v4, 0x0

    check-cast v4, [B

    move-object/from16 v0, v27

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 791
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/allapps/model/AppsModel;->updateItem(JLandroid/content/ContentValues;)V

    .line 793
    .end local v27    # "values":Landroid/content/ContentValues;
    :cond_11
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 794
    const/16 v21, 0x0

    goto/16 :goto_3

    .line 796
    :cond_12
    if-eqz v21, :cond_15

    .line 798
    sget-object v4, Lcom/android/launcher3/allapps/model/AppsModel;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "package not yet restored: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x1

    invoke-static {v4, v5, v9}, Lcom/android/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 800
    and-int/lit8 v4, v8, 0x2

    if-nez v4, :cond_13

    and-int/lit8 v4, v8, 0x1

    if-eqz v4, :cond_9

    .line 802
    :cond_13
    sget-object v4, Lcom/android/launcher3/allapps/model/AppsModel;->sInstallingPkgs:Ljava/util/HashMap;

    if-eqz v4, :cond_14

    sget-object v4, Lcom/android/launcher3/allapps/model/AppsModel;->sInstallingPkgs:Ljava/util/HashMap;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 803
    :cond_14
    sget-object v4, Lcom/android/launcher3/allapps/model/AppsModel;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "UnRestored package removed: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x1

    invoke-static {v4, v5, v9}, Lcom/android/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 804
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 807
    :cond_15
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/launcher3/allapps/model/AppsModel;->isNotAvailableApps(Ljava/lang/String;)I

    move-result v17

    if-lez v17, :cond_16

    .line 809
    sget-object v4, Lcom/android/launcher3/allapps/model/AppsModel;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Package unavailable  : "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, " by "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x1

    invoke-static {v4, v5, v9}, Lcom/android/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 810
    or-int v15, v15, v17

    .line 811
    const/4 v11, 0x1

    goto/16 :goto_3

    .line 812
    :cond_16
    sget-boolean v4, Lcom/android/launcher3/allapps/model/AppsModel;->mIsBootCompleted:Z

    if-nez v4, :cond_17

    .line 814
    sget-object v4, Lcom/android/launcher3/allapps/model/AppsModel;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Missing pkg(before boot complete), will check later : "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x1

    invoke-static {v4, v5, v9}, Lcom/android/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 815
    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v4, v1}, Lcom/android/launcher3/allapps/model/AppsModel;->addAppToPendingPackages(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    .line 816
    const/4 v11, 0x1

    goto/16 :goto_3

    .line 818
    :cond_17
    sget-object v4, Lcom/android/launcher3/allapps/model/AppsModel;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid package removed: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x1

    invoke-static {v4, v5, v9}, Lcom/android/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 819
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 832
    :cond_18
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 834
    :cond_19
    if-eqz v11, :cond_1b

    .line 836
    and-int/lit8 v4, v15, 0x20

    if-eqz v4, :cond_1a

    .line 838
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v6, v7, v2}, Lcom/android/launcher3/allapps/model/AppsModel;->getDisabledExternalItemInfo(Landroid/database/Cursor;Landroid/content/ComponentName;Landroid/content/Intent;Lcom/android/launcher3/common/model/CursorInfo;)Lcom/android/launcher3/common/base/item/IconInfo;

    move-result-object v12

    .restart local v12    # "appInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    goto/16 :goto_4

    .line 841
    .end local v12    # "appInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_1a
    sget-object v4, Lcom/android/launcher3/allapps/model/AppsModel;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "missingtarget cn="

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v6, v7, v2}, Lcom/android/launcher3/allapps/model/AppsModel;->getDisabledItemInfo(Landroid/database/Cursor;Landroid/content/ComponentName;Landroid/content/Intent;Lcom/android/launcher3/common/model/CursorInfo;)Lcom/android/launcher3/common/base/item/IconInfo;

    move-result-object v12

    .restart local v12    # "appInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    goto/16 :goto_4

    .line 846
    .end local v12    # "appInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_1b
    new-instance v12, Lcom/android/launcher3/common/base/item/IconInfo;

    sget-object v4, Lcom/android/launcher3/allapps/model/AppsModel;->sContext:Landroid/content/Context;

    sget-object v5, Lcom/android/launcher3/allapps/model/AppsModel;->sIconCache:Lcom/android/launcher3/common/model/IconCache;

    move-object/from16 v0, v24

    invoke-direct {v12, v4, v10, v0, v5}, Lcom/android/launcher3/common/base/item/IconInfo;-><init>(Landroid/content/Context;Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;Lcom/android/launcher3/common/compat/UserHandleCompat;Lcom/android/launcher3/common/model/IconCache;)V

    .restart local v12    # "appInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    goto/16 :goto_4

    .line 860
    :cond_1c
    sget-object v4, Lcom/android/launcher3/allapps/model/AppsModel;->sInstallingPkgs:Ljava/util/HashMap;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    move-object/from16 v20, v4

    goto/16 :goto_5

    .line 864
    .restart local v20    # "progress":Ljava/lang/Integer;
    :cond_1d
    iget v4, v12, Lcom/android/launcher3/common/base/item/IconInfo;->status:I

    and-int/lit8 v4, v4, -0x9

    iput v4, v12, Lcom/android/launcher3/common/base/item/IconInfo;->status:I

    goto/16 :goto_6
.end method

.method private createItems(Landroid/database/Cursor;Lcom/android/launcher3/common/model/CursorInfo;Ljava/util/ArrayList;Lcom/android/launcher3/util/LongArrayMap;Ljava/util/ArrayList;Lcom/android/launcher3/allapps/model/AppsModel$SyncContext;)V
    .locals 8
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "cursorInfo"    # Lcom/android/launcher3/common/model/CursorInfo;
    .param p6, "syncContext"    # Lcom/android/launcher3/allapps/model/AppsModel$SyncContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Lcom/android/launcher3/common/model/CursorInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/android/launcher3/util/LongArrayMap",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;",
            "Lcom/android/launcher3/allapps/model/AppsModel$SyncContext;",
            ")V"
        }
    .end annotation

    .prologue
    .line 626
    .local p3, "restoredRows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .local p4, "folders":Lcom/android/launcher3/util/LongArrayMap;, "Lcom/android/launcher3/util/LongArrayMap<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .local p5, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 628
    .local v4, "itemsToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_0
    :goto_0
    iget-boolean v5, p6, Lcom/android/launcher3/allapps/model/AppsModel$SyncContext;->stopped:Z

    if-nez v5, :cond_3

    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 632
    :try_start_0
    iget v5, p2, Lcom/android/launcher3/common/model/CursorInfo;->intentIndex:I

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 633
    .local v0, "component":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 634
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/allapps/model/AppsModel;->createFolderInfo(Landroid/database/Cursor;Lcom/android/launcher3/common/model/CursorInfo;Ljava/util/ArrayList;)Lcom/android/launcher3/common/base/item/ItemInfo;

    move-result-object v2

    .line 635
    .local v2, "folderInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    if-eqz v2, :cond_0

    .line 636
    iget-wide v6, v2, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    invoke-virtual {p4, v6, v7, v2}, Lcom/android/launcher3/util/LongArrayMap;->put(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 646
    .end local v0    # "component":Ljava/lang/String;
    .end local v2    # "folderInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    :catch_0
    move-exception v1

    .line 647
    .local v1, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/android/launcher3/allapps/model/AppsModel;->TAG:Ljava/lang/String;

    const-string v6, "Apps items loading interrupted"

    const/4 v7, 0x1

    invoke-static {v5, v6, v1, v7}, Lcom/android/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;Z)V

    goto :goto_0

    .line 639
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "component":Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/allapps/model/AppsModel;->createIconInfo(Landroid/database/Cursor;Lcom/android/launcher3/common/model/CursorInfo;Ljava/util/ArrayList;)Lcom/android/launcher3/common/base/item/IconInfo;

    move-result-object v3

    .line 640
    .local v3, "info":Lcom/android/launcher3/common/base/item/IconInfo;
    if-nez v3, :cond_2

    .line 641
    iget v5, p2, Lcom/android/launcher3/common/model/CursorInfo;->idIndex:I

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 643
    :cond_2
    invoke-virtual {p5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 652
    .end local v0    # "component":Ljava/lang/String;
    .end local v3    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_3
    invoke-direct {p0, v4}, Lcom/android/launcher3/allapps/model/AppsModel;->removeItems(Ljava/util/ArrayList;)V

    .line 653
    return-void
.end method

.method private createItemsInFolder(Landroid/database/Cursor;Lcom/android/launcher3/common/model/CursorInfo;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/launcher3/allapps/model/AppsModel$SyncContext;)V
    .locals 6
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "cursorInfo"    # Lcom/android/launcher3/common/model/CursorInfo;
    .param p5, "syncContext"    # Lcom/android/launcher3/allapps/model/AppsModel$SyncContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Lcom/android/launcher3/common/model/CursorInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;",
            "Lcom/android/launcher3/allapps/model/AppsModel$SyncContext;",
            ")V"
        }
    .end annotation

    .prologue
    .line 690
    .local p3, "restoredRows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .local p4, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 692
    .local v2, "itemsToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :goto_0
    iget-boolean v3, p5, Lcom/android/launcher3/allapps/model/AppsModel$SyncContext;->stopped:Z

    if-nez v3, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 694
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/allapps/model/AppsModel;->createIconInfo(Landroid/database/Cursor;Lcom/android/launcher3/common/model/CursorInfo;Ljava/util/ArrayList;)Lcom/android/launcher3/common/base/item/IconInfo;

    move-result-object v1

    .line 695
    .local v1, "info":Lcom/android/launcher3/common/base/item/IconInfo;
    if-nez v1, :cond_0

    .line 696
    iget v3, p2, Lcom/android/launcher3/common/model/CursorInfo;->idIndex:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 700
    .end local v1    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    :catch_0
    move-exception v0

    .line 701
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/launcher3/allapps/model/AppsModel;->TAG:Ljava/lang/String;

    const-string v4, "Apps items loading interrupted"

    const/4 v5, 0x1

    invoke-static {v3, v4, v0, v5}, Lcom/android/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;Z)V

    goto :goto_0

    .line 698
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_0
    :try_start_1
    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 706
    .end local v1    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/launcher3/allapps/model/AppsModel;->removeItems(Ljava/util/ArrayList;)V

    .line 709
    sget-object v3, Lcom/android/launcher3/allapps/model/AppsModel;->sFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    invoke-virtual {v3, p4}, Lcom/android/launcher3/common/model/FavoritesProvider;->deleteInvalidFolders(Ljava/util/ArrayList;)V

    .line 711
    return-void
.end method

.method private getInvalidItems()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1724
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1725
    .local v3, "invalidItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/model/AppsModel;->getAllAppItemInApps()Ljava/util/ArrayList;

    move-result-object v0

    .line 1726
    .local v0, "allItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 1727
    .local v4, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    instance-of v6, v4, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v6, :cond_0

    move-object v2, v4

    .line 1728
    check-cast v2, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 1729
    .local v2, "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    sget-object v6, Lcom/android/launcher3/allapps/model/AppsModel;->sIconCache:Lcom/android/launcher3/common/model/IconCache;

    sget-object v7, Lcom/android/launcher3/allapps/model/AppsModel;->sIconCache:Lcom/android/launcher3/common/model/IconCache;

    invoke-virtual {v2, v7}, Lcom/android/launcher3/common/base/item/IconInfo;->getIcon(Lcom/android/launcher3/common/model/IconCache;)Landroid/graphics/Bitmap;

    move-result-object v7

    iget-object v8, v2, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {v6, v7, v8}, Lcom/android/launcher3/common/model/IconCache;->isDefaultIcon(Landroid/graphics/Bitmap;Lcom/android/launcher3/common/compat/UserHandleCompat;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, v2, Lcom/android/launcher3/common/base/item/IconInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v6, :cond_0

    const/16 v6, 0x22

    .line 1731
    invoke-virtual {v2, v6}, Lcom/android/launcher3/common/base/item/IconInfo;->hasStatusFlag(I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1733
    sget-object v6, Lcom/android/launcher3/allapps/model/AppsModel;->sLauncherApps:Lcom/android/launcher3/common/compat/LauncherAppsCompat;

    iget-object v7, v2, Lcom/android/launcher3/common/base/item/IconInfo;->componentName:Landroid/content/ComponentName;

    .line 1734
    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v2, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {v6, v7, v8}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Ljava/util/List;

    move-result-object v1

    .line 1735
    .local v1, "apps":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, v2, Lcom/android/launcher3/common/base/item/IconInfo;->componentName:Landroid/content/ComponentName;

    iget-object v7, v2, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    .line 1736
    invoke-static {v1, v6, v7}, Lcom/android/launcher3/allapps/model/AppsModel;->findActivityInfo(Ljava/util/List;Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;

    move-result-object v6

    if-nez v6, :cond_0

    .line 1737
    :cond_1
    sget-object v6, Lcom/android/launcher3/allapps/model/AppsModel;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v2, Lcom/android/launcher3/common/base/item/IconInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is defaultIcon and activityInfo is null"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1738
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1743
    .end local v1    # "apps":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;>;"
    .end local v2    # "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v4    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_2
    return-object v3
.end method

.method private loadAllAppsItemsFromDB(Lcom/android/launcher3/allapps/model/AppsModel$SyncContext;)I
    .locals 22
    .param p1, "syncContext"    # Lcom/android/launcher3/allapps/model/AppsModel$SyncContext;

    .prologue
    .line 433
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 435
    .local v10, "restoredRows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    sget-object v3, Lcom/android/launcher3/common/model/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    .line 436
    .local v3, "contentUri":Landroid/net/Uri;
    const/4 v4, 0x0

    .line 437
    .local v4, "projection":[Ljava/lang/String;
    const-string v5, "(container=?)"

    .line 438
    .local v5, "selection":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const/16 v7, -0x66

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    .line 440
    .local v6, "selectionArg":[Ljava/lang/String;
    sget-object v2, Lcom/android/launcher3/allapps/model/AppsModel;->sContentResolver:Landroid/content/ContentResolver;

    const-string v7, "screen ASC, rank ASC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 442
    .local v8, "c":Landroid/database/Cursor;
    if-nez v8, :cond_0

    .line 443
    const/4 v2, 0x0

    .line 509
    :goto_0
    return v2

    .line 446
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 447
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 448
    const/4 v2, 0x0

    goto :goto_0

    .line 451
    :cond_1
    new-instance v9, Lcom/android/launcher3/common/model/CursorInfo;

    invoke-direct {v9, v8}, Lcom/android/launcher3/common/model/CursorInfo;-><init>(Landroid/database/Cursor;)V

    .line 452
    .local v9, "cursorInfo":Lcom/android/launcher3/common/model/CursorInfo;
    new-instance v11, Lcom/android/launcher3/util/LongArrayMap;

    invoke-direct {v11}, Lcom/android/launcher3/util/LongArrayMap;-><init>()V

    .line 453
    .local v11, "folders":Lcom/android/launcher3/util/LongArrayMap;, "Lcom/android/launcher3/util/LongArrayMap<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .local v12, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    move-object/from16 v7, p0

    move-object/from16 v13, p1

    .line 455
    :try_start_0
    invoke-direct/range {v7 .. v13}, Lcom/android/launcher3/allapps/model/AppsModel;->createItems(Landroid/database/Cursor;Lcom/android/launcher3/common/model/CursorInfo;Ljava/util/ArrayList;Lcom/android/launcher3/util/LongArrayMap;Ljava/util/ArrayList;Lcom/android/launcher3/allapps/model/AppsModel$SyncContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 457
    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_2

    .line 458
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 462
    :cond_2
    invoke-virtual {v11}, Lcom/android/launcher3/util/LongArrayMap;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 463
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "container in ("

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/launcher3/allapps/model/AppsModel;->makeFoldersIdToString(Lcom/android/launcher3/util/LongArrayMap;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v7, 0x29

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 464
    sget-object v13, Lcom/android/launcher3/allapps/model/AppsModel;->sContentResolver:Landroid/content/ContentResolver;

    const/16 v17, 0x0

    const-string v18, "rank ASC"

    move-object v14, v3

    move-object v15, v4

    move-object/from16 v16, v5

    invoke-virtual/range {v13 .. v18}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    move-object/from16 v13, p0

    move-object v14, v8

    move-object v15, v9

    move-object/from16 v16, v10

    move-object/from16 v17, v12

    move-object/from16 v18, p1

    .line 467
    :try_start_1
    invoke-direct/range {v13 .. v18}, Lcom/android/launcher3/allapps/model/AppsModel;->createItemsInFolder(Landroid/database/Cursor;Lcom/android/launcher3/common/model/CursorInfo;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/launcher3/allapps/model/AppsModel$SyncContext;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 469
    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_3

    .line 470
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 475
    :cond_3
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 477
    new-instance v21, Landroid/content/ContentValues;

    invoke-direct/range {v21 .. v21}, Landroid/content/ContentValues;-><init>()V

    .line 478
    .local v21, "values":Landroid/content/ContentValues;
    const-string v2, "restored"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 479
    sget-object v2, Lcom/android/launcher3/allapps/model/AppsModel;->sContentResolver:Landroid/content/ContentResolver;

    sget-object v7, Lcom/android/launcher3/common/model/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const-string v13, "_id"

    .line 480
    invoke-static {v13, v10}, Lcom/android/launcher3/Utilities;->createDbSelectionQuery(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    .line 479
    move-object/from16 v0, v21

    invoke-virtual {v2, v7, v0, v13, v14}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 483
    .end local v21    # "values":Landroid/content/ContentValues;
    :cond_4
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/android/launcher3/allapps/model/AppsModel$SyncContext;->stopped:Z

    if-nez v2, :cond_a

    .line 485
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 486
    .local v20, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher3/allapps/model/AppsModel;->DEBUG_MODEL:Z

    if-eqz v2, :cond_5

    .line 487
    sget-object v2, Lcom/android/launcher3/allapps/model/AppsModel;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "loadAllAppsItemsFromDB putToMap item="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v2, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    :cond_5
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/android/launcher3/allapps/model/AppsModel$SyncContext;->stopped:Z

    if-eqz v2, :cond_8

    .line 491
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 457
    .end local v20    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    :catchall_0
    move-exception v2

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    if-nez v7, :cond_6

    .line 458
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v2

    .line 469
    :catchall_1
    move-exception v2

    if-eqz v8, :cond_7

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    if-nez v7, :cond_7

    .line 470
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v2

    .line 495
    .restart local v20    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_8
    move-object/from16 v0, v20

    iget-wide v14, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v16, -0x66

    cmp-long v2, v14, v16

    if-eqz v2, :cond_9

    .line 497
    sget-object v13, Lcom/android/launcher3/allapps/model/AppsModel;->sBgLock:Ljava/lang/Object;

    monitor-enter v13

    .line 498
    :try_start_2
    sget-object v2, Lcom/android/launcher3/allapps/model/AppsModel;->sBgFolders:Lcom/android/launcher3/util/LongArrayMap;

    move-object/from16 v0, v20

    iget-wide v14, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    invoke-virtual {v2, v14, v15}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/launcher3/folder/FolderInfo;

    .line 499
    .local v19, "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 500
    if-eqz v19, :cond_9

    if-eqz v20, :cond_9

    move-object/from16 v0, v20

    iget v2, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->hidden:I

    if-nez v2, :cond_9

    move-object/from16 v2, v20

    .line 501
    check-cast v2, Lcom/android/launcher3/common/base/item/IconInfo;

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/android/launcher3/folder/FolderInfo;->add(Lcom/android/launcher3/common/base/item/IconInfo;)V

    .line 505
    .end local v19    # "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/model/AppsModel;->putItemToIdMap(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto/16 :goto_1

    .line 499
    :catchall_2
    move-exception v2

    :try_start_3
    monitor-exit v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v2

    .line 509
    .end local v20    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_a
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method private loadRemainedApplications(Lcom/android/launcher3/allapps/model/AppsModel$SyncContext;)V
    .locals 26
    .param p1, "syncContext"    # Lcom/android/launcher3/allapps/model/AppsModel$SyncContext;

    .prologue
    .line 515
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher3/allapps/model/AppsModel;->DEBUG_MODEL:Z

    move/from16 v21, v0

    if-eqz v21, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    .line 517
    .local v14, "loadTime":J
    :goto_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 519
    .local v4, "allRemainedItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    sget-object v21, Lcom/android/launcher3/allapps/model/AppsModel;->sUserManager:Lcom/android/launcher3/common/compat/UserManagerCompat;

    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getUserProfiles()Ljava/util/List;

    move-result-object v16

    .line 520
    .local v16, "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/compat/UserHandleCompat;>;"
    sget-object v21, Lcom/android/launcher3/allapps/model/AppsModel;->sContext:Landroid/content/Context;

    invoke-static/range {v21 .. v21}, Lcom/android/launcher3/common/customer/PostPositionController;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/customer/PostPositionController;

    move-result-object v13

    .line 522
    .local v13, "pp":Lcom/android/launcher3/common/customer/PostPositionController;
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_1
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_6

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/launcher3/common/compat/UserHandleCompat;

    .line 523
    .local v20, "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher3/allapps/model/AppsModel;->DEBUG_MODEL:Z

    move/from16 v22, v0

    if-eqz v22, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18

    .line 526
    .local v18, "qiaTime":J
    :goto_2
    sget-object v22, Lcom/android/launcher3/allapps/model/AppsModel;->sLauncherApps:Lcom/android/launcher3/common/compat/LauncherAppsCompat;

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Ljava/util/List;

    move-result-object v6

    .line 528
    .local v6, "apps":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;>;"
    if-eqz v6, :cond_0

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v22

    if-eqz v22, :cond_3

    .line 529
    :cond_0
    sget-object v22, Lcom/android/launcher3/allapps/model/AppsModel;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "There is no getActivityList apps for user "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 515
    .end local v4    # "allRemainedItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .end local v6    # "apps":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;>;"
    .end local v13    # "pp":Lcom/android/launcher3/common/customer/PostPositionController;
    .end local v14    # "loadTime":J
    .end local v16    # "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/compat/UserHandleCompat;>;"
    .end local v18    # "qiaTime":J
    .end local v20    # "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    :cond_1
    const-wide/16 v14, 0x0

    goto :goto_0

    .line 523
    .restart local v4    # "allRemainedItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .restart local v13    # "pp":Lcom/android/launcher3/common/customer/PostPositionController;
    .restart local v14    # "loadTime":J
    .restart local v16    # "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/compat/UserHandleCompat;>;"
    .restart local v20    # "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    :cond_2
    const-wide/16 v18, 0x0

    goto :goto_2

    .line 533
    .restart local v6    # "apps":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;>;"
    .restart local v18    # "qiaTime":J
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher3/allapps/model/AppsModel;->DEBUG_MODEL:Z

    move/from16 v22, v0

    if-eqz v22, :cond_4

    .line 534
    sget-object v22, Lcom/android/launcher3/allapps/model/AppsModel;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "getActivityList took "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 535
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v24

    sub-long v24, v24, v18

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "ms for user "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 534
    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    sget-object v22, Lcom/android/launcher3/allapps/model/AppsModel;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "getActivityList got "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " apps for user "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    :cond_4
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_3
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v11, v0, :cond_5

    .line 542
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/launcher3/allapps/model/AppsModel$SyncContext;->stopped:Z

    move/from16 v22, v0

    if-eqz v22, :cond_7

    .line 569
    :cond_5
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/launcher3/allapps/model/AppsModel$SyncContext;->stopped:Z

    move/from16 v22, v0

    if-eqz v22, :cond_a

    .line 621
    .end local v6    # "apps":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;>;"
    .end local v11    # "i":I
    .end local v18    # "qiaTime":J
    .end local v20    # "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    :cond_6
    return-void

    .line 545
    .restart local v6    # "apps":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;>;"
    .restart local v11    # "i":I
    .restart local v18    # "qiaTime":J
    .restart local v20    # "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    :cond_7
    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;

    .line 546
    .local v5, "app":Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v5, v1}, Lcom/android/launcher3/allapps/model/AppsModel;->createAppInfoIfNecessary(Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;Lcom/android/launcher3/common/compat/UserHandleCompat;)Lcom/android/launcher3/common/base/item/IconInfo;

    move-result-object v12

    .line 548
    .local v12, "info":Lcom/android/launcher3/common/base/item/IconInfo;
    if-eqz v12, :cond_9

    sget-object v22, Lcom/android/launcher3/allapps/model/AppsModel;->sFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    if-eqz v22, :cond_9

    .line 549
    sget-object v22, Lcom/android/launcher3/allapps/model/AppsModel;->sFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher3/common/model/FavoritesProvider;->generateNewItemId()J

    move-result-wide v22

    move-wide/from16 v0, v22

    iput-wide v0, v12, Lcom/android/launcher3/common/base/item/IconInfo;->id:J

    .line 552
    iget-object v0, v12, Lcom/android/launcher3/common/base/item/IconInfo;->componentName:Landroid/content/ComponentName;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Lcom/android/launcher3/common/customer/PostPositionController;->getAppsAutoFolderId(Ljava/lang/String;)J

    move-result-wide v8

    .line 554
    .local v8, "folderId":J
    const-wide/16 v22, -0x1

    cmp-long v22, v8, v22

    if-eqz v22, :cond_8

    .line 555
    sget-object v22, Lcom/android/launcher3/allapps/model/AppsModel;->sBgLock:Ljava/lang/Object;

    monitor-enter v22

    .line 556
    :try_start_0
    sget-object v23, Lcom/android/launcher3/allapps/model/AppsModel;->sBgFolders:Lcom/android/launcher3/util/LongArrayMap;

    move-object/from16 v0, v23

    invoke-virtual {v0, v8, v9}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/folder/FolderInfo;

    .line 557
    .local v7, "folder":Lcom/android/launcher3/folder/FolderInfo;
    monitor-exit v22
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 558
    if-eqz v7, :cond_8

    .line 559
    iput-wide v8, v12, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    .line 564
    .end local v7    # "folder":Lcom/android/launcher3/folder/FolderInfo;
    :cond_8
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 565
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/allapps/model/AppsModel;->mAllAppsComponentKey:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    new-instance v23, Lcom/android/launcher3/util/ComponentKey;

    iget-object v0, v12, Lcom/android/launcher3/common/base/item/IconInfo;->componentName:Landroid/content/ComponentName;

    move-object/from16 v24, v0

    iget-object v0, v12, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-object/from16 v25, v0

    invoke-direct/range {v23 .. v25}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 541
    .end local v8    # "folderId":J
    :cond_9
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 557
    .restart local v8    # "folderId":J
    :catchall_0
    move-exception v21

    :try_start_1
    monitor-exit v22
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v21

    .line 574
    .end local v5    # "app":Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    .end local v8    # "folderId":J
    .end local v12    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_a
    sget-object v22, Lcom/android/launcher3/allapps/model/AppsModel;->sContext:Landroid/content/Context;

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/launcher3/home/ManagedProfileHeuristic;->get(Landroid/content/Context;Lcom/android/launcher3/common/compat/UserHandleCompat;)Lcom/android/launcher3/home/ManagedProfileHeuristic;

    move-result-object v10

    .line 575
    .local v10, "heuristic":Lcom/android/launcher3/home/ManagedProfileHeuristic;
    if-eqz v10, :cond_b

    .line 576
    new-instance v17, Lcom/android/launcher3/allapps/model/AppsModel$4;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v10, v6}, Lcom/android/launcher3/allapps/model/AppsModel$4;-><init>(Lcom/android/launcher3/allapps/model/AppsModel;Lcom/android/launcher3/home/ManagedProfileHeuristic;Ljava/util/List;)V

    .line 582
    .local v17, "r":Ljava/lang/Runnable;
    new-instance v22, Lcom/android/launcher3/allapps/model/AppsModel$5;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/allapps/model/AppsModel$5;-><init>(Lcom/android/launcher3/allapps/model/AppsModel;Ljava/lang/Runnable;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/model/AppsModel;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 598
    .end local v17    # "r":Ljava/lang/Runnable;
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher3/allapps/model/AppsModel;->DEBUG_MODEL:Z

    move/from16 v22, v0

    if-eqz v22, :cond_c

    .line 599
    sget-object v22, Lcom/android/launcher3/allapps/model/AppsModel;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Icons processed in "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 600
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v24

    sub-long v24, v24, v14

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "ms"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 599
    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    :cond_c
    sget-object v22, Lcom/android/launcher3/allapps/model/AppsModel;->sContext:Landroid/content/Context;

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/android/launcher3/home/ManagedProfileHeuristic;->processAllUsers(Ljava/util/List;Landroid/content/Context;)V

    .line 606
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/launcher3/allapps/model/AppsModel$SyncContext;->stopped:Z

    move/from16 v22, v0

    if-nez v22, :cond_d

    .line 607
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/allapps/model/AppsModel;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v0, v4, v1}, Lcom/android/launcher3/common/model/FavoritesUpdater;->addItems(Ljava/util/ArrayList;Z)V

    .line 611
    :cond_d
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_4
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_e

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 612
    .local v12, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/launcher3/allapps/model/AppsModel$SyncContext;->stopped:Z

    move/from16 v23, v0

    if-eqz v23, :cond_f

    .line 619
    .end local v12    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_e
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_1

    .line 615
    .restart local v12    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_f
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/launcher3/allapps/model/AppsModel;->putItemToIdMap(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto :goto_4
.end method

.method private declared-synchronized notifyLoadComplete(I)V
    .locals 6
    .param p1, "taskState"    # I

    .prologue
    .line 1085
    monitor-enter p0

    :try_start_0
    iget-wide v2, p0, Lcom/android/launcher3/allapps/model/AppsModel;->mDataVersion:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/launcher3/allapps/model/AppsModel;->mDataVersion:J

    .line 1087
    iget-object v1, p0, Lcom/android/launcher3/allapps/model/AppsModel;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/model/AppsModel$ModelListener;

    .line 1088
    .local v0, "listener":Lcom/android/launcher3/allapps/model/AppsModel$ModelListener;
    invoke-interface {v0, p1}, Lcom/android/launcher3/allapps/model/AppsModel$ModelListener;->onLoadComplete(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1085
    .end local v0    # "listener":Lcom/android/launcher3/allapps/model/AppsModel$ModelListener;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1090
    :cond_0
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized notifyLoadStart()V
    .locals 3

    .prologue
    .line 1101
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/launcher3/allapps/model/AppsModel;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/model/AppsModel$ModelListener;

    .line 1102
    .local v0, "listener":Lcom/android/launcher3/allapps/model/AppsModel$ModelListener;
    invoke-interface {v0}, Lcom/android/launcher3/allapps/model/AppsModel$ModelListener;->onLoadStart()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1101
    .end local v0    # "listener":Lcom/android/launcher3/allapps/model/AppsModel$ModelListener;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1104
    :cond_0
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized notifyUpdate(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1093
    .local p1, "updated":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    monitor-enter p0

    :try_start_0
    iget-wide v2, p0, Lcom/android/launcher3/allapps/model/AppsModel;->mDataVersion:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/launcher3/allapps/model/AppsModel;->mDataVersion:J

    .line 1095
    iget-object v1, p0, Lcom/android/launcher3/allapps/model/AppsModel;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/model/AppsModel$ModelListener;

    .line 1096
    .local v0, "listener":Lcom/android/launcher3/allapps/model/AppsModel$ModelListener;
    invoke-interface {v0, p1}, Lcom/android/launcher3/allapps/model/AppsModel$ModelListener;->notifyUpdate(Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1093
    .end local v0    # "listener":Lcom/android/launcher3/allapps/model/AppsModel$ModelListener;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1098
    :cond_0
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized removeAllItems()V
    .locals 3

    .prologue
    .line 1107
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/launcher3/allapps/model/AppsModel;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/model/AppsModel$ModelListener;

    .line 1108
    .local v0, "listener":Lcom/android/launcher3/allapps/model/AppsModel$ModelListener;
    invoke-interface {v0}, Lcom/android/launcher3/allapps/model/AppsModel$ModelListener;->removeAllItems()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1107
    .end local v0    # "listener":Lcom/android/launcher3/allapps/model/AppsModel$ModelListener;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1110
    :cond_0
    monitor-exit p0

    return-void
.end method

.method private removeItems(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 986
    .local p1, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/allapps/model/AppsModel;->removeItems(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 987
    return-void
.end method

.method private removeItems(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 990
    .local p1, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .local p2, "pageItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 992
    sget-object v3, Lcom/android/launcher3/allapps/model/AppsModel;->sContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/launcher3/common/model/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "_id"

    .line 993
    invoke-static {v5, p1}, Lcom/android/launcher3/Utilities;->createDbSelectionQuery(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 992
    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 994
    sget-object v3, Lcom/android/launcher3/allapps/model/AppsModel;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removed = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_id"

    invoke-static {v5, p1}, Lcom/android/launcher3/Utilities;->createDbSelectionQuery(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    sget-object v3, Lcom/android/launcher3/allapps/model/AppsModel;->sContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/launcher3/common/customer/PostPositionController;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/customer/PostPositionController;

    move-result-object v2

    .line 998
    .local v2, "pp":Lcom/android/launcher3/common/customer/PostPositionController;
    sget-object v3, Lcom/android/launcher3/allapps/model/AppsModel;->sFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    invoke-virtual {v3}, Lcom/android/launcher3/common/model/FavoritesProvider;->deleteEmptyFolders()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 999
    .local v0, "folderId":J
    invoke-virtual {v2, v0, v1}, Lcom/android/launcher3/common/customer/PostPositionController;->removeAutoFolderInfo(J)V

    .line 1000
    invoke-virtual {v2, v0, v1}, Lcom/android/launcher3/common/customer/PostPositionController;->deleteFolder(J)V

    .line 1002
    sget-object v5, Lcom/android/launcher3/allapps/model/AppsModel;->sBgLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1003
    if-eqz p2, :cond_0

    .line 1004
    :try_start_0
    sget-object v3, Lcom/android/launcher3/allapps/model/AppsModel;->sBgFolders:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v3, v0, v1}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1006
    :cond_0
    sget-object v3, Lcom/android/launcher3/allapps/model/AppsModel;->sBgFolders:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v3, v0, v1}, Lcom/android/launcher3/util/LongArrayMap;->remove(J)V

    .line 1007
    sget-object v3, Lcom/android/launcher3/allapps/model/AppsModel;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v3, v0, v1}, Lcom/android/launcher3/util/LongArrayMap;->remove(J)V

    .line 1008
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1011
    .end local v0    # "folderId":J
    :cond_1
    invoke-virtual {v2}, Lcom/android/launcher3/common/customer/PostPositionController;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1012
    invoke-virtual {v2, p1}, Lcom/android/launcher3/common/customer/PostPositionController;->deleteItems(Ljava/util/ArrayList;)V

    .line 1015
    .end local v2    # "pp":Lcom/android/launcher3/common/customer/PostPositionController;
    :cond_2
    return-void
.end method

.method private updateAppsPostposition()V
    .locals 2

    .prologue
    .line 1747
    sget-object v1, Lcom/android/launcher3/allapps/model/AppsModel;->mPostPositionLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1748
    :try_start_0
    sget-object v0, Lcom/android/launcher3/allapps/model/AppsModel;->sContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/common/customer/PostPositionController;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/customer/PostPositionController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1749
    sget-object v0, Lcom/android/launcher3/allapps/model/AppsModel;->sContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/common/customer/PostPositionController;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/customer/PostPositionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/customer/PostPositionController;->addAllItems()V

    .line 1751
    :cond_0
    monitor-exit v1

    .line 1752
    return-void

    .line 1751
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private declared-synchronized updateRestoreItems(Ljava/util/HashSet;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1113
    .local p1, "updates":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/launcher3/allapps/model/AppsModel;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/model/AppsModel$ModelListener;

    .line 1114
    .local v0, "listener":Lcom/android/launcher3/allapps/model/AppsModel$ModelListener;
    invoke-interface {v0, p1}, Lcom/android/launcher3/allapps/model/AppsModel$ModelListener;->updateRestoreItems(Ljava/util/HashSet;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1113
    .end local v0    # "listener":Lcom/android/launcher3/allapps/model/AppsModel$ModelListener;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1116
    :cond_0
    monitor-exit p0

    return-void
.end method

.method private static waitWithoutInterrupt(Ljava/lang/Object;)V
    .locals 4
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    .line 1231
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1235
    :goto_0
    return-void

    .line 1232
    :catch_0
    move-exception v0

    .line 1233
    .local v0, "e":Ljava/lang/InterruptedException;
    sget-object v1, Lcom/android/launcher3/allapps/model/AppsModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "waitWithoutInterrupt InterruptedException e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public addItem(Lcom/android/launcher3/common/base/item/ItemInfo;)J
    .locals 2
    .param p1, "info"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 1363
    iget-object v0, p0, Lcom/android/launcher3/allapps/model/AppsModel;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/model/FavoritesUpdater;->addItem(Lcom/android/launcher3/common/base/item/ItemInfo;)J

    move-result-wide v0

    return-wide v0
.end method

.method public addItemToFolder(Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;Lcom/android/launcher3/common/compat/UserHandleCompat;J)Z
    .locals 9
    .param p1, "info"    # Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    .param p2, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;
    .param p3, "folderId"    # J

    .prologue
    const/4 v3, 0x1

    .line 1578
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/launcher3/allapps/model/AppsModel;->findFolderById(Ljava/lang/Long;)Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v1

    .line 1579
    .local v1, "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    sget-object v4, Lcom/android/launcher3/allapps/model/AppsModel;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addItemToFolder() - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1580
    if-eqz v1, :cond_2

    .line 1581
    sget-object v4, Lcom/android/launcher3/allapps/model/AppsModel;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addItemToFolder() - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/android/launcher3/folder/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1582
    invoke-virtual {p1}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {p0, v4, p2, v3}, Lcom/android/launcher3/allapps/model/AppsModel;->getItemInfoInAppsForComponentName(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;Z)Lcom/android/launcher3/common/base/item/ItemInfo;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 1583
    .local v2, "item":Lcom/android/launcher3/common/base/item/IconInfo;
    if-eqz v2, :cond_1

    .line 1584
    sget-object v4, Lcom/android/launcher3/allapps/model/AppsModel;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "folder ID = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v1, Lcom/android/launcher3/folder/FolderInfo;->id:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , appItem container = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v2, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", id : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v2, Lcom/android/launcher3/common/base/item/IconInfo;->id:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1587
    iget-wide v4, v2, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    const-wide/16 v6, -0x66

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 1588
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1589
    .local v0, "addItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1590
    invoke-direct {p0, v1, v0}, Lcom/android/launcher3/allapps/model/AppsModel;->addToFolderItem(Lcom/android/launcher3/folder/FolderInfo;Ljava/util/ArrayList;)V

    .line 1599
    .end local v0    # "addItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    .end local v2    # "item":Lcom/android/launcher3/common/base/item/IconInfo;
    :goto_0
    return v3

    .line 1592
    .restart local v2    # "item":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_0
    sget-object v4, Lcom/android/launcher3/allapps/model/AppsModel;->TAG:Ljava/lang/String;

    const-string v5, "app is alreay exist in folder"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1596
    :cond_1
    sget-object v3, Lcom/android/launcher3/allapps/model/AppsModel;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "no app to add folder : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1599
    .end local v2    # "item":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public declared-synchronized addModelListener(Lcom/android/launcher3/allapps/model/AppsModel$ModelListener;)V
    .locals 5
    .param p1, "listener"    # Lcom/android/launcher3/allapps/model/AppsModel$ModelListener;

    .prologue
    .line 1055
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/launcher3/allapps/model/AppsModel;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1056
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1057
    .local v0, "duplicatedListener":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/allapps/model/AppsModel$ModelListener;>;"
    iget-object v2, p0, Lcom/android/launcher3/allapps/model/AppsModel;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/allapps/model/AppsModel$ModelListener;

    .line 1058
    .local v1, "l":Lcom/android/launcher3/allapps/model/AppsModel$ModelListener;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-ne v3, v4, :cond_0

    .line 1059
    sget-object v3, Lcom/android/launcher3/allapps/model/AppsModel;->TAG:Ljava/lang/String;

    const-string v4, "This class has old ModelListener, so we should remove the old ModelListener of this class"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1055
    .end local v0    # "duplicatedListener":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/allapps/model/AppsModel$ModelListener;>;"
    .end local v1    # "l":Lcom/android/launcher3/allapps/model/AppsModel$ModelListener;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 1064
    .restart local v0    # "duplicatedListener":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/allapps/model/AppsModel$ModelListener;>;"
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 1065
    sget-object v2, Lcom/android/launcher3/allapps/model/AppsModel;->TAG:Ljava/lang/String;

    const-string v3, "Remove old class"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    iget-object v2, p0, Lcom/android/launcher3/allapps/model/AppsModel;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 1067
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/allapps/model/AppsModel$ModelListener;

    .line 1068
    .restart local v1    # "l":Lcom/android/launcher3/allapps/model/AppsModel$ModelListener;
    invoke-interface {v1}, Lcom/android/launcher3/allapps/model/AppsModel$ModelListener;->terminate()V

    goto :goto_1

    .line 1072
    .end local v1    # "l":Lcom/android/launcher3/allapps/model/AppsModel$ModelListener;
    :cond_2
    sget-object v2, Lcom/android/launcher3/allapps/model/AppsModel;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Add new model listener : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    iget-object v2, p0, Lcom/android/launcher3/allapps/model/AppsModel;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1075
    .end local v0    # "duplicatedListener":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/allapps/model/AppsModel$ModelListener;>;"
    :cond_3
    monitor-exit p0

    return-void
.end method

.method public addOrUpdater([Ljava/lang/String;Ljava/util/HashMap;Lcom/android/launcher3/common/compat/UserHandleCompat;)V
    .locals 22
    .param p1, "packages"    # [Ljava/lang/String;
    .param p3, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;",
            "Lcom/android/launcher3/common/compat/UserHandleCompat;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1411
    .local p2, "addedOrUpdatedApps":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/content/ComponentName;Lcom/android/launcher3/common/base/item/IconInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/allapps/model/AppsModel;->mLoadTask:Lcom/android/launcher3/allapps/model/AppsModel$LoadTask;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/allapps/model/AppsModel;->mLoadTask:Lcom/android/launcher3/allapps/model/AppsModel$LoadTask;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/launcher3/allapps/model/AppsModel$LoadTask;->access$2300(Lcom/android/launcher3/allapps/model/AppsModel$LoadTask;)Z

    move-result v17

    if-nez v17, :cond_1

    .line 1412
    :cond_0
    sget-object v17, Lcom/android/launcher3/allapps/model/AppsModel;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "LoaderTask is in running, so this item will be added in loader task : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/allapps/model/AppsModel;->mLoadTask:Lcom/android/launcher3/allapps/model/AppsModel$LoadTask;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1413
    new-instance v15, Lcom/android/launcher3/allapps/model/AppsModel$PendingAddOrUpdateStruct;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v15, v0, v1, v2, v3}, Lcom/android/launcher3/allapps/model/AppsModel$PendingAddOrUpdateStruct;-><init>(Lcom/android/launcher3/allapps/model/AppsModel;[Ljava/lang/String;Ljava/util/HashMap;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    .line 1414
    .local v15, "pendingItem":Lcom/android/launcher3/allapps/model/AppsModel$PendingAddOrUpdateStruct;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/allapps/model/AppsModel;->mPendingUpdateList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1501
    .end local v15    # "pendingItem":Lcom/android/launcher3/allapps/model/AppsModel$PendingAddOrUpdateStruct;
    :goto_0
    return-void

    .line 1418
    :cond_1
    sget-object v17, Lcom/android/launcher3/allapps/model/AppsModel;->TAG:Ljava/lang/String;

    const-string v18, "addOrUpdater"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1422
    sget-object v18, Lcom/android/launcher3/allapps/model/AppsModel;->sBgLock:Ljava/lang/Object;

    monitor-enter v18

    .line 1423
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/allapps/model/AppsModel;->getAllAppItemInApps()Ljava/util/ArrayList;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    :cond_2
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_6

    .line 1424
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 1425
    .local v9, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    instance-of v0, v9, Lcom/android/launcher3/common/base/item/IconInfo;

    move/from16 v17, v0

    if-eqz v17, :cond_2

    iget-object v0, v9, Lcom/android/launcher3/common/base/item/ItemInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-object/from16 v17, v0

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 1426
    move-object v0, v9

    check-cast v0, Lcom/android/launcher3/common/base/item/IconInfo;

    move-object v8, v0

    .line 1427
    .local v8, "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    invoke-virtual {v8}, Lcom/android/launcher3/common/base/item/IconInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v7

    .line 1428
    .local v7, "cn":Landroid/content/ComponentName;
    if-eqz v7, :cond_2

    .line 1429
    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 1430
    .local v5, "appInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Lcom/android/launcher3/common/base/item/IconInfo;->isPromise()Z

    move-result v17

    if-eqz v17, :cond_5

    .line 1431
    sget-object v17, Lcom/android/launcher3/allapps/model/AppsModel;->sLauncherApps:Lcom/android/launcher3/common/compat/LauncherAppsCompat;

    .line 1432
    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Ljava/util/List;

    move-result-object v6

    .line 1433
    .local v6, "apps":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;>;"
    move-object/from16 v0, p3

    invoke-static {v6, v7, v0}, Lcom/android/launcher3/allapps/model/AppsModel;->findActivityInfo(Ljava/util/List;Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;

    move-result-object v4

    .line 1434
    .local v4, "activityInfo":Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    const/16 v17, 0x26

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Lcom/android/launcher3/common/base/item/IconInfo;->hasStatusFlag(I)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 1436
    sget-object v17, Lcom/android/launcher3/allapps/model/AppsModel;->sContext:Landroid/content/Context;

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v16

    .line 1437
    .local v16, "pm":Landroid/content/pm/PackageManager;
    new-instance v17, Landroid/content/Intent;

    const-string v19, "android.intent.action.MAIN"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1438
    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v17

    const-string v19, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v17

    const/high16 v19, 0x10000

    .line 1437
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v14

    .line 1440
    .local v14, "matched":Landroid/content/pm/ResolveInfo;
    if-nez v14, :cond_3

    .line 1442
    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    .line 1443
    .local v10, "intent":Landroid/content/Intent;
    if-eqz v10, :cond_3

    .line 1444
    iput-object v10, v8, Lcom/android/launcher3/common/base/item/IconInfo;->promisedIntent:Landroid/content/Intent;

    .line 1448
    .end local v10    # "intent":Landroid/content/Intent;
    :cond_3
    if-eqz v4, :cond_4

    .line 1449
    invoke-static {v4}, Lcom/android/launcher3/common/base/item/IconInfo;->initFlags(Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;)I

    move-result v17

    move/from16 v0, v17

    iput v0, v8, Lcom/android/launcher3/common/base/item/IconInfo;->flags:I

    .line 1450
    invoke-virtual {v4}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getFirstInstallTime()J

    move-result-wide v20

    move-wide/from16 v0, v20

    iput-wide v0, v8, Lcom/android/launcher3/common/base/item/IconInfo;->firstInstallTime:J

    .line 1453
    :cond_4
    iget-object v0, v8, Lcom/android/launcher3/common/base/item/IconInfo;->promisedIntent:Landroid/content/Intent;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v0, v8, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    .line 1454
    const/16 v17, 0x0

    move-object/from16 v0, v17

    iput-object v0, v8, Lcom/android/launcher3/common/base/item/IconInfo;->promisedIntent:Landroid/content/Intent;

    .line 1455
    const/16 v17, 0x0

    move/from16 v0, v17

    iput v0, v8, Lcom/android/launcher3/common/base/item/IconInfo;->status:I

    .line 1456
    sget-object v17, Lcom/android/launcher3/allapps/model/AppsModel;->sIconCache:Lcom/android/launcher3/common/model/IconCache;

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lcom/android/launcher3/common/base/item/IconInfo;->updateIcon(Lcom/android/launcher3/common/model/IconCache;)V

    .line 1460
    .end local v4    # "activityInfo":Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    .end local v6    # "apps":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;>;"
    .end local v14    # "matched":Landroid/content/pm/ResolveInfo;
    .end local v16    # "pm":Landroid/content/pm/PackageManager;
    :cond_5
    if-eqz v5, :cond_2

    .line 1461
    iget-object v0, v5, Lcom/android/launcher3/common/base/item/IconInfo;->contentDescription:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v0, v8, Lcom/android/launcher3/common/base/item/IconInfo;->contentDescription:Ljava/lang/CharSequence;

    goto/16 :goto_1

    .line 1466
    .end local v5    # "appInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v7    # "cn":Landroid/content/ComponentName;
    .end local v8    # "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v9    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v11    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    :catchall_0
    move-exception v17

    monitor-exit v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v17

    .restart local v11    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    :cond_6
    :try_start_1
    monitor-exit v18
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1468
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1469
    .local v12, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-virtual/range {p2 .. p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .line 1470
    .local v13, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ComponentName;>;"
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_a

    .line 1471
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 1472
    .restart local v7    # "cn":Landroid/content/ComponentName;
    sget-object v18, Lcom/android/launcher3/allapps/model/AppsModel;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "addOrUpdater cn = "

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v19, " , "

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/launcher3/common/base/item/IconInfo;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-object/from16 v17, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1473
    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/launcher3/common/base/item/IconInfo;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v7, v1, v2}, Lcom/android/launcher3/allapps/model/AppsModel;->getItemInfoInAppsForComponentName(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;Z)Lcom/android/launcher3/common/base/item/ItemInfo;

    move-result-object v9

    .line 1474
    .restart local v9    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    if-nez v9, :cond_8

    .line 1475
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/allapps/model/AppsModel;->mAllAppsComponentKey:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    new-instance v18, Lcom/android/launcher3/util/ComponentKey;

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-direct {v0, v7, v1}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 1476
    sget-object v17, Lcom/android/launcher3/allapps/model/AppsModel;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "This item will be added in loader task. so we skip : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1480
    :cond_7
    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    check-cast v9, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 1481
    .restart local v9    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    const-wide/16 v18, -0x66

    move-wide/from16 v0, v18

    iput-wide v0, v9, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    .line 1482
    const/16 v17, 0x1

    move/from16 v0, v17

    iput-boolean v0, v9, Lcom/android/launcher3/common/base/item/ItemInfo;->mDirty:Z

    .line 1483
    sget-object v17, Lcom/android/launcher3/allapps/model/AppsModel;->sFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher3/common/model/FavoritesProvider;->generateNewItemId()J

    move-result-wide v18

    move-wide/from16 v0, v18

    iput-wide v0, v9, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    .line 1484
    const-wide/16 v18, -0x1

    move-wide/from16 v0, v18

    iput-wide v0, v9, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    .line 1485
    const/16 v17, -0x1

    move/from16 v0, v17

    iput v0, v9, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    .line 1486
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/launcher3/allapps/model/AppsModel;->putItemToIdMap(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 1487
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/allapps/model/AppsModel;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lcom/android/launcher3/common/model/FavoritesUpdater;->addItem(Lcom/android/launcher3/common/base/item/ItemInfo;)J

    .line 1488
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/allapps/model/AppsModel;->updateAppsPostposition()V

    .line 1491
    :cond_8
    instance-of v0, v9, Lcom/android/launcher3/common/base/item/IconInfo;

    move/from16 v17, v0

    if-eqz v17, :cond_9

    move-object v8, v9

    .line 1492
    check-cast v8, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 1493
    .restart local v8    # "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    sget-object v17, Lcom/android/launcher3/allapps/model/AppsModel;->sIconCache:Lcom/android/launcher3/common/model/IconCache;

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lcom/android/launcher3/common/base/item/IconInfo;->updateIcon(Lcom/android/launcher3/common/model/IconCache;)V

    .line 1496
    .end local v8    # "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_9
    sget-object v17, Lcom/android/launcher3/allapps/model/AppsModel;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "addOrUpdater update item = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1497
    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 1500
    .end local v7    # "cn":Landroid/content/ComponentName;
    .end local v9    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_a
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/launcher3/allapps/model/AppsModel;->notifyUpdate(Ljava/util/ArrayList;)V

    goto/16 :goto_0
.end method

.method public addPagesItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 0
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 245
    return-void
.end method

.method public addViewAndUpdateItemInfoToDb(Ljava/util/ArrayList;ZZ)V
    .locals 0
    .param p2, "setHidden"    # Z
    .param p3, "isGameApp"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .line 1575
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    return-void
.end method

.method public bindItemsSync(ILcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V
    .locals 3
    .param p1, "synchronousBindPage"    # I
    .param p2, "task"    # Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/launcher3/allapps/model/AppsModel;->mLoadTask:Lcom/android/launcher3/allapps/model/AppsModel$LoadTask;

    if-nez v0, :cond_0

    .line 168
    new-instance v0, Lcom/android/launcher3/allapps/model/AppsModel$LoadTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/allapps/model/AppsModel$LoadTask;-><init>(Lcom/android/launcher3/allapps/model/AppsModel;Lcom/android/launcher3/allapps/model/AppsModel$1;)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/model/AppsModel;->mLoadTask:Lcom/android/launcher3/allapps/model/AppsModel$LoadTask;

    .line 169
    iget-object v0, p0, Lcom/android/launcher3/allapps/model/AppsModel;->mLoadTask:Lcom/android/launcher3/allapps/model/AppsModel$LoadTask;

    invoke-static {v0}, Lcom/android/launcher3/allapps/model/AppsModel$LoadTask;->access$200(Lcom/android/launcher3/allapps/model/AppsModel$LoadTask;)V

    .line 171
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/model/AppsModel;->updateLock(Z)V

    .line 172
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/model/AppsModel;->notifyLoadComplete(I)V

    .line 173
    sget-object v0, Lcom/android/launcher3/allapps/model/AppsModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindItemSync : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/allapps/model/AppsModel;->mLoadTask:Lcom/android/launcher3/allapps/model/AppsModel$LoadTask;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/model/AppsModel$LoadTask;->isStopped()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/allapps/model/AppsModel;->mPendingUpdateList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    return-void
.end method

.method public bindPageItems(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V
    .locals 0
    .param p3, "task"    # Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;",
            "Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;",
            ")V"
        }
    .end annotation

    .prologue
    .line 195
    .local p1, "pageItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .local p2, "deferredBindRunnables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Runnable;>;"
    return-void
.end method

.method public bindRemainedItems(Ljava/util/ArrayList;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V
    .locals 0
    .param p2, "task"    # Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;",
            "Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1520
    .local p1, "deferredBindRunnables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Runnable;>;"
    return-void
.end method

.method checkUpdate()V
    .locals 5

    .prologue
    .line 1667
    iget-object v1, p0, Lcom/android/launcher3/allapps/model/AppsModel;->mPendingUpdateList:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/allapps/model/AppsModel;->mPendingUpdateList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 1668
    sget-object v1, Lcom/android/launcher3/allapps/model/AppsModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkUpdate Pending update item count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/allapps/model/AppsModel;->mPendingUpdateList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1669
    iget-object v1, p0, Lcom/android/launcher3/allapps/model/AppsModel;->mPendingUpdateList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/model/AppsModel$PendingAddOrUpdateStruct;

    .line 1670
    .local v0, "pendingItem":Lcom/android/launcher3/allapps/model/AppsModel$PendingAddOrUpdateStruct;
    iget-object v2, v0, Lcom/android/launcher3/allapps/model/AppsModel$PendingAddOrUpdateStruct;->mPackages:[Ljava/lang/String;

    iget-object v3, v0, Lcom/android/launcher3/allapps/model/AppsModel$PendingAddOrUpdateStruct;->mAddedOrUpdatedApps:Ljava/util/HashMap;

    iget-object v4, v0, Lcom/android/launcher3/allapps/model/AppsModel$PendingAddOrUpdateStruct;->mUser:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/launcher3/allapps/model/AppsModel;->addOrUpdater([Ljava/lang/String;Ljava/util/HashMap;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    goto :goto_0

    .line 1673
    .end local v0    # "pendingItem":Lcom/android/launcher3/allapps/model/AppsModel$PendingAddOrUpdateStruct;
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/allapps/model/AppsModel;->mPendingUpdateList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1675
    :cond_1
    return-void
.end method

.method protected clearSBgDataStructures()V
    .locals 12

    .prologue
    .line 209
    iget-object v6, p0, Lcom/android/launcher3/allapps/model/AppsModel;->mAllAppsComponentKey:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 212
    sget-object v7, Lcom/android/launcher3/allapps/model/AppsModel;->sBgLock:Ljava/lang/Object;

    monitor-enter v7

    .line 215
    :try_start_0
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/model/AppsModel;->getAllAppItemInApps()Ljava/util/ArrayList;

    move-result-object v1

    .line 216
    .local v1, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 217
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 218
    .local v3, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    sget-object v8, Lcom/android/launcher3/allapps/model/AppsModel;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    iget-wide v10, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    invoke-virtual {v8, v10, v11}, Lcom/android/launcher3/util/LongArrayMap;->remove(J)V

    goto :goto_0

    .line 234
    .end local v1    # "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .end local v3    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 223
    .restart local v1    # "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 224
    .local v0, "appFolderIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    sget-object v6, Lcom/android/launcher3/allapps/model/AppsModel;->sBgFolders:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v6}, Lcom/android/launcher3/util/LongArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/folder/FolderInfo;

    .line 225
    .local v2, "f":Lcom/android/launcher3/folder/FolderInfo;
    invoke-virtual {v2}, Lcom/android/launcher3/folder/FolderInfo;->isContainApps()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 226
    iget-wide v8, v2, Lcom/android/launcher3/folder/FolderInfo;->id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 229
    .end local v2    # "f":Lcom/android/launcher3/folder/FolderInfo;
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_3

    .line 230
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 231
    .local v4, "id":J
    sget-object v6, Lcom/android/launcher3/allapps/model/AppsModel;->sBgFolders:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v6, v4, v5}, Lcom/android/launcher3/util/LongArrayMap;->remove(J)V

    goto :goto_2

    .line 234
    .end local v4    # "id":J
    :cond_3
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 235
    return-void
.end method

.method public containPagesItem(Lcom/android/launcher3/common/base/item/ItemInfo;)Z
    .locals 1
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 259
    const/4 v0, 0x0

    return v0
.end method

.method public createFolderAndAddItem(Lcom/android/launcher3/common/base/item/ItemInfo;Ljava/lang/String;Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;)J
    .locals 9
    .param p1, "appItem"    # Lcom/android/launcher3/common/base/item/ItemInfo;
    .param p2, "folderTitle"    # Ljava/lang/String;
    .param p3, "info"    # Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;

    .prologue
    const-wide/16 v4, -0x1

    .line 1616
    if-eqz p1, :cond_0

    .line 1618
    new-instance v1, Lcom/android/launcher3/folder/FolderInfo;

    invoke-direct {v1}, Lcom/android/launcher3/folder/FolderInfo;-><init>()V

    .line 1620
    .local v1, "fItem":Lcom/android/launcher3/folder/FolderInfo;
    :try_start_0
    invoke-static {}, Lcom/android/launcher3/common/model/FavoritesProvider;->getInstance()Lcom/android/launcher3/common/model/FavoritesProvider;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/common/model/FavoritesProvider;->generateNewItemId()J

    move-result-wide v6

    iput-wide v6, v1, Lcom/android/launcher3/folder/FolderInfo;->id:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1625
    :goto_0
    iput-object p2, v1, Lcom/android/launcher3/folder/FolderInfo;->title:Ljava/lang/CharSequence;

    .line 1634
    invoke-virtual {p3}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {p3}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getUser()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {p0, v6, v7, v8}, Lcom/android/launcher3/allapps/model/AppsModel;->getItemInfoInAppsForComponentName(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;Z)Lcom/android/launcher3/common/base/item/ItemInfo;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 1635
    .local v3, "newItem":Lcom/android/launcher3/common/base/item/IconInfo;
    if-nez v3, :cond_1

    .line 1648
    .end local v1    # "fItem":Lcom/android/launcher3/folder/FolderInfo;
    .end local v3    # "newItem":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_0
    :goto_1
    return-wide v4

    .line 1621
    .restart local v1    # "fItem":Lcom/android/launcher3/folder/FolderInfo;
    :catch_0
    move-exception v0

    .line 1622
    .local v0, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/android/launcher3/allapps/model/AppsModel;->TAG:Ljava/lang/String;

    const-string v7, "generate new item id for created folder is failed."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1623
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1639
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v3    # "newItem":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .local v2, "itemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    move-object v4, p1

    .line 1640
    check-cast v4, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1641
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1643
    invoke-virtual {p0, v1}, Lcom/android/launcher3/allapps/model/AppsModel;->putItemToIdMap(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 1644
    invoke-direct {p0, v1, p1, v2}, Lcom/android/launcher3/allapps/model/AppsModel;->createFolderAndAddItem(Lcom/android/launcher3/folder/FolderInfo;Lcom/android/launcher3/common/base/item/ItemInfo;Ljava/util/ArrayList;)V

    .line 1645
    sget-object v4, Lcom/android/launcher3/allapps/model/AppsModel;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createFolder() - fItem.id : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v1, Lcom/android/launcher3/folder/FolderInfo;->id:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1646
    iget-wide v4, v1, Lcom/android/launcher3/folder/FolderInfo;->id:J

    goto :goto_1
.end method

.method public deleteItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 1
    .param p1, "info"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 1378
    iget-object v0, p0, Lcom/android/launcher3/allapps/model/AppsModel;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/model/FavoritesUpdater;->deleteItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 1379
    return-void
.end method

.method public filterCurrentPageItems(JLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "currentScreenId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 200
    .local p3, "allItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .local p4, "currentScreenItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .local p5, "otherScreenItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    return-void
.end method

.method public findFolderById(Ljava/lang/Long;)Lcom/android/launcher3/folder/FolderInfo;
    .locals 4
    .param p1, "folderId"    # Ljava/lang/Long;

    .prologue
    .line 1283
    sget-object v1, Lcom/android/launcher3/allapps/model/AppsModel;->sBgLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1284
    :try_start_0
    sget-object v0, Lcom/android/launcher3/allapps/model/AppsModel;->sBgFolders:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/folder/FolderInfo;

    monitor-exit v1

    return-object v0

    .line 1285
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAllAppItemInApps()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const-wide/16 v8, -0x66

    .line 1260
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1261
    .local v0, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1263
    .local v1, "folderIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    sget-object v5, Lcom/android/launcher3/allapps/model/AppsModel;->sBgLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1264
    :try_start_0
    sget-object v4, Lcom/android/launcher3/allapps/model/AppsModel;->sBgFolders:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v4}, Lcom/android/launcher3/util/LongArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/folder/FolderInfo;

    .line 1265
    .local v2, "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    iget-wide v6, v2, Lcom/android/launcher3/folder/FolderInfo;->container:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    .line 1266
    iget-wide v6, v2, Lcom/android/launcher3/folder/FolderInfo;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1277
    .end local v2    # "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 1270
    :cond_1
    :try_start_1
    sget-object v4, Lcom/android/launcher3/allapps/model/AppsModel;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v4}, Lcom/android/launcher3/util/LongArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 1271
    .local v3, "itemInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget v6, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    if-nez v6, :cond_2

    iget-wide v6, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_3

    iget-wide v6, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    .line 1273
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1274
    :cond_3
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1277
    .end local v3    # "itemInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_4
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1279
    return-object v0
.end method

.method public declared-synchronized getDataVersion()J
    .locals 2

    .prologue
    .line 1038
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/android/launcher3/allapps/model/AppsModel;->mDataVersion:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected getDisabledExternalItemInfo(Landroid/database/Cursor;Landroid/content/ComponentName;Landroid/content/Intent;Lcom/android/launcher3/common/model/CursorInfo;)Lcom/android/launcher3/common/base/item/IconInfo;
    .locals 5
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "cn"    # Landroid/content/ComponentName;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "cursorItemInfo"    # Lcom/android/launcher3/common/model/CursorInfo;

    .prologue
    .line 916
    new-instance v1, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-direct {v1}, Lcom/android/launcher3/common/base/item/IconInfo;-><init>()V

    .line 918
    .local v1, "info":Lcom/android/launcher3/common/base/item/IconInfo;
    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v2

    iput-object v2, v1, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    .line 920
    sget-object v2, Lcom/android/launcher3/allapps/model/AppsModel;->sContext:Landroid/content/Context;

    invoke-static {v2, p3}, Lcom/android/launcher3/Utilities;->isSystemApp(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 921
    const/4 v2, 0x1

    iput v2, v1, Lcom/android/launcher3/common/base/item/IconInfo;->flags:I

    .line 925
    :cond_0
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/common/model/IconCache;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/common/model/IconCache;->getSDCardBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    sget-object v3, Lcom/android/launcher3/allapps/model/AppsModel;->sContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/android/launcher3/util/BitmapUtils;->createIconBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 926
    .local v0, "icon":Landroid/graphics/Bitmap;
    invoke-virtual {v1, v0}, Lcom/android/launcher3/common/base/item/IconInfo;->setIcon(Landroid/graphics/Bitmap;)V

    .line 929
    if-eqz p1, :cond_1

    .line 930
    iget v2, p4, Lcom/android/launcher3/common/model/CursorInfo;->titleIndex:I

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher3/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    .line 934
    :cond_1
    iget-object v2, v1, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    if-nez v2, :cond_2

    .line 935
    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    .line 938
    :cond_2
    iget-object v2, v1, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    if-nez v2, :cond_3

    .line 939
    const-string v2, ""

    iput-object v2, v1, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    .line 941
    :cond_3
    iput-object p3, v1, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    .line 942
    iput-object p2, v1, Lcom/android/launcher3/common/base/item/IconInfo;->componentName:Landroid/content/ComponentName;

    .line 943
    sget-object v2, Lcom/android/launcher3/allapps/model/AppsModel;->sUserManager:Lcom/android/launcher3/common/compat/UserManagerCompat;

    iget-object v3, v1, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    iget-object v4, v1, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getBadgedLabelForUser(Ljava/lang/CharSequence;Lcom/android/launcher3/common/compat/UserHandleCompat;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v1, Lcom/android/launcher3/common/base/item/IconInfo;->contentDescription:Ljava/lang/CharSequence;

    .line 945
    if-eqz p1, :cond_4

    .line 946
    iget v2, p4, Lcom/android/launcher3/common/model/CursorInfo;->itemTypeIndex:I

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcom/android/launcher3/common/base/item/IconInfo;->itemType:I

    .line 949
    :cond_4
    return-object v1
.end method

.method protected getDisabledItemInfo(Landroid/database/Cursor;Landroid/content/ComponentName;Landroid/content/Intent;Lcom/android/launcher3/common/model/CursorInfo;)Lcom/android/launcher3/common/base/item/IconInfo;
    .locals 5
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "cn"    # Landroid/content/ComponentName;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "cursorInfo"    # Lcom/android/launcher3/common/model/CursorInfo;

    .prologue
    .line 957
    new-instance v1, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-direct {v1}, Lcom/android/launcher3/common/base/item/IconInfo;-><init>()V

    .line 958
    .local v1, "info":Lcom/android/launcher3/common/base/item/IconInfo;
    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v2

    iput-object v2, v1, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    .line 959
    sget-object v2, Lcom/android/launcher3/allapps/model/AppsModel;->sContext:Landroid/content/Context;

    invoke-virtual {p4, p1, v1, v2}, Lcom/android/launcher3/common/model/CursorInfo;->loadIcon(Landroid/database/Cursor;Lcom/android/launcher3/common/base/item/IconInfo;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 961
    .local v0, "icon":Landroid/graphics/Bitmap;
    sget-object v2, Lcom/android/launcher3/allapps/model/AppsModel;->sContext:Landroid/content/Context;

    invoke-static {v2, p3}, Lcom/android/launcher3/Utilities;->isSystemApp(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 962
    const/4 v2, 0x1

    iput v2, v1, Lcom/android/launcher3/common/base/item/IconInfo;->flags:I

    .line 963
    sget-boolean v2, Lcom/android/launcher3/allapps/model/AppsModel;->sIsSafeMode:Z

    if-eqz v2, :cond_0

    .line 964
    iget v2, v1, Lcom/android/launcher3/common/base/item/IconInfo;->isDisabled:I

    or-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/launcher3/common/base/item/IconInfo;->isDisabled:I

    .line 969
    :cond_0
    if-nez v0, :cond_1

    .line 970
    sget-object v2, Lcom/android/launcher3/allapps/model/AppsModel;->sIconCache:Lcom/android/launcher3/common/model/IconCache;

    iget-object v3, v1, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    const/4 v4, 0x0

    invoke-virtual {v2, v1, p3, v3, v4}, Lcom/android/launcher3/common/model/IconCache;->getTitleAndIcon(Lcom/android/launcher3/common/base/item/IconInfo;Landroid/content/Intent;Lcom/android/launcher3/common/compat/UserHandleCompat;Z)V

    .line 975
    :goto_0
    iget v2, p4, Lcom/android/launcher3/common/model/CursorInfo;->titleIndex:I

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher3/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    .line 976
    const/4 v2, 0x2

    iput v2, v1, Lcom/android/launcher3/common/base/item/IconInfo;->isDisabled:I

    .line 977
    iput-object p3, v1, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    .line 978
    iput-object p2, v1, Lcom/android/launcher3/common/base/item/IconInfo;->componentName:Landroid/content/ComponentName;

    .line 979
    sget-object v2, Lcom/android/launcher3/allapps/model/AppsModel;->sUserManager:Lcom/android/launcher3/common/compat/UserManagerCompat;

    iget-object v3, v1, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    iget-object v4, v1, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getBadgedLabelForUser(Ljava/lang/CharSequence;Lcom/android/launcher3/common/compat/UserHandleCompat;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v1, Lcom/android/launcher3/common/base/item/IconInfo;->contentDescription:Ljava/lang/CharSequence;

    .line 980
    iget v2, p4, Lcom/android/launcher3/common/model/CursorInfo;->itemTypeIndex:I

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcom/android/launcher3/common/base/item/IconInfo;->itemType:I

    .line 982
    return-object v1

    .line 972
    :cond_1
    invoke-virtual {v1, v0}, Lcom/android/launcher3/common/base/item/IconInfo;->setIcon(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public getItemById(J)Lcom/android/launcher3/common/base/item/ItemInfo;
    .locals 3
    .param p1, "key"    # J

    .prologue
    .line 1289
    sget-object v1, Lcom/android/launcher3/allapps/model/AppsModel;->sBgLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1290
    :try_start_0
    sget-object v0, Lcom/android/launcher3/allapps/model/AppsModel;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    monitor-exit v1

    return-object v0

    .line 1291
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getItemInfoInAppsForComponentName(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;Z)Lcom/android/launcher3/common/base/item/ItemInfo;
    .locals 8
    .param p1, "cName"    # Landroid/content/ComponentName;
    .param p2, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;
    .param p3, "exceptWidget"    # Z

    .prologue
    .line 1296
    new-instance v1, Lcom/android/launcher3/allapps/model/AppsModel$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/launcher3/allapps/model/AppsModel$6;-><init>(Lcom/android/launcher3/allapps/model/AppsModel;Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    .line 1306
    .local v1, "filter":Lcom/android/launcher3/common/model/DataLoader$ItemInfoFilter;
    sget-object v4, Lcom/android/launcher3/allapps/model/AppsModel;->sBgLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1307
    :try_start_0
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/model/AppsModel;->getAllAppItemInApps()Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v3, v1, p3}, Lcom/android/launcher3/allapps/model/AppsModel;->filterItemInfo(Ljava/lang/Iterable;Lcom/android/launcher3/common/model/DataLoader$ItemInfoFilter;Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 1308
    .local v0, "appInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v5, 0x1

    if-le v3, v5, :cond_1

    .line 1309
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 1310
    .local v2, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    sget-object v5, Lcom/android/launcher3/allapps/model/AppsModel;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "duplicate app info : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1318
    .end local v0    # "appInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .end local v2    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1312
    .restart local v0    # "appInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    :cond_0
    :try_start_1
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v5, "Duplicated app icons in Apps"

    invoke-direct {v3, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1313
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1314
    const/4 v3, 0x0

    monitor-exit v4

    .line 1316
    :goto_1
    return-object v3

    :cond_2
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/base/item/ItemInfo;

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public getTopLevelItemsInApps()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1245
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1246
    .local v0, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    sget-object v3, Lcom/android/launcher3/allapps/model/AppsModel;->sBgLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1247
    :try_start_0
    sget-object v2, Lcom/android/launcher3/allapps/model/AppsModel;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v2}, Lcom/android/launcher3/util/LongArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 1248
    .local v1, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-wide v4, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v6, -0x66

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    iget v4, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->hidden:I

    if-nez v4, :cond_0

    .line 1249
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1252
    .end local v1    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1254
    return-object v0
.end method

.method protected getUpdater()Lcom/android/launcher3/common/model/DataUpdater;
    .locals 1

    .prologue
    .line 239
    const/4 v0, 0x0

    return-object v0
.end method

.method public hideApps(Ljava/util/ArrayList;Z)V
    .locals 7
    .param p2, "isGameApp"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    const/4 v6, -0x1

    .line 1527
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 1528
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1529
    .local v0, "contentValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 1530
    .local v1, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    if-eqz p2, :cond_0

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lcom/android/launcher3/common/base/item/ItemInfo;->setHidden(I)I

    move-result v3

    :goto_1
    iput v3, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->hidden:I

    .line 1532
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1533
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "container"

    const/16 v5, -0x66

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1534
    const-string v3, "hidden"

    iget v5, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->hidden:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1535
    const-string v3, "screen"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1536
    const-string v3, "rank"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1537
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1530
    .end local v2    # "values":Landroid/content/ContentValues;
    :cond_0
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/android/launcher3/common/base/item/ItemInfo;->setHidden(I)I

    move-result v3

    goto :goto_1

    .line 1540
    .end local v1    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_1
    iget-object v3, p0, Lcom/android/launcher3/allapps/model/AppsModel;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    sget-object v4, Lcom/android/launcher3/allapps/model/AppsModel;->sContext:Landroid/content/Context;

    invoke-virtual {v3, v4, v0, p1}, Lcom/android/launcher3/common/model/FavoritesUpdater;->updateItemsInDatabaseHelper(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1541
    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/model/AppsModel;->notifyUpdate(Ljava/util/ArrayList;)V

    .line 1543
    .end local v0    # "contentValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :cond_2
    return-void
.end method

.method public isUpdateLocked()Z
    .locals 1

    .prologue
    .line 1134
    iget-boolean v0, p0, Lcom/android/launcher3/allapps/model/AppsModel;->mUpdateLock:Z

    return v0
.end method

.method public loadDefaultLayout(Lcom/android/launcher3/common/model/AutoInstallsLayout;ZZ)V
    .locals 15
    .param p1, "autoInstallLayout"    # Lcom/android/launcher3/common/model/AutoInstallsLayout;
    .param p2, "isSwitchedDb"    # Z
    .param p3, "reloadPostPosition"    # Z

    .prologue
    .line 110
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez p3, :cond_1

    .line 111
    sget-object v2, Lcom/android/launcher3/allapps/model/AppsModel;->TAG:Ljava/lang/String;

    const-string v3, "current mode is home only mode. skip loadDefaultLayout"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    new-instance v1, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;

    sget-object v2, Lcom/android/launcher3/allapps/model/AppsModel;->sContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v7, Lcom/android/launcher3/allapps/model/AppsModel;->sContext:Landroid/content/Context;

    .line 114
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;-><init>(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/android/launcher3/common/model/DefaultLayoutParser$LayoutParserCallback;Landroid/content/res/Resources;I)V

    .line 116
    .local v1, "appsParser":Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 117
    .local v13, "tables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v2, "favorites"

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    sget-object v2, Lcom/android/launcher3/allapps/model/AppsModel;->sFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v13}, Lcom/android/launcher3/common/model/FavoritesProvider;->removeAndAddHiddenApp(Lcom/android/launcher3/common/model/DefaultLayoutParser;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 147
    .end local v13    # "tables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return-void

    .line 122
    .end local v1    # "appsParser":Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;
    :cond_1
    const/4 v1, 0x0

    .line 123
    .restart local v1    # "appsParser":Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;
    if-eqz p1, :cond_2

    .line 124
    sget-object v2, Lcom/android/launcher3/allapps/model/AppsModel;->TAG:Ljava/lang/String;

    const-string v3, "use auto install layout for apps"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/common/model/AutoInstallsLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 126
    .local v5, "res":Landroid/content/res/Resources;
    const-string v2, "default_application_order"

    const-string v3, "xml"

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/common/model/AutoInstallsLayout;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 128
    .local v6, "appOrderResId":I
    if-eqz v6, :cond_4

    .line 129
    new-instance v1, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;

    .end local v1    # "appsParser":Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;
    sget-object v2, Lcom/android/launcher3/allapps/model/AppsModel;->sContext:Landroid/content/Context;

    const/4 v3, 0x0

    sget-object v4, Lcom/android/launcher3/allapps/model/AppsModel;->sFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;-><init>(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/android/launcher3/common/model/DefaultLayoutParser$LayoutParserCallback;Landroid/content/res/Resources;I)V

    .line 135
    .end local v5    # "res":Landroid/content/res/Resources;
    .end local v6    # "appOrderResId":I
    .restart local v1    # "appsParser":Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;
    :cond_2
    :goto_1
    if-eqz v1, :cond_5

    const/4 v14, 0x1

    .line 136
    .local v14, "usingExternalProvidedLayout":Z
    :goto_2
    if-nez v1, :cond_3

    .line 137
    new-instance v1, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;

    .end local v1    # "appsParser":Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;
    sget-object v8, Lcom/android/launcher3/allapps/model/AppsModel;->sContext:Landroid/content/Context;

    const/4 v9, 0x0

    sget-object v10, Lcom/android/launcher3/allapps/model/AppsModel;->sFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    sget-object v2, Lcom/android/launcher3/allapps/model/AppsModel;->sContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const/4 v12, 0x0

    move-object v7, v1

    invoke-direct/range {v7 .. v12}, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;-><init>(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/android/launcher3/common/model/DefaultLayoutParser$LayoutParserCallback;Landroid/content/res/Resources;I)V

    .line 140
    .restart local v1    # "appsParser":Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;
    :cond_3
    move/from16 v0, p3

    invoke-virtual {v1, v0}, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->setReloadPostPosition(Z)V

    .line 141
    sget-object v2, Lcom/android/launcher3/allapps/model/AppsModel;->sFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/common/model/FavoritesProvider;->loadAppsFavorites(Lcom/android/launcher3/common/model/DefaultLayoutParser;)I

    move-result v2

    if-gez v2, :cond_0

    .line 142
    if-eqz v14, :cond_0

    .line 143
    new-instance v1, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;

    .end local v1    # "appsParser":Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;
    sget-object v8, Lcom/android/launcher3/allapps/model/AppsModel;->sContext:Landroid/content/Context;

    const/4 v9, 0x0

    sget-object v10, Lcom/android/launcher3/allapps/model/AppsModel;->sFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    sget-object v2, Lcom/android/launcher3/allapps/model/AppsModel;->sContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const/4 v12, 0x0

    move-object v7, v1

    invoke-direct/range {v7 .. v12}, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;-><init>(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/android/launcher3/common/model/DefaultLayoutParser$LayoutParserCallback;Landroid/content/res/Resources;I)V

    .line 144
    .restart local v1    # "appsParser":Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;
    sget-object v2, Lcom/android/launcher3/allapps/model/AppsModel;->sFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/common/model/FavoritesProvider;->loadAppsFavorites(Lcom/android/launcher3/common/model/DefaultLayoutParser;)I

    goto :goto_0

    .line 131
    .end local v14    # "usingExternalProvidedLayout":Z
    .restart local v5    # "res":Landroid/content/res/Resources;
    .restart local v6    # "appOrderResId":I
    :cond_4
    sget-object v2, Lcom/android/launcher3/allapps/model/AppsModel;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "default_application_order layout not found in package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/common/model/AutoInstallsLayout;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 135
    .end local v5    # "res":Landroid/content/res/Resources;
    .end local v6    # "appOrderResId":I
    :cond_5
    const/4 v14, 0x0

    goto :goto_2
.end method

.method protected loadPageItems(ILcom/android/launcher3/common/model/DataLoader$DataLoaderState;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "rank"    # I
    .param p2, "task"    # Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 189
    const/4 v0, 0x0

    return-object v0
.end method

.method public notifyDirty(Z)V
    .locals 2
    .param p1, "forceRefresh"    # Z

    .prologue
    .line 150
    sget-object v0, Lcom/android/launcher3/allapps/model/AppsModel;->TAG:Ljava/lang/String;

    const-string v1, "notifyDirty"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/model/AppsModel;->updateLock(Z)V

    .line 152
    iget-object v0, p0, Lcom/android/launcher3/allapps/model/AppsModel;->mLoadTask:Lcom/android/launcher3/allapps/model/AppsModel$LoadTask;

    if-nez v0, :cond_0

    .line 153
    new-instance v0, Lcom/android/launcher3/allapps/model/AppsModel$LoadTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/allapps/model/AppsModel$LoadTask;-><init>(Lcom/android/launcher3/allapps/model/AppsModel;Lcom/android/launcher3/allapps/model/AppsModel$1;)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/model/AppsModel;->mLoadTask:Lcom/android/launcher3/allapps/model/AppsModel$LoadTask;

    .line 154
    iget-object v0, p0, Lcom/android/launcher3/allapps/model/AppsModel;->mLoadTask:Lcom/android/launcher3/allapps/model/AppsModel$LoadTask;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/model/AppsModel$LoadTask;->start()V

    .line 158
    :goto_0
    return-void

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/model/AppsModel;->mLoadTask:Lcom/android/launcher3/allapps/model/AppsModel$LoadTask;

    invoke-static {v0}, Lcom/android/launcher3/allapps/model/AppsModel$LoadTask;->access$100(Lcom/android/launcher3/allapps/model/AppsModel$LoadTask;)V

    goto :goto_0
.end method

.method public onLauncherBindingItemsCompleted()V
    .locals 2

    .prologue
    .line 1678
    new-instance v0, Lcom/android/launcher3/allapps/model/AppsModel$7;

    invoke-direct {v0, p0}, Lcom/android/launcher3/allapps/model/AppsModel$7;-><init>(Lcom/android/launcher3/allapps/model/AppsModel;)V

    .line 1719
    .local v0, "runnable":Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/android/launcher3/allapps/model/AppsModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 1720
    sget-object v1, Lcom/android/launcher3/allapps/model/AppsModel;->sLauncherModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherModel;->onLauncherBindingItemsCompleted()V

    .line 1721
    return-void
.end method

.method protected putItemToIdMap(Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 3
    .param p1, "info"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 1019
    invoke-super {p0, p1}, Lcom/android/launcher3/common/model/DataLoader;->putItemToIdMap(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 1020
    instance-of v1, p1, Lcom/android/launcher3/folder/FolderInfo;

    if-nez v1, :cond_0

    .line 1021
    new-instance v0, Lcom/android/launcher3/util/ComponentKey;

    iget-object v1, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    iget-object v2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    .line 1022
    .local v0, "key":Lcom/android/launcher3/util/ComponentKey;
    iget-object v1, p0, Lcom/android/launcher3/allapps/model/AppsModel;->mAllAppsComponentKey:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1023
    iget-object v1, p0, Lcom/android/launcher3/allapps/model/AppsModel;->mAllAppsComponentKey:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1026
    .end local v0    # "key":Lcom/android/launcher3/util/ComponentKey;
    :cond_0
    return-void
.end method

.method public reloadPositionFromDB(Lcom/android/launcher3/common/base/item/ItemInfo;)Lcom/android/launcher3/common/base/item/ItemInfo;
    .locals 12
    .param p1, "iteminfo"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    const/4 v5, 0x0

    .line 1324
    new-instance v8, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-direct {v8}, Lcom/android/launcher3/common/base/item/ItemInfo;-><init>()V

    .line 1325
    .local v8, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    invoke-virtual {v8, p1}, Lcom/android/launcher3/common/base/item/ItemInfo;->copyFrom(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 1326
    sget-object v1, Lcom/android/launcher3/common/model/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    .line 1327
    .local v1, "contentUri":Landroid/net/Uri;
    const/4 v2, 0x0

    .line 1328
    .local v2, "projection":[Ljava/lang/String;
    const-string v3, "(_id=?)"

    .line 1329
    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-wide v10, v8, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v0

    .line 1331
    .local v4, "selectionArg":[Ljava/lang/String;
    sget-object v0, Lcom/android/launcher3/allapps/model/AppsModel;->sContentResolver:Landroid/content/ContentResolver;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1332
    .local v6, "c":Landroid/database/Cursor;
    if-nez v6, :cond_1

    move-object v8, v5

    .line 1354
    .end local v8    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_0
    :goto_0
    return-object v8

    .line 1336
    .restart local v8    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_2

    .line 1337
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1341
    :cond_2
    new-instance v7, Lcom/android/launcher3/common/model/CursorInfo;

    invoke-direct {v7, v6}, Lcom/android/launcher3/common/model/CursorInfo;-><init>(Landroid/database/Cursor;)V

    .line 1343
    .local v7, "cursorInfo":Lcom/android/launcher3/common/model/CursorInfo;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1344
    iget v0, v7, Lcom/android/launcher3/common/model/CursorInfo;->screenIndex:I

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v10, v0

    iput-wide v10, v8, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    .line 1345
    iget v0, v7, Lcom/android/launcher3/common/model/CursorInfo;->rankIndex:I

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v8, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    .line 1346
    iget v0, v7, Lcom/android/launcher3/common/model/CursorInfo;->cellXIndex:I

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v8, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    .line 1347
    iget v0, v7, Lcom/android/launcher3/common/model/CursorInfo;->cellYIndex:I

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v8, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1350
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1351
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1350
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_4

    .line 1351
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public removeCloneItem(Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V
    .locals 0
    .param p1, "task"    # Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;

    .prologue
    .line 1524
    return-void
.end method

.method public declared-synchronized removeModelListener(Lcom/android/launcher3/allapps/model/AppsModel$ModelListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/android/launcher3/allapps/model/AppsModel$ModelListener;

    .prologue
    .line 1078
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/model/AppsModel;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1079
    sget-object v0, Lcom/android/launcher3/allapps/model/AppsModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remove model listener : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    iget-object v0, p0, Lcom/android/launcher3/allapps/model/AppsModel;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1082
    :cond_0
    monitor-exit p0

    return-void

    .line 1078
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removePackagesAndComponents(Ljava/util/ArrayList;Lcom/android/launcher3/common/compat/UserHandleCompat;)V
    .locals 6
    .param p2, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;",
            "Lcom/android/launcher3/common/compat/UserHandleCompat;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1505
    .local p1, "removedApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 1506
    .local v0, "removedApp":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-object v3, p0, Lcom/android/launcher3/allapps/model/AppsModel;->mAllAppsComponentKey:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/launcher3/util/ComponentKey;

    iget-object v5, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    invoke-direct {v4, v5, p2}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    .line 1507
    .local v1, "result":Z
    if-eqz v1, :cond_0

    .line 1508
    sget-object v3, Lcom/android/launcher3/allapps/model/AppsModel;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removed in mAllAppsComponentKey : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1510
    :cond_0
    sget-object v3, Lcom/android/launcher3/allapps/model/AppsModel;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "This app is already removed in mAllAppsComponentKey : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1514
    .end local v0    # "removedApp":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v1    # "result":Z
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/model/AppsModel;->notifyUpdate(Ljava/util/ArrayList;)V

    .line 1515
    return-void
.end method

.method public removePagesItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 0
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 250
    return-void
.end method

.method public removeUnRestoredItems(Z)V
    .locals 4
    .param p1, "itemLoaded"    # Z

    .prologue
    .line 269
    new-instance v0, Lcom/android/launcher3/allapps/model/AppsModel$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/allapps/model/AppsModel$1;-><init>(Lcom/android/launcher3/allapps/model/AppsModel;)V

    .line 284
    .local v0, "r":Ljava/lang/Runnable;
    sget-object v1, Lcom/android/launcher3/allapps/model/AppsModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeUnRestoredItems "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    if-eqz p1, :cond_0

    .line 286
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 292
    :goto_0
    return-void

    .line 290
    :cond_0
    sget-object v1, Lcom/android/launcher3/allapps/model/AppsModel;->sWorkerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setLoaderTaskStop(Z)V
    .locals 3
    .param p1, "isStopped"    # Z

    .prologue
    .line 1120
    if-eqz p1, :cond_0

    .line 1121
    sget-object v0, Lcom/android/launcher3/allapps/model/AppsModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLoaderTaskStop oldTask="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/allapps/model/AppsModel;->mLoadTask:Lcom/android/launcher3/allapps/model/AppsModel$LoadTask;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    iget-object v0, p0, Lcom/android/launcher3/allapps/model/AppsModel;->mLoadTask:Lcom/android/launcher3/allapps/model/AppsModel$LoadTask;

    if-eqz v0, :cond_0

    .line 1123
    iget-object v0, p0, Lcom/android/launcher3/allapps/model/AppsModel;->mLoadTask:Lcom/android/launcher3/allapps/model/AppsModel$LoadTask;

    invoke-static {v0}, Lcom/android/launcher3/allapps/model/AppsModel$LoadTask;->access$1300(Lcom/android/launcher3/allapps/model/AppsModel$LoadTask;)V

    .line 1124
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/allapps/model/AppsModel;->mLoadTask:Lcom/android/launcher3/allapps/model/AppsModel$LoadTask;

    .line 1127
    :cond_0
    return-void
.end method

.method public setOrderedScreen(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 265
    .local p1, "screen":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    return-void
.end method

.method public setPackageState(Lcom/android/launcher3/common/compat/PackageInstallerCompat$PackageInstallInfo;)V
    .locals 2
    .param p1, "installInfo"    # Lcom/android/launcher3/common/compat/PackageInstallerCompat$PackageInstallInfo;

    .prologue
    .line 347
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/android/launcher3/common/compat/PackageInstallerCompat$PackageInstallInfo;->packageName:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 386
    :cond_0
    :goto_0
    return-void

    .line 351
    :cond_1
    new-instance v0, Lcom/android/launcher3/allapps/model/AppsModel$2;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/allapps/model/AppsModel$2;-><init>(Lcom/android/launcher3/allapps/model/AppsModel;Lcom/android/launcher3/common/compat/PackageInstallerCompat$PackageInstallInfo;)V

    .line 385
    .local v0, "updateRunnable":Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/android/launcher3/allapps/model/AppsModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setup(Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V
    .locals 3
    .param p1, "task"    # Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;

    .prologue
    .line 178
    invoke-direct {p0}, Lcom/android/launcher3/allapps/model/AppsModel;->removeAllItems()V

    .line 179
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/model/AppsModel;->clearSBgDataStructures()V

    .line 181
    sget-object v0, Lcom/android/launcher3/allapps/model/AppsModel;->sContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 182
    invoke-static {}, Lcom/android/launcher3/Utilities;->isBootCompleted()Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher3/allapps/model/AppsModel;->mIsBootCompleted:Z

    .line 183
    sget-object v0, Lcom/android/launcher3/allapps/model/AppsModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setup mIsBootCompleted = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/launcher3/allapps/model/AppsModel;->mIsBootCompleted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_0
    return-void
.end method

.method public showApps(Ljava/util/ArrayList;Z)V
    .locals 8
    .param p2, "isGameApp"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1546
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 1547
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1548
    .local v0, "contentValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 1549
    .local v1, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    if-eqz p2, :cond_0

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lcom/android/launcher3/common/base/item/ItemInfo;->setUnHidden(I)I

    move-result v3

    :goto_1
    iput v3, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->hidden:I

    .line 1550
    const/4 v3, -0x1

    iput v3, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    .line 1551
    const-wide/16 v6, -0x1

    iput-wide v6, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    .line 1552
    const-wide/16 v6, -0x66

    iput-wide v6, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    .line 1553
    invoke-virtual {p0, v1}, Lcom/android/launcher3/allapps/model/AppsModel;->putItemToIdMap(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 1555
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1556
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "hidden"

    iget v5, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->hidden:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1557
    const-string v3, "screen"

    iget-wide v6, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1558
    const-string v3, "rank"

    iget v5, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1559
    const-string v3, "container"

    iget-wide v6, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1560
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1549
    .end local v2    # "values":Landroid/content/ContentValues;
    :cond_0
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/android/launcher3/common/base/item/ItemInfo;->setUnHidden(I)I

    move-result v3

    goto :goto_1

    .line 1563
    .end local v1    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_1
    iget-object v3, p0, Lcom/android/launcher3/allapps/model/AppsModel;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    sget-object v4, Lcom/android/launcher3/allapps/model/AppsModel;->sContext:Landroid/content/Context;

    invoke-virtual {v3, v4, v0, p1}, Lcom/android/launcher3/common/model/FavoritesUpdater;->updateItemsInDatabaseHelper(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1564
    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/model/AppsModel;->notifyUpdate(Ljava/util/ArrayList;)V

    .line 1566
    .end local v0    # "contentValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :cond_2
    return-void
.end method

.method public declared-synchronized titleUpdate()V
    .locals 4

    .prologue
    .line 340
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/model/AppsModel;->getAllAppItemInApps()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/launcher3/allapps/model/AppsModel;->getNeedTitleUpdateIcons(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    .line 341
    .local v1, "needUpdateItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    iget-object v2, p0, Lcom/android/launcher3/allapps/model/AppsModel;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/model/AppsModel$ModelListener;

    .line 342
    .local v0, "listener":Lcom/android/launcher3/allapps/model/AppsModel$ModelListener;
    invoke-interface {v0, v1}, Lcom/android/launcher3/allapps/model/AppsModel$ModelListener;->updateIconAndTitle(Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 340
    .end local v0    # "listener":Lcom/android/launcher3/allapps/model/AppsModel$ModelListener;
    .end local v1    # "needUpdateItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 344
    .restart local v1    # "needUpdateItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public unbindItemsOnMainThread()V
    .locals 0

    .prologue
    .line 205
    return-void
.end method

.method public updateIconsAndLabels(Ljava/util/HashSet;Lcom/android/launcher3/common/compat/UserHandleCompat;)V
    .locals 10
    .param p2, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/launcher3/common/compat/UserHandleCompat;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1386
    .local p1, "packages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1387
    .local v4, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/model/AppsModel;->getAllAppItemInApps()Ljava/util/ArrayList;

    move-result-object v0

    .line 1388
    .local v0, "allItemsInApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/base/item/ItemInfo;

    .local v3, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    move-object v2, v3

    .line 1389
    check-cast v2, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 1390
    .local v2, "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    invoke-virtual {v2}, Lcom/android/launcher3/common/base/item/IconInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 1391
    .local v1, "componentName":Landroid/content/ComponentName;
    if-nez v1, :cond_1

    .line 1392
    sget-object v7, Lcom/android/launcher3/allapps/model/AppsModel;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateIconsAndLabels componentName is not exist : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1394
    :cond_1
    if-eqz v1, :cond_0

    iget-object v7, v2, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {v7, p2}, Lcom/android/launcher3/common/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1395
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1396
    sget-object v7, Lcom/android/launcher3/allapps/model/AppsModel;->sIconCache:Lcom/android/launcher3/common/model/IconCache;

    invoke-virtual {v7, v2}, Lcom/android/launcher3/common/model/IconCache;->updateTitleAndIcon(Lcom/android/launcher3/common/base/item/IconInfo;)V

    .line 1397
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1401
    .end local v1    # "componentName":Landroid/content/ComponentName;
    .end local v2    # "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v3    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_2
    iget-object v6, p0, Lcom/android/launcher3/allapps/model/AppsModel;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/allapps/model/AppsModel$ModelListener;

    .line 1402
    .local v5, "listener":Lcom/android/launcher3/allapps/model/AppsModel$ModelListener;
    invoke-interface {v5, v4}, Lcom/android/launcher3/allapps/model/AppsModel$ModelListener;->updateIconAndTitle(Ljava/util/ArrayList;)V

    goto :goto_1

    .line 1405
    .end local v5    # "listener":Lcom/android/launcher3/allapps/model/AppsModel$ModelListener;
    :cond_3
    return-void
.end method

.method public updateItem(Landroid/content/ContentValues;Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 1
    .param p1, "value"    # Landroid/content/ContentValues;
    .param p2, "info"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 1368
    iget-object v0, p0, Lcom/android/launcher3/allapps/model/AppsModel;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/common/model/FavoritesUpdater;->updateItem(Landroid/content/ContentValues;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 1369
    return-void
.end method

.method public updateItemsInDatabaseHelper(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1373
    .local p2, "valueList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .local p3, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/model/AppsModel;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/launcher3/common/model/FavoritesUpdater;->updateItemsInDatabaseHelper(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1374
    return-void
.end method

.method public updateItemsOnlyDB(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1570
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    return-void
.end method

.method public updateLock(Z)V
    .locals 0
    .param p1, "updateLock"    # Z

    .prologue
    .line 1130
    iput-boolean p1, p0, Lcom/android/launcher3/allapps/model/AppsModel;->mUpdateLock:Z

    .line 1131
    return-void
.end method

.method public updatePackageFlags(Lcom/android/launcher3/util/StringFilter;Lcom/android/launcher3/common/compat/UserHandleCompat;Lcom/android/launcher3/util/FlagOp;)V
    .locals 10
    .param p1, "pkgFilter"    # Lcom/android/launcher3/util/StringFilter;
    .param p2, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;
    .param p3, "flagOp"    # Lcom/android/launcher3/util/FlagOp;

    .prologue
    .line 296
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 298
    .local v5, "updatedIcons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    const-string v6, ""

    invoke-virtual {p1, v6}, Lcom/android/launcher3/util/StringFilter;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 299
    iget-object v7, p0, Lcom/android/launcher3/allapps/model/AppsModel;->mQuietModeUsers:Landroid/util/LongSparseArray;

    sget-object v6, Lcom/android/launcher3/allapps/model/AppsModel;->sUserManager:Lcom/android/launcher3/common/compat/UserManagerCompat;

    invoke-virtual {v6, p2}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher3/common/compat/UserHandleCompat;)J

    move-result-wide v8

    const/16 v6, 0x8

    .line 300
    invoke-virtual {p3, v6}, Lcom/android/launcher3/util/FlagOp;->apply(I)I

    move-result v6

    if-lez v6, :cond_2

    const/4 v6, 0x1

    :goto_0
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 299
    invoke-virtual {v7, v8, v9, v6}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 302
    :cond_0
    sget-object v7, Lcom/android/launcher3/allapps/model/AppsModel;->sBgLock:Ljava/lang/Object;

    monitor-enter v7

    .line 303
    :try_start_0
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/model/AppsModel;->getAllAppItemInApps()Ljava/util/ArrayList;

    move-result-object v2

    .line 304
    .local v2, "allAppItemInApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 305
    .local v4, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    instance-of v8, v4, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v8, :cond_1

    .line 306
    move-object v0, v4

    check-cast v0, Lcom/android/launcher3/common/base/item/IconInfo;

    move-object v3, v0

    .line 307
    .local v3, "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    iget-object v8, v3, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {v8, p2}, Lcom/android/launcher3/common/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, v3, Lcom/android/launcher3/common/base/item/IconInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v8, :cond_1

    iget-object v8, v3, Lcom/android/launcher3/common/base/item/IconInfo;->componentName:Landroid/content/ComponentName;

    .line 308
    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Lcom/android/launcher3/util/StringFilter;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 309
    iget v8, v3, Lcom/android/launcher3/common/base/item/IconInfo;->isDisabled:I

    invoke-virtual {p3, v8}, Lcom/android/launcher3/util/FlagOp;->apply(I)I

    move-result v8

    iput v8, v3, Lcom/android/launcher3/common/base/item/IconInfo;->isDisabled:I

    .line 310
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 314
    .end local v2    # "allAppItemInApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .end local v3    # "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v4    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 300
    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    .line 314
    .restart local v2    # "allAppItemInApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    :cond_3
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 315
    invoke-direct {p0, v5}, Lcom/android/launcher3/allapps/model/AppsModel;->notifyUpdate(Ljava/util/ArrayList;)V

    .line 316
    return-void
.end method

.method public updatePagesItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 0
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 255
    return-void
.end method

.method public updateSessionDisplayInfo(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 392
    if-nez p1, :cond_0

    .line 426
    :goto_0
    return-void

    .line 396
    :cond_0
    new-instance v0, Lcom/android/launcher3/allapps/model/AppsModel$3;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/allapps/model/AppsModel$3;-><init>(Lcom/android/launcher3/allapps/model/AppsModel;Ljava/lang/String;)V

    .line 425
    .local v0, "updateRunnable":Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/android/launcher3/allapps/model/AppsModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public updateUnavailablePackage(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;I)V
    .locals 9
    .param p1, "disabledPackages"    # Ljava/lang/String;
    .param p2, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;
    .param p3, "reason"    # I

    .prologue
    .line 320
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/model/AppsModel;->getAllAppItemInApps()Ljava/util/ArrayList;

    move-result-object v3

    .line 321
    .local v3, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 322
    .local v4, "unavailable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 323
    .local v2, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    instance-of v6, v2, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v6, :cond_0

    move-object v1, v2

    .line 324
    check-cast v1, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 325
    .local v1, "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/item/IconInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 326
    .local v0, "cn":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 327
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/item/IconInfo;->getUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v6

    invoke-virtual {p2, v6}, Lcom/android/launcher3/common/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 328
    iget v6, v1, Lcom/android/launcher3/common/base/item/IconInfo;->isDisabled:I

    or-int/2addr v6, p3

    iput v6, v1, Lcom/android/launcher3/common/base/item/IconInfo;->isDisabled:I

    .line 329
    sget-object v6, Lcom/android/launcher3/allapps/model/AppsModel;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateUnavailablePackage unavailable = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 335
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v1    # "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v2    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_1
    invoke-direct {p0, v4}, Lcom/android/launcher3/allapps/model/AppsModel;->notifyUpdate(Ljava/util/ArrayList;)V

    .line 336
    return-void
.end method
