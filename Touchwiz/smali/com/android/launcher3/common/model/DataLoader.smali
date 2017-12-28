.class public abstract Lcom/android/launcher3/common/model/DataLoader;
.super Ljava/lang/Object;
.source "DataLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/common/model/DataLoader$ItemInfoFilter;,
        Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;,
        Lcom/android/launcher3/common/model/DataLoader$DataLoaderCallback;,
        Lcom/android/launcher3/common/model/DataLoader$PageLoaderTask;
    }
.end annotation


# static fields
.field protected static final STK_PKG_LIST:[Ljava/lang/String;

.field protected static final STK_SPLIT:Ljava/lang/String; = ";"

.field private static final TAG:Ljava/lang/String; = "DataLoader"

.field protected static mIsBootCompleted:Z

.field protected static sBadgeCache:Lcom/android/launcher3/common/model/BadgeCache;

.field private static final sBgDeepShortcutMap:Lcom/android/launcher3/util/MultiHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/MultiHashMap",
            "<",
            "Lcom/android/launcher3/util/ComponentKey;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected static final sBgFolders:Lcom/android/launcher3/util/LongArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/LongArrayMap",
            "<",
            "Lcom/android/launcher3/folder/FolderInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected static final sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/LongArrayMap",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected static final sBgLock:Ljava/lang/Object;

.field protected static final sBgPinnedShortcutCounts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutKey;",
            "Landroid/util/MutableInt;",
            ">;"
        }
    .end annotation
.end field

.field protected static final sBindCompleteRunnables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field protected static sContentResolver:Landroid/content/ContentResolver;

.field protected static sContext:Landroid/content/Context;

.field protected static sFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

.field protected static sHandler:Lcom/android/launcher3/common/model/DeferredHandler;

.field protected static sIconCache:Lcom/android/launcher3/common/model/IconCache;

.field protected static volatile sInstallingPkgs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected static sIsLoadingAndBindingWorkspace:Z

.field protected static sIsSafeMode:Z

.field protected static sLauncherApps:Lcom/android/launcher3/common/compat/LauncherAppsCompat;

.field protected static sLauncherModel:Lcom/android/launcher3/LauncherModel;

.field private static final sLoaderList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/model/DataLoader;",
            ">;"
        }
    .end annotation
.end field

.field private static sOmcActivity:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected static sPackageManager:Landroid/content/pm/PackageManager;

.field protected static final sPendingPackages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/launcher3/common/compat/UserHandleCompat;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field protected static sProfile:Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

.field protected static sUserManager:Lcom/android/launcher3/common/compat/UserManagerCompat;

.field protected static sWorkerHandler:Landroid/os/Handler;


# instance fields
.field public final added:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mAllUsers:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Lcom/android/launcher3/common/compat/UserHandleCompat;",
            ">;"
        }
    .end annotation
.end field

.field protected final mBgOrderedScreens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected final mBgPagesItems:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mDeepShortcutManager:Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;

.field protected final mDeferredBindRunnables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field protected mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

.field protected mIsPageLoaded:[Z

.field protected mLoaderCallback:Lcom/android/launcher3/common/model/DataLoader$DataLoaderCallback;

.field protected mPageLoaderTask:Lcom/android/launcher3/common/model/DataLoader$PageLoaderTask;

.field protected mQuietModeUsers:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field protected mShortcutKeyToPinnedShortcuts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutKey;",
            "Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;",
            ">;"
        }
    .end annotation
.end field

.field public final modified:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final removed:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 98
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/launcher3/common/model/DataLoader;->sBgLock:Ljava/lang/Object;

    .line 102
    new-instance v0, Lcom/android/launcher3/util/LongArrayMap;

    invoke-direct {v0}, Lcom/android/launcher3/util/LongArrayMap;-><init>()V

    sput-object v0, Lcom/android/launcher3/common/model/DataLoader;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    .line 105
    new-instance v0, Lcom/android/launcher3/util/MultiHashMap;

    invoke-direct {v0}, Lcom/android/launcher3/util/MultiHashMap;-><init>()V

    sput-object v0, Lcom/android/launcher3/common/model/DataLoader;->sBgDeepShortcutMap:Lcom/android/launcher3/util/MultiHashMap;

    .line 109
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/launcher3/common/model/DataLoader;->sBgPinnedShortcutCounts:Ljava/util/Map;

    .line 114
    new-instance v0, Lcom/android/launcher3/util/LongArrayMap;

    invoke-direct {v0}, Lcom/android/launcher3/util/LongArrayMap;-><init>()V

    sput-object v0, Lcom/android/launcher3/common/model/DataLoader;->sBgFolders:Lcom/android/launcher3/util/LongArrayMap;

    .line 143
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/launcher3/common/model/DataLoader;->sPendingPackages:Ljava/util/HashMap;

    .line 156
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher3/common/model/DataLoader;->sBindCompleteRunnables:Ljava/util/ArrayList;

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher3/common/model/DataLoader;->sLoaderList:Ljava/util/ArrayList;

    .line 160
    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher3/common/model/DataLoader;->sOmcActivity:Ljava/util/List;

    .line 162
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.android.stk"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.android.stk2"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/launcher3/common/model/DataLoader;->STK_PKG_LIST:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/common/model/DataLoader;->mShortcutKeyToPinnedShortcuts:Ljava/util/Map;

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/common/model/DataLoader;->mBgOrderedScreens:Ljava/util/ArrayList;

    .line 119
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/common/model/DataLoader;->mBgPagesItems:Ljava/util/HashMap;

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/common/model/DataLoader;->mDeferredBindRunnables:Ljava/util/ArrayList;

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/common/model/DataLoader;->added:Ljava/util/ArrayList;

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/common/model/DataLoader;->removed:Ljava/util/ArrayList;

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/common/model/DataLoader;->modified:Ljava/util/ArrayList;

    return-void
.end method

.method public static decrementPinnedShortcutCount(Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutKey;)V
    .locals 3
    .param p0, "pinnedShortcut"    # Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutKey;

    .prologue
    .line 927
    sget-object v2, Lcom/android/launcher3/common/model/DataLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v2

    .line 928
    :try_start_0
    sget-object v1, Lcom/android/launcher3/common/model/DataLoader;->sBgPinnedShortcutCounts:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/MutableInt;

    .line 929
    .local v0, "count":Landroid/util/MutableInt;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/util/MutableInt;->value:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroid/util/MutableInt;->value:I

    if-nez v1, :cond_1

    .line 930
    :cond_0
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getShortcutManager()Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;->unpinShortcut(Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutKey;)V

    .line 932
    :cond_1
    monitor-exit v2

    .line 933
    return-void

    .line 932
    .end local v0    # "count":Landroid/util/MutableInt;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static filterItemInfo(Ljava/lang/Iterable;Lcom/android/launcher3/common/model/DataLoader$ItemInfoFilter;Z)Ljava/util/ArrayList;
    .locals 9
    .param p1, "f"    # Lcom/android/launcher3/common/model/DataLoader$ItemInfoFilter;
    .param p2, "exceptWidget"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;",
            "Lcom/android/launcher3/common/model/DataLoader$ItemInfoFilter;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, "infos":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    const/4 v8, 0x0

    .line 424
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 425
    .local v1, "filtered":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 426
    .local v2, "i":Lcom/android/launcher3/common/base/item/ItemInfo;
    instance-of v6, v2, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v6, :cond_1

    move-object v3, v2

    .line 427
    check-cast v3, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 428
    .local v3, "info":Lcom/android/launcher3/common/base/item/IconInfo;
    invoke-virtual {v3}, Lcom/android/launcher3/common/base/item/IconInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 429
    .local v0, "cn":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    invoke-interface {p1, v8, v3, v0}, Lcom/android/launcher3/common/model/DataLoader$ItemInfoFilter;->filterItem(Lcom/android/launcher3/common/base/item/ItemInfo;Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/content/ComponentName;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 430
    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 432
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v3    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_1
    instance-of v6, v2, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v6, :cond_3

    move-object v3, v2

    .line 433
    check-cast v3, Lcom/android/launcher3/folder/FolderInfo;

    .line 434
    .local v3, "info":Lcom/android/launcher3/folder/FolderInfo;
    iget-object v6, v3, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 435
    .local v4, "s":Lcom/android/launcher3/common/base/item/IconInfo;
    invoke-virtual {v4}, Lcom/android/launcher3/common/base/item/IconInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 436
    .restart local v0    # "cn":Landroid/content/ComponentName;
    if-eqz v0, :cond_2

    invoke-interface {p1, v3, v4, v0}, Lcom/android/launcher3/common/model/DataLoader$ItemInfoFilter;->filterItem(Lcom/android/launcher3/common/base/item/ItemInfo;Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/content/ComponentName;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 437
    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 440
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v3    # "info":Lcom/android/launcher3/folder/FolderInfo;
    .end local v4    # "s":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_3
    instance-of v6, v2, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    if-eqz v6, :cond_0

    if-nez p2, :cond_0

    move-object v3, v2

    .line 441
    check-cast v3, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    .line 442
    .local v3, "info":Lcom/android/launcher3/home/LauncherAppWidgetInfo;
    iget-object v0, v3, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    .line 443
    .restart local v0    # "cn":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    invoke-interface {p1, v8, v3, v0}, Lcom/android/launcher3/common/model/DataLoader$ItemInfoFilter;->filterItem(Lcom/android/launcher3/common/base/item/ItemInfo;Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/content/ComponentName;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 444
    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 448
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v2    # "i":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v3    # "info":Lcom/android/launcher3/home/LauncherAppWidgetInfo;
    :cond_4
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v5
.end method

.method private static findActivity(Ljava/util/List;Landroid/content/ComponentName;)Z
    .locals 3
    .param p1, "component"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;",
            ">;",
            "Landroid/content/ComponentName;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 814
    .local p0, "apps":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;

    .line 815
    .local v0, "info":Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    invoke-virtual {v0}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 816
    const/4 v1, 0x1

    .line 819
    .end local v0    # "info":Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected static findActivityInfo(Ljava/util/List;Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    .locals 4
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;",
            ">;",
            "Landroid/content/ComponentName;",
            "Lcom/android/launcher3/common/compat/UserHandleCompat;",
            ")",
            "Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;"
        }
    .end annotation

    .prologue
    .local p0, "apps":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;>;"
    const/4 v1, 0x0

    .line 673
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move-object v0, v1

    .line 682
    :goto_0
    return-object v0

    .line 677
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;

    .line 678
    .local v0, "info":Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    invoke-virtual {v0}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getUser()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/android/launcher3/common/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .end local v0    # "info":Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    :cond_3
    move-object v0, v1

    .line 682
    goto :goto_0
.end method

.method public static getFolderInfo(I)Lcom/android/launcher3/folder/FolderInfo;
    .locals 4
    .param p0, "id"    # I

    .prologue
    .line 711
    sget-object v1, Lcom/android/launcher3/common/model/DataLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v1

    .line 712
    :try_start_0
    sget-object v0, Lcom/android/launcher3/common/model/DataLoader;->sBgFolders:Lcom/android/launcher3/util/LongArrayMap;

    int-to-long v2, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/folder/FolderInfo;

    monitor-exit v1

    return-object v0

    .line 713
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getItemInfoByComponentName(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;Z)Ljava/util/ArrayList;
    .locals 3
    .param p0, "cName"    # Landroid/content/ComponentName;
    .param p1, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;
    .param p2, "exceptWidget"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Lcom/android/launcher3/common/compat/UserHandleCompat;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 407
    new-instance v0, Lcom/android/launcher3/common/model/DataLoader$2;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/common/model/DataLoader$2;-><init>(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    .line 417
    .local v0, "filter":Lcom/android/launcher3/common/model/DataLoader$ItemInfoFilter;
    sget-object v2, Lcom/android/launcher3/common/model/DataLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v2

    .line 418
    :try_start_0
    sget-object v1, Lcom/android/launcher3/common/model/DataLoader;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    invoke-static {v1, v0, p2}, Lcom/android/launcher3/common/model/DataLoader;->filterItemInfo(Ljava/lang/Iterable;Lcom/android/launcher3/common/model/DataLoader$ItemInfoFilter;Z)Ljava/util/ArrayList;

    move-result-object v1

    monitor-exit v2

    return-object v1

    .line 419
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getItemInfoByComponentName(Landroid/content/ComponentName;Ljava/util/ArrayList;Lcom/android/launcher3/common/compat/UserHandleCompat;Z)Ljava/util/ArrayList;
    .locals 3
    .param p1, "cName"    # Landroid/content/ComponentName;
    .param p3, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;
    .param p4, "exceptWidget"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;",
            "Lcom/android/launcher3/common/compat/UserHandleCompat;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 797
    .local p2, "currentItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v0, Lcom/android/launcher3/common/model/DataLoader$3;

    invoke-direct {v0, p0, p1, p3}, Lcom/android/launcher3/common/model/DataLoader$3;-><init>(Lcom/android/launcher3/common/model/DataLoader;Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    .line 807
    .local v0, "filter":Lcom/android/launcher3/common/model/DataLoader$ItemInfoFilter;
    sget-object v2, Lcom/android/launcher3/common/model/DataLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v2

    .line 808
    :try_start_0
    invoke-static {p2, v0, p4}, Lcom/android/launcher3/common/model/DataLoader;->filterItemInfo(Ljava/lang/Iterable;Lcom/android/launcher3/common/model/DataLoader$ItemInfoFilter;Z)Ljava/util/ArrayList;

    move-result-object v1

    monitor-exit v2

    return-object v1

    .line 809
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getItemList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 383
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 385
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    sget-object v3, Lcom/android/launcher3/common/model/DataLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v3

    .line 386
    :try_start_0
    sget-object v2, Lcom/android/launcher3/common/model/DataLoader;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v2}, Lcom/android/launcher3/util/LongArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 387
    .local v0, "itemInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 389
    .end local v0    # "itemInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 390
    return-object v1
.end method

.method public static getItemsByPackageName(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Ljava/util/ArrayList;
    .locals 4
    .param p0, "pn"    # Ljava/lang/String;
    .param p1, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/launcher3/common/compat/UserHandleCompat;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 394
    new-instance v0, Lcom/android/launcher3/common/model/DataLoader$1;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/common/model/DataLoader$1;-><init>(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    .line 400
    .local v0, "filter":Lcom/android/launcher3/common/model/DataLoader$ItemInfoFilter;
    sget-object v2, Lcom/android/launcher3/common/model/DataLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v2

    .line 401
    :try_start_0
    sget-object v1, Lcom/android/launcher3/common/model/DataLoader;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    const/4 v3, 0x0

    invoke-static {v1, v0, v3}, Lcom/android/launcher3/common/model/DataLoader;->filterItemInfo(Ljava/lang/Iterable;Lcom/android/launcher3/common/model/DataLoader$ItemInfoFilter;Z)Ljava/util/ArrayList;

    move-result-object v1

    monitor-exit v2

    return-object v1

    .line 402
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static incrementPinnedShortcutCount(Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutKey;Z)V
    .locals 4
    .param p0, "pinnedShortcut"    # Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutKey;
    .param p1, "shouldPin"    # Z

    .prologue
    const/4 v3, 0x1

    .line 936
    sget-object v2, Lcom/android/launcher3/common/model/DataLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v2

    .line 937
    :try_start_0
    sget-object v1, Lcom/android/launcher3/common/model/DataLoader;->sBgPinnedShortcutCounts:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/MutableInt;

    .line 938
    .local v0, "count":Landroid/util/MutableInt;
    if-nez v0, :cond_1

    .line 939
    new-instance v0, Landroid/util/MutableInt;

    .end local v0    # "count":Landroid/util/MutableInt;
    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/MutableInt;-><init>(I)V

    .line 940
    .restart local v0    # "count":Landroid/util/MutableInt;
    sget-object v1, Lcom/android/launcher3/common/model/DataLoader;->sBgPinnedShortcutCounts:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 944
    :goto_0
    if-eqz p1, :cond_0

    iget v1, v0, Landroid/util/MutableInt;->value:I

    if-ne v1, v3, :cond_0

    .line 945
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getShortcutManager()Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;->pinShortcut(Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutKey;)V

    .line 947
    :cond_0
    monitor-exit v2

    .line 948
    return-void

    .line 942
    :cond_1
    iget v1, v0, Landroid/util/MutableInt;->value:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/util/MutableInt;->value:I

    goto :goto_0

    .line 947
    .end local v0    # "count":Landroid/util/MutableInt;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static loadDefaultLayoutIfNecessary()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 488
    sget-object v8, Lcom/android/launcher3/common/model/DataLoader;->sContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/launcher3/common/customer/PostPositionController;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/customer/PostPositionController;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher3/common/customer/PostPositionController;->isReloadNeeded()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 490
    sget-object v8, Lcom/android/launcher3/common/model/DataLoader;->sLoaderList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v3, "loader":Lcom/android/launcher3/common/model/DataLoader;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "loader":Lcom/android/launcher3/common/model/DataLoader;
    check-cast v3, Lcom/android/launcher3/common/model/DataLoader;

    .line 491
    .restart local v3    # "loader":Lcom/android/launcher3/common/model/DataLoader;
    const/4 v9, 0x0

    invoke-virtual {v3, v9, v10, v11}, Lcom/android/launcher3/common/model/DataLoader;->loadDefaultLayout(Lcom/android/launcher3/common/model/AutoInstallsLayout;ZZ)V

    goto :goto_0

    .line 495
    :cond_0
    new-array v5, v11, [Ljava/lang/String;

    const/16 v8, 0x20

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v10

    .line 496
    .local v5, "selectionArg":[Ljava/lang/String;
    sget-object v8, Lcom/android/launcher3/common/model/DataLoader;->sContentResolver:Landroid/content/ContentResolver;

    sget-object v9, Lcom/android/launcher3/common/model/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const-string v10, "restored=?"

    invoke-virtual {v8, v9, v10, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 498
    .local v4, "removedCount":I
    const-string v8, "DataLoader"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "noFDR OMCItem - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " items removed."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    .end local v3    # "loader":Lcom/android/launcher3/common/model/DataLoader;
    .end local v4    # "removedCount":I
    .end local v5    # "selectionArg":[Ljava/lang/String;
    .local v0, "SwitchedDb":Z
    .local v6, "sp":Landroid/content/SharedPreferences;
    .local v7, "spKey":Ljava/lang/String;
    :cond_1
    sget-object v8, Lcom/android/launcher3/common/model/DataLoader;->sContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/launcher3/common/customer/PostPositionController;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/customer/PostPositionController;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher3/common/customer/PostPositionController;->checkAndEnablePositioner()V

    .line 537
    return-void

    .line 501
    .end local v0    # "SwitchedDb":Z
    .end local v6    # "sp":Landroid/content/SharedPreferences;
    .end local v7    # "spKey":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v7

    .line 502
    .restart local v7    # "spKey":Ljava/lang/String;
    sget-object v8, Lcom/android/launcher3/common/model/DataLoader;->sContext:Landroid/content/Context;

    invoke-virtual {v8, v7, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 503
    .restart local v6    # "sp":Landroid/content/SharedPreferences;
    const/4 v2, 0x0

    .line 504
    .local v2, "isEmptyDb":Z
    const/4 v0, 0x0

    .line 505
    .restart local v0    # "SwitchedDb":Z
    const-string v8, "EMPTY_DATABASE_CREATED"

    invoke-interface {v6, v8, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 506
    const-string v8, "DataLoader"

    const-string v9, "loading default workspace"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    const/4 v2, 0x1

    .line 512
    .end local v2    # "isEmptyDb":Z
    :cond_3
    :goto_1
    if-eqz v2, :cond_7

    .line 513
    const/4 v1, 0x0

    .line 514
    .local v1, "autoInstallLayout":Lcom/android/launcher3/common/model/AutoInstallsLayout;
    if-nez v0, :cond_4

    .line 515
    sget-object v8, Lcom/android/launcher3/common/model/DataLoader;->sContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/launcher3/common/model/AutoInstallsLayout;->get(Landroid/content/Context;)Lcom/android/launcher3/common/model/AutoInstallsLayout;

    move-result-object v1

    .line 516
    sget-object v8, Lcom/android/launcher3/common/model/DataLoader;->sContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/launcher3/common/model/DefaultLayoutParser;->loadOmcIfNecessary(Landroid/content/Context;)V

    .line 518
    :cond_4
    sget-object v8, Lcom/android/launcher3/common/model/DataLoader;->sLoaderList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/model/DataLoader;

    .line 519
    .restart local v3    # "loader":Lcom/android/launcher3/common/model/DataLoader;
    invoke-virtual {v3, v1, v0, v10}, Lcom/android/launcher3/common/model/DataLoader;->loadDefaultLayout(Lcom/android/launcher3/common/model/AutoInstallsLayout;ZZ)V

    goto :goto_2

    .line 508
    .end local v1    # "autoInstallLayout":Lcom/android/launcher3/common/model/AutoInstallsLayout;
    .end local v3    # "loader":Lcom/android/launcher3/common/model/DataLoader;
    .restart local v2    # "isEmptyDb":Z
    :cond_5
    const-string v8, "EMPTY_DATABASE_SWITCHED"

    invoke-interface {v6, v8, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 509
    const-string v8, "DataLoader"

    const-string v9, "loading default workspace without switch table"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    const/4 v0, 0x1

    move v2, v0

    .local v2, "isEmptyDb":I
    goto :goto_1

    .line 521
    .end local v2    # "isEmptyDb":I
    .restart local v1    # "autoInstallLayout":Lcom/android/launcher3/common/model/AutoInstallsLayout;
    :cond_6
    if-nez v0, :cond_8

    .line 522
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getLauncherProvider()Lcom/android/launcher3/LauncherProvider;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher3/LauncherProvider;->clearFlagEmptyDbCreated()V

    .line 528
    .end local v1    # "autoInstallLayout":Lcom/android/launcher3/common/model/AutoInstallsLayout;
    :cond_7
    :goto_3
    sget-object v8, Lcom/android/launcher3/common/model/DataLoader;->sFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    invoke-virtual {v8, v2}, Lcom/android/launcher3/common/model/FavoritesProvider;->checkChangedComponentExist(Z)V

    .line 530
    if-eqz v2, :cond_1

    .line 531
    sget-object v8, Lcom/android/launcher3/common/model/DataLoader;->sLoaderList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/model/DataLoader;

    .line 532
    .restart local v3    # "loader":Lcom/android/launcher3/common/model/DataLoader;
    invoke-virtual {v3}, Lcom/android/launcher3/common/model/DataLoader;->loadDefaultLayoutCompleted()V

    goto :goto_4

    .line 524
    .end local v3    # "loader":Lcom/android/launcher3/common/model/DataLoader;
    .restart local v1    # "autoInstallLayout":Lcom/android/launcher3/common/model/AutoInstallsLayout;
    :cond_8
    sget-object v8, Lcom/android/launcher3/common/model/DataLoader;->sFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    invoke-virtual {v8}, Lcom/android/launcher3/common/model/FavoritesProvider;->clearFlagEmptyDbSwitched()V

    goto :goto_3
.end method

.method protected static runOnWorkerThread(Ljava/lang/Runnable;)V
    .locals 2
    .param p0, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 319
    sget-object v0, Lcom/android/launcher3/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 320
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 325
    :goto_0
    return-void

    .line 323
    :cond_0
    sget-object v0, Lcom/android/launcher3/common/model/DataLoader;->sWorkerHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static setDeviceProfile(Lcom/android/launcher3/common/deviceprofile/DeviceProfile;)V
    .locals 0
    .param p0, "dp"    # Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    .prologue
    .line 271
    sput-object p0, Lcom/android/launcher3/common/model/DataLoader;->sProfile:Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    .line 272
    return-void
.end method

.method public static setInstallingPackage(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 479
    sget-object v0, Lcom/android/launcher3/common/model/DataLoader;->sInstallingPkgs:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 480
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/launcher3/common/model/DataLoader;->sInstallingPkgs:Ljava/util/HashMap;

    .line 484
    :goto_0
    invoke-static {p0}, Lcom/android/launcher3/common/compat/PackageInstallerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/PackageInstallerCompat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/compat/PackageInstallerCompat;->updateAndGetActiveSessionCache()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/common/model/DataLoader;->sInstallingPkgs:Ljava/util/HashMap;

    .line 485
    return-void

    .line 482
    :cond_0
    sget-object v0, Lcom/android/launcher3/common/model/DataLoader;->sInstallingPkgs:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    goto :goto_0
.end method

.method public static setLoadingAndBindingWorkspace(Z)V
    .locals 0
    .param p0, "isLoadAndBinding"    # Z

    .prologue
    .line 354
    sput-boolean p0, Lcom/android/launcher3/common/model/DataLoader;->sIsLoadingAndBindingWorkspace:Z

    .line 355
    return-void
.end method

.method public static updateBadgeCounts(Ljava/util/Map;)Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/android/launcher3/common/model/BadgeCache$CacheKey;",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 452
    .local p0, "badgeCounts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/common/model/BadgeCache$CacheKey;Ljava/lang/Integer;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 453
    .local v6, "updated":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    sget-object v8, Lcom/android/launcher3/common/model/DataLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v8

    .line 454
    :try_start_0
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 455
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/launcher3/common/model/BadgeCache$CacheKey;Ljava/lang/Integer;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/model/BadgeCache$CacheKey;

    .line 456
    .local v1, "cacheKey":Lcom/android/launcher3/common/model/BadgeCache$CacheKey;
    sget-object v7, Lcom/android/launcher3/common/model/DataLoader;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v7}, Lcom/android/launcher3/util/LongArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_1
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 457
    .local v4, "itemInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    instance-of v7, v4, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v7, :cond_1

    .line 458
    move-object v0, v4

    check-cast v0, Lcom/android/launcher3/common/base/item/IconInfo;

    move-object v3, v0

    .line 459
    .local v3, "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    iget-object v7, v1, Lcom/android/launcher3/common/model/BadgeCache$CacheKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Lcom/android/launcher3/common/base/item/IconInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, v1, Lcom/android/launcher3/common/model/BadgeCache$CacheKey;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    .line 460
    invoke-virtual {v3}, Lcom/android/launcher3/common/base/item/IconInfo;->getUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v11

    invoke-virtual {v7, v11}, Lcom/android/launcher3/common/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 461
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 462
    .local v5, "newCount":I
    iget v7, v3, Lcom/android/launcher3/common/base/item/IconInfo;->mBadgeCount:I

    if-eq v7, v5, :cond_1

    .line 463
    iput v5, v3, Lcom/android/launcher3/common/base/item/IconInfo;->mBadgeCount:I

    .line 464
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 470
    .end local v1    # "cacheKey":Lcom/android/launcher3/common/model/BadgeCache$CacheKey;
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/launcher3/common/model/BadgeCache$CacheKey;Ljava/lang/Integer;>;"
    .end local v3    # "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v4    # "itemInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v5    # "newCount":I
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    :cond_2
    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 471
    return-object v6
.end method

.method private declared-synchronized updatePackageActivities(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/List;Lcom/android/launcher3/common/compat/UserHandleCompat;)V
    .locals 14
    .param p1, "packageName"    # Ljava/lang/String;
    .param p4, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;",
            ">;",
            "Lcom/android/launcher3/common/compat/UserHandleCompat;",
            ")V"
        }
    .end annotation

    .prologue
    .line 753
    .local p2, "currentItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .local p3, "activities":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;>;"
    monitor-enter p0

    :try_start_0
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 754
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 755
    .local v11, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    move-object v0, v11

    check-cast v0, Lcom/android/launcher3/common/base/item/IconInfo;

    move-object v2, v0

    .line 756
    .local v2, "info":Lcom/android/launcher3/common/base/item/IconInfo;
    iget-object v8, v2, Lcom/android/launcher3/common/base/item/IconInfo;->componentName:Landroid/content/ComponentName;

    .line 757
    .local v8, "cn":Landroid/content/ComponentName;
    if-eqz v8, :cond_0

    iget-object v3, v11, Lcom/android/launcher3/common/base/item/ItemInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Lcom/android/launcher3/common/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 758
    move-object/from16 v0, p3

    invoke-static {v0, v8}, Lcom/android/launcher3/common/model/DataLoader;->findActivity(Ljava/util/List;Landroid/content/ComponentName;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 759
    iget-object v3, p0, Lcom/android/launcher3/common/model/DataLoader;->removed:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 760
    invoke-interface {v10}, Ljava/util/Iterator;->remove()V

    .line 762
    sget-object v3, Lcom/android/launcher3/common/model/DataLoader;->sIconCache:Lcom/android/launcher3/common/model/IconCache;

    move-object/from16 v0, p4

    invoke-virtual {v3, v8, v0}, Lcom/android/launcher3/common/model/IconCache;->remove(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    .line 763
    iget-object v3, p0, Lcom/android/launcher3/common/model/DataLoader;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    invoke-virtual {v3, v11}, Lcom/android/launcher3/common/model/FavoritesUpdater;->deleteItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 753
    .end local v2    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v8    # "cn":Landroid/content/ComponentName;
    .end local v10    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .end local v11    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 770
    .restart local v10    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    :cond_1
    :try_start_1
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_2
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;

    .line 771
    .local v4, "app":Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    invoke-virtual {v4}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v8

    .line 773
    .restart local v8    # "cn":Landroid/content/ComponentName;
    const/4 v3, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-direct {p0, v8, v0, v1, v3}, Lcom/android/launcher3/common/model/DataLoader;->getItemInfoByComponentName(Landroid/content/ComponentName;Ljava/util/ArrayList;Lcom/android/launcher3/common/compat/UserHandleCompat;Z)Ljava/util/ArrayList;

    move-result-object v12

    .line 776
    .local v12, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 777
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 778
    .restart local v11    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    move-object v0, v11

    check-cast v0, Lcom/android/launcher3/common/base/item/IconInfo;

    move-object v9, v0

    .line 779
    .local v9, "icon":Lcom/android/launcher3/common/base/item/IconInfo;
    const/4 v5, 0x0

    iput v5, v9, Lcom/android/launcher3/common/base/item/IconInfo;->isDisabled:I

    .line 780
    iget-object v5, p0, Lcom/android/launcher3/common/model/DataLoader;->modified:Ljava/util/ArrayList;

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 782
    .end local v9    # "icon":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v11    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_3
    sget-object v3, Lcom/android/launcher3/common/model/DataLoader;->sFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    if-eqz v3, :cond_2

    .line 783
    new-instance v2, Lcom/android/launcher3/common/base/item/IconInfo;

    sget-object v3, Lcom/android/launcher3/common/model/DataLoader;->sContext:Landroid/content/Context;

    sget-object v6, Lcom/android/launcher3/common/model/DataLoader;->sIconCache:Lcom/android/launcher3/common/model/IconCache;

    sget-object v5, Lcom/android/launcher3/common/model/DataLoader;->sUserManager:Lcom/android/launcher3/common/compat/UserManagerCompat;

    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Lcom/android/launcher3/common/compat/UserManagerCompat;->isQuietModeEnabled(Lcom/android/launcher3/common/compat/UserHandleCompat;)Z

    move-result v7

    move-object/from16 v5, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher3/common/base/item/IconInfo;-><init>(Landroid/content/Context;Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;Lcom/android/launcher3/common/compat/UserHandleCompat;Lcom/android/launcher3/common/model/IconCache;Z)V

    .line 784
    .restart local v2    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v3

    if-nez v3, :cond_4

    .line 785
    const-wide/16 v6, -0x66

    iput-wide v6, v2, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    .line 786
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/launcher3/common/base/item/IconInfo;->mDirty:Z

    .line 788
    :cond_4
    iget-object v3, p0, Lcom/android/launcher3/common/model/DataLoader;->added:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 791
    .end local v2    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v4    # "app":Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    .end local v8    # "cn":Landroid/content/ComponentName;
    .end local v12    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    :cond_5
    monitor-exit p0

    return-void
.end method


# virtual methods
.method protected declared-synchronized addAppToPendingPackages(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)V
    .locals 2
    .param p1, "componentName"    # Ljava/lang/String;
    .param p2, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;

    .prologue
    .line 883
    monitor-enter p0

    :try_start_0
    sget-object v1, Lcom/android/launcher3/common/model/DataLoader;->sPendingPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 884
    .local v0, "pkgs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 885
    new-instance v0, Ljava/util/HashSet;

    .end local v0    # "pkgs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 886
    .restart local v0    # "pkgs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    sget-object v1, Lcom/android/launcher3/common/model/DataLoader;->sPendingPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 888
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 889
    monitor-exit p0

    return-void

    .line 883
    .end local v0    # "pkgs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected addDeferredBindRunnable(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 334
    iget-object v1, p0, Lcom/android/launcher3/common/model/DataLoader;->mDeferredBindRunnables:Ljava/util/ArrayList;

    monitor-enter v1

    .line 335
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/common/model/DataLoader;->mDeferredBindRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 336
    monitor-exit v1

    .line 337
    return-void

    .line 336
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public abstract addPagesItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V
.end method

.method protected backupStkPositionIfNecessary(Ljava/lang/String;JJII)V
    .locals 10
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "container"    # J
    .param p4, "screen"    # J
    .param p6, "cellX"    # I
    .param p7, "cellY"    # I

    .prologue
    .line 824
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v6

    if-nez v6, :cond_1

    .line 848
    :cond_0
    :goto_0
    return-void

    .line 828
    :cond_1
    const/4 v3, 0x0

    .line 829
    .local v3, "needToBackupPosition":Z
    sget-object v7, Lcom/android/launcher3/common/model/DataLoader;->STK_PKG_LIST:[Ljava/lang/String;

    array-length v8, v7

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v8, :cond_2

    aget-object v5, v7, v6

    .line 830
    .local v5, "s":Ljava/lang/String;
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 831
    const/4 v3, 0x1

    .line 835
    .end local v5    # "s":Ljava/lang/String;
    :cond_2
    if-eqz v3, :cond_0

    .line 836
    sget-object v6, Lcom/android/launcher3/common/model/DataLoader;->sProfile:Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    iget-object v6, v6, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v6}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountX()I

    move-result v1

    .line 837
    .local v1, "countX":I
    sget-object v6, Lcom/android/launcher3/common/model/DataLoader;->sProfile:Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    iget-object v6, v6, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v6}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountY()I

    move-result v2

    .line 838
    .local v2, "countY":I
    if-ltz p6, :cond_3

    if-ltz p7, :cond_3

    move/from16 v0, p6

    if-ge v0, v1, :cond_3

    move/from16 v0, p7

    if-lt v0, v2, :cond_5

    .line 839
    :cond_3
    const-string v6, "DataLoader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Stk outside position cellX : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p6

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " cellY : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 829
    .end local v1    # "countX":I
    .end local v2    # "countY":I
    .restart local v5    # "s":Ljava/lang/String;
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 843
    .end local v5    # "s":Ljava/lang/String;
    .restart local v1    # "countX":I
    .restart local v2    # "countY":I
    :cond_5
    sget-object v6, Lcom/android/launcher3/common/model/DataLoader;->sContext:Landroid/content/Context;

    .line 844
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    .line 843
    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 844
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 845
    .local v4, "prefs":Landroid/content/SharedPreferences$Editor;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p7

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, p1, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 846
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0
.end method

.method public bindDeepShortcuts()V
    .locals 3

    .prologue
    .line 913
    sget-object v2, Lcom/android/launcher3/common/model/DataLoader;->sBgDeepShortcutMap:Lcom/android/launcher3/util/MultiHashMap;

    invoke-virtual {v2}, Lcom/android/launcher3/util/MultiHashMap;->clone()Lcom/android/launcher3/util/MultiHashMap;

    move-result-object v1

    .line 914
    .local v1, "shortcutMapCopy":Lcom/android/launcher3/util/MultiHashMap;, "Lcom/android/launcher3/util/MultiHashMap<Lcom/android/launcher3/util/ComponentKey;Ljava/lang/String;>;"
    new-instance v0, Lcom/android/launcher3/common/model/DataLoader$4;

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/common/model/DataLoader$4;-><init>(Lcom/android/launcher3/common/model/DataLoader;Lcom/android/launcher3/util/MultiHashMap;)V

    .line 923
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/model/DataLoader;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 924
    return-void
.end method

.method public abstract bindItemsSync(ILcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V
.end method

.method public abstract bindPageItems(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V
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
.end method

.method public clearDeferredBindRunnable()V
    .locals 2

    .prologue
    .line 328
    iget-object v1, p0, Lcom/android/launcher3/common/model/DataLoader;->mDeferredBindRunnables:Ljava/util/ArrayList;

    monitor-enter v1

    .line 329
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/common/model/DataLoader;->mDeferredBindRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 330
    monitor-exit v1

    .line 331
    return-void

    .line 330
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected abstract clearSBgDataStructures()V
.end method

.method public abstract containPagesItem(Lcom/android/launcher3/common/base/item/ItemInfo;)Z
.end method

.method public abstract filterCurrentPageItems(JLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
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
.end method

.method protected getAllApps()Ljava/util/ArrayList;
    .locals 5
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
    .line 367
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 368
    .local v0, "allApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    sget-object v3, Lcom/android/launcher3/common/model/DataLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v3

    .line 369
    :try_start_0
    sget-object v2, Lcom/android/launcher3/common/model/DataLoader;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

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

    .line 370
    .local v1, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget v4, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    if-nez v4, :cond_0

    .line 371
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 374
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

    .line 375
    return-object v0
.end method

.method public getBadgeCount(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)I
    .locals 2
    .param p1, "cn"    # Landroid/content/ComponentName;
    .param p2, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;

    .prologue
    .line 879
    sget-object v0, Lcom/android/launcher3/common/model/DataLoader;->sBadgeCache:Lcom/android/launcher3/common/model/BadgeCache;

    new-instance v1, Lcom/android/launcher3/common/model/BadgeCache$CacheKey;

    invoke-direct {v1, p1, p2}, Lcom/android/launcher3/common/model/BadgeCache$CacheKey;-><init>(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/model/BadgeCache;->getBadgeCount(Lcom/android/launcher3/common/model/BadgeCache$CacheKey;)I

    move-result v0

    return v0
.end method

.method protected getNeedTitleUpdateIcons(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
    .line 851
    .local p1, "allItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    sget-object v7, Lcom/android/launcher3/common/model/DataLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v7

    .line 852
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 853
    .local v3, "needUpdateItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 854
    .local v1, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    instance-of v5, v1, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v5, :cond_0

    move-object v0, v1

    check-cast v0, Lcom/android/launcher3/common/base/item/IconInfo;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    if-eqz v5, :cond_0

    move-object v0, v1

    check-cast v0, Lcom/android/launcher3/common/base/item/IconInfo;

    move-object v5, v0

    .line 856
    invoke-virtual {v5}, Lcom/android/launcher3/common/base/item/IconInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 858
    iget v5, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    move-object v0, v1

    check-cast v0, Lcom/android/launcher3/common/base/item/IconInfo;

    move-object v5, v0

    iget-boolean v5, v5, Lcom/android/launcher3/common/base/item/IconInfo;->isAppShortcut:Z

    if-eqz v5, :cond_0

    .line 862
    :cond_1
    new-instance v4, Landroid/content/Intent;

    move-object v0, v1

    check-cast v0, Lcom/android/launcher3/common/base/item/IconInfo;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 863
    .local v4, "newIntent":Landroid/content/Intent;
    const-string v5, "android.intent.category.LAUNCHER"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 864
    move-object v0, v1

    check-cast v0, Lcom/android/launcher3/common/base/item/IconInfo;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/launcher3/common/base/item/IconInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 865
    sget-object v5, Lcom/android/launcher3/common/model/DataLoader;->sLauncherApps:Lcom/android/launcher3/common/compat/LauncherAppsCompat;

    invoke-virtual {v1}, Lcom/android/launcher3/common/base/item/ItemInfo;->getUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->resolveActivity(Landroid/content/Intent;Lcom/android/launcher3/common/compat/UserHandleCompat;)Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;

    move-result-object v2

    .line 866
    .local v2, "lai":Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    if-eqz v2, :cond_0

    .line 867
    move-object v0, v1

    check-cast v0, Lcom/android/launcher3/common/base/item/IconInfo;

    move-object v5, v0

    sget-object v6, Lcom/android/launcher3/common/model/DataLoader;->sIconCache:Lcom/android/launcher3/common/model/IconCache;

    invoke-virtual {v6, v2}, Lcom/android/launcher3/common/model/IconCache;->getPackageItemTitle(Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v6}, Lcom/android/launcher3/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    .line 868
    move-object v0, v1

    check-cast v0, Lcom/android/launcher3/common/base/item/IconInfo;

    move-object v5, v0

    sget-object v9, Lcom/android/launcher3/common/model/DataLoader;->sUserManager:Lcom/android/launcher3/common/compat/UserManagerCompat;

    move-object v0, v1

    check-cast v0, Lcom/android/launcher3/common/base/item/IconInfo;

    move-object v6, v0

    iget-object v10, v6, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    move-object v0, v1

    check-cast v0, Lcom/android/launcher3/common/base/item/IconInfo;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {v9, v10, v6}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getBadgedLabelForUser(Ljava/lang/CharSequence;Lcom/android/launcher3/common/compat/UserHandleCompat;)Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, v5, Lcom/android/launcher3/common/base/item/IconInfo;->contentDescription:Ljava/lang/CharSequence;

    .line 870
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 875
    .end local v1    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v2    # "lai":Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    .end local v3    # "needUpdateItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .end local v4    # "newIntent":Landroid/content/Intent;
    :catchall_0
    move-exception v5

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 874
    .restart local v3    # "needUpdateItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    :cond_2
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v3
.end method

.method protected getRestoredItemInfo(Landroid/database/Cursor;Landroid/content/ComponentName;Landroid/content/Intent;ILcom/android/launcher3/common/model/CursorInfo;)Lcom/android/launcher3/common/base/item/IconInfo;
    .locals 6
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "cn"    # Landroid/content/ComponentName;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "promiseType"    # I
    .param p5, "iconInfo"    # Lcom/android/launcher3/common/model/CursorInfo;

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 601
    new-instance v1, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-direct {v1}, Lcom/android/launcher3/common/base/item/IconInfo;-><init>()V

    .line 602
    .local v1, "info":Lcom/android/launcher3/common/base/item/IconInfo;
    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v3

    iput-object v3, v1, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    .line 604
    if-eqz p1, :cond_2

    iget v3, p5, Lcom/android/launcher3/common/model/CursorInfo;->itemTypeIndex:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    :goto_0
    iput v3, v1, Lcom/android/launcher3/common/base/item/IconInfo;->itemType:I

    .line 607
    and-int/lit8 v3, p4, 0x4

    if-eqz v3, :cond_3

    iget v3, v1, Lcom/android/launcher3/common/base/item/IconInfo;->itemType:I

    if-nez v3, :cond_3

    .line 609
    sget-object v3, Lcom/android/launcher3/common/model/DataLoader;->sContext:Landroid/content/Context;

    invoke-static {v3, p2, v1}, Lcom/android/launcher3/common/bnr/scloud/SCloudBnr;->getRestoreDummyInfo(Landroid/content/Context;Landroid/content/ComponentName;Lcom/android/launcher3/common/base/item/IconInfo;)V

    .line 610
    iget-object v3, v1, Lcom/android/launcher3/common/base/item/IconInfo;->mIcon:Landroid/graphics/Bitmap;

    if-nez v3, :cond_0

    .line 611
    const-string v3, "DataLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getRestoredItemInfo SCloud dummy icon is null cn = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    sget-object v3, Lcom/android/launcher3/common/model/DataLoader;->sIconCache:Lcom/android/launcher3/common/model/IconCache;

    iget-object v4, v1, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {v3, v4}, Lcom/android/launcher3/common/model/IconCache;->getDefaultIcon(Lcom/android/launcher3/common/compat/UserHandleCompat;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v1, Lcom/android/launcher3/common/base/item/IconInfo;->mIcon:Landroid/graphics/Bitmap;

    .line 643
    :cond_0
    :goto_1
    iget-object v3, v1, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    if-nez v3, :cond_1

    .line 644
    const-string v3, ""

    iput-object v3, v1, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    .line 647
    :cond_1
    sget-object v3, Lcom/android/launcher3/common/model/DataLoader;->sUserManager:Lcom/android/launcher3/common/compat/UserManagerCompat;

    iget-object v4, v1, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    iget-object v5, v1, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getBadgedLabelForUser(Ljava/lang/CharSequence;Lcom/android/launcher3/common/compat/UserHandleCompat;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v1, Lcom/android/launcher3/common/base/item/IconInfo;->contentDescription:Ljava/lang/CharSequence;

    .line 648
    iput-object p3, v1, Lcom/android/launcher3/common/base/item/IconInfo;->promisedIntent:Landroid/content/Intent;

    .line 649
    iput p4, v1, Lcom/android/launcher3/common/base/item/IconInfo;->status:I

    .line 650
    return-object v1

    :cond_2
    move v3, v4

    .line 604
    goto :goto_0

    .line 615
    :cond_3
    if-nez p1, :cond_5

    move-object v0, v2

    .line 617
    .local v0, "icon":Landroid/graphics/Bitmap;
    :goto_2
    if-nez v0, :cond_6

    .line 618
    sget-object v3, Lcom/android/launcher3/common/model/DataLoader;->sIconCache:Lcom/android/launcher3/common/model/IconCache;

    iget-object v5, v1, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {v3, v1, p3, v5, v4}, Lcom/android/launcher3/common/model/IconCache;->getTitleAndIcon(Lcom/android/launcher3/common/base/item/IconInfo;Landroid/content/Intent;Lcom/android/launcher3/common/compat/UserHandleCompat;Z)V

    .line 626
    :goto_3
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_7

    .line 627
    if-eqz p1, :cond_4

    iget v3, p5, Lcom/android/launcher3/common/model/CursorInfo;->titleIndex:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 628
    .local v2, "title":Ljava/lang/String;
    :cond_4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 629
    invoke-static {v2}, Lcom/android/launcher3/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    goto :goto_1

    .line 615
    .end local v0    # "icon":Landroid/graphics/Bitmap;
    .end local v2    # "title":Ljava/lang/String;
    :cond_5
    sget-object v3, Lcom/android/launcher3/common/model/DataLoader;->sContext:Landroid/content/Context;

    invoke-virtual {p5, p1, v1, v3}, Lcom/android/launcher3/common/model/CursorInfo;->loadIcon(Landroid/database/Cursor;Lcom/android/launcher3/common/base/item/IconInfo;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_2

    .line 620
    .restart local v0    # "icon":Landroid/graphics/Bitmap;
    :cond_6
    invoke-virtual {v1, v0}, Lcom/android/launcher3/common/base/item/IconInfo;->setOriginalIcon(Landroid/graphics/Bitmap;)V

    .line 621
    sget-object v3, Lcom/android/launcher3/common/model/DataLoader;->sContext:Landroid/content/Context;

    invoke-static {v3, v0, p2}, Lcom/android/launcher3/util/ShortcutTray;->getIcon(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/content/ComponentName;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 622
    invoke-virtual {v1, v0}, Lcom/android/launcher3/common/base/item/IconInfo;->setIcon(Landroid/graphics/Bitmap;)V

    .line 623
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/android/launcher3/common/base/item/IconInfo;->customIcon:Z

    goto :goto_3

    .line 631
    :cond_7
    and-int/lit8 v3, p4, 0x2

    if-nez v3, :cond_8

    and-int/lit8 v3, p4, 0x20

    if-nez v3, :cond_8

    and-int/lit8 v3, p4, 0x4

    if-eqz v3, :cond_a

    .line 634
    :cond_8
    iget-object v3, v1, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 635
    if-eqz p1, :cond_9

    iget v3, p5, Lcom/android/launcher3/common/model/CursorInfo;->titleIndex:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 636
    .restart local v2    # "title":Ljava/lang/String;
    :cond_9
    invoke-static {v2}, Lcom/android/launcher3/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    goto :goto_1

    .line 639
    .end local v2    # "title":Ljava/lang/String;
    :cond_a
    new-instance v3, Ljava/security/InvalidParameterException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid restoreType "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected getRestoredItemIntent(Landroid/content/Intent;I)Landroid/content/Intent;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "promiseType"    # I

    .prologue
    .line 654
    and-int/lit8 v1, p2, 0x1

    if-nez v1, :cond_0

    and-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_2

    .line 656
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 657
    .local v0, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/LauncherModel;->getMarketIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 666
    .end local v0    # "componentName":Landroid/content/ComponentName;
    .end local p1    # "intent":Landroid/content/Intent;
    :cond_1
    :goto_0
    return-object p1

    .line 658
    .restart local p1    # "intent":Landroid/content/Intent;
    :cond_2
    and-int/lit8 v1, p2, 0x20

    if-eqz v1, :cond_1

    .line 659
    sget-object v1, Lcom/android/launcher3/common/model/DataLoader;->sOmcActivity:Ljava/util/List;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/android/launcher3/common/model/DataLoader;->sOmcActivity:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 660
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 661
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 662
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/LauncherModel;->getOmcIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    goto :goto_0

    .line 664
    :cond_3
    invoke-static {}, Lcom/android/launcher3/LauncherModel;->getOmcIntent()Landroid/content/Intent;

    move-result-object p1

    goto :goto_0
.end method

.method protected getUnRestoredItems(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    const/4 v10, 0x0

    .line 540
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 541
    .local v4, "removeItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 543
    .local v5, "updateIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    sget-object v7, Lcom/android/launcher3/common/model/DataLoader;->sContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/LauncherAppsCompat;

    move-result-object v3

    .line 545
    .local v3, "launcherApps":Lcom/android/launcher3/common/compat/LauncherAppsCompat;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 546
    .local v2, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    instance-of v8, v2, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v8, :cond_0

    move-object v1, v2

    .line 547
    check-cast v1, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 549
    .local v1, "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    iget v8, v1, Lcom/android/launcher3/common/base/item/IconInfo;->status:I

    and-int/lit8 v8, v8, 0x4

    if-eqz v8, :cond_0

    .line 554
    iget-object v8, v1, Lcom/android/launcher3/common/base/item/IconInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v8, :cond_1

    .line 555
    iget-object v0, v1, Lcom/android/launcher3/common/base/item/IconInfo;->componentName:Landroid/content/ComponentName;

    .line 563
    .local v0, "cn":Landroid/content/ComponentName;
    :goto_1
    iget-object v8, v1, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {v3, v0, v8}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->isActivityEnabledForProfile(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 564
    iget-wide v8, v1, Lcom/android/launcher3/common/base/item/IconInfo;->id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 565
    iput v10, v1, Lcom/android/launcher3/common/base/item/IconInfo;->status:I

    goto :goto_0

    .line 556
    .end local v0    # "cn":Landroid/content/ComponentName;
    :cond_1
    iget-object v8, v1, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    if-eqz v8, :cond_2

    iget-object v8, v1, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 557
    iget-object v8, v1, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .restart local v0    # "cn":Landroid/content/ComponentName;
    goto :goto_1

    .line 559
    .end local v0    # "cn":Landroid/content/ComponentName;
    :cond_2
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 567
    .restart local v0    # "cn":Landroid/content/ComponentName;
    :cond_3
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 572
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v1    # "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v2    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    .line 573
    const-string v7, "DataLoader"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "update restored value "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 575
    .local v6, "values":Landroid/content/ContentValues;
    const-string v7, "restored"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 576
    sget-object v7, Lcom/android/launcher3/common/model/DataLoader;->sContentResolver:Landroid/content/ContentResolver;

    sget-object v8, Lcom/android/launcher3/common/model/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const-string v9, "_id"

    .line 577
    invoke-static {v9, v5}, Lcom/android/launcher3/Utilities;->createDbSelectionQuery(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    .line 576
    invoke-virtual {v7, v8, v6, v9, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 581
    .end local v6    # "values":Landroid/content/ContentValues;
    :cond_5
    return-object v4
.end method

.method protected abstract getUpdater()Lcom/android/launcher3/common/model/DataUpdater;
.end method

.method protected init(Landroid/content/Context;Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/LauncherModel;Lcom/android/launcher3/common/model/IconCache;Lcom/android/launcher3/common/model/BadgeCache;Lcom/android/launcher3/common/model/DataLoader;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "app"    # Lcom/android/launcher3/LauncherAppState;
    .param p3, "model"    # Lcom/android/launcher3/LauncherModel;
    .param p4, "cache"    # Lcom/android/launcher3/common/model/IconCache;
    .param p5, "badgeCache"    # Lcom/android/launcher3/common/model/BadgeCache;
    .param p6, "loader"    # Lcom/android/launcher3/common/model/DataLoader;

    .prologue
    .line 228
    sget-object v0, Lcom/android/launcher3/common/model/DataLoader;->sContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 229
    sput-object p1, Lcom/android/launcher3/common/model/DataLoader;->sContext:Landroid/content/Context;

    .line 230
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/android/launcher3/LauncherModel;->getWorkerLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/launcher3/common/model/DataLoader;->sWorkerHandler:Landroid/os/Handler;

    .line 231
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/common/model/DataLoader;->sContentResolver:Landroid/content/ContentResolver;

    .line 232
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher3/common/model/DataLoader;->sIsSafeMode:Z

    .line 233
    invoke-static {p1}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/LauncherAppsCompat;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/common/model/DataLoader;->sLauncherApps:Lcom/android/launcher3/common/compat/LauncherAppsCompat;

    .line 234
    invoke-virtual {p2}, Lcom/android/launcher3/LauncherAppState;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/common/model/DataLoader;->sProfile:Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    .line 235
    invoke-static {p1}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/UserManagerCompat;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/common/model/DataLoader;->sUserManager:Lcom/android/launcher3/common/compat/UserManagerCompat;

    .line 236
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/common/model/DataLoader;->sPackageManager:Landroid/content/pm/PackageManager;

    .line 237
    sget-object v0, Lcom/android/launcher3/common/model/DataLoader;->sPackageManager:Landroid/content/pm/PackageManager;

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/launcher3/LauncherModel;->getOmcIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/common/model/DataLoader;->sOmcActivity:Ljava/util/List;

    .line 238
    sput-object p4, Lcom/android/launcher3/common/model/DataLoader;->sIconCache:Lcom/android/launcher3/common/model/IconCache;

    .line 239
    sput-object p5, Lcom/android/launcher3/common/model/DataLoader;->sBadgeCache:Lcom/android/launcher3/common/model/BadgeCache;

    .line 240
    sput-object p3, Lcom/android/launcher3/common/model/DataLoader;->sLauncherModel:Lcom/android/launcher3/LauncherModel;

    .line 241
    invoke-virtual {p3}, Lcom/android/launcher3/LauncherModel;->getHandler()Lcom/android/launcher3/common/model/DeferredHandler;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/common/model/DataLoader;->sHandler:Lcom/android/launcher3/common/model/DeferredHandler;

    .line 242
    invoke-static {}, Lcom/android/launcher3/common/model/FavoritesProvider;->getInstance()Lcom/android/launcher3/common/model/FavoritesProvider;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/common/model/DataLoader;->sFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    .line 245
    :cond_0
    invoke-virtual {p2}, Lcom/android/launcher3/LauncherAppState;->getShortcutManager()Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/common/model/DataLoader;->mDeepShortcutManager:Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;

    .line 246
    invoke-virtual {p0}, Lcom/android/launcher3/common/model/DataLoader;->updateUsersList()V

    .line 248
    sget-object v0, Lcom/android/launcher3/common/model/DataLoader;->sLoaderList:Ljava/util/ArrayList;

    invoke-virtual {v0, p6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 249
    sget-object v0, Lcom/android/launcher3/common/model/DataLoader;->sLoaderList:Ljava/util/ArrayList;

    invoke-virtual {v0, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    :cond_1
    return-void
.end method

.method protected isNotAvailableApps(Ljava/lang/String;)I
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 687
    :try_start_0
    sget-object v6, Lcom/android/launcher3/common/model/DataLoader;->sPackageManager:Landroid/content/pm/PackageManager;

    const/16 v7, 0x2000

    invoke-virtual {v6, p1, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 688
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_1

    .line 689
    iget v6, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_2

    move v4, v3

    .line 690
    .local v4, "isSystemApp":Z
    :goto_0
    iget v6, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v7, 0x40000

    and-int/2addr v6, v7

    if-eqz v6, :cond_3

    move v2, v3

    .line 691
    .local v2, "externalInstalled":Z
    :goto_1
    if-nez v4, :cond_4

    if-nez v2, :cond_4

    iget v6, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v7, 0x800000

    and-int/2addr v6, v7

    if-eqz v6, :cond_4

    .line 693
    .local v3, "internalInstalled":Z
    :goto_2
    sget-boolean v6, Lcom/android/launcher3/common/model/DataLoader;->sIsSafeMode:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v6, :cond_5

    .line 694
    if-nez v3, :cond_0

    if-eqz v2, :cond_1

    .line 695
    :cond_0
    const/4 v5, 0x2

    .line 707
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "externalInstalled":Z
    .end local v3    # "internalInstalled":Z
    .end local v4    # "isSystemApp":Z
    :cond_1
    :goto_3
    return v5

    .restart local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_2
    move v4, v5

    .line 689
    goto :goto_0

    .restart local v4    # "isSystemApp":Z
    :cond_3
    move v2, v5

    .line 690
    goto :goto_1

    .restart local v2    # "externalInstalled":Z
    :cond_4
    move v3, v5

    .line 691
    goto :goto_2

    .line 697
    .restart local v3    # "internalInstalled":Z
    :cond_5
    if-eqz v2, :cond_1

    .line 698
    const/16 v5, 0x20

    goto :goto_3

    .line 703
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "externalInstalled":Z
    .end local v3    # "internalInstalled":Z
    .end local v4    # "isSystemApp":Z
    :catch_0
    move-exception v1

    .line 704
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_3
.end method

.method protected isStopped(Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)Z
    .locals 1
    .param p1, "task"    # Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;

    .prologue
    .line 350
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;->isStopped()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected loadDefaultLayout(Lcom/android/launcher3/common/model/AutoInstallsLayout;ZZ)V
    .locals 0
    .param p1, "autoInstallLayout"    # Lcom/android/launcher3/common/model/AutoInstallsLayout;
    .param p2, "isSwitchedDb"    # Z
    .param p3, "reloadPostPosition"    # Z

    .prologue
    .line 586
    return-void
.end method

.method protected loadDefaultLayoutCompleted()V
    .locals 0

    .prologue
    .line 589
    return-void
.end method

.method protected abstract loadPageItems(ILcom/android/launcher3/common/model/DataLoader$DataLoaderState;)Ljava/util/ArrayList;
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
.end method

.method protected makeFoldersIdToString(Lcom/android/launcher3/util/LongArrayMap;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/util/LongArrayMap",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 275
    .local p1, "folders":Lcom/android/launcher3/util/LongArrayMap;, "Lcom/android/launcher3/util/LongArrayMap<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v1, Lcom/android/launcher3/util/StringJoiner;

    const-string v2, ","

    invoke-direct {v1, v2}, Lcom/android/launcher3/util/StringJoiner;-><init>(Ljava/lang/String;)V

    .line 276
    .local v1, "joiner":Lcom/android/launcher3/util/StringJoiner;
    invoke-virtual {p1}, Lcom/android/launcher3/util/LongArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 277
    .local v0, "folder":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-wide v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    invoke-virtual {v1, v4, v5}, Lcom/android/launcher3/util/StringJoiner;->append(J)V

    goto :goto_0

    .line 279
    .end local v0    # "folder":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_0
    invoke-virtual {v1}, Lcom/android/launcher3/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method protected putItemToIdMap(Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 4
    .param p1, "info"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 358
    sget-object v1, Lcom/android/launcher3/common/model/DataLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v1

    .line 359
    :try_start_0
    sget-object v0, Lcom/android/launcher3/common/model/DataLoader;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    iget-wide v2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    invoke-virtual {v0, v2, v3, p1}, Lcom/android/launcher3/util/LongArrayMap;->put(JLjava/lang/Object;)V

    .line 360
    instance-of v0, p1, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v0, :cond_0

    .line 361
    sget-object v0, Lcom/android/launcher3/common/model/DataLoader;->sBgFolders:Lcom/android/launcher3/util/LongArrayMap;

    iget-wide v2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    check-cast p1, Lcom/android/launcher3/folder/FolderInfo;

    .end local p1    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    invoke-virtual {v0, v2, v3, p1}, Lcom/android/launcher3/util/LongArrayMap;->put(JLjava/lang/Object;)V

    .line 363
    :cond_0
    monitor-exit v1

    .line 364
    return-void

    .line 363
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removePackage(Ljava/lang/String;Ljava/util/ArrayList;Lcom/android/launcher3/common/compat/UserHandleCompat;)V
    .locals 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p3, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;",
            "Lcom/android/launcher3/common/compat/UserHandleCompat;",
            ")V"
        }
    .end annotation

    .prologue
    .line 733
    .local p2, "currentItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 734
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/launcher3/common/base/item/ItemInfo;

    .local v11, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    move-object v9, v11

    .line 735
    check-cast v9, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 736
    .local v9, "info":Lcom/android/launcher3/common/base/item/IconInfo;
    iget-object v8, v9, Lcom/android/launcher3/common/base/item/IconInfo;->componentName:Landroid/content/ComponentName;

    .line 737
    .local v8, "cn":Landroid/content/ComponentName;
    if-eqz v8, :cond_0

    iget-object v0, v11, Lcom/android/launcher3/common/base/item/ItemInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {p3, v0}, Lcom/android/launcher3/common/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 738
    iget-object v0, p0, Lcom/android/launcher3/common/model/DataLoader;->removed:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 739
    invoke-interface {v10}, Ljava/util/Iterator;->remove()V

    .line 741
    iget-wide v2, v9, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    iget-wide v4, v9, Lcom/android/launcher3/common/base/item/IconInfo;->screenId:J

    iget v6, v9, Lcom/android/launcher3/common/base/item/IconInfo;->cellX:I

    iget v7, v9, Lcom/android/launcher3/common/base/item/IconInfo;->cellY:I

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher3/common/model/DataLoader;->backupStkPositionIfNecessary(Ljava/lang/String;JJII)V

    .line 743
    sget-object v0, Lcom/android/launcher3/common/model/DataLoader;->sIconCache:Lcom/android/launcher3/common/model/IconCache;

    invoke-virtual {v0, v8, p3}, Lcom/android/launcher3/common/model/IconCache;->remove(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    .line 744
    iget-object v0, p0, Lcom/android/launcher3/common/model/DataLoader;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    invoke-virtual {v0, v11}, Lcom/android/launcher3/common/model/FavoritesUpdater;->deleteItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto :goto_0

    .line 747
    .end local v8    # "cn":Landroid/content/ComponentName;
    .end local v9    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v11    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_1
    return-void
.end method

.method public abstract removePagesItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V
.end method

.method public abstract removeUnRestoredItems(Z)V
.end method

.method protected runOnMainThread(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 306
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 308
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 312
    :goto_0
    return-void

    .line 310
    :cond_0
    sget-object v0, Lcom/android/launcher3/common/model/DataLoader;->sHandler:Lcom/android/launcher3/common/model/DeferredHandler;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/model/DeferredHandler;->post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected setBadgeCount(Lcom/android/launcher3/common/base/item/IconInfo;)V
    .locals 4
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/IconInfo;

    .prologue
    .line 475
    sget-object v0, Lcom/android/launcher3/common/model/DataLoader;->sBadgeCache:Lcom/android/launcher3/common/model/BadgeCache;

    new-instance v1, Lcom/android/launcher3/common/model/BadgeCache$CacheKey;

    invoke-virtual {p1}, Lcom/android/launcher3/common/base/item/IconInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v2

    iget-object v3, p1, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-direct {v1, v2, v3}, Lcom/android/launcher3/common/model/BadgeCache$CacheKey;-><init>(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/model/BadgeCache;->getBadgeCount(Lcom/android/launcher3/common/model/BadgeCache$CacheKey;)I

    move-result v0

    iput v0, p1, Lcom/android/launcher3/common/base/item/IconInfo;->mBadgeCount:I

    .line 476
    return-void
.end method

.method public setLoaderTaskStop(Z)V
    .locals 4
    .param p1, "isStopped"    # Z

    .prologue
    .line 340
    const-string v1, "DataLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setLoaderTaskStop isStopped "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    iget-object v0, p0, Lcom/android/launcher3/common/model/DataLoader;->mPageLoaderTask:Lcom/android/launcher3/common/model/DataLoader$PageLoaderTask;

    .line 342
    .local v0, "oldTask":Lcom/android/launcher3/common/model/DataLoader$PageLoaderTask;
    if-eqz v0, :cond_0

    .line 343
    const-string v1, "DataLoader"

    const-string v2, "oldTask is not null. set stop & cancel"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/model/DataLoader$PageLoaderTask;->setStopped(Z)V

    .line 345
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/model/DataLoader$PageLoaderTask;->cancel(Z)Z

    .line 347
    :cond_0
    return-void
.end method

.method public abstract setOrderedScreen(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setup(Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V
.end method

.method protected sortItemsInFolder(Lcom/android/launcher3/util/LongArrayMap;)V
    .locals 8
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
    .line 283
    .local p1, "folders":Lcom/android/launcher3/util/LongArrayMap;, "Lcom/android/launcher3/util/LongArrayMap<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    if-nez p1, :cond_1

    .line 299
    :cond_0
    return-void

    .line 285
    :cond_1
    invoke-virtual {p1}, Lcom/android/launcher3/util/LongArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/item/ItemInfo;

    .local v2, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    move-object v0, v2

    .line 286
    check-cast v0, Lcom/android/launcher3/folder/FolderInfo;

    .line 287
    .local v0, "folder":Lcom/android/launcher3/folder/FolderInfo;
    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderInfo;->sortContents()V

    .line 288
    const/4 v3, 0x0

    .line 289
    .local v3, "pos":I
    iget-object v4, v0, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    .local v1, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    move-object v4, v1

    .line 290
    check-cast v4, Lcom/android/launcher3/common/base/item/IconInfo;

    iget-boolean v4, v4, Lcom/android/launcher3/common/base/item/IconInfo;->usingLowResIcon:Z

    if-eqz v4, :cond_4

    .line 291
    check-cast v1, Lcom/android/launcher3/common/base/item/IconInfo;

    .end local v1    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    sget-object v4, Lcom/android/launcher3/common/model/DataLoader;->sIconCache:Lcom/android/launcher3/common/model/IconCache;

    const/4 v7, 0x0

    invoke-virtual {v1, v4, v7}, Lcom/android/launcher3/common/base/item/IconInfo;->updateIcon(Lcom/android/launcher3/common/model/IconCache;Z)V

    .line 293
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 294
    const/16 v4, 0x9

    if-lt v3, v4, :cond_3

    goto :goto_0
.end method

.method public abstract titleUpdate()V
.end method

.method public abstract unbindItemsOnMainThread()V
.end method

.method public updateDeepShortcutMap(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;Ljava/util/List;)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/launcher3/common/compat/UserHandleCompat;",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 892
    .local p3, "shortcuts":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;>;"
    if-eqz p1, :cond_1

    .line 893
    sget-object v5, Lcom/android/launcher3/common/model/DataLoader;->sBgDeepShortcutMap:Lcom/android/launcher3/util/MultiHashMap;

    invoke-virtual {v5}, Lcom/android/launcher3/util/MultiHashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 894
    .local v0, "keysIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/launcher3/util/ComponentKey;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 895
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/util/ComponentKey;

    .line 896
    .local v1, "next":Lcom/android/launcher3/util/ComponentKey;
    iget-object v5, v1, Lcom/android/launcher3/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, v1, Lcom/android/launcher3/util/ComponentKey;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {v5, p2}, Lcom/android/launcher3/common/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 897
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 902
    .end local v0    # "keysIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/launcher3/util/ComponentKey;>;"
    .end local v1    # "next":Lcom/android/launcher3/util/ComponentKey;
    :cond_1
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;

    .line 903
    .local v2, "shortcut":Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;
    invoke-virtual {v2}, Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 904
    invoke-virtual {v2}, Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;->isDeclaredInManifest()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v2}, Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;->isDynamic()Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_3
    const/4 v3, 0x1

    .line 905
    .local v3, "shouldShowInContainer":Z
    :goto_2
    if-eqz v3, :cond_2

    .line 906
    new-instance v4, Lcom/android/launcher3/util/ComponentKey;

    invoke-virtual {v2}, Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;->getActivity()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v2}, Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;->getUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    .line 907
    .local v4, "targetComponent":Lcom/android/launcher3/util/ComponentKey;
    sget-object v6, Lcom/android/launcher3/common/model/DataLoader;->sBgDeepShortcutMap:Lcom/android/launcher3/util/MultiHashMap;

    invoke-virtual {v2}, Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v4, v7}, Lcom/android/launcher3/util/MultiHashMap;->addToList(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 904
    .end local v3    # "shouldShowInContainer":Z
    .end local v4    # "targetComponent":Lcom/android/launcher3/util/ComponentKey;
    :cond_4
    const/4 v3, 0x0

    goto :goto_2

    .line 910
    .end local v2    # "shortcut":Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;
    :cond_5
    return-void
.end method

.method protected updateItem(JLandroid/content/ContentValues;)V
    .locals 7
    .param p1, "itemId"    # J
    .param p3, "update"    # Landroid/content/ContentValues;

    .prologue
    .line 592
    sget-object v0, Lcom/android/launcher3/common/model/DataLoader;->sContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/launcher3/common/model/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "_id= ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 596
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 592
    invoke-virtual {v0, v1, p3, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 597
    return-void
.end method

.method public updatePackage(Ljava/lang/String;Ljava/util/ArrayList;Lcom/android/launcher3/common/compat/UserHandleCompat;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p3, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;",
            "Lcom/android/launcher3/common/compat/UserHandleCompat;",
            ")V"
        }
    .end annotation

    .prologue
    .line 718
    .local p2, "currentItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    sget-object v1, Lcom/android/launcher3/common/model/DataLoader;->sLauncherApps:Lcom/android/launcher3/common/compat/LauncherAppsCompat;

    invoke-virtual {v1, p1, p3}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Ljava/util/List;

    move-result-object v0

    .line 719
    .local v0, "matches":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;>;"
    const-string v1, "DataLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updatePackage:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 722
    const-string v1, "com.sec.android.app.magnifier"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 729
    :goto_0
    return-void

    .line 725
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/common/model/DataLoader;->removePackage(Ljava/lang/String;Ljava/util/ArrayList;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    goto :goto_0

    .line 727
    :cond_1
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/launcher3/common/model/DataLoader;->updatePackageActivities(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/List;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    goto :goto_0
.end method

.method public abstract updatePackageFlags(Lcom/android/launcher3/util/StringFilter;Lcom/android/launcher3/common/compat/UserHandleCompat;Lcom/android/launcher3/util/FlagOp;)V
.end method

.method public abstract updatePagesItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V
.end method

.method public abstract updateUnavailablePackage(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;I)V
.end method

.method public updateUsersList()V
    .locals 6

    .prologue
    .line 254
    iget-object v3, p0, Lcom/android/launcher3/common/model/DataLoader;->mAllUsers:Landroid/util/LongSparseArray;

    if-nez v3, :cond_0

    .line 255
    new-instance v3, Landroid/util/LongSparseArray;

    invoke-direct {v3}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v3, p0, Lcom/android/launcher3/common/model/DataLoader;->mAllUsers:Landroid/util/LongSparseArray;

    .line 257
    :cond_0
    iget-object v3, p0, Lcom/android/launcher3/common/model/DataLoader;->mQuietModeUsers:Landroid/util/LongSparseArray;

    if-nez v3, :cond_1

    .line 258
    new-instance v3, Landroid/util/LongSparseArray;

    invoke-direct {v3}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v3, p0, Lcom/android/launcher3/common/model/DataLoader;->mQuietModeUsers:Landroid/util/LongSparseArray;

    .line 261
    :cond_1
    iget-object v3, p0, Lcom/android/launcher3/common/model/DataLoader;->mAllUsers:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/util/LongSparseArray;->clear()V

    .line 262
    iget-object v3, p0, Lcom/android/launcher3/common/model/DataLoader;->mQuietModeUsers:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/util/LongSparseArray;->clear()V

    .line 263
    sget-object v3, Lcom/android/launcher3/common/model/DataLoader;->sUserManager:Lcom/android/launcher3/common/compat/UserManagerCompat;

    invoke-virtual {v3}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getUserProfiles()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/compat/UserHandleCompat;

    .line 264
    .local v2, "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    sget-object v4, Lcom/android/launcher3/common/model/DataLoader;->sUserManager:Lcom/android/launcher3/common/compat/UserManagerCompat;

    invoke-virtual {v4, v2}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher3/common/compat/UserHandleCompat;)J

    move-result-wide v0

    .line 265
    .local v0, "serialNo":J
    iget-object v4, p0, Lcom/android/launcher3/common/model/DataLoader;->mAllUsers:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v0, v1, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 266
    iget-object v4, p0, Lcom/android/launcher3/common/model/DataLoader;->mQuietModeUsers:Landroid/util/LongSparseArray;

    sget-object v5, Lcom/android/launcher3/common/model/DataLoader;->sUserManager:Lcom/android/launcher3/common/compat/UserManagerCompat;

    invoke-virtual {v5, v2}, Lcom/android/launcher3/common/compat/UserManagerCompat;->isQuietModeEnabled(Lcom/android/launcher3/common/compat/UserHandleCompat;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v0, v1, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    .line 268
    .end local v0    # "serialNo":J
    .end local v2    # "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    :cond_2
    return-void
.end method
