.class public Lcom/android/launcher3/LauncherModel;
.super Landroid/content/BroadcastReceiver;
.source "LauncherModel.java"

# interfaces
.implements Lcom/android/launcher3/common/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/LauncherModel$OnAllAppItemListLoadCompletedListener;,
        Lcom/android/launcher3/LauncherModel$OnRefreshLiveIconListener;,
        Lcom/android/launcher3/LauncherModel$OnBadgeBindingCompletedLisnter;,
        Lcom/android/launcher3/LauncherModel$OnLauncherBindingItemsCompletedListener;,
        Lcom/android/launcher3/LauncherModel$ShortcutsChangedTask;,
        Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;,
        Lcom/android/launcher3/LauncherModel$LoaderTask;,
        Lcom/android/launcher3/LauncherModel$Callbacks;
    }
.end annotation


# static fields
.field public static final ACTION_EDM_UNINSTALL_STATUS_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.EDM_UNINSTALL_STATUS_INTERNAL"

.field public static final ACTION_SPR_FORCE_REFRESH:Ljava/lang/String; = "com.sec.sprextension.FORCE_LAUNCHER_REFRESH"

.field public static final ACTION_STK_TITLE_IS_LOADED:Ljava/lang/String; = "android.intent.action.STK_TITLE_IS_LOADED"

.field static final DEBUG_LOADERS:Z = true

.field private static final DEBUG_RECEIVER:Z = false

.field public static final ICON_BACKGROUNDS_CHANGED:Ljava/lang/String; = "com.samsung.settings.ICON_BACKGROUNDS_CHANGED"

.field static final TAG:Ljava/lang/String; = "Launcher.Model"

.field static final sBgLock:Ljava/lang/Object;

.field private static final sPackageChangeRunnables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field static final sPendingPackages:Ljava/util/HashMap;
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

.field private static final sWorker:Landroid/os/Handler;

.field public static final sWorkerThread:Landroid/os/HandlerThread;


# instance fields
.field private mAllAppsLoaded:Z

.field private final mApp:Lcom/android/launcher3/LauncherAppState;

.field private final mAppsCanBeOnRemoveableStorage:Z

.field mAppsModel:Lcom/android/launcher3/allapps/model/AppsModel;

.field private mBadgeCache:Lcom/android/launcher3/common/model/BadgeCache;

.field private mCallbacks:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/launcher3/LauncherModel$Callbacks;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mConfigMccWhenLoaded:I

.field private volatile mConfigMncWhenLoaded:I

.field private mDeepShortcutManager:Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;

.field private mDeepShortcutsLoaded:Z

.field private mDisableableAppCache:Lcom/android/launcher3/common/model/DisableableAppCache;

.field private mHandler:Lcom/android/launcher3/common/model/DeferredHandler;

.field private mHasLoaderCompletedOnce:Z

.field private mHasShortcutHostPermission:Z

.field mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

.field private mIconCache:Lcom/android/launcher3/common/model/IconCache;

.field private mIsLoaderTaskRunning:Z

.field private mLoaderTask:Lcom/android/launcher3/LauncherModel$LoaderTask;

.field private final mLock:Ljava/lang/Object;

.field private mNeedLoadAllAppItemList:Z

.field public mOnAllAppItemListLoadCompletedListener:Lcom/android/launcher3/LauncherModel$OnAllAppItemListLoadCompletedListener;

.field private mOnBadgeBindingCompletedLisnter:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/LauncherModel$OnBadgeBindingCompletedLisnter;",
            ">;"
        }
    .end annotation
.end field

.field private mOnLauncherBindingItemsCompletedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/LauncherModel$OnLauncherBindingItemsCompletedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOnRefreshLiveIconListener:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/LauncherModel$OnRefreshLiveIconListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mShortcutPermissionCheckRunnable:Ljava/lang/Runnable;

.field mWidgetLoader:Lcom/android/launcher3/widget/model/WidgetLoader;

.field private mWorkspaceLoaded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 121
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "launcher-loader"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    .line 123
    sget-object v0, Lcom/android/launcher3/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 126
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/android/launcher3/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/launcher3/LauncherModel;->sWorker:Landroid/os/Handler;

    .line 161
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/launcher3/LauncherModel;->sBgLock:Ljava/lang/Object;

    .line 164
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/launcher3/LauncherModel;->sPendingPackages:Ljava/util/HashMap;

    .line 173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher3/LauncherModel;->sPackageChangeRunnables:Ljava/util/ArrayList;

    return-void
.end method

.method constructor <init>(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/common/model/IconCache;Lcom/android/launcher3/common/model/BadgeCache;Lcom/android/launcher3/common/model/DisableableAppCache;Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;)V
    .locals 6
    .param p1, "app"    # Lcom/android/launcher3/LauncherAppState;
    .param p2, "iconCache"    # Lcom/android/launcher3/common/model/IconCache;
    .param p3, "badgeCache"    # Lcom/android/launcher3/common/model/BadgeCache;
    .param p4, "disableableAppCache"    # Lcom/android/launcher3/common/model/DisableableAppCache;
    .param p5, "deepShortcutManager"    # Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;

    .prologue
    .line 189
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 113
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/LauncherModel;->mLock:Ljava/lang/Object;

    .line 114
    new-instance v0, Lcom/android/launcher3/common/model/DeferredHandler;

    invoke-direct {v0}, Lcom/android/launcher3/common/model/DeferredHandler;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/LauncherModel;->mHandler:Lcom/android/launcher3/common/model/DeferredHandler;

    .line 145
    new-instance v0, Lcom/android/launcher3/LauncherModel$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/LauncherModel$1;-><init>(Lcom/android/launcher3/LauncherModel;)V

    iput-object v0, p0, Lcom/android/launcher3/LauncherModel;->mShortcutPermissionCheckRunnable:Ljava/lang/Runnable;

    .line 175
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/LauncherModel;->mNeedLoadAllAppItemList:Z

    .line 1640
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/LauncherModel;->mOnLauncherBindingItemsCompletedListeners:Ljava/util/ArrayList;

    .line 1642
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/LauncherModel;->mOnBadgeBindingCompletedLisnter:Ljava/util/ArrayList;

    .line 1644
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/LauncherModel;->mOnRefreshLiveIconListener:Ljava/util/ArrayList;

    .line 190
    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 191
    .local v1, "context":Landroid/content/Context;
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/LauncherModel;->mAppsCanBeOnRemoveableStorage:Z

    .line 192
    iput-object p1, p0, Lcom/android/launcher3/LauncherModel;->mApp:Lcom/android/launcher3/LauncherAppState;

    .line 193
    new-instance v0, Lcom/android/launcher3/home/HomeLoader;

    move-object v2, p1

    move-object v3, p0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/home/HomeLoader;-><init>(Landroid/content/Context;Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/LauncherModel;Lcom/android/launcher3/common/model/IconCache;Lcom/android/launcher3/common/model/BadgeCache;)V

    iput-object v0, p0, Lcom/android/launcher3/LauncherModel;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    .line 194
    new-instance v0, Lcom/android/launcher3/allapps/model/AppsModel;

    move-object v2, p1

    move-object v3, p0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/allapps/model/AppsModel;-><init>(Landroid/content/Context;Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/LauncherModel;Lcom/android/launcher3/common/model/IconCache;Lcom/android/launcher3/common/model/BadgeCache;)V

    iput-object v0, p0, Lcom/android/launcher3/LauncherModel;->mAppsModel:Lcom/android/launcher3/allapps/model/AppsModel;

    .line 196
    new-instance v0, Lcom/android/launcher3/widget/model/WidgetLoader;

    invoke-direct {v0, p1}, Lcom/android/launcher3/widget/model/WidgetLoader;-><init>(Lcom/android/launcher3/LauncherAppState;)V

    iput-object v0, p0, Lcom/android/launcher3/LauncherModel;->mWidgetLoader:Lcom/android/launcher3/widget/model/WidgetLoader;

    .line 197
    iput-object p2, p0, Lcom/android/launcher3/LauncherModel;->mIconCache:Lcom/android/launcher3/common/model/IconCache;

    .line 198
    iput-object p3, p0, Lcom/android/launcher3/LauncherModel;->mBadgeCache:Lcom/android/launcher3/common/model/BadgeCache;

    .line 199
    iput-object p4, p0, Lcom/android/launcher3/LauncherModel;->mDisableableAppCache:Lcom/android/launcher3/common/model/DisableableAppCache;

    .line 200
    iput-object p5, p0, Lcom/android/launcher3/LauncherModel;->mDeepShortcutManager:Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;

    .line 201
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/LauncherModel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/LauncherModel;

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/android/launcher3/LauncherModel;->mDeepShortcutsLoaded:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/launcher3/LauncherModel;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/LauncherModel;
    .param p1, "x1"    # Z

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/android/launcher3/LauncherModel;->mDeepShortcutsLoaded:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/launcher3/LauncherModel;)Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/LauncherModel;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mDeepShortcutManager:Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/launcher3/LauncherModel;)Lcom/android/launcher3/common/model/DisableableAppCache;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/LauncherModel;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mDisableableAppCache:Lcom/android/launcher3/common/model/DisableableAppCache;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/launcher3/LauncherModel;)Lcom/android/launcher3/common/model/DeferredHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/LauncherModel;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mHandler:Lcom/android/launcher3/common/model/DeferredHandler;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/launcher3/LauncherModel;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/LauncherModel;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/launcher3/LauncherModel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/LauncherModel;

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/android/launcher3/LauncherModel;->mIsLoaderTaskRunning:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/android/launcher3/LauncherModel;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/LauncherModel;
    .param p1, "x1"    # Z

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/android/launcher3/LauncherModel;->mIsLoaderTaskRunning:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/launcher3/LauncherModel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/LauncherModel;

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/android/launcher3/LauncherModel;->mHasLoaderCompletedOnce:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/android/launcher3/LauncherModel;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/LauncherModel;
    .param p1, "x1"    # Z

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/android/launcher3/LauncherModel;->mHasLoaderCompletedOnce:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/launcher3/LauncherModel;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/LauncherModel;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/android/launcher3/LauncherModel;->deleteDeviceOnwerOMCItem(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/launcher3/LauncherModel;)Lcom/android/launcher3/LauncherModel$LoaderTask;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/LauncherModel;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mLoaderTask:Lcom/android/launcher3/LauncherModel$LoaderTask;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/launcher3/LauncherModel;Lcom/android/launcher3/LauncherModel$LoaderTask;)Lcom/android/launcher3/LauncherModel$LoaderTask;
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/LauncherModel;
    .param p1, "x1"    # Lcom/android/launcher3/LauncherModel$LoaderTask;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/launcher3/LauncherModel;->mLoaderTask:Lcom/android/launcher3/LauncherModel$LoaderTask;

    return-object p1
.end method

.method static synthetic access$1900()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 95
    sget-object v0, Lcom/android/launcher3/LauncherModel;->sPackageChangeRunnables:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher3/LauncherModel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/LauncherModel;

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/android/launcher3/LauncherModel;->mHasShortcutHostPermission:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/launcher3/LauncherModel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/LauncherModel;

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/android/launcher3/LauncherModel;->mNeedLoadAllAppItemList:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/android/launcher3/LauncherModel;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/LauncherModel;
    .param p1, "x1"    # Z

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/android/launcher3/LauncherModel;->mNeedLoadAllAppItemList:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/launcher3/LauncherModel;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/LauncherModel;
    .param p1, "x1"    # Z

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/android/launcher3/LauncherModel;->mHasShortcutHostPermission:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/launcher3/LauncherModel;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/LauncherModel;

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/android/launcher3/LauncherModel;->loadAllAppItemList()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/launcher3/LauncherModel;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/LauncherModel;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$2300(Landroid/content/Context;Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/android/launcher3/common/compat/UserHandleCompat;

    .prologue
    .line 95
    invoke-static {p0, p1, p2}, Lcom/android/launcher3/LauncherModel;->isPackageDisabled(Landroid/content/Context;Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/android/launcher3/LauncherModel;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/LauncherModel;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/android/launcher3/LauncherModel;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/launcher3/LauncherModel;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/LauncherModel;
    .param p1, "x1"    # Z

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/android/launcher3/LauncherModel;->updateWidgetsProviders(Z)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/launcher3/LauncherModel;)Lcom/android/launcher3/common/model/BadgeCache;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/LauncherModel;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mBadgeCache:Lcom/android/launcher3/common/model/BadgeCache;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/launcher3/LauncherModel;)Lcom/android/launcher3/LauncherAppState;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/LauncherModel;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mApp:Lcom/android/launcher3/LauncherAppState;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/launcher3/LauncherModel;)Lcom/android/launcher3/common/model/IconCache;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/LauncherModel;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mIconCache:Lcom/android/launcher3/common/model/IconCache;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/launcher3/LauncherModel;[Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/LauncherModel;
    .param p1, "x1"    # [Ljava/lang/String;
    .param p2, "x2"    # Lcom/android/launcher3/common/compat/UserHandleCompat;
    .param p3, "x3"    # Z

    .prologue
    .line 95
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/LauncherModel;->loadWidgets([Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/launcher3/LauncherModel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/LauncherModel;

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/android/launcher3/LauncherModel;->mWorkspaceLoaded:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/launcher3/LauncherModel;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/LauncherModel;
    .param p1, "x1"    # Z

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/android/launcher3/LauncherModel;->mWorkspaceLoaded:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/launcher3/LauncherModel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/LauncherModel;

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/android/launcher3/LauncherModel;->mAllAppsLoaded:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/launcher3/LauncherModel;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/LauncherModel;
    .param p1, "x1"    # Z

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/android/launcher3/LauncherModel;->mAllAppsLoaded:Z

    return p1
.end method

.method private deleteDeviceOnwerOMCItem(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1724
    const-string v5, "device_policy"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 1725
    .local v1, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->semGetDeviceOwner()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1726
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1727
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v3, "restored=?"

    .line 1728
    .local v3, "selection":Ljava/lang/String;
    const/4 v5, 0x1

    new-array v4, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const/16 v6, 0x20

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 1730
    .local v4, "selectionArg":[Ljava/lang/String;
    sget-object v5, Lcom/android/launcher3/common/model/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v5, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 1731
    .local v2, "removedCount":I
    const-string v5, "Launcher.Model"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deleteDeviceOnwerOMCItem - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " items removed."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1733
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v2    # "removedCount":I
    .end local v3    # "selection":Ljava/lang/String;
    .end local v4    # "selectionArg":[Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private doLocaleChange()V
    .locals 1

    .prologue
    .line 473
    new-instance v0, Lcom/android/launcher3/LauncherModel$3;

    invoke-direct {v0, p0}, Lcom/android/launcher3/LauncherModel$3;-><init>(Lcom/android/launcher3/LauncherModel;)V

    invoke-static {v0}, Lcom/android/launcher3/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 481
    return-void
.end method

.method public static getMarketIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1518
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const-string v2, "market"

    .line 1520
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "details"

    .line 1521
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "id"

    .line 1522
    invoke-virtual {v1, v2, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 1523
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 1519
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getOmcIntent()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 1527
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1528
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.android.app.omcagent"

    const-string v3, "com.samsung.android.app.omcagent.ui.application.AppInstallerActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1530
    return-object v0
.end method

.method public static getOmcIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 4
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1534
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1535
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.omcagent.intent.action.OMC_APP_MANAGER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1536
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1537
    const-string v1, "package"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1538
    const-string v1, "Launcher.Model"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Omc Intent created. : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1541
    :cond_0
    return-object v0
.end method

.method public static getWorkerLooper()Landroid/os/Looper;
    .locals 1

    .prologue
    .line 1595
    sget-object v0, Lcom/android/launcher3/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method private isNetworkCodeChanged(Landroid/content/res/Configuration;)Z
    .locals 2
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 451
    iget v0, p0, Lcom/android/launcher3/LauncherModel;->mConfigMccWhenLoaded:I

    iget v1, p1, Landroid/content/res/Configuration;->mcc:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/launcher3/LauncherModel;->mConfigMncWhenLoaded:I

    iget v1, p1, Landroid/content/res/Configuration;->mnc:I

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isPackageDisabled(Landroid/content/Context;Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;

    .prologue
    .line 1492
    invoke-static {p0}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/LauncherAppsCompat;

    move-result-object v0

    .line 1493
    .local v0, "launcherApps":Lcom/android/launcher3/common/compat/LauncherAppsCompat;
    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->isPackageEnabledForProfile(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isValidPackage(Landroid/content/Context;Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;

    .prologue
    .line 1510
    if-nez p1, :cond_0

    .line 1511
    const/4 v1, 0x0

    .line 1514
    :goto_0
    return v1

    .line 1513
    :cond_0
    invoke-static {p0}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/LauncherAppsCompat;

    move-result-object v0

    .line 1514
    .local v0, "launcherApps":Lcom/android/launcher3/common/compat/LauncherAppsCompat;
    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->isPackageEnabledForProfile(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Z

    move-result v1

    goto :goto_0
.end method

.method public static isValidPackageActivity(Landroid/content/Context;Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cn"    # Landroid/content/ComponentName;
    .param p2, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;

    .prologue
    const/4 v1, 0x0

    .line 1498
    if-nez p1, :cond_1

    .line 1505
    :cond_0
    :goto_0
    return v1

    .line 1501
    :cond_1
    invoke-static {p0}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/LauncherAppsCompat;

    move-result-object v0

    .line 1502
    .local v0, "launcherApps":Lcom/android/launcher3/common/compat/LauncherAppsCompat;
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p2}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->isPackageEnabledForProfile(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1505
    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->isActivityEnabledForProfile(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)Z

    move-result v1

    goto :goto_0
.end method

.method public static isValidProvider(Landroid/appwidget/AppWidgetProviderInfo;)Z
    .locals 1
    .param p0, "provider"    # Landroid/appwidget/AppWidgetProviderInfo;

    .prologue
    .line 1545
    if-eqz p0, :cond_0

    iget-object v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 1546
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isValidStateInKnoxMode(Lcom/android/launcher3/common/compat/UserHandleCompat;)Z
    .locals 3
    .param p1, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;

    .prologue
    .line 1800
    const-string v0, "Launcher.Model"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isValidStateInKnoxMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/launcher3/Utilities;->isKnoxMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " user:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1801
    invoke-static {}, Lcom/android/launcher3/Utilities;->isKnoxMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1802
    const/4 v0, 0x0

    .line 1804
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private loadAllAppItemList()V
    .locals 1

    .prologue
    .line 1456
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherModel;->loadAllAppItemList(Lcom/android/launcher3/LauncherModel$OnAllAppItemListLoadCompletedListener;)V

    .line 1457
    return-void
.end method

.method private loadWidgets([Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;Z)V
    .locals 1
    .param p1, "packages"    # [Ljava/lang/String;
    .param p2, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;
    .param p3, "refresh"    # Z

    .prologue
    .line 1614
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mWidgetLoader:Lcom/android/launcher3/widget/model/WidgetLoader;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/launcher3/widget/model/WidgetLoader;->notifyDirty([Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;Z)V

    .line 1615
    return-void
.end method

.method private runOnMainThread(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 208
    sget-object v0, Lcom/android/launcher3/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 210
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mHandler:Lcom/android/launcher3/common/model/DeferredHandler;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/model/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 214
    :goto_0
    return-void

    .line 212
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public static runOnWorkerThread(Ljava/lang/Runnable;)V
    .locals 2
    .param p0, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 221
    sget-object v0, Lcom/android/launcher3/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 222
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 227
    :goto_0
    return-void

    .line 225
    :cond_0
    sget-object v0, Lcom/android/launcher3/LauncherModel;->sWorker:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private setNetworkLocked()V
    .locals 2

    .prologue
    .line 441
    iget-object v1, p0, Lcom/android/launcher3/LauncherModel;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 442
    .local v0, "config":Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->mcc:I

    iput v1, p0, Lcom/android/launcher3/LauncherModel;->mConfigMccWhenLoaded:I

    .line 443
    iget v1, v0, Landroid/content/res/Configuration;->mnc:I

    iput v1, p0, Lcom/android/launcher3/LauncherModel;->mConfigMncWhenLoaded:I

    .line 448
    return-void
.end method

.method private stopLoaderLocked()V
    .locals 3

    .prologue
    .line 526
    const-string v1, "Launcher.Model"

    const-string v2, "stopLoaderLocked"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mLoaderTask:Lcom/android/launcher3/LauncherModel$LoaderTask;

    .line 528
    .local v0, "oldTask":Lcom/android/launcher3/LauncherModel$LoaderTask;
    if-eqz v0, :cond_0

    .line 529
    const-string v1, "Launcher.Model"

    const-string v2, "oldTask is not null. call stop"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel$LoaderTask;->stopLocked()V

    .line 532
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/LauncherModel;->mAppsModel:Lcom/android/launcher3/allapps/model/AppsModel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/launcher3/allapps/model/AppsModel;->updateLock(Z)V

    .line 533
    return-void
.end method

.method private unbindItemInfosAndClearQueuedBindRunnables()V
    .locals 2

    .prologue
    .line 230
    sget-object v0, Lcom/android/launcher3/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 231
    invoke-static {}, Lcom/android/launcher3/util/TestHelper;->isRoboUnitTest()Z

    move-result v0

    if-nez v0, :cond_0

    .line 232
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Expected unbindLauncherItemInfos() to be called from the main thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 236
    :cond_0
    const-string v0, "Launcher.Model"

    const-string v1, "unbindItemInfosAndClearQueuedBindRunnables: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeLoader;->clearDeferredBindRunnable()V

    .line 239
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mAppsModel:Lcom/android/launcher3/allapps/model/AppsModel;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/model/AppsModel;->clearDeferredBindRunnable()V

    .line 242
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mHandler:Lcom/android/launcher3/common/model/DeferredHandler;

    invoke-virtual {v0}, Lcom/android/launcher3/common/model/DeferredHandler;->cancelAll()V

    .line 244
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeLoader;->unbindItemsOnMainThread()V

    .line 245
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mAppsModel:Lcom/android/launcher3/allapps/model/AppsModel;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/model/AppsModel;->unbindItemsOnMainThread()V

    .line 246
    return-void
.end method

.method private updateWidgetsProviders(Z)V
    .locals 1
    .param p1, "refresh"    # Z

    .prologue
    .line 1384
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/launcher3/home/HomeLoader;->getWidgetProviders(Landroid/content/Context;Z)Ljava/util/List;

    .line 1385
    return-void
.end method


# virtual methods
.method public OnAllAppItemListLoadCompleted(Ljava/util/ArrayList;)V
    .locals 5
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
    .line 1683
    .local p1, "appItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    iget-object v3, p0, Lcom/android/launcher3/LauncherModel;->mOnAllAppItemListLoadCompletedListener:Lcom/android/launcher3/LauncherModel$OnAllAppItemListLoadCompletedListener;

    if-eqz v3, :cond_3

    .line 1684
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1685
    .local v0, "allAppItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 1686
    .local v2, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    instance-of v4, v2, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v4, :cond_0

    move-object v1, v2

    .line 1687
    check-cast v1, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 1688
    .local v1, "info":Lcom/android/launcher3/common/base/item/IconInfo;
    iget-object v4, v1, Lcom/android/launcher3/common/base/item/IconInfo;->mIcon:Landroid/graphics/Bitmap;

    if-nez v4, :cond_1

    .line 1689
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/common/model/IconCache;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/launcher3/common/base/item/IconInfo;->getIcon(Lcom/android/launcher3/common/model/IconCache;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, v1, Lcom/android/launcher3/common/base/item/IconInfo;->mIcon:Landroid/graphics/Bitmap;

    .line 1691
    :cond_1
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/item/IconInfo;->isHiddenByXML()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v1}, Lcom/android/launcher3/common/base/item/IconInfo;->isHiddenByGame()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1692
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1696
    .end local v1    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v2    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_2
    new-instance v3, Lcom/android/launcher3/LauncherModel$11;

    invoke-direct {v3, p0, v0}, Lcom/android/launcher3/LauncherModel$11;-><init>(Lcom/android/launcher3/LauncherModel;Ljava/util/ArrayList;)V

    invoke-direct {p0, v3}, Lcom/android/launcher3/LauncherModel;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 1703
    .end local v0    # "allAppItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    :cond_3
    return-void
.end method

.method public dumpState()V
    .locals 3

    .prologue
    .line 1576
    const-string v0, "Launcher.Model"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCallbacks="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1577
    const-string v0, "Launcher.Model"

    const-string v1, "mAllAppsList.added"

    iget-object v2, p0, Lcom/android/launcher3/LauncherModel;->mAppsModel:Lcom/android/launcher3/allapps/model/AppsModel;

    iget-object v2, v2, Lcom/android/launcher3/allapps/model/AppsModel;->added:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/common/base/item/IconInfo;->dumpIconInfoList(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1578
    const-string v0, "Launcher.Model"

    const-string v1, "mAllAppsList.removed"

    iget-object v2, p0, Lcom/android/launcher3/LauncherModel;->mAppsModel:Lcom/android/launcher3/allapps/model/AppsModel;

    iget-object v2, v2, Lcom/android/launcher3/allapps/model/AppsModel;->removed:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/common/base/item/IconInfo;->dumpIconInfoList(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1579
    const-string v0, "Launcher.Model"

    const-string v1, "mAllAppsList.modified"

    iget-object v2, p0, Lcom/android/launcher3/LauncherModel;->mAppsModel:Lcom/android/launcher3/allapps/model/AppsModel;

    iget-object v2, v2, Lcom/android/launcher3/allapps/model/AppsModel;->modified:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/common/base/item/IconInfo;->dumpIconInfoList(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1580
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mLoaderTask:Lcom/android/launcher3/LauncherModel$LoaderTask;

    if-eqz v0, :cond_0

    .line 1581
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mLoaderTask:Lcom/android/launcher3/LauncherModel$LoaderTask;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel$LoaderTask;->dumpState()V

    .line 1585
    :goto_0
    return-void

    .line 1583
    :cond_0
    const-string v0, "Launcher.Model"

    const-string v1, "mLoaderTask=null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public enqueueItemUpdatedTask(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 1022
    sget-object v0, Lcom/android/launcher3/LauncherModel;->sWorker:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1023
    return-void
.end method

.method public flushPendingQueue()V
    .locals 2

    .prologue
    .line 1820
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mHandler:Lcom/android/launcher3/common/model/DeferredHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/model/DeferredHandler;->startPendingQueueFlush(Z)V

    .line 1821
    new-instance v0, Lcom/android/launcher3/LauncherModel$13;

    invoke-direct {v0, p0}, Lcom/android/launcher3/LauncherModel$13;-><init>(Lcom/android/launcher3/LauncherModel;)V

    invoke-static {v0}, Lcom/android/launcher3/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 1828
    return-void
.end method

.method public forceIconReload()V
    .locals 2

    .prologue
    .line 456
    const-string v0, "Launcher.Model"

    const-string v1, "forceIconReload"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mIconCache:Lcom/android/launcher3/common/model/IconCache;

    invoke-virtual {v0}, Lcom/android/launcher3/common/model/IconCache;->clearDB()V

    .line 458
    new-instance v0, Lcom/android/launcher3/LauncherModel$2;

    invoke-direct {v0, p0}, Lcom/android/launcher3/LauncherModel$2;-><init>(Lcom/android/launcher3/LauncherModel;)V

    invoke-static {v0}, Lcom/android/launcher3/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 470
    return-void
.end method

.method public forceReload()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 484
    invoke-virtual {p0, v0, v0}, Lcom/android/launcher3/LauncherModel;->resetLoadedState(ZZ)V

    .line 489
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel;->startLoaderFromBackground()V

    .line 490
    return-void
.end method

.method public getAppsModel()Lcom/android/launcher3/allapps/model/AppsModel;
    .locals 1

    .prologue
    .line 1607
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mAppsModel:Lcom/android/launcher3/allapps/model/AppsModel;

    return-object v0
.end method

.method public getCallback()Lcom/android/launcher3/LauncherModel$Callbacks;
    .locals 1

    .prologue
    .line 1588
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherModel$Callbacks;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDisableableAppCache()Lcom/android/launcher3/common/model/DisableableAppCache;
    .locals 1

    .prologue
    .line 1812
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mDisableableAppCache:Lcom/android/launcher3/common/model/DisableableAppCache;

    return-object v0
.end method

.method public getHandler()Lcom/android/launcher3/common/model/DeferredHandler;
    .locals 1

    .prologue
    .line 1599
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mHandler:Lcom/android/launcher3/common/model/DeferredHandler;

    return-object v0
.end method

.method public getHomeLoader()Lcom/android/launcher3/home/HomeLoader;
    .locals 1

    .prologue
    .line 1603
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    return-object v0
.end method

.method public getLoaderTask()Lcom/android/launcher3/LauncherModel$LoaderTask;
    .locals 1

    .prologue
    .line 1808
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mLoaderTask:Lcom/android/launcher3/LauncherModel$LoaderTask;

    return-object v0
.end method

.method public getWidgetsLoader()Lcom/android/launcher3/widget/model/WidgetLoader;
    .locals 1

    .prologue
    .line 1618
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mWidgetLoader:Lcom/android/launcher3/widget/model/WidgetLoader;

    return-object v0
.end method

.method public handleSCloudRestoreComplete(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1737
    const-string v1, "Launcher.Model"

    const-string v2, "handleSCloudRestoreComplete"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1739
    new-instance v0, Lcom/android/launcher3/LauncherModel$12;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/LauncherModel$12;-><init>(Lcom/android/launcher3/LauncherModel;Landroid/content/Context;)V

    .line 1796
    .local v0, "r":Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/android/launcher3/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 1797
    return-void
.end method

.method public initialize(Lcom/android/launcher3/LauncherModel$Callbacks;)V
    .locals 3
    .param p1, "callbacks"    # Lcom/android/launcher3/LauncherModel$Callbacks;

    .prologue
    .line 253
    iget-object v1, p0, Lcom/android/launcher3/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 256
    :try_start_0
    invoke-direct {p0}, Lcom/android/launcher3/LauncherModel;->unbindItemInfosAndClearQueuedBindRunnables()V

    .line 257
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/launcher3/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    .line 258
    invoke-direct {p0}, Lcom/android/launcher3/LauncherModel;->setNetworkLocked()V

    .line 259
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mHandler:Lcom/android/launcher3/common/model/DeferredHandler;

    iget-object v2, p0, Lcom/android/launcher3/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, p0, v2}, Lcom/android/launcher3/common/model/DeferredHandler;->setCallbacks(Lcom/android/launcher3/LauncherModel;Ljava/lang/ref/WeakReference;)V

    .line 260
    monitor-exit v1

    .line 261
    return-void

    .line 260
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isCurrentCallbacks(Lcom/android/launcher3/LauncherModel$Callbacks;)Z
    .locals 1
    .param p1, "callbacks"    # Lcom/android/launcher3/LauncherModel$Callbacks;

    .prologue
    .line 536
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isModelIdle()Z
    .locals 1

    .prologue
    .line 1831
    iget-boolean v0, p0, Lcom/android/launcher3/LauncherModel;->mAllAppsLoaded:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher3/LauncherModel;->mWorkspaceLoaded:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher3/LauncherModel;->mIsLoaderTaskRunning:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupportVirtualScreen()Z
    .locals 1

    .prologue
    .line 1816
    invoke-static {}, Lcom/android/launcher3/home/ZeroPageController;->supportVirtualScreen()Z

    move-result v0

    return v0
.end method

.method public loadAllAppItemList(Lcom/android/launcher3/LauncherModel$OnAllAppItemListLoadCompletedListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/android/launcher3/LauncherModel$OnAllAppItemListLoadCompletedListener;

    .prologue
    .line 1460
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mOnAllAppItemListLoadCompletedListener:Lcom/android/launcher3/LauncherModel$OnAllAppItemListLoadCompletedListener;

    if-nez v0, :cond_0

    .line 1461
    iput-object p1, p0, Lcom/android/launcher3/LauncherModel;->mOnAllAppItemListLoadCompletedListener:Lcom/android/launcher3/LauncherModel$OnAllAppItemListLoadCompletedListener;

    .line 1462
    const-string v0, "Launcher.Model"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOnAllAppItemListLoadCompletedListener = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/LauncherModel;->mOnAllAppItemListLoadCompletedListener:Lcom/android/launcher3/LauncherModel$OnAllAppItemListLoadCompletedListener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1466
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mOnAllAppItemListLoadCompletedListener:Lcom/android/launcher3/LauncherModel$OnAllAppItemListLoadCompletedListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mOnAllAppItemListLoadCompletedListener:Lcom/android/launcher3/LauncherModel$OnAllAppItemListLoadCompletedListener;

    .line 1467
    invoke-interface {v0}, Lcom/android/launcher3/LauncherModel$OnAllAppItemListLoadCompletedListener;->isTopStage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1468
    iget-boolean v0, p0, Lcom/android/launcher3/LauncherModel;->mIsLoaderTaskRunning:Z

    if-eqz v0, :cond_2

    .line 1469
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/LauncherModel;->mNeedLoadAllAppItemList:Z

    .line 1479
    :cond_1
    :goto_0
    return-void

    .line 1471
    :cond_2
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportHomeModeChange()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1472
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1473
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeLoader;->getAllAppItemInHome()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherModel;->OnAllAppItemListLoadCompleted(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 1475
    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mAppsModel:Lcom/android/launcher3/allapps/model/AppsModel;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/model/AppsModel;->getAllAppItemInApps()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherModel;->OnAllAppItemListLoadCompleted(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public loadWidgetsAndShortcuts([Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;Z)V
    .locals 1
    .param p1, "packages"    # [Ljava/lang/String;
    .param p2, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;
    .param p3, "refresh"    # Z

    .prologue
    .line 1369
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/LauncherModel;->loadWidgets([Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;Z)V

    .line 1371
    new-instance v0, Lcom/android/launcher3/LauncherModel$5;

    invoke-direct {v0, p0, p3}, Lcom/android/launcher3/LauncherModel$5;-><init>(Lcom/android/launcher3/LauncherModel;Z)V

    invoke-static {v0}, Lcom/android/launcher3/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 1377
    return-void
.end method

.method public onBadgeBindingCompleted(Ljava/util/ArrayList;)V
    .locals 3
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
    .line 1712
    .local p1, "badgeItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    iget-object v1, p0, Lcom/android/launcher3/LauncherModel;->mOnBadgeBindingCompletedLisnter:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherModel$OnBadgeBindingCompletedLisnter;

    .line 1713
    .local v0, "listener":Lcom/android/launcher3/LauncherModel$OnBadgeBindingCompletedLisnter;
    invoke-interface {v0, p1}, Lcom/android/launcher3/LauncherModel$OnBadgeBindingCompletedLisnter;->onBadgeBindingCompleted(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 1715
    .end local v0    # "listener":Lcom/android/launcher3/LauncherModel$OnBadgeBindingCompletedLisnter;
    :cond_0
    return-void
.end method

.method public onLauncherBindingItemsCompleted()V
    .locals 3

    .prologue
    .line 1706
    iget-object v1, p0, Lcom/android/launcher3/LauncherModel;->mOnLauncherBindingItemsCompletedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherModel$OnLauncherBindingItemsCompletedListener;

    .line 1707
    .local v0, "listener":Lcom/android/launcher3/LauncherModel$OnLauncherBindingItemsCompletedListener;
    invoke-interface {v0}, Lcom/android/launcher3/LauncherModel$OnLauncherBindingItemsCompletedListener;->onLauncherBindingItemsCompleted()V

    goto :goto_0

    .line 1709
    .end local v0    # "listener":Lcom/android/launcher3/LauncherModel$OnLauncherBindingItemsCompletedListener;
    :cond_0
    return-void
.end method

.method public onPackageAdded(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;

    .prologue
    .line 283
    const-string v1, "Launcher.Model"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPackageAdded:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " user:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    invoke-direct {p0, p2}, Lcom/android/launcher3/LauncherModel;->isValidStateInKnoxMode(Lcom/android/launcher3/common/compat/UserHandleCompat;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 288
    :goto_0
    return-void

    .line 286
    :cond_0
    const/4 v0, 0x1

    .line 287
    .local v0, "op":I
    new-instance v1, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, p0, v0, v2, p2}, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;-><init>(Lcom/android/launcher3/LauncherModel;I[Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    invoke-virtual {p0, v1}, Lcom/android/launcher3/LauncherModel;->enqueueItemUpdatedTask(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onPackageChanged(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;

    .prologue
    .line 265
    const-string v1, "Launcher.Model"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPackageChanged:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " user:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    invoke-direct {p0, p2}, Lcom/android/launcher3/LauncherModel;->isValidStateInKnoxMode(Lcom/android/launcher3/common/compat/UserHandleCompat;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 270
    :goto_0
    return-void

    .line 268
    :cond_0
    const/4 v0, 0x2

    .line 269
    .local v0, "op":I
    new-instance v1, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, p0, v0, v2, p2}, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;-><init>(Lcom/android/launcher3/LauncherModel;I[Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    invoke-virtual {p0, v1}, Lcom/android/launcher3/LauncherModel;->enqueueItemUpdatedTask(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onPackageIconsUpdated(Ljava/util/HashSet;Lcom/android/launcher3/common/compat/UserHandleCompat;)V
    .locals 1
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
    .line 1014
    .local p1, "updatedPackages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/home/HomeLoader;->updateShortcut(Ljava/util/HashSet;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    .line 1015
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mAppsModel:Lcom/android/launcher3/allapps/model/AppsModel;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/allapps/model/AppsModel;->updateIconsAndLabels(Ljava/util/HashSet;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    .line 1019
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;

    .prologue
    .line 274
    const-string v1, "Launcher.Model"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPackageRemoved:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " user:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    invoke-direct {p0, p2}, Lcom/android/launcher3/LauncherModel;->isValidStateInKnoxMode(Lcom/android/launcher3/common/compat/UserHandleCompat;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 279
    :goto_0
    return-void

    .line 277
    :cond_0
    const/4 v0, 0x3

    .line 278
    .local v0, "op":I
    new-instance v1, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, p0, v0, v2, p2}, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;-><init>(Lcom/android/launcher3/LauncherModel;I[Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    invoke-virtual {p0, v1}, Lcom/android/launcher3/LauncherModel;->enqueueItemUpdatedTask(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onPackagesAvailable([Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;Z)V
    .locals 2
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;
    .param p3, "replacing"    # Z

    .prologue
    .line 293
    invoke-direct {p0, p2}, Lcom/android/launcher3/LauncherModel;->isValidStateInKnoxMode(Lcom/android/launcher3/common/compat/UserHandleCompat;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 307
    :cond_0
    :goto_0
    return-void

    .line 295
    :cond_1
    if-nez p3, :cond_2

    .line 296
    new-instance v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;-><init>(Lcom/android/launcher3/LauncherModel;I[Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherModel;->enqueueItemUpdatedTask(Ljava/lang/Runnable;)V

    .line 297
    iget-boolean v0, p0, Lcom/android/launcher3/LauncherModel;->mAppsCanBeOnRemoveableStorage:Z

    if-eqz v0, :cond_0

    .line 301
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel;->startLoaderFromBackground()V

    goto :goto_0

    .line 305
    :cond_2
    new-instance v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;-><init>(Lcom/android/launcher3/LauncherModel;I[Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherModel;->enqueueItemUpdatedTask(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onPackagesSuspended([Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)V
    .locals 2
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;

    .prologue
    .line 323
    invoke-direct {p0, p2}, Lcom/android/launcher3/LauncherModel;->isValidStateInKnoxMode(Lcom/android/launcher3/common/compat/UserHandleCompat;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 326
    :goto_0
    return-void

    .line 325
    :cond_0
    new-instance v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;-><init>(Lcom/android/launcher3/LauncherModel;I[Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherModel;->enqueueItemUpdatedTask(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onPackagesUnavailable([Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;Z)V
    .locals 2
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;
    .param p3, "replacing"    # Z

    .prologue
    .line 312
    invoke-direct {p0, p2}, Lcom/android/launcher3/LauncherModel;->isValidStateInKnoxMode(Lcom/android/launcher3/common/compat/UserHandleCompat;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 319
    :cond_0
    :goto_0
    return-void

    .line 314
    :cond_1
    if-nez p3, :cond_0

    .line 315
    new-instance v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;-><init>(Lcom/android/launcher3/LauncherModel;I[Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherModel;->enqueueItemUpdatedTask(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onPackagesUnsuspended([Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)V
    .locals 2
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;

    .prologue
    .line 330
    invoke-direct {p0, p2}, Lcom/android/launcher3/LauncherModel;->isValidStateInKnoxMode(Lcom/android/launcher3/common/compat/UserHandleCompat;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 333
    :goto_0
    return-void

    .line 332
    :cond_0
    new-instance v0, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;-><init>(Lcom/android/launcher3/LauncherModel;I[Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherModel;->enqueueItemUpdatedTask(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 348
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 349
    .local v1, "action":Ljava/lang/String;
    const-string v12, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 350
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/LauncherModel;->doLocaleChange()V

    .line 433
    :cond_0
    :goto_0
    return-void

    .line 351
    :cond_1
    const-string v12, "com.samsung.settings.ICON_BACKGROUNDS_CHANGED"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 352
    invoke-static/range {p1 .. p1}, Lcom/android/launcher3/util/ShortcutTray;->checkIconTrayEnabled(Landroid/content/Context;)V

    .line 353
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/LauncherModel;->forceIconReload()V

    goto :goto_0

    .line 354
    :cond_2
    const-string v12, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    const-string v12, "android.intent.action.MANAGED_PROFILE_REMOVED"

    .line 355
    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 356
    :cond_3
    invoke-static/range {p1 .. p1}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/UserManagerCompat;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/launcher3/common/compat/UserManagerCompat;->enableAndResetCache()V

    .line 358
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/LauncherModel;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    invoke-virtual {v12}, Lcom/android/launcher3/home/HomeLoader;->updateUsersList()V

    .line 359
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/LauncherModel;->mAppsModel:Lcom/android/launcher3/allapps/model/AppsModel;

    invoke-virtual {v12}, Lcom/android/launcher3/allapps/model/AppsModel;->updateUsersList()V

    .line 361
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 362
    .local v2, "bundle":Landroid/os/Bundle;
    const-string v12, "com.samsung.sec.knox.EXTRA_PERSONA_ID"

    invoke-virtual {v2, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    .line 363
    .local v11, "userId":I
    const-string v12, "Launcher.Model"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "userId:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    invoke-static {v11}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v12

    if-nez v12, :cond_0

    .line 365
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/LauncherModel;->forceReload()V

    goto :goto_0

    .line 367
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v11    # "userId":I
    :cond_4
    const-string v12, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5

    const-string v12, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    .line 368
    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 369
    :cond_5
    invoke-static/range {p2 .. p2}, Lcom/android/launcher3/common/compat/UserHandleCompat;->fromIntent(Landroid/content/Intent;)Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v10

    .line 370
    .local v10, "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    if-eqz v10, :cond_0

    .line 371
    new-instance v12, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;

    const/4 v13, 0x7

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v13, v14, v10}, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;-><init>(Lcom/android/launcher3/LauncherModel;I[Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/launcher3/LauncherModel;->enqueueItemUpdatedTask(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 375
    .end local v10    # "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    :cond_6
    const-string v12, "android.intent.action.STK_TITLE_IS_LOADED"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 376
    const-string v12, "Launcher.Model"

    const-string v13, "receive ACTION_STK_TITLE_IS_LOADED"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v12

    const-string v13, "CscFeature_RIL_FixedStkMenu"

    .line 379
    invoke-virtual {v12, v13}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 380
    .local v5, "isFixedStkMenu":Z
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v12

    const-string v13, "CscFeature_Launcher_FixedStkTitleAs"

    .line 381
    invoke-virtual {v12, v13}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 382
    .local v4, "fixedStkTitle":Ljava/lang/String;
    const-string v12, "gsm.STK_SETUP_MENU"

    const/4 v13, 0x0

    invoke-static {v12, v13}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 384
    .local v9, "stkTitleFromSIM":Ljava/lang/String;
    if-eqz v4, :cond_7

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_7

    const-string v12, "NoSIM%"

    invoke-virtual {v4, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 388
    :cond_7
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_0

    .line 392
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v7

    .line 393
    .local v7, "packageName":Ljava/lang/String;
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v12

    if-eqz v12, :cond_0

    .line 398
    const-string v12, "Launcher.Model"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "ACTION_STK_TITLE_IS_LOADED stkTitleFromSIM = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    const/4 v6, 0x2

    .line 400
    .local v6, "op":I
    if-eqz v5, :cond_8

    .line 401
    new-instance v12, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    aput-object v7, v13, v14

    const/4 v14, 0x1

    const-string v15, "com.sec.android.app.latin.launcher.stk"

    aput-object v15, v13, v14

    .line 403
    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v6, v13, v14}, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;-><init>(Lcom/android/launcher3/LauncherModel;I[Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    .line 401
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/launcher3/LauncherModel;->enqueueItemUpdatedTask(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 405
    :cond_8
    new-instance v12, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    aput-object v7, v13, v14

    .line 406
    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v6, v13, v14}, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;-><init>(Lcom/android/launcher3/LauncherModel;I[Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    .line 405
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/launcher3/LauncherModel;->enqueueItemUpdatedTask(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 408
    .end local v4    # "fixedStkTitle":Ljava/lang/String;
    .end local v5    # "isFixedStkMenu":Z
    .end local v6    # "op":I
    .end local v7    # "packageName":Ljava/lang/String;
    .end local v9    # "stkTitleFromSIM":Ljava/lang/String;
    :cond_9
    const-string v12, "com.sec.sprextension.FORCE_LAUNCHER_REFRESH"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 409
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getLauncherProviderID()Lcom/android/launcher3/LauncherProviderID;

    move-result-object v8

    .line 410
    .local v8, "providerID":Lcom/android/launcher3/LauncherProviderID;
    if-eqz v8, :cond_0

    .line 411
    const-string v12, "Launcher.Model"

    const-string v13, "[SPRINT] FLR Intent received. Refreshing Launcher..."

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    invoke-virtual {v8}, Lcom/android/launcher3/LauncherProviderID;->getScreenIndex()I

    move-result v12

    const-string v13, "com.sec.android.app.launcher.home.defaultpage.prefs"

    move-object/from16 v0, p1

    invoke-static {v0, v12, v13}, Lcom/android/launcher3/Utilities;->setHomeDefaultPageKey(Landroid/content/Context;ILjava/lang/String;)V

    .line 418
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/LauncherModel;->forceReload()V

    goto/16 :goto_0

    .line 420
    .end local v8    # "providerID":Lcom/android/launcher3/LauncherProviderID;
    :cond_a
    const-string v12, "com.samsung.android.knox.intent.action.EDM_UNINSTALL_STATUS_INTERNAL"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 421
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/LauncherModel;->mDisableableAppCache:Lcom/android/launcher3/common/model/DisableableAppCache;

    if-eqz v12, :cond_0

    .line 422
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/LauncherModel;->mDisableableAppCache:Lcom/android/launcher3/common/model/DisableableAppCache;

    invoke-virtual {v12}, Lcom/android/launcher3/common/model/DisableableAppCache;->getEnterprisePolicyBlockUninstallList()V

    goto/16 :goto_0

    .line 425
    :cond_b
    const-string v12, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 427
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/LauncherModel;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v12}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    .line 428
    .local v3, "confg":Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/launcher3/LauncherModel;->isNetworkCodeChanged(Landroid/content/res/Configuration;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 429
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/LauncherModel;->setNetworkLocked()V

    .line 430
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/LauncherModel;->forceIconReload()V

    goto/16 :goto_0
.end method

.method public onRefreshLiveIcon()V
    .locals 3

    .prologue
    .line 1718
    iget-object v1, p0, Lcom/android/launcher3/LauncherModel;->mOnRefreshLiveIconListener:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherModel$OnRefreshLiveIconListener;

    .line 1719
    .local v0, "listener":Lcom/android/launcher3/LauncherModel$OnRefreshLiveIconListener;
    invoke-interface {v0}, Lcom/android/launcher3/LauncherModel$OnRefreshLiveIconListener;->onRefreshLiveIcon()V

    goto :goto_0

    .line 1721
    .end local v0    # "listener":Lcom/android/launcher3/LauncherModel$OnRefreshLiveIconListener;
    :cond_0
    return-void
.end method

.method public onShortcutsChanged(Ljava/lang/String;Ljava/util/List;Lcom/android/launcher3/common/compat/UserHandleCompat;)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p3, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;",
            ">;",
            "Lcom/android/launcher3/common/compat/UserHandleCompat;",
            ")V"
        }
    .end annotation

    .prologue
    .line 337
    .local p2, "shortcuts":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;>;"
    new-instance v0, Lcom/android/launcher3/LauncherModel$ShortcutsChangedTask;

    const/4 v5, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/LauncherModel$ShortcutsChangedTask;-><init>(Lcom/android/launcher3/LauncherModel;Ljava/lang/String;Ljava/util/List;Lcom/android/launcher3/common/compat/UserHandleCompat;Z)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherModel;->enqueueItemUpdatedTask(Ljava/lang/Runnable;)V

    .line 338
    return-void
.end method

.method public registerOnAllAppItemListLoadCompletedListener(Lcom/android/launcher3/LauncherModel$OnAllAppItemListLoadCompletedListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/android/launcher3/LauncherModel$OnAllAppItemListLoadCompletedListener;

    .prologue
    .line 1647
    const-string v0, "Launcher.Model"

    const-string v1, "registerOnAllAppItemListLoadCompletedListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1648
    iput-object p1, p0, Lcom/android/launcher3/LauncherModel;->mOnAllAppItemListLoadCompletedListener:Lcom/android/launcher3/LauncherModel$OnAllAppItemListLoadCompletedListener;

    .line 1649
    return-void
.end method

.method public registerOnBadgeBindingCompletedLisnter(Lcom/android/launcher3/LauncherModel$OnBadgeBindingCompletedLisnter;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/launcher3/LauncherModel$OnBadgeBindingCompletedLisnter;

    .prologue
    .line 1656
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mOnBadgeBindingCompletedLisnter:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1657
    return-void
.end method

.method public registerOnLauncherBindingItemsCompletedListener(Lcom/android/launcher3/LauncherModel$OnLauncherBindingItemsCompletedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/launcher3/LauncherModel$OnLauncherBindingItemsCompletedListener;

    .prologue
    .line 1652
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mOnLauncherBindingItemsCompletedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1653
    return-void
.end method

.method public registerOnLiveIconUpdateListener(Lcom/android/launcher3/LauncherModel$OnRefreshLiveIconListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/launcher3/LauncherModel$OnRefreshLiveIconListener;

    .prologue
    .line 1660
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mOnRefreshLiveIconListener:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1661
    return-void
.end method

.method public reloadBadges(Lcom/android/launcher3/LauncherAppState;)V
    .locals 3
    .param p1, "appState"    # Lcom/android/launcher3/LauncherAppState;

    .prologue
    .line 1550
    const-string v1, "Launcher.Model"

    const-string v2, "reloadBadges entered."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1551
    new-instance v0, Lcom/android/launcher3/LauncherModel$10;

    invoke-direct {v0, p0}, Lcom/android/launcher3/LauncherModel$10;-><init>(Lcom/android/launcher3/LauncherModel;)V

    .line 1572
    .local v0, "r":Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/android/launcher3/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 1573
    return-void
.end method

.method public resetLoadedState(ZZ)V
    .locals 2
    .param p1, "resetAllAppsLoaded"    # Z
    .param p2, "resetWorkspaceLoaded"    # Z

    .prologue
    .line 493
    iget-object v1, p0, Lcom/android/launcher3/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 496
    :try_start_0
    invoke-direct {p0}, Lcom/android/launcher3/LauncherModel;->stopLoaderLocked()V

    .line 497
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/LauncherModel;->mAllAppsLoaded:Z

    .line 498
    :cond_0
    if-eqz p2, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/LauncherModel;->mWorkspaceLoaded:Z

    .line 499
    :cond_1
    monitor-exit v1

    .line 500
    return-void

    .line 499
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setHasLoaderCompletedOnce(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 1835
    iget-object v1, p0, Lcom/android/launcher3/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1836
    :try_start_0
    iput-boolean p1, p0, Lcom/android/launcher3/LauncherModel;->mHasLoaderCompletedOnce:Z

    .line 1837
    monitor-exit v1

    .line 1838
    return-void

    .line 1837
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public startLoader(I)V
    .locals 3
    .param p1, "synchronousBindPage"    # I

    .prologue
    .line 540
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/common/model/DataLoader;->setDeviceProfile(Lcom/android/launcher3/common/deviceprofile/DeviceProfile;)V

    .line 541
    const-string v0, "Launcher.Model"

    const-string v1, "startLoader"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherAppState;->enableExternalQueue(Z)V

    .line 544
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/util/logging/SALogging;->startLoader()V

    .line 545
    iget-object v1, p0, Lcom/android/launcher3/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 548
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeLoader;->clearDeferredBindRunnable()V

    .line 549
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mAppsModel:Lcom/android/launcher3/allapps/model/AppsModel;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/model/AppsModel;->clearDeferredBindRunnable()V

    .line 552
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 554
    invoke-direct {p0}, Lcom/android/launcher3/LauncherModel;->stopLoaderLocked()V

    .line 555
    new-instance v0, Lcom/android/launcher3/LauncherModel$LoaderTask;

    iget-object v2, p0, Lcom/android/launcher3/LauncherModel;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/android/launcher3/LauncherModel$LoaderTask;-><init>(Lcom/android/launcher3/LauncherModel;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/LauncherModel;->mLoaderTask:Lcom/android/launcher3/LauncherModel$LoaderTask;

    .line 556
    const/16 v0, -0x3e9

    if-eq p1, v0, :cond_1

    iget-boolean v0, p0, Lcom/android/launcher3/LauncherModel;->mAllAppsLoaded:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/launcher3/LauncherModel;->mWorkspaceLoaded:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/launcher3/LauncherModel;->mIsLoaderTaskRunning:Z

    if-nez v0, :cond_1

    .line 558
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mLoaderTask:Lcom/android/launcher3/LauncherModel$LoaderTask;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/LauncherModel$LoaderTask;->runBindSynchronousPage(I)V

    .line 564
    :cond_0
    :goto_0
    monitor-exit v1

    .line 565
    return-void

    .line 560
    :cond_1
    sget-object v0, Lcom/android/launcher3/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/os/HandlerThread;->setPriority(I)V

    .line 561
    sget-object v0, Lcom/android/launcher3/LauncherModel;->sWorker:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/launcher3/LauncherModel;->mLoaderTask:Lcom/android/launcher3/LauncherModel$LoaderTask;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 564
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public startLoaderFromBackground()V
    .locals 3

    .prologue
    .line 509
    const/4 v1, 0x0

    .line 510
    .local v1, "runLoader":Z
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel;->getCallback()Lcom/android/launcher3/LauncherModel$Callbacks;

    move-result-object v0

    .line 511
    .local v0, "callbacks":Lcom/android/launcher3/LauncherModel$Callbacks;
    if-eqz v0, :cond_0

    .line 513
    invoke-interface {v0}, Lcom/android/launcher3/LauncherModel$Callbacks;->setLoadOnResume()Z

    move-result v2

    if-nez v2, :cond_0

    .line 514
    const/4 v1, 0x1

    .line 517
    :cond_0
    if-eqz v1, :cond_1

    .line 518
    const/16 v2, -0x3e9

    invoke-virtual {p0, v2}, Lcom/android/launcher3/LauncherModel;->startLoader(I)V

    .line 520
    :cond_1
    return-void
.end method

.method public stopLoader()V
    .locals 3

    .prologue
    .line 568
    const-string v0, "Launcher.Model"

    const-string v1, "stopLoader"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    iget-object v1, p0, Lcom/android/launcher3/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 570
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mLoaderTask:Lcom/android/launcher3/LauncherModel$LoaderTask;

    if-eqz v0, :cond_0

    .line 571
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mLoaderTask:Lcom/android/launcher3/LauncherModel$LoaderTask;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel$LoaderTask;->stopLocked()V

    .line 573
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mAppsModel:Lcom/android/launcher3/allapps/model/AppsModel;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/launcher3/allapps/model/AppsModel;->updateLock(Z)V

    .line 574
    monitor-exit v1

    .line 575
    return-void

    .line 574
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterOnAllAppItemListLoadCompletedListener(Lcom/android/launcher3/Launcher;)V
    .locals 2
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;

    .prologue
    .line 1664
    invoke-virtual {p0, p1}, Lcom/android/launcher3/LauncherModel;->isCurrentCallbacks(Lcom/android/launcher3/LauncherModel$Callbacks;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1665
    const-string v0, "Launcher.Model"

    const-string v1, "unregisterOnAllAppItemListLoadCompletedListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1666
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/LauncherModel;->mOnAllAppItemListLoadCompletedListener:Lcom/android/launcher3/LauncherModel$OnAllAppItemListLoadCompletedListener;

    .line 1668
    :cond_0
    return-void
.end method

.method public unregisterOnBadgeBindingCompletedLisnter(Lcom/android/launcher3/LauncherModel$OnBadgeBindingCompletedLisnter;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/launcher3/LauncherModel$OnBadgeBindingCompletedLisnter;

    .prologue
    .line 1675
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mOnBadgeBindingCompletedLisnter:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1676
    return-void
.end method

.method public unregisterOnLauncherBindingItemsCompletedListener(Lcom/android/launcher3/LauncherModel$OnLauncherBindingItemsCompletedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/launcher3/LauncherModel$OnLauncherBindingItemsCompletedListener;

    .prologue
    .line 1671
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mOnLauncherBindingItemsCompletedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1672
    return-void
.end method

.method public unregisterOnLiveIconUpdateLisnter(Lcom/android/launcher3/LauncherModel$OnRefreshLiveIconListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/launcher3/LauncherModel$OnRefreshLiveIconListener;

    .prologue
    .line 1679
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mOnRefreshLiveIconListener:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1680
    return-void
.end method

.method public updateAppsButton(Landroid/content/Context;ZLcom/android/launcher3/common/base/item/IconInfo;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z
    .param p3, "appsButton"    # Lcom/android/launcher3/common/base/item/IconInfo;

    .prologue
    .line 1389
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getAppsButtonEnabled()Z

    move-result v0

    if-ne v0, p2, :cond_0

    .line 1390
    const-string v0, "Launcher.Model"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "appsButton already set : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1399
    :goto_0
    return-void

    .line 1393
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v0, p2}, Lcom/android/launcher3/LauncherAppState;->setAppsButtonEnabled(Z)V

    .line 1394
    if-eqz p2, :cond_1

    .line 1395
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    invoke-virtual {v0, p1, p3}, Lcom/android/launcher3/home/HomeLoader;->enableAppsButton(Landroid/content/Context;Lcom/android/launcher3/common/base/item/IconInfo;)V

    goto :goto_0

    .line 1397
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeLoader;->disableAppsButton()V

    goto :goto_0
.end method

.method public updateAppsForCloneItemEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1402
    new-instance v0, Lcom/android/launcher3/LauncherModel$6;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/LauncherModel$6;-><init>(Lcom/android/launcher3/LauncherModel;Z)V

    invoke-static {v0}, Lcom/android/launcher3/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 1413
    return-void
.end method

.method public updateAppsOnlyDB(Ljava/util/ArrayList;)V
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
    .line 1440
    .local p1, "updateItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v0, Lcom/android/launcher3/LauncherModel$8;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/LauncherModel$8;-><init>(Lcom/android/launcher3/LauncherModel;Ljava/util/ArrayList;)V

    invoke-static {v0}, Lcom/android/launcher3/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 1453
    return-void
.end method

.method public updateItemInfo(Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
    .locals 1
    .param p3, "isGameApp"    # Z
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
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1416
    .local p1, "hideItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .local p2, "addItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v0, Lcom/android/launcher3/LauncherModel$7;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/android/launcher3/LauncherModel$7;-><init>(Lcom/android/launcher3/LauncherModel;Ljava/util/ArrayList;ZLjava/util/ArrayList;)V

    invoke-static {v0}, Lcom/android/launcher3/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 1437
    return-void
.end method

.method public updateItemInfoToAppsItems(Ljava/util/ArrayList;)V
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
    .local p1, "updateItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v0, Lcom/android/launcher3/LauncherModel$9;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/LauncherModel$9;-><init>(Lcom/android/launcher3/LauncherModel;Ljava/util/ArrayList;)V

    invoke-static {v0}, Lcom/android/launcher3/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 1488
    return-void
.end method

.method public updateShortcutInfo(Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;Lcom/android/launcher3/common/base/item/IconInfo;)V
    .locals 1
    .param p1, "fullDetail"    # Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;
    .param p2, "info"    # Lcom/android/launcher3/common/base/item/IconInfo;

    .prologue
    .line 1335
    new-instance v0, Lcom/android/launcher3/LauncherModel$4;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/launcher3/LauncherModel$4;-><init>(Lcom/android/launcher3/LauncherModel;Lcom/android/launcher3/common/base/item/IconInfo;Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherModel;->enqueueItemUpdatedTask(Ljava/lang/Runnable;)V

    .line 1344
    return-void
.end method
