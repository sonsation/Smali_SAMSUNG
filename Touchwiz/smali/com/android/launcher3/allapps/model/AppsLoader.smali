.class public Lcom/android/launcher3/allapps/model/AppsLoader;
.super Lcom/android/launcher3/common/model/DataLoader;
.source "AppsLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;
    }
.end annotation


# static fields
.field private static final INVALID_SCREEN_ID:J = -0x1L

.field private static final ITEMS_CHUNK:I = 0x2

.field private static final TAG:Ljava/lang/String; = "AppsLoader"

.field private static mCellCountX:I

.field private static final mNormalizeLock:Ljava/lang/Object;

.field public static sCollator:Ljava/text/Collator;


# instance fields
.field private final DEBUG_LOADERS:Z

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

.field private mBgDuplicateCheckList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/util/ComponentKey;",
            ">;"
        }
    .end annotation
.end field

.field private mCallbacks:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field private mIsFirstBind:Z

.field private final mLock:Ljava/lang/Object;

.field private mMaxItemsPerPage:I

.field private mNormalizer:Lcom/android/launcher3/allapps/controller/Normalizer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/allapps/controller/Normalizer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mTotalPageNumber:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 95
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/launcher3/allapps/model/AppsLoader;->mNormalizeLock:Ljava/lang/Object;

    .line 102
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/allapps/model/AppsLoader;->sCollator:Ljava/text/Collator;

    .line 110
    const/4 v0, 0x4

    sput v0, Lcom/android/launcher3/allapps/model/AppsLoader;->mCellCountX:I

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
    .line 150
    invoke-direct {p0}, Lcom/android/launcher3/common/model/DataLoader;-><init>()V

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->DEBUG_LOADERS:Z

    .line 94
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->mLock:Ljava/lang/Object;

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->mBgDuplicateCheckList:Ljava/util/ArrayList;

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->mAllAppsComponentKey:Ljava/util/ArrayList;

    .line 109
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->mMaxItemsPerPage:I

    .line 118
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->mIsFirstBind:Z

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p0

    .line 151
    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/allapps/model/AppsLoader;->init(Landroid/content/Context;Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/LauncherModel;Lcom/android/launcher3/common/model/IconCache;Lcom/android/launcher3/common/model/BadgeCache;Lcom/android/launcher3/common/model/DataLoader;)V

    .line 152
    new-instance v0, Lcom/android/launcher3/common/model/FavoritesUpdater;

    invoke-direct {v0, p1, p3, p4, p0}, Lcom/android/launcher3/common/model/FavoritesUpdater;-><init>(Landroid/content/Context;Lcom/android/launcher3/LauncherModel;Lcom/android/launcher3/common/model/IconCache;Lcom/android/launcher3/common/model/DataLoader;)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    .line 153
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/allapps/model/AppsLoader;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/model/AppsLoader;

    .prologue
    .line 89
    iget v0, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->mTotalPageNumber:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/launcher3/allapps/model/AppsLoader;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/allapps/model/AppsLoader;
    .param p1, "x1"    # I

    .prologue
    .line 89
    iput p1, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->mTotalPageNumber:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/launcher3/allapps/model/AppsLoader;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/model/AppsLoader;

    .prologue
    .line 89
    iget v0, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->mMaxItemsPerPage:I

    return v0
.end method

.method static synthetic access$1000()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/android/launcher3/allapps/model/AppsLoader;->sBindCompleteRunnables:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1100(Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/Runnable;

    .prologue
    .line 89
    invoke-static {p0}, Lcom/android/launcher3/allapps/model/AppsLoader;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/launcher3/allapps/model/AppsLoader;Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/model/AppsLoader;
    .param p1, "x1"    # Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;
    .param p2, "x2"    # Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/allapps/model/AppsLoader;->tryGetCallbacks(Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/launcher3/allapps/model/AppsLoader;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/model/AppsLoader;
    .param p1, "x1"    # Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;

    .prologue
    .line 89
    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/model/AppsLoader;->isStopped(Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400()Z
    .locals 1

    .prologue
    .line 89
    sget-boolean v0, Lcom/android/launcher3/allapps/model/AppsLoader;->mIsBootCompleted:Z

    return v0
.end method

.method static synthetic access$1500()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/android/launcher3/allapps/model/AppsLoader;->sPendingPackages:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1600()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/android/launcher3/allapps/model/AppsLoader;->sWorkerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1700()Landroid/content/Context;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/android/launcher3/allapps/model/AppsLoader;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1800()Lcom/android/launcher3/LauncherModel;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/android/launcher3/allapps/model/AppsLoader;->sLauncherModel:Lcom/android/launcher3/LauncherModel;

    return-object v0
.end method

.method static synthetic access$1900()Lcom/android/launcher3/LauncherModel;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/android/launcher3/allapps/model/AppsLoader;->sLauncherModel:Lcom/android/launcher3/LauncherModel;

    return-object v0
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 89
    sget v0, Lcom/android/launcher3/allapps/model/AppsLoader;->mCellCountX:I

    return v0
.end method

.method static synthetic access$2000()Lcom/android/launcher3/LauncherModel;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/android/launcher3/allapps/model/AppsLoader;->sLauncherModel:Lcom/android/launcher3/LauncherModel;

    return-object v0
.end method

.method static synthetic access$2100()Landroid/content/Context;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/android/launcher3/allapps/model/AppsLoader;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/launcher3/allapps/model/AppsLoader;)Lcom/android/launcher3/common/model/FavoritesUpdater;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/model/AppsLoader;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/launcher3/allapps/model/AppsLoader;)Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/model/AppsLoader;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/launcher3/allapps/model/AppsLoader;->getCallback()Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2400()Lcom/android/launcher3/LauncherModel;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/android/launcher3/allapps/model/AppsLoader;->sLauncherModel:Lcom/android/launcher3/LauncherModel;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/launcher3/allapps/model/AppsLoader;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/allapps/model/AppsLoader;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/model/AppsLoader;->runOrAddDifferRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$2600()Lcom/android/launcher3/LauncherModel;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/android/launcher3/allapps/model/AppsLoader;->sLauncherModel:Lcom/android/launcher3/LauncherModel;

    return-object v0
.end method

.method static synthetic access$2700()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/android/launcher3/allapps/model/AppsLoader;->sBgLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2800()Lcom/android/launcher3/util/LongArrayMap;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/android/launcher3/allapps/model/AppsLoader;->sBgFolders:Lcom/android/launcher3/util/LongArrayMap;

    return-object v0
.end method

.method static synthetic access$2900()Landroid/content/Context;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/android/launcher3/allapps/model/AppsLoader;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/launcher3/allapps/model/AppsLoader;)Lcom/android/launcher3/common/model/FavoritesUpdater;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/model/AppsLoader;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/launcher3/allapps/model/AppsLoader;[Z)[Z
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/allapps/model/AppsLoader;
    .param p1, "x1"    # [Z

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->mIsPageLoaded:[Z

    return-object p1
.end method

.method static synthetic access$3100()Lcom/android/launcher3/LauncherModel;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/android/launcher3/allapps/model/AppsLoader;->sLauncherModel:Lcom/android/launcher3/LauncherModel;

    return-object v0
.end method

.method static synthetic access$3200()Landroid/content/Context;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/android/launcher3/allapps/model/AppsLoader;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/launcher3/allapps/model/AppsLoader;)Lcom/android/launcher3/common/model/FavoritesUpdater;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/model/AppsLoader;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/launcher3/allapps/model/AppsLoader;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/model/AppsLoader;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 89
    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/model/AppsLoader;->getUnRestoredItems(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/launcher3/allapps/model/AppsLoader;)Lcom/android/launcher3/common/model/FavoritesUpdater;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/model/AppsLoader;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    return-object v0
.end method

.method static synthetic access$3600()Lcom/android/launcher3/LauncherModel;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/android/launcher3/allapps/model/AppsLoader;->sLauncherModel:Lcom/android/launcher3/LauncherModel;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/launcher3/allapps/model/AppsLoader;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/allapps/model/AppsLoader;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 89
    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/model/AppsLoader;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$3800()Lcom/android/launcher3/LauncherModel;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/android/launcher3/allapps/model/AppsLoader;->sLauncherModel:Lcom/android/launcher3/LauncherModel;

    return-object v0
.end method

.method static synthetic access$3900()Lcom/android/launcher3/LauncherModel;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/android/launcher3/allapps/model/AppsLoader;->sLauncherModel:Lcom/android/launcher3/LauncherModel;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/launcher3/allapps/model/AppsLoader;)[Z
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/model/AppsLoader;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->mIsPageLoaded:[Z

    return-object v0
.end method

.method static synthetic access$4000()Lcom/android/launcher3/LauncherModel;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/android/launcher3/allapps/model/AppsLoader;->sLauncherModel:Lcom/android/launcher3/LauncherModel;

    return-object v0
.end method

.method static synthetic access$4100()Lcom/android/launcher3/LauncherModel;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/android/launcher3/allapps/model/AppsLoader;->sLauncherModel:Lcom/android/launcher3/LauncherModel;

    return-object v0
.end method

.method static synthetic access$4200()Lcom/android/launcher3/LauncherModel;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/android/launcher3/allapps/model/AppsLoader;->sLauncherModel:Lcom/android/launcher3/LauncherModel;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/launcher3/allapps/model/AppsLoader;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/model/AppsLoader;
    .param p1, "x1"    # Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;

    .prologue
    .line 89
    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/model/AppsLoader;->isStopped(Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/launcher3/allapps/model/AppsLoader;)[Z
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/model/AppsLoader;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->mIsPageLoaded:[Z

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/launcher3/allapps/model/AppsLoader;)[Z
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/model/AppsLoader;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->mIsPageLoaded:[Z

    return-object v0
.end method

.method static synthetic access$800()Z
    .locals 1

    .prologue
    .line 89
    sget-boolean v0, Lcom/android/launcher3/allapps/model/AppsLoader;->sIsLoadingAndBindingWorkspace:Z

    return v0
.end method

.method static synthetic access$900()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/android/launcher3/allapps/model/AppsLoader;->sBindCompleteRunnables:Ljava/util/ArrayList;

    return-object v0
.end method

.method private appFolderInfoClear()V
    .locals 8

    .prologue
    .line 824
    sget-object v5, Lcom/android/launcher3/allapps/model/AppsLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v5

    .line 825
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 826
    .local v0, "appFolderIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    sget-object v4, Lcom/android/launcher3/allapps/model/AppsLoader;->sBgFolders:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v4}, Lcom/android/launcher3/util/LongArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/folder/FolderInfo;

    .line 827
    .local v1, "f":Lcom/android/launcher3/folder/FolderInfo;
    invoke-virtual {v1}, Lcom/android/launcher3/folder/FolderInfo;->isContainApps()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 828
    iget-wide v6, v1, Lcom/android/launcher3/folder/FolderInfo;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 837
    .end local v0    # "appFolderIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v1    # "f":Lcom/android/launcher3/folder/FolderInfo;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 832
    .restart local v0    # "appFolderIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 833
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 834
    .local v2, "id":J
    sget-object v4, Lcom/android/launcher3/allapps/model/AppsLoader;->sBgFolders:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v4, v2, v3}, Lcom/android/launcher3/util/LongArrayMap;->remove(J)V

    goto :goto_1

    .line 837
    .end local v2    # "id":J
    :cond_2
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 838
    return-void
.end method

.method private createAppInfoIfNecessary(Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;Lcom/android/launcher3/common/compat/UserHandleCompat;)Lcom/android/launcher3/common/base/item/IconInfo;
    .locals 6
    .param p1, "info"    # Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    .param p2, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;

    .prologue
    .line 1232
    const/4 v1, 0x0

    .line 1233
    .local v1, "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    invoke-virtual {p1}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 1234
    .local v0, "cn":Landroid/content/ComponentName;
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getCloneItemEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->mBgDuplicateCheckList:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/launcher3/util/ComponentKey;

    invoke-direct {v3, v0, p2}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    .line 1235
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1237
    const-string v2, "AppsLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is exist in home. skip create app info"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1239
    const/4 v2, 0x0

    .line 1251
    :goto_0
    return-object v2

    .line 1241
    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->mAllAppsComponentKey:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/launcher3/util/ComponentKey;

    invoke-direct {v3, v0, p2}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1242
    new-instance v1, Lcom/android/launcher3/common/base/item/IconInfo;

    .end local v1    # "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    sget-object v2, Lcom/android/launcher3/allapps/model/AppsLoader;->sContext:Landroid/content/Context;

    sget-object v3, Lcom/android/launcher3/allapps/model/AppsLoader;->sIconCache:Lcom/android/launcher3/common/model/IconCache;

    invoke-direct {v1, v2, p1, p2, v3}, Lcom/android/launcher3/common/base/item/IconInfo;-><init>(Landroid/content/Context;Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;Lcom/android/launcher3/common/compat/UserHandleCompat;Lcom/android/launcher3/common/model/IconCache;)V

    .line 1243
    .restart local v1    # "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    const-wide/16 v2, -0x66

    iput-wide v2, v1, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    .line 1244
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/launcher3/common/base/item/IconInfo;->mDirty:Z

    .line 1245
    iget-object v2, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->mQuietModeUsers:Landroid/util/LongSparseArray;

    sget-object v3, Lcom/android/launcher3/allapps/model/AppsLoader;->sUserManager:Lcom/android/launcher3/common/compat/UserManagerCompat;

    invoke-virtual {v3, p2}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher3/common/compat/UserHandleCompat;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1246
    iget v2, v1, Lcom/android/launcher3/common/base/item/IconInfo;->isDisabled:I

    or-int/lit8 v2, v2, 0x8

    iput v2, v1, Lcom/android/launcher3/common/base/item/IconInfo;->isDisabled:I

    .line 1248
    :cond_1
    const-string v2, "AppsLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " createAppInfoIfNecessary ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move-object v2, v1

    .line 1251
    goto :goto_0
.end method

.method private createFolderInfo(Landroid/database/Cursor;Lcom/android/launcher3/common/model/CursorInfo;Ljava/util/ArrayList;)Lcom/android/launcher3/common/base/item/ItemInfo;
    .locals 8
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
    .line 1159
    .local p3, "restoredRows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget v6, p2, Lcom/android/launcher3/common/model/CursorInfo;->idIndex:I

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 1160
    .local v4, "id":J
    const/4 v2, 0x0

    .line 1161
    .local v2, "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    sget-object v7, Lcom/android/launcher3/allapps/model/AppsLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1162
    :try_start_0
    sget-object v6, Lcom/android/launcher3/allapps/model/AppsLoader;->sBgFolders:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v6, v4, v5}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/android/launcher3/folder/FolderInfo;

    move-object v2, v0

    .line 1163
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1164
    if-nez v2, :cond_0

    .line 1165
    new-instance v2, Lcom/android/launcher3/folder/FolderInfo;

    .end local v2    # "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    invoke-direct {v2}, Lcom/android/launcher3/folder/FolderInfo;-><init>()V

    .line 1168
    .restart local v2    # "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    :cond_0
    iget v6, p2, Lcom/android/launcher3/common/model/CursorInfo;->restoredIndex:I

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-eqz v6, :cond_2

    const/4 v3, 0x1

    .line 1169
    .local v3, "restored":Z
    :goto_0
    iget v6, p2, Lcom/android/launcher3/common/model/CursorInfo;->titleIndex:I

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/android/launcher3/folder/FolderInfo;->title:Ljava/lang/CharSequence;

    .line 1170
    iput-wide v4, v2, Lcom/android/launcher3/folder/FolderInfo;->id:J

    .line 1171
    iget v6, p2, Lcom/android/launcher3/common/model/CursorInfo;->containerIndex:I

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    int-to-long v6, v6

    iput-wide v6, v2, Lcom/android/launcher3/folder/FolderInfo;->container:J

    .line 1172
    iget v6, p2, Lcom/android/launcher3/common/model/CursorInfo;->screenIndex:I

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    int-to-long v6, v6

    iput-wide v6, v2, Lcom/android/launcher3/folder/FolderInfo;->screenId:J

    .line 1173
    iget v6, p2, Lcom/android/launcher3/common/model/CursorInfo;->itemTypeIndex:I

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, v2, Lcom/android/launcher3/folder/FolderInfo;->itemType:I

    .line 1174
    iget v6, p2, Lcom/android/launcher3/common/model/CursorInfo;->rankIndex:I

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, v2, Lcom/android/launcher3/folder/FolderInfo;->rank:I

    .line 1175
    iget v6, p2, Lcom/android/launcher3/common/model/CursorInfo;->colorIndex:I

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, v2, Lcom/android/launcher3/folder/FolderInfo;->color:I

    .line 1176
    iget v6, p2, Lcom/android/launcher3/common/model/CursorInfo;->lockIndex:I

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, v2, Lcom/android/launcher3/folder/FolderInfo;->lock:I

    .line 1177
    iget v6, p2, Lcom/android/launcher3/common/model/CursorInfo;->optionsIndex:I

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, v2, Lcom/android/launcher3/folder/FolderInfo;->options:I

    .line 1179
    if-eqz v3, :cond_1

    .line 1181
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1184
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/launcher3/allapps/model/AppsLoader;->putItemToIdMap(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 1185
    return-object v2

    .line 1163
    .end local v3    # "restored":Z
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 1168
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private createIconInfo(Landroid/database/Cursor;Lcom/android/launcher3/common/model/CursorInfo;Ljava/util/ArrayList;)Lcom/android/launcher3/common/base/item/ItemInfo;
    .locals 30
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
    .line 922
    .local p3, "restoredRows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/launcher3/common/model/CursorInfo;->containerIndex:I

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 923
    .local v14, "container":I
    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/launcher3/common/model/CursorInfo;->idIndex:I

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 924
    .local v18, "id":J
    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/launcher3/common/model/CursorInfo;->profileIdIndex:I

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v0, v4

    move-wide/from16 v22, v0

    .line 925
    .local v22, "serialNumber":J
    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/launcher3/common/model/CursorInfo;->restoredIndex:I

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 926
    .local v8, "promiseType":I
    if-eqz v8, :cond_1

    const/16 v21, 0x1

    .line 930
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

    .line 931
    .local v7, "intent":Landroid/content/Intent;
    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 935
    .local v6, "cn":Landroid/content/ComponentName;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/model/AppsLoader;->mAllUsers:Landroid/util/LongSparseArray;

    move-wide/from16 v0, v22

    invoke-virtual {v4, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/launcher3/common/compat/UserHandleCompat;

    .line 936
    .local v24, "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    if-nez v24, :cond_2

    .line 937
    const/4 v12, 0x0

    .line 1078
    .end local v6    # "cn":Landroid/content/ComponentName;
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v24    # "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    :cond_0
    :goto_1
    return-object v12

    .line 926
    .end local v21    # "restored":Z
    :cond_1
    const/16 v21, 0x0

    goto :goto_0

    .line 932
    .restart local v21    # "restored":Z
    :catch_0
    move-exception v16

    .line 933
    .local v16, "e":Ljava/net/URISyntaxException;
    const/4 v12, 0x0

    goto :goto_1

    .line 940
    .end local v16    # "e":Ljava/net/URISyntaxException;
    .restart local v6    # "cn":Landroid/content/ComponentName;
    .restart local v7    # "intent":Landroid/content/Intent;
    .restart local v24    # "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    :cond_2
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherAppState;->getCloneItemEnabled()Z

    move-result v4

    if-nez v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/model/AppsLoader;->mBgDuplicateCheckList:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/launcher3/util/ComponentKey;

    move-object/from16 v0, v24

    invoke-direct {v5, v6, v0}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    .line 941
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/model/AppsLoader;->mAllAppsComponentKey:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/launcher3/util/ComponentKey;

    move-object/from16 v0, v24

    invoke-direct {v5, v6, v0}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    .line 942
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 943
    :cond_4
    const-string v4, "AppsLoader"

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

    .line 944
    const/4 v12, 0x0

    goto :goto_1

    .line 947
    :cond_5
    const/16 v26, 0x1

    .line 948
    .local v26, "validPkg":Z
    const/16 v25, 0x1

    .line 949
    .local v25, "validComponent":Z
    const/4 v11, 0x0

    .line 950
    .local v11, "allowMissingTarget":Z
    const/4 v15, 0x0

    .line 952
    .local v15, "disabledState":I
    sget-object v4, Lcom/android/launcher3/allapps/model/AppsLoader;->sLauncherApps:Lcom/android/launcher3/common/compat/LauncherAppsCompat;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-virtual {v4, v5, v0}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Ljava/util/List;

    move-result-object v13

    .line 953
    .local v13, "apps":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;>;"
    if-eqz v13, :cond_6

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 954
    :cond_6
    const/16 v26, 0x0

    .line 956
    :cond_7
    if-eqz v26, :cond_f

    move-object/from16 v0, v24

    invoke-static {v13, v6, v0}, Lcom/android/launcher3/allapps/model/AppsLoader;->findActivityInfo(Ljava/util/List;Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;

    move-result-object v10

    .line 957
    .local v10, "activityInfo":Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    :goto_2
    if-nez v10, :cond_8

    .line 958
    const/16 v25, 0x0

    .line 961
    :cond_8
    if-eqz v25, :cond_10

    .line 962
    if-eqz v21, :cond_a

    .line 963
    and-int/lit8 v4, v8, 0x20

    if-eqz v4, :cond_9

    .line 964
    new-instance v27, Landroid/content/ContentValues;

    invoke-direct/range {v27 .. v27}, Landroid/content/ContentValues;-><init>()V

    .line 965
    .local v27, "values":Landroid/content/ContentValues;
    const-string v4, "title"

    const-string v5, ""

    move-object/from16 v0, v27

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 966
    const-string v5, "icon"

    const/4 v4, 0x0

    check-cast v4, [B

    move-object/from16 v0, v27

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 967
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/allapps/model/AppsLoader;->updateItem(JLandroid/content/ContentValues;)V

    .line 969
    .end local v27    # "values":Landroid/content/ContentValues;
    :cond_9
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 970
    const/16 v21, 0x0

    .line 972
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/model/AppsLoader;->mQuietModeUsers:Landroid/util/LongSparseArray;

    move-wide/from16 v0, v22

    invoke-virtual {v4, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 973
    const/16 v15, 0x8

    .line 1018
    :cond_b
    :goto_3
    const/4 v12, 0x0

    .line 1019
    .local v12, "appInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    if-eqz v21, :cond_1a

    .line 1020
    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Lcom/android/launcher3/common/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 1021
    const-string v4, "AppsLoader"

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

    .line 1022
    invoke-virtual/range {v4 .. v9}, Lcom/android/launcher3/allapps/model/AppsLoader;->getRestoredItemInfo(Landroid/database/Cursor;Landroid/content/ComponentName;Landroid/content/Intent;ILcom/android/launcher3/common/model/CursorInfo;)Lcom/android/launcher3/common/base/item/IconInfo;

    move-result-object v12

    .line 1023
    iput-object v6, v12, Lcom/android/launcher3/common/base/item/IconInfo;->componentName:Landroid/content/ComponentName;

    .line 1024
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Lcom/android/launcher3/allapps/model/AppsLoader;->getRestoredItemIntent(Landroid/content/Intent;I)Landroid/content/Intent;

    move-result-object v7

    .line 1025
    iput-object v7, v12, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    .line 1042
    :cond_c
    :goto_4
    if-eqz v12, :cond_d

    .line 1043
    int-to-long v4, v14

    iput-wide v4, v12, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    .line 1044
    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/launcher3/common/model/CursorInfo;->screenIndex:I

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v4, v4

    iput-wide v4, v12, Lcom/android/launcher3/common/base/item/IconInfo;->screenId:J

    .line 1045
    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/launcher3/common/model/CursorInfo;->rankIndex:I

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v12, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    .line 1046
    move-wide/from16 v0, v18

    iput-wide v0, v12, Lcom/android/launcher3/common/base/item/IconInfo;->id:J

    .line 1047
    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/launcher3/common/model/CursorInfo;->hiddenIndex:I

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v12, Lcom/android/launcher3/common/base/item/IconInfo;->hidden:I

    .line 1048
    iget v4, v12, Lcom/android/launcher3/common/base/item/IconInfo;->isDisabled:I

    or-int/2addr v4, v15

    iput v4, v12, Lcom/android/launcher3/common/base/item/IconInfo;->isDisabled:I

    .line 1050
    if-eqz v21, :cond_d

    .line 1051
    invoke-virtual {v12}, Lcom/android/launcher3/common/base/item/IconInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v6

    .line 1052
    if-eqz v6, :cond_d

    .line 1053
    sget-object v4, Lcom/android/launcher3/allapps/model/AppsLoader;->sInstallingPkgs:Ljava/util/HashMap;

    if-nez v4, :cond_1b

    const/16 v20, 0x0

    .line 1054
    .local v20, "progress":Ljava/lang/Integer;
    :goto_5
    if-eqz v20, :cond_1c

    .line 1055
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v12, v4}, Lcom/android/launcher3/common/base/item/IconInfo;->setInstallProgress(I)V

    .line 1063
    .end local v20    # "progress":Ljava/lang/Integer;
    :cond_d
    :goto_6
    const/16 v4, -0x66

    if-eq v14, v4, :cond_e

    .line 1064
    const/16 v17, 0x0

    .line 1065
    .local v17, "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    sget-object v5, Lcom/android/launcher3/allapps/model/AppsLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1066
    :try_start_1
    sget-object v4, Lcom/android/launcher3/allapps/model/AppsLoader;->sBgFolders:Lcom/android/launcher3/util/LongArrayMap;

    int-to-long v0, v14

    move-wide/from16 v28, v0

    move-wide/from16 v0, v28

    invoke-virtual {v4, v0, v1}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/android/launcher3/folder/FolderInfo;

    move-object/from16 v17, v0

    .line 1067
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1068
    if-eqz v17, :cond_e

    if-eqz v12, :cond_e

    iget v4, v12, Lcom/android/launcher3/common/base/item/IconInfo;->hidden:I

    if-nez v4, :cond_e

    .line 1069
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Lcom/android/launcher3/folder/FolderInfo;->add(Lcom/android/launcher3/common/base/item/IconInfo;)V

    .line 1073
    .end local v17    # "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    :cond_e
    if-eqz v12, :cond_0

    .line 1074
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/launcher3/allapps/model/AppsLoader;->setBadgeCount(Lcom/android/launcher3/common/base/item/IconInfo;)V

    .line 1075
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/launcher3/allapps/model/AppsLoader;->putItemToIdMap(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto/16 :goto_1

    .line 956
    .end local v10    # "activityInfo":Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    .end local v12    # "appInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_f
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 975
    .restart local v10    # "activityInfo":Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    :cond_10
    if-eqz v26, :cond_15

    .line 976
    const/4 v7, 0x0

    .line 977
    and-int/lit8 v4, v8, 0x2

    if-nez v4, :cond_11

    and-int/lit8 v4, v8, 0x20

    if-eqz v4, :cond_12

    .line 980
    :cond_11
    sget-object v4, Lcom/android/launcher3/allapps/model/AppsLoader;->sPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    .line 981
    if-eqz v7, :cond_12

    .line 982
    new-instance v27, Landroid/content/ContentValues;

    invoke-direct/range {v27 .. v27}, Landroid/content/ContentValues;-><init>()V

    .line 983
    .restart local v27    # "values":Landroid/content/ContentValues;
    const-string v4, "intent"

    const/4 v5, 0x0

    invoke-virtual {v7, v5}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v27

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 984
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/allapps/model/AppsLoader;->updateItem(JLandroid/content/ContentValues;)V

    .line 988
    .end local v27    # "values":Landroid/content/ContentValues;
    :cond_12
    if-nez v7, :cond_13

    .line 990
    const-string v4, "AppsLoader"

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

    .line 991
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 993
    :cond_13
    and-int/lit8 v4, v8, 0x20

    if-eqz v4, :cond_14

    .line 994
    new-instance v27, Landroid/content/ContentValues;

    invoke-direct/range {v27 .. v27}, Landroid/content/ContentValues;-><init>()V

    .line 995
    .restart local v27    # "values":Landroid/content/ContentValues;
    const-string v4, "title"

    const-string v5, ""

    move-object/from16 v0, v27

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 996
    const-string v5, "icon"

    const/4 v4, 0x0

    check-cast v4, [B

    move-object/from16 v0, v27

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 997
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/allapps/model/AppsLoader;->updateItem(JLandroid/content/ContentValues;)V

    .line 999
    .end local v27    # "values":Landroid/content/ContentValues;
    :cond_14
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1000
    const/16 v21, 0x0

    goto/16 :goto_3

    .line 1002
    :cond_15
    if-eqz v21, :cond_18

    .line 1004
    const-string v4, "AppsLoader"

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

    .line 1006
    and-int/lit8 v4, v8, 0x2

    if-nez v4, :cond_16

    and-int/lit8 v4, v8, 0x1

    if-eqz v4, :cond_b

    .line 1008
    :cond_16
    sget-object v4, Lcom/android/launcher3/allapps/model/AppsLoader;->sInstallingPkgs:Ljava/util/HashMap;

    if-eqz v4, :cond_17

    sget-object v4, Lcom/android/launcher3/allapps/model/AppsLoader;->sInstallingPkgs:Ljava/util/HashMap;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 1009
    :cond_17
    const-string v4, "AppsLoader"

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

    .line 1010
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 1014
    :cond_18
    const-string v4, "AppsLoader"

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

    .line 1015
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 1028
    .restart local v12    # "appInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_19
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 1030
    :cond_1a
    if-nez v11, :cond_c

    .line 1039
    new-instance v12, Lcom/android/launcher3/common/base/item/IconInfo;

    .end local v12    # "appInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    sget-object v4, Lcom/android/launcher3/allapps/model/AppsLoader;->sContext:Landroid/content/Context;

    sget-object v5, Lcom/android/launcher3/allapps/model/AppsLoader;->sIconCache:Lcom/android/launcher3/common/model/IconCache;

    move-object/from16 v0, v24

    invoke-direct {v12, v4, v10, v0, v5}, Lcom/android/launcher3/common/base/item/IconInfo;-><init>(Landroid/content/Context;Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;Lcom/android/launcher3/common/compat/UserHandleCompat;Lcom/android/launcher3/common/model/IconCache;)V

    .restart local v12    # "appInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    goto/16 :goto_4

    .line 1053
    :cond_1b
    sget-object v4, Lcom/android/launcher3/allapps/model/AppsLoader;->sInstallingPkgs:Ljava/util/HashMap;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    move-object/from16 v20, v4

    goto/16 :goto_5

    .line 1057
    .restart local v20    # "progress":Ljava/lang/Integer;
    :cond_1c
    iget v4, v12, Lcom/android/launcher3/common/base/item/IconInfo;->status:I

    and-int/lit8 v4, v4, -0x9

    iput v4, v12, Lcom/android/launcher3/common/base/item/IconInfo;->status:I

    goto/16 :goto_6

    .line 1067
    .end local v20    # "progress":Ljava/lang/Integer;
    .restart local v17    # "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4
.end method

.method private createItems(Landroid/database/Cursor;Lcom/android/launcher3/common/model/CursorInfo;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/launcher3/util/LongArrayMap;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V
    .locals 8
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "cursorInfo"    # Lcom/android/launcher3/common/model/CursorInfo;
    .param p6, "task"    # Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;
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
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;",
            "Lcom/android/launcher3/util/LongArrayMap",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;",
            "Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;",
            ")V"
        }
    .end annotation

    .prologue
    .line 870
    .local p3, "restoredRows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .local p4, "pageItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .local p5, "folders":Lcom/android/launcher3/util/LongArrayMap;, "Lcom/android/launcher3/util/LongArrayMap<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 872
    .local v4, "itemsToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_0
    :goto_0
    invoke-virtual {p0, p6}, Lcom/android/launcher3/allapps/model/AppsLoader;->isStopped(Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 873
    const/4 v3, 0x0

    .line 875
    .local v3, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    :try_start_0
    iget v5, p2, Lcom/android/launcher3/common/model/CursorInfo;->intentIndex:I

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 876
    .local v0, "component":Ljava/lang/String;
    if-nez v0, :cond_3

    .line 877
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/allapps/model/AppsLoader;->createFolderInfo(Landroid/database/Cursor;Lcom/android/launcher3/common/model/CursorInfo;Ljava/util/ArrayList;)Lcom/android/launcher3/common/base/item/ItemInfo;

    move-result-object v3

    .line 878
    if-nez p5, :cond_1

    .line 879
    new-instance v2, Lcom/android/launcher3/util/LongArrayMap;

    invoke-direct {v2}, Lcom/android/launcher3/util/LongArrayMap;-><init>()V

    .end local p5    # "folders":Lcom/android/launcher3/util/LongArrayMap;, "Lcom/android/launcher3/util/LongArrayMap<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .local v2, "folders":Lcom/android/launcher3/util/LongArrayMap;, "Lcom/android/launcher3/util/LongArrayMap<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    move-object p5, v2

    .line 881
    .end local v2    # "folders":Lcom/android/launcher3/util/LongArrayMap;, "Lcom/android/launcher3/util/LongArrayMap<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .restart local p5    # "folders":Lcom/android/launcher3/util/LongArrayMap;, "Lcom/android/launcher3/util/LongArrayMap<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    :cond_1
    iget-wide v6, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    invoke-virtual {p5, v6, v7, v3}, Lcom/android/launcher3/util/LongArrayMap;->put(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 891
    .end local v0    # "component":Ljava/lang/String;
    :cond_2
    :goto_1
    if-eqz v3, :cond_0

    iget v5, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->hidden:I

    if-nez v5, :cond_0

    .line 892
    invoke-virtual {p4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 883
    .restart local v0    # "component":Ljava/lang/String;
    :cond_3
    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/allapps/model/AppsLoader;->createIconInfo(Landroid/database/Cursor;Lcom/android/launcher3/common/model/CursorInfo;Ljava/util/ArrayList;)Lcom/android/launcher3/common/base/item/ItemInfo;

    move-result-object v3

    .line 884
    if-nez v3, :cond_2

    .line 885
    iget v5, p2, Lcom/android/launcher3/common/model/CursorInfo;->idIndex:I

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 888
    .end local v0    # "component":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 889
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "AppsLoader"

    const-string v6, "Apps items loading interrupted"

    const/4 v7, 0x1

    invoke-static {v5, v6, v1, v7}, Lcom/android/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;Z)V

    goto :goto_1

    .line 897
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_4
    invoke-direct {p0, v4, p4}, Lcom/android/launcher3/allapps/model/AppsLoader;->removeItems(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 898
    return-void
.end method

.method private createItemsInFolder(Landroid/database/Cursor;Lcom/android/launcher3/common/model/CursorInfo;Ljava/util/ArrayList;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V
    .locals 6
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "cursorInfo"    # Lcom/android/launcher3/common/model/CursorInfo;
    .param p4, "task"    # Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Lcom/android/launcher3/common/model/CursorInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;",
            ")V"
        }
    .end annotation

    .prologue
    .line 902
    .local p3, "restoredRows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 904
    .local v2, "itemsToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_0
    :goto_0
    invoke-virtual {p0, p4}, Lcom/android/launcher3/allapps/model/AppsLoader;->isStopped(Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 906
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/allapps/model/AppsLoader;->createIconInfo(Landroid/database/Cursor;Lcom/android/launcher3/common/model/CursorInfo;Ljava/util/ArrayList;)Lcom/android/launcher3/common/base/item/ItemInfo;

    move-result-object v1

    .line 907
    .local v1, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    if-nez v1, :cond_0

    .line 908
    iget v3, p2, Lcom/android/launcher3/common/model/CursorInfo;->idIndex:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 910
    .end local v1    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    :catch_0
    move-exception v0

    .line 911
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "AppsLoader"

    const-string v4, "Apps items loading interrupted"

    const/4 v5, 0x1

    invoke-static {v3, v4, v0, v5}, Lcom/android/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;Z)V

    goto :goto_0

    .line 917
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/launcher3/allapps/model/AppsLoader;->removeItems(Ljava/util/ArrayList;)V

    .line 918
    return-void
.end method

.method private getCallback()Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;
    .locals 2

    .prologue
    .line 224
    iget-object v1, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 225
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->mCallbacks:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 226
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getDefaultLayoutParser()Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;
    .locals 6

    .prologue
    .line 1189
    new-instance v0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;

    sget-object v1, Lcom/android/launcher3/allapps/model/AppsLoader;->sContext:Landroid/content/Context;

    const/4 v2, 0x0

    sget-object v3, Lcom/android/launcher3/allapps/model/AppsLoader;->sFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    sget-object v4, Lcom/android/launcher3/allapps/model/AppsLoader;->sContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;-><init>(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/android/launcher3/common/model/DefaultLayoutParser$LayoutParserCallback;Landroid/content/res/Resources;I)V

    return-object v0
.end method

.method private hasDefferedBindRunnable()I
    .locals 2

    .prologue
    .line 1541
    iget-object v1, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->mDeferredBindRunnables:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1542
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->mDeferredBindRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    monitor-exit v1

    return v0

    .line 1543
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private loadDuplicateCheckList()Ljava/util/ArrayList;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/util/ComponentKey;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1889
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1890
    .local v6, "componentList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/util/ComponentKey;>;"
    const/4 v10, 0x0

    .line 1893
    .local v10, "folderIds":Ljava/lang/String;
    const-string v3, "itemType=2 AND (container=-100 OR container=-101)"

    .line 1897
    .local v3, "where":Ljava/lang/String;
    sget-object v0, Lcom/android/launcher3/allapps/model/AppsLoader;->sContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/launcher3/common/model/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1900
    .local v9, "folderIdCursor":Landroid/database/Cursor;
    if-eqz v9, :cond_1

    .line 1901
    new-instance v12, Lcom/android/launcher3/util/StringJoiner;

    const-string v0, ","

    invoke-direct {v12, v0}, Lcom/android/launcher3/util/StringJoiner;-><init>(Ljava/lang/String;)V

    .line 1902
    .local v12, "joiner":Lcom/android/launcher3/util/StringJoiner;
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1903
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {v12, v0, v1}, Lcom/android/launcher3/util/StringJoiner;->append(J)V

    goto :goto_0

    .line 1905
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1906
    invoke-virtual {v12}, Lcom/android/launcher3/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1910
    .end local v12    # "joiner":Lcom/android/launcher3/util/StringJoiner;
    :cond_1
    const-string v3, "itemType=0 AND (container=-100 OR container=-101"

    .line 1914
    if-eqz v10, :cond_4

    .line 1915
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " OR container in ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "))"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1920
    :goto_1
    sget-object v0, Lcom/android/launcher3/allapps/model/AppsLoader;->sContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/launcher3/common/model/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "intent"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "profileId"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1923
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_3

    .line 1925
    :cond_2
    :goto_2
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1926
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v11

    .line 1927
    .local v11, "intent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->mAllUsers:Landroid/util/LongSparseArray;

    const/4 v1, 0x1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/launcher3/common/compat/UserHandleCompat;

    .line 1928
    .local v13, "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    if-eqz v11, :cond_2

    invoke-virtual {v11}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz v13, :cond_2

    .line 1929
    new-instance v0, Lcom/android/launcher3/util/ComponentKey;

    invoke-virtual {v11}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-direct {v0, v1, v13}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 1932
    .end local v11    # "intent":Landroid/content/Intent;
    .end local v13    # "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    :catch_0
    move-exception v8

    .line 1933
    .local v8, "e":Ljava/net/URISyntaxException;
    :try_start_1
    const-string v0, "AppsLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception reading intent to make duplicate check list: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1935
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1938
    .end local v8    # "e":Ljava/net/URISyntaxException;
    :cond_3
    :goto_3
    return-object v6

    .line 1917
    .end local v7    # "cursor":Landroid/database/Cursor;
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 1935
    .restart local v7    # "cursor":Landroid/database/Cursor;
    :cond_5
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private loadRemainedApps(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 411
    .local p1, "remainedItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .local p2, "remainedItemsInFolder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 412
    .local v4, "allRemainedItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    .line 413
    .local v14, "loadTime":J
    sget-object v21, Lcom/android/launcher3/allapps/model/AppsLoader;->sUserManager:Lcom/android/launcher3/common/compat/UserManagerCompat;

    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getUserProfiles()Ljava/util/List;

    move-result-object v16

    .line 414
    .local v16, "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/compat/UserHandleCompat;>;"
    sget-object v21, Lcom/android/launcher3/allapps/model/AppsLoader;->sContext:Landroid/content/Context;

    invoke-static/range {v21 .. v21}, Lcom/android/launcher3/common/customer/PostPositionController;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/customer/PostPositionController;

    move-result-object v13

    .line 416
    .local v13, "pp":Lcom/android/launcher3/common/customer/PostPositionController;
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_0
    :goto_0
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_6

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/launcher3/common/compat/UserHandleCompat;

    .line 418
    .local v20, "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18

    .line 419
    .local v18, "qiaTime":J
    sget-object v22, Lcom/android/launcher3/allapps/model/AppsLoader;->sLauncherApps:Lcom/android/launcher3/common/compat/LauncherAppsCompat;

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Ljava/util/List;

    move-result-object v6

    .line 422
    .local v6, "apps":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;>;"
    if-eqz v6, :cond_1

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v22

    if-eqz v22, :cond_2

    .line 423
    :cond_1
    const-string v22, "AppsLoader"

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

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 428
    :cond_2
    const-string v22, "AppsLoader"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "getActivityList took "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 429
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

    .line 428
    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    const-string v22, "AppsLoader"

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

    .line 433
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v11, v0, :cond_5

    .line 434
    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;

    .line 435
    .local v5, "app":Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v5, v1}, Lcom/android/launcher3/allapps/model/AppsLoader;->createAppInfoIfNecessary(Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;Lcom/android/launcher3/common/compat/UserHandleCompat;)Lcom/android/launcher3/common/base/item/IconInfo;

    move-result-object v12

    .line 437
    .local v12, "info":Lcom/android/launcher3/common/base/item/IconInfo;
    if-eqz v12, :cond_3

    sget-object v22, Lcom/android/launcher3/allapps/model/AppsLoader;->sFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    if-eqz v22, :cond_3

    .line 438
    sget-object v22, Lcom/android/launcher3/allapps/model/AppsLoader;->sFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher3/common/model/FavoritesProvider;->generateNewItemId()J

    move-result-wide v22

    move-wide/from16 v0, v22

    iput-wide v0, v12, Lcom/android/launcher3/common/base/item/IconInfo;->id:J

    .line 439
    iget-object v0, v12, Lcom/android/launcher3/common/base/item/IconInfo;->componentName:Landroid/content/ComponentName;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Lcom/android/launcher3/common/customer/PostPositionController;->getAppsAutoFolderId(Ljava/lang/String;)J

    move-result-wide v8

    .line 441
    .local v8, "folderId":J
    sget-object v22, Lcom/android/launcher3/allapps/model/AppsLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v22

    .line 442
    :try_start_0
    sget-object v23, Lcom/android/launcher3/allapps/model/AppsLoader;->sBgFolders:Lcom/android/launcher3/util/LongArrayMap;

    move-object/from16 v0, v23

    invoke-virtual {v0, v8, v9}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/folder/FolderInfo;

    .line 443
    .local v7, "folder":Lcom/android/launcher3/folder/FolderInfo;
    monitor-exit v22
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 444
    const-wide/16 v22, -0x1

    cmp-long v22, v8, v22

    if-eqz v22, :cond_4

    if-eqz v7, :cond_4

    .line 447
    iput-wide v8, v12, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    .line 448
    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 452
    :goto_2
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 453
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/allapps/model/AppsLoader;->mAllAppsComponentKey:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    new-instance v23, Lcom/android/launcher3/util/ComponentKey;

    iget-object v0, v12, Lcom/android/launcher3/common/base/item/IconInfo;->componentName:Landroid/content/ComponentName;

    move-object/from16 v24, v0

    iget-object v0, v12, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-object/from16 v25, v0

    invoke-direct/range {v23 .. v25}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 433
    .end local v7    # "folder":Lcom/android/launcher3/folder/FolderInfo;
    .end local v8    # "folderId":J
    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 443
    .restart local v8    # "folderId":J
    :catchall_0
    move-exception v21

    :try_start_1
    monitor-exit v22
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v21

    .line 450
    .restart local v7    # "folder":Lcom/android/launcher3/folder/FolderInfo;
    :cond_4
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 457
    .end local v5    # "app":Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    .end local v7    # "folder":Lcom/android/launcher3/folder/FolderInfo;
    .end local v8    # "folderId":J
    .end local v12    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_5
    sget-object v22, Lcom/android/launcher3/allapps/model/AppsLoader;->sContext:Landroid/content/Context;

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/launcher3/home/ManagedProfileHeuristic;->get(Landroid/content/Context;Lcom/android/launcher3/common/compat/UserHandleCompat;)Lcom/android/launcher3/home/ManagedProfileHeuristic;

    move-result-object v10

    .line 458
    .local v10, "heuristic":Lcom/android/launcher3/home/ManagedProfileHeuristic;
    if-eqz v10, :cond_0

    .line 459
    new-instance v17, Lcom/android/launcher3/allapps/model/AppsLoader$3;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v10, v6}, Lcom/android/launcher3/allapps/model/AppsLoader$3;-><init>(Lcom/android/launcher3/allapps/model/AppsLoader;Lcom/android/launcher3/home/ManagedProfileHeuristic;Ljava/util/List;)V

    .line 465
    .local v17, "r":Ljava/lang/Runnable;
    new-instance v22, Lcom/android/launcher3/allapps/model/AppsLoader$4;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/allapps/model/AppsLoader$4;-><init>(Lcom/android/launcher3/allapps/model/AppsLoader;Ljava/lang/Runnable;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/model/AppsLoader;->runOnMainThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 481
    .end local v6    # "apps":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;>;"
    .end local v10    # "heuristic":Lcom/android/launcher3/home/ManagedProfileHeuristic;
    .end local v11    # "i":I
    .end local v17    # "r":Ljava/lang/Runnable;
    .end local v18    # "qiaTime":J
    .end local v20    # "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    :cond_6
    new-instance v21, Lcom/android/launcher3/allapps/model/AppsLoader$5;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/launcher3/allapps/model/AppsLoader$5;-><init>(Lcom/android/launcher3/allapps/model/AppsLoader;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 489
    const-string v21, "AppsLoader"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Icons processed in "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 490
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v24

    sub-long v24, v24, v14

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "ms"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 489
    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    sget-object v21, Lcom/android/launcher3/allapps/model/AppsLoader;->sContext:Landroid/content/Context;

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/android/launcher3/home/ManagedProfileHeuristic;->processAllUsers(Ljava/util/List;Landroid/content/Context;)V

    .line 494
    return-object v4
.end method

.method private removeAllItems(Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V
    .locals 4
    .param p1, "task"    # Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;

    .prologue
    .line 651
    const-string v2, "AppsLoader"

    const-string v3, "removeAllItems "

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    iget-object v2, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->mAllAppsComponentKey:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 654
    invoke-direct {p0}, Lcom/android/launcher3/allapps/model/AppsLoader;->getCallback()Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;

    move-result-object v0

    .line 655
    .local v0, "oldCallbacks":Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;
    if-nez v0, :cond_0

    .line 656
    const-string v2, "AppsLoader"

    const-string v3, "removeAllItems running with no AppsCallbacks"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    :goto_0
    return-void

    .line 659
    :cond_0
    new-instance v1, Lcom/android/launcher3/allapps/model/AppsLoader$10;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/launcher3/allapps/model/AppsLoader$10;-><init>(Lcom/android/launcher3/allapps/model/AppsLoader;Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V

    .line 668
    .local v1, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v1}, Lcom/android/launcher3/allapps/model/AppsLoader;->runOnMainThread(Ljava/lang/Runnable;)V

    goto :goto_0
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
    .line 841
    .local p1, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/allapps/model/AppsLoader;->removeItems(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 842
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
    .line 845
    .local p1, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .local p2, "pageItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 847
    sget-object v3, Lcom/android/launcher3/allapps/model/AppsLoader;->sContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/launcher3/common/model/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "_id"

    .line 848
    invoke-static {v5, p1}, Lcom/android/launcher3/Utilities;->createDbSelectionQuery(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 847
    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 850
    const-string v3, "AppsLoader"

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

    .line 853
    sget-object v3, Lcom/android/launcher3/allapps/model/AppsLoader;->sContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/launcher3/common/customer/PostPositionController;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/customer/PostPositionController;

    move-result-object v2

    .line 854
    .local v2, "pp":Lcom/android/launcher3/common/customer/PostPositionController;
    sget-object v3, Lcom/android/launcher3/allapps/model/AppsLoader;->sFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

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

    .line 855
    .local v0, "folderId":J
    invoke-virtual {v2, v0, v1}, Lcom/android/launcher3/common/customer/PostPositionController;->removeAutoFolderInfo(J)V

    .line 856
    sget-object v5, Lcom/android/launcher3/allapps/model/AppsLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v5

    .line 857
    if-eqz p2, :cond_0

    .line 858
    :try_start_0
    sget-object v3, Lcom/android/launcher3/allapps/model/AppsLoader;->sBgFolders:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v3, v0, v1}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 860
    :cond_0
    sget-object v3, Lcom/android/launcher3/allapps/model/AppsLoader;->sBgFolders:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v3, v0, v1}, Lcom/android/launcher3/util/LongArrayMap;->remove(J)V

    .line 861
    sget-object v3, Lcom/android/launcher3/allapps/model/AppsLoader;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v3, v0, v1}, Lcom/android/launcher3/util/LongArrayMap;->remove(J)V

    .line 862
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 865
    .end local v0    # "folderId":J
    .end local v2    # "pp":Lcom/android/launcher3/common/customer/PostPositionController;
    :cond_1
    return-void
.end method

.method private runOrAddDifferRunnable(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 1547
    invoke-direct {p0}, Lcom/android/launcher3/allapps/model/AppsLoader;->hasDefferedBindRunnable()I

    move-result v0

    if-lez v0, :cond_0

    .line 1548
    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/model/AppsLoader;->addDeferredBindRunnable(Ljava/lang/Runnable;)V

    .line 1552
    :goto_0
    return-void

    .line 1550
    :cond_0
    sget-object v0, Lcom/android/launcher3/allapps/model/AppsLoader;->sHandler:Lcom/android/launcher3/common/model/DeferredHandler;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/model/DeferredHandler;->post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private setupDefaultGridInfo(Lcom/android/launcher3/common/deviceprofile/DeviceProfile;[I)V
    .locals 13
    .param p1, "dp"    # Lcom/android/launcher3/common/deviceprofile/DeviceProfile;
    .param p2, "gridXY"    # [I

    .prologue
    const v12, 0x7f0b0001

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2222
    sget-object v9, Lcom/android/launcher3/allapps/model/AppsLoader;->sContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 2223
    .local v6, "res":Landroid/content/res/Resources;
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->isDreamProject()Z

    move-result v9

    if-nez v9, :cond_0

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->isCruiserProject()Z

    move-result v9

    if-eqz v9, :cond_3

    :cond_0
    move v5, v8

    .line 2224
    .local v5, "isDreamProject":Z
    :goto_0
    if-nez v5, :cond_1

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->isTablet()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 2225
    :cond_1
    invoke-virtual {v6, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 2227
    .local v3, "gridX":I
    :goto_1
    const v9, 0x7f0c0004

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 2229
    .local v1, "gridSet":[Ljava/lang/String;
    const-string v0, ""

    .line 2230
    .local v0, "grid":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "index":I
    :goto_2
    array-length v9, v1

    if-ge v4, v9, :cond_6

    .line 2231
    aget-object v0, v1, v4

    .line 2232
    const-string v9, "AppsLoader"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "grid - index("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "), value("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2233
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 2234
    :cond_2
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "invalid grid"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .end local v0    # "grid":Ljava/lang/String;
    .end local v1    # "gridSet":[Ljava/lang/String;
    .end local v3    # "gridX":I
    .end local v4    # "index":I
    .end local v5    # "isDreamProject":Z
    :cond_3
    move v5, v7

    .line 2223
    goto :goto_0

    .line 2225
    .restart local v5    # "isDreamProject":Z
    :cond_4
    iget-object v9, p1, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v9}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountX()I

    move-result v3

    goto :goto_1

    .line 2237
    .restart local v0    # "grid":Ljava/lang/String;
    .restart local v1    # "gridSet":[Ljava/lang/String;
    .restart local v3    # "gridX":I
    .restart local v4    # "index":I
    :cond_5
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 2242
    :cond_6
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_8

    .line 2243
    const-string v9, "x"

    invoke-virtual {v0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2244
    .local v2, "gridVaules":[Ljava/lang/String;
    aget-object v9, v2, v7

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aput v9, p2, v7

    .line 2245
    aget-object v9, v2, v8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aput v9, p2, v8

    .line 2250
    .end local v2    # "gridVaules":[Ljava/lang/String;
    :goto_3
    sget-object v9, Lcom/android/launcher3/allapps/model/AppsLoader;->sContext:Landroid/content/Context;

    aget v10, p2, v7

    aget v11, p2, v8

    invoke-static {v9, v10, v11}, Lcom/android/launcher3/util/ScreenGridUtilities;->storeAppsGridLayoutPreference(Landroid/content/Context;II)V

    .line 2251
    const-string v9, "AppsLoader"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setupDefaultAppsGridInfo : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget v7, p2, v7

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " , "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v8, p2, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2252
    return-void

    .line 2230
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    .line 2247
    :cond_8
    invoke-virtual {v6, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    aput v9, p2, v7

    .line 2248
    const v9, 0x7f0b0002

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    aput v9, p2, v8

    goto :goto_3
.end method

.method private setupGridInfo()V
    .locals 10

    .prologue
    const/4 v6, -0x1

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 252
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/LauncherAppState;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v2

    .line 254
    .local v2, "dp":Lcom/android/launcher3/common/deviceprofile/DeviceProfile;
    const/4 v5, 0x2

    new-array v4, v5, [I

    .line 256
    .local v4, "gridXY":[I
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/LauncherAppState;->isEasyModeEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 257
    iget-object v5, v2, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v5}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountX()I

    move-result v5

    aput v5, v4, v8

    .line 258
    iget-object v5, v2, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v5}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountY()I

    move-result v5

    aput v5, v4, v9

    .line 278
    :cond_0
    :goto_0
    aget v5, v4, v8

    sput v5, Lcom/android/launcher3/allapps/model/AppsLoader;->mCellCountX:I

    .line 279
    aget v5, v4, v8

    aget v6, v4, v9

    mul-int/2addr v5, v6

    iput v5, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->mMaxItemsPerPage:I

    .line 280
    const-string v5, "AppsLoader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setupGridInfo : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v4, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v4, v9

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->mMaxItemsPerPage:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , easymode "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 281
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher3/LauncherAppState;->isEasyModeEnabled()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 280
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    return-void

    .line 260
    :cond_1
    sget-object v5, Lcom/android/launcher3/allapps/model/AppsLoader;->sContext:Landroid/content/Context;

    invoke-static {v5, v4}, Lcom/android/launcher3/util/ScreenGridUtilities;->loadCurrentAppsGridSize(Landroid/content/Context;[I)V

    .line 261
    sget-object v5, Lcom/android/launcher3/allapps/model/AppsLoader;->sContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/launcher3/util/ScreenGridUtilities;->loadAppsSupportedGridSet(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 263
    .local v3, "gridSet":Ljava/lang/String;
    aget v5, v4, v8

    if-eq v5, v6, :cond_2

    aget v5, v4, v9

    if-ne v5, v6, :cond_5

    .line 265
    :cond_2
    invoke-direct {p0, v2, v4}, Lcom/android/launcher3/allapps/model/AppsLoader;->setupDefaultGridInfo(Lcom/android/launcher3/common/deviceprofile/DeviceProfile;[I)V

    .line 266
    invoke-direct {p0}, Lcom/android/launcher3/allapps/model/AppsLoader;->setupGridSet()V

    .line 271
    :cond_3
    :goto_1
    iget-object v5, v2, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v5}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountX()I

    move-result v0

    .line 272
    .local v0, "cellCountX":I
    iget-object v5, v2, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v5}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountY()I

    move-result v1

    .line 273
    .local v1, "cellCountY":I
    aget v5, v4, v8

    if-ne v0, v5, :cond_4

    aget v5, v4, v9

    if-eq v1, v5, :cond_0

    .line 274
    :cond_4
    const-string v5, "AppsLoader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateGridInfo : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v4, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v4, v9

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    aget v5, v4, v8

    aget v6, v4, v9

    invoke-direct {p0, v5, v6}, Lcom/android/launcher3/allapps/model/AppsLoader;->updateAppsGridInfo(II)V

    goto/16 :goto_0

    .line 267
    .end local v0    # "cellCountX":I
    .end local v1    # "cellCountY":I
    :cond_5
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 268
    :cond_6
    invoke-direct {p0}, Lcom/android/launcher3/allapps/model/AppsLoader;->setupGridSet()V

    goto :goto_1
.end method

.method private setupGridSet()V
    .locals 8

    .prologue
    .line 2201
    sget-object v5, Lcom/android/launcher3/allapps/model/AppsLoader;->sContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 2202
    .local v4, "res":Landroid/content/res/Resources;
    const v5, 0x7f0c0004

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 2204
    .local v2, "gridSet":[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2205
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_0
    array-length v5, v2

    if-ge v3, v5, :cond_3

    .line 2206
    aget-object v1, v2, v3

    .line 2207
    .local v1, "grid":Ljava/lang/String;
    const-string v5, "AppsLoader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "grid - index("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "), value("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2208
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2209
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "invalid grid"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2212
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2213
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-eq v3, v5, :cond_2

    .line 2214
    const-string v5, "|"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2205
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2217
    .end local v1    # "grid":Ljava/lang/String;
    :cond_3
    sget-object v5, Lcom/android/launcher3/allapps/model/AppsLoader;->sContext:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/launcher3/util/ScreenGridUtilities;->storeAppsSupportedGridSet(Landroid/content/Context;Ljava/lang/String;)V

    .line 2218
    const-string v5, "AppsLoader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setupAppsGridSet : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2219
    return-void
.end method

.method private tryGetCallbacks(Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;
    .locals 5
    .param p1, "oldCallbacks"    # Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;
    .param p2, "task"    # Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;

    .prologue
    const/4 v1, 0x0

    .line 1504
    iget-object v2, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1505
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/launcher3/allapps/model/AppsLoader;->isStopped(Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1506
    monitor-exit v2

    move-object v0, v1

    .line 1521
    :goto_0
    return-object v0

    .line 1509
    :cond_0
    iget-object v3, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->mCallbacks:Ljava/lang/ref/WeakReference;

    if-nez v3, :cond_1

    .line 1510
    monitor-exit v2

    move-object v0, v1

    goto :goto_0

    .line 1513
    :cond_1
    iget-object v3, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;

    .line 1514
    .local v0, "callbacks":Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;
    if-eq v0, p1, :cond_2

    .line 1515
    monitor-exit v2

    move-object v0, v1

    goto :goto_0

    .line 1517
    :cond_2
    if-nez v0, :cond_3

    .line 1518
    const-string v3, "AppsLoader"

    const-string v4, "no mCallbacks"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1519
    monitor-exit v2

    move-object v0, v1

    goto :goto_0

    .line 1521
    :cond_3
    monitor-exit v2

    goto :goto_0

    .line 1522
    .end local v0    # "callbacks":Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private updateAppsGridInfo(II)V
    .locals 2
    .param p1, "gridX"    # I
    .param p2, "gridY"    # I

    .prologue
    .line 2183
    invoke-direct {p0}, Lcom/android/launcher3/allapps/model/AppsLoader;->getCallback()Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;

    move-result-object v0

    .line 2184
    .local v0, "oldCallbacks":Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;
    new-instance v1, Lcom/android/launcher3/allapps/model/AppsLoader$30;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/android/launcher3/allapps/model/AppsLoader$30;-><init>(Lcom/android/launcher3/allapps/model/AppsLoader;Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;II)V

    .line 2197
    .local v1, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v1}, Lcom/android/launcher3/allapps/model/AppsLoader;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 2198
    return-void
.end method

.method private updateHideItems(Ljava/util/ArrayList;Z)V
    .locals 1
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
    .line 1432
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v0, Lcom/android/launcher3/allapps/model/AppsLoader$20;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/launcher3/allapps/model/AppsLoader$20;-><init>(Lcom/android/launcher3/allapps/model/AppsLoader;Ljava/util/ArrayList;Z)V

    .line 1478
    .local v0, "updateRunnable":Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/android/launcher3/allapps/model/AppsLoader;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 1479
    return-void
.end method


# virtual methods
.method public addFolderAndBindItem(Lcom/android/launcher3/common/base/item/ItemInfo;Ljava/util/ArrayList;)V
    .locals 6
    .param p1, "folderInfo"    # Lcom/android/launcher3/common/base/item/ItemInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1408
    .local p2, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1409
    .local v4, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1410
    .local v3, "addedAppsScreensFinal":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v1, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/common/model/FavoritesUpdater;->addItem(Lcom/android/launcher3/common/base/item/ItemInfo;)J

    .line 1411
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1413
    invoke-direct {p0}, Lcom/android/launcher3/allapps/model/AppsLoader;->getCallback()Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;

    move-result-object v2

    .line 1414
    .local v2, "oldCallbacks":Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;
    if-nez v2, :cond_0

    .line 1415
    const-string v1, "AppsLoader"

    const-string v5, "addFolderAndBindItem running with no AppsCallbacks"

    invoke-static {v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1428
    :goto_0
    return-void

    .line 1418
    :cond_0
    new-instance v0, Lcom/android/launcher3/allapps/model/AppsLoader$19;

    move-object v1, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/allapps/model/AppsLoader$19;-><init>(Lcom/android/launcher3/allapps/model/AppsLoader;Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1427
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/model/AppsLoader;->runOnMainThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public addPagesItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 1
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 1633
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/util/logging/SALogging;->updateStatusLogValuesForAppsItem()V

    .line 1634
    return-void
.end method

.method public addToFolderItem(Lcom/android/launcher3/folder/FolderInfo;Ljava/util/ArrayList;)V
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
    .line 2121
    .local p2, "addedAppInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    invoke-direct {p0}, Lcom/android/launcher3/allapps/model/AppsLoader;->getCallback()Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;

    move-result-object v0

    .line 2122
    .local v0, "oldCallbacks":Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;
    if-nez v0, :cond_0

    .line 2123
    const-string v1, "AppsLoader"

    const-string v2, "addToFolderItem running with no AppsCallbacks"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2149
    :goto_0
    return-void

    .line 2126
    :cond_0
    new-instance v1, Lcom/android/launcher3/allapps/model/AppsLoader$27;

    invoke-direct {v1, p0, v0, p2, p1}, Lcom/android/launcher3/allapps/model/AppsLoader$27;-><init>(Lcom/android/launcher3/allapps/model/AppsLoader;Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;Ljava/util/ArrayList;Lcom/android/launcher3/folder/FolderInfo;)V

    invoke-virtual {p0, v1}, Lcom/android/launcher3/allapps/model/AppsLoader;->runOnMainThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public addViewAndUpdateItemInfoToDb(Ljava/util/ArrayList;ZZ)V
    .locals 1
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
    .line 1357
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v0, Lcom/android/launcher3/allapps/model/AppsLoader$18;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/android/launcher3/allapps/model/AppsLoader$18;-><init>(Lcom/android/launcher3/allapps/model/AppsLoader;Ljava/util/ArrayList;ZZ)V

    .line 1404
    .local v0, "updateRunnable":Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/android/launcher3/allapps/model/AppsLoader;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 1405
    return-void
.end method

.method public bindItemsSync(ILcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V
    .locals 18
    .param p1, "synchronousBindPage"    # I
    .param p2, "task"    # Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;

    .prologue
    .line 598
    const-string v3, "AppsLoader"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "bindItemsSync : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v3, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 603
    .local v6, "appItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/allapps/model/AppsLoader;->getTopLevelItemsInApps()Ljava/util/ArrayList;

    move-result-object v11

    .line 604
    .local v11, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 605
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/model/AppsLoader;->setup(Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V

    .line 611
    :goto_0
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher3/allapps/model/AppsLoader;->mTotalPageNumber:I

    .line 612
    .local v13, "oldPageNumber":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/allapps/model/AppsLoader;->getCurrentComparator()Lcom/android/launcher3/allapps/controller/Normalizer;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/allapps/model/AppsLoader;->getTopLevelItemsInApps()Ljava/util/ArrayList;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/allapps/model/AppsLoader;->mMaxItemsPerPage:I

    move/from16 v16, v0

    sget v17, Lcom/android/launcher3/allapps/model/AppsLoader;->mCellCountX:I

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v3, v15, v0, v1}, Lcom/android/launcher3/allapps/controller/Normalizer;->normalize(Ljava/util/ArrayList;II)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/launcher3/allapps/model/AppsLoader;->mTotalPageNumber:I

    .line 614
    const-string v3, "AppsLoader"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "bindItemsSync mTotalPageNumber : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/allapps/model/AppsLoader;->mTotalPageNumber:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " , oldPageNumber : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v3, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/allapps/model/AppsLoader;->getTopLevelItemsInApps()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 618
    const/16 v3, -0x3e9

    move/from16 v0, p1

    if-eq v0, v3, :cond_2

    const/4 v10, 0x1

    .line 619
    .local v10, "isLoadingSynchronously":Z
    :goto_1
    if-eqz v10, :cond_3

    move/from16 v2, p1

    .line 620
    .local v2, "currScreen":I
    :goto_2
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher3/allapps/model/AppsLoader;->mTotalPageNumber:I

    if-lt v2, v3, :cond_0

    .line 621
    const/16 v2, -0x3e9

    .line 623
    :cond_0
    move v9, v2

    .line 624
    .local v9, "currentScreen":I
    if-gez v9, :cond_4

    const-wide/16 v4, -0x1

    .line 626
    .local v4, "currentScreenId":J
    :goto_3
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 627
    .local v7, "currentScreenItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .local v8, "otherScreenItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    move-object/from16 v3, p0

    .line 628
    invoke-virtual/range {v3 .. v8}, Lcom/android/launcher3/allapps/model/AppsLoader;->filterCurrentPageItems(JLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 629
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v7, v3, v1}, Lcom/android/launcher3/allapps/model/AppsLoader;->bindPageItems(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V

    .line 631
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/allapps/model/AppsLoader;->clearDeferredBindRunnable()V

    .line 632
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/allapps/model/AppsLoader;->mDeferredBindRunnables:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v8, v3, v1}, Lcom/android/launcher3/allapps/model/AppsLoader;->bindPageItems(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V

    .line 634
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/allapps/model/AppsLoader;->getCallback()Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;

    move-result-object v12

    .line 635
    .local v12, "oldCallbacks":Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;
    if-nez v12, :cond_5

    .line 636
    const-string v3, "AppsLoader"

    const-string v15, "bindItemsSync running with no AppsCallbacks"

    invoke-static {v3, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    :goto_4
    return-void

    .line 607
    .end local v2    # "currScreen":I
    .end local v4    # "currentScreenId":J
    .end local v7    # "currentScreenItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .end local v8    # "otherScreenItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .end local v9    # "currentScreen":I
    .end local v10    # "isLoadingSynchronously":Z
    .end local v12    # "oldCallbacks":Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;
    .end local v13    # "oldPageNumber":I
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/allapps/model/AppsLoader;->unbindItemsOnMainThread()V

    .line 608
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/allapps/model/AppsLoader;->setupGridInfo()V

    goto/16 :goto_0

    .line 618
    .restart local v13    # "oldPageNumber":I
    :cond_2
    const/4 v10, 0x0

    goto :goto_1

    .line 619
    .restart local v10    # "isLoadingSynchronously":Z
    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    .line 624
    .restart local v2    # "currScreen":I
    .restart local v9    # "currentScreen":I
    :cond_4
    int-to-long v4, v9

    goto :goto_3

    .line 639
    .restart local v4    # "currentScreenId":J
    .restart local v7    # "currentScreenItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .restart local v8    # "otherScreenItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .restart local v12    # "oldCallbacks":Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;
    :cond_5
    new-instance v14, Lcom/android/launcher3/allapps/model/AppsLoader$9;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v14, v0, v12, v1}, Lcom/android/launcher3/allapps/model/AppsLoader$9;-><init>(Lcom/android/launcher3/allapps/model/AppsLoader;Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V

    .line 647
    .local v14, "r":Ljava/lang/Runnable;
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/launcher3/allapps/model/AppsLoader;->addDeferredBindRunnable(Ljava/lang/Runnable;)V

    goto :goto_4
.end method

.method public bindPageItems(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V
    .locals 19
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
    .line 501
    .local p1, "pageItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .local p2, "deferredBindRunnables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Runnable;>;"
    const-string v3, "AppsLoader"

    const-string v5, "bindPageItems "

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/model/AppsLoader;->isStopped(Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 504
    :cond_0
    const-string v5, "AppsLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "bindPageItems page item is null or empty!:"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-nez p3, :cond_2

    const-string v3, "task null"

    .line 505
    :goto_0
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 504
    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    :cond_1
    :goto_1
    return-void

    .line 505
    :cond_2
    invoke-interface/range {p3 .. p3}, Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;->isStopped()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0

    .line 509
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/allapps/model/AppsLoader;->getCallback()Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;

    move-result-object v4

    .line 510
    .local v4, "oldCallbacks":Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;
    if-nez v4, :cond_4

    .line 511
    const-string v3, "AppsLoader"

    const-string v5, "bindPageItems running with no AppsCallbacks"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 515
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/launcher3/allapps/model/AppsLoader;->mIsFirstBind:Z

    if-eqz v3, :cond_5

    .line 516
    new-instance v2, Lcom/android/launcher3/allapps/model/AppsLoader$6;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v2, v0, v4, v1}, Lcom/android/launcher3/allapps/model/AppsLoader$6;-><init>(Lcom/android/launcher3/allapps/model/AppsLoader;Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V

    .line 524
    .local v2, "r":Ljava/lang/Runnable;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher3/allapps/model/AppsLoader;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 525
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/launcher3/allapps/model/AppsLoader;->mIsFirstBind:Z

    .line 528
    .end local v2    # "r":Ljava/lang/Runnable;
    :cond_5
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 529
    .local v6, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    const/16 v18, 0x0

    .line 530
    .local v18, "numHiddenItem":I
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 531
    .local v17, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/model/AppsLoader;->isStopped(Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 534
    move-object/from16 v0, v17

    iget v5, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    goto :goto_2

    .line 536
    :pswitch_1
    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 537
    move-object/from16 v0, v17

    iget v5, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->hidden:I

    if-eqz v5, :cond_6

    .line 538
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 542
    :pswitch_2
    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 548
    .end local v17    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_7
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 550
    .local v15, "appsSize":I
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_3
    move/from16 v0, v16

    if-ge v0, v15, :cond_a

    .line 551
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/model/AppsLoader;->isStopped(Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 554
    move/from16 v7, v16

    .line 555
    .local v7, "start":I
    add-int/lit8 v3, v16, 0x2

    if-gt v3, v15, :cond_8

    const/4 v8, 0x2

    .line 556
    .local v8, "chunkSize":I
    :goto_4
    new-instance v2, Lcom/android/launcher3/allapps/model/AppsLoader$7;

    move-object/from16 v3, p0

    move-object/from16 v5, p3

    invoke-direct/range {v2 .. v8}, Lcom/android/launcher3/allapps/model/AppsLoader$7;-><init>(Lcom/android/launcher3/allapps/model/AppsLoader;Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;Ljava/util/ArrayList;II)V

    .line 565
    .restart local v2    # "r":Ljava/lang/Runnable;
    if-eqz p2, :cond_9

    .line 566
    monitor-enter p2

    .line 567
    :try_start_0
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 568
    monitor-exit p2

    .line 550
    :goto_5
    add-int/lit8 v16, v16, 0x2

    goto :goto_3

    .line 555
    .end local v2    # "r":Ljava/lang/Runnable;
    .end local v8    # "chunkSize":I
    :cond_8
    sub-int v8, v15, v16

    goto :goto_4

    .line 568
    .restart local v2    # "r":Ljava/lang/Runnable;
    .restart local v8    # "chunkSize":I
    :catchall_0
    move-exception v3

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 570
    :cond_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher3/allapps/model/AppsLoader;->runOnMainThread(Ljava/lang/Runnable;)V

    goto :goto_5

    .line 574
    .end local v2    # "r":Ljava/lang/Runnable;
    .end local v7    # "start":I
    .end local v8    # "chunkSize":I
    :cond_a
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/model/AppsLoader;->isStopped(Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 575
    const/4 v3, 0x0

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-wide v10, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    long-to-int v13, v10

    .line 576
    .local v13, "page":I
    sub-int v14, v15, v18

    .line 577
    .local v14, "itemNum":I
    new-instance v2, Lcom/android/launcher3/allapps/model/AppsLoader$8;

    move-object v9, v2

    move-object/from16 v10, p0

    move-object v11, v4

    move-object/from16 v12, p3

    invoke-direct/range {v9 .. v14}, Lcom/android/launcher3/allapps/model/AppsLoader$8;-><init>(Lcom/android/launcher3/allapps/model/AppsLoader;Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;II)V

    .line 586
    .restart local v2    # "r":Ljava/lang/Runnable;
    if-eqz p2, :cond_b

    .line 587
    monitor-enter p2

    .line 588
    :try_start_1
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 589
    monitor-exit p2

    goto/16 :goto_1

    :catchall_1
    move-exception v3

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v3

    .line 591
    :cond_b
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher3/allapps/model/AppsLoader;->runOnMainThread(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    .line 534
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public bindRemainedItems(Ljava/util/ArrayList;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V
    .locals 9
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
    .line 673
    .local p1, "deferredBindRunnables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Runnable;>;"
    const-string v5, "AppsLoader"

    const-string v6, "bindRemainedItems "

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 676
    .local v3, "remainedItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 677
    .local v4, "remainedItemsInFolder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-direct {p0, v3, v4}, Lcom/android/launcher3/allapps/model/AppsLoader;->loadRemainedApps(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 678
    .local v0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 679
    :cond_0
    const-string v5, "AppsLoader"

    const-string v6, "bindRemainedItems page item is null or empty!"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    :cond_1
    :goto_0
    return-void

    .line 682
    :cond_2
    iget-object v5, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    invoke-virtual {v5, v0}, Lcom/android/launcher3/common/model/FavoritesUpdater;->addItems(Ljava/util/ArrayList;)V

    .line 686
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/model/AppsLoader;->updateDirtyItems()V

    .line 688
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/model/AppsLoader;->getCurrentComparator()Lcom/android/launcher3/allapps/controller/Normalizer;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/model/AppsLoader;->getTopLevelItemsInApps()Ljava/util/ArrayList;

    move-result-object v6

    iget v7, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->mMaxItemsPerPage:I

    sget v8, Lcom/android/launcher3/allapps/model/AppsLoader;->mCellCountX:I

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/launcher3/allapps/controller/Normalizer;->normalize(Ljava/util/ArrayList;II)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->mTotalPageNumber:I

    .line 690
    invoke-direct {p0}, Lcom/android/launcher3/allapps/model/AppsLoader;->getCallback()Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;

    move-result-object v1

    .line 691
    .local v1, "oldCallbacks":Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;
    if-nez v1, :cond_3

    .line 692
    const-string v5, "AppsLoader"

    const-string v6, "bindRemainedItems running with no AppsCallbacks"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 735
    :cond_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 736
    new-instance v2, Lcom/android/launcher3/allapps/model/AppsLoader$11;

    invoke-direct {v2, p0, v1, p2, v4}, Lcom/android/launcher3/allapps/model/AppsLoader$11;-><init>(Lcom/android/launcher3/allapps/model/AppsLoader;Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;Ljava/util/ArrayList;)V

    .line 744
    .local v2, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v2}, Lcom/android/launcher3/allapps/model/AppsLoader;->runOnMainThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public bindRemainingSynchronousPages()V
    .locals 6

    .prologue
    .line 1527
    iget-object v3, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->mDeferredBindRunnables:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1528
    const/4 v1, 0x0

    .line 1529
    .local v1, "deferredBindRunnables":[Ljava/lang/Runnable;
    iget-object v4, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->mDeferredBindRunnables:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1530
    :try_start_0
    iget-object v3, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->mDeferredBindRunnables:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->mDeferredBindRunnables:Ljava/util/ArrayList;

    .line 1531
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/Runnable;

    .line 1530
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, [Ljava/lang/Runnable;

    move-object v1, v0

    .line 1532
    iget-object v3, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->mDeferredBindRunnables:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1533
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1534
    array-length v4, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v2, v1, v3

    .line 1535
    .local v2, "r":Ljava/lang/Runnable;
    sget-object v5, Lcom/android/launcher3/allapps/model/AppsLoader;->sHandler:Lcom/android/launcher3/common/model/DeferredHandler;

    invoke-virtual {v5, v2}, Lcom/android/launcher3/common/model/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1534
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1533
    .end local v2    # "r":Ljava/lang/Runnable;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 1538
    .end local v1    # "deferredBindRunnables":[Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method protected clearSBgDataStructures()V
    .locals 1

    .prologue
    .line 819
    iget-object v0, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->mBgDuplicateCheckList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 820
    invoke-direct {p0}, Lcom/android/launcher3/allapps/model/AppsLoader;->appFolderInfoClear()V

    .line 821
    return-void
.end method

.method public containPagesItem(Lcom/android/launcher3/common/base/item/ItemInfo;)Z
    .locals 1
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 1648
    const/4 v0, 0x0

    return v0
.end method

.method public dumpTopLevelItemsCount()V
    .locals 1

    .prologue
    .line 2152
    new-instance v0, Lcom/android/launcher3/allapps/model/AppsLoader$28;

    invoke-direct {v0, p0}, Lcom/android/launcher3/allapps/model/AppsLoader$28;-><init>(Lcom/android/launcher3/allapps/model/AppsLoader;)V

    .line 2158
    .local v0, "r":Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/android/launcher3/allapps/model/AppsLoader;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 2159
    return-void
.end method

.method public filterCurrentPageItems(JLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 8
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
    .line 785
    .local p3, "allItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .local p4, "currentScreenItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .local p5, "otherScreenItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 786
    .local v3, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 787
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 788
    .local v0, "i":Lcom/android/launcher3/common/base/item/ItemInfo;
    if-nez v0, :cond_0

    .line 789
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 796
    .end local v0    # "i":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_1
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 797
    .local v2, "itemsOnScreen":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    new-instance v4, Lcom/android/launcher3/allapps/model/AppsLoader$14;

    invoke-direct {v4, p0}, Lcom/android/launcher3/allapps/model/AppsLoader$14;-><init>(Lcom/android/launcher3/allapps/model/AppsLoader;)V

    invoke-static {p3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 803
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 804
    .local v1, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-wide v6, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 805
    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 806
    iget-wide v6, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 808
    :cond_2
    invoke-virtual {p5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 811
    .end local v1    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_3
    return-void
.end method

.method public findFolderById(Ljava/lang/Long;)Lcom/android/launcher3/folder/FolderInfo;
    .locals 4
    .param p1, "folderId"    # Ljava/lang/Long;

    .prologue
    .line 2109
    sget-object v1, Lcom/android/launcher3/allapps/model/AppsLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2110
    :try_start_0
    sget-object v0, Lcom/android/launcher3/allapps/model/AppsLoader;->sBgFolders:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/folder/FolderInfo;

    monitor-exit v1

    return-object v0

    .line 2111
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public finishBind(Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V
    .locals 4
    .param p1, "task"    # Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;

    .prologue
    .line 750
    invoke-direct {p0}, Lcom/android/launcher3/allapps/model/AppsLoader;->getCallback()Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;

    move-result-object v0

    .line 751
    .local v0, "oldCallbacks":Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;
    if-nez v0, :cond_0

    .line 752
    const-string v2, "AppsLoader"

    const-string v3, "finishBind running with no AppsCallbacks"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    :goto_0
    return-void

    .line 756
    :cond_0
    new-instance v2, Lcom/android/launcher3/allapps/model/AppsLoader$12;

    invoke-direct {v2, p0, p1}, Lcom/android/launcher3/allapps/model/AppsLoader$12;-><init>(Lcom/android/launcher3/allapps/model/AppsLoader;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V

    invoke-static {v2}, Lcom/android/launcher3/allapps/model/AppsLoader;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 768
    new-instance v1, Lcom/android/launcher3/allapps/model/AppsLoader$13;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/launcher3/allapps/model/AppsLoader$13;-><init>(Lcom/android/launcher3/allapps/model/AppsLoader;Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V

    .line 776
    .local v1, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v1}, Lcom/android/launcher3/allapps/model/AppsLoader;->runOnMainThread(Ljava/lang/Runnable;)V

    goto :goto_0
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

    .line 1813
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1814
    .local v0, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1815
    .local v1, "folderIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    sget-object v5, Lcom/android/launcher3/allapps/model/AppsLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1816
    :try_start_0
    sget-object v4, Lcom/android/launcher3/allapps/model/AppsLoader;->sBgFolders:Lcom/android/launcher3/util/LongArrayMap;

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

    .line 1817
    .local v2, "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    iget-wide v6, v2, Lcom/android/launcher3/folder/FolderInfo;->container:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    .line 1818
    iget-wide v6, v2, Lcom/android/launcher3/folder/FolderInfo;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1827
    .end local v2    # "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 1820
    :cond_1
    :try_start_1
    sget-object v4, Lcom/android/launcher3/allapps/model/AppsLoader;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

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

    .line 1821
    .local v3, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget v6, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    if-nez v6, :cond_2

    iget-wide v6, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_3

    iget-wide v6, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    .line 1823
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1824
    :cond_3
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1827
    .end local v3    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_4
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1828
    return-object v0
.end method

.method public getAllAppItemListInHome()Ljava/util/ArrayList;
    .locals 12
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
    const-wide/16 v10, -0x64

    const-wide/16 v8, -0x65

    .line 1863
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1864
    .local v0, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1865
    .local v1, "folderIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    sget-object v5, Lcom/android/launcher3/allapps/model/AppsLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1866
    :try_start_0
    sget-object v4, Lcom/android/launcher3/allapps/model/AppsLoader;->sBgFolders:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v4}, Lcom/android/launcher3/util/LongArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/folder/FolderInfo;

    .line 1867
    .local v2, "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    iget-wide v6, v2, Lcom/android/launcher3/folder/FolderInfo;->container:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_1

    iget-wide v6, v2, Lcom/android/launcher3/folder/FolderInfo;->container:J

    cmp-long v6, v6, v10

    if-nez v6, :cond_0

    .line 1869
    :cond_1
    iget-wide v6, v2, Lcom/android/launcher3/folder/FolderInfo;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1884
    .end local v2    # "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 1871
    :cond_2
    :try_start_1
    sget-object v4, Lcom/android/launcher3/allapps/model/AppsLoader;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v4}, Lcom/android/launcher3/util/LongArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 1872
    .local v3, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget v6, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    if-nez v6, :cond_4

    iget-wide v6, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_5

    iget-wide v6, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    cmp-long v6, v6, v10

    if-eqz v6, :cond_5

    :cond_4
    iget-wide v6, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    .line 1875
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1876
    :cond_5
    iget-object v6, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    if-nez v6, :cond_6

    .line 1877
    invoke-virtual {v3}, Lcom/android/launcher3/common/base/item/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    iput-object v6, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    .line 1878
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1880
    :cond_6
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1884
    .end local v3    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_7
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1885
    return-object v0
.end method

.method public getCurrentComparator()Lcom/android/launcher3/allapps/controller/Normalizer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/launcher3/allapps/controller/Normalizer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1313
    iget-object v0, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->mNormalizer:Lcom/android/launcher3/allapps/controller/Normalizer;

    return-object v0
.end method

.method public getDirtyItems()Ljava/util/ArrayList;
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
    const/4 v8, 0x0

    .line 1555
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1556
    .local v4, "updateList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/model/AppsLoader;->getTopLevelItemsInApps()Ljava/util/ArrayList;

    move-result-object v3

    .line 1557
    .local v3, "topLevelItemsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 1558
    .local v2, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-boolean v6, v2, Lcom/android/launcher3/common/base/item/ItemInfo;->mDirty:Z

    if-eqz v6, :cond_1

    .line 1559
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1560
    iput-boolean v8, v2, Lcom/android/launcher3/common/base/item/ItemInfo;->mDirty:Z

    .line 1563
    :cond_1
    instance-of v6, v2, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v6, :cond_0

    move-object v1, v2

    .line 1564
    check-cast v1, Lcom/android/launcher3/folder/FolderInfo;

    .line 1565
    .local v1, "fInfo":Lcom/android/launcher3/folder/FolderInfo;
    iget-object v6, v1, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 1566
    .local v0, "child":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-boolean v7, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->mDirty:Z

    if-eqz v7, :cond_2

    .line 1567
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1568
    iput-boolean v8, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->mDirty:Z

    goto :goto_0

    .line 1574
    .end local v0    # "child":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v1    # "fInfo":Lcom/android/launcher3/folder/FolderInfo;
    .end local v2    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_3
    return-object v4
.end method

.method protected getDisabledItemInfo(Landroid/database/Cursor;Landroid/content/ComponentName;Landroid/content/Intent;Lcom/android/launcher3/common/model/CursorInfo;)Lcom/android/launcher3/common/base/item/IconInfo;
    .locals 5
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "cn"    # Landroid/content/ComponentName;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "iconInfo"    # Lcom/android/launcher3/common/model/CursorInfo;

    .prologue
    .line 1086
    new-instance v1, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-direct {v1}, Lcom/android/launcher3/common/base/item/IconInfo;-><init>()V

    .line 1087
    .local v1, "info":Lcom/android/launcher3/common/base/item/IconInfo;
    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v2

    iput-object v2, v1, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    .line 1088
    sget-object v2, Lcom/android/launcher3/allapps/model/AppsLoader;->sContext:Landroid/content/Context;

    invoke-virtual {p4, p1, v1, v2}, Lcom/android/launcher3/common/model/CursorInfo;->loadIcon(Landroid/database/Cursor;Lcom/android/launcher3/common/base/item/IconInfo;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1089
    .local v0, "icon":Landroid/graphics/Bitmap;
    const/4 v2, 0x2

    iput v2, v1, Lcom/android/launcher3/common/base/item/IconInfo;->isDisabled:I

    .line 1090
    sget-object v2, Lcom/android/launcher3/allapps/model/AppsLoader;->sContext:Landroid/content/Context;

    invoke-static {v2, p3}, Lcom/android/launcher3/Utilities;->isSystemApp(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1091
    const/4 v2, 0x1

    iput v2, v1, Lcom/android/launcher3/common/base/item/IconInfo;->flags:I

    .line 1092
    sget-boolean v2, Lcom/android/launcher3/allapps/model/AppsLoader;->sIsSafeMode:Z

    if-eqz v2, :cond_0

    .line 1093
    iget v2, v1, Lcom/android/launcher3/common/base/item/IconInfo;->isDisabled:I

    or-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/launcher3/common/base/item/IconInfo;->isDisabled:I

    .line 1098
    :cond_0
    if-nez v0, :cond_2

    .line 1099
    sget-object v2, Lcom/android/launcher3/allapps/model/AppsLoader;->sIconCache:Lcom/android/launcher3/common/model/IconCache;

    iget-object v3, v1, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    const/4 v4, 0x0

    invoke-virtual {v2, v1, p3, v3, v4}, Lcom/android/launcher3/common/model/IconCache;->getTitleAndIcon(Lcom/android/launcher3/common/base/item/IconInfo;Landroid/content/Intent;Lcom/android/launcher3/common/compat/UserHandleCompat;Z)V

    .line 1105
    :goto_0
    iget-object v2, v1, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    if-nez v2, :cond_1

    .line 1106
    const-string v2, ""

    iput-object v2, v1, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    .line 1108
    :cond_1
    iput-object p3, v1, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    .line 1109
    iput-object p2, v1, Lcom/android/launcher3/common/base/item/IconInfo;->componentName:Landroid/content/ComponentName;

    .line 1110
    sget-object v2, Lcom/android/launcher3/allapps/model/AppsLoader;->sUserManager:Lcom/android/launcher3/common/compat/UserManagerCompat;

    iget-object v3, v1, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    iget-object v4, v1, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getBadgedLabelForUser(Ljava/lang/CharSequence;Lcom/android/launcher3/common/compat/UserHandleCompat;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v1, Lcom/android/launcher3/common/base/item/IconInfo;->contentDescription:Ljava/lang/CharSequence;

    .line 1111
    iget v2, p4, Lcom/android/launcher3/common/model/CursorInfo;->itemTypeIndex:I

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcom/android/launcher3/common/base/item/IconInfo;->itemType:I

    .line 1113
    return-object v1

    .line 1101
    :cond_2
    invoke-virtual {v1, v0}, Lcom/android/launcher3/common/base/item/IconInfo;->setIcon(Landroid/graphics/Bitmap;)V

    .line 1102
    iget v2, p4, Lcom/android/launcher3/common/model/CursorInfo;->titleIndex:I

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher3/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public getItemById(J)Lcom/android/launcher3/common/base/item/ItemInfo;
    .locals 3
    .param p1, "key"    # J

    .prologue
    .line 2115
    sget-object v1, Lcom/android/launcher3/allapps/model/AppsLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2116
    :try_start_0
    sget-object v0, Lcom/android/launcher3/allapps/model/AppsLoader;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    monitor-exit v1

    return-object v0

    .line 2117
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getItemInfoInAppsForComponentName(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;Z)Lcom/android/launcher3/common/base/item/ItemInfo;
    .locals 5
    .param p1, "cName"    # Landroid/content/ComponentName;
    .param p2, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;
    .param p3, "exceptWidget"    # Z

    .prologue
    .line 1749
    new-instance v1, Lcom/android/launcher3/allapps/model/AppsLoader$25;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/launcher3/allapps/model/AppsLoader$25;-><init>(Lcom/android/launcher3/allapps/model/AppsLoader;Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    .line 1759
    .local v1, "filter":Lcom/android/launcher3/common/model/DataLoader$ItemInfoFilter;
    sget-object v3, Lcom/android/launcher3/allapps/model/AppsLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1760
    :try_start_0
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/model/AppsLoader;->getAllAppItemInApps()Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v2, v1, p3}, Lcom/android/launcher3/allapps/model/AppsLoader;->filterItemInfo(Ljava/lang/Iterable;Lcom/android/launcher3/common/model/DataLoader$ItemInfoFilter;Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 1761
    .local v0, "appInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x1

    if-le v2, v4, :cond_0

    .line 1762
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v4, "Duplicated app icons in Apps"

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1768
    .end local v0    # "appInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1763
    .restart local v0    # "appInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1764
    const/4 v2, 0x0

    monitor-exit v3

    .line 1766
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/item/ItemInfo;

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getLoaderStop()Z
    .locals 1

    .prologue
    .line 208
    sget-object v0, Lcom/android/launcher3/allapps/model/AppsLoader;->sLauncherModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->getLoaderTask()Lcom/android/launcher3/LauncherModel$LoaderTask;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/model/AppsLoader;->isStopped(Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)Z

    move-result v0

    return v0
.end method

.method public getMaxItemsPerPage()I
    .locals 1

    .prologue
    .line 1942
    iget v0, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->mMaxItemsPerPage:I

    return v0
.end method

.method protected getTemporaryItemInfo(Landroid/database/Cursor;Landroid/content/ComponentName;Landroid/content/Intent;Lcom/android/launcher3/common/model/CursorInfo;)Lcom/android/launcher3/common/base/item/IconInfo;
    .locals 8
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "cn"    # Landroid/content/ComponentName;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "cursorItemInfo"    # Lcom/android/launcher3/common/model/CursorInfo;

    .prologue
    const/4 v5, 0x0

    .line 1122
    new-instance v1, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-direct {v1}, Lcom/android/launcher3/common/base/item/IconInfo;-><init>()V

    .line 1124
    .local v1, "info":Lcom/android/launcher3/common/base/item/IconInfo;
    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v0

    iput-object v0, v1, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    .line 1126
    sget-object v0, Lcom/android/launcher3/allapps/model/AppsLoader;->sLauncherApps:Lcom/android/launcher3/common/compat/LauncherAppsCompat;

    iget-object v2, v1, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {v0, p3, v2}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->resolveActivity(Landroid/content/Intent;Lcom/android/launcher3/common/compat/UserHandleCompat;)Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;

    move-result-object v3

    .line 1127
    .local v3, "lai":Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    sget-object v0, Lcom/android/launcher3/allapps/model/AppsLoader;->sIconCache:Lcom/android/launcher3/common/model/IconCache;

    iget-object v4, v1, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-object v2, p2

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/common/model/IconCache;->getTitleAndIcon(Lcom/android/launcher3/common/base/item/IconInfo;Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;Lcom/android/launcher3/common/compat/UserHandleCompat;ZZ)V

    .line 1128
    sget-object v0, Lcom/android/launcher3/allapps/model/AppsLoader;->sIconCache:Lcom/android/launcher3/common/model/IconCache;

    sget-object v2, Lcom/android/launcher3/allapps/model/AppsLoader;->sIconCache:Lcom/android/launcher3/common/model/IconCache;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/common/base/item/IconInfo;->getIcon(Lcom/android/launcher3/common/model/IconCache;)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v4, v1, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {v0, v2, v4}, Lcom/android/launcher3/common/model/IconCache;->isDefaultIcon(Landroid/graphics/Bitmap;Lcom/android/launcher3/common/compat/UserHandleCompat;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 1129
    iget v0, p4, Lcom/android/launcher3/common/model/CursorInfo;->iconIndex:I

    sget-object v2, Lcom/android/launcher3/allapps/model/AppsLoader;->sContext:Landroid/content/Context;

    invoke-static {p1, v0, v2}, Lcom/android/launcher3/util/BitmapUtils;->createIconBitmap(Landroid/database/Cursor;ILandroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1130
    .local v7, "icon":Landroid/graphics/Bitmap;
    if-nez v7, :cond_0

    sget-object v0, Lcom/android/launcher3/allapps/model/AppsLoader;->sIconCache:Lcom/android/launcher3/common/model/IconCache;

    iget-object v2, v1, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/common/model/IconCache;->getDefaultIcon(Lcom/android/launcher3/common/compat/UserHandleCompat;)Landroid/graphics/Bitmap;

    move-result-object v7

    .end local v7    # "icon":Landroid/graphics/Bitmap;
    :cond_0
    invoke-virtual {v1, v7}, Lcom/android/launcher3/common/base/item/IconInfo;->setIcon(Landroid/graphics/Bitmap;)V

    .line 1134
    :cond_1
    iget-object v0, v1, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 1135
    iget v0, p4, Lcom/android/launcher3/common/model/CursorInfo;->titleIndex:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    .line 1139
    :cond_2
    iget-object v0, v1, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    if-nez v0, :cond_3

    .line 1140
    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    .line 1143
    :cond_3
    iget-object v0, v1, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    if-nez v0, :cond_4

    .line 1144
    const-string v0, ""

    iput-object v0, v1, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    .line 1146
    :cond_4
    iput-object p3, v1, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    .line 1147
    iput-object p2, v1, Lcom/android/launcher3/common/base/item/IconInfo;->componentName:Landroid/content/ComponentName;

    .line 1148
    sget-object v0, Lcom/android/launcher3/allapps/model/AppsLoader;->sUserManager:Lcom/android/launcher3/common/compat/UserManagerCompat;

    iget-object v2, v1, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    iget-object v4, v1, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {v0, v2, v4}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getBadgedLabelForUser(Ljava/lang/CharSequence;Lcom/android/launcher3/common/compat/UserHandleCompat;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v1, Lcom/android/launcher3/common/base/item/IconInfo;->contentDescription:Ljava/lang/CharSequence;

    .line 1150
    if-eqz p1, :cond_5

    .line 1151
    iget v0, p4, Lcom/android/launcher3/common/model/CursorInfo;->itemTypeIndex:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v1, Lcom/android/launcher3/common/base/item/IconInfo;->itemType:I

    .line 1154
    :cond_5
    return-object v1
.end method

.method public getTopLevelItemsFromNextPage(I)Ljava/util/ArrayList;
    .locals 8
    .param p1, "screen"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1834
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1835
    .local v0, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    sget-object v3, Lcom/android/launcher3/allapps/model/AppsLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1836
    :try_start_0
    sget-object v2, Lcom/android/launcher3/allapps/model/AppsLoader;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

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

    .line 1837
    .local v1, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-wide v4, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    int-to-long v6, p1

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    iget-wide v4, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v6, -0x66

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    iget v4, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->hidden:I

    if-nez v4, :cond_0

    .line 1839
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1842
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

    .line 1843
    return-object v0
.end method

.method public getTopLevelItemsFromOnPage(II)Ljava/util/ArrayList;
    .locals 8
    .param p1, "screen"    # I
    .param p2, "rank"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1850
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1851
    .local v0, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    sget-object v3, Lcom/android/launcher3/allapps/model/AppsLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1852
    :try_start_0
    sget-object v2, Lcom/android/launcher3/allapps/model/AppsLoader;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

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

    .line 1853
    .local v1, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-wide v4, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    int-to-long v6, p1

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    iget v4, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    if-lt v4, p2, :cond_0

    iget-wide v4, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v6, -0x66

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    iget v4, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->hidden:I

    if-nez v4, :cond_0

    .line 1855
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1858
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

    .line 1859
    return-object v0
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
    .line 1800
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1801
    .local v0, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    sget-object v3, Lcom/android/launcher3/allapps/model/AppsLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1802
    :try_start_0
    sget-object v2, Lcom/android/launcher3/allapps/model/AppsLoader;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

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

    .line 1803
    .local v1, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-wide v4, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v6, -0x66

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    iget v4, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->hidden:I

    if-nez v4, :cond_0

    .line 1804
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1807
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

    .line 1808
    return-object v0
.end method

.method public getTopLevelPageItemsInApps(I)Ljava/util/ArrayList;
    .locals 8
    .param p1, "page"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1772
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1773
    .local v0, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    sget-object v3, Lcom/android/launcher3/allapps/model/AppsLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1774
    :try_start_0
    sget-object v2, Lcom/android/launcher3/allapps/model/AppsLoader;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

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

    .line 1775
    .local v1, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-wide v4, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v6, -0x66

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    iget-wide v4, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    int-to-long v6, p1

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    iget v4, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->hidden:I

    if-nez v4, :cond_0

    .line 1777
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1780
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

    .line 1781
    return-object v0
.end method

.method public getTotalScreenInApps()J
    .locals 10

    .prologue
    .line 1785
    const-wide/16 v2, -0x1

    .line 1786
    .local v2, "screen":J
    sget-object v4, Lcom/android/launcher3/allapps/model/AppsLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1787
    :try_start_0
    sget-object v1, Lcom/android/launcher3/allapps/model/AppsLoader;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v1}, Lcom/android/launcher3/util/LongArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 1788
    .local v0, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-wide v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v8, -0x66

    cmp-long v5, v6, v8

    if-nez v5, :cond_0

    iget v5, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->hidden:I

    if-nez v5, :cond_0

    .line 1789
    iget-wide v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    cmp-long v5, v2, v6

    if-gez v5, :cond_0

    .line 1790
    iget-wide v2, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    goto :goto_0

    .line 1794
    .end local v0    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_1
    monitor-exit v4

    .line 1795
    return-wide v2

    .line 1794
    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getUpdater()Lcom/android/launcher3/common/model/DataUpdater;
    .locals 1

    .prologue
    .line 1628
    iget-object v0, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    return-object v0
.end method

.method public hideApps(Ljava/util/ArrayList;Z)V
    .locals 0
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
    .line 1352
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/allapps/model/AppsLoader;->updateHideItems(Ljava/util/ArrayList;Z)V

    .line 1353
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/model/AppsLoader;->updateDirtyItems()V

    .line 1354
    return-void
.end method

.method public loadAllAppsItemsFromDB(Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)I
    .locals 21
    .param p1, "task"    # Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;

    .prologue
    .line 302
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 303
    .local v19, "itemsToUpdate":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 304
    .local v10, "restoredRows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 307
    .local v11, "pageItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    sget-object v3, Lcom/android/launcher3/common/model/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    .line 308
    .local v3, "contentUri":Landroid/net/Uri;
    const/4 v4, 0x0

    .line 309
    .local v4, "projection":[Ljava/lang/String;
    const-string v5, "(container=?)"

    .line 310
    .local v5, "selection":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const/16 v7, -0x66

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    .line 312
    .local v6, "selectionArg":[Ljava/lang/String;
    sget-object v2, Lcom/android/launcher3/allapps/model/AppsLoader;->sContentResolver:Landroid/content/ContentResolver;

    const-string v7, "screen ASC, rank ASC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 313
    .local v8, "c":Landroid/database/Cursor;
    if-nez v8, :cond_0

    .line 314
    const/4 v2, 0x0

    .line 365
    :goto_0
    return v2

    .line 317
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-gtz v2, :cond_1

    .line 318
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 319
    const/4 v2, 0x0

    goto :goto_0

    .line 322
    :cond_1
    new-instance v9, Lcom/android/launcher3/common/model/CursorInfo;

    invoke-direct {v9, v8}, Lcom/android/launcher3/common/model/CursorInfo;-><init>(Landroid/database/Cursor;)V

    .line 323
    .local v9, "cursorInfo":Lcom/android/launcher3/common/model/CursorInfo;
    new-instance v12, Lcom/android/launcher3/util/LongArrayMap;

    invoke-direct {v12}, Lcom/android/launcher3/util/LongArrayMap;-><init>()V

    .local v12, "folders":Lcom/android/launcher3/util/LongArrayMap;, "Lcom/android/launcher3/util/LongArrayMap<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    move-object/from16 v7, p0

    move-object/from16 v13, p1

    .line 325
    :try_start_0
    invoke-direct/range {v7 .. v13}, Lcom/android/launcher3/allapps/model/AppsLoader;->createItems(Landroid/database/Cursor;Lcom/android/launcher3/common/model/CursorInfo;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/launcher3/util/LongArrayMap;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 327
    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_2

    .line 328
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 332
    :cond_2
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher3/allapps/model/AppsLoader;->isStopped(Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 333
    const/4 v2, 0x0

    goto :goto_0

    .line 327
    :catchall_0
    move-exception v2

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    if-nez v7, :cond_3

    .line 328
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v2

    .line 336
    :cond_4
    if-eqz v12, :cond_6

    invoke-virtual {v12}, Lcom/android/launcher3/util/LongArrayMap;->size()I

    move-result v2

    if-lez v2, :cond_6

    .line 337
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "container in ("

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/launcher3/allapps/model/AppsLoader;->makeFoldersIdToString(Lcom/android/launcher3/util/LongArrayMap;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v7, 0x29

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 338
    sget-object v13, Lcom/android/launcher3/allapps/model/AppsLoader;->sContentResolver:Landroid/content/ContentResolver;

    const/16 v17, 0x0

    const-string v18, "rank ASC"

    move-object v14, v3

    move-object v15, v4

    move-object/from16 v16, v5

    invoke-virtual/range {v13 .. v18}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 339
    if-nez v8, :cond_5

    .line 340
    const/4 v2, 0x0

    goto :goto_0

    .line 343
    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v8, v9, v10, v1}, Lcom/android/launcher3/allapps/model/AppsLoader;->createItemsInFolder(Landroid/database/Cursor;Lcom/android/launcher3/common/model/CursorInfo;Ljava/util/ArrayList;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 345
    if-eqz v8, :cond_6

    .line 346
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 351
    :cond_6
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher3/allapps/model/AppsLoader;->isStopped(Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 352
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 345
    :catchall_1
    move-exception v2

    if-eqz v8, :cond_7

    .line 346
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v2

    .line 355
    :cond_8
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_9

    .line 357
    new-instance v20, Landroid/content/ContentValues;

    invoke-direct/range {v20 .. v20}, Landroid/content/ContentValues;-><init>()V

    .line 358
    .local v20, "values":Landroid/content/ContentValues;
    const-string v2, "restored"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 359
    sget-object v2, Lcom/android/launcher3/allapps/model/AppsLoader;->sContentResolver:Landroid/content/ContentResolver;

    sget-object v7, Lcom/android/launcher3/common/model/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const-string v13, "_id"

    .line 360
    invoke-static {v13, v10}, Lcom/android/launcher3/Utilities;->createDbSelectionQuery(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    .line 359
    move-object/from16 v0, v20

    invoke-virtual {v2, v7, v0, v13, v14}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 364
    .end local v20    # "values":Landroid/content/ContentValues;
    :cond_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/launcher3/allapps/model/AppsLoader;->sortItemsInFolder(Lcom/android/launcher3/util/LongArrayMap;)V

    .line 365
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/allapps/model/AppsLoader;->getCurrentComparator()Lcom/android/launcher3/allapps/controller/Normalizer;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/allapps/model/AppsLoader;->getTopLevelItemsInApps()Ljava/util/ArrayList;

    move-result-object v7

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher3/allapps/model/AppsLoader;->mMaxItemsPerPage:I

    sget v14, Lcom/android/launcher3/allapps/model/AppsLoader;->mCellCountX:I

    invoke-virtual {v2, v7, v13, v14}, Lcom/android/launcher3/allapps/controller/Normalizer;->normalize(Ljava/util/ArrayList;II)I

    move-result v2

    goto/16 :goto_0
.end method

.method public loadDefaultLayout(Lcom/android/launcher3/common/model/AutoInstallsLayout;ZZ)V
    .locals 6
    .param p1, "autoInstallLayout"    # Lcom/android/launcher3/common/model/AutoInstallsLayout;
    .param p2, "isSwitchedDb"    # Z
    .param p3, "reloadPostPosition"    # Z

    .prologue
    .line 1195
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1196
    const-string v1, "AppsLoader"

    const-string v2, "current mode is home only mode. skip loadDefaultLayout"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    :goto_0
    return-void

    .line 1199
    :cond_0
    const/4 v0, 0x0

    .line 1200
    .local v0, "appsParser":Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;
    if-eqz p1, :cond_1

    .line 1201
    const-string v1, "AppsLoader"

    const-string v2, "use auto install layout for apps"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    invoke-virtual {p1}, Lcom/android/launcher3/common/model/AutoInstallsLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 1203
    .local v4, "res":Landroid/content/res/Resources;
    const-string v1, "default_application_order"

    const-string v2, "xml"

    invoke-virtual {p1}, Lcom/android/launcher3/common/model/AutoInstallsLayout;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 1205
    .local v5, "appOrderResId":I
    if-eqz v5, :cond_3

    .line 1206
    new-instance v0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;

    .end local v0    # "appsParser":Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;
    sget-object v1, Lcom/android/launcher3/allapps/model/AppsLoader;->sContext:Landroid/content/Context;

    const/4 v2, 0x0

    sget-object v3, Lcom/android/launcher3/allapps/model/AppsLoader;->sFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;-><init>(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/android/launcher3/common/model/DefaultLayoutParser$LayoutParserCallback;Landroid/content/res/Resources;I)V

    .line 1212
    .end local v4    # "res":Landroid/content/res/Resources;
    .end local v5    # "appOrderResId":I
    .restart local v0    # "appsParser":Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;
    :cond_1
    :goto_1
    if-nez v0, :cond_2

    .line 1213
    invoke-direct {p0}, Lcom/android/launcher3/allapps/model/AppsLoader;->getDefaultLayoutParser()Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;

    move-result-object v0

    .line 1216
    :cond_2
    invoke-virtual {v0, p3}, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->setReloadPostPosition(Z)V

    .line 1217
    sget-object v1, Lcom/android/launcher3/allapps/model/AppsLoader;->sFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/common/model/FavoritesProvider;->loadAppsFavorites(Lcom/android/launcher3/common/model/DefaultLayoutParser;)I

    goto :goto_0

    .line 1208
    .restart local v4    # "res":Landroid/content/res/Resources;
    .restart local v5    # "appOrderResId":I
    :cond_3
    const-string v1, "AppsLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "default_application_order layout not found in package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/launcher3/common/model/AutoInstallsLayout;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public loadDefaultLayoutCompleted()V
    .locals 0

    .prologue
    .line 1222
    return-void
.end method

.method public loadPageItems(ILcom/android/launcher3/common/model/DataLoader$DataLoaderState;)Ljava/util/ArrayList;
    .locals 4
    .param p1, "page"    # I
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
    .line 287
    const-string v1, "AppsLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadPageItems: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    if-gez p1, :cond_0

    .line 289
    const/4 p1, 0x0

    .line 292
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/model/AppsLoader;->getTopLevelPageItemsInApps(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 293
    .local v0, "pageItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    iget-object v1, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->mIsPageLoaded:[Z

    array-length v1, v1

    if-ge p1, v1, :cond_1

    .line 294
    iget-object v1, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->mIsPageLoaded:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, p1

    .line 296
    :cond_1
    return-object v0
.end method

.method protected putItemToIdMap(Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 4
    .param p1, "info"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 2099
    invoke-super {p0, p1}, Lcom/android/launcher3/common/model/DataLoader;->putItemToIdMap(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 2100
    instance-of v0, p1, Lcom/android/launcher3/folder/FolderInfo;

    if-nez v0, :cond_0

    .line 2101
    iget-object v0, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->mAllAppsComponentKey:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/launcher3/util/ComponentKey;

    iget-object v2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    iget-object v3, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-direct {v1, v2, v3}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2103
    :cond_0
    return-void
.end method

.method public registerCallbacks(Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;)V
    .locals 2
    .param p1, "callbacks"    # Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;

    .prologue
    .line 218
    iget-object v1, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 219
    :try_start_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->mCallbacks:Ljava/lang/ref/WeakReference;

    .line 220
    monitor-exit v1

    .line 221
    return-void

    .line 220
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public reloadPositionAllAppsItemsFromDB(Z)V
    .locals 21
    .param p1, "withFolderContents"    # Z

    .prologue
    .line 1947
    sget-object v3, Lcom/android/launcher3/common/model/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    .line 1948
    .local v3, "contentUri":Landroid/net/Uri;
    const/4 v4, 0x0

    .line 1949
    .local v4, "projection":[Ljava/lang/String;
    const-string v5, "(container=?)"

    .line 1950
    .local v5, "selection":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const/16 v7, -0x66

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    .line 1952
    .local v6, "selectionArg":[Ljava/lang/String;
    sget-object v2, Lcom/android/launcher3/allapps/model/AppsLoader;->sContentResolver:Landroid/content/ContentResolver;

    const-string v7, "rank ASC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 1953
    .local v13, "c":Landroid/database/Cursor;
    if-nez v13, :cond_1

    .line 2023
    :cond_0
    :goto_0
    return-void

    .line 1957
    :cond_1
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-gtz v2, :cond_2

    .line 1958
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1962
    :cond_2
    new-instance v14, Lcom/android/launcher3/common/model/CursorInfo;

    invoke-direct {v14, v13}, Lcom/android/launcher3/common/model/CursorInfo;-><init>(Landroid/database/Cursor;)V

    .line 1963
    .local v14, "cursorInfo":Lcom/android/launcher3/common/model/CursorInfo;
    new-instance v15, Lcom/android/launcher3/util/LongArrayMap;

    invoke-direct {v15}, Lcom/android/launcher3/util/LongArrayMap;-><init>()V

    .line 1965
    .local v15, "folders":Lcom/android/launcher3/util/LongArrayMap;, "Lcom/android/launcher3/util/LongArrayMap<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    :cond_3
    :goto_1
    :try_start_0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1966
    iget v2, v14, Lcom/android/launcher3/common/model/CursorInfo;->idIndex:I

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 1967
    .local v16, "id":J
    iget v2, v14, Lcom/android/launcher3/common/model/CursorInfo;->screenIndex:I

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 1968
    .local v20, "screenId":I
    iget v2, v14, Lcom/android/launcher3/common/model/CursorInfo;->rankIndex:I

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 1969
    .local v19, "rank":I
    const/16 v18, 0x0

    .line 1970
    .local v18, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    sget-object v7, Lcom/android/launcher3/allapps/model/AppsLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1971
    :try_start_1
    sget-object v2, Lcom/android/launcher3/allapps/model/AppsLoader;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    move-object/from16 v18, v0

    .line 1972
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1973
    if-eqz v18, :cond_5

    .line 1974
    move/from16 v0, v20

    int-to-long v8, v0

    :try_start_2
    move-object/from16 v0, v18

    iput-wide v8, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    .line 1975
    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    .line 1976
    if-eqz p1, :cond_3

    move-object/from16 v0, v18

    instance-of v2, v0, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v2, :cond_3

    .line 1977
    move-object/from16 v0, v18

    iget-wide v8, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    move-object/from16 v0, v18

    invoke-virtual {v15, v8, v9, v0}, Lcom/android/launcher3/util/LongArrayMap;->put(JLjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1985
    .end local v16    # "id":J
    .end local v18    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v19    # "rank":I
    .end local v20    # "screenId":I
    :catchall_0
    move-exception v2

    invoke-interface {v13}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    if-nez v7, :cond_4

    .line 1986
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v2

    .line 1972
    .restart local v16    # "id":J
    .restart local v18    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    .restart local v19    # "rank":I
    .restart local v20    # "screenId":I
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v2

    .line 1980
    :cond_5
    const-string v2, "AppsLoader"

    const-string v7, "no item in sBgItemsIdMap"

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 1985
    .end local v16    # "id":J
    .end local v18    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v19    # "rank":I
    .end local v20    # "screenId":I
    :cond_6
    invoke-interface {v13}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_7

    .line 1986
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 1990
    :cond_7
    invoke-virtual {v15}, Lcom/android/launcher3/util/LongArrayMap;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 1991
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "container in ("

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/launcher3/allapps/model/AppsLoader;->makeFoldersIdToString(Lcom/android/launcher3/util/LongArrayMap;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v7, 0x29

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1992
    sget-object v7, Lcom/android/launcher3/allapps/model/AppsLoader;->sContentResolver:Landroid/content/ContentResolver;

    const/4 v11, 0x0

    const-string v12, "rank ASC"

    move-object v8, v3

    move-object v9, v4

    move-object v10, v5

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 1993
    if-eqz v13, :cond_0

    .line 1997
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-gtz v2, :cond_8

    .line 1998
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 2003
    :cond_8
    :goto_2
    :try_start_5
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 2004
    iget v2, v14, Lcom/android/launcher3/common/model/CursorInfo;->idIndex:I

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 2005
    .restart local v16    # "id":J
    iget v2, v14, Lcom/android/launcher3/common/model/CursorInfo;->rankIndex:I

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 2006
    .restart local v19    # "rank":I
    const/16 v18, 0x0

    .line 2007
    .restart local v18    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    sget-object v7, Lcom/android/launcher3/allapps/model/AppsLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 2008
    :try_start_6
    sget-object v2, Lcom/android/launcher3/allapps/model/AppsLoader;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    move-object/from16 v18, v0

    .line 2009
    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 2010
    if-eqz v18, :cond_a

    .line 2011
    :try_start_7
    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_2

    .line 2018
    .end local v16    # "id":J
    .end local v18    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v19    # "rank":I
    :catchall_2
    move-exception v2

    if-eqz v13, :cond_9

    .line 2019
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v2

    .line 2009
    .restart local v16    # "id":J
    .restart local v18    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    .restart local v19    # "rank":I
    :catchall_3
    move-exception v2

    :try_start_8
    monitor-exit v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :try_start_9
    throw v2

    .line 2013
    :cond_a
    const-string v2, "AppsLoader"

    const-string v7, "no item in sBgItemsIdMap for folder"

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_2

    .line 2018
    .end local v16    # "id":J
    .end local v18    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v19    # "rank":I
    :cond_b
    if-eqz v13, :cond_0

    .line 2019
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method public reloadPositionFromDB(Lcom/android/launcher3/common/base/item/ItemInfo;)Lcom/android/launcher3/common/base/item/ItemInfo;
    .locals 12
    .param p1, "iteminfo"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    const/4 v5, 0x0

    .line 2027
    new-instance v8, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-direct {v8}, Lcom/android/launcher3/common/base/item/ItemInfo;-><init>()V

    .line 2028
    .local v8, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    invoke-virtual {v8, p1}, Lcom/android/launcher3/common/base/item/ItemInfo;->copyFrom(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 2029
    sget-object v1, Lcom/android/launcher3/common/model/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    .line 2030
    .local v1, "contentUri":Landroid/net/Uri;
    const/4 v2, 0x0

    .line 2031
    .local v2, "projection":[Ljava/lang/String;
    const-string v3, "(_id=?)"

    .line 2032
    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-wide v10, v8, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v0

    .line 2034
    .local v4, "selectionArg":[Ljava/lang/String;
    sget-object v0, Lcom/android/launcher3/allapps/model/AppsLoader;->sContentResolver:Landroid/content/ContentResolver;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2035
    .local v6, "c":Landroid/database/Cursor;
    if-nez v6, :cond_1

    move-object v8, v5

    .line 2057
    .end local v8    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_0
    :goto_0
    return-object v8

    .line 2039
    .restart local v8    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_2

    .line 2040
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2044
    :cond_2
    new-instance v7, Lcom/android/launcher3/common/model/CursorInfo;

    invoke-direct {v7, v6}, Lcom/android/launcher3/common/model/CursorInfo;-><init>(Landroid/database/Cursor;)V

    .line 2046
    .local v7, "cursorInfo":Lcom/android/launcher3/common/model/CursorInfo;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2047
    iget v0, v7, Lcom/android/launcher3/common/model/CursorInfo;->screenIndex:I

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v10, v0

    iput-wide v10, v8, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    .line 2048
    iget v0, v7, Lcom/android/launcher3/common/model/CursorInfo;->rankIndex:I

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v8, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    .line 2049
    iget v0, v7, Lcom/android/launcher3/common/model/CursorInfo;->cellXIndex:I

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v8, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    .line 2050
    iget v0, v7, Lcom/android/launcher3/common/model/CursorInfo;->cellYIndex:I

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v8, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2053
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2054
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2053
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_4

    .line 2054
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public removeCloneItem(Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V
    .locals 11
    .param p1, "task"    # Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;

    .prologue
    const/4 v10, 0x1

    .line 1578
    invoke-direct {p0}, Lcom/android/launcher3/allapps/model/AppsLoader;->getCallback()Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;

    move-result-object v2

    .line 1579
    .local v2, "oldCallbacks":Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;
    if-eqz v2, :cond_0

    .line 1580
    new-instance v3, Lcom/android/launcher3/allapps/model/AppsLoader$22;

    invoke-direct {v3, p0, v2, p1}, Lcom/android/launcher3/allapps/model/AppsLoader$22;-><init>(Lcom/android/launcher3/allapps/model/AppsLoader;Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V

    .line 1589
    .local v3, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v3}, Lcom/android/launcher3/allapps/model/AppsLoader;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 1592
    .end local v3    # "r":Ljava/lang/Runnable;
    :cond_0
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1593
    .local v4, "removeList":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/common/compat/UserHandleCompat;Ljava/util/HashSet<Landroid/content/ComponentName;>;>;"
    iget-object v5, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->mBgDuplicateCheckList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 1594
    invoke-direct {p0}, Lcom/android/launcher3/allapps/model/AppsLoader;->loadDuplicateCheckList()Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->mBgDuplicateCheckList:Ljava/util/ArrayList;

    .line 1595
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/model/AppsLoader;->getAllAppItemInApps()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 1596
    .local v0, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-object v6, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->mBgDuplicateCheckList:Ljava/util/ArrayList;

    new-instance v7, Lcom/android/launcher3/util/ComponentKey;

    iget-object v8, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    iget-object v9, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-direct {v7, v8, v9}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1597
    iget-object v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    .line 1598
    .local v1, "list":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    if-nez v1, :cond_2

    .line 1599
    new-instance v1, Ljava/util/HashSet;

    .end local v1    # "list":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1600
    .restart local v1    # "list":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    iget-object v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {v4, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1602
    :cond_2
    iget-object v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1603
    iget-object v6, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    invoke-virtual {v6, v0}, Lcom/android/launcher3/common/model/FavoritesUpdater;->deleteItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto :goto_0

    .line 1606
    .end local v0    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v1    # "list":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    :cond_3
    const/4 v5, 0x0

    invoke-virtual {p0, v5, v10, v10, p1}, Lcom/android/launcher3/allapps/model/AppsLoader;->startAppsLoaderTask(IZZLcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V

    .line 1607
    return-void
.end method

.method public removePackagesAndComponents(Ljava/util/ArrayList;Lcom/android/launcher3/common/compat/UserHandleCompat;)V
    .locals 4
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
    .line 1256
    .local p1, "removedApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-direct {p0}, Lcom/android/launcher3/allapps/model/AppsLoader;->getCallback()Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;

    move-result-object v0

    .line 1257
    .local v0, "oldCallbacks":Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;
    if-nez v0, :cond_0

    .line 1258
    const-string v2, "AppsLoader"

    const-string v3, "removePackagesAndComponents running with no AppsCallbacks"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1276
    :goto_0
    return-void

    .line 1263
    :cond_0
    new-instance v1, Lcom/android/launcher3/allapps/model/AppsLoader$15;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/android/launcher3/allapps/model/AppsLoader$15;-><init>(Lcom/android/launcher3/allapps/model/AppsLoader;Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;Ljava/util/ArrayList;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    .line 1271
    .local v1, "r":Ljava/lang/Runnable;
    invoke-interface {v0}, Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;->needDefferToBind()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1272
    invoke-virtual {p0, v1}, Lcom/android/launcher3/allapps/model/AppsLoader;->addDeferredBindRunnable(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1274
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/launcher3/allapps/model/AppsLoader;->runOrAddDifferRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public removePagesItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 1
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 1638
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/util/logging/SALogging;->updateStatusLogValuesForAppsItem()V

    .line 1639
    return-void
.end method

.method public removeUnRestoredItems(Z)V
    .locals 4
    .param p1, "itemLoaded"    # Z

    .prologue
    .line 1658
    new-instance v0, Lcom/android/launcher3/allapps/model/AppsLoader$23;

    invoke-direct {v0, p0}, Lcom/android/launcher3/allapps/model/AppsLoader$23;-><init>(Lcom/android/launcher3/allapps/model/AppsLoader;)V

    .line 1685
    .local v0, "r":Ljava/lang/Runnable;
    const-string v1, "AppsLoader"

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

    .line 1686
    if-eqz p1, :cond_0

    .line 1687
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1692
    :goto_0
    return-void

    .line 1690
    :cond_0
    sget-object v1, Lcom/android/launcher3/allapps/model/AppsLoader;->sWorkerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public runCurrentComparatorNormalizerNormalize()V
    .locals 4

    .prologue
    .line 1317
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/model/AppsLoader;->getCurrentComparator()Lcom/android/launcher3/allapps/controller/Normalizer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/model/AppsLoader;->getTopLevelItemsInApps()Ljava/util/ArrayList;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->mMaxItemsPerPage:I

    sget v3, Lcom/android/launcher3/allapps/model/AppsLoader;->mCellCountX:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/allapps/controller/Normalizer;->normalize(Ljava/util/ArrayList;II)I

    .line 1318
    return-void
.end method

.method public runDBUpdateOnWorkerThread()V
    .locals 1

    .prologue
    .line 156
    new-instance v0, Lcom/android/launcher3/allapps/model/AppsLoader$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/allapps/model/AppsLoader$1;-><init>(Lcom/android/launcher3/allapps/model/AppsLoader;)V

    invoke-static {v0}, Lcom/android/launcher3/allapps/model/AppsLoader;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 162
    return-void
.end method

.method public setLoaderTaskStop(Z)V
    .locals 0
    .param p1, "isStopped"    # Z

    .prologue
    .line 205
    return-void
.end method

.method public setNormalizer(Lcom/android/launcher3/allapps/controller/Normalizer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/allapps/controller/Normalizer",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1301
    .local p1, "normalizer":Lcom/android/launcher3/allapps/controller/Normalizer;, "Lcom/android/launcher3/allapps/controller/Normalizer<Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->mNormalizer:Lcom/android/launcher3/allapps/controller/Normalizer;

    if-eq p1, v0, :cond_0

    .line 1302
    const-string v0, "AppsLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setNormalizer : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1303
    iput-object p1, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->mNormalizer:Lcom/android/launcher3/allapps/controller/Normalizer;

    .line 1305
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
    .line 1654
    .local p1, "screen":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    return-void
.end method

.method public setPackageState(Lcom/android/launcher3/common/compat/PackageInstallerCompat$PackageInstallInfo;)V
    .locals 2
    .param p1, "installInfo"    # Lcom/android/launcher3/common/compat/PackageInstallerCompat$PackageInstallInfo;

    .prologue
    .line 1695
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/android/launcher3/common/compat/PackageInstallerCompat$PackageInstallInfo;->packageName:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 1745
    :cond_0
    :goto_0
    return-void

    .line 1699
    :cond_1
    new-instance v0, Lcom/android/launcher3/allapps/model/AppsLoader$24;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/allapps/model/AppsLoader$24;-><init>(Lcom/android/launcher3/allapps/model/AppsLoader;Lcom/android/launcher3/common/compat/PackageInstallerCompat$PackageInstallInfo;)V

    .line 1744
    .local v0, "updateRunnable":Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/android/launcher3/allapps/model/AppsLoader;->runOnWorkerThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setup(Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V
    .locals 2
    .param p1, "task"    # Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;

    .prologue
    .line 231
    const-string v0, "AppsLoader"

    const-string v1, "setup"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/model/AppsLoader;->removeAllItems(Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V

    .line 234
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/model/AppsLoader;->unbindItemsOnMainThread()V

    .line 235
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/model/AppsLoader;->clearSBgDataStructures()V

    .line 236
    invoke-direct {p0}, Lcom/android/launcher3/allapps/model/AppsLoader;->setupGridInfo()V

    .line 238
    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/model/AppsLoader;->loadAllAppsItemsFromDB(Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->mTotalPageNumber:I

    .line 239
    iget v0, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->mTotalPageNumber:I

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->mIsPageLoaded:[Z

    .line 240
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getCloneItemEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 241
    invoke-direct {p0}, Lcom/android/launcher3/allapps/model/AppsLoader;->loadDuplicateCheckList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->mBgDuplicateCheckList:Ljava/util/ArrayList;

    .line 248
    :cond_0
    return-void
.end method

.method public showApps(Ljava/util/ArrayList;Z)V
    .locals 1
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
    .line 1348
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/launcher3/allapps/model/AppsLoader;->addViewAndUpdateItemInfoToDb(Ljava/util/ArrayList;ZZ)V

    .line 1349
    return-void
.end method

.method protected sortItemsInFolder(Lcom/android/launcher3/util/LongArrayMap;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/util/LongArrayMap",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "folders":Lcom/android/launcher3/util/LongArrayMap;, "Lcom/android/launcher3/util/LongArrayMap<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 370
    if-nez p1, :cond_1

    .line 408
    :cond_0
    return-void

    .line 372
    :cond_1
    invoke-virtual {p1}, Lcom/android/launcher3/util/LongArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/base/item/ItemInfo;

    .local v3, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    move-object v1, v3

    .line 373
    check-cast v1, Lcom/android/launcher3/folder/FolderInfo;

    .line 374
    .local v1, "folder":Lcom/android/launcher3/folder/FolderInfo;
    iget-object v6, v1, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-gt v6, v11, :cond_4

    .line 375
    iget-object v6, v1, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v6, v11, :cond_3

    .line 376
    iget-object v6, v1, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 377
    .local v0, "appInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    iget-wide v8, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    iput-wide v8, v0, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    .line 378
    iget v6, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    iput v6, v0, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    .line 379
    iget v6, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    iput v6, v0, Lcom/android/launcher3/common/base/item/IconInfo;->cellX:I

    .line 380
    iget v6, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    iput v6, v0, Lcom/android/launcher3/common/base/item/IconInfo;->cellY:I

    .line 381
    iget-wide v8, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    iput-wide v8, v0, Lcom/android/launcher3/common/base/item/IconInfo;->screenId:J

    .line 383
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 385
    .local v5, "values":Landroid/content/ContentValues;
    const-string v6, "container"

    iget-wide v8, v0, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 386
    const-string v6, "rank"

    iget v8, v0, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 387
    const-string v6, "cellX"

    iget v8, v0, Lcom/android/launcher3/common/base/item/IconInfo;->cellX:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 388
    const-string v6, "cellY"

    iget v8, v0, Lcom/android/launcher3/common/base/item/IconInfo;->cellY:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 389
    const-string v6, "screen"

    iget-wide v8, v0, Lcom/android/launcher3/common/base/item/IconInfo;->screenId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 391
    iget-object v6, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    invoke-virtual {v6, v5, v0}, Lcom/android/launcher3/common/model/FavoritesUpdater;->updateItem(Landroid/content/ContentValues;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 393
    .end local v0    # "appInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v5    # "values":Landroid/content/ContentValues;
    :cond_3
    iget-object v6, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    invoke-virtual {v6, v3}, Lcom/android/launcher3/common/model/FavoritesUpdater;->deleteItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto/16 :goto_0

    .line 395
    :cond_4
    invoke-virtual {v1}, Lcom/android/launcher3/folder/FolderInfo;->sortContents()V

    .line 396
    const/4 v4, 0x0

    .line 397
    .local v4, "pos":I
    iget-object v6, v1, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/item/ItemInfo;

    .local v2, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    move-object v6, v2

    .line 398
    check-cast v6, Lcom/android/launcher3/common/base/item/IconInfo;

    iget-boolean v6, v6, Lcom/android/launcher3/common/base/item/IconInfo;->usingLowResIcon:Z

    if-eqz v6, :cond_6

    .line 399
    check-cast v2, Lcom/android/launcher3/common/base/item/IconInfo;

    .end local v2    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    sget-object v6, Lcom/android/launcher3/allapps/model/AppsLoader;->sIconCache:Lcom/android/launcher3/common/model/IconCache;

    invoke-virtual {v2, v6, v10}, Lcom/android/launcher3/common/base/item/IconInfo;->updateIcon(Lcom/android/launcher3/common/model/IconCache;Z)V

    .line 401
    :cond_6
    add-int/lit8 v4, v4, 0x1

    .line 402
    const/16 v6, 0x9

    if-lt v4, v6, :cond_5

    goto/16 :goto_0
.end method

.method public startAppsLoaderTask(IZZLcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V
    .locals 6
    .param p1, "startPage"    # I
    .param p2, "needDBUpdate"    # Z
    .param p3, "bindFinished"    # Z
    .param p4, "task"    # Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;

    .prologue
    .line 166
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->mIsFirstBind:Z

    .line 167
    new-instance v0, Lcom/android/launcher3/allapps/model/AppsLoader$2;

    move-object v1, p0

    move v2, p1

    move-object v3, p4

    move v4, p3

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/allapps/model/AppsLoader$2;-><init>(Lcom/android/launcher3/allapps/model/AppsLoader;ILcom/android/launcher3/common/model/DataLoader$DataLoaderState;ZZ)V

    invoke-static {v0}, Lcom/android/launcher3/allapps/model/AppsLoader;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 202
    return-void
.end method

.method public titleUpdate()V
    .locals 5

    .prologue
    .line 2163
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/model/AppsLoader;->getAllAppItemInApps()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/launcher3/allapps/model/AppsLoader;->getNeedTitleUpdateIcons(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 2165
    .local v0, "needUpdateItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-direct {p0}, Lcom/android/launcher3/allapps/model/AppsLoader;->getCallback()Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;

    move-result-object v1

    .line 2166
    .local v1, "oldCallbacks":Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;
    if-nez v1, :cond_0

    .line 2167
    const-string v3, "AppsLoader"

    const-string v4, "titleUpdate running with no AppsCallbacks"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2180
    :goto_0
    return-void

    .line 2171
    :cond_0
    new-instance v2, Lcom/android/launcher3/allapps/model/AppsLoader$29;

    invoke-direct {v2, p0, v1, v0}, Lcom/android/launcher3/allapps/model/AppsLoader$29;-><init>(Lcom/android/launcher3/allapps/model/AppsLoader;Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;Ljava/util/ArrayList;)V

    .line 2179
    .local v2, "r":Ljava/lang/Runnable;
    invoke-direct {p0, v2}, Lcom/android/launcher3/allapps/model/AppsLoader;->runOrAddDifferRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public unRegisterCallbacks()V
    .locals 3

    .prologue
    .line 212
    iget-object v1, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 213
    :try_start_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->mCallbacks:Ljava/lang/ref/WeakReference;

    .line 214
    monitor-exit v1

    .line 215
    return-void

    .line 214
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unbindItemsOnMainThread()V
    .locals 0

    .prologue
    .line 815
    return-void
.end method

.method public updateDirtyItems()V
    .locals 6

    .prologue
    .line 1610
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/model/AppsLoader;->getDirtyItems()Ljava/util/ArrayList;

    move-result-object v2

    .line 1611
    .local v2, "updateList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1612
    :cond_0
    const-string v4, "AppsLoader"

    const-string v5, "update dirty list is empty"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1624
    :goto_0
    return-void

    .line 1616
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1618
    .local v0, "contentValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 1619
    .local v1, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1620
    .local v3, "values":Landroid/content/ContentValues;
    sget-object v5, Lcom/android/launcher3/allapps/model/AppsLoader;->sContext:Landroid/content/Context;

    invoke-virtual {v1, v5, v3}, Lcom/android/launcher3/common/base/item/ItemInfo;->onAddToDatabase(Landroid/content/Context;Landroid/content/ContentValues;)V

    .line 1621
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1623
    .end local v1    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v3    # "values":Landroid/content/ContentValues;
    :cond_2
    iget-object v4, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    sget-object v5, Lcom/android/launcher3/allapps/model/AppsLoader;->sContext:Landroid/content/Context;

    invoke-virtual {v4, v5, v0, v2}, Lcom/android/launcher3/common/model/FavoritesUpdater;->updateItemsInDatabaseHelper(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public updateIconsAndLabels(Ljava/util/HashSet;Lcom/android/launcher3/common/compat/UserHandleCompat;)V
    .locals 7
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
    .line 1321
    .local p1, "packages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1322
    .local v3, "outUpdates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/model/AppsLoader;->getAllAppItemInApps()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    .local v1, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    move-object v0, v1

    .line 1323
    check-cast v0, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 1324
    .local v0, "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    iget-object v6, v0, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {v6, p2}, Lcom/android/launcher3/common/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, v0, Lcom/android/launcher3/common/base/item/IconInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1325
    sget-object v6, Lcom/android/launcher3/allapps/model/AppsLoader;->sIconCache:Lcom/android/launcher3/common/model/IconCache;

    invoke-virtual {v6, v0}, Lcom/android/launcher3/common/model/IconCache;->updateTitleAndIcon(Lcom/android/launcher3/common/base/item/IconInfo;)V

    .line 1326
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1330
    .end local v0    # "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v1    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_1
    invoke-direct {p0}, Lcom/android/launcher3/allapps/model/AppsLoader;->getCallback()Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;

    move-result-object v2

    .line 1331
    .local v2, "oldCallbacks":Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;
    if-nez v2, :cond_2

    .line 1332
    const-string v5, "AppsLoader"

    const-string v6, "updateIconsAndLabels running with no AppsCallbacks"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1345
    :goto_1
    return-void

    .line 1336
    :cond_2
    new-instance v4, Lcom/android/launcher3/allapps/model/AppsLoader$17;

    invoke-direct {v4, p0, v2, v3, p2}, Lcom/android/launcher3/allapps/model/AppsLoader$17;-><init>(Lcom/android/launcher3/allapps/model/AppsLoader;Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;Ljava/util/ArrayList;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    .line 1344
    .local v4, "r":Ljava/lang/Runnable;
    invoke-direct {p0, v4}, Lcom/android/launcher3/allapps/model/AppsLoader;->runOrAddDifferRunnable(Ljava/lang/Runnable;)V

    goto :goto_1
.end method

.method public updateItemsOnlyDB(Ljava/util/ArrayList;)V
    .locals 1
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
    .line 1482
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v0, Lcom/android/launcher3/allapps/model/AppsLoader$21;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/allapps/model/AppsLoader$21;-><init>(Lcom/android/launcher3/allapps/model/AppsLoader;Ljava/util/ArrayList;)V

    .line 1493
    .local v0, "updateRunnable":Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/android/launcher3/allapps/model/AppsLoader;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 1494
    return-void
.end method

.method public updatePackageFlags(Lcom/android/launcher3/util/StringFilter;Lcom/android/launcher3/common/compat/UserHandleCompat;Lcom/android/launcher3/util/FlagOp;)V
    .locals 12
    .param p1, "pkgFilter"    # Lcom/android/launcher3/util/StringFilter;
    .param p2, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;
    .param p3, "flagOp"    # Lcom/android/launcher3/util/FlagOp;

    .prologue
    .line 2062
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2064
    .local v7, "updatedIcons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    const-string v8, ""

    invoke-virtual {p1, v8}, Lcom/android/launcher3/util/StringFilter;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2065
    iget-object v9, p0, Lcom/android/launcher3/allapps/model/AppsLoader;->mQuietModeUsers:Landroid/util/LongSparseArray;

    sget-object v8, Lcom/android/launcher3/allapps/model/AppsLoader;->sUserManager:Lcom/android/launcher3/common/compat/UserManagerCompat;

    invoke-virtual {v8, p2}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher3/common/compat/UserHandleCompat;)J

    move-result-wide v10

    const/16 v8, 0x8

    .line 2066
    invoke-virtual {p3, v8}, Lcom/android/launcher3/util/FlagOp;->apply(I)I

    move-result v8

    if-lez v8, :cond_2

    const/4 v8, 0x1

    :goto_0
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 2065
    invoke-virtual {v9, v10, v11, v8}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 2068
    :cond_0
    sget-object v9, Lcom/android/launcher3/allapps/model/AppsLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v9

    .line 2069
    :try_start_0
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/model/AppsLoader;->getAllAppItemInApps()Ljava/util/ArrayList;

    move-result-object v2

    .line 2070
    .local v2, "allAppItemInApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 2071
    .local v4, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    instance-of v10, v4, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v10, :cond_1

    .line 2072
    move-object v0, v4

    check-cast v0, Lcom/android/launcher3/common/base/item/IconInfo;

    move-object v3, v0

    .line 2073
    .local v3, "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    iget-object v10, v3, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {v10, p2}, Lcom/android/launcher3/common/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    iget-object v10, v3, Lcom/android/launcher3/common/base/item/IconInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v10, :cond_1

    iget-object v10, v3, Lcom/android/launcher3/common/base/item/IconInfo;->componentName:Landroid/content/ComponentName;

    .line 2074
    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Lcom/android/launcher3/util/StringFilter;->matches(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 2075
    iget v10, v3, Lcom/android/launcher3/common/base/item/IconInfo;->isDisabled:I

    invoke-virtual {p3, v10}, Lcom/android/launcher3/util/FlagOp;->apply(I)I

    move-result v10

    iput v10, v3, Lcom/android/launcher3/common/base/item/IconInfo;->isDisabled:I

    .line 2076
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2080
    .end local v2    # "allAppItemInApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .end local v3    # "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v4    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 2066
    :cond_2
    const/4 v8, 0x0

    goto :goto_0

    .line 2080
    .restart local v2    # "allAppItemInApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    :cond_3
    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2082
    invoke-direct {p0}, Lcom/android/launcher3/allapps/model/AppsLoader;->getCallback()Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;

    move-result-object v5

    .line 2083
    .local v5, "oldCallbacks":Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;
    if-eqz v5, :cond_4

    .line 2084
    new-instance v6, Lcom/android/launcher3/allapps/model/AppsLoader$26;

    invoke-direct {v6, p0, v5, v7, p2}, Lcom/android/launcher3/allapps/model/AppsLoader$26;-><init>(Lcom/android/launcher3/allapps/model/AppsLoader;Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;Ljava/util/ArrayList;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    .line 2093
    .local v6, "r":Ljava/lang/Runnable;
    invoke-direct {p0, v6}, Lcom/android/launcher3/allapps/model/AppsLoader;->runOrAddDifferRunnable(Ljava/lang/Runnable;)V

    .line 2095
    .end local v6    # "r":Ljava/lang/Runnable;
    :cond_4
    return-void
.end method

.method public updatePagesItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 1
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 1643
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/util/logging/SALogging;->updateStatusLogValuesForAppsItem()V

    .line 1644
    return-void
.end method

.method public updateUnavailablePackage(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;I)V
    .locals 6
    .param p1, "disabledPackages"    # Ljava/lang/String;
    .param p2, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;
    .param p3, "reason"    # I

    .prologue
    .line 1281
    invoke-direct {p0}, Lcom/android/launcher3/allapps/model/AppsLoader;->getCallback()Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;

    move-result-object v2

    .line 1282
    .local v2, "oldCallbacks":Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;
    if-nez v2, :cond_0

    .line 1283
    const-string v1, "AppsLoader"

    const-string v3, "updateUnavailablePackage running with no AppsCallbacks"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1296
    :goto_0
    return-void

    .line 1287
    :cond_0
    new-instance v0, Lcom/android/launcher3/allapps/model/AppsLoader$16;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/allapps/model/AppsLoader$16;-><init>(Lcom/android/launcher3/allapps/model/AppsLoader;Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;I)V

    .line 1295
    .local v0, "r":Ljava/lang/Runnable;
    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/model/AppsLoader;->runOrAddDifferRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
