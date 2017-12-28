.class public Lcom/android/launcher3/home/HomeLoader;
.super Lcom/android/launcher3/common/model/DataLoader;
.source "HomeLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/home/HomeLoader$NewScreenInfo;,
        Lcom/android/launcher3/home/HomeLoader$AppsAvailabilityCheck;,
        Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask;,
        Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;
    }
.end annotation


# static fields
.field private static final ACTION_APPWIDGET_SINGLE_INSTANCE:Ljava/lang/String; = "com.sec.launcher.action.APPWIDGET_SINGLE_INSTANCE"

.field private static final ACTION_APPWIDGET_SINGLE_INSTANCE_PACKAGE:Ljava/lang/String; = "com.sec.launcher.action.APPWIDGET_SINGLE_INSTANCE_PACKAGE"

.field private static final HOTSEAT_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final INVALID_SCREEN_ID:J = -0x1L

.field private static final ITEMS_CHUNK:I = 0x6

.field private static final TAG:Ljava/lang/String; = "HomeLoader"

.field private static final sBgWidgetLock:Ljava/lang/Object;

.field static sBgWidgetProviders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/launcher3/util/ComponentKey;",
            "Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final DEBUG_LOADERS:Z

.field private final EASY_APPS_INDEX:I

.field private final OCCUPIED_HOTSEAT:I

.field private final OCCUPIED_WORKSPACE:I

.field private final OUTSIDE_ITEM:I

.field private final OVERLAP_ITEM:I

.field private final REMOVE_ITEM:I

.field private final RESTORED_ITEM:I

.field private final mBgHotseatItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCallbacks:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field private mExtraItemsAfterGridChanged:Ljava/util/HashMap;
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

.field private mIsFirstBind:Z

.field private mItemPositionHelper:Lcom/android/launcher3/home/HomeItemPositionHelper;

.field private final mLoadCompleteRunnables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private mNewPageIdsAfterGridChanged:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher3/home/HomeLoader$NewScreenInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 115
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/launcher3/home/HomeLoader;->sBgWidgetLock:Ljava/lang/Object;

    .line 3138
    new-instance v0, Lcom/android/launcher3/home/HomeLoader$31;

    invoke-direct {v0}, Lcom/android/launcher3/home/HomeLoader$31;-><init>()V

    sput-object v0, Lcom/android/launcher3/home/HomeLoader;->HOTSEAT_COMPARATOR:Ljava/util/Comparator;

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
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 179
    invoke-direct {p0}, Lcom/android/launcher3/common/model/DataLoader;-><init>()V

    .line 114
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mLock:Ljava/lang/Object;

    .line 119
    iput-boolean v1, p0, Lcom/android/launcher3/home/HomeLoader;->DEBUG_LOADERS:Z

    .line 121
    iput-boolean v1, p0, Lcom/android/launcher3/home/HomeLoader;->mIsFirstBind:Z

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mBgHotseatItems:Ljava/util/ArrayList;

    .line 126
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mNewPageIdsAfterGridChanged:Ljava/util/HashMap;

    .line 127
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mExtraItemsAfterGridChanged:Ljava/util/HashMap;

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mLoadCompleteRunnables:Ljava/util/ArrayList;

    .line 131
    iput v1, p0, Lcom/android/launcher3/home/HomeLoader;->REMOVE_ITEM:I

    .line 132
    iput v2, p0, Lcom/android/launcher3/home/HomeLoader;->RESTORED_ITEM:I

    .line 133
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/launcher3/home/HomeLoader;->OUTSIDE_ITEM:I

    .line 134
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/launcher3/home/HomeLoader;->OVERLAP_ITEM:I

    .line 136
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/home/HomeLoader;->OCCUPIED_WORKSPACE:I

    .line 137
    iput v1, p0, Lcom/android/launcher3/home/HomeLoader;->OCCUPIED_HOTSEAT:I

    .line 139
    iput v2, p0, Lcom/android/launcher3/home/HomeLoader;->EASY_APPS_INDEX:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p0

    .line 180
    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/home/HomeLoader;->init(Landroid/content/Context;Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/LauncherModel;Lcom/android/launcher3/common/model/IconCache;Lcom/android/launcher3/common/model/BadgeCache;Lcom/android/launcher3/common/model/DataLoader;)V

    .line 181
    new-instance v0, Lcom/android/launcher3/common/model/FavoritesUpdater;

    invoke-direct {v0, p1, p3, p4, p0}, Lcom/android/launcher3/common/model/FavoritesUpdater;-><init>(Landroid/content/Context;Lcom/android/launcher3/LauncherModel;Lcom/android/launcher3/common/model/IconCache;Lcom/android/launcher3/common/model/DataLoader;)V

    iput-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    .line 182
    new-instance v0, Lcom/android/launcher3/home/HomeItemPositionHelper;

    sget-object v1, Lcom/android/launcher3/home/HomeLoader;->sContentResolver:Landroid/content/ContentResolver;

    invoke-direct {v0, v1}, Lcom/android/launcher3/home/HomeItemPositionHelper;-><init>(Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mItemPositionHelper:Lcom/android/launcher3/home/HomeItemPositionHelper;

    .line 183
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/home/HomeLoader;)Lcom/android/launcher3/home/HomeItemPositionHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeLoader;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mItemPositionHelper:Lcom/android/launcher3/home/HomeItemPositionHelper;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeLoader;
    .param p1, "x1"    # Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;

    .prologue
    .line 109
    invoke-virtual {p0, p1}, Lcom/android/launcher3/home/HomeLoader;->isStopped(Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/launcher3/home/HomeLoader;)Lcom/android/launcher3/common/model/FavoritesUpdater;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeLoader;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    return-object v0
.end method

.method static synthetic access$10000()Z
    .locals 1

    .prologue
    .line 109
    sget-boolean v0, Lcom/android/launcher3/home/HomeLoader;->sIsLoadingAndBindingWorkspace:Z

    return v0
.end method

.method static synthetic access$10100()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sBindCompleteRunnables:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$10200()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sBindCompleteRunnables:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$10300(Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/Runnable;

    .prologue
    .line 109
    invoke-static {p0}, Lcom/android/launcher3/home/HomeLoader;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$10400()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sBgLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$10500(Lcom/android/launcher3/home/HomeLoader;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeLoader;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mBgOrderedScreens:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$10600(Lcom/android/launcher3/home/HomeLoader;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeLoader;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mBgOrderedScreens:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$10700(Lcom/android/launcher3/home/HomeLoader;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeLoader;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mBgPagesItems:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$10800(Lcom/android/launcher3/home/HomeLoader;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeLoader;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mBgPagesItems:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$10900(Lcom/android/launcher3/home/HomeLoader;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeLoader;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mBgPagesItems:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/launcher3/home/HomeLoader;)Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeLoader;

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/android/launcher3/home/HomeLoader;->getCallback()Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$11000(Lcom/android/launcher3/home/HomeLoader;)Lcom/android/launcher3/common/model/FavoritesUpdater;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeLoader;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    return-object v0
.end method

.method static synthetic access$11100(Lcom/android/launcher3/home/HomeLoader;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeLoader;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mBgOrderedScreens:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$11200()Landroid/content/Context;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$11300(Lcom/android/launcher3/home/HomeLoader;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeLoader;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mBgOrderedScreens:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$11400(Lcom/android/launcher3/home/HomeLoader;)Lcom/android/launcher3/common/model/FavoritesUpdater;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeLoader;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    return-object v0
.end method

.method static synthetic access$11500(Lcom/android/launcher3/home/HomeLoader;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeLoader;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 109
    invoke-virtual {p0, p1}, Lcom/android/launcher3/home/HomeLoader;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$11600()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sBgLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$11700(Lcom/android/launcher3/home/HomeLoader;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeLoader;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mBgOrderedScreens:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$11800(Lcom/android/launcher3/home/HomeLoader;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeLoader;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mBgOrderedScreens:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$11900(Lcom/android/launcher3/home/HomeLoader;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeLoader;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mBgPagesItems:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/launcher3/home/HomeLoader;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeLoader;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 109
    invoke-virtual {p0, p1}, Lcom/android/launcher3/home/HomeLoader;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$12000(Lcom/android/launcher3/home/HomeLoader;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeLoader;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 109
    invoke-virtual {p0, p1}, Lcom/android/launcher3/home/HomeLoader;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$12100()Landroid/content/Context;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$12200()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sBgLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$12300(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/common/base/item/ItemInfo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeLoader;
    .param p1, "x1"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/android/launcher3/home/HomeLoader;->isAllAppItemInApps(Lcom/android/launcher3/common/base/item/ItemInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$12400(Lcom/android/launcher3/home/HomeLoader;)Lcom/android/launcher3/common/model/FavoritesUpdater;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeLoader;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    return-object v0
.end method

.method static synthetic access$12500(Lcom/android/launcher3/home/HomeLoader;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeLoader;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 109
    invoke-virtual {p0, p1}, Lcom/android/launcher3/home/HomeLoader;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$12600()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sBgLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$12700(Lcom/android/launcher3/home/HomeLoader;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeLoader;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mBgHotseatItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$12800(Lcom/android/launcher3/home/HomeLoader;)Lcom/android/launcher3/common/model/FavoritesUpdater;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeLoader;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    return-object v0
.end method

.method static synthetic access$12900(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/common/base/item/ItemInfo;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeLoader;
    .param p1, "x1"    # Lcom/android/launcher3/common/base/item/ItemInfo;
    .param p2, "x2"    # I

    .prologue
    .line 109
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/home/HomeLoader;->addHotseatItemByItemInfo(Lcom/android/launcher3/common/base/item/ItemInfo;I)V

    return-void
.end method

.method static synthetic access$1300()Landroid/content/Context;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$13000()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sBgLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$13100(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeLoader;
    .param p1, "x1"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/android/launcher3/home/HomeLoader;->removeHotseatItemByItemInfo(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    return-void
.end method

.method static synthetic access$13200()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sBgLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$13300(Lcom/android/launcher3/home/HomeLoader;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeLoader;
    .param p1, "x1"    # I

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/android/launcher3/home/HomeLoader;->reArrangHotseatItemsByRemoved(I)V

    return-void
.end method

.method static synthetic access$13400(Lcom/android/launcher3/home/HomeLoader;)Lcom/android/launcher3/common/model/FavoritesUpdater;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeLoader;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    return-object v0
.end method

.method static synthetic access$13500()Landroid/content/Context;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$13600(Lcom/android/launcher3/home/HomeLoader;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeLoader;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 109
    invoke-virtual {p0, p1}, Lcom/android/launcher3/home/HomeLoader;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$13700()Lcom/android/launcher3/common/compat/LauncherAppsCompat;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sLauncherApps:Lcom/android/launcher3/common/compat/LauncherAppsCompat;

    return-object v0
.end method

.method static synthetic access$13800()Landroid/content/Context;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$13900()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sBgLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1400()Lcom/android/launcher3/common/compat/LauncherAppsCompat;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sLauncherApps:Lcom/android/launcher3/common/compat/LauncherAppsCompat;

    return-object v0
.end method

.method static synthetic access$14000(Lcom/android/launcher3/home/HomeLoader;)Lcom/android/launcher3/common/model/FavoritesUpdater;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeLoader;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    return-object v0
.end method

.method static synthetic access$14100(Lcom/android/launcher3/home/HomeLoader;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeLoader;
    .param p1, "x1"    # I

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/android/launcher3/home/HomeLoader;->getCellXFromHotseatOrder(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$14200(Lcom/android/launcher3/home/HomeLoader;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeLoader;
    .param p1, "x1"    # I

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/android/launcher3/home/HomeLoader;->getCellYFromHotseatOrder(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$14300(Lcom/android/launcher3/home/HomeLoader;Ljava/util/ArrayList;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeLoader;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # I

    .prologue
    .line 109
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/home/HomeLoader;->reArrangeHotseatData(Ljava/util/ArrayList;I)V

    return-void
.end method

.method static synthetic access$14400(Lcom/android/launcher3/home/HomeLoader;)Lcom/android/launcher3/common/model/FavoritesUpdater;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeLoader;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    return-object v0
.end method

.method static synthetic access$14500(Lcom/android/launcher3/home/HomeLoader;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeLoader;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 109
    invoke-virtual {p0, p1}, Lcom/android/launcher3/home/HomeLoader;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$14600()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sBgLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$14700(Lcom/android/launcher3/home/HomeLoader;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeLoader;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mBgOrderedScreens:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$14800()Landroid/content/Context;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$14900(Lcom/android/launcher3/home/HomeLoader;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeLoader;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mBgOrderedScreens:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1500()Landroid/content/Context;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$15000()Landroid/content/Context;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$15100()Landroid/content/Context;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$15200()Landroid/content/Context;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$15300()Lcom/android/launcher3/common/compat/LauncherAppsCompat;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sLauncherApps:Lcom/android/launcher3/common/compat/LauncherAppsCompat;

    return-object v0
.end method

.method static synthetic access$15400()Landroid/content/Context;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$15500(Lcom/android/launcher3/home/HomeLoader;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeLoader;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mBgPagesItems:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$15600(Lcom/android/launcher3/home/HomeLoader;)Lcom/android/launcher3/common/model/FavoritesUpdater;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeLoader;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    return-object v0
.end method

.method static synthetic access$15700(Lcom/android/launcher3/home/HomeLoader;)Lcom/android/launcher3/common/model/FavoritesUpdater;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeLoader;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    return-object v0
.end method

.method static synthetic access$15800()Landroid/content/Context;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$15900(Lcom/android/launcher3/home/HomeLoader;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeLoader;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 109
    invoke-virtual {p0, p1}, Lcom/android/launcher3/home/HomeLoader;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$1600()Landroid/content/Context;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/launcher3/home/HomeLoader;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeLoader;

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeLoader;->getAllApps()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800()Landroid/content/Context;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/launcher3/home/HomeLoader;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeLoader;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/android/launcher3/home/HomeLoader;->restoreStkPositionIfNecessary(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$2000()Landroid/content/Context;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/common/model/DataLoader$PageLoaderTask;)Lcom/android/launcher3/common/model/DataLoader$PageLoaderTask;
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeLoader;
    .param p1, "x1"    # Lcom/android/launcher3/common/model/DataLoader$PageLoaderTask;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/launcher3/home/HomeLoader;->mPageLoaderTask:Lcom/android/launcher3/common/model/DataLoader$PageLoaderTask;

    return-object p1
.end method

.method static synthetic access$2100()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sProfile:Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    return-object v0
.end method

.method static synthetic access$2200()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sProfile:Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    return-object v0
.end method

.method static synthetic access$2300()Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/launcher3/home/HomeLoader;Ljava/util/HashMap;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeLoader;
    .param p1, "x1"    # Ljava/util/HashMap;
    .param p2, "x2"    # Ljava/util/ArrayList;

    .prologue
    .line 109
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/home/HomeLoader;->doHandlingItems(Ljava/util/HashMap;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/launcher3/home/HomeLoader;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeLoader;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mExtraItemsAfterGridChanged:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/launcher3/home/HomeLoader;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeLoader;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mNewPageIdsAfterGridChanged:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/launcher3/home/HomeLoader;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeLoader;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mBgOrderedScreens:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2800()Landroid/content/Context;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2900()Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$3000()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sBgLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3100()Lcom/android/launcher3/util/LongArrayMap;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/launcher3/home/HomeLoader;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeLoader;

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/android/launcher3/home/HomeLoader;->makeSingleInstanceAppWidgetList()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Lcom/android/launcher3/home/HomeLoader;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeLoader;

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/android/launcher3/home/HomeLoader;->getWidgetsInHome()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeLoader;
    .param p1, "x1"    # Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/android/launcher3/home/HomeLoader;->bindFestivalPageIfNecessary(Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/launcher3/home/HomeLoader;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeLoader;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mShortcutKeyToPinnedShortcuts:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$3600()Ljava/util/Map;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sBgPinnedShortcutCounts:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/launcher3/home/HomeLoader;)Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeLoader;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mDeepShortcutManager:Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/launcher3/home/HomeLoader;)Lcom/android/launcher3/common/model/DataLoader$DataLoaderCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeLoader;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mLoaderCallback:Lcom/android/launcher3/common/model/DataLoader$DataLoaderCallback;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/launcher3/home/HomeLoader;)Lcom/android/launcher3/common/model/DataLoader$PageLoaderTask;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeLoader;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mPageLoaderTask:Lcom/android/launcher3/common/model/DataLoader$PageLoaderTask;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/launcher3/home/HomeLoader;)Lcom/android/launcher3/common/model/DataLoader$DataLoaderCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeLoader;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mLoaderCallback:Lcom/android/launcher3/common/model/DataLoader$DataLoaderCallback;

    return-object v0
.end method

.method static synthetic access$4200()Z
    .locals 1

    .prologue
    .line 109
    sget-boolean v0, Lcom/android/launcher3/home/HomeLoader;->mIsBootCompleted:Z

    return v0
.end method

.method static synthetic access$4300()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sPendingPackages:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$4500()Z
    .locals 1

    .prologue
    .line 109
    sget-boolean v0, Lcom/android/launcher3/home/HomeLoader;->mIsBootCompleted:Z

    return v0
.end method

.method static synthetic access$4600()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sPendingPackages:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$4700()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sWorkerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4800()Landroid/content/Context;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4902(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/common/model/DataLoader$DataLoaderCallback;)Lcom/android/launcher3/common/model/DataLoader$DataLoaderCallback;
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeLoader;
    .param p1, "x1"    # Lcom/android/launcher3/common/model/DataLoader$DataLoaderCallback;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/launcher3/home/HomeLoader;->mLoaderCallback:Lcom/android/launcher3/common/model/DataLoader$DataLoaderCallback;

    return-object p1
.end method

.method static synthetic access$5000(Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/Runnable;

    .prologue
    .line 109
    invoke-static {p0}, Lcom/android/launcher3/home/HomeLoader;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$502(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/common/model/DataLoader$DataLoaderCallback;)Lcom/android/launcher3/common/model/DataLoader$DataLoaderCallback;
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeLoader;
    .param p1, "x1"    # Lcom/android/launcher3/common/model/DataLoader$DataLoaderCallback;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/launcher3/home/HomeLoader;->mLoaderCallback:Lcom/android/launcher3/common/model/DataLoader$DataLoaderCallback;

    return-object p1
.end method

.method static synthetic access$5100(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeLoader;
    .param p1, "x1"    # Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;
    .param p2, "x2"    # Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;

    .prologue
    .line 109
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/home/HomeLoader;->tryGetCallbacks(Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5202(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 109
    sput-boolean p0, Lcom/android/launcher3/home/HomeLoader;->sIsLoadingAndBindingWorkspace:Z

    return p0
.end method

.method static synthetic access$5300(Lcom/android/launcher3/home/HomeLoader;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeLoader;

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/android/launcher3/home/HomeLoader;->runAllBindCompleteRunnables()V

    return-void
.end method

.method static synthetic access$5402(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/common/model/DataLoader$PageLoaderTask;)Lcom/android/launcher3/common/model/DataLoader$PageLoaderTask;
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeLoader;
    .param p1, "x1"    # Lcom/android/launcher3/common/model/DataLoader$PageLoaderTask;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/launcher3/home/HomeLoader;->mPageLoaderTask:Lcom/android/launcher3/common/model/DataLoader$PageLoaderTask;

    return-object p1
.end method

.method static synthetic access$5500(Lcom/android/launcher3/home/HomeLoader;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeLoader;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 109
    invoke-virtual {p0, p1}, Lcom/android/launcher3/home/HomeLoader;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$5600()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sBgLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$5700()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sPendingPackages:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$5800()Lcom/android/launcher3/common/compat/LauncherAppsCompat;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sLauncherApps:Lcom/android/launcher3/common/compat/LauncherAppsCompat;

    return-object v0
.end method

.method static synthetic access$5900()Landroid/content/pm/PackageManager;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/launcher3/home/HomeLoader;)[Z
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeLoader;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mIsPageLoaded:[Z

    return-object v0
.end method

.method static synthetic access$6000()Lcom/android/launcher3/common/compat/LauncherAppsCompat;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sLauncherApps:Lcom/android/launcher3/common/compat/LauncherAppsCompat;

    return-object v0
.end method

.method static synthetic access$6100()Lcom/android/launcher3/common/compat/LauncherAppsCompat;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sLauncherApps:Lcom/android/launcher3/common/compat/LauncherAppsCompat;

    return-object v0
.end method

.method static synthetic access$6200(Ljava/util/List;Landroid/content/ComponentName;)Z
    .locals 1
    .param p0, "x0"    # Ljava/util/List;
    .param p1, "x1"    # Landroid/content/ComponentName;

    .prologue
    .line 109
    invoke-static {p0, p1}, Lcom/android/launcher3/home/HomeLoader;->checkIfValidLauncherComponent(Ljava/util/List;Landroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6300()Lcom/android/launcher3/LauncherModel;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sLauncherModel:Lcom/android/launcher3/LauncherModel;

    return-object v0
.end method

.method static synthetic access$6400()Lcom/android/launcher3/LauncherModel;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sLauncherModel:Lcom/android/launcher3/LauncherModel;

    return-object v0
.end method

.method static synthetic access$6500()Lcom/android/launcher3/LauncherModel;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sLauncherModel:Lcom/android/launcher3/LauncherModel;

    return-object v0
.end method

.method static synthetic access$6600()Lcom/android/launcher3/LauncherModel;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sLauncherModel:Lcom/android/launcher3/LauncherModel;

    return-object v0
.end method

.method static synthetic access$6700()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sPendingPackages:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$6800(Lcom/android/launcher3/home/HomeLoader;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeLoader;

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/android/launcher3/home/HomeLoader;->getAllItemInHome()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6900()Lcom/android/launcher3/common/model/DeferredHandler;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sHandler:Lcom/android/launcher3/common/model/DeferredHandler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/launcher3/home/HomeLoader;)[Z
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeLoader;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mIsPageLoaded:[Z

    return-object v0
.end method

.method static synthetic access$7000()Lcom/android/launcher3/common/model/IconCache;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sIconCache:Lcom/android/launcher3/common/model/IconCache;

    return-object v0
.end method

.method static synthetic access$7100()Lcom/android/launcher3/common/model/IconCache;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sIconCache:Lcom/android/launcher3/common/model/IconCache;

    return-object v0
.end method

.method static synthetic access$7200()Lcom/android/launcher3/common/model/DeferredHandler;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sHandler:Lcom/android/launcher3/common/model/DeferredHandler;

    return-object v0
.end method

.method static synthetic access$7300()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sBgLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$7400()Lcom/android/launcher3/util/LongArrayMap;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    return-object v0
.end method

.method static synthetic access$7500(Lcom/android/launcher3/home/HomeLoader;)Lcom/android/launcher3/common/model/FavoritesUpdater;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeLoader;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    return-object v0
.end method

.method static synthetic access$7600()Landroid/content/Context;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$7700()Lcom/android/launcher3/common/model/FavoritesProvider;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    return-object v0
.end method

.method static synthetic access$7800()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sBgLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$7900(Lcom/android/launcher3/home/HomeLoader;Landroid/content/Intent;Lcom/android/launcher3/common/compat/UserHandleCompat;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeLoader;
    .param p1, "x1"    # Landroid/content/Intent;
    .param p2, "x2"    # Lcom/android/launcher3/common/compat/UserHandleCompat;

    .prologue
    .line 109
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/home/HomeLoader;->shortcutExists(Landroid/content/Intent;Lcom/android/launcher3/common/compat/UserHandleCompat;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$8000(Lcom/android/launcher3/home/HomeLoader;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZJ)Landroid/util/Pair;
    .locals 2
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeLoader;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # Ljava/util/ArrayList;
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # Z
    .param p6, "x6"    # J

    .prologue
    .line 109
    invoke-direct/range {p0 .. p7}, Lcom/android/launcher3/home/HomeLoader;->findSpaceForItem(Ljava/util/ArrayList;Ljava/util/ArrayList;IIZJ)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/common/model/DataLoader$PageLoaderTask;)Lcom/android/launcher3/common/model/DataLoader$PageLoaderTask;
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeLoader;
    .param p1, "x1"    # Lcom/android/launcher3/common/model/DataLoader$PageLoaderTask;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/launcher3/home/HomeLoader;->mPageLoaderTask:Lcom/android/launcher3/common/model/DataLoader$PageLoaderTask;

    return-object p1
.end method

.method static synthetic access$8100()Lcom/android/launcher3/util/LongArrayMap;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    return-object v0
.end method

.method static synthetic access$8200(Lcom/android/launcher3/home/HomeLoader;)Lcom/android/launcher3/common/model/FavoritesUpdater;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeLoader;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    return-object v0
.end method

.method static synthetic access$8300(Lcom/android/launcher3/home/HomeLoader;)Lcom/android/launcher3/common/model/FavoritesUpdater;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeLoader;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    return-object v0
.end method

.method static synthetic access$8400(Lcom/android/launcher3/home/HomeLoader;)Lcom/android/launcher3/common/model/FavoritesUpdater;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeLoader;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    return-object v0
.end method

.method static synthetic access$8500(Lcom/android/launcher3/home/HomeLoader;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeLoader;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 109
    invoke-virtual {p0, p1}, Lcom/android/launcher3/home/HomeLoader;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$8600(Lcom/android/launcher3/home/HomeLoader;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeLoader;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 109
    invoke-virtual {p0, p1}, Lcom/android/launcher3/home/HomeLoader;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$8700()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sBgLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$8800()Lcom/android/launcher3/util/LongArrayMap;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    return-object v0
.end method

.method static synthetic access$8900(Lcom/android/launcher3/home/HomeLoader;)Lcom/android/launcher3/common/model/FavoritesUpdater;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeLoader;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/launcher3/home/HomeLoader;)Lcom/android/launcher3/common/model/DataLoader$PageLoaderTask;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeLoader;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mPageLoaderTask:Lcom/android/launcher3/common/model/DataLoader$PageLoaderTask;

    return-object v0
.end method

.method static synthetic access$9000(Lcom/android/launcher3/home/HomeLoader;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeLoader;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 109
    invoke-virtual {p0, p1}, Lcom/android/launcher3/home/HomeLoader;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$9100()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sBgLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$9200(Lcom/android/launcher3/home/HomeLoader;)Lcom/android/launcher3/common/model/FavoritesUpdater;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeLoader;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    return-object v0
.end method

.method static synthetic access$9300(Lcom/android/launcher3/home/HomeLoader;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeLoader;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 109
    invoke-virtual {p0, p1}, Lcom/android/launcher3/home/HomeLoader;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$9400(Lcom/android/launcher3/home/HomeLoader;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeLoader;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 109
    invoke-virtual {p0, p1}, Lcom/android/launcher3/home/HomeLoader;->getUnRestoredItems(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$9500(Lcom/android/launcher3/home/HomeLoader;)Lcom/android/launcher3/common/model/FavoritesUpdater;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeLoader;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    return-object v0
.end method

.method static synthetic access$9600()Lcom/android/launcher3/LauncherModel;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sLauncherModel:Lcom/android/launcher3/LauncherModel;

    return-object v0
.end method

.method static synthetic access$9700(Lcom/android/launcher3/home/HomeLoader;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeLoader;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 109
    invoke-virtual {p0, p1}, Lcom/android/launcher3/home/HomeLoader;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$9800()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sBgLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$9900()Lcom/android/launcher3/util/LongArrayMap;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    return-object v0
.end method

.method private addAppsButtonForEasy()V
    .locals 6

    .prologue
    .line 4023
    sget-object v2, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/launcher3/Utilities;->createAppsButton(Landroid/content/Context;)Lcom/android/launcher3/common/base/item/IconInfo;

    move-result-object v0

    .line 4025
    .local v0, "appsButton":Lcom/android/launcher3/common/base/item/IconInfo;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 4026
    .local v1, "values":Landroid/content/ContentValues;
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/launcher3/LauncherAppState;->setAppsButtonEnabled(Z)V

    .line 4027
    const-wide/16 v2, 0x2

    iput-wide v2, v0, Lcom/android/launcher3/common/base/item/IconInfo;->screenId:J

    .line 4028
    iget-wide v2, v0, Lcom/android/launcher3/common/base/item/IconInfo;->screenId:J

    long-to-int v2, v2

    invoke-direct {p0, v2}, Lcom/android/launcher3/home/HomeLoader;->getCellXFromHotseatOrder(I)I

    move-result v2

    iput v2, v0, Lcom/android/launcher3/common/base/item/IconInfo;->cellY:I

    iput v2, v0, Lcom/android/launcher3/common/base/item/IconInfo;->cellX:I

    .line 4030
    sget-object v2, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/common/base/item/IconInfo;->onAddToDatabase(Landroid/content/Context;Landroid/content/ContentValues;)V

    .line 4031
    iget-wide v2, v0, Lcom/android/launcher3/common/base/item/IconInfo;->id:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 4032
    sget-object v2, Lcom/android/launcher3/home/HomeLoader;->sFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    invoke-virtual {v2}, Lcom/android/launcher3/common/model/FavoritesProvider;->generateNewItemId()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/launcher3/common/base/item/IconInfo;->id:J

    .line 4033
    const-string v2, "_id"

    iget-wide v4, v0, Lcom/android/launcher3/common/base/item/IconInfo;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4038
    sget-object v2, Lcom/android/launcher3/home/HomeLoader;->sContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/launcher3/common/model/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 4039
    :goto_0
    return-void

    .line 4035
    :cond_0
    const-string v2, "HomeLoader"

    const-string v3, "HomeLoader:Don\'t add Apps button in EasyMode"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private addHotseatItemByItemInfo(Lcom/android/launcher3/common/base/item/ItemInfo;I)V
    .locals 4
    .param p1, "info"    # Lcom/android/launcher3/common/base/item/ItemInfo;
    .param p2, "index"    # I

    .prologue
    .line 4697
    if-nez p1, :cond_0

    .line 4698
    const-string v2, "HomeLoader"

    const-string v3, "addHotseatItemByItemInfo info is null!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4773
    :goto_0
    return-void

    .line 4701
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/home/HomeLoader;->getCallback()Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    move-result-object v0

    .line 4702
    .local v0, "callbacks":Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;
    new-instance v1, Lcom/android/launcher3/home/HomeLoader$49;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/android/launcher3/home/HomeLoader$49;-><init>(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/common/base/item/ItemInfo;ILcom/android/launcher3/home/HomeLoader$HomeCallbacks;)V

    .line 4772
    .local v1, "r":Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/launcher3/home/HomeLoader;->runOnWorkerThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private arrangeItemToNewScreen(Ljava/util/ArrayList;J)Ljava/util/ArrayList;
    .locals 22
    .param p2, "newScreenId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;J)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3928
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    sget-object v3, Lcom/android/launcher3/home/HomeLoader;->sProfile:Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    iget-object v3, v3, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v3}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountX()I

    move-result v7

    .line 3929
    .local v7, "countX":I
    sget-object v3, Lcom/android/launcher3/home/HomeLoader;->sProfile:Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    iget-object v3, v3, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v3}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountY()I

    move-result v8

    .line 3930
    .local v8, "countY":I
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 3931
    .local v18, "againMoveItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    filled-new-array {v7, v8}, [I

    move-result-object v3

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [[Z

    .line 3932
    .local v9, "occupied":[[Z
    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 3934
    .local v4, "tmpXY":[I
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_0
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 3935
    .local v19, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    move-wide/from16 v0, p2

    move-object/from16 v2, v19

    iput-wide v0, v2, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    .line 3937
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/HomeLoader;->mItemPositionHelper:Lcom/android/launcher3/home/HomeItemPositionHelper;

    move-object/from16 v0, v19

    iget v5, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    move-object/from16 v0, v19

    iget v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    invoke-virtual/range {v3 .. v9}, Lcom/android/launcher3/home/HomeItemPositionHelper;->findEmptyCellWithOccupied([IIIII[[Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3939
    const/4 v3, 0x0

    aget v3, v4, v3

    move-object/from16 v0, v19

    iput v3, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    .line 3940
    const/4 v3, 0x1

    aget v3, v4, v3

    move-object/from16 v0, v19

    iput v3, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    .line 3941
    move-object/from16 v0, v19

    iget v13, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    move-object/from16 v0, v19

    iget v14, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    move-object/from16 v0, v19

    iget v15, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    move/from16 v16, v0

    move-object/from16 v10, p0

    move v11, v7

    move v12, v8

    move-object/from16 v17, v9

    invoke-direct/range {v10 .. v17}, Lcom/android/launcher3/home/HomeLoader;->fillOccupied(IIIIII[[Z)V

    goto :goto_0

    .line 3943
    :cond_0
    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3947
    .end local v19    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_1
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 3948
    .restart local v19    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3951
    .end local v19    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_2
    return-object v18
.end method

.method private bindFestivalPageIfNecessary(Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V
    .locals 4
    .param p1, "task"    # Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;

    .prologue
    .line 1833
    invoke-direct {p0}, Lcom/android/launcher3/home/HomeLoader;->getCallback()Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    move-result-object v0

    .line 1834
    .local v0, "oldCallbacks":Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;
    if-nez v0, :cond_0

    .line 1835
    const-string v2, "HomeLoader"

    const-string v3, "bindFestivalPageIfNecessary failed with no launcher"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1849
    :goto_0
    return-void

    .line 1839
    :cond_0
    new-instance v1, Lcom/android/launcher3/home/HomeLoader$11;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/launcher3/home/HomeLoader$11;-><init>(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V

    .line 1848
    .local v1, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v1}, Lcom/android/launcher3/home/HomeLoader;->runOnMainThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private bindWorkspaceScreens(Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;Ljava/util/ArrayList;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V
    .locals 1
    .param p1, "oldCallbacks"    # Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;
    .param p3, "task"    # Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1801
    .local p2, "orderedScreens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v0, Lcom/android/launcher3/home/HomeLoader$9;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/android/launcher3/home/HomeLoader$9;-><init>(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;Ljava/util/ArrayList;)V

    .line 1810
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/HomeLoader;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 1811
    return-void
.end method

.method private calculateDiffXY([IIILjava/util/ArrayList;)V
    .locals 7
    .param p1, "diffXY"    # [I
    .param p2, "countX"    # I
    .param p3, "countY"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([III",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, "pageItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    const/4 v4, 0x0

    .line 3772
    move v1, p2

    .line 3773
    .local v1, "pageItemsMaxX":I
    move v2, p3

    .line 3775
    .local v2, "pageItemsMaxY":I
    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 3776
    .local v0, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget v5, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    iget v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    add-int/2addr v5, v6

    if-le v5, v1, :cond_0

    iget v5, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    iget v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    add-int v1, v5, v6

    .line 3778
    :cond_0
    iget v5, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    iget v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    add-int/2addr v5, v6

    if-le v5, v2, :cond_1

    iget v5, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    iget v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    add-int v2, v5, v6

    .line 3780
    :cond_1
    goto :goto_0

    .line 3782
    .end local v0    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_2
    if-le v1, p2, :cond_4

    sub-int v3, v1, p2

    :goto_1
    aput v3, p1, v4

    .line 3783
    const/4 v3, 0x1

    if-le v2, p3, :cond_3

    sub-int v4, v2, p3

    :cond_3
    aput v4, p1, v3

    .line 3784
    return-void

    :cond_4
    move v3, v4

    .line 3782
    goto :goto_1
.end method

.method private changeDialerAppOnLoadDefaultLayout()V
    .locals 18

    .prologue
    .line 3404
    const-string v0, "HomeLoader"

    const-string v1, "changeDialerAppOnLoadDefaultLayout : OEM -> T phone app"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3405
    new-instance v9, Landroid/content/ComponentName;

    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    .line 3406
    invoke-static {v0}, Lcom/android/launcher3/LauncherFeature;->getOemDialerPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 3407
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->getOemDialerClassName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v9, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3408
    .local v9, "oemDialerCN":Landroid/content/ComponentName;
    new-instance v7, Landroid/content/ComponentName;

    .line 3409
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->getCustomerDialerPackageName()Ljava/lang/String;

    move-result-object v0

    .line 3410
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->getCustomerDialerClassName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3411
    .local v7, "customerDialerCN":Landroid/content/ComponentName;
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "android.intent.category.LAUNCHER"

    .line 3412
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 3413
    invoke-virtual {v0, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10200000

    .line 3414
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v14

    .line 3415
    .local v14, "oemDialerIntent":Landroid/content/Intent;
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "android.intent.category.LAUNCHER"

    .line 3416
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 3417
    invoke-virtual {v0, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10200000

    .line 3418
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v8

    .line 3422
    .local v8, "customerDialerIntent":Landroid/content/Intent;
    const-string v3, "container=? AND intent=?"

    .line 3423
    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const/16 v1, -0x65

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3424
    invoke-virtual {v14, v1}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 3426
    .local v4, "selectionArg":[Ljava/lang/String;
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/launcher3/common/model/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v16, "_id"

    aput-object v16, v2, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3429
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 3431
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3432
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 3433
    .local v12, "id":J
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 3434
    .local v15, "values":Landroid/content/ContentValues;
    const-string v0, "intent"

    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3435
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sContentResolver:Landroid/content/ContentResolver;

    invoke-static {v12, v13}, Lcom/android/launcher3/common/model/LauncherSettings$Favorites;->getContentUri(J)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v15, v2, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3440
    .end local v12    # "id":J
    .end local v15    # "values":Landroid/content/ContentValues;
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3447
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3448
    const-string v3, "container=? AND intent=?"

    .line 3449
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    .end local v4    # "selectionArg":[Ljava/lang/String;
    const/4 v0, 0x0

    const/16 v1, -0x64

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3450
    invoke-virtual {v8, v1}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 3459
    .restart local v4    # "selectionArg":[Ljava/lang/String;
    :goto_1
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/launcher3/common/model/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v16, "_id"

    aput-object v16, v2, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3462
    if-eqz v6, :cond_4

    .line 3464
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3465
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    .line 3466
    .local v12, "id":Ljava/lang/Long;
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 3467
    .restart local v15    # "values":Landroid/content/ContentValues;
    const-string v0, "intent"

    const/4 v1, 0x0

    invoke-virtual {v14, v1}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3468
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Lcom/android/launcher3/common/model/LauncherSettings$Favorites;->getContentUri(J)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v15, v2, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3473
    .end local v12    # "id":Ljava/lang/Long;
    .end local v15    # "values":Landroid/content/ContentValues;
    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3478
    :goto_3
    return-void

    .line 3437
    :cond_0
    :try_start_2
    const-string v0, "HomeLoader"

    const-string v1, "Oem dialer is not exist in the hotseat"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 3440
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 3443
    :cond_1
    const-string v0, "HomeLoader"

    const-string v1, "Oem dialer is not exist in the hotseat"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 3452
    :cond_2
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->getCustomerPageKey(Landroid/content/Context;)J

    move-result-wide v10

    .line 3453
    .local v10, "customerPage":J
    const-string v3, "container=? AND intent=? AND screen=?"

    .line 3455
    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    .end local v4    # "selectionArg":[Ljava/lang/String;
    const/4 v0, 0x0

    const/16 v1, -0x64

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3456
    invoke-virtual {v8, v1}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .restart local v4    # "selectionArg":[Ljava/lang/String;
    goto :goto_1

    .line 3470
    .end local v10    # "customerPage":J
    :cond_3
    :try_start_3
    const-string v0, "HomeLoader"

    const-string v1, "Customer dialer is not exist in the workspace"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    .line 3473
    :catchall_1
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 3476
    :cond_4
    const-string v0, "HomeLoader"

    const-string v1, "Customer dialer is not exist in the workspace"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public static checkHiddenWidget(Landroid/content/Context;Landroid/content/ComponentName;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 4944
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    const v3, 0x8000

    invoke-virtual {v2, v3}, Landroid/appwidget/AppWidgetManager;->semGetInstalledProviders(I)Ljava/util/List;

    move-result-object v1

    .line 4945
    .local v1, "results":Ljava/util/List;, "Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/appwidget/AppWidgetProviderInfo;

    .line 4946
    .local v0, "pInfo":Landroid/appwidget/AppWidgetProviderInfo;
    iget-object v3, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v3, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4947
    const/4 v2, 0x1

    .line 4950
    .end local v0    # "pInfo":Landroid/appwidget/AppWidgetProviderInfo;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static checkIfValidLauncherComponent(Ljava/util/List;Landroid/content/ComponentName;)Z
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
    .line 1673
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

    .line 1674
    .local v0, "info":Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    invoke-virtual {v0}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1675
    const/4 v1, 0x1

    .line 1678
    .end local v0    # "info":Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private checkItemPlacement([[Lcom/android/launcher3/common/base/item/ItemInfo;Lcom/android/launcher3/common/base/item/ItemInfo;Ljava/util/HashMap;)Z
    .locals 16
    .param p1, "occupied"    # [[Lcom/android/launcher3/common/base/item/ItemInfo;
    .param p2, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<+",
            "Ljava/lang/Object;",
            ">;>;)Z"
        }
    .end annotation

    .prologue
    .line 1544
    .local p3, "needHandlingItems":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/ArrayList<+Ljava/lang/Object;>;>;"
    sget-object v11, Lcom/android/launcher3/home/HomeLoader;->sProfile:Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    iget-object v11, v11, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v11}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountX()I

    move-result v4

    .line 1545
    .local v4, "countX":I
    sget-object v11, Lcom/android/launcher3/home/HomeLoader;->sProfile:Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    iget-object v11, v11, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v11}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountY()I

    move-result v5

    .line 1547
    .local v5, "countY":I
    const/4 v11, 0x4

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    .line 1548
    .local v8, "overlapItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    const/4 v11, 0x3

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 1550
    .local v7, "outsideItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    .line 1551
    .local v2, "containerIndex":J
    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v14, -0x65

    cmp-long v11, v12, v14

    if-nez v11, :cond_2

    .line 1554
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/launcher3/LauncherAppState;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v11

    .line 1555
    invoke-virtual {v11}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->getMaxHotseatCount()I

    move-result v6

    .line 1556
    .local v6, "hotseatCount":I
    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    int-to-long v14, v6

    cmp-long v11, v12, v14

    if-ltz v11, :cond_0

    .line 1557
    const-string v11, "HomeLoader"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error loading shortcut "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " into hotseat position "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", position out of bounds: (0 to "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    add-int/lit8 v13, v6, -0x1

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1561
    const/4 v11, 0x0

    .line 1607
    .end local v6    # "hotseatCount":I
    :goto_0
    return v11

    .line 1564
    .restart local v6    # "hotseatCount":I
    :cond_0
    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    long-to-int v11, v12

    aget-object v11, p1, v11

    const/4 v12, 0x0

    aget-object v11, v11, v12

    if-eqz v11, :cond_1

    .line 1565
    const-string v11, "HomeLoader"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error loading shortcut into hotseat "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " into position ("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    iget v13, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    iget v13, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ") occupied by "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    long-to-int v13, v14

    aget-object v13, p1, v13

    const/4 v14, 0x0

    aget-object v13, v13, v14

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1569
    const/4 v11, 0x0

    goto :goto_0

    .line 1571
    :cond_1
    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    long-to-int v11, v12

    aget-object v11, p1, v11

    const/4 v12, 0x0

    aput-object p2, v11, v12

    .line 1572
    const/4 v11, 0x1

    goto :goto_0

    .line 1574
    .end local v6    # "hotseatCount":I
    :cond_2
    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v14, -0x64

    cmp-long v11, v12, v14

    if-nez v11, :cond_a

    .line 1575
    move-object/from16 v0, p2

    iget v11, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    if-ltz v11, :cond_3

    move-object/from16 v0, p2

    iget v11, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    if-ltz v11, :cond_3

    move-object/from16 v0, p2

    iget v11, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    move-object/from16 v0, p2

    iget v12, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    add-int/2addr v11, v12

    if-gt v11, v4, :cond_3

    move-object/from16 v0, p2

    iget v11, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    move-object/from16 v0, p2

    iget v12, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    add-int/2addr v11, v12

    if-le v11, v5, :cond_4

    .line 1577
    :cond_3
    const-string v11, "HomeLoader"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error loading shortcut "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " into cell ("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "-"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    iget v13, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    iget v13, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ") out of screen bounds ( "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "x"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1581
    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1582
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 1586
    :cond_4
    move-object/from16 v0, p2

    iget v9, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    .local v9, "x":I
    :goto_1
    move-object/from16 v0, p2

    iget v11, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    move-object/from16 v0, p2

    iget v12, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    add-int/2addr v11, v12

    if-ge v9, v11, :cond_7

    .line 1587
    move-object/from16 v0, p2

    iget v10, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    .local v10, "y":I
    :goto_2
    move-object/from16 v0, p2

    iget v11, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    move-object/from16 v0, p2

    iget v12, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    add-int/2addr v11, v12

    if-ge v10, v11, :cond_6

    .line 1588
    aget-object v11, p1, v9

    aget-object v11, v11, v10

    if-eqz v11, :cond_5

    .line 1589
    const-string v11, "HomeLoader"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error loading shortcut "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " into cell ("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "-"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ") occupied by "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    aget-object v13, p1, v9

    aget-object v13, v13, v10

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1594
    move-object/from16 v0, p2

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1595
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 1587
    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 1586
    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 1599
    .end local v10    # "y":I
    :cond_7
    move-object/from16 v0, p2

    iget v9, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    :goto_3
    move-object/from16 v0, p2

    iget v11, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    move-object/from16 v0, p2

    iget v12, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    add-int/2addr v11, v12

    if-ge v9, v11, :cond_9

    .line 1600
    move-object/from16 v0, p2

    iget v10, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    .restart local v10    # "y":I
    :goto_4
    move-object/from16 v0, p2

    iget v11, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    move-object/from16 v0, p2

    iget v12, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    add-int/2addr v11, v12

    if-ge v10, v11, :cond_8

    .line 1601
    aget-object v11, p1, v9

    aput-object p2, v11, v10

    .line 1600
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 1599
    :cond_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 1604
    .end local v10    # "y":I
    :cond_9
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 1607
    .end local v9    # "x":I
    :cond_a
    const/4 v11, 0x1

    goto/16 :goto_0
.end method

.method public static checkNeedToRefreshWidget([Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;Z)Z
    .locals 5
    .param p0, "packages"    # [Ljava/lang/String;
    .param p1, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;
    .param p2, "needToRefresh"    # Z

    .prologue
    .line 1733
    sget-object v3, Lcom/android/launcher3/home/HomeLoader;->sBgWidgetLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1734
    :try_start_0
    sget-object v2, Lcom/android/launcher3/home/HomeLoader;->sBgWidgetProviders:Ljava/util/HashMap;

    if-eqz v2, :cond_1

    .line 1735
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1736
    .local v1, "pkgSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {v1, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1738
    sget-object v2, Lcom/android/launcher3/home/HomeLoader;->sBgWidgetProviders:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/ComponentKey;

    .line 1739
    .local v0, "key":Lcom/android/launcher3/util/ComponentKey;
    iget-object v2, v0, Lcom/android/launcher3/util/ComponentKey;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {v2, p1}, Lcom/android/launcher3/common/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/launcher3/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    .line 1740
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_1
    or-int/2addr p2, v2

    .line 1741
    goto :goto_0

    .line 1740
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 1743
    .end local v0    # "key":Lcom/android/launcher3/util/ComponentKey;
    .end local v1    # "pkgSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_1
    monitor-exit v3

    return p2

    .line 1744
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private checkWorkspaceIsEmpty()Z
    .locals 15

    .prologue
    const/4 v4, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    .line 4365
    new-array v2, v13, [Ljava/lang/String;

    const-string v0, "screen"

    aput-object v0, v2, v14

    .line 4366
    .local v2, "projection":[Ljava/lang/String;
    const-string v3, "container=-100"

    .line 4368
    .local v3, "selection":Ljava/lang/String;
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/launcher3/common/model/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 4370
    .local v6, "cursor":Landroid/database/Cursor;
    if-nez v6, :cond_0

    move v0, v13

    .line 4412
    :goto_0
    return v0

    .line 4374
    :cond_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 4378
    .local v9, "screenIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_1
    :goto_1
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4379
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 4380
    .local v10, "screenId":J
    const-wide/16 v0, 0x0

    cmp-long v0, v10, v0

    if-gez v0, :cond_3

    .line 4381
    const-string v0, "HomeLoader"

    const-string v1, "screen Id < 0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 4387
    .end local v10    # "screenId":J
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2

    .line 4388
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 4382
    .restart local v10    # "screenId":J
    :cond_3
    :try_start_1
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4383
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 4387
    .end local v10    # "screenId":J
    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_5

    .line 4388
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 4392
    :cond_5
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4393
    const-string v0, "HomeLoader"

    const-string v1, "really no screen"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v13

    .line 4394
    goto :goto_0

    .line 4397
    :cond_6
    invoke-static {v9}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 4399
    const/4 v8, 0x0

    .line 4400
    .local v8, "rank":I
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 4401
    .local v12, "values":Landroid/content/ContentValues;
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    .line 4402
    .local v7, "id":Ljava/lang/Long;
    const-string v1, "HomeLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "add workspace screen "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4403
    invoke-virtual {v12}, Landroid/content/ContentValues;->clear()V

    .line 4404
    const-string v1, "_id"

    invoke-virtual {v12, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4405
    const-string v1, "screenRank"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v12, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4406
    sget-object v1, Lcom/android/launcher3/home/HomeLoader;->sContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/launcher3/common/model/LauncherSettings$WorkspaceScreens;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v4, v12}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 4407
    iget-object v1, p0, Lcom/android/launcher3/home/HomeLoader;->mBgOrderedScreens:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4408
    add-int/lit8 v8, v8, 0x1

    .line 4409
    goto :goto_2

    .line 4410
    .end local v7    # "id":Ljava/lang/Long;
    :cond_7
    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mBgOrderedScreens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mIsPageLoaded:[Z

    .line 4411
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    sget-object v1, Lcom/android/launcher3/home/HomeLoader;->sFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    const-string v4, "workspaceScreens"

    invoke-virtual {v1, v4}, Lcom/android/launcher3/common/model/FavoritesProvider;->initializeMaxItemId(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/android/launcher3/common/model/FavoritesProvider;->setMaxScreenId(J)V

    move v0, v14

    .line 4412
    goto/16 :goto_0
.end method

.method private createFolderItem(Landroid/database/Cursor;Lcom/android/launcher3/common/model/CursorInfo;Ljava/util/HashMap;Lcom/android/launcher3/util/LongArrayMap;)Lcom/android/launcher3/common/base/item/ItemInfo;
    .locals 14
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "cursorInfo"    # Lcom/android/launcher3/common/model/CursorInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Lcom/android/launcher3/common/model/CursorInfo;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<*>;>;",
            "Lcom/android/launcher3/util/LongArrayMap",
            "<[[",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;)",
            "Lcom/android/launcher3/common/base/item/ItemInfo;"
        }
    .end annotation

    .prologue
    .line 891
    .local p3, "needHandlingItems":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/ArrayList<*>;>;"
    .local p4, "occupied":Lcom/android/launcher3/util/LongArrayMap;, "Lcom/android/launcher3/util/LongArrayMap<[[Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    move-object/from16 v0, p2

    iget v10, v0, Lcom/android/launcher3/common/model/CursorInfo;->idIndex:I

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 892
    .local v4, "id":J
    move-object/from16 v0, p2

    iget v10, v0, Lcom/android/launcher3/common/model/CursorInfo;->containerIndex:I

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 893
    .local v2, "container":I
    move-object/from16 v0, p2

    iget v10, v0, Lcom/android/launcher3/common/model/CursorInfo;->restoredIndex:I

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    if-eqz v10, :cond_1

    const/4 v7, 0x1

    .line 895
    .local v7, "restored":Z
    :goto_0
    const/4 v9, 0x0

    .line 896
    .local v9, "returnItem":Lcom/android/launcher3/common/base/item/ItemInfo;
    sget-object v11, Lcom/android/launcher3/home/HomeLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v11

    .line 897
    :try_start_0
    sget-object v10, Lcom/android/launcher3/home/HomeLoader;->sBgFolders:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v10, v4, v5}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/folder/FolderInfo;

    .line 898
    .local v3, "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 900
    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 901
    .local v6, "itemsToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v10, 0x2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    .line 903
    .local v8, "restoredRows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    if-nez v3, :cond_0

    .line 904
    new-instance v3, Lcom/android/launcher3/folder/FolderInfo;

    .end local v3    # "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    invoke-direct {v3}, Lcom/android/launcher3/folder/FolderInfo;-><init>()V

    .line 908
    .restart local v3    # "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    :cond_0
    move-object/from16 v0, p2

    iget v10, v0, Lcom/android/launcher3/common/model/CursorInfo;->titleIndex:I

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v3, Lcom/android/launcher3/folder/FolderInfo;->title:Ljava/lang/CharSequence;

    .line 909
    iput-wide v4, v3, Lcom/android/launcher3/folder/FolderInfo;->id:J

    .line 910
    int-to-long v10, v2

    iput-wide v10, v3, Lcom/android/launcher3/folder/FolderInfo;->container:J

    .line 911
    move-object/from16 v0, p2

    iget v10, v0, Lcom/android/launcher3/common/model/CursorInfo;->screenIndex:I

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    int-to-long v10, v10

    iput-wide v10, v3, Lcom/android/launcher3/folder/FolderInfo;->screenId:J

    .line 912
    move-object/from16 v0, p2

    iget v10, v0, Lcom/android/launcher3/common/model/CursorInfo;->cellXIndex:I

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    iput v10, v3, Lcom/android/launcher3/folder/FolderInfo;->cellX:I

    .line 913
    move-object/from16 v0, p2

    iget v10, v0, Lcom/android/launcher3/common/model/CursorInfo;->cellYIndex:I

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    iput v10, v3, Lcom/android/launcher3/folder/FolderInfo;->cellY:I

    .line 914
    const/4 v10, 0x1

    iput v10, v3, Lcom/android/launcher3/folder/FolderInfo;->spanX:I

    .line 915
    const/4 v10, 0x1

    iput v10, v3, Lcom/android/launcher3/folder/FolderInfo;->spanY:I

    .line 916
    move-object/from16 v0, p2

    iget v10, v0, Lcom/android/launcher3/common/model/CursorInfo;->optionsIndex:I

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    iput v10, v3, Lcom/android/launcher3/folder/FolderInfo;->options:I

    .line 917
    move-object/from16 v0, p2

    iget v10, v0, Lcom/android/launcher3/common/model/CursorInfo;->colorIndex:I

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    iput v10, v3, Lcom/android/launcher3/folder/FolderInfo;->color:I

    .line 920
    iget-wide v10, v3, Lcom/android/launcher3/folder/FolderInfo;->container:J

    const-wide/16 v12, -0x65

    cmp-long v10, v10, v12

    if-nez v10, :cond_2

    const-wide/16 v10, 0x1

    :goto_1
    move-object/from16 v0, p4

    invoke-virtual {v0, v10, v11}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [[Lcom/android/launcher3/common/base/item/ItemInfo;

    move-object/from16 v0, p3

    invoke-direct {p0, v10, v3, v0}, Lcom/android/launcher3/home/HomeLoader;->checkItemPlacement([[Lcom/android/launcher3/common/base/item/ItemInfo;Lcom/android/launcher3/common/base/item/ItemInfo;Ljava/util/HashMap;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 922
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 923
    const/4 v10, 0x0

    .line 939
    :goto_2
    return-object v10

    .line 893
    .end local v3    # "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    .end local v6    # "itemsToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v7    # "restored":Z
    .end local v8    # "restoredRows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v9    # "returnItem":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_1
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 898
    .restart local v7    # "restored":Z
    .restart local v9    # "returnItem":Lcom/android/launcher3/common/base/item/ItemInfo;
    :catchall_0
    move-exception v10

    :try_start_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v10

    .line 920
    .restart local v3    # "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    .restart local v6    # "itemsToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v8    # "restoredRows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_2
    const-wide/16 v10, 0x0

    goto :goto_1

    .line 926
    :cond_3
    packed-switch v2, :pswitch_data_0

    .line 934
    :goto_3
    if-eqz v7, :cond_4

    .line 936
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 938
    :cond_4
    invoke-virtual {p0, v3}, Lcom/android/launcher3/home/HomeLoader;->putItemToIdMap(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    move-object v10, v9

    .line 939
    goto :goto_2

    .line 929
    :pswitch_0
    invoke-virtual {p0, v3}, Lcom/android/launcher3/home/HomeLoader;->addPagesItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 930
    move-object v9, v3

    goto :goto_3

    .line 926
    nop

    :pswitch_data_0
    .packed-switch -0x65
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private createItems(Landroid/database/Cursor;Lcom/android/launcher3/common/model/CursorInfo;Ljava/util/HashMap;Ljava/util/ArrayList;Lcom/android/launcher3/util/LongArrayMap;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)Lcom/android/launcher3/util/LongArrayMap;
    .locals 8
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "cursorIconInfo"    # Lcom/android/launcher3/common/model/CursorInfo;
    .param p6, "task"    # Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Lcom/android/launcher3/common/model/CursorInfo;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<*>;>;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;",
            "Lcom/android/launcher3/util/LongArrayMap",
            "<[[",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;",
            "Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;",
            ")",
            "Lcom/android/launcher3/util/LongArrayMap",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 734
    .local p3, "needHandlingItems":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/ArrayList<*>;>;"
    .local p4, "pageItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .local p5, "occupied":Lcom/android/launcher3/util/LongArrayMap;, "Lcom/android/launcher3/util/LongArrayMap<[[Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    const/4 v1, 0x0

    .line 735
    .local v1, "folders":Lcom/android/launcher3/util/LongArrayMap;, "Lcom/android/launcher3/util/LongArrayMap<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    :cond_0
    :goto_0
    invoke-virtual {p0, p6}, Lcom/android/launcher3/home/HomeLoader;->isStopped(Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 737
    :try_start_0
    iget v5, p2, Lcom/android/launcher3/common/model/CursorInfo;->itemTypeIndex:I

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 738
    .local v4, "itemType":I
    const/4 v3, 0x0

    .line 739
    .local v3, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    packed-switch v4, :pswitch_data_0

    .line 759
    :cond_1
    :goto_1
    :pswitch_0
    if-eqz v3, :cond_0

    iget v5, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->hidden:I

    if-nez v5, :cond_0

    .line 760
    invoke-virtual {p4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 762
    .end local v3    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v4    # "itemType":I
    :catch_0
    move-exception v0

    .line 763
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "HomeLoader"

    const-string v6, "Desktop items loading interrupted"

    const/4 v7, 0x1

    invoke-static {v5, v6, v0, v7}, Lcom/android/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;Z)V

    goto :goto_0

    .line 743
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v3    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    .restart local v4    # "itemType":I
    :pswitch_1
    :try_start_1
    invoke-virtual {p0, p1, p2, p3, p5}, Lcom/android/launcher3/home/HomeLoader;->createShortcutItem(Landroid/database/Cursor;Lcom/android/launcher3/common/model/CursorInfo;Ljava/util/HashMap;Lcom/android/launcher3/util/LongArrayMap;)Lcom/android/launcher3/common/base/item/ItemInfo;

    move-result-object v3

    .line 744
    goto :goto_1

    .line 746
    :pswitch_2
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/android/launcher3/home/HomeLoader;->createFolderItem(Landroid/database/Cursor;Lcom/android/launcher3/common/model/CursorInfo;Ljava/util/HashMap;Lcom/android/launcher3/util/LongArrayMap;)Lcom/android/launcher3/common/base/item/ItemInfo;

    move-result-object v3

    .line 747
    if-eqz v3, :cond_1

    .line 748
    if-nez v1, :cond_2

    .line 749
    new-instance v2, Lcom/android/launcher3/util/LongArrayMap;

    invoke-direct {v2}, Lcom/android/launcher3/util/LongArrayMap;-><init>()V

    .end local v1    # "folders":Lcom/android/launcher3/util/LongArrayMap;, "Lcom/android/launcher3/util/LongArrayMap<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .local v2, "folders":Lcom/android/launcher3/util/LongArrayMap;, "Lcom/android/launcher3/util/LongArrayMap<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    move-object v1, v2

    .line 751
    .end local v2    # "folders":Lcom/android/launcher3/util/LongArrayMap;, "Lcom/android/launcher3/util/LongArrayMap<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .restart local v1    # "folders":Lcom/android/launcher3/util/LongArrayMap;, "Lcom/android/launcher3/util/LongArrayMap<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    :cond_2
    iget-wide v6, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    invoke-virtual {v1, v6, v7, v3}, Lcom/android/launcher3/util/LongArrayMap;->put(JLjava/lang/Object;)V

    goto :goto_1

    .line 756
    :pswitch_3
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/android/launcher3/home/HomeLoader;->createWidgetItem(Landroid/database/Cursor;Lcom/android/launcher3/common/model/CursorInfo;Ljava/util/HashMap;Lcom/android/launcher3/util/LongArrayMap;)Lcom/android/launcher3/common/base/item/ItemInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    goto :goto_1

    .line 766
    .end local v3    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v4    # "itemType":I
    :cond_3
    return-object v1

    .line 739
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method private createPinnedShortcutMap()V
    .locals 8

    .prologue
    .line 1365
    sget-object v4, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/UserManagerCompat;

    move-result-object v3

    .line 1366
    .local v3, "userManager":Lcom/android/launcher3/common/compat/UserManagerCompat;
    invoke-virtual {v3}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getUserProfiles()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/compat/UserHandleCompat;

    .line 1367
    .local v2, "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    iget-object v5, p0, Lcom/android/launcher3/home/HomeLoader;->mDeepShortcutManager:Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v2}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;->queryForPinnedShortcuts(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Ljava/util/List;

    move-result-object v0

    .line 1368
    .local v0, "pinnedShortcuts":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;>;"
    iget-object v5, p0, Lcom/android/launcher3/home/HomeLoader;->mDeepShortcutManager:Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;

    invoke-virtual {v5}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;->wasLastCallSuccess()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1369
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;

    .line 1370
    .local v1, "shortcut":Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;
    iget-object v6, p0, Lcom/android/launcher3/home/HomeLoader;->mShortcutKeyToPinnedShortcuts:Ljava/util/Map;

    invoke-static {v1}, Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutKey;->fromInfo(Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;)Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutKey;

    move-result-object v7

    invoke-interface {v6, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1374
    .end local v0    # "pinnedShortcuts":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;>;"
    .end local v1    # "shortcut":Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;
    .end local v2    # "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    :cond_1
    return-void
.end method

.method private createWidgetItem(Landroid/database/Cursor;Lcom/android/launcher3/common/model/CursorInfo;Ljava/util/HashMap;Lcom/android/launcher3/util/LongArrayMap;)Lcom/android/launcher3/common/base/item/ItemInfo;
    .locals 32
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "cursorInfo"    # Lcom/android/launcher3/common/model/CursorInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Lcom/android/launcher3/common/model/CursorInfo;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<*>;>;",
            "Lcom/android/launcher3/util/LongArrayMap",
            "<[[",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;)",
            "Lcom/android/launcher3/common/base/item/ItemInfo;"
        }
    .end annotation

    .prologue
    .line 773
    .local p3, "needHandlingItems":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/ArrayList<*>;>;"
    .local p4, "occupied":Lcom/android/launcher3/util/LongArrayMap;, "Lcom/android/launcher3/util/LongArrayMap<[[Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/launcher3/common/model/CursorInfo;->containerIndex:I

    move/from16 v29, v0

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 774
    .local v7, "container":I
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/launcher3/common/model/CursorInfo;->itemTypeIndex:I

    move/from16 v29, v0

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 775
    .local v14, "itemType":I
    const/16 v29, 0x5

    move/from16 v0, v29

    if-ne v14, v0, :cond_0

    const/4 v8, 0x1

    .line 777
    .local v8, "customWidget":Z
    :goto_0
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/launcher3/common/model/CursorInfo;->appWidgetIdIndex:I

    move/from16 v29, v0

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 778
    .local v4, "appWidgetId":I
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/launcher3/common/model/CursorInfo;->profileIdIndex:I

    move/from16 v29, v0

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    move/from16 v0, v29

    int-to-long v0, v0

    move-wide/from16 v22, v0

    .line 779
    .local v22, "serialNumber":J
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/launcher3/common/model/CursorInfo;->appWidgetProviderIndex:I

    move/from16 v29, v0

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 780
    .local v21, "savedProvider":Ljava/lang/String;
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/launcher3/common/model/CursorInfo;->idIndex:I

    move/from16 v29, v0

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 781
    .local v10, "id":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/HomeLoader;->mAllUsers:Landroid/util/LongSparseArray;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/launcher3/common/compat/UserHandleCompat;

    .line 785
    .local v25, "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    const/16 v29, 0x1

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    move-object/from16 v0, p3

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/ArrayList;

    .line 787
    .local v15, "itemsToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    if-nez v25, :cond_1

    .line 788
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 789
    const/16 v20, 0x0

    .line 885
    :goto_1
    return-object v20

    .line 775
    .end local v4    # "appWidgetId":I
    .end local v8    # "customWidget":Z
    .end local v10    # "id":J
    .end local v15    # "itemsToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v21    # "savedProvider":Ljava/lang/String;
    .end local v22    # "serialNumber":J
    .end local v25    # "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    :cond_0
    const/4 v8, 0x0

    goto :goto_0

    .line 792
    .restart local v4    # "appWidgetId":I
    .restart local v8    # "customWidget":Z
    .restart local v10    # "id":J
    .restart local v15    # "itemsToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v21    # "savedProvider":Ljava/lang/String;
    .restart local v22    # "serialNumber":J
    .restart local v25    # "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    :cond_1
    invoke-static/range {v21 .. v21}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v6

    .line 794
    .local v6, "component":Landroid/content/ComponentName;
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/launcher3/common/model/CursorInfo;->restoredIndex:I

    move/from16 v29, v0

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 795
    .local v19, "restoreStatus":I
    and-int/lit8 v29, v19, 0x1

    if-nez v29, :cond_2

    const/4 v12, 0x1

    .line 796
    .local v12, "isIdValid":Z
    :goto_2
    and-int/lit8 v29, v19, 0x2

    if-nez v29, :cond_3

    const/16 v27, 0x1

    .line 798
    .local v27, "wasProviderReady":Z
    :goto_3
    sget-object v29, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    invoke-static/range {v29 .. v29}, Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;

    move-result-object v28

    .line 799
    .local v28, "wm":Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;
    if-lez v4, :cond_4

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v17

    .line 802
    .local v17, "provider":Landroid/appwidget/AppWidgetProviderInfo;
    :goto_4
    invoke-static/range {v17 .. v17}, Lcom/android/launcher3/LauncherModel;->isValidProvider(Landroid/appwidget/AppWidgetProviderInfo;)Z

    move-result v13

    .line 803
    .local v13, "isProviderReady":Z
    sget-boolean v29, Lcom/android/launcher3/home/HomeLoader;->sIsSafeMode:Z

    if-nez v29, :cond_5

    if-nez v8, :cond_5

    if-eqz v27, :cond_5

    if-nez v13, :cond_5

    .line 804
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Deleting widget that isn\'t installed anymore: id="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " appWidgetId="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 807
    .local v16, "log":Ljava/lang/String;
    const-string v29, "HomeLoader"

    move-object/from16 v0, v29

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    const-string v29, "HomeLoader"

    const/16 v30, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v16

    move/from16 v2, v30

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 809
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 810
    const/16 v20, 0x0

    goto :goto_1

    .line 795
    .end local v12    # "isIdValid":Z
    .end local v13    # "isProviderReady":Z
    .end local v16    # "log":Ljava/lang/String;
    .end local v17    # "provider":Landroid/appwidget/AppWidgetProviderInfo;
    .end local v27    # "wasProviderReady":Z
    .end local v28    # "wm":Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;
    :cond_2
    const/4 v12, 0x0

    goto :goto_2

    .line 796
    .restart local v12    # "isIdValid":Z
    :cond_3
    const/16 v27, 0x0

    goto :goto_3

    .line 799
    .restart local v27    # "wasProviderReady":Z
    .restart local v28    # "wm":Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;
    :cond_4
    sget-object v29, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    .line 800
    invoke-static/range {v21 .. v21}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/home/HomeLoader;->getProviderInfo(Landroid/content/Context;Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    move-result-object v17

    goto :goto_4

    .line 812
    .restart local v13    # "isProviderReady":Z
    .restart local v17    # "provider":Landroid/appwidget/AppWidgetProviderInfo;
    :cond_5
    if-eqz v13, :cond_8

    .line 813
    new-instance v5, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-direct {v5, v4, v0}, Lcom/android/launcher3/home/LauncherAppWidgetInfo;-><init>(ILandroid/content/ComponentName;)V

    .line 818
    .local v5, "appWidgetInfo":Lcom/android/launcher3/home/LauncherAppWidgetInfo;
    and-int/lit8 v24, v19, -0x9

    .line 819
    .local v24, "status":I
    if-nez v27, :cond_6

    .line 824
    if-eqz v12, :cond_7

    .line 825
    const/16 v24, 0x4

    .line 830
    :cond_6
    :goto_5
    move/from16 v0, v24

    iput v0, v5, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->restoreStatus:I

    .line 850
    .end local v24    # "status":I
    :goto_6
    iput-wide v10, v5, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->id:J

    .line 851
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/launcher3/common/model/CursorInfo;->screenIndex:I

    move/from16 v29, v0

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    move/from16 v0, v29

    int-to-long v0, v0

    move-wide/from16 v30, v0

    move-wide/from16 v0, v30

    iput-wide v0, v5, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->screenId:J

    .line 852
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/launcher3/common/model/CursorInfo;->cellXIndex:I

    move/from16 v29, v0

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    move/from16 v0, v29

    iput v0, v5, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->cellX:I

    .line 853
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/launcher3/common/model/CursorInfo;->cellYIndex:I

    move/from16 v29, v0

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    move/from16 v0, v29

    iput v0, v5, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->cellY:I

    .line 854
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/launcher3/common/model/CursorInfo;->spanXIndex:I

    move/from16 v29, v0

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    move/from16 v0, v29

    iput v0, v5, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->spanX:I

    .line 855
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/launcher3/common/model/CursorInfo;->spanYIndex:I

    move/from16 v29, v0

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    move/from16 v0, v29

    iput v0, v5, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->spanY:I

    .line 856
    move-object/from16 v0, v25

    iput-object v0, v5, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    .line 858
    const/16 v29, -0x64

    move/from16 v0, v29

    if-eq v7, v0, :cond_d

    const/16 v29, -0x65

    move/from16 v0, v29

    if-eq v7, v0, :cond_d

    .line 860
    const-string v29, "HomeLoader"

    const-string v30, "Widget found where container != CONTAINER_DESKTOP nor CONTAINER_HOTSEAT - ignoring!"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 862
    const/16 v20, 0x0

    goto/16 :goto_1

    .line 827
    .restart local v24    # "status":I
    :cond_7
    and-int/lit8 v24, v24, -0x3

    goto/16 :goto_5

    .line 832
    .end local v5    # "appWidgetInfo":Lcom/android/launcher3/home/LauncherAppWidgetInfo;
    .end local v24    # "status":I
    :cond_8
    const-string v29, "HomeLoader"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Widget restore pending id="

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " appWidgetId="

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " status ="

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    new-instance v5, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    invoke-direct {v5, v4, v6}, Lcom/android/launcher3/home/LauncherAppWidgetInfo;-><init>(ILandroid/content/ComponentName;)V

    .line 834
    .restart local v5    # "appWidgetInfo":Lcom/android/launcher3/home/LauncherAppWidgetInfo;
    move/from16 v0, v19

    iput v0, v5, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->restoreStatus:I

    .line 835
    sget-object v29, Lcom/android/launcher3/home/HomeLoader;->sInstallingPkgs:Ljava/util/HashMap;

    if-nez v29, :cond_a

    const/4 v9, 0x0

    .line 837
    .local v9, "installProgress":Ljava/lang/Integer;
    :goto_7
    and-int/lit8 v29, v19, 0x8

    if-nez v29, :cond_9

    .line 838
    if-eqz v9, :cond_b

    .line 840
    iget v0, v5, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->restoreStatus:I

    move/from16 v29, v0

    or-int/lit8 v29, v29, 0x8

    move/from16 v0, v29

    iput v0, v5, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->restoreStatus:I

    .line 847
    :cond_9
    if-nez v9, :cond_c

    const/16 v29, 0x0

    :goto_8
    move/from16 v0, v29

    iput v0, v5, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->installProgress:I

    goto/16 :goto_6

    .line 835
    .end local v9    # "installProgress":Ljava/lang/Integer;
    :cond_a
    sget-object v29, Lcom/android/launcher3/home/HomeLoader;->sInstallingPkgs:Ljava/util/HashMap;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/Integer;

    move-object/from16 v9, v29

    goto :goto_7

    .line 841
    .restart local v9    # "installProgress":Ljava/lang/Integer;
    :cond_b
    sget-boolean v29, Lcom/android/launcher3/home/HomeLoader;->sIsSafeMode:Z

    if-nez v29, :cond_9

    .line 842
    const-string v29, "HomeLoader"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Unrestored widget removed: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    const/16 v31, 0x1

    invoke-static/range {v29 .. v31}, Lcom/android/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 843
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 844
    const/16 v20, 0x0

    goto/16 :goto_1

    .line 847
    :cond_c
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v29

    goto :goto_8

    .line 865
    .end local v9    # "installProgress":Ljava/lang/Integer;
    :cond_d
    int-to-long v0, v7

    move-wide/from16 v30, v0

    move-wide/from16 v0, v30

    iput-wide v0, v5, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->container:J

    .line 867
    const-wide/16 v30, 0x0

    move-object/from16 v0, p4

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, [[Lcom/android/launcher3/common/base/item/ItemInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v5, v2}, Lcom/android/launcher3/home/HomeLoader;->checkItemPlacement([[Lcom/android/launcher3/common/base/item/ItemInfo;Lcom/android/launcher3/common/base/item/ItemInfo;Ljava/util/HashMap;)Z

    move-result v29

    if-nez v29, :cond_e

    .line 868
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 869
    const/16 v20, 0x0

    goto/16 :goto_1

    .line 872
    :cond_e
    if-nez v8, :cond_10

    .line 873
    iget-object v0, v5, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v18

    .line 874
    .local v18, "providerName":Ljava/lang/String;
    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_f

    iget v0, v5, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->restoreStatus:I

    move/from16 v29, v0

    move/from16 v0, v29

    move/from16 v1, v19

    if-eq v0, v1, :cond_10

    .line 875
    :cond_f
    new-instance v26, Landroid/content/ContentValues;

    invoke-direct/range {v26 .. v26}, Landroid/content/ContentValues;-><init>()V

    .line 876
    .local v26, "values":Landroid/content/ContentValues;
    const-string v29, "appWidgetProvider"

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 877
    const-string v29, "restored"

    iget v0, v5, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->restoreStatus:I

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 878
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v10, v11, v1}, Lcom/android/launcher3/home/HomeLoader;->updateItem(JLandroid/content/ContentValues;)V

    .line 881
    .end local v18    # "providerName":Ljava/lang/String;
    .end local v26    # "values":Landroid/content/ContentValues;
    :cond_10
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/launcher3/home/HomeLoader;->putItemToIdMap(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 882
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/launcher3/home/HomeLoader;->addPagesItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 883
    move-object/from16 v20, v5

    .line 885
    .local v20, "returnItem":Lcom/android/launcher3/common/base/item/ItemInfo;
    goto/16 :goto_1
.end method

.method private doHandlingItems(Ljava/util/HashMap;Ljava/util/ArrayList;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<*>;>;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 677
    .local p1, "needHandlingItems":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/ArrayList<*>;>;"
    .local p2, "pageItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_0

    .line 679
    const-string v10, "_id"

    const/4 v9, 0x1

    .line 680
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Iterable;

    .line 679
    invoke-static {v10, v9}, Lcom/android/launcher3/Utilities;->createDbSelectionQuery(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v8

    .line 681
    .local v8, "where":Ljava/lang/String;
    sget-object v9, Lcom/android/launcher3/home/HomeLoader;->sContentResolver:Landroid/content/ContentResolver;

    sget-object v10, Lcom/android/launcher3/common/model/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v8, v11}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 682
    const-string v9, "HomeLoader"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "doHandlingItems Removed = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    sget-object v9, Lcom/android/launcher3/home/HomeLoader;->sFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    invoke-virtual {v9}, Lcom/android/launcher3/common/model/FavoritesProvider;->deleteEmptyFolders()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 686
    .local v2, "folderId":J
    sget-object v11, Lcom/android/launcher3/home/HomeLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v11

    .line 687
    :try_start_0
    sget-object v9, Lcom/android/launcher3/home/HomeLoader;->sBgFolders:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v9, v2, v3}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 688
    .local v6, "removeFolderItem":Lcom/android/launcher3/common/base/item/ItemInfo;
    invoke-virtual {p0, v6}, Lcom/android/launcher3/home/HomeLoader;->removePagesItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 689
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 690
    sget-object v9, Lcom/android/launcher3/home/HomeLoader;->sBgFolders:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v9, v2, v3}, Lcom/android/launcher3/util/LongArrayMap;->remove(J)V

    .line 691
    sget-object v9, Lcom/android/launcher3/home/HomeLoader;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v9, v2, v3}, Lcom/android/launcher3/util/LongArrayMap;->remove(J)V

    .line 692
    monitor-exit v11

    goto :goto_0

    .end local v6    # "removeFolderItem":Lcom/android/launcher3/common/base/item/ItemInfo;
    :catchall_0
    move-exception v9

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    .line 697
    .end local v2    # "folderId":J
    .end local v8    # "where":Ljava/lang/String;
    :cond_0
    const/4 v9, 0x2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_1

    .line 699
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 700
    .local v7, "values":Landroid/content/ContentValues;
    const-string v10, "_id"

    const/4 v9, 0x2

    .line 701
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Iterable;

    .line 700
    invoke-static {v10, v9}, Lcom/android/launcher3/Utilities;->createDbSelectionQuery(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v8

    .line 702
    .restart local v8    # "where":Ljava/lang/String;
    const-string v9, "restored"

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 703
    sget-object v9, Lcom/android/launcher3/home/HomeLoader;->sContentResolver:Landroid/content/ContentResolver;

    sget-object v10, Lcom/android/launcher3/common/model/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v7, v8, v11}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 704
    const-string v9, "HomeLoader"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "doHandlingItems restored = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    .end local v7    # "values":Landroid/content/ContentValues;
    .end local v8    # "where":Ljava/lang/String;
    :cond_1
    const/4 v9, 0x4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_2

    .line 709
    const/4 v9, 0x4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 710
    .local v5, "overlapItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    sget-object v9, Lcom/android/launcher3/home/HomeLoader;->sProfile:Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    iget-object v9, v9, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v9}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountX()I

    move-result v0

    .line 711
    .local v0, "countX":I
    sget-object v9, Lcom/android/launcher3/home/HomeLoader;->sProfile:Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    iget-object v9, v9, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v9}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountY()I

    move-result v1

    .line 713
    .local v1, "countY":I
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 714
    .local v4, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    iput v0, v4, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    .line 715
    iput v1, v4, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    .line 716
    const-string v10, "HomeLoader"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "doHandlingItems overlap = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Lcom/android/launcher3/common/base/item/ItemInfo;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 721
    .end local v0    # "countX":I
    .end local v1    # "countY":I
    .end local v4    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v5    # "overlapItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    :cond_2
    const/4 v9, 0x4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-gtz v9, :cond_3

    const/4 v9, 0x3

    .line 722
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_4

    .line 723
    :cond_3
    invoke-direct {p0, p2}, Lcom/android/launcher3/home/HomeLoader;->handleOutsideItems(Ljava/util/ArrayList;)V

    .line 724
    const-string v10, "HomeLoader"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "doHandlingItems extra = "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v9, 0x3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    :cond_4
    return-void
.end method

.method private fillOccupied(IIIIII[[Z)V
    .locals 4
    .param p1, "countX"    # I
    .param p2, "countY"    # I
    .param p3, "cellX"    # I
    .param p4, "cellY"    # I
    .param p5, "spanX"    # I
    .param p6, "spanY"    # I
    .param p7, "occupied"    # [[Z

    .prologue
    .line 3761
    if-ltz p3, :cond_0

    if-ltz p4, :cond_0

    add-int v2, p3, p5

    if-gt v2, p1, :cond_0

    add-int v2, p4, p6

    if-le v2, p2, :cond_1

    .line 3769
    :cond_0
    return-void

    .line 3764
    :cond_1
    move v0, p3

    .local v0, "x":I
    :goto_0
    add-int v2, p3, p5

    if-ge v0, v2, :cond_0

    if-ge v0, p1, :cond_0

    .line 3765
    move v1, p4

    .local v1, "y":I
    :goto_1
    add-int v2, p4, p6

    if-ge v1, v2, :cond_2

    if-ge v1, p2, :cond_2

    .line 3766
    aget-object v2, p7, v0

    const/4 v3, 0x1

    aput-boolean v3, v2, v1

    .line 3765
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3764
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private findSpaceForItem(Ljava/util/ArrayList;Ljava/util/ArrayList;IIZJ)Landroid/util/Pair;
    .locals 22
    .param p3, "spanX"    # I
    .param p4, "spanY"    # I
    .param p5, "lastPosition"    # Z
    .param p6, "screenIdForPosition"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;IIZJ)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "[I>;"
        }
    .end annotation

    .prologue
    .line 2324
    .local p1, "workspaceScreens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .local p2, "addedWorkspaceScreensFinal":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v19, Landroid/util/LongSparseArray;

    invoke-direct/range {v19 .. v19}, Landroid/util/LongSparseArray;-><init>()V

    .line 2327
    .local v19, "screenItems":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;>;"
    sget-object v3, Lcom/android/launcher3/home/HomeLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2328
    :try_start_0
    sget-object v2, Lcom/android/launcher3/home/HomeLoader;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v2}, Lcom/android/launcher3/util/LongArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 2329
    .local v13, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-wide v8, v13, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v20, -0x64

    cmp-long v7, v8, v20

    if-nez v7, :cond_0

    iget v7, v13, Lcom/android/launcher3/common/base/item/ItemInfo;->hidden:I

    if-nez v7, :cond_0

    .line 2330
    iget-wide v8, v13, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    move-object/from16 v0, v19

    invoke-virtual {v0, v8, v9}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/ArrayList;

    .line 2331
    .local v14, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    if-nez v14, :cond_1

    .line 2332
    new-instance v14, Ljava/util/ArrayList;

    .end local v14    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 2333
    .restart local v14    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    iget-wide v8, v13, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    move-object/from16 v0, v19

    invoke-virtual {v0, v8, v9, v14}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 2335
    :cond_1
    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2338
    .end local v13    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v14    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_2
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2341
    const-wide/16 v4, 0x0

    .line 2342
    .local v4, "screenId":J
    const/4 v2, 0x2

    new-array v6, v2, [I

    .line 2343
    .local v6, "coordinates":[I
    sget-object v2, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/launcher3/Utilities;->getHomeDefaultPageKey(Landroid/content/Context;)I

    move-result v10

    .line 2344
    .local v10, "defaultScreenIndex":I
    const/4 v15, 0x0

    .line 2346
    .local v15, "needNewScreen":Z
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 2347
    .local v17, "screenCount":I
    if-eqz p5, :cond_8

    .line 2348
    add-int/lit8 v12, v17, -0x1

    .local v12, "i":I
    :goto_1
    const/4 v2, -0x1

    if-le v12, v2, :cond_3

    .line 2349
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 2350
    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 2377
    .end local v12    # "i":I
    :cond_3
    :goto_2
    const/4 v11, 0x0

    .line 2379
    .local v11, "found":Z
    if-nez v15, :cond_6

    .line 2380
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeLoader;->mItemPositionHelper:Lcom/android/launcher3/home/HomeItemPositionHelper;

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    invoke-virtual/range {v2 .. v9}, Lcom/android/launcher3/home/HomeItemPositionHelper;->findNextAvailableIconSpaceInScreen(Ljava/util/ArrayList;J[IIIZ)Z

    move-result v11

    .line 2383
    if-nez v11, :cond_6

    .line 2384
    add-int/lit8 v10, v10, 0x1

    move/from16 v16, v10

    .line 2385
    .local v16, "screen":I
    if-nez p5, :cond_4

    const-wide/16 v2, -0x1

    cmp-long v2, p6, v2

    if-eqz v2, :cond_5

    .line 2386
    :cond_4
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    add-int/lit8 v16, v2, 0x1

    .line 2389
    :cond_5
    :goto_3
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_6

    .line 2390
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 2391
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeLoader;->mItemPositionHelper:Lcom/android/launcher3/home/HomeItemPositionHelper;

    .line 2392
    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    .line 2391
    invoke-virtual/range {v2 .. v9}, Lcom/android/launcher3/home/HomeItemPositionHelper;->findNextAvailableIconSpaceInScreen(Ljava/util/ArrayList;J[IIIZ)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 2394
    const/4 v11, 0x1

    .line 2401
    .end local v16    # "screen":I
    :cond_6
    if-nez v11, :cond_e

    .line 2403
    invoke-static {}, Lcom/android/launcher3/common/model/FavoritesProvider;->getInstance()Lcom/android/launcher3/common/model/FavoritesProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/common/model/FavoritesProvider;->generateNewScreenId()J

    move-result-wide v4

    .line 2406
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2407
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2410
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeLoader;->mItemPositionHelper:Lcom/android/launcher3/home/HomeItemPositionHelper;

    .line 2411
    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    .line 2410
    invoke-virtual/range {v2 .. v9}, Lcom/android/launcher3/home/HomeItemPositionHelper;->findNextAvailableIconSpaceInScreen(Ljava/util/ArrayList;J[IIIZ)Z

    move-result v2

    if-nez v2, :cond_e

    .line 2412
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Can\'t find space to add the item"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2348
    .end local v11    # "found":Z
    .restart local v12    # "i":I
    :cond_7
    add-int/lit8 v12, v12, -0x1

    goto/16 :goto_1

    .line 2354
    .end local v12    # "i":I
    :cond_8
    const-wide/16 v2, -0x1

    cmp-long v2, p6, v2

    if-eqz v2, :cond_a

    .line 2355
    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v18

    .line 2356
    .local v18, "screenIndex":I
    if-gez v18, :cond_9

    .line 2357
    const-string v2, "HomeLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "findSpaceForItem - screenIndex error : "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2358
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto/16 :goto_2

    .line 2360
    :cond_9
    move-wide/from16 v4, p6

    goto/16 :goto_2

    .line 2365
    .end local v18    # "screenIndex":I
    :cond_a
    add-int/lit8 v10, v10, 0x1

    .line 2366
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v10, v2, :cond_b

    .line 2367
    const/4 v15, 0x1

    goto/16 :goto_2

    .line 2369
    :cond_b
    if-gez v10, :cond_c

    .line 2370
    const-string v2, "HomeLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "findSpaceForItem - defaultScreenIndex error : "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2372
    const/4 v10, 0x0

    .line 2374
    :cond_c
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto/16 :goto_2

    .line 2389
    .restart local v11    # "found":Z
    .restart local v16    # "screen":I
    :cond_d
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_3

    .line 2415
    .end local v16    # "screen":I
    :cond_e
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v2, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    return-object v2
.end method

.method private getAllItemInHome()Ljava/util/ArrayList;
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

    .line 3682
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3683
    .local v3, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3684
    .local v0, "folderIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    sget-object v5, Lcom/android/launcher3/home/HomeLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v5

    .line 3685
    :try_start_0
    sget-object v4, Lcom/android/launcher3/home/HomeLoader;->sBgFolders:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v4}, Lcom/android/launcher3/util/LongArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/folder/FolderInfo;

    .line 3686
    .local v1, "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    iget-wide v6, v1, Lcom/android/launcher3/folder/FolderInfo;->container:J

    cmp-long v6, v6, v10

    if-eqz v6, :cond_1

    iget-wide v6, v1, Lcom/android/launcher3/folder/FolderInfo;->container:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    .line 3688
    :cond_1
    iget-wide v6, v1, Lcom/android/launcher3/folder/FolderInfo;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3697
    .end local v1    # "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 3690
    :cond_2
    :try_start_1
    sget-object v4, Lcom/android/launcher3/home/HomeLoader;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v4}, Lcom/android/launcher3/util/LongArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 3691
    .local v2, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-wide v6, v2, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    cmp-long v6, v6, v10

    if-eqz v6, :cond_4

    iget-wide v6, v2, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_4

    iget-wide v6, v2, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    .line 3693
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 3694
    :cond_4
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3697
    .end local v2    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_5
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3698
    return-object v3
.end method

.method private getAppShortcutInfo(Landroid/content/Intent;Lcom/android/launcher3/common/compat/UserHandleCompat;Landroid/database/Cursor;Lcom/android/launcher3/common/model/CursorInfo;ZZZ)Lcom/android/launcher3/common/base/item/IconInfo;
    .locals 17
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;
    .param p3, "c"    # Landroid/database/Cursor;
    .param p4, "cursorItemInfo"    # Lcom/android/launcher3/common/model/CursorInfo;
    .param p5, "allowMissingTarget"    # Z
    .param p6, "useLowResIcon"    # Z
    .param p7, "isAppShortcut"    # Z

    .prologue
    .line 1385
    if-nez p2, :cond_1

    .line 1386
    const-string v2, "HomeLoader"

    const-string v6, "Null user found in getShortcutInfo"

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1387
    const/4 v3, 0x0

    .line 1483
    :cond_0
    :goto_0
    return-object v3

    .line 1390
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    .line 1391
    .local v4, "componentName":Landroid/content/ComponentName;
    if-nez v4, :cond_2

    .line 1392
    const-string v2, "HomeLoader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Missing component found in getAppShortcutInfo: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1393
    const/4 v3, 0x0

    goto :goto_0

    .line 1396
    :cond_2
    const/4 v5, 0x0

    .line 1397
    .local v5, "lai":Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    if-nez p7, :cond_3

    sget-boolean v2, Lcom/android/launcher3/home/HomeLoader;->sIsSafeMode:Z

    if-eqz v2, :cond_4

    .line 1398
    :cond_3
    new-instance v15, Landroid/content/Intent;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    invoke-direct {v15, v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1399
    .local v15, "newIntent":Landroid/content/Intent;
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v15, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1400
    invoke-virtual {v15, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1401
    sget-object v2, Lcom/android/launcher3/home/HomeLoader;->sLauncherApps:Lcom/android/launcher3/common/compat/LauncherAppsCompat;

    move-object/from16 v0, p2

    invoke-virtual {v2, v15, v0}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->resolveActivity(Landroid/content/Intent;Lcom/android/launcher3/common/compat/UserHandleCompat;)Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;

    move-result-object v5

    .line 1403
    if-nez v5, :cond_9

    if-nez p5, :cond_9

    .line 1404
    const-string v2, "HomeLoader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Missing activity found in getAppShortcutInfo: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1405
    const/4 v3, 0x0

    goto :goto_0

    .line 1408
    .end local v15    # "newIntent":Landroid/content/Intent;
    :cond_4
    sget-object v2, Lcom/android/launcher3/home/HomeLoader;->sLauncherApps:Lcom/android/launcher3/common/compat/LauncherAppsCompat;

    .line 1409
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v2, v6, v0}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Ljava/util/List;

    move-result-object v14

    .line 1410
    .local v14, "matches":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;>;"
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;

    .line 1411
    .local v13, "launcherInfo":Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    invoke-virtual {v13}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1412
    move-object v5, v13

    .line 1417
    .end local v13    # "launcherInfo":Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    :cond_6
    if-nez v5, :cond_9

    if-nez p5, :cond_9

    .line 1418
    const/4 v9, 0x0

    .line 1419
    .local v9, "activityInfo":Landroid/content/pm/ActivityInfo;
    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/android/launcher3/common/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1421
    :try_start_0
    sget-object v2, Lcom/android/launcher3/home/HomeLoader;->sPackageManager:Landroid/content/pm/PackageManager;

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v6}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 1427
    :cond_7
    :goto_1
    if-eqz v9, :cond_b

    iget-boolean v2, v9, Landroid/content/pm/ActivityInfo;->exported:Z

    if-eqz v2, :cond_b

    .line 1428
    sget-object v2, Lcom/android/launcher3/home/HomeLoader;->sLauncherApps:Lcom/android/launcher3/common/compat/LauncherAppsCompat;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v2, v0, v1}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->resolveActivity(Landroid/content/Intent;Lcom/android/launcher3/common/compat/UserHandleCompat;)Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;

    move-result-object v5

    .line 1430
    if-nez v5, :cond_8

    .line 1431
    const-string v2, "HomeLoader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Missing activity found in getAppShortcutInfo: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1432
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 1422
    :catch_0
    move-exception v11

    .line 1423
    .local v11, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "HomeLoader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "This component is not exist - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1434
    .end local v11    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_8
    const-string v2, "HomeLoader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "change item type to shortcut type : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1435
    new-instance v16, Landroid/content/ContentValues;

    invoke-direct/range {v16 .. v16}, Landroid/content/ContentValues;-><init>()V

    .line 1436
    .local v16, "values":Landroid/content/ContentValues;
    const-string v2, "itemType"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1437
    move-object/from16 v0, p4

    iget v2, v0, Lcom/android/launcher3/common/model/CursorInfo;->idIndex:I

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v6, v7, v1}, Lcom/android/launcher3/home/HomeLoader;->updateItem(JLandroid/content/ContentValues;)V

    .line 1438
    const/16 p7, 0x1

    .line 1447
    .end local v9    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v14    # "matches":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;>;"
    .end local v16    # "values":Landroid/content/ContentValues;
    :cond_9
    new-instance v3, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-direct {v3}, Lcom/android/launcher3/common/base/item/IconInfo;-><init>()V

    .line 1448
    .local v3, "info":Lcom/android/launcher3/common/base/item/IconInfo;
    sget-object v2, Lcom/android/launcher3/home/HomeLoader;->sIconCache:Lcom/android/launcher3/common/model/IconCache;

    const/4 v7, 0x0

    move-object/from16 v6, p2

    move/from16 v8, p6

    invoke-virtual/range {v2 .. v8}, Lcom/android/launcher3/common/model/IconCache;->getTitleAndIcon(Lcom/android/launcher3/common/base/item/IconInfo;Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;Lcom/android/launcher3/common/compat/UserHandleCompat;ZZ)V

    .line 1449
    sget-object v2, Lcom/android/launcher3/home/HomeLoader;->sIconCache:Lcom/android/launcher3/common/model/IconCache;

    sget-object v6, Lcom/android/launcher3/home/HomeLoader;->sIconCache:Lcom/android/launcher3/common/model/IconCache;

    invoke-virtual {v3, v6}, Lcom/android/launcher3/common/base/item/IconInfo;->getIcon(Lcom/android/launcher3/common/model/IconCache;)Landroid/graphics/Bitmap;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v2, v6, v0}, Lcom/android/launcher3/common/model/IconCache;->isDefaultIcon(Landroid/graphics/Bitmap;Lcom/android/launcher3/common/compat/UserHandleCompat;)Z

    move-result v2

    if-eqz v2, :cond_e

    if-eqz p3, :cond_e

    .line 1450
    if-nez p5, :cond_c

    .line 1451
    sget-object v2, Lcom/android/launcher3/home/HomeLoader;->sLauncherApps:Lcom/android/launcher3/common/compat/LauncherAppsCompat;

    .line 1452
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v2, v6, v0}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Ljava/util/List;

    move-result-object v10

    .line 1453
    .local v10, "apps":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;>;"
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a

    move-object/from16 v0, p2

    invoke-static {v10, v4, v0}, Lcom/android/launcher3/home/HomeLoader;->findActivityInfo(Ljava/util/List;Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;

    move-result-object v2

    if-nez v2, :cond_c

    .line 1454
    :cond_a
    const-string v2, "HomeLoader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is defaultIcon and activityInfo is null"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1455
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 1440
    .end local v3    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v10    # "apps":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;>;"
    .restart local v9    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .restart local v14    # "matches":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;>;"
    :cond_b
    const-string v2, "HomeLoader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ComponentName does not match with the Launcher category : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1442
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 1458
    .end local v9    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v14    # "matches":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;>;"
    .restart local v3    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_c
    move-object/from16 v0, p4

    iget v2, v0, Lcom/android/launcher3/common/model/CursorInfo;->iconIndex:I

    sget-object v6, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    move-object/from16 v0, p3

    invoke-static {v0, v2, v6}, Lcom/android/launcher3/util/BitmapUtils;->createIconBitmap(Landroid/database/Cursor;ILandroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 1459
    .local v12, "icon":Landroid/graphics/Bitmap;
    if-nez v12, :cond_d

    sget-object v2, Lcom/android/launcher3/home/HomeLoader;->sIconCache:Lcom/android/launcher3/common/model/IconCache;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/android/launcher3/common/model/IconCache;->getDefaultIcon(Lcom/android/launcher3/common/compat/UserHandleCompat;)Landroid/graphics/Bitmap;

    move-result-object v12

    .end local v12    # "icon":Landroid/graphics/Bitmap;
    :cond_d
    invoke-virtual {v3, v12}, Lcom/android/launcher3/common/base/item/IconInfo;->setIcon(Landroid/graphics/Bitmap;)V

    .line 1462
    :cond_e
    if-eqz v5, :cond_f

    invoke-virtual {v5}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher3/Utilities;->isAppSuspended(Landroid/content/pm/ApplicationInfo;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1463
    const/4 v2, 0x4

    iput v2, v3, Lcom/android/launcher3/common/base/item/IconInfo;->isDisabled:I

    .line 1467
    :cond_f
    iget-object v2, v3, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_10

    if-eqz p3, :cond_10

    .line 1468
    move-object/from16 v0, p4

    iget v2, v0, Lcom/android/launcher3/common/model/CursorInfo;->titleIndex:I

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher3/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    .line 1472
    :cond_10
    iget-object v2, v3, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    if-nez v2, :cond_11

    .line 1473
    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    .line 1476
    :cond_11
    move/from16 v0, p7

    iput-boolean v0, v3, Lcom/android/launcher3/common/base/item/IconInfo;->isAppShortcut:Z

    .line 1477
    if-eqz p7, :cond_12

    const/4 v2, 0x1

    :goto_2
    iput v2, v3, Lcom/android/launcher3/common/base/item/IconInfo;->itemType:I

    .line 1478
    move-object/from16 v0, p2

    iput-object v0, v3, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    .line 1479
    sget-object v2, Lcom/android/launcher3/home/HomeLoader;->sUserManager:Lcom/android/launcher3/common/compat/UserManagerCompat;

    iget-object v6, v3, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    iget-object v7, v3, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {v2, v6, v7}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getBadgedLabelForUser(Ljava/lang/CharSequence;Lcom/android/launcher3/common/compat/UserHandleCompat;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v3, Lcom/android/launcher3/common/base/item/IconInfo;->contentDescription:Ljava/lang/CharSequence;

    .line 1480
    if-eqz v5, :cond_0

    .line 1481
    invoke-static {v5}, Lcom/android/launcher3/common/base/item/IconInfo;->initFlags(Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;)I

    move-result v2

    iput v2, v3, Lcom/android/launcher3/common/base/item/IconInfo;->flags:I

    goto/16 :goto_0

    .line 1477
    :cond_12
    const/4 v2, 0x0

    goto :goto_2
.end method

.method private getCallback()Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;
    .locals 2

    .prologue
    .line 2419
    iget-object v1, p0, Lcom/android/launcher3/home/HomeLoader;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2420
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mCallbacks:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2421
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getCellXFromHotseatOrder(I)I
    .locals 1
    .param p1, "rank"    # I

    .prologue
    .line 3966
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sProfile:Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .end local p1    # "rank":I
    :cond_0
    return p1
.end method

.method private getCellYFromHotseatOrder(I)I
    .locals 2
    .param p1, "rank"    # I

    .prologue
    .line 3970
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sProfile:Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sProfile:Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    iget-object v0, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountY()I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getDefaultLayoutParser()Lcom/android/launcher3/home/HomeDefaultLayoutParser;
    .locals 6

    .prologue
    .line 3280
    new-instance v0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;

    sget-object v1, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    sget-object v2, Lcom/android/launcher3/home/HomeLoader;->sFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    invoke-virtual {v2}, Lcom/android/launcher3/common/model/FavoritesProvider;->getAppWidgetHost()Landroid/appwidget/AppWidgetHost;

    move-result-object v2

    sget-object v3, Lcom/android/launcher3/home/HomeLoader;->sFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    sget-object v4, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    .line 3281
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/home/HomeDefaultLayoutParser;-><init>(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/android/launcher3/common/model/DefaultLayoutParser$LayoutParserCallback;Landroid/content/res/Resources;I)V

    return-object v0
.end method

.method public static getProviderInfo(Landroid/content/Context;Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;

    .prologue
    .line 1682
    sget-object v1, Lcom/android/launcher3/home/HomeLoader;->sBgWidgetLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1683
    :try_start_0
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sBgWidgetProviders:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 1684
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/launcher3/home/HomeLoader;->getWidgetProviders(Landroid/content/Context;Z)Ljava/util/List;

    .line 1686
    :cond_0
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sBgWidgetProviders:Ljava/util/HashMap;

    new-instance v2, Lcom/android/launcher3/util/ComponentKey;

    invoke-direct {v2, p1, p2}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    monitor-exit v1

    return-object v0

    .line 1687
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getShortcutInfo(Landroid/content/Intent;Landroid/database/Cursor;Lcom/android/launcher3/common/model/CursorInfo;Lcom/android/launcher3/common/compat/UserHandleCompat;Landroid/content/ComponentName;)Lcom/android/launcher3/common/base/item/IconInfo;
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "iconInfo"    # Lcom/android/launcher3/common/model/CursorInfo;
    .param p4, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;
    .param p5, "cn"    # Landroid/content/ComponentName;

    .prologue
    const/4 v7, 0x1

    .line 1491
    new-instance v1, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-direct {v1}, Lcom/android/launcher3/common/base/item/IconInfo;-><init>()V

    .line 1492
    .local v1, "info":Lcom/android/launcher3/common/base/item/IconInfo;
    iput-object p4, v1, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    .line 1493
    iput v7, v1, Lcom/android/launcher3/common/base/item/IconInfo;->itemType:I

    .line 1495
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.sec.launcher.action.SHOW_APPS_VIEW"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1497
    iput-boolean v7, v1, Lcom/android/launcher3/common/base/item/IconInfo;->isAppsButton:Z

    .line 1498
    sget-object v4, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090023

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    .line 1499
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/android/launcher3/LauncherAppState;->setAppsButtonEnabled(Z)V

    .line 1538
    :cond_0
    :goto_0
    return-object v1

    .line 1501
    :cond_1
    iget v4, p3, Lcom/android/launcher3/common/model/CursorInfo;->titleIndex:I

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/launcher3/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    .line 1503
    sget-object v4, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    invoke-virtual {p3, p2, v1, v4}, Lcom/android/launcher3/common/model/CursorInfo;->loadIcon(Landroid/database/Cursor;Lcom/android/launcher3/common/base/item/IconInfo;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1505
    .local v0, "icon":Landroid/graphics/Bitmap;
    if-nez v0, :cond_2

    .line 1506
    const-string v4, "HomeLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v1, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " shortcut\'s icon is null. use default icon"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1507
    sget-object v4, Lcom/android/launcher3/home/HomeLoader;->sIconCache:Lcom/android/launcher3/common/model/IconCache;

    iget-object v5, v1, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {v4, v5}, Lcom/android/launcher3/common/model/IconCache;->getDefaultIcon(Lcom/android/launcher3/common/compat/UserHandleCompat;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1508
    iput-boolean v7, v1, Lcom/android/launcher3/common/base/item/IconInfo;->usingFallbackIcon:Z

    .line 1511
    :cond_2
    invoke-static {}, Lcom/android/launcher3/theme/OpenThemeManager;->getInstance()Lcom/android/launcher3/theme/OpenThemeManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/theme/OpenThemeManager;->isDefaultTheme()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1512
    invoke-virtual {v1, v0}, Lcom/android/launcher3/common/base/item/IconInfo;->setOriginalIcon(Landroid/graphics/Bitmap;)V

    .line 1513
    sget-object v4, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    invoke-static {v4, v0, p5}, Lcom/android/launcher3/util/ShortcutTray;->getIcon(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/content/ComponentName;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1514
    iput-boolean v7, v1, Lcom/android/launcher3/common/base/item/IconInfo;->customIcon:Z

    .line 1517
    :cond_3
    sget-object v4, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/launcher3/util/DualAppUtils;->supportDualApp(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, v1, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-static {v4}, Lcom/android/launcher3/util/DualAppUtils;->isDualAppId(Lcom/android/launcher3/common/compat/UserHandleCompat;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1518
    iget-boolean v4, v1, Lcom/android/launcher3/common/base/item/IconInfo;->customIcon:Z

    if-nez v4, :cond_4

    .line 1519
    iput-boolean v7, v1, Lcom/android/launcher3/common/base/item/IconInfo;->customIcon:Z

    .line 1520
    invoke-virtual {v1, v0}, Lcom/android/launcher3/common/base/item/IconInfo;->setOriginalIcon(Landroid/graphics/Bitmap;)V

    .line 1522
    :cond_4
    sget-object v4, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    sget-object v5, Lcom/android/launcher3/home/HomeLoader;->sProfile:Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    iget-object v5, v5, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    .line 1523
    invoke-virtual {v5}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getIconSize()I

    move-result v5

    iget-object v6, v1, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {v6}, Lcom/android/launcher3/common/compat/UserHandleCompat;->getUser()Landroid/os/UserHandle;

    move-result-object v6

    .line 1522
    invoke-static {v4, v0, v5, v6}, Lcom/android/launcher3/util/DualAppUtils;->makeUserBadgedIcon(Landroid/content/Context;Landroid/graphics/Bitmap;ILandroid/os/UserHandle;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1526
    :cond_5
    invoke-virtual {v1, v0}, Lcom/android/launcher3/common/base/item/IconInfo;->setIcon(Landroid/graphics/Bitmap;)V

    .line 1528
    if-eqz p5, :cond_0

    .line 1529
    iput-object p5, v1, Lcom/android/launcher3/common/base/item/IconInfo;->componentName:Landroid/content/ComponentName;

    .line 1530
    new-instance v3, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1531
    .local v3, "newIntent":Landroid/content/Intent;
    invoke-virtual {v3, p5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1532
    sget-object v4, Lcom/android/launcher3/home/HomeLoader;->sLauncherApps:Lcom/android/launcher3/common/compat/LauncherAppsCompat;

    invoke-virtual {v4, v3, p4}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->resolveActivity(Landroid/content/Intent;Lcom/android/launcher3/common/compat/UserHandleCompat;)Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;

    move-result-object v2

    .line 1533
    .local v2, "lai":Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    if-eqz v2, :cond_0

    .line 1534
    invoke-static {v2}, Lcom/android/launcher3/common/base/item/IconInfo;->initFlags(Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;)I

    move-result v4

    iput v4, v1, Lcom/android/launcher3/common/base/item/IconInfo;->flags:I

    goto/16 :goto_0
.end method

.method public static getWidgetProviders(Landroid/content/Context;Z)Ljava/util/List;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "refresh"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1691
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1693
    .local v3, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;>;"
    :try_start_0
    sget-object v9, Lcom/android/launcher3/home/HomeLoader;->sBgWidgetLock:Ljava/lang/Object;

    monitor-enter v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1694
    :try_start_1
    sget-object v8, Lcom/android/launcher3/home/HomeLoader;->sBgWidgetProviders:Ljava/util/HashMap;

    if-eqz v8, :cond_0

    if-eqz p1, :cond_3

    .line 1695
    :cond_0
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1697
    .local v4, "tmpWidgetProviders":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/ComponentKey;Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;>;"
    invoke-static {p0}, Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;

    move-result-object v7

    .line 1700
    .local v7, "wm":Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;
    invoke-virtual {v7}, Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;->getAllProviders()Ljava/util/List;

    move-result-object v6

    .line 1701
    .local v6, "widgets":Ljava/util/List;, "Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/appwidget/AppWidgetProviderInfo;

    .line 1702
    .local v2, "pInfo":Landroid/appwidget/AppWidgetProviderInfo;
    invoke-static {p0, v2}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->fromProviderInfo(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    move-result-object v1

    .line 1703
    .local v1, "info":Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;
    invoke-virtual {v7, v1}, Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;->getUser(Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;)Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v5

    .line 1704
    .local v5, "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    new-instance v10, Lcom/android/launcher3/util/ComponentKey;

    iget-object v11, v1, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-direct {v10, v11, v5}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    invoke-virtual {v4, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1713
    .end local v1    # "info":Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;
    .end local v2    # "pInfo":Landroid/appwidget/AppWidgetProviderInfo;
    .end local v4    # "tmpWidgetProviders":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/ComponentKey;Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;>;"
    .end local v5    # "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    .end local v6    # "widgets":Ljava/util/List;, "Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    .end local v7    # "wm":Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1714
    :catch_0
    move-exception v0

    .line 1715
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v8

    instance-of v8, v8, Landroid/os/TransactionTooLargeException;

    if-eqz v8, :cond_4

    .line 1720
    sget-object v9, Lcom/android/launcher3/home/HomeLoader;->sBgWidgetLock:Ljava/lang/Object;

    monitor-enter v9

    .line 1721
    :try_start_3
    sget-object v8, Lcom/android/launcher3/home/HomeLoader;->sBgWidgetProviders:Ljava/util/HashMap;

    if-eqz v8, :cond_1

    .line 1722
    sget-object v8, Lcom/android/launcher3/home/HomeLoader;->sBgWidgetProviders:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1724
    :cond_1
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v3

    .line 1709
    .restart local v4    # "tmpWidgetProviders":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/ComponentKey;Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;>;"
    .restart local v6    # "widgets":Ljava/util/List;, "Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    .restart local v7    # "wm":Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;
    :cond_2
    :try_start_4
    sput-object v4, Lcom/android/launcher3/home/HomeLoader;->sBgWidgetProviders:Ljava/util/HashMap;

    .line 1711
    .end local v4    # "tmpWidgetProviders":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/ComponentKey;Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;>;"
    .end local v6    # "widgets":Ljava/util/List;, "Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    .end local v7    # "wm":Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;
    :cond_3
    sget-object v8, Lcom/android/launcher3/home/HomeLoader;->sBgWidgetProviders:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1712
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 1725
    .restart local v0    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v8

    :try_start_5
    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v8

    .line 1727
    :cond_4
    throw v0
.end method

.method private getWidgetsInHome()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/home/LauncherAppWidgetInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3540
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3541
    .local v1, "widgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/home/LauncherAppWidgetInfo;>;"
    sget-object v3, Lcom/android/launcher3/home/HomeLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v3

    .line 3542
    :try_start_0
    sget-object v2, Lcom/android/launcher3/home/HomeLoader;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v2}, Lcom/android/launcher3/util/LongArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 3543
    .local v0, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    .line 3544
    check-cast v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    .end local v0    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3547
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

    .line 3548
    return-object v1
.end method

.method private handleOutsideItems(Ljava/util/ArrayList;)V
    .locals 24
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
    .line 3702
    .local p1, "pageItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_2

    .line 3703
    :cond_0
    const-string v18, "HomeLoader"

    const-string v19, "pageItems is null or empty"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3757
    :cond_1
    return-void

    .line 3706
    :cond_2
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 3708
    .local v15, "reArrangeItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_3
    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_4

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 3709
    .local v6, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-wide v0, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    move-wide/from16 v20, v0

    const-wide/16 v22, -0x64

    cmp-long v19, v20, v22

    if-nez v19, :cond_3

    .line 3710
    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3714
    .end local v6    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_4
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/launcher3/home/HomeLoader;->reArrangeByGrid(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v12

    .line 3717
    .local v12, "outsideItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_5

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 3718
    .restart local v6    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3719
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/launcher3/home/HomeLoader;->removePagesItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto :goto_1

    .line 3723
    .end local v6    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_5
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 3724
    .local v7, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_6
    :goto_2
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_7

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 3726
    .restart local v6    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-wide v0, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    move-wide/from16 v20, v0

    const-wide/16 v22, -0x65

    cmp-long v19, v20, v22

    if-eqz v19, :cond_6

    .line 3729
    iget-wide v8, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    .line 3730
    .local v8, "itemId":J
    invoke-static {v8, v9}, Lcom/android/launcher3/common/model/LauncherSettings$Favorites;->getContentUri(J)Landroid/net/Uri;

    move-result-object v16

    .line 3731
    .local v16, "uri":Landroid/net/Uri;
    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    .line 3732
    .local v17, "values":Landroid/content/ContentValues;
    const-string v19, "cellX"

    iget v0, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3733
    const-string v19, "cellY"

    iget v0, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3734
    const-string v19, "spanX"

    iget v0, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3735
    const-string v19, "spanY"

    iget v0, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3737
    invoke-static/range {v16 .. v16}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 3740
    .end local v6    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v8    # "itemId":J
    .end local v16    # "uri":Landroid/net/Uri;
    .end local v17    # "values":Landroid/content/ContentValues;
    :cond_7
    :try_start_0
    sget-object v18, Lcom/android/launcher3/home/HomeLoader;->sContentResolver:Landroid/content/ContentResolver;

    const-string v19, "com.sec.android.app.launcher.settings"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v7}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3748
    :goto_3
    const/4 v13, 0x1

    .local v13, "plusIndex":I
    move v14, v13

    .line 3749
    .end local v13    # "plusIndex":I
    .local v14, "plusIndex":I
    :goto_4
    if-eqz v12, :cond_1

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_1

    .line 3750
    move-object v4, v12

    .line 3751
    .local v4, "arrangedItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-static {}, Lcom/android/launcher3/common/model/FavoritesProvider;->getInstance()Lcom/android/launcher3/common/model/FavoritesProvider;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher3/common/model/FavoritesProvider;->generateNewScreenId()J

    move-result-wide v10

    .line 3752
    .local v10, "newScreenId":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/HomeLoader;->mNewPageIdsAfterGridChanged:Ljava/util/HashMap;

    move-object/from16 v19, v0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    new-instance v21, Lcom/android/launcher3/home/HomeLoader$NewScreenInfo;

    const/16 v18, 0x0

    .line 3753
    move/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/launcher3/common/base/item/ItemInfo;

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    move-wide/from16 v22, v0

    add-int/lit8 v13, v14, 0x1

    .end local v14    # "plusIndex":I
    .restart local v13    # "plusIndex":I
    move-object/from16 v0, v21

    move-wide/from16 v1, v22

    invoke-direct {v0, v1, v2, v14}, Lcom/android/launcher3/home/HomeLoader$NewScreenInfo;-><init>(JI)V

    .line 3752
    invoke-virtual/range {v19 .. v21}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3754
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v10, v11}, Lcom/android/launcher3/home/HomeLoader;->arrangeItemToNewScreen(Ljava/util/ArrayList;J)Ljava/util/ArrayList;

    move-result-object v12

    .line 3755
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/HomeLoader;->mExtraItemsAfterGridChanged:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v14, v13

    .line 3756
    .end local v13    # "plusIndex":I
    .restart local v14    # "plusIndex":I
    goto :goto_4

    .line 3741
    .end local v4    # "arrangedItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .end local v10    # "newScreenId":J
    .end local v14    # "plusIndex":I
    :catch_0
    move-exception v5

    .line 3742
    .local v5, "e":Landroid/os/RemoteException;
    const-string v18, "HomeLoader"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "occurred RemoteException during handleOutsideItems - "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v5}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 3743
    .end local v5    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v5

    .line 3744
    .local v5, "e":Landroid/content/OperationApplicationException;
    const-string v18, "HomeLoader"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "occurred OperationApplicationException during handleOutsideItems - "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 3745
    invoke-virtual {v5}, Landroid/content/OperationApplicationException;->getMessage()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 3744
    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method private initFestivalPageIfNecessary(Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V
    .locals 4
    .param p1, "task"    # Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;

    .prologue
    .line 1814
    invoke-direct {p0}, Lcom/android/launcher3/home/HomeLoader;->getCallback()Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    move-result-object v0

    .line 1815
    .local v0, "oldCallbacks":Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;
    if-nez v0, :cond_0

    .line 1816
    const-string v2, "HomeLoader"

    const-string v3, "initFestivalPageIfNecessary failed with no launcher"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1830
    :goto_0
    return-void

    .line 1820
    :cond_0
    new-instance v1, Lcom/android/launcher3/home/HomeLoader$10;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/launcher3/home/HomeLoader$10;-><init>(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V

    .line 1829
    .local v1, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v1}, Lcom/android/launcher3/home/HomeLoader;->runOnMainThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private isAllAppItemInApps(Lcom/android/launcher3/common/base/item/ItemInfo;)Z
    .locals 10
    .param p1, "info"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    const-wide/16 v8, -0x66

    const/4 v2, 0x1

    .line 3629
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3630
    .local v0, "folderIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    sget-object v3, Lcom/android/launcher3/home/HomeLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v3

    .line 3631
    :try_start_0
    iget v4, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    if-nez v4, :cond_3

    .line 3632
    iget-wide v4, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    cmp-long v4, v4, v8

    if-nez v4, :cond_0

    .line 3633
    monitor-exit v3

    .line 3646
    :goto_0
    return v2

    .line 3635
    :cond_0
    sget-object v4, Lcom/android/launcher3/home/HomeLoader;->sBgFolders:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v4}, Lcom/android/launcher3/util/LongArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/folder/FolderInfo;

    .line 3636
    .local v1, "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    iget-wide v6, v1, Lcom/android/launcher3/folder/FolderInfo;->container:J

    cmp-long v5, v6, v8

    if-nez v5, :cond_1

    .line 3637
    iget-wide v6, v1, Lcom/android/launcher3/folder/FolderInfo;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3645
    .end local v1    # "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 3640
    :cond_2
    :try_start_1
    iget-wide v4, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3641
    monitor-exit v3

    goto :goto_0

    .line 3645
    :cond_3
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3646
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private makeSingleInstanceAppWidgetList()Z
    .locals 10

    .prologue
    const/4 v5, 0x0

    .line 3496
    sget-object v6, Lcom/android/launcher3/home/HomeController;->sSingleInstanceAppWidgetList:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 3497
    sget-object v6, Lcom/android/launcher3/home/HomeController;->sSingleInstanceAppWidgetPackageList:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 3498
    sget-object v6, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 3499
    .local v2, "pm":Landroid/content/pm/PackageManager;
    new-instance v3, Landroid/content/Intent;

    const-string v6, "com.sec.launcher.action.APPWIDGET_SINGLE_INSTANCE"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3500
    .local v3, "singleInstanceIntent":Landroid/content/Intent;
    invoke-virtual {v2, v3, v5}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 3502
    .local v4, "singleInstanceList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 3503
    .local v0, "info":Landroid/content/pm/ResolveInfo;
    new-instance v1, Landroid/content/ComponentName;

    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v8, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3504
    .local v1, "mComponentName":Landroid/content/ComponentName;
    sget-object v7, Lcom/android/launcher3/home/HomeController;->sSingleInstanceAppWidgetList:Ljava/util/HashMap;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 3505
    const-string v7, "HomeLoader"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "This widget is single instance - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3506
    sget-object v7, Lcom/android/launcher3/home/HomeController;->sSingleInstanceAppWidgetList:Ljava/util/HashMap;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Landroid/util/LongSparseArray;

    invoke-direct {v9}, Landroid/util/LongSparseArray;-><init>()V

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 3510
    .end local v0    # "info":Landroid/content/pm/ResolveInfo;
    .end local v1    # "mComponentName":Landroid/content/ComponentName;
    :cond_1
    const-string v6, "com.sec.launcher.action.APPWIDGET_SINGLE_INSTANCE_PACKAGE"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3511
    invoke-virtual {v2, v3, v5}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 3512
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 3513
    .restart local v0    # "info":Landroid/content/pm/ResolveInfo;
    sget-object v7, Lcom/android/launcher3/home/HomeController;->sSingleInstanceAppWidgetPackageList:Ljava/util/HashMap;

    iget-object v8, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 3514
    const-string v7, "HomeLoader"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "This widget is single instance - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3515
    sget-object v7, Lcom/android/launcher3/home/HomeController;->sSingleInstanceAppWidgetPackageList:Ljava/util/HashMap;

    iget-object v8, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    new-instance v9, Landroid/util/LongSparseArray;

    invoke-direct {v9}, Landroid/util/LongSparseArray;-><init>()V

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 3519
    .end local v0    # "info":Landroid/content/pm/ResolveInfo;
    :cond_3
    sget-object v6, Lcom/android/launcher3/home/HomeController;->sSingleInstanceAppWidgetPackageList:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    sget-object v6, Lcom/android/launcher3/home/HomeController;->sSingleInstanceAppWidgetList:Ljava/util/HashMap;

    .line 3520
    invoke-virtual {v6}, Ljava/util/HashMap;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    :cond_4
    const/4 v5, 0x1

    :cond_5
    return v5
.end method

.method private reArrangHotseatItemsByRemoved(I)V
    .locals 8
    .param p1, "removedIndex"    # I

    .prologue
    .line 3088
    sget-object v3, Lcom/android/launcher3/home/HomeLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v3

    .line 3089
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3090
    .local v1, "needToRearrangeItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    iget-object v2, p0, Lcom/android/launcher3/home/HomeLoader;->mBgHotseatItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 3091
    .local v0, "hotseatItem":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-wide v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    int-to-long v6, p1

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 3092
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3098
    .end local v0    # "hotseatItem":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v1    # "needToRearrangeItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 3095
    .restart local v1    # "needToRearrangeItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 3096
    invoke-direct {p0, v1, p1}, Lcom/android/launcher3/home/HomeLoader;->reArrangeHotseatData(Ljava/util/ArrayList;I)V

    .line 3098
    :cond_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3099
    return-void
.end method

.method private reArrangeByGrid(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 33
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
    .line 3788
    .local p1, "pageItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    .line 3790
    .local v27, "outSideItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    sget-object v3, Lcom/android/launcher3/home/HomeLoader;->sProfile:Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    iget-object v3, v3, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v3}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountX()I

    move-result v4

    .line 3791
    .local v4, "countX":I
    sget-object v3, Lcom/android/launcher3/home/HomeLoader;->sProfile:Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    iget-object v3, v3, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v3}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountY()I

    move-result v5

    .line 3792
    .local v5, "countY":I
    filled-new-array {v4, v5}, [I

    move-result-object v3

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [[Z

    .line 3793
    .local v10, "occupied":[[Z
    const/4 v3, 0x2

    new-array v0, v3, [I

    move-object/from16 v22, v0

    .line 3794
    .local v22, "diffXY":[I
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 3795
    .local v24, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    move-object/from16 v0, v24

    iget v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    if-ltz v6, :cond_1

    move-object/from16 v0, v24

    iget v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    if-gez v6, :cond_0

    .line 3796
    :cond_1
    move-object/from16 v0, v24

    iput v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    .line 3797
    move-object/from16 v0, v24

    iput v5, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    goto :goto_0

    .line 3800
    .end local v24    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v4, v5, v2}, Lcom/android/launcher3/home/HomeLoader;->calculateDiffXY([IIILjava/util/ArrayList;)V

    .line 3801
    const/4 v3, 0x0

    aget v3, v22, v3

    if-lez v3, :cond_9

    const/4 v3, 0x0

    aget v3, v22, v3

    add-int/lit8 v20, v3, -0x1

    .line 3802
    .local v20, "diffIndexX":I
    :goto_1
    const/4 v3, 0x1

    aget v3, v22, v3

    if-lez v3, :cond_a

    const/4 v3, 0x1

    aget v3, v22, v3

    add-int/lit8 v21, v3, -0x1

    .line 3804
    .local v21, "diffIndexY":I
    :goto_2
    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v4, v5, v1, v2}, Lcom/android/launcher3/util/ScreenGridUtilities;->getOutSidePosition(Ljava/util/List;IIII)I

    move-result v28

    .line 3806
    .local v28, "position":I
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v23, v3, -0x1

    .local v23, "i":I
    :goto_3
    const/4 v3, -0x1

    move/from16 v0, v23

    if-le v0, v3, :cond_17

    .line 3807
    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 3808
    .local v25, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    if-eqz v25, :cond_16

    .line 3809
    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    move/from16 v30, v0

    .line 3810
    .local v30, "x":I
    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    move/from16 v31, v0

    .line 3812
    .local v31, "y":I
    move-object/from16 v0, v25

    iget v3, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    if-le v3, v4, :cond_4

    .line 3813
    move-object/from16 v0, v25

    iput v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    .line 3815
    const/4 v3, 0x1

    move/from16 v0, v28

    if-eq v0, v3, :cond_3

    const/4 v3, 0x3

    move/from16 v0, v28

    if-ne v0, v3, :cond_4

    .line 3817
    :cond_3
    const/4 v3, 0x0

    aget v3, v22, v3

    add-int v30, v30, v3

    .line 3820
    :cond_4
    move-object/from16 v0, v25

    iget v3, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    if-le v3, v5, :cond_6

    .line 3821
    move-object/from16 v0, v25

    iput v5, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    .line 3823
    const/4 v3, 0x2

    move/from16 v0, v28

    if-eq v0, v3, :cond_5

    const/4 v3, 0x3

    move/from16 v0, v28

    if-ne v0, v3, :cond_6

    .line 3825
    :cond_5
    const/4 v3, 0x1

    aget v3, v22, v3

    add-int v31, v31, v3

    .line 3829
    :cond_6
    move-object/from16 v0, v25

    iget v15, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    .line 3830
    .local v15, "spanX":I
    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    move/from16 v16, v0

    .line 3832
    .local v16, "spanY":I
    if-nez v28, :cond_b

    .line 3833
    add-int v3, v30, v15

    if-gt v3, v4, :cond_7

    add-int v3, v31, v16

    if-le v3, v5, :cond_e

    .line 3834
    :cond_7
    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3806
    .end local v15    # "spanX":I
    .end local v16    # "spanY":I
    .end local v30    # "x":I
    .end local v31    # "y":I
    :cond_8
    :goto_4
    add-int/lit8 v23, v23, -0x1

    goto :goto_3

    .line 3801
    .end local v20    # "diffIndexX":I
    .end local v21    # "diffIndexY":I
    .end local v23    # "i":I
    .end local v25    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v28    # "position":I
    :cond_9
    const/16 v20, 0x0

    goto/16 :goto_1

    .line 3802
    .restart local v20    # "diffIndexX":I
    :cond_a
    const/16 v21, 0x0

    goto/16 :goto_2

    .line 3837
    .restart local v15    # "spanX":I
    .restart local v16    # "spanY":I
    .restart local v21    # "diffIndexY":I
    .restart local v23    # "i":I
    .restart local v25    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    .restart local v28    # "position":I
    .restart local v30    # "x":I
    .restart local v31    # "y":I
    :cond_b
    const/4 v3, 0x1

    move/from16 v0, v28

    if-ne v0, v3, :cond_10

    .line 3838
    move/from16 v0, v30

    move/from16 v1, v20

    if-le v0, v1, :cond_c

    add-int v3, v31, v16

    if-le v3, v5, :cond_d

    .line 3839
    :cond_c
    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 3842
    :cond_d
    const/4 v3, 0x0

    aget v3, v22, v3

    sub-int v30, v30, v3

    .line 3861
    :cond_e
    :goto_5
    move-object/from16 v0, v25

    iget v3, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    move/from16 v0, v30

    if-ne v3, v0, :cond_f

    move-object/from16 v0, v25

    iget v3, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    move/from16 v0, v31

    if-eq v3, v0, :cond_8

    .line 3862
    :cond_f
    move/from16 v0, v30

    move-object/from16 v1, v25

    iput v0, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    .line 3863
    move/from16 v0, v31

    move-object/from16 v1, v25

    iput v0, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    goto :goto_4

    .line 3844
    :cond_10
    const/4 v3, 0x2

    move/from16 v0, v28

    if-ne v0, v3, :cond_13

    .line 3845
    add-int v3, v30, v15

    if-gt v3, v4, :cond_11

    move/from16 v0, v31

    move/from16 v1, v21

    if-gt v0, v1, :cond_12

    .line 3846
    :cond_11
    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 3849
    :cond_12
    const/4 v3, 0x1

    aget v3, v22, v3

    sub-int v31, v31, v3

    goto :goto_5

    .line 3851
    :cond_13
    const/4 v3, 0x3

    move/from16 v0, v28

    if-ne v0, v3, :cond_e

    .line 3852
    move/from16 v0, v30

    move/from16 v1, v20

    if-le v0, v1, :cond_14

    move/from16 v0, v31

    move/from16 v1, v21

    if-gt v0, v1, :cond_15

    .line 3853
    :cond_14
    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 3856
    :cond_15
    const/4 v3, 0x0

    aget v3, v22, v3

    sub-int v30, v30, v3

    .line 3857
    const/4 v3, 0x1

    aget v3, v22, v3

    sub-int v31, v31, v3

    goto :goto_5

    .line 3866
    .end local v15    # "spanX":I
    .end local v16    # "spanY":I
    .end local v30    # "x":I
    .end local v31    # "y":I
    :cond_16
    const-string v3, "HomeLoader"

    const-string v6, "HomeLoader: changeGrid() item is Null"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 3870
    .end local v25    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_17
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_18
    :goto_6
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 3871
    .restart local v25    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    .line 3872
    move-object/from16 v0, v25

    iget v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    move-object/from16 v0, v25

    iget v7, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    move-object/from16 v0, v25

    iget v8, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    move-object/from16 v0, v25

    iget v9, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v10}, Lcom/android/launcher3/home/HomeLoader;->fillOccupied(IIIIII[[Z)V

    goto :goto_6

    .line 3877
    .end local v25    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_19
    const-string v3, "HomeLoader"

    const-string v6, "reArrangeByGrid occupied: "

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3879
    const/16 v31, 0x0

    .restart local v31    # "y":I
    :goto_7
    move/from16 v0, v31

    if-ge v0, v5, :cond_1d

    .line 3880
    const-string v26, ""

    .line 3881
    .local v26, "line":Ljava/lang/String;
    const/16 v30, 0x0

    .restart local v30    # "x":I
    :goto_8
    move/from16 v0, v30

    if-ge v0, v4, :cond_1c

    .line 3882
    array-length v3, v10

    move/from16 v0, v30

    if-ge v0, v3, :cond_1b

    aget-object v3, v10, v30

    array-length v3, v3

    move/from16 v0, v31

    if-ge v0, v3, :cond_1b

    .line 3883
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v3, v10, v30

    aget-boolean v3, v3, v31

    if-eqz v3, :cond_1a

    const-string v3, "#"

    :goto_9
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 3881
    :goto_a
    add-int/lit8 v30, v30, 0x1

    goto :goto_8

    .line 3883
    :cond_1a
    const-string v3, "."

    goto :goto_9

    .line 3885
    :cond_1b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "!"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    goto :goto_a

    .line 3888
    :cond_1c
    const-string v3, "HomeLoader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[ "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3879
    add-int/lit8 v31, v31, 0x1

    goto :goto_7

    .line 3892
    .end local v26    # "line":Ljava/lang/String;
    .end local v30    # "x":I
    :cond_1d
    invoke-static/range {v27 .. v28}, Lcom/android/launcher3/util/ScreenGridUtilities;->getOutSideItems(Ljava/util/List;I)Ljava/util/List;

    .line 3893
    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    .line 3894
    .local v29, "removeFromOutSideItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v32

    :cond_1e
    :goto_b
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 3895
    .restart local v25    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    const/4 v3, 0x2

    new-array v12, v3, [I

    .line 3897
    .local v12, "tmpXY":[I
    move-object/from16 v0, v25

    iget v13, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    .line 3898
    .local v13, "correctedX":I
    move-object/from16 v0, v25

    iget v14, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    .line 3899
    .local v14, "correctedY":I
    move-object/from16 v0, v25

    iget v3, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    if-lez v3, :cond_21

    move-object/from16 v0, v25

    iget v15, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    .line 3900
    .restart local v15    # "spanX":I
    :goto_c
    move-object/from16 v0, v25

    iget v3, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    if-lez v3, :cond_22

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    move/from16 v16, v0

    .line 3902
    .restart local v16    # "spanY":I
    :goto_d
    add-int/lit8 v3, v4, -0x1

    if-le v13, v3, :cond_1f

    .line 3903
    const/4 v3, 0x0

    aget v3, v22, v3

    sub-int/2addr v13, v3

    .line 3906
    :cond_1f
    add-int/lit8 v3, v5, -0x1

    if-le v14, v3, :cond_20

    .line 3907
    const/4 v3, 0x1

    aget v3, v22, v3

    sub-int/2addr v14, v3

    .line 3910
    :cond_20
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher3/home/HomeLoader;->mItemPositionHelper:Lcom/android/launcher3/home/HomeItemPositionHelper;

    move/from16 v17, v4

    move/from16 v18, v5

    move-object/from16 v19, v10

    invoke-virtual/range {v11 .. v19}, Lcom/android/launcher3/home/HomeItemPositionHelper;->findNearVacantCell([IIIIIII[[Z)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 3912
    const-string v3, "HomeLoader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "outside item - find new cell "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x0

    aget v7, v12, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x1

    aget v7, v12, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v25 .. v25}, Lcom/android/launcher3/common/base/item/ItemInfo;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3913
    const/4 v3, 0x0

    aget v3, v12, v3

    move-object/from16 v0, v25

    iput v3, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    .line 3914
    const/4 v3, 0x1

    aget v3, v12, v3

    move-object/from16 v0, v25

    iput v3, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    .line 3915
    move-object/from16 v0, v25

    iget v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    move-object/from16 v0, v25

    iget v7, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    move-object/from16 v3, p0

    move v8, v15

    move/from16 v9, v16

    invoke-direct/range {v3 .. v10}, Lcom/android/launcher3/home/HomeLoader;->fillOccupied(IIIIII[[Z)V

    .line 3916
    move-object/from16 v0, v29

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_b

    .line 3899
    .end local v15    # "spanX":I
    .end local v16    # "spanY":I
    :cond_21
    const/4 v15, 0x1

    goto/16 :goto_c

    .line 3900
    .restart local v15    # "spanX":I
    :cond_22
    const/16 v16, 0x1

    goto/16 :goto_d

    .line 3920
    .end local v12    # "tmpXY":[I
    .end local v13    # "correctedX":I
    .end local v14    # "correctedY":I
    .end local v15    # "spanX":I
    .end local v25    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_23
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_24

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 3921
    .restart local v25    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_e

    .line 3924
    .end local v25    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_24
    return-object v27
.end method

.method private reArrangeHotseatData(Ljava/util/ArrayList;I)V
    .locals 12
    .param p2, "startPosition"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 3102
    .local p1, "homeItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3104
    .local v2, "hotseatItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 3105
    .local v3, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-wide v8, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v10, -0x65

    cmp-long v7, v8, v10

    if-nez v7, :cond_0

    .line 3106
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3110
    .end local v3    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_6

    .line 3111
    sget-object v6, Lcom/android/launcher3/home/HomeLoader;->HOTSEAT_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v2, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3112
    move v4, p2

    .line 3113
    .local v4, "itemPosition":I
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 3114
    .restart local v3    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 3115
    .local v5, "values":Landroid/content/ContentValues;
    iget-wide v8, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    int-to-long v10, v4

    cmp-long v7, v8, v10

    if-eqz v7, :cond_2

    .line 3116
    int-to-long v8, v4

    iput-wide v8, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    .line 3117
    const-string v7, "screen"

    iget-wide v8, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3120
    :cond_2
    iget-wide v8, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    long-to-int v7, v8

    invoke-direct {p0, v7}, Lcom/android/launcher3/home/HomeLoader;->getCellXFromHotseatOrder(I)I

    move-result v0

    .line 3121
    .local v0, "calculatedCellX":I
    iget-wide v8, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    long-to-int v7, v8

    invoke-direct {p0, v7}, Lcom/android/launcher3/home/HomeLoader;->getCellYFromHotseatOrder(I)I

    move-result v1

    .line 3122
    .local v1, "calculatedCellY":I
    iget v7, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    if-ne v7, v0, :cond_3

    iget v7, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    if-eq v7, v1, :cond_4

    .line 3123
    :cond_3
    iput v0, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    .line 3124
    iput v1, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    .line 3126
    const-string v7, "cellX"

    iget v8, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3127
    const-string v7, "cellY"

    iget v8, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3130
    :cond_4
    invoke-virtual {v5}, Landroid/content/ContentValues;->size()I

    move-result v7

    if-lez v7, :cond_5

    .line 3131
    iget-object v7, p0, Lcom/android/launcher3/home/HomeLoader;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    invoke-virtual {v7, v5, v3}, Lcom/android/launcher3/common/model/FavoritesUpdater;->updateItem(Landroid/content/ContentValues;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 3133
    :cond_5
    add-int/lit8 v4, v4, 0x1

    .line 3134
    goto :goto_1

    .line 3136
    .end local v0    # "calculatedCellX":I
    .end local v1    # "calculatedCellY":I
    .end local v3    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v4    # "itemPosition":I
    .end local v5    # "values":Landroid/content/ContentValues;
    :cond_6
    return-void
.end method

.method private removeHotseatItemByItemInfo(Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 4
    .param p1, "info"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 4621
    if-nez p1, :cond_0

    .line 4622
    const-string v2, "HomeLoader"

    const-string v3, "removeHotseatItemByItemInfo info is null!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4656
    :goto_0
    return-void

    .line 4625
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/home/HomeLoader;->getCallback()Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    move-result-object v0

    .line 4626
    .local v0, "callbacks":Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;
    new-instance v1, Lcom/android/launcher3/home/HomeLoader$47;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/launcher3/home/HomeLoader$47;-><init>(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/common/base/item/ItemInfo;Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;)V

    .line 4655
    .local v1, "r":Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/launcher3/home/HomeLoader;->runOnWorkerThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private restoreStkPositionIfNecessary(Ljava/util/ArrayList;)V
    .locals 28
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
    .line 4182
    .local p1, "addList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    .line 4183
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4255
    :cond_0
    return-void

    .line 4187
    :cond_1
    const/16 v21, 0x0

    .line 4188
    .local v21, "prefs":Landroid/content/SharedPreferences;
    sget-object v25, Lcom/android/launcher3/home/HomeLoader;->STK_PKG_LIST:[Ljava/lang/String;

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v26, v0

    const/4 v2, 0x0

    move/from16 v24, v2

    :goto_0
    move/from16 v0, v24

    move/from16 v1, v26

    if-ge v0, v1, :cond_0

    aget-object v23, v25, v24

    .line 4189
    .local v23, "stkPkg":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v27

    :cond_2
    :goto_1
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 4190
    .local v18, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    if-eqz v18, :cond_2

    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v2, :cond_2

    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    .line 4191
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4193
    const-wide/16 v12, -0x64

    move-object/from16 v0, v18

    iput-wide v12, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    .line 4194
    .local v12, "container":J
    const-wide/16 v4, -0x1

    move-object/from16 v0, v18

    iput-wide v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    .line 4195
    .local v4, "screen":J
    const/4 v9, -0x1

    move-object/from16 v0, v18

    iput v9, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    .line 4196
    .local v9, "cellX":I
    const/4 v10, -0x1

    move-object/from16 v0, v18

    iput v10, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    .line 4198
    .local v10, "cellY":I
    if-nez v21, :cond_3

    .line 4199
    sget-object v2, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    .line 4200
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    .line 4199
    invoke-virtual {v2, v3, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v21

    .line 4202
    :cond_3
    const/4 v2, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 4203
    .local v22, "savedInfo":Ljava/lang/String;
    if-eqz v22, :cond_2

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 4206
    invoke-interface/range {v21 .. v21}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-interface {v2, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 4208
    const-string v2, ";"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 4209
    .local v15, "data":[Ljava/lang/String;
    array-length v2, v15

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 4210
    const/4 v2, 0x0

    aget-object v2, v15, v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    .line 4211
    const/4 v2, 0x1

    aget-object v2, v15, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v4, v2

    .line 4212
    const/4 v2, 0x2

    aget-object v2, v15, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 4213
    const/4 v2, 0x3

    aget-object v2, v15, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 4218
    const-wide/16 v2, 0x0

    cmp-long v2, v12, v2

    if-lez v2, :cond_7

    .line 4219
    sget-object v3, Lcom/android/launcher3/home/HomeLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v3

    .line 4220
    const/16 v17, 0x0

    .line 4221
    .local v17, "folder":Lcom/android/launcher3/folder/FolderInfo;
    :try_start_0
    sget-object v2, Lcom/android/launcher3/home/HomeLoader;->sBgFolders:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v2}, Lcom/android/launcher3/util/LongArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/launcher3/folder/FolderInfo;

    .line 4222
    .local v16, "fInfo":Lcom/android/launcher3/folder/FolderInfo;
    move-object/from16 v0, v16

    iget-wide v6, v0, Lcom/android/launcher3/folder/FolderInfo;->id:J

    cmp-long v6, v6, v12

    if-nez v6, :cond_4

    .line 4223
    move-object/from16 v17, v16

    goto :goto_2

    .line 4226
    .end local v16    # "fInfo":Lcom/android/launcher3/folder/FolderInfo;
    :cond_5
    if-eqz v17, :cond_6

    .line 4227
    move-object/from16 v0, v18

    iput-wide v12, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    .line 4228
    move-object/from16 v0, v18

    iput-wide v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    .line 4229
    move-object/from16 v0, v18

    iput v9, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    .line 4230
    move-object/from16 v0, v18

    iput v10, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    .line 4232
    :cond_6
    monitor-exit v3

    goto/16 :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 4233
    .end local v17    # "folder":Lcom/android/launcher3/folder/FolderInfo;
    :cond_7
    const-wide/16 v2, -0x65

    cmp-long v2, v12, v2

    if-nez v2, :cond_8

    .line 4234
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v2

    .line 4235
    invoke-virtual {v2}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->getMaxHotseatCount()I

    move-result v20

    .line 4236
    .local v20, "maxHotseatCount":I
    move/from16 v0, v20

    int-to-long v2, v0

    cmp-long v2, v4, v2

    if-gez v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeLoader;->mBgHotseatItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v20

    if-eq v2, v0, :cond_2

    .line 4237
    move-object/from16 v0, v18

    iput-wide v12, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    .line 4238
    move-object/from16 v0, v18

    iput-wide v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    .line 4239
    move-object/from16 v0, v18

    iput v9, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    .line 4240
    move-object/from16 v0, v18

    iput v10, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    goto/16 :goto_1

    .line 4242
    .end local v20    # "maxHotseatCount":I
    :cond_8
    const-wide/16 v2, -0x64

    cmp-long v2, v12, v2

    if-nez v2, :cond_2

    .line 4243
    sget-object v2, Lcom/android/launcher3/home/HomeLoader;->sProfile:Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    iget-object v2, v2, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountX()I

    move-result v11

    .line 4244
    .local v11, "countX":I
    sget-object v2, Lcom/android/launcher3/home/HomeLoader;->sProfile:Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    iget-object v2, v2, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountY()I

    move-result v14

    .line 4245
    .local v14, "countY":I
    if-ltz v9, :cond_9

    if-ltz v10, :cond_9

    if-ge v9, v11, :cond_9

    if-lt v10, v14, :cond_a

    :cond_9
    const/16 v19, 0x1

    .line 4246
    .local v19, "isOutSide":Z
    :goto_3
    if-nez v19, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeLoader;->mItemPositionHelper:Lcom/android/launcher3/home/HomeItemPositionHelper;

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v6, 0x0

    aput v9, v3, v6

    const/4 v6, 0x1

    aput v10, v3, v6

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-virtual/range {v2 .. v8}, Lcom/android/launcher3/home/HomeItemPositionHelper;->findEmptyCell([IJIIZ)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4247
    move-object/from16 v0, v18

    iput-wide v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    .line 4248
    move-object/from16 v0, v18

    iput v9, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    .line 4249
    move-object/from16 v0, v18

    iput v10, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    goto/16 :goto_1

    .line 4245
    .end local v19    # "isOutSide":Z
    :cond_a
    const/16 v19, 0x0

    goto :goto_3

    .line 4188
    .end local v4    # "screen":J
    .end local v9    # "cellX":I
    .end local v10    # "cellY":I
    .end local v11    # "countX":I
    .end local v12    # "container":J
    .end local v14    # "countY":I
    .end local v15    # "data":[Ljava/lang/String;
    .end local v18    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v22    # "savedInfo":Ljava/lang/String;
    :cond_b
    add-int/lit8 v2, v24, 0x1

    move/from16 v24, v2

    goto/16 :goto_0
.end method

.method private runAllBindCompleteRunnables()V
    .locals 4

    .prologue
    .line 3038
    const-string v1, "HomeLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "runAllBindCompleteRunnables, count : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/launcher3/home/HomeLoader;->sBindCompleteRunnables:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3039
    sget-object v1, Lcom/android/launcher3/home/HomeLoader;->sBindCompleteRunnables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3040
    sget-object v2, Lcom/android/launcher3/home/HomeLoader;->sBindCompleteRunnables:Ljava/util/ArrayList;

    monitor-enter v2

    .line 3041
    :try_start_0
    sget-object v1, Lcom/android/launcher3/home/HomeLoader;->sBindCompleteRunnables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 3042
    .local v0, "r":Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/android/launcher3/home/HomeLoader;->runOnWorkerThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 3045
    .end local v0    # "r":Ljava/lang/Runnable;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 3044
    :cond_0
    :try_start_1
    sget-object v1, Lcom/android/launcher3/home/HomeLoader;->sBindCompleteRunnables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 3045
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3047
    :cond_1
    return-void
.end method

.method private saveCustomerPageKey()V
    .locals 14

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v13, 0x0

    .line 3369
    new-instance v7, Landroid/content/ComponentName;

    .line 3370
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->getCustomerDialerPackageName()Ljava/lang/String;

    move-result-object v0

    .line 3371
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->getCustomerDialerClassName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3372
    .local v7, "customerDialerCN":Landroid/content/ComponentName;
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "android.intent.category.LAUNCHER"

    .line 3373
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 3374
    invoke-virtual {v0, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10200000

    .line 3375
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v8

    .line 3377
    .local v8, "customerDialerIntent":Landroid/content/Intent;
    const-string v3, "container=? AND intent=?"

    .line 3378
    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/16 v0, -0x64

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v13

    .line 3379
    invoke-virtual {v8, v13}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    .line 3381
    .local v4, "selectionArg":[Ljava/lang/String;
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/launcher3/common/model/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v2, [Ljava/lang/String;

    const-string v12, "screen"

    aput-object v12, v2, v13

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3384
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 3386
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3387
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 3388
    .local v10, "screenId":J
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    .line 3389
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 3388
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 3390
    .local v9, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "customerPagePref"

    invoke-interface {v0, v1, v10, v11}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3391
    const-string v0, "HomeLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "save customer page key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3396
    .end local v9    # "prefs":Landroid/content/SharedPreferences;
    .end local v10    # "screenId":J
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3401
    :goto_1
    return-void

    .line 3393
    :cond_0
    :try_start_1
    const-string v0, "HomeLoader"

    const-string v1, "customer dialer is not exist in the workspace"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3396
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 3399
    :cond_1
    const-string v0, "HomeLoader"

    const-string v1, "customer dialer is not exist in the workspace"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private shortcutExists(Landroid/content/Intent;Lcom/android/launcher3/common/compat/UserHandleCompat;)Z
    .locals 11
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;

    .prologue
    const/4 v8, 0x0

    .line 4329
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 4332
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 4333
    .local v5, "packageName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 4334
    invoke-virtual {p1, v8}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    .line 4335
    .local v1, "intentWithPkg":Ljava/lang/String;
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v2

    .line 4345
    .end local v5    # "packageName":Ljava/lang/String;
    .local v2, "intentWithoutPkg":Ljava/lang/String;
    :goto_0
    invoke-direct {p0}, Lcom/android/launcher3/home/HomeLoader;->getAllItemInHome()Ljava/util/ArrayList;

    move-result-object v4

    .line 4347
    .local v4, "itemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 4348
    .local v3, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    instance-of v10, v3, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v10, :cond_0

    move-object v0, v3

    .line 4349
    check-cast v0, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 4350
    .local v0, "info":Lcom/android/launcher3/common/base/item/IconInfo;
    iget-object v10, v0, Lcom/android/launcher3/common/base/item/IconInfo;->promisedIntent:Landroid/content/Intent;

    if-nez v10, :cond_5

    iget-object v7, v0, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    .line 4352
    .local v7, "targetIntent":Landroid/content/Intent;
    :goto_1
    if-eqz v7, :cond_0

    if-eqz p2, :cond_0

    iget-object v10, v0, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {p2, v10}, Lcom/android/launcher3/common/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 4353
    invoke-virtual {v7, v8}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v6

    .line 4354
    .local v6, "strIntent":Ljava/lang/String;
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 4355
    :cond_1
    const-string v8, "HomeLoader"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "shortcutExists : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/item/IconInfo;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4356
    const/4 v8, 0x1

    .line 4361
    .end local v0    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v3    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v6    # "strIntent":Ljava/lang/String;
    .end local v7    # "targetIntent":Landroid/content/Intent;
    :cond_2
    return v8

    .line 4337
    .end local v1    # "intentWithPkg":Ljava/lang/String;
    .end local v2    # "intentWithoutPkg":Ljava/lang/String;
    .end local v4    # "itemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .restart local v5    # "packageName":Ljava/lang/String;
    :cond_3
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v9, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    .line 4338
    .restart local v1    # "intentWithPkg":Ljava/lang/String;
    invoke-virtual {p1, v8}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "intentWithoutPkg":Ljava/lang/String;
    goto :goto_0

    .line 4341
    .end local v1    # "intentWithPkg":Ljava/lang/String;
    .end local v2    # "intentWithoutPkg":Ljava/lang/String;
    .end local v5    # "packageName":Ljava/lang/String;
    :cond_4
    invoke-virtual {p1, v8}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    .line 4342
    .restart local v1    # "intentWithPkg":Ljava/lang/String;
    invoke-virtual {p1, v8}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "intentWithoutPkg":Ljava/lang/String;
    goto :goto_0

    .line 4350
    .restart local v0    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    .restart local v3    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    .restart local v4    # "itemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    :cond_5
    iget-object v7, v0, Lcom/android/launcher3/common/base/item/IconInfo;->promisedIntent:Landroid/content/Intent;

    goto :goto_1
.end method

.method private tryGetCallbacks(Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;
    .locals 5
    .param p1, "oldCallbacks"    # Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;
    .param p2, "task"    # Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;

    .prologue
    const/4 v1, 0x0

    .line 1755
    iget-object v2, p0, Lcom/android/launcher3/home/HomeLoader;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1756
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/launcher3/home/HomeLoader;->isStopped(Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1757
    monitor-exit v2

    move-object v0, v1

    .line 1772
    :goto_0
    return-object v0

    .line 1760
    :cond_0
    iget-object v3, p0, Lcom/android/launcher3/home/HomeLoader;->mCallbacks:Ljava/lang/ref/WeakReference;

    if-nez v3, :cond_1

    .line 1761
    monitor-exit v2

    move-object v0, v1

    goto :goto_0

    .line 1764
    :cond_1
    iget-object v3, p0, Lcom/android/launcher3/home/HomeLoader;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    .line 1765
    .local v0, "callbacks":Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;
    if-eq v0, p1, :cond_2

    .line 1766
    monitor-exit v2

    move-object v0, v1

    goto :goto_0

    .line 1768
    :cond_2
    if-nez v0, :cond_3

    .line 1769
    const-string v3, "HomeLoader"

    const-string v4, "no mCallbacks"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1770
    monitor-exit v2

    move-object v0, v1

    goto :goto_0

    .line 1772
    :cond_3
    monitor-exit v2

    goto :goto_0

    .line 1773
    .end local v0    # "callbacks":Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private updateAndBindItems(Ljava/util/ArrayList;Z)V
    .locals 22
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
    .line 2613
    .local p1, "updateItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2615
    .local v6, "addedWorkspaceScreensFinal":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    sget-object v4, Lcom/android/launcher3/home/HomeLoader;->sFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    invoke-virtual {v4}, Lcom/android/launcher3/common/model/FavoritesProvider;->loadScreensFromDb()Ljava/util/ArrayList;

    move-result-object v5

    .line 2616
    .local v5, "workspaceScreens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 2618
    .local v14, "contentValuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 2619
    .local v18, "itemInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    const-wide/16 v8, -0x64

    move-object/from16 v0, v18

    iput-wide v8, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    .line 2620
    const-wide/16 v8, -0x1

    move-object/from16 v0, v18

    iput-wide v8, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    .line 2622
    move-object/from16 v0, v18

    iget v7, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    move-object/from16 v0, v18

    iget v8, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    const/4 v9, 0x0

    const-wide/16 v10, -0x1

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v11}, Lcom/android/launcher3/home/HomeLoader;->findSpaceForItem(Ljava/util/ArrayList;Ljava/util/ArrayList;IIZJ)Landroid/util/Pair;

    move-result-object v16

    .line 2624
    .local v16, "coords":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;[I>;"
    move-object/from16 v0, v16

    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    .line 2625
    .local v20, "screenId":J
    move-object/from16 v0, v16

    iget-object v15, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v15, [I

    .line 2627
    .local v15, "coordinates":[I
    move-wide/from16 v0, v20

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    .line 2628
    const/4 v4, 0x0

    aget v4, v15, v4

    move-object/from16 v0, v18

    iput v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    .line 2629
    const/4 v4, 0x1

    aget v4, v15, v4

    move-object/from16 v0, v18

    iput v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    .line 2630
    if-eqz p2, :cond_0

    const/16 v17, 0x4

    .line 2631
    .local v17, "hiddenFlag":I
    :goto_1
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/base/item/ItemInfo;->setUnHidden(I)I

    move-result v4

    move-object/from16 v0, v18

    iput v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->hidden:I

    .line 2633
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 2634
    .local v13, "contentValues":Landroid/content/ContentValues;
    const-string v4, "container"

    move-object/from16 v0, v18

    iget-wide v8, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v13, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2635
    const-string v4, "cellX"

    move-object/from16 v0, v18

    iget v7, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v13, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2636
    const-string v4, "cellY"

    move-object/from16 v0, v18

    iget v7, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v13, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2637
    const-string v4, "screen"

    move-object/from16 v0, v18

    iget-wide v8, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v13, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2638
    const-string v4, "hidden"

    move-object/from16 v0, v18

    iget v7, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->hidden:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v13, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2639
    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2630
    .end local v13    # "contentValues":Landroid/content/ContentValues;
    .end local v17    # "hiddenFlag":I
    :cond_0
    const/16 v17, 0x2

    goto :goto_1

    .line 2642
    .end local v15    # "coordinates":[I
    .end local v16    # "coords":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;[I>;"
    .end local v18    # "itemInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v20    # "screenId":J
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/HomeLoader;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    sget-object v7, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-virtual {v4, v7, v14, v0}, Lcom/android/launcher3/common/model/FavoritesUpdater;->updateItemsInDatabaseHelper(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 2644
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/HomeLoader;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    sget-object v7, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    invoke-virtual {v4, v7, v5}, Lcom/android/launcher3/common/model/FavoritesUpdater;->updateScreenOrder(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 2646
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/home/HomeLoader;->getCallback()Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    move-result-object v12

    .line 2647
    .local v12, "callbacks":Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;
    sget-object v4, Lcom/android/launcher3/home/HomeLoader;->sHandler:Lcom/android/launcher3/common/model/DeferredHandler;

    new-instance v7, Lcom/android/launcher3/home/HomeLoader$23;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v7, v0, v12, v6, v1}, Lcom/android/launcher3/home/HomeLoader$23;-><init>(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {v4, v7}, Lcom/android/launcher3/common/model/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 2655
    return-void
.end method

.method private updateHideItems(Ljava/util/ArrayList;Z)V
    .locals 20
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
    .line 2658
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 2659
    .local v9, "contentValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2660
    .local v7, "hideItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2661
    .local v6, "itemsInFolder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2663
    .local v5, "folderInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/folder/FolderInfo;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 2664
    .local v11, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-object v8, v11, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    .line 2665
    .local v8, "componentName":Landroid/content/ComponentName;
    if-nez v8, :cond_1

    move-object v2, v11

    .line 2666
    check-cast v2, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/common/base/item/IconInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v8

    .line 2669
    :cond_1
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportHomeModeChange()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2670
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2671
    if-eqz p2, :cond_2

    const/4 v10, 0x4

    .line 2672
    .local v10, "hiddenFlag":I
    :goto_1
    invoke-virtual {v11, v10}, Lcom/android/launcher3/common/base/item/ItemInfo;->setHidden(I)I

    move-result v2

    iput v2, v11, Lcom/android/launcher3/common/base/item/ItemInfo;->hidden:I

    .line 2673
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 2674
    .local v14, "values":Landroid/content/ContentValues;
    const-string v2, "hidden"

    iget v15, v11, Lcom/android/launcher3/common/base/item/ItemInfo;->hidden:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v2, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2675
    const-string v2, "screen"

    const/4 v15, -0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v2, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2677
    iget-wide v0, v11, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    move-wide/from16 v16, v0

    const-wide/16 v18, -0x64

    cmp-long v2, v16, v18

    if-eqz v2, :cond_3

    iget-wide v0, v11, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    move-wide/from16 v16, v0

    const-wide/16 v18, -0x65

    cmp-long v2, v16, v18

    if-eqz v2, :cond_3

    .line 2679
    sget-object v15, Lcom/android/launcher3/home/HomeLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v15

    .line 2680
    :try_start_0
    sget-object v2, Lcom/android/launcher3/home/HomeLoader;->sBgFolders:Lcom/android/launcher3/util/LongArrayMap;

    iget-wide v0, v11, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2681
    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2682
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2683
    const-wide/16 v16, -0x64

    move-wide/from16 v0, v16

    iput-wide v0, v11, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    .line 2684
    const-string v2, "container"

    iget-wide v0, v11, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v14, v2, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2689
    :goto_2
    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2671
    .end local v10    # "hiddenFlag":I
    .end local v14    # "values":Landroid/content/ContentValues;
    :cond_2
    const/4 v10, 0x2

    goto :goto_1

    .line 2681
    .restart local v10    # "hiddenFlag":I
    .restart local v14    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 2686
    :cond_3
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2687
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/launcher3/home/HomeLoader;->removePagesItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto :goto_2

    .line 2691
    .end local v10    # "hiddenFlag":I
    .end local v14    # "values":Landroid/content/ContentValues;
    :cond_4
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2693
    iget-object v2, v11, Lcom/android/launcher3/common/base/item/ItemInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    const/4 v15, 0x1

    .line 2694
    invoke-static {v8, v2, v15}, Lcom/android/launcher3/home/HomeLoader;->getItemInfoByComponentName(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;Z)Ljava/util/ArrayList;

    move-result-object v13

    .line 2695
    .local v13, "itemsByComponentName":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 2696
    .local v12, "itemByComponentName":Lcom/android/launcher3/common/base/item/ItemInfo;
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/launcher3/home/HomeLoader;->isAllAppItemInApps(Lcom/android/launcher3/common/base/item/ItemInfo;)Z

    move-result v15

    if-nez v15, :cond_5

    .line 2697
    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2698
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher3/home/HomeLoader;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    invoke-virtual {v15, v12}, Lcom/android/launcher3/common/model/FavoritesUpdater;->deleteItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto :goto_3

    .line 2704
    .end local v8    # "componentName":Landroid/content/ComponentName;
    .end local v11    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v12    # "itemByComponentName":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v13    # "itemsByComponentName":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    :cond_6
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportHomeModeChange()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2705
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2706
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeLoader;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    sget-object v3, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-virtual {v2, v3, v9, v0}, Lcom/android/launcher3/common/model/FavoritesUpdater;->updateItemsInDatabaseHelper(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 2709
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/home/HomeLoader;->getCallback()Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    move-result-object v4

    .line 2710
    .local v4, "callbacks":Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;
    sget-object v15, Lcom/android/launcher3/home/HomeLoader;->sHandler:Lcom/android/launcher3/common/model/DeferredHandler;

    new-instance v2, Lcom/android/launcher3/home/HomeLoader$24;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher3/home/HomeLoader$24;-><init>(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {v15, v2}, Lcom/android/launcher3/common/model/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 2719
    return-void
.end method


# virtual methods
.method addAndBindAddedWorkspaceItems(Landroid/content/Context;Ljava/util/ArrayList;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "lastPosition"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<+",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 2032
    .local p2, "workspaceApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<+Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/launcher3/home/HomeLoader;->addAndBindAddedWorkspaceItems(Landroid/content/Context;Ljava/util/ArrayList;ZZ)V

    .line 2033
    return-void
.end method

.method addAndBindAddedWorkspaceItems(Landroid/content/Context;Ljava/util/ArrayList;ZZ)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "lastPosition"    # Z
    .param p4, "allowDuplicateShortcut"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<+",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .line 2041
    .local p2, "workspaceApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<+Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-direct {p0}, Lcom/android/launcher3/home/HomeLoader;->getCallback()Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    move-result-object v5

    .line 2042
    .local v5, "callbacks":Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2140
    :goto_0
    return-void

    .line 2046
    :cond_0
    new-instance v0, Lcom/android/launcher3/home/HomeLoader$16;

    move-object v1, p0

    move-object v2, p2

    move v3, p4

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/home/HomeLoader$16;-><init>(Lcom/android/launcher3/home/HomeLoader;Ljava/util/ArrayList;ZLandroid/content/Context;Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;)V

    .line 2139
    .local v0, "r":Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/android/launcher3/home/HomeLoader;->runOnWorkerThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public addHotseatItemByComponentName(Landroid/content/ComponentName;ILcom/android/launcher3/common/compat/UserHandleCompat;)V
    .locals 1
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "index"    # I
    .param p3, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;

    .prologue
    .line 4660
    new-instance v0, Lcom/android/launcher3/home/HomeLoader$48;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/android/launcher3/home/HomeLoader$48;-><init>(Lcom/android/launcher3/home/HomeLoader;Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;I)V

    .line 4693
    .local v0, "r":Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/android/launcher3/home/HomeLoader;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 4694
    return-void
.end method

.method public addOrMoveItem(IIIIILandroid/content/ComponentName;Z)V
    .locals 9
    .param p1, "screen"    # I
    .param p2, "cellX"    # I
    .param p3, "cellY"    # I
    .param p4, "spanX"    # I
    .param p5, "spanY"    # I
    .param p6, "cn"    # Landroid/content/ComponentName;
    .param p7, "isWidget"    # Z

    .prologue
    .line 4777
    new-instance v0, Lcom/android/launcher3/home/HomeLoader$50;

    move-object v1, p0

    move v2, p1

    move/from16 v3, p7

    move-object v4, p6

    move v5, p4

    move v6, p5

    move v7, p2

    move v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/android/launcher3/home/HomeLoader$50;-><init>(Lcom/android/launcher3/home/HomeLoader;IZLandroid/content/ComponentName;IIII)V

    invoke-static {v0}, Lcom/android/launcher3/home/HomeLoader;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 4910
    return-void
.end method

.method public addOrUpdater([Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/HashMap;Lcom/android/launcher3/common/compat/UserHandleCompat;)V
    .locals 27
    .param p1, "packages"    # [Ljava/lang/String;
    .param p4, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;",
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
    .line 2447
    .local p2, "addedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    .local p3, "addedOrUpdatedApps":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/content/ComponentName;Lcom/android/launcher3/common/base/item/IconInfo;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2448
    .local v5, "updatedIcons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2449
    .local v6, "removedIcons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 2451
    .local v24, "widgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/home/LauncherAppWidgetInfo;>;"
    new-instance v20, Ljava/util/HashSet;

    invoke-static/range {p1 .. p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 2452
    .local v20, "packageSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    sget-object v3, Lcom/android/launcher3/home/HomeLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2453
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/home/HomeLoader;->getAllItemInHome()Ljava/util/ArrayList;

    move-result-object v9

    .line 2454
    .local v9, "allItemInHome":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 2455
    .local v16, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    move-object/from16 v0, v16

    instance-of v7, v0, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v7, :cond_c

    move-object/from16 v0, v16

    iget-object v7, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-object/from16 v0, p4

    invoke-virtual {v0, v7}, Lcom/android/launcher3/common/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 2456
    move-object/from16 v0, v16

    check-cast v0, Lcom/android/launcher3/common/base/item/IconInfo;

    move-object v14, v0

    .line 2457
    .local v14, "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    const/16 v17, 0x0

    .line 2458
    .local v17, "infoUpdated":Z
    const/4 v15, 0x0

    .line 2461
    .local v15, "iconUpdated":Z
    iget-object v7, v14, Lcom/android/launcher3/common/base/item/IconInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    if-eqz v7, :cond_1

    iget-object v7, v14, Lcom/android/launcher3/common/base/item/IconInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v7, v7, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    .line 2462
    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2463
    iget-object v7, v14, Lcom/android/launcher3/common/base/item/IconInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v7, v7, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    iget-object v0, v14, Lcom/android/launcher3/common/base/item/IconInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    move-object/from16 v25, v0

    sget-object v26, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v7, v0, v1}, Lcom/android/launcher3/util/BitmapUtils;->createIconBitmap(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 2466
    .local v13, "icon":Landroid/graphics/Bitmap;
    if-eqz v13, :cond_1

    .line 2467
    invoke-virtual {v14, v13}, Lcom/android/launcher3/common/base/item/IconInfo;->setOriginalIcon(Landroid/graphics/Bitmap;)V

    .line 2468
    sget-object v7, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    iget-object v0, v14, Lcom/android/launcher3/common/base/item/IconInfo;->componentName:Landroid/content/ComponentName;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-static {v7, v13, v0}, Lcom/android/launcher3/util/ShortcutTray;->getIcon(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/content/ComponentName;)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 2469
    const/4 v7, 0x1

    iput-boolean v7, v14, Lcom/android/launcher3/common/base/item/IconInfo;->customIcon:Z

    .line 2471
    invoke-virtual {v14, v13}, Lcom/android/launcher3/common/base/item/IconInfo;->setIcon(Landroid/graphics/Bitmap;)V

    .line 2472
    const/4 v7, 0x0

    iput-boolean v7, v14, Lcom/android/launcher3/common/base/item/IconInfo;->usingFallbackIcon:Z

    .line 2473
    const/16 v17, 0x1

    .line 2477
    .end local v13    # "icon":Landroid/graphics/Bitmap;
    :cond_1
    invoke-virtual {v14}, Lcom/android/launcher3/common/base/item/IconInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v12

    .line 2478
    .local v12, "cn":Landroid/content/ComponentName;
    if-eqz v12, :cond_7

    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 2479
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 2480
    .local v10, "appInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    invoke-virtual {v14}, Lcom/android/launcher3/common/base/item/IconInfo;->isPromise()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 2481
    sget-object v7, Lcom/android/launcher3/home/HomeLoader;->sLauncherApps:Lcom/android/launcher3/common/compat/LauncherAppsCompat;

    .line 2482
    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p4

    invoke-virtual {v7, v0, v1}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Ljava/util/List;

    move-result-object v11

    .line 2483
    .local v11, "apps":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;>;"
    move-object/from16 v0, p4

    invoke-static {v11, v12, v0}, Lcom/android/launcher3/home/HomeLoader;->findActivityInfo(Ljava/util/List;Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;

    move-result-object v8

    .line 2484
    .local v8, "activityInfo":Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    const/16 v7, 0x26

    invoke-virtual {v14, v7}, Lcom/android/launcher3/common/base/item/IconInfo;->hasStatusFlag(I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 2487
    sget-object v7, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v21

    .line 2488
    .local v21, "pm":Landroid/content/pm/PackageManager;
    new-instance v7, Landroid/content/Intent;

    const-string v25, "android.intent.action.MAIN"

    move-object/from16 v0, v25

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2490
    invoke-virtual {v7, v12}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v7

    const-string v25, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    const/high16 v25, 0x10000

    .line 2488
    move-object/from16 v0, v21

    move/from16 v1, v25

    invoke-virtual {v0, v7, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v19

    .line 2492
    .local v19, "matched":Landroid/content/pm/ResolveInfo;
    if-nez v19, :cond_3

    .line 2494
    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v18

    .line 2496
    .local v18, "intent":Landroid/content/Intent;
    if-nez v18, :cond_2

    .line 2497
    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2562
    .end local v8    # "activityInfo":Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    .end local v9    # "allItemInHome":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .end local v10    # "appInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v11    # "apps":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;>;"
    .end local v12    # "cn":Landroid/content/ComponentName;
    .end local v14    # "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v15    # "iconUpdated":Z
    .end local v16    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v17    # "infoUpdated":Z
    .end local v18    # "intent":Landroid/content/Intent;
    .end local v19    # "matched":Landroid/content/pm/ResolveInfo;
    .end local v21    # "pm":Landroid/content/pm/PackageManager;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 2500
    .restart local v8    # "activityInfo":Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    .restart local v9    # "allItemInHome":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .restart local v10    # "appInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    .restart local v11    # "apps":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;>;"
    .restart local v12    # "cn":Landroid/content/ComponentName;
    .restart local v14    # "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    .restart local v15    # "iconUpdated":Z
    .restart local v16    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    .restart local v17    # "infoUpdated":Z
    .restart local v18    # "intent":Landroid/content/Intent;
    .restart local v19    # "matched":Landroid/content/pm/ResolveInfo;
    .restart local v21    # "pm":Landroid/content/pm/PackageManager;
    :cond_2
    :try_start_1
    move-object/from16 v0, v18

    iput-object v0, v14, Lcom/android/launcher3/common/base/item/IconInfo;->promisedIntent:Landroid/content/Intent;

    .line 2504
    .end local v18    # "intent":Landroid/content/Intent;
    .end local v19    # "matched":Landroid/content/pm/ResolveInfo;
    .end local v21    # "pm":Landroid/content/pm/PackageManager;
    :cond_3
    if-eqz v8, :cond_4

    .line 2505
    invoke-static {v8}, Lcom/android/launcher3/common/base/item/IconInfo;->initFlags(Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;)I

    move-result v7

    iput v7, v14, Lcom/android/launcher3/common/base/item/IconInfo;->flags:I

    .line 2508
    :cond_4
    iget-object v7, v14, Lcom/android/launcher3/common/base/item/IconInfo;->promisedIntent:Landroid/content/Intent;

    iput-object v7, v14, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    .line 2509
    const/4 v7, 0x0

    iput-object v7, v14, Lcom/android/launcher3/common/base/item/IconInfo;->promisedIntent:Landroid/content/Intent;

    .line 2510
    const/4 v7, 0x0

    iput v7, v14, Lcom/android/launcher3/common/base/item/IconInfo;->status:I

    .line 2511
    iget v7, v14, Lcom/android/launcher3/common/base/item/IconInfo;->itemType:I

    if-nez v7, :cond_5

    .line 2512
    const/4 v7, 0x0

    iput-boolean v7, v14, Lcom/android/launcher3/common/base/item/IconInfo;->customIcon:Z

    .line 2514
    :cond_5
    const/16 v17, 0x1

    .line 2515
    sget-object v7, Lcom/android/launcher3/home/HomeLoader;->sIconCache:Lcom/android/launcher3/common/model/IconCache;

    invoke-virtual {v14, v7}, Lcom/android/launcher3/common/base/item/IconInfo;->updateIcon(Lcom/android/launcher3/common/model/IconCache;)V

    .line 2523
    .end local v8    # "activityInfo":Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    .end local v11    # "apps":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;>;"
    :cond_6
    :goto_1
    iget v7, v14, Lcom/android/launcher3/common/base/item/IconInfo;->isDisabled:I

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_b

    .line 2525
    iget v7, v14, Lcom/android/launcher3/common/base/item/IconInfo;->isDisabled:I

    and-int/lit8 v7, v7, -0x3

    iput v7, v14, Lcom/android/launcher3/common/base/item/IconInfo;->isDisabled:I

    .line 2526
    const/4 v15, 0x1

    .line 2533
    .end local v10    # "appInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_7
    :goto_2
    if-nez v17, :cond_8

    if-eqz v15, :cond_9

    .line 2534
    :cond_8
    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2537
    :cond_9
    if-eqz v17, :cond_0

    .line 2538
    new-instance v22, Landroid/content/ContentValues;

    invoke-direct/range {v22 .. v22}, Landroid/content/ContentValues;-><init>()V

    .line 2539
    .local v22, "values":Landroid/content/ContentValues;
    sget-object v7, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    move-object/from16 v0, v22

    invoke-virtual {v14, v7, v0}, Lcom/android/launcher3/common/base/item/IconInfo;->onAddToDatabase(Landroid/content/Context;Landroid/content/ContentValues;)V

    .line 2540
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/home/HomeLoader;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    move-object/from16 v0, v22

    invoke-virtual {v7, v0, v14}, Lcom/android/launcher3/common/model/FavoritesUpdater;->updateItem(Landroid/content/ContentValues;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto/16 :goto_0

    .line 2516
    .end local v22    # "values":Landroid/content/ContentValues;
    .restart local v10    # "appInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_a
    if-eqz v10, :cond_6

    const-string v7, "android.intent.action.MAIN"

    iget-object v0, v14, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    iget v7, v14, Lcom/android/launcher3/common/base/item/IconInfo;->itemType:I

    if-nez v7, :cond_6

    .line 2518
    sget-object v7, Lcom/android/launcher3/home/HomeLoader;->sIconCache:Lcom/android/launcher3/common/model/IconCache;

    invoke-virtual {v14, v7}, Lcom/android/launcher3/common/base/item/IconInfo;->updateIcon(Lcom/android/launcher3/common/model/IconCache;)V

    .line 2519
    iget-object v7, v10, Lcom/android/launcher3/common/base/item/IconInfo;->contentDescription:Ljava/lang/CharSequence;

    iput-object v7, v14, Lcom/android/launcher3/common/base/item/IconInfo;->contentDescription:Ljava/lang/CharSequence;

    .line 2520
    const/16 v17, 0x1

    goto :goto_1

    .line 2527
    :cond_b
    iget v7, v14, Lcom/android/launcher3/common/base/item/IconInfo;->isDisabled:I

    and-int/lit8 v7, v7, 0x20

    if-eqz v7, :cond_7

    .line 2528
    iget v7, v14, Lcom/android/launcher3/common/base/item/IconInfo;->isDisabled:I

    and-int/lit8 v7, v7, -0x21

    iput v7, v14, Lcom/android/launcher3/common/base/item/IconInfo;->isDisabled:I

    .line 2529
    const/4 v15, 0x1

    goto :goto_2

    .line 2542
    .end local v10    # "appInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v12    # "cn":Landroid/content/ComponentName;
    .end local v14    # "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v15    # "iconUpdated":Z
    .end local v17    # "infoUpdated":Z
    :cond_c
    move-object/from16 v0, v16

    instance-of v7, v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    if-eqz v7, :cond_0

    .line 2543
    move-object/from16 v0, v16

    check-cast v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    move-object/from16 v23, v0

    .line 2544
    .local v23, "widgetInfo":Lcom/android/launcher3/home/LauncherAppWidgetInfo;
    move-object/from16 v0, v23

    iget-object v7, v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-object/from16 v0, p4

    invoke-virtual {v0, v7}, Lcom/android/launcher3/common/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x2

    .line 2545
    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v7

    if-eqz v7, :cond_0

    move-object/from16 v0, v23

    iget-object v7, v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    .line 2546
    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2547
    move-object/from16 v0, v23

    iget v7, v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->restoreStatus:I

    and-int/lit8 v7, v7, -0xb

    move-object/from16 v0, v23

    iput v7, v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->restoreStatus:I

    .line 2553
    move-object/from16 v0, v23

    iget v7, v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->restoreStatus:I

    or-int/lit8 v7, v7, 0x4

    move-object/from16 v0, v23

    iput v7, v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->restoreStatus:I

    .line 2555
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2556
    new-instance v22, Landroid/content/ContentValues;

    invoke-direct/range {v22 .. v22}, Landroid/content/ContentValues;-><init>()V

    .line 2557
    .restart local v22    # "values":Landroid/content/ContentValues;
    sget-object v7, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v7, v1}, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->onAddToDatabase(Landroid/content/Context;Landroid/content/ContentValues;)V

    .line 2558
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/home/HomeLoader;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v7, v0, v1}, Lcom/android/launcher3/common/model/FavoritesUpdater;->updateItem(Landroid/content/ContentValues;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto/16 :goto_0

    .line 2562
    .end local v16    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v22    # "values":Landroid/content/ContentValues;
    .end local v23    # "widgetInfo":Lcom/android/launcher3/home/LauncherAppWidgetInfo;
    :cond_d
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2564
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/home/HomeLoader;->getCallback()Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    move-result-object v4

    .line 2565
    .local v4, "callbacks":Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;
    if-nez v4, :cond_f

    .line 2566
    const-string v2, "HomeLoader"

    const-string v3, "addOrUpdater. Nobody to tell about the new app.  Launcher is probably loading."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2602
    :cond_e
    :goto_3
    return-void

    .line 2571
    :cond_f
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportHomeModeChange()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 2572
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_10

    if-eqz p2, :cond_10

    .line 2573
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_10

    .line 2574
    new-instance v2, Ljava/util/ArrayList;

    move-object/from16 v0, p2

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/launcher3/home/HomeLoader;->restoreStkPositionIfNecessary(Ljava/util/ArrayList;)V

    .line 2575
    sget-object v2, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/launcher3/home/HomeLoader;->addAndBindAddedWorkspaceItems(Landroid/content/Context;Ljava/util/ArrayList;Z)V

    .line 2578
    :cond_10
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_12

    .line 2579
    :cond_11
    sget-object v25, Lcom/android/launcher3/home/HomeLoader;->sHandler:Lcom/android/launcher3/common/model/DeferredHandler;

    new-instance v2, Lcom/android/launcher3/home/HomeLoader$21;

    move-object/from16 v3, p0

    move-object/from16 v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher3/home/HomeLoader$21;-><init>(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Lcom/android/launcher3/common/model/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 2587
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_12

    .line 2588
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeLoader;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    invoke-virtual {v2, v6}, Lcom/android/launcher3/common/model/FavoritesUpdater;->deleteItemsFromDatabase(Ljava/util/ArrayList;)V

    .line 2592
    :cond_12
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_e

    .line 2593
    sget-object v2, Lcom/android/launcher3/home/HomeLoader;->sHandler:Lcom/android/launcher3/common/model/DeferredHandler;

    new-instance v3, Lcom/android/launcher3/home/HomeLoader$22;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v3, v0, v4, v1}, Lcom/android/launcher3/home/HomeLoader$22;-><init>(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v3}, Lcom/android/launcher3/common/model/DeferredHandler;->post(Ljava/lang/Runnable;)V

    goto :goto_3
.end method

.method public addPagesItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 6
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 3159
    iget-wide v0, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget v0, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->hidden:I

    if-eqz v0, :cond_1

    .line 3175
    :cond_0
    :goto_0
    return-void

    .line 3161
    :cond_1
    sget-object v1, Lcom/android/launcher3/home/HomeLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3162
    :try_start_0
    iget-wide v2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v4, -0x65

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    .line 3163
    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mBgHotseatItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3164
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/util/logging/SALogging;->updateLogValuesForHomeItems()V

    .line 3174
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 3165
    :cond_2
    :try_start_1
    iget-wide v2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v4, -0x64

    cmp-long v0, v2, v4

    if-nez v0, :cond_4

    .line 3166
    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mBgPagesItems:Ljava/util/HashMap;

    iget-wide v2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    .line 3167
    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mBgPagesItems:Ljava/util/HashMap;

    iget-wide v2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3169
    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mBgPagesItems:Ljava/util/HashMap;

    iget-wide v2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3170
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/util/logging/SALogging;->updateLogValuesForHomeItems()V

    goto :goto_1

    .line 3172
    :cond_4
    const-string v0, "HomeLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addPagesItem : input item container error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method bindItemAfterChangePosition(Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 1
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 2008
    new-instance v0, Lcom/android/launcher3/home/HomeLoader$15;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/home/HomeLoader$15;-><init>(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 2026
    .local v0, "r":Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/android/launcher3/home/HomeLoader;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 2027
    return-void
.end method

.method bindItems(Ljava/util/ArrayList;)V
    .locals 12
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
    .line 2143
    .local p1, "addedItemsFinal":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-direct {p0}, Lcom/android/launcher3/home/HomeLoader;->getCallback()Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    move-result-object v2

    .line 2145
    .local v2, "callbacks":Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_8

    .line 2146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2147
    .local v0, "addAnimated":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2149
    .local v1, "addNotAnimated":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    const/4 v3, 0x0

    .line 2150
    .local v3, "currentScreenIndex":I
    if-eqz v2, :cond_0

    .line 2151
    invoke-interface {v2}, Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;->getCurrentWorkspaceScreen()I

    move-result v3

    .line 2153
    :cond_0
    iget-object v8, p0, Lcom/android/launcher3/home/HomeLoader;->mBgOrderedScreens:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lt v3, v8, :cond_1

    .line 2154
    iget-object v8, p0, Lcom/android/launcher3/home/HomeLoader;->mBgOrderedScreens:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v3, v8, -0x1

    .line 2156
    :cond_1
    if-gez v3, :cond_2

    .line 2157
    const-string v8, "HomeLoader"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "bindItems currentScreenIndex : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mBgOrderedScreens.size : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/launcher3/home/HomeLoader;->mBgOrderedScreens:Ljava/util/ArrayList;

    .line 2158
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2157
    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2159
    const/4 v3, 0x0

    .line 2161
    :cond_2
    iget-object v8, p0, Lcom/android/launcher3/home/HomeLoader;->mBgOrderedScreens:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 2162
    .local v4, "currentScreenId":J
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 2163
    .local v6, "i":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-wide v10, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    cmp-long v9, v10, v4

    if-nez v9, :cond_3

    instance-of v9, v6, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    if-nez v9, :cond_3

    .line 2164
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2166
    :cond_3
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2170
    .end local v6    # "i":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 2171
    .local v7, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    instance-of v8, v7, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v8, :cond_5

    move-object v8, v7

    .line 2172
    check-cast v8, Lcom/android/launcher3/common/base/item/IconInfo;

    sget-object v10, Lcom/android/launcher3/home/HomeLoader;->sIconCache:Lcom/android/launcher3/common/model/IconCache;

    invoke-virtual {v8, v10}, Lcom/android/launcher3/common/base/item/IconInfo;->getIcon(Lcom/android/launcher3/common/model/IconCache;)Landroid/graphics/Bitmap;

    .line 2174
    :cond_5
    new-instance v8, Lcom/android/launcher3/home/HomeLoader$17;

    invoke-direct {v8, p0, v2, v7}, Lcom/android/launcher3/home/HomeLoader$17;-><init>(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    invoke-virtual {p0, v8}, Lcom/android/launcher3/home/HomeLoader;->runOnMainThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 2193
    .end local v7    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_6
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 2194
    .restart local v7    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    instance-of v8, v7, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v8, :cond_7

    move-object v8, v7

    .line 2195
    check-cast v8, Lcom/android/launcher3/common/base/item/IconInfo;

    sget-object v10, Lcom/android/launcher3/home/HomeLoader;->sIconCache:Lcom/android/launcher3/common/model/IconCache;

    invoke-virtual {v8, v10}, Lcom/android/launcher3/common/base/item/IconInfo;->getIcon(Lcom/android/launcher3/common/model/IconCache;)Landroid/graphics/Bitmap;

    .line 2197
    :cond_7
    new-instance v8, Lcom/android/launcher3/home/HomeLoader$18;

    invoke-direct {v8, p0, v2, v7}, Lcom/android/launcher3/home/HomeLoader$18;-><init>(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    invoke-virtual {p0, v8}, Lcom/android/launcher3/home/HomeLoader;->runOnMainThread(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 2220
    .end local v0    # "addAnimated":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .end local v1    # "addNotAnimated":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .end local v3    # "currentScreenIndex":I
    .end local v4    # "currentScreenId":J
    .end local v7    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_8
    return-void
.end method

.method public bindItemsSync(ILcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V
    .locals 26
    .param p1, "synchronousBindPage"    # I
    .param p2, "task"    # Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;

    .prologue
    .line 2784
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/home/HomeLoader;->getCallback()Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    move-result-object v12

    .line 2785
    .local v12, "oldCallbacks":Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;
    if-nez v12, :cond_0

    .line 2787
    const-string v17, "HomeLoader"

    const-string v20, "bindItemsSync running with no launcher"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2888
    :goto_0
    return-void

    .line 2791
    :cond_0
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFestivalPage()Z

    move-result v17

    if-eqz v17, :cond_1

    .line 2792
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/launcher3/home/HomeLoader;->initFestivalPageIfNecessary(Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V

    .line 2795
    :cond_1
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 2796
    .local v13, "orderedScreenIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    sget-object v20, Lcom/android/launcher3/home/HomeLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v20

    .line 2797
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/HomeLoader;->mBgOrderedScreens:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2798
    monitor-exit v20
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2799
    const/16 v17, -0x3e9

    move/from16 v0, p1

    move/from16 v1, v17

    if-eq v0, v1, :cond_3

    const/4 v11, 0x1

    .line 2800
    .local v11, "isLoadingSynchronously":Z
    :goto_1
    if-eqz v11, :cond_4

    move/from16 v4, p1

    .line 2801
    .local v4, "currScreen":I
    :goto_2
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    if-lt v4, v0, :cond_2

    .line 2802
    const/16 v4, -0x3e9

    .line 2804
    :cond_2
    move v5, v4

    .line 2805
    .local v5, "currentScreen":I
    if-gez v5, :cond_5

    const-wide/16 v6, -0x1

    .line 2807
    .local v6, "currentScreenId":J
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/home/HomeLoader;->unbindItemsOnMainThread()V

    .line 2809
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 2810
    .local v8, "currentWorkspaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 2811
    .local v14, "otherWorkspaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    sget-object v20, Lcom/android/launcher3/home/HomeLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v20

    .line 2812
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/HomeLoader;->mBgPagesItems:Ljava/util/HashMap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_4
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_7

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Long;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    .line 2813
    .local v18, "screenId":J
    cmp-long v17, v18, v6

    if-nez v17, :cond_6

    .line 2814
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/HomeLoader;->mBgPagesItems:Ljava/util/HashMap;

    move-object/from16 v17, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Collection;

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_4

    .line 2819
    .end local v18    # "screenId":J
    :catchall_0
    move-exception v17

    monitor-exit v20
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v17

    .line 2798
    .end local v4    # "currScreen":I
    .end local v5    # "currentScreen":I
    .end local v6    # "currentScreenId":J
    .end local v8    # "currentWorkspaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .end local v11    # "isLoadingSynchronously":Z
    .end local v14    # "otherWorkspaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    :catchall_1
    move-exception v17

    :try_start_2
    monitor-exit v20
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v17

    .line 2799
    :cond_3
    const/4 v11, 0x0

    goto :goto_1

    .line 2800
    .restart local v11    # "isLoadingSynchronously":Z
    :cond_4
    invoke-interface {v12}, Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;->getCurrentWorkspaceScreen()I

    move-result v4

    goto :goto_2

    .line 2805
    .restart local v4    # "currScreen":I
    .restart local v5    # "currentScreen":I
    :cond_5
    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Long;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    goto :goto_3

    .line 2816
    .restart local v6    # "currentScreenId":J
    .restart local v8    # "currentWorkspaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .restart local v14    # "otherWorkspaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .restart local v18    # "screenId":J
    :cond_6
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/HomeLoader;->mBgPagesItems:Ljava/util/HashMap;

    move-object/from16 v17, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Collection;

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_4

    .line 2819
    .end local v18    # "screenId":J
    :cond_7
    monitor-exit v20
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2821
    new-instance v15, Lcom/android/launcher3/home/HomeLoader$26;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v15, v0, v12, v1}, Lcom/android/launcher3/home/HomeLoader$26;-><init>(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V

    .line 2829
    .local v15, "r":Ljava/lang/Runnable;
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/launcher3/home/HomeLoader;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 2832
    sget-object v20, Lcom/android/launcher3/home/HomeLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v20

    .line 2833
    :try_start_4
    sget-object v17, Lcom/android/launcher3/home/HomeLoader;->sBgFolders:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher3/util/LongArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_8
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_c

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/launcher3/folder/FolderInfo;

    .line 2834
    .local v9, "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    iget-wide v0, v9, Lcom/android/launcher3/folder/FolderInfo;->container:J

    move-wide/from16 v22, v0

    const-wide/16 v24, -0x64

    cmp-long v21, v22, v24

    if-eqz v21, :cond_9

    iget-wide v0, v9, Lcom/android/launcher3/folder/FolderInfo;->container:J

    move-wide/from16 v22, v0

    const-wide/16 v24, -0x65

    cmp-long v21, v22, v24

    if-nez v21, :cond_8

    .line 2836
    :cond_9
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 2837
    .local v16, "removeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    iget-object v0, v9, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_a
    :goto_5
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_b

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 2838
    .local v10, "info":Lcom/android/launcher3/common/base/item/IconInfo;
    sget-object v22, Lcom/android/launcher3/home/HomeLoader;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    iget-wide v0, v10, Lcom/android/launcher3/common/base/item/IconInfo;->id:J

    move-wide/from16 v24, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/LongArrayMap;->containsKey(J)Z

    move-result v22

    if-nez v22, :cond_a

    .line 2839
    const-string v22, "HomeLoader"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "this item is not exist in BgItemsIdMap. so remove : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2840
    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 2848
    .end local v9    # "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    .end local v10    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v16    # "removeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    :catchall_2
    move-exception v17

    monitor-exit v20
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v17

    .line 2843
    .restart local v9    # "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    .restart local v16    # "removeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    :cond_b
    :try_start_5
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_6
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_8

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 2844
    .restart local v10    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    iget-object v0, v9, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_6

    .line 2848
    .end local v9    # "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    .end local v10    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v16    # "removeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    :cond_c
    monitor-exit v20
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 2850
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v12, v13, v1}, Lcom/android/launcher3/home/HomeLoader;->bindWorkspaceScreens(Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;Ljava/util/ArrayList;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V

    .line 2851
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/HomeLoader;->mBgHotseatItems:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v20

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/home/HomeLoader;->bindPageItems(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V

    .line 2852
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p2

    invoke-virtual {v0, v8, v1, v2}, Lcom/android/launcher3/home/HomeLoader;->bindPageItems(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V

    .line 2854
    new-instance v15, Lcom/android/launcher3/home/HomeLoader$27;

    .end local v15    # "r":Ljava/lang/Runnable;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v15, v0, v12, v1, v5}, Lcom/android/launcher3/home/HomeLoader$27;-><init>(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;I)V

    .line 2862
    .restart local v15    # "r":Ljava/lang/Runnable;
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/launcher3/home/HomeLoader;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 2864
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/home/HomeLoader;->clearDeferredBindRunnable()V

    .line 2865
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/HomeLoader;->mDeferredBindRunnables:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p2

    invoke-virtual {v0, v14, v1, v2}, Lcom/android/launcher3/home/HomeLoader;->bindPageItems(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V

    .line 2867
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFestivalPage()Z

    move-result v17

    if-eqz v17, :cond_d

    .line 2868
    new-instance v15, Lcom/android/launcher3/home/HomeLoader$28;

    .end local v15    # "r":Ljava/lang/Runnable;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v15, v0, v1}, Lcom/android/launcher3/home/HomeLoader$28;-><init>(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V

    .line 2873
    .restart local v15    # "r":Ljava/lang/Runnable;
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/launcher3/home/HomeLoader;->addDeferredBindRunnable(Ljava/lang/Runnable;)V

    .line 2876
    :cond_d
    new-instance v15, Lcom/android/launcher3/home/HomeLoader$29;

    .end local v15    # "r":Ljava/lang/Runnable;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v15, v0, v12, v1}, Lcom/android/launcher3/home/HomeLoader$29;-><init>(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V

    .line 2887
    .restart local v15    # "r":Ljava/lang/Runnable;
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/launcher3/home/HomeLoader;->addDeferredBindRunnable(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method

.method public bindPageItems(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V
    .locals 22
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
    .line 1203
    .local p1, "pageItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .local p2, "deferredBindRunnables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Runnable;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/HomeLoader;->isStopped(Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1204
    const-string v3, "HomeLoader"

    const-string v5, "bindPageItems task is stopped"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1348
    :cond_0
    :goto_0
    return-void

    .line 1208
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/home/HomeLoader;->getCallback()Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    move-result-object v4

    .line 1209
    .local v4, "oldCallbacks":Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;
    if-nez v4, :cond_2

    .line 1210
    const-string v3, "HomeLoader"

    const-string v5, "bindPageItems running with no launcher"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1214
    :cond_2
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFestivalPage()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1215
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/launcher3/home/HomeLoader;->initFestivalPageIfNecessary(Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V

    .line 1218
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/launcher3/home/HomeLoader;->mIsFirstBind:Z

    if-eqz v3, :cond_4

    .line 1219
    new-instance v2, Lcom/android/launcher3/home/HomeLoader$3;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v2, v0, v4, v1}, Lcom/android/launcher3/home/HomeLoader$3;-><init>(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V

    .line 1227
    .local v2, "r":Ljava/lang/Runnable;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher3/home/HomeLoader;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 1229
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 1230
    .local v14, "orderedScreenIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    sget-object v5, Lcom/android/launcher3/home/HomeLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1231
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/HomeLoader;->mBgOrderedScreens:Ljava/util/ArrayList;

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1232
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1233
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v4, v14, v1}, Lcom/android/launcher3/home/HomeLoader;->bindWorkspaceScreens(Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;Ljava/util/ArrayList;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V

    .line 1234
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/launcher3/home/HomeLoader;->mIsFirstBind:Z

    .line 1237
    .end local v2    # "r":Ljava/lang/Runnable;
    .end local v14    # "orderedScreenIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_4
    if-eqz p1, :cond_5

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1238
    :cond_5
    const-string v3, "HomeLoader"

    const-string v5, "bindPageItems page item is null or empty!"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1232
    .restart local v2    # "r":Ljava/lang/Runnable;
    .restart local v14    # "orderedScreenIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 1242
    .end local v2    # "r":Ljava/lang/Runnable;
    .end local v14    # "orderedScreenIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_6
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1243
    .local v6, "shortcuts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 1244
    .local v16, "widgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1245
    .local v11, "hotseatShortcuts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v10, Lcom/android/launcher3/util/LongArrayMap;

    invoke-direct {v10}, Lcom/android/launcher3/util/LongArrayMap;-><init>()V

    .line 1246
    .local v10, "folders":Lcom/android/launcher3/util/LongArrayMap;, "Lcom/android/launcher3/util/LongArrayMap<Lcom/android/launcher3/folder/FolderInfo;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 1247
    .local v13, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget v3, v13, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 1253
    :goto_2
    :pswitch_1
    iget-wide v0, v13, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    move-wide/from16 v18, v0

    const-wide/16 v20, -0x65

    cmp-long v3, v18, v20

    if-nez v3, :cond_7

    .line 1254
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1249
    :pswitch_2
    iget-wide v0, v13, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    move-wide/from16 v18, v0

    move-object v3, v13

    check-cast v3, Lcom/android/launcher3/folder/FolderInfo;

    move-wide/from16 v0, v18

    invoke-virtual {v10, v0, v1, v3}, Lcom/android/launcher3/util/LongArrayMap;->put(JLjava/lang/Object;)V

    goto :goto_2

    .line 1256
    :cond_7
    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1261
    :pswitch_3
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1267
    .end local v13    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_8
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_9

    .line 1268
    new-instance v2, Lcom/android/launcher3/home/HomeLoader$4;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v2, v0, v4, v1, v11}, Lcom/android/launcher3/home/HomeLoader$4;-><init>(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;Ljava/util/ArrayList;)V

    .line 1277
    .restart local v2    # "r":Ljava/lang/Runnable;
    if-eqz p2, :cond_a

    .line 1278
    monitor-enter p2

    .line 1279
    :try_start_2
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1280
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1287
    .end local v2    # "r":Ljava/lang/Runnable;
    :cond_9
    :goto_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 1288
    .local v9, "N":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_4
    if-ge v12, v9, :cond_d

    .line 1289
    move v7, v12

    .line 1290
    .local v7, "start":I
    add-int/lit8 v3, v12, 0x6

    if-gt v3, v9, :cond_b

    const/4 v8, 0x6

    .line 1291
    .local v8, "chunkSize":I
    :goto_5
    new-instance v2, Lcom/android/launcher3/home/HomeLoader$5;

    move-object/from16 v3, p0

    move-object/from16 v5, p3

    invoke-direct/range {v2 .. v8}, Lcom/android/launcher3/home/HomeLoader$5;-><init>(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;Ljava/util/ArrayList;II)V

    .line 1300
    .restart local v2    # "r":Ljava/lang/Runnable;
    if-eqz p2, :cond_c

    .line 1301
    monitor-enter p2

    .line 1302
    :try_start_3
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1303
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1288
    :goto_6
    add-int/lit8 v12, v12, 0x6

    goto :goto_4

    .line 1280
    .end local v7    # "start":I
    .end local v8    # "chunkSize":I
    .end local v9    # "N":I
    .end local v12    # "i":I
    :catchall_1
    move-exception v3

    :try_start_4
    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v3

    .line 1282
    :cond_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher3/home/HomeLoader;->runOnMainThread(Ljava/lang/Runnable;)V

    goto :goto_3

    .line 1290
    .end local v2    # "r":Ljava/lang/Runnable;
    .restart local v7    # "start":I
    .restart local v9    # "N":I
    .restart local v12    # "i":I
    :cond_b
    sub-int v8, v9, v12

    goto :goto_5

    .line 1303
    .restart local v2    # "r":Ljava/lang/Runnable;
    .restart local v8    # "chunkSize":I
    :catchall_2
    move-exception v3

    :try_start_5
    monitor-exit p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v3

    .line 1305
    :cond_c
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher3/home/HomeLoader;->runOnMainThread(Ljava/lang/Runnable;)V

    goto :goto_6

    .line 1310
    .end local v2    # "r":Ljava/lang/Runnable;
    .end local v7    # "start":I
    .end local v8    # "chunkSize":I
    :cond_d
    invoke-virtual {v10}, Lcom/android/launcher3/util/LongArrayMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_e

    .line 1311
    new-instance v2, Lcom/android/launcher3/home/HomeLoader$6;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v2, v0, v4, v1, v10}, Lcom/android/launcher3/home/HomeLoader$6;-><init>(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;Lcom/android/launcher3/util/LongArrayMap;)V

    .line 1319
    .restart local v2    # "r":Ljava/lang/Runnable;
    if-eqz p2, :cond_f

    .line 1320
    monitor-enter p2

    .line 1321
    :try_start_6
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1322
    monitor-exit p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 1329
    .end local v2    # "r":Ljava/lang/Runnable;
    :cond_e
    :goto_7
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 1330
    const/4 v12, 0x0

    :goto_8
    if-ge v12, v9, :cond_0

    .line 1331
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    .line 1332
    .local v15, "widget":Lcom/android/launcher3/home/LauncherAppWidgetInfo;
    new-instance v2, Lcom/android/launcher3/home/HomeLoader$7;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v2, v0, v4, v1, v15}, Lcom/android/launcher3/home/HomeLoader$7;-><init>(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;Lcom/android/launcher3/home/LauncherAppWidgetInfo;)V

    .line 1340
    .restart local v2    # "r":Ljava/lang/Runnable;
    if-eqz p2, :cond_10

    .line 1341
    monitor-enter p2

    .line 1342
    :try_start_7
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1343
    monitor-exit p2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 1330
    :goto_9
    add-int/lit8 v12, v12, 0x1

    goto :goto_8

    .line 1322
    .end local v15    # "widget":Lcom/android/launcher3/home/LauncherAppWidgetInfo;
    :catchall_3
    move-exception v3

    :try_start_8
    monitor-exit p2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v3

    .line 1324
    :cond_f
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher3/home/HomeLoader;->runOnMainThread(Ljava/lang/Runnable;)V

    goto :goto_7

    .line 1343
    .restart local v15    # "widget":Lcom/android/launcher3/home/LauncherAppWidgetInfo;
    :catchall_4
    move-exception v3

    :try_start_9
    monitor-exit p2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw v3

    .line 1345
    :cond_10
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher3/home/HomeLoader;->runOnMainThread(Ljava/lang/Runnable;)V

    goto :goto_9

    .line 1247
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method bindRemainingSynchronousPages()V
    .locals 6

    .prologue
    .line 2938
    iget-object v3, p0, Lcom/android/launcher3/home/HomeLoader;->mDeferredBindRunnables:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2939
    const/4 v1, 0x0

    .line 2940
    .local v1, "deferredBindRunnables":[Ljava/lang/Runnable;
    iget-object v4, p0, Lcom/android/launcher3/home/HomeLoader;->mDeferredBindRunnables:Ljava/util/ArrayList;

    monitor-enter v4

    .line 2941
    :try_start_0
    iget-object v3, p0, Lcom/android/launcher3/home/HomeLoader;->mDeferredBindRunnables:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/launcher3/home/HomeLoader;->mDeferredBindRunnables:Ljava/util/ArrayList;

    .line 2942
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/Runnable;

    .line 2941
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, [Ljava/lang/Runnable;

    move-object v1, v0

    .line 2943
    iget-object v3, p0, Lcom/android/launcher3/home/HomeLoader;->mDeferredBindRunnables:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 2944
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2945
    array-length v4, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v2, v1, v3

    .line 2946
    .local v2, "r":Ljava/lang/Runnable;
    sget-object v5, Lcom/android/launcher3/home/HomeLoader;->sHandler:Lcom/android/launcher3/common/model/DeferredHandler;

    invoke-virtual {v5, v2}, Lcom/android/launcher3/common/model/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 2945
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2944
    .end local v2    # "r":Ljava/lang/Runnable;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 2949
    .end local v1    # "deferredBindRunnables":[Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public bindUpdatedDeepShortcuts(Ljava/util/ArrayList;Lcom/android/launcher3/common/compat/UserHandleCompat;)V
    .locals 1
    .param p2, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;",
            "Lcom/android/launcher3/common/compat/UserHandleCompat;",
            ")V"
        }
    .end annotation

    .prologue
    .line 4102
    .local p1, "updatedShortcuts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/launcher3/home/HomeLoader;->bindUpdatedDeepShortcuts(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    .line 4103
    return-void
.end method

.method public bindUpdatedDeepShortcuts(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/launcher3/common/compat/UserHandleCompat;)V
    .locals 7
    .param p3, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;",
            "Lcom/android/launcher3/common/compat/UserHandleCompat;",
            ")V"
        }
    .end annotation

    .prologue
    .line 4108
    .local p1, "updatedShortcuts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    .local p2, "removedShortcuts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4109
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/home/HomeLoader;->getCallback()Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    move-result-object v2

    .line 4110
    .local v2, "callbacks":Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;
    sget-object v6, Lcom/android/launcher3/home/HomeLoader;->sHandler:Lcom/android/launcher3/common/model/DeferredHandler;

    new-instance v0, Lcom/android/launcher3/home/HomeLoader$38;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/home/HomeLoader$38;-><init>(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    invoke-virtual {v6, v0}, Lcom/android/launcher3/common/model/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 4119
    .end local v2    # "callbacks":Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;
    :cond_1
    return-void
.end method

.method checkAppWidgetSingleInstanceList(Lcom/android/launcher3/home/LauncherAppWidgetInfo;)V
    .locals 6
    .param p1, "info"    # Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    .prologue
    const/4 v5, 0x1

    .line 3524
    sget-object v2, Lcom/android/launcher3/home/HomeController;->sSingleInstanceAppWidgetList:Ljava/util/HashMap;

    iget-object v3, p1, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3525
    sget-object v2, Lcom/android/launcher3/home/HomeLoader;->sUserManager:Lcom/android/launcher3/common/compat/UserManagerCompat;

    iget-object v3, p1, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher3/common/compat/UserHandleCompat;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 3526
    .local v0, "profileId":Ljava/lang/Long;
    sget-object v2, Lcom/android/launcher3/home/HomeController;->sSingleInstanceAppWidgetList:Ljava/util/HashMap;

    iget-object v3, p1, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    .line 3527
    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    .line 3526
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/LongSparseArray;

    .line 3528
    .local v1, "userMap":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 3531
    .end local v0    # "profileId":Ljava/lang/Long;
    .end local v1    # "userMap":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    :cond_0
    sget-object v2, Lcom/android/launcher3/home/HomeController;->sSingleInstanceAppWidgetPackageList:Ljava/util/HashMap;

    iget-object v3, p1, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3532
    sget-object v2, Lcom/android/launcher3/home/HomeLoader;->sUserManager:Lcom/android/launcher3/common/compat/UserManagerCompat;

    iget-object v3, p1, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher3/common/compat/UserHandleCompat;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 3533
    .restart local v0    # "profileId":Ljava/lang/Long;
    sget-object v2, Lcom/android/launcher3/home/HomeController;->sSingleInstanceAppWidgetPackageList:Ljava/util/HashMap;

    iget-object v3, p1, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    .line 3534
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 3533
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/LongSparseArray;

    .line 3535
    .restart local v1    # "userMap":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 3537
    .end local v0    # "profileId":Ljava/lang/Long;
    .end local v1    # "userMap":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    :cond_1
    return-void
.end method

.method checkDuplicatedSingleInstanceWidgetExist(Lcom/android/launcher3/common/base/item/PendingAddItemInfo;)Ljava/lang/String;
    .locals 5
    .param p1, "info"    # Lcom/android/launcher3/common/base/item/PendingAddItemInfo;

    .prologue
    const/4 v1, 0x0

    .line 3481
    iget-object v2, p0, Lcom/android/launcher3/home/HomeLoader;->mBgPagesItems:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/home/HomeLoader;->mBgPagesItems:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 3492
    :cond_0
    :goto_0
    return-object v1

    .line 3485
    :cond_1
    invoke-direct {p0}, Lcom/android/launcher3/home/HomeLoader;->getWidgetsInHome()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    .line 3486
    .local v0, "item":Lcom/android/launcher3/home/LauncherAppWidgetInfo;
    iget-object v3, v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3487
    iget-object v3, v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    iget-object v4, p1, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 3488
    iget-object v1, v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v1}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    goto :goto_0
.end method

.method clearPreservedPosition()V
    .locals 1

    .prologue
    .line 190
    new-instance v0, Lcom/android/launcher3/home/HomeLoader$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/home/HomeLoader$1;-><init>(Lcom/android/launcher3/home/HomeLoader;)V

    invoke-static {v0}, Lcom/android/launcher3/home/HomeLoader;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 196
    return-void
.end method

.method protected clearSBgDataStructures()V
    .locals 2

    .prologue
    .line 1616
    sget-object v1, Lcom/android/launcher3/home/HomeLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1617
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mBgPagesItems:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1618
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sBgFolders:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LongArrayMap;->clear()V

    .line 1619
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LongArrayMap;->clear()V

    .line 1620
    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mBgOrderedScreens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1621
    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mBgHotseatItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1622
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sBgPinnedShortcutCounts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1623
    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mShortcutKeyToPinnedShortcuts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1624
    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->added:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1625
    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->modified:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1626
    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->removed:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1627
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1628
    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mNewPageIdsAfterGridChanged:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1629
    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mExtraItemsAfterGridChanged:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1630
    return-void

    .line 1627
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public containPagesItem(Lcom/android/launcher3/common/base/item/ItemInfo;)Z
    .locals 4
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    const/4 v1, 0x1

    .line 3222
    iget-object v2, p0, Lcom/android/launcher3/home/HomeLoader;->mBgHotseatItems:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3231
    :goto_0
    return v1

    .line 3225
    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/home/HomeLoader;->mBgPagesItems:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 3226
    .local v0, "pageItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 3231
    .end local v0    # "pageItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method createShortcutItem(Landroid/database/Cursor;Lcom/android/launcher3/common/model/CursorInfo;Ljava/util/HashMap;Lcom/android/launcher3/util/LongArrayMap;)Lcom/android/launcher3/common/base/item/ItemInfo;
    .locals 46
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "cursorInfo"    # Lcom/android/launcher3/common/model/CursorInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Lcom/android/launcher3/common/model/CursorInfo;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<*>;>;",
            "Lcom/android/launcher3/util/LongArrayMap",
            "<[[",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;)",
            "Lcom/android/launcher3/common/base/item/ItemInfo;"
        }
    .end annotation

    .prologue
    .line 945
    .local p3, "needHandlingItems":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/ArrayList<*>;>;"
    .local p4, "occupied":Lcom/android/launcher3/util/LongArrayMap;, "Lcom/android/launcher3/util/LongArrayMap<[[Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    const/16 v25, 0x0

    .line 946
    .local v25, "info":Lcom/android/launcher3/common/base/item/IconInfo;
    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/launcher3/common/model/CursorInfo;->intentIndex:I

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 947
    .local v29, "intentDescription":Ljava/lang/String;
    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/launcher3/common/model/CursorInfo;->containerIndex:I

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 948
    .local v21, "container":I
    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/launcher3/common/model/CursorInfo;->idIndex:I

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    .line 949
    .local v26, "id":J
    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/launcher3/common/model/CursorInfo;->profileIdIndex:I

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v0, v4

    move-wide/from16 v40, v0

    .line 951
    .local v40, "serialNumber":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/HomeLoader;->mAllUsers:Landroid/util/LongSparseArray;

    move-wide/from16 v0, v40

    invoke-virtual {v4, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/launcher3/common/compat/UserHandleCompat;

    .line 953
    .local v18, "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/launcher3/common/model/CursorInfo;->restoredIndex:I

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v36

    .line 954
    .local v36, "promiseType":I
    if-eqz v36, :cond_0

    const/16 v37, 0x1

    .line 955
    .local v37, "restored":Z
    :goto_0
    const/16 v20, 0x0

    .line 957
    .local v20, "allowMissingTarget":Z
    const/16 v22, 0x0

    .line 958
    .local v22, "disabledState":I
    const/16 v33, 0x0

    .line 960
    .local v33, "notAvailableType":I
    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/launcher3/common/model/CursorInfo;->itemTypeIndex:I

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v30

    .line 962
    .local v30, "itemType":I
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/util/ArrayList;

    .line 963
    .local v31, "itemsToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Ljava/util/ArrayList;

    .line 965
    .local v38, "restoredRows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    if-nez v18, :cond_1

    .line 967
    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 968
    const/16 v39, 0x0

    move/from16 v11, v20

    .line 1196
    .end local v20    # "allowMissingTarget":Z
    .local v11, "allowMissingTarget":Z
    :goto_1
    return-object v39

    .line 954
    .end local v11    # "allowMissingTarget":Z
    .end local v22    # "disabledState":I
    .end local v30    # "itemType":I
    .end local v31    # "itemsToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v33    # "notAvailableType":I
    .end local v37    # "restored":Z
    .end local v38    # "restoredRows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_0
    const/16 v37, 0x0

    goto :goto_0

    .line 971
    .restart local v20    # "allowMissingTarget":Z
    .restart local v22    # "disabledState":I
    .restart local v30    # "itemType":I
    .restart local v31    # "itemsToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v33    # "notAvailableType":I
    .restart local v37    # "restored":Z
    .restart local v38    # "restoredRows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_1
    const/16 v39, 0x0

    .line 973
    .local v39, "returnItem":Lcom/android/launcher3/common/base/item/ItemInfo;
    const/4 v13, 0x0

    .line 975
    .local v13, "isAppShortcut":Z
    if-nez v30, :cond_8

    .line 976
    const/4 v4, 0x0

    :try_start_0
    move-object/from16 v0, v29

    invoke-static {v0, v4}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v7

    .local v7, "intent":Landroid/content/Intent;
    move-object/from16 v28, v7

    .line 980
    .end local v7    # "intent":Landroid/content/Intent;
    .local v28, "intent":Landroid/content/Intent;
    :goto_2
    invoke-virtual/range {v28 .. v28}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v19

    .line 981
    .local v19, "cn":Landroid/content/ComponentName;
    if-eqz v19, :cond_17

    invoke-virtual/range {v19 .. v19}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_17

    .line 982
    sget-object v4, Lcom/android/launcher3/home/HomeLoader;->sLauncherApps:Lcom/android/launcher3/common/compat/LauncherAppsCompat;

    invoke-virtual/range {v19 .. v19}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v4, v5, v0}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->isPackageEnabledForProfile(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Z

    move-result v43

    .line 983
    .local v43, "validPkg":Z
    if-eqz v43, :cond_9

    sget-object v4, Lcom/android/launcher3/home/HomeLoader;->sLauncherApps:Lcom/android/launcher3/common/compat/LauncherAppsCompat;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->isActivityEnabledForProfile(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)Z

    move-result v4

    if-eqz v4, :cond_9

    const/16 v42, 0x1

    .line 984
    .local v42, "validComponent":Z
    :goto_3
    if-eqz v42, :cond_a

    .line 985
    if-eqz v37, :cond_3

    .line 986
    and-int/lit8 v4, v36, 0x20

    if-eqz v4, :cond_2

    .line 987
    new-instance v45, Landroid/content/ContentValues;

    invoke-direct/range {v45 .. v45}, Landroid/content/ContentValues;-><init>()V

    .line 988
    .local v45, "values":Landroid/content/ContentValues;
    const-string v4, "title"

    const-string v5, ""

    move-object/from16 v0, v45

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 989
    const-string v5, "icon"

    const/4 v4, 0x0

    check-cast v4, [B

    move-object/from16 v0, v45

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 990
    move-object/from16 v0, p0

    move-wide/from16 v1, v26

    move-object/from16 v3, v45

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/home/HomeLoader;->updateItem(JLandroid/content/ContentValues;)V

    .line 992
    .end local v45    # "values":Landroid/content/ContentValues;
    :cond_2
    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 993
    const/16 v37, 0x0

    .line 995
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/HomeLoader;->mQuietModeUsers:Landroid/util/LongSparseArray;

    move-wide/from16 v0, v40

    invoke-virtual {v4, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 996
    const/16 v22, 0x8

    .line 999
    :cond_4
    const/4 v4, 0x1

    move/from16 v0, v30

    if-ne v0, v4, :cond_27

    .line 1000
    invoke-static/range {v28 .. v28}, Lcom/android/launcher3/Utilities;->isLauncherAppTarget(Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_27

    sget-object v4, Lcom/android/launcher3/home/HomeLoader;->sPackageManager:Landroid/content/pm/PackageManager;

    const/4 v5, 0x0

    .line 1001
    move-object/from16 v0, v28

    invoke-virtual {v4, v0, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    if-eqz v4, :cond_27

    .line 1002
    const/4 v13, 0x1

    move/from16 v11, v20

    .end local v20    # "allowMissingTarget":Z
    .restart local v11    # "allowMissingTarget":Z
    move-object/from16 v7, v28

    .line 1088
    .end local v28    # "intent":Landroid/content/Intent;
    .end local v42    # "validComponent":Z
    .end local v43    # "validPkg":Z
    .restart local v7    # "intent":Landroid/content/Intent;
    :goto_4
    if-ltz v21, :cond_18

    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/launcher3/common/model/CursorInfo;->rankIndex:I

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/16 v5, 0x9

    if-lt v4, v5, :cond_18

    const/4 v12, 0x1

    .line 1089
    .local v12, "useLowResIcon":Z
    :goto_5
    if-eqz v37, :cond_1a

    .line 1090
    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcom/android/launcher3/common/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 1091
    const-string v4, "HomeLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "constructing info for restored package promiseType: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v36

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/android/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, v19

    move/from16 v8, v36

    move-object/from16 v9, p2

    .line 1092
    invoke-virtual/range {v4 .. v9}, Lcom/android/launcher3/home/HomeLoader;->getRestoredItemInfo(Landroid/database/Cursor;Landroid/content/ComponentName;Landroid/content/Intent;ILcom/android/launcher3/common/model/CursorInfo;)Lcom/android/launcher3/common/base/item/IconInfo;

    move-result-object v25

    .line 1093
    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v7, v1}, Lcom/android/launcher3/home/HomeLoader;->getRestoredItemIntent(Landroid/content/Intent;I)Landroid/content/Intent;

    move-result-object v7

    .line 1125
    :cond_5
    :goto_6
    if-eqz v25, :cond_26

    .line 1126
    move-wide/from16 v0, v26

    move-object/from16 v2, v25

    iput-wide v0, v2, Lcom/android/launcher3/common/base/item/IconInfo;->id:J

    .line 1127
    move-object/from16 v0, v25

    iput-object v7, v0, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    .line 1128
    move/from16 v0, v21

    int-to-long v4, v0

    move-object/from16 v0, v25

    iput-wide v4, v0, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    .line 1129
    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/launcher3/common/model/CursorInfo;->screenIndex:I

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v4, v4

    move-object/from16 v0, v25

    iput-wide v4, v0, Lcom/android/launcher3/common/base/item/IconInfo;->screenId:J

    .line 1130
    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/launcher3/common/model/CursorInfo;->cellXIndex:I

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v25

    iput v4, v0, Lcom/android/launcher3/common/base/item/IconInfo;->cellX:I

    .line 1131
    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/launcher3/common/model/CursorInfo;->cellYIndex:I

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v25

    iput v4, v0, Lcom/android/launcher3/common/base/item/IconInfo;->cellY:I

    .line 1132
    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/launcher3/common/model/CursorInfo;->rankIndex:I

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v25

    iput v4, v0, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    .line 1133
    const/4 v4, 0x1

    move-object/from16 v0, v25

    iput v4, v0, Lcom/android/launcher3/common/base/item/IconInfo;->spanX:I

    .line 1134
    const/4 v4, 0x1

    move-object/from16 v0, v25

    iput v4, v0, Lcom/android/launcher3/common/base/item/IconInfo;->spanY:I

    .line 1135
    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/launcher3/common/model/CursorInfo;->hiddenIndex:I

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v25

    iput v4, v0, Lcom/android/launcher3/common/base/item/IconInfo;->hidden:I

    .line 1137
    move-object/from16 v0, v25

    iget v4, v0, Lcom/android/launcher3/common/base/item/IconInfo;->itemType:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_6

    move-object/from16 v0, v25

    iget v4, v0, Lcom/android/launcher3/common/base/item/IconInfo;->itemType:I

    const/4 v5, 0x6

    if-eq v4, v5, :cond_6

    .line 1138
    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    const-string v5, "profile"

    move-wide/from16 v0, v40

    invoke-virtual {v4, v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1139
    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/android/launcher3/common/base/item/IconInfo;->promisedIntent:Landroid/content/Intent;

    if-eqz v4, :cond_6

    .line 1140
    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/android/launcher3/common/base/item/IconInfo;->promisedIntent:Landroid/content/Intent;

    const-string v5, "profile"

    move-wide/from16 v0, v40

    invoke-virtual {v4, v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1143
    :cond_6
    move-object/from16 v0, v25

    iget v4, v0, Lcom/android/launcher3/common/base/item/IconInfo;->isDisabled:I

    or-int v4, v4, v22

    move-object/from16 v0, v25

    iput v4, v0, Lcom/android/launcher3/common/base/item/IconInfo;->isDisabled:I

    .line 1144
    sget-boolean v4, Lcom/android/launcher3/home/HomeLoader;->sIsSafeMode:Z

    if-eqz v4, :cond_7

    sget-object v4, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    invoke-static {v4, v7}, Lcom/android/launcher3/Utilities;->isSystemApp(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 1145
    move-object/from16 v0, v25

    iget v4, v0, Lcom/android/launcher3/common/base/item/IconInfo;->isDisabled:I

    or-int/lit8 v4, v4, 0x1

    move-object/from16 v0, v25

    iput v4, v0, Lcom/android/launcher3/common/base/item/IconInfo;->isDisabled:I

    .line 1149
    :cond_7
    move-object/from16 v0, v25

    iget v4, v0, Lcom/android/launcher3/common/base/item/IconInfo;->hidden:I

    if-nez v4, :cond_20

    move-object/from16 v0, v25

    iget-wide v4, v0, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    const-wide/16 v8, -0x65

    cmp-long v4, v4, v8

    if-nez v4, :cond_1f

    const-wide/16 v4, 0x1

    .line 1150
    :goto_7
    move-object/from16 v0, p4

    invoke-virtual {v0, v4, v5}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[Lcom/android/launcher3/common/base/item/ItemInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, p3

    invoke-direct {v0, v4, v1, v2}, Lcom/android/launcher3/home/HomeLoader;->checkItemPlacement([[Lcom/android/launcher3/common/base/item/ItemInfo;Lcom/android/launcher3/common/base/item/ItemInfo;Ljava/util/HashMap;)Z

    move-result v4

    if-nez v4, :cond_20

    .line 1152
    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1153
    const/16 v39, 0x0

    goto/16 :goto_1

    .line 978
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v11    # "allowMissingTarget":Z
    .end local v12    # "useLowResIcon":Z
    .end local v19    # "cn":Landroid/content/ComponentName;
    .restart local v20    # "allowMissingTarget":Z
    :cond_8
    const/4 v4, 0x4

    :try_start_1
    move-object/from16 v0, v29

    invoke-static {v0, v4}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v7

    .restart local v7    # "intent":Landroid/content/Intent;
    move-object/from16 v28, v7

    .end local v7    # "intent":Landroid/content/Intent;
    .restart local v28    # "intent":Landroid/content/Intent;
    goto/16 :goto_2

    .line 983
    .restart local v19    # "cn":Landroid/content/ComponentName;
    .restart local v43    # "validPkg":Z
    :cond_9
    const/16 v42, 0x0

    goto/16 :goto_3

    .line 1004
    .restart local v42    # "validComponent":Z
    :cond_a
    if-eqz v43, :cond_10

    .line 1005
    const/16 v44, 0x0

    .line 1006
    .local v44, "validPkgIntent":Landroid/content/Intent;
    and-int/lit8 v4, v36, 0x2

    if-nez v4, :cond_b

    and-int/lit8 v4, v36, 0x20

    if-eqz v4, :cond_c

    .line 1009
    :cond_b
    sget-object v4, Lcom/android/launcher3/home/HomeLoader;->sPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual/range {v19 .. v19}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v44

    .line 1010
    if-eqz v44, :cond_c

    .line 1011
    new-instance v45, Landroid/content/ContentValues;

    invoke-direct/range {v45 .. v45}, Landroid/content/ContentValues;-><init>()V

    .line 1012
    .restart local v45    # "values":Landroid/content/ContentValues;
    const-string v4, "intent"

    const/4 v5, 0x0

    move-object/from16 v0, v44

    invoke-virtual {v0, v5}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v45

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1013
    move-object/from16 v0, p0

    move-wide/from16 v1, v26

    move-object/from16 v3, v45

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/home/HomeLoader;->updateItem(JLandroid/content/ContentValues;)V

    .line 1017
    .end local v45    # "values":Landroid/content/ContentValues;
    :cond_c
    if-nez v44, :cond_e

    .line 1019
    invoke-virtual/range {v19 .. v19}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    move/from16 v0, v21

    int-to-long v6, v0

    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/launcher3/common/model/CursorInfo;->screenIndex:I

    .line 1020
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v8, v4

    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/launcher3/common/model/CursorInfo;->cellXIndex:I

    .line 1021
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/launcher3/common/model/CursorInfo;->cellYIndex:I

    .line 1022
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    move-object/from16 v4, p0

    .line 1019
    invoke-virtual/range {v4 .. v11}, Lcom/android/launcher3/home/HomeLoader;->backupStkPositionIfNecessary(Ljava/lang/String;JJII)V

    .line 1024
    and-int/lit8 v4, v36, 0x20

    if-eqz v4, :cond_d

    .line 1025
    const-string v4, "HomeLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "package not yet restored (validPkg): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/android/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v7, v28

    .end local v28    # "intent":Landroid/content/Intent;
    .restart local v7    # "intent":Landroid/content/Intent;
    :goto_8
    move/from16 v11, v20

    .line 1042
    .end local v20    # "allowMissingTarget":Z
    .restart local v11    # "allowMissingTarget":Z
    goto/16 :goto_4

    .line 1027
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v11    # "allowMissingTarget":Z
    .restart local v20    # "allowMissingTarget":Z
    .restart local v28    # "intent":Landroid/content/Intent;
    :cond_d
    const-string v4, "HomeLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid intent removed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/android/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1028
    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1029
    const/16 v39, 0x0

    .end local v39    # "returnItem":Lcom/android/launcher3/common/base/item/ItemInfo;
    move/from16 v11, v20

    .end local v20    # "allowMissingTarget":Z
    .restart local v11    # "allowMissingTarget":Z
    goto/16 :goto_1

    .line 1032
    .end local v11    # "allowMissingTarget":Z
    .restart local v20    # "allowMissingTarget":Z
    .restart local v39    # "returnItem":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_e
    move-object/from16 v7, v44

    .line 1033
    .end local v28    # "intent":Landroid/content/Intent;
    .restart local v7    # "intent":Landroid/content/Intent;
    and-int/lit8 v4, v36, 0x20

    if-eqz v4, :cond_f

    .line 1034
    new-instance v45, Landroid/content/ContentValues;

    invoke-direct/range {v45 .. v45}, Landroid/content/ContentValues;-><init>()V

    .line 1035
    .restart local v45    # "values":Landroid/content/ContentValues;
    const-string v4, "title"

    const-string v5, ""

    move-object/from16 v0, v45

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1036
    const-string v5, "icon"

    const/4 v4, 0x0

    check-cast v4, [B

    move-object/from16 v0, v45

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 1037
    move-object/from16 v0, p0

    move-wide/from16 v1, v26

    move-object/from16 v3, v45

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/home/HomeLoader;->updateItem(JLandroid/content/ContentValues;)V

    .line 1039
    .end local v45    # "values":Landroid/content/ContentValues;
    :cond_f
    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1040
    const/16 v37, 0x0

    goto :goto_8

    .line 1042
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v44    # "validPkgIntent":Landroid/content/Intent;
    .restart local v28    # "intent":Landroid/content/Intent;
    :cond_10
    if-eqz v37, :cond_13

    .line 1044
    const-string v4, "HomeLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "package not yet restored: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/android/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1046
    and-int/lit8 v4, v36, 0x2

    if-nez v4, :cond_11

    and-int/lit8 v4, v36, 0x1

    if-eqz v4, :cond_27

    .line 1048
    :cond_11
    sget-object v4, Lcom/android/launcher3/home/HomeLoader;->sInstallingPkgs:Ljava/util/HashMap;

    if-eqz v4, :cond_12

    sget-object v4, Lcom/android/launcher3/home/HomeLoader;->sInstallingPkgs:Ljava/util/HashMap;

    invoke-virtual/range {v19 .. v19}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_27

    .line 1049
    :cond_12
    const-string v4, "HomeLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UnRestored package removed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/android/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1050
    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1051
    const/16 v39, 0x0

    .end local v39    # "returnItem":Lcom/android/launcher3/common/base/item/ItemInfo;
    move/from16 v11, v20

    .end local v20    # "allowMissingTarget":Z
    .restart local v11    # "allowMissingTarget":Z
    goto/16 :goto_1

    .line 1054
    .end local v11    # "allowMissingTarget":Z
    .restart local v20    # "allowMissingTarget":Z
    .restart local v39    # "returnItem":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_13
    invoke-virtual/range {v19 .. v19}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/launcher3/home/HomeLoader;->isNotAvailableApps(Ljava/lang/String;)I

    move-result v33

    if-lez v33, :cond_14

    .line 1056
    const-string v4, "HomeLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Package unavailable  : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " by "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v33

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/android/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1057
    or-int v22, v22, v33

    .line 1058
    const/4 v11, 0x1

    .end local v20    # "allowMissingTarget":Z
    .restart local v11    # "allowMissingTarget":Z
    move-object/from16 v7, v28

    .end local v28    # "intent":Landroid/content/Intent;
    .restart local v7    # "intent":Landroid/content/Intent;
    goto/16 :goto_4

    .line 1059
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v11    # "allowMissingTarget":Z
    .restart local v20    # "allowMissingTarget":Z
    .restart local v28    # "intent":Landroid/content/Intent;
    :cond_14
    sget-boolean v4, Lcom/android/launcher3/home/HomeLoader;->mIsBootCompleted:Z

    if-nez v4, :cond_15

    .line 1062
    const-string v4, "HomeLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid package: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " (check again later)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/android/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1063
    invoke-virtual/range {v19 .. v19}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v4, v1}, Lcom/android/launcher3/home/HomeLoader;->addAppToPendingPackages(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    .line 1064
    const/4 v11, 0x1

    .end local v20    # "allowMissingTarget":Z
    .restart local v11    # "allowMissingTarget":Z
    move-object/from16 v7, v28

    .end local v28    # "intent":Landroid/content/Intent;
    .restart local v7    # "intent":Landroid/content/Intent;
    goto/16 :goto_4

    .line 1066
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v11    # "allowMissingTarget":Z
    .restart local v20    # "allowMissingTarget":Z
    .restart local v28    # "intent":Landroid/content/Intent;
    :cond_15
    sget-object v4, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/launcher3/util/DualAppUtils;->supportDualApp(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_16

    const/4 v4, 0x1

    move/from16 v0, v30

    if-ne v0, v4, :cond_16

    const-string v4, "com.samsung.android.da.daagent"

    .line 1068
    invoke-virtual/range {v19 .. v19}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 1069
    const-string v4, "HomeLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Dual app shortcut : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v11, v20

    .end local v20    # "allowMissingTarget":Z
    .restart local v11    # "allowMissingTarget":Z
    move-object/from16 v7, v28

    .end local v28    # "intent":Landroid/content/Intent;
    .restart local v7    # "intent":Landroid/content/Intent;
    goto/16 :goto_4

    .line 1073
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v11    # "allowMissingTarget":Z
    .restart local v20    # "allowMissingTarget":Z
    .restart local v28    # "intent":Landroid/content/Intent;
    :cond_16
    const-string v4, "HomeLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid package removed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/android/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1074
    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1075
    const/16 v39, 0x0

    .end local v39    # "returnItem":Lcom/android/launcher3/common/base/item/ItemInfo;
    move/from16 v11, v20

    .end local v20    # "allowMissingTarget":Z
    .restart local v11    # "allowMissingTarget":Z
    goto/16 :goto_1

    .line 1077
    .end local v11    # "allowMissingTarget":Z
    .end local v42    # "validComponent":Z
    .end local v43    # "validPkg":Z
    .restart local v20    # "allowMissingTarget":Z
    .restart local v39    # "returnItem":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_17
    if-nez v19, :cond_27

    .line 1079
    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1080
    const/16 v37, 0x0

    move/from16 v11, v20

    .end local v20    # "allowMissingTarget":Z
    .restart local v11    # "allowMissingTarget":Z
    move-object/from16 v7, v28

    .end local v28    # "intent":Landroid/content/Intent;
    .restart local v7    # "intent":Landroid/content/Intent;
    goto/16 :goto_4

    .line 1082
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v11    # "allowMissingTarget":Z
    .end local v19    # "cn":Landroid/content/ComponentName;
    .restart local v20    # "allowMissingTarget":Z
    :catch_0
    move-exception v23

    .line 1083
    .local v23, "e":Ljava/net/URISyntaxException;
    const-string v4, "HomeLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid uri: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/android/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1084
    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1085
    const/16 v39, 0x0

    move/from16 v11, v20

    .end local v20    # "allowMissingTarget":Z
    .restart local v11    # "allowMissingTarget":Z
    goto/16 :goto_1

    .line 1088
    .end local v23    # "e":Ljava/net/URISyntaxException;
    .restart local v7    # "intent":Landroid/content/Intent;
    .restart local v19    # "cn":Landroid/content/ComponentName;
    :cond_18
    const/4 v12, 0x0

    goto/16 :goto_5

    .line 1096
    .restart local v12    # "useLowResIcon":Z
    :cond_19
    const-string v4, "HomeLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Don\'t restore items for other profiles: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/android/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1097
    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1098
    const/16 v39, 0x0

    goto/16 :goto_1

    .line 1100
    :cond_1a
    if-eqz v30, :cond_1b

    if-eqz v13, :cond_1c

    :cond_1b
    move-object/from16 v6, p0

    move-object/from16 v8, v18

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    .line 1101
    invoke-direct/range {v6 .. v13}, Lcom/android/launcher3/home/HomeLoader;->getAppShortcutInfo(Landroid/content/Intent;Lcom/android/launcher3/common/compat/UserHandleCompat;Landroid/database/Cursor;Lcom/android/launcher3/common/model/CursorInfo;ZZZ)Lcom/android/launcher3/common/base/item/IconInfo;

    move-result-object v25

    .line 1103
    if-nez v25, :cond_5

    .line 1104
    const-string v4, "HomeLoader"

    const-string v5, "This item\'s info is null"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/android/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1105
    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1106
    const/16 v39, 0x0

    goto/16 :goto_1

    .line 1108
    :cond_1c
    const/4 v4, 0x1

    move/from16 v0, v30

    if-ne v0, v4, :cond_1d

    move-object/from16 v14, p0

    move-object v15, v7

    move-object/from16 v16, p1

    move-object/from16 v17, p2

    .line 1109
    invoke-direct/range {v14 .. v19}, Lcom/android/launcher3/home/HomeLoader;->getShortcutInfo(Landroid/content/Intent;Landroid/database/Cursor;Lcom/android/launcher3/common/model/CursorInfo;Lcom/android/launcher3/common/compat/UserHandleCompat;Landroid/content/ComponentName;)Lcom/android/launcher3/common/base/item/IconInfo;

    move-result-object v25

    goto/16 :goto_6

    .line 1110
    :cond_1d
    const/4 v4, 0x6

    move/from16 v0, v30

    if-ne v0, v4, :cond_5

    .line 1111
    move-object/from16 v0, v18

    invoke-static {v7, v0}, Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutKey;->fromIntent(Landroid/content/Intent;Lcom/android/launcher3/common/compat/UserHandleCompat;)Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutKey;

    move-result-object v32

    .line 1112
    .local v32, "key":Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutKey;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/HomeLoader;->mShortcutKeyToPinnedShortcuts:Ljava/util/Map;

    move-object/from16 v0, v32

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;

    .line 1113
    .local v34, "pinnedShortcut":Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;
    if-nez v34, :cond_1e

    .line 1115
    const-string v4, "HomeLoader"

    const-string v5, "The pinned shortcut is no longer valid"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/android/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1116
    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1117
    const/16 v39, 0x0

    goto/16 :goto_1

    .line 1119
    :cond_1e
    new-instance v25, Lcom/android/launcher3/common/base/item/IconInfo;

    .end local v25    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    sget-object v4, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    move-object/from16 v0, v25

    move-object/from16 v1, v34

    invoke-direct {v0, v1, v4}, Lcom/android/launcher3/common/base/item/IconInfo;-><init>(Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;Landroid/content/Context;)V

    .line 1120
    .restart local v25    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    move-object/from16 v0, v25

    iget-object v7, v0, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    .line 1122
    const/4 v4, 0x0

    move-object/from16 v0, v32

    invoke-static {v0, v4}, Lcom/android/launcher3/home/HomeLoader;->incrementPinnedShortcutCount(Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutKey;Z)V

    goto/16 :goto_6

    .line 1149
    .end local v32    # "key":Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutKey;
    .end local v34    # "pinnedShortcut":Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;
    :cond_1f
    const-wide/16 v4, 0x0

    goto/16 :goto_7

    .line 1156
    :cond_20
    if-eqz v7, :cond_21

    .line 1157
    invoke-virtual/range {v25 .. v25}, Lcom/android/launcher3/common/base/item/IconInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v19

    .line 1158
    if-eqz v19, :cond_21

    .line 1159
    sget-object v4, Lcom/android/launcher3/home/HomeLoader;->sBadgeCache:Lcom/android/launcher3/common/model/BadgeCache;

    new-instance v5, Lcom/android/launcher3/common/model/BadgeCache$CacheKey;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-direct {v5, v0, v1}, Lcom/android/launcher3/common/model/BadgeCache$CacheKey;-><init>(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    invoke-virtual {v4, v5}, Lcom/android/launcher3/common/model/BadgeCache;->getBadgeCount(Lcom/android/launcher3/common/model/BadgeCache$CacheKey;)I

    move-result v4

    move-object/from16 v0, v25

    iput v4, v0, Lcom/android/launcher3/common/base/item/IconInfo;->mBadgeCount:I

    .line 1163
    :cond_21
    if-eqz v37, :cond_22

    .line 1164
    invoke-virtual/range {v25 .. v25}, Lcom/android/launcher3/common/base/item/IconInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v19

    .line 1165
    if-eqz v19, :cond_22

    .line 1166
    sget-object v4, Lcom/android/launcher3/home/HomeLoader;->sInstallingPkgs:Ljava/util/HashMap;

    if-nez v4, :cond_24

    const/16 v35, 0x0

    .line 1167
    .local v35, "progress":Ljava/lang/Integer;
    :goto_9
    if-eqz v35, :cond_25

    .line 1168
    invoke-virtual/range {v35 .. v35}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Lcom/android/launcher3/common/base/item/IconInfo;->setInstallProgress(I)V

    .line 1175
    .end local v35    # "progress":Ljava/lang/Integer;
    :cond_22
    :goto_a
    packed-switch v21, :pswitch_data_0

    .line 1184
    sget-object v5, Lcom/android/launcher3/home/HomeLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1185
    :try_start_2
    sget-object v4, Lcom/android/launcher3/home/HomeLoader;->sBgFolders:Lcom/android/launcher3/util/LongArrayMap;

    move/from16 v0, v21

    int-to-long v8, v0

    invoke-virtual {v4, v8, v9}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/launcher3/folder/FolderInfo;

    .line 1186
    .local v24, "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1187
    if-eqz v24, :cond_23

    .line 1188
    invoke-virtual/range {v24 .. v25}, Lcom/android/launcher3/folder/FolderInfo;->add(Lcom/android/launcher3/common/base/item/IconInfo;)V

    .line 1192
    .end local v24    # "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    :cond_23
    :goto_b
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/HomeLoader;->putItemToIdMap(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto/16 :goto_1

    .line 1166
    :cond_24
    sget-object v4, Lcom/android/launcher3/home/HomeLoader;->sInstallingPkgs:Ljava/util/HashMap;

    invoke-virtual/range {v19 .. v19}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    move-object/from16 v35, v4

    goto :goto_9

    .line 1170
    .restart local v35    # "progress":Ljava/lang/Integer;
    :cond_25
    move-object/from16 v0, v25

    iget v4, v0, Lcom/android/launcher3/common/base/item/IconInfo;->status:I

    and-int/lit8 v4, v4, -0x9

    move-object/from16 v0, v25

    iput v4, v0, Lcom/android/launcher3/common/base/item/IconInfo;->status:I

    goto :goto_a

    .line 1178
    .end local v35    # "progress":Ljava/lang/Integer;
    :pswitch_0
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/HomeLoader;->addPagesItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 1179
    move-object/from16 v39, v25

    .line 1180
    goto :goto_b

    .line 1186
    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    .line 1194
    :cond_26
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Unexpected null IconInfo"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .end local v7    # "intent":Landroid/content/Intent;
    .end local v11    # "allowMissingTarget":Z
    .end local v12    # "useLowResIcon":Z
    .restart local v20    # "allowMissingTarget":Z
    .restart local v28    # "intent":Landroid/content/Intent;
    :cond_27
    move/from16 v11, v20

    .end local v20    # "allowMissingTarget":Z
    .restart local v11    # "allowMissingTarget":Z
    move-object/from16 v7, v28

    .end local v28    # "intent":Landroid/content/Intent;
    .restart local v7    # "intent":Landroid/content/Intent;
    goto/16 :goto_4

    .line 1175
    :pswitch_data_0
    .packed-switch -0x65
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public disableAppsButton()V
    .locals 1

    .prologue
    .line 4597
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeLoader;->getAppsButton()Lcom/android/launcher3/common/base/item/IconInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/home/HomeLoader;->removeHotseatItemByItemInfo(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 4598
    return-void
.end method

.method public dumpState()V
    .locals 4

    .prologue
    .line 2434
    sget-object v1, Lcom/android/launcher3/home/HomeLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2435
    :try_start_0
    const-string v0, "HomeLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HomeLoader.mContext="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2436
    const-string v2, "HomeLoader"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Home PageLoaderTask.mStopped="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mPageLoaderTask:Lcom/android/launcher3/common/model/DataLoader$PageLoaderTask;

    if-nez v0, :cond_0

    const-string v0, "task null "

    .line 2437
    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2436
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2438
    const-string v0, "HomeLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HotSeat Items size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/home/HomeLoader;->mBgHotseatItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2439
    const-string v0, "HomeLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Workspace Items size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/home/HomeLoader;->mBgPagesItems:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2440
    monitor-exit v1

    .line 2441
    return-void

    .line 2436
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mPageLoaderTask:Lcom/android/launcher3/common/model/DataLoader$PageLoaderTask;

    check-cast v0, Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask;

    .line 2437
    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask;->isStopped()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 2440
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public enableAppsButton(Landroid/content/Context;Lcom/android/launcher3/common/base/item/IconInfo;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appsButton"    # Lcom/android/launcher3/common/base/item/IconInfo;

    .prologue
    .line 4562
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportHomeModeChange()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4563
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4564
    const-string v1, "HomeLoader"

    const-string v2, "Do not call enableAppsButton in homeOnlyMode"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4594
    :goto_0
    return-void

    .line 4567
    :cond_0
    new-instance v0, Lcom/android/launcher3/home/HomeLoader$45;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/launcher3/home/HomeLoader$45;-><init>(Lcom/android/launcher3/home/HomeLoader;Landroid/content/Context;Lcom/android/launcher3/common/base/item/IconInfo;)V

    .line 4593
    .local v0, "r":Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/android/launcher3/home/HomeLoader;->runOnWorkerThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public filterCurrentPageItems(JLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 13
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
    .line 2896
    .local p3, "allWorkspaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .local p4, "currentScreenItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .local p5, "otherScreenItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 2897
    .local v5, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2898
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 2899
    .local v2, "i":Lcom/android/launcher3/common/base/item/ItemInfo;
    if-nez v2, :cond_0

    .line 2900
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 2907
    .end local v2    # "i":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_1
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 2908
    .local v4, "itemsOnScreen":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    new-instance v6, Lcom/android/launcher3/home/HomeLoader$30;

    invoke-direct {v6, p0}, Lcom/android/launcher3/home/HomeLoader$30;-><init>(Lcom/android/launcher3/home/HomeLoader;)V

    move-object/from16 v0, p3

    invoke-static {v0, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2914
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 2915
    .local v3, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-wide v8, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v10, -0x64

    cmp-long v7, v8, v10

    if-nez v7, :cond_3

    .line 2916
    iget-wide v8, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    cmp-long v7, v8, p1

    if-nez v7, :cond_2

    .line 2917
    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2918
    iget-wide v8, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2920
    :cond_2
    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2922
    :cond_3
    iget-wide v8, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v10, -0x65

    cmp-long v7, v8, v10

    if-nez v7, :cond_4

    .line 2923
    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2924
    iget-wide v8, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2926
    :cond_4
    iget-wide v8, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 2927
    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2928
    iget-wide v8, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2930
    :cond_5
    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2934
    .end local v3    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_6
    return-void
.end method

.method findFolderById(Ljava/lang/Long;)Lcom/android/launcher3/folder/FolderInfo;
    .locals 4
    .param p1, "folderId"    # Ljava/lang/Long;

    .prologue
    .line 2428
    sget-object v1, Lcom/android/launcher3/home/HomeLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2429
    :try_start_0
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sBgFolders:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/folder/FolderInfo;

    monitor-exit v1

    return-object v0

    .line 2430
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAllAppItemInHome()Ljava/util/ArrayList;
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

    .line 3552
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3553
    .local v0, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3554
    .local v1, "folderIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    sget-object v5, Lcom/android/launcher3/home/HomeLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v5

    .line 3555
    :try_start_0
    sget-object v4, Lcom/android/launcher3/home/HomeLoader;->sBgFolders:Lcom/android/launcher3/util/LongArrayMap;

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

    .line 3556
    .local v2, "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    iget-wide v6, v2, Lcom/android/launcher3/folder/FolderInfo;->container:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_1

    iget-wide v6, v2, Lcom/android/launcher3/folder/FolderInfo;->container:J

    cmp-long v6, v6, v10

    if-nez v6, :cond_0

    .line 3558
    :cond_1
    iget-wide v6, v2, Lcom/android/launcher3/folder/FolderInfo;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3574
    .end local v2    # "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 3561
    :cond_2
    :try_start_1
    sget-object v4, Lcom/android/launcher3/home/HomeLoader;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v4}, Lcom/android/launcher3/util/LongArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 3562
    .local v3, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget v6, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    if-nez v6, :cond_3

    iget-wide v6, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_4

    iget-wide v6, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    cmp-long v6, v6, v10

    if-eqz v6, :cond_4

    iget-wide v6, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    .line 3565
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 3566
    :cond_4
    iget-object v6, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    if-nez v6, :cond_5

    .line 3567
    invoke-virtual {v3}, Lcom/android/launcher3/common/base/item/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    iput-object v6, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    .line 3568
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3570
    :cond_5
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3574
    .end local v3    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_6
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3575
    return-object v0
.end method

.method public getAppsButton()Lcom/android/launcher3/common/base/item/IconInfo;
    .locals 5

    .prologue
    .line 3974
    sget-object v3, Lcom/android/launcher3/home/HomeLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v3

    .line 3975
    :try_start_0
    iget-object v2, p0, Lcom/android/launcher3/home/HomeLoader;->mBgHotseatItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 3976
    .local v1, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    instance-of v2, v1, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v2, :cond_0

    move-object v0, v1

    check-cast v0, Lcom/android/launcher3/common/base/item/IconInfo;

    move-object v2, v0

    iget-boolean v2, v2, Lcom/android/launcher3/common/base/item/IconInfo;->isAppsButton:Z

    if-eqz v2, :cond_0

    .line 3977
    check-cast v1, Lcom/android/launcher3/common/base/item/IconInfo;

    .end local v1    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    monitor-exit v3

    .line 3981
    :goto_0
    return-object v1

    .line 3980
    :cond_1
    monitor-exit v3

    .line 3981
    const/4 v1, 0x0

    goto :goto_0

    .line 3980
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getHotseatItemCount()I
    .locals 1

    .prologue
    .line 3080
    iget-boolean v0, p0, Lcom/android/launcher3/home/HomeLoader;->mIsFirstBind:Z

    if-eqz v0, :cond_0

    .line 3081
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    invoke-virtual {v0}, Lcom/android/launcher3/common/model/FavoritesProvider;->loadHotseatCount()I

    move-result v0

    .line 3083
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mBgHotseatItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getIgnorePackage(Ljava/util/HashSet;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1988
    .local p1, "packagesToIgnore":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    sget-object v6, Lcom/android/launcher3/home/HomeLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1989
    :try_start_0
    sget-object v5, Lcom/android/launcher3/home/HomeLoader;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v5}, Lcom/android/launcher3/util/LongArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 1990
    .local v1, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    instance-of v7, v1, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v7, :cond_1

    .line 1991
    move-object v0, v1

    check-cast v0, Lcom/android/launcher3/common/base/item/IconInfo;

    move-object v4, v0

    .line 1992
    .local v4, "si":Lcom/android/launcher3/common/base/item/IconInfo;
    invoke-virtual {v4}, Lcom/android/launcher3/common/base/item/IconInfo;->isPromise()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v4}, Lcom/android/launcher3/common/base/item/IconInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 1993
    invoke-virtual {v4}, Lcom/android/launcher3/common/base/item/IconInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1994
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1995
    const-string v7, "HomeLoader"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IgnorePackage: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", status: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v4, Lcom/android/launcher3/common/base/item/IconInfo;->status:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2004
    .end local v1    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "si":Lcom/android/launcher3/common/base/item/IconInfo;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 1997
    .restart local v1    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_1
    :try_start_1
    instance-of v7, v1, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    if-eqz v7, :cond_0

    .line 1998
    move-object v0, v1

    check-cast v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    move-object v2, v0

    .line 1999
    .local v2, "lawi":Lcom/android/launcher3/home/LauncherAppWidgetInfo;
    const/4 v7, 0x2

    invoke-virtual {v2, v7}, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2000
    iget-object v7, v2, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2004
    .end local v1    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v2    # "lawi":Lcom/android/launcher3/home/LauncherAppWidgetInfo;
    :cond_2
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2005
    return-void
.end method

.method getItemById(J)Lcom/android/launcher3/common/base/item/ItemInfo;
    .locals 3
    .param p1, "key"    # J

    .prologue
    .line 2775
    sget-object v1, Lcom/android/launcher3/home/HomeLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2776
    :try_start_0
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    monitor-exit v1

    return-object v0

    .line 2777
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getItemPositionHelper()Lcom/android/launcher3/home/HomeItemPositionHelper;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mItemPositionHelper:Lcom/android/launcher3/home/HomeItemPositionHelper;

    return-object v0
.end method

.method getItemsForDexSync()Ljava/util/ArrayList;
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
    const-wide/16 v10, -0x66

    .line 3579
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3580
    .local v0, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    sget-object v4, Lcom/android/launcher3/home/HomeLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v4

    .line 3581
    :try_start_0
    sget-object v3, Lcom/android/launcher3/home/HomeLoader;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v3}, Lcom/android/launcher3/util/LongArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 3582
    .local v2, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-wide v6, v2, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-lez v5, :cond_1

    .line 3584
    iget-wide v6, v2, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    invoke-virtual {p0, v6, v7}, Lcom/android/launcher3/home/HomeLoader;->getItemById(J)Lcom/android/launcher3/common/base/item/ItemInfo;

    move-result-object v1

    .line 3585
    .local v1, "folder":Lcom/android/launcher3/common/base/item/ItemInfo;
    if-eqz v1, :cond_0

    iget-wide v6, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    cmp-long v5, v6, v10

    if-eqz v5, :cond_0

    .line 3586
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3595
    .end local v1    # "folder":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v2    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 3589
    .restart local v2    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_1
    :try_start_1
    iget-wide v6, v2, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    cmp-long v5, v6, v10

    if-eqz v5, :cond_0

    iget v5, v2, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    const/4 v6, 0x4

    if-eq v5, v6, :cond_0

    .line 3591
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3595
    .end local v2    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_2
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3596
    return-object v0
.end method

.method protected getUpdater()Lcom/android/launcher3/common/model/DataUpdater;
    .locals 1

    .prologue
    .line 3051
    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    return-object v0
.end method

.method getUser(J)Lcom/android/launcher3/common/compat/UserHandleCompat;
    .locals 1
    .param p1, "serialNumber"    # J

    .prologue
    .line 4019
    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mAllUsers:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/compat/UserHandleCompat;

    return-object v0
.end method

.method getWorkspaceScreenCount()I
    .locals 1

    .prologue
    .line 3067
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/HomeLoader;->getWorkspaceScreenCount(Z)I

    move-result v0

    return v0
.end method

.method public getWorkspaceScreenCount(Z)I
    .locals 2
    .param p1, "fromDb"    # Z

    .prologue
    .line 3055
    if-eqz p1, :cond_0

    .line 3056
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    invoke-virtual {v0}, Lcom/android/launcher3/common/model/FavoritesProvider;->loadScreensFromDb()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3062
    :goto_0
    return v0

    .line 3058
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mBgOrderedScreens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 3059
    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mBgOrderedScreens:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/launcher3/home/HomeLoader;->sFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    invoke-virtual {v1}, Lcom/android/launcher3/common/model/FavoritesProvider;->loadScreensFromDb()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3062
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mBgOrderedScreens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method getWorkspaceScreenId(I)J
    .locals 2
    .param p1, "rank"    # I

    .prologue
    .line 3071
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeLoader;->getWorkspaceScreenCount()I

    move-result v0

    if-ge v0, p1, :cond_0

    .line 3072
    const-string v0, "HomeLoader"

    const-string v1, "wrong rank value for screen requested"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3073
    const-wide/16 v0, -0x1

    .line 3076
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mBgOrderedScreens:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0
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
    .line 2609
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/home/HomeLoader;->updateHideItems(Ljava/util/ArrayList;Z)V

    .line 2610
    return-void
.end method

.method infoFromShortcutIntent(Landroid/content/Context;Landroid/content/Intent;)Lcom/android/launcher3/common/base/item/IconInfo;
    .locals 23
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 2952
    const-string v20, "android.intent.extra.shortcut.INTENT"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Landroid/content/Intent;

    .line 2953
    .local v10, "intent":Landroid/content/Intent;
    const-string v20, "android.intent.extra.shortcut.NAME"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 2954
    .local v13, "name":Ljava/lang/String;
    const-string v20, "android.intent.extra.shortcut.ICON"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    .line 2956
    .local v4, "bitmap":Landroid/os/Parcelable;
    invoke-static/range {p1 .. p1}, Lcom/android/launcher3/util/DualAppUtils;->supportDualApp(Landroid/content/Context;)Z

    move-result v20

    if-eqz v20, :cond_0

    invoke-static/range {p2 .. p2}, Lcom/android/launcher3/common/compat/UserHandleCompat;->fromIntent(Landroid/content/Intent;)Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v11

    .line 2958
    .local v11, "intentUser":Lcom/android/launcher3/common/compat/UserHandleCompat;
    :goto_0
    if-nez v10, :cond_1

    .line 2960
    const-string v20, "HomeLoader"

    const-string v21, "Can\'t construct ShorcutInfo with null intent"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2961
    const/4 v9, 0x0

    .line 3034
    .end local v4    # "bitmap":Landroid/os/Parcelable;
    .end local v11    # "intentUser":Lcom/android/launcher3/common/compat/UserHandleCompat;
    :goto_1
    return-object v9

    .line 2956
    .restart local v4    # "bitmap":Landroid/os/Parcelable;
    :cond_0
    const/4 v11, 0x0

    goto :goto_0

    .line 2964
    .restart local v11    # "intentUser":Lcom/android/launcher3/common/compat/UserHandleCompat;
    :cond_1
    const/4 v7, 0x0

    .line 2965
    .local v7, "icon":Landroid/graphics/Bitmap;
    const/4 v5, 0x0

    .line 2966
    .local v5, "customIcon":Z
    const/4 v8, 0x0

    .line 2968
    .local v8, "iconResource":Landroid/content/Intent$ShortcutIconResource;
    instance-of v0, v4, Landroid/graphics/Bitmap;

    move/from16 v20, v0

    if-eqz v20, :cond_8

    .line 2969
    check-cast v4, Landroid/graphics/Bitmap;

    .end local v4    # "bitmap":Landroid/os/Parcelable;
    move-object/from16 v0, p1

    invoke-static {v4, v0}, Lcom/android/launcher3/util/BitmapUtils;->createIconBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 2979
    :cond_2
    :goto_2
    new-instance v9, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-direct {v9}, Lcom/android/launcher3/common/base/item/IconInfo;-><init>()V

    .line 2980
    .local v9, "info":Lcom/android/launcher3/common/base/item/IconInfo;
    const/16 v20, 0x1

    move/from16 v0, v20

    iput v0, v9, Lcom/android/launcher3/common/base/item/IconInfo;->itemType:I

    .line 2982
    if-eqz v7, :cond_3

    .line 2983
    invoke-virtual {v9, v7}, Lcom/android/launcher3/common/base/item/IconInfo;->setOriginalIcon(Landroid/graphics/Bitmap;)V

    .line 2984
    const/4 v5, 0x1

    .line 2987
    :cond_3
    if-eqz v11, :cond_9

    .end local v11    # "intentUser":Lcom/android/launcher3/common/compat/UserHandleCompat;
    :goto_3
    iput-object v11, v9, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    .line 2988
    const-string v20, "HomeLoader"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "infoFromShortcutIntent EXTRA_USER "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget-object v0, v9, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher3/common/compat/UserHandleCompat;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2989
    invoke-static {v10}, Lcom/android/launcher3/common/view/IconView;->isKnoxShortcut(Landroid/content/Intent;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 2990
    sget-object v20, Lcom/android/launcher3/home/HomeLoader;->sUserManager:Lcom/android/launcher3/common/compat/UserManagerCompat;

    iget-object v0, v9, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher3/common/compat/UserHandleCompat;)J

    move-result-wide v16

    .line 2991
    .local v16, "userDefaultSerial":J
    const-string v20, "userid"

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v21, v0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v18, v0

    .line 2994
    .local v18, "userSerial":J
    const-wide/16 v20, 0x64

    cmp-long v20, v18, v20

    if-ltz v20, :cond_4

    .line 2995
    sget-object v20, Lcom/android/launcher3/home/HomeLoader;->sUserManager:Lcom/android/launcher3/common/compat/UserManagerCompat;

    move-object/from16 v0, v20

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getUserForSerialNumber(J)Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v9, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    .line 2999
    .end local v16    # "userDefaultSerial":J
    .end local v18    # "userSerial":J
    :cond_4
    if-nez v7, :cond_5

    .line 3000
    sget-object v20, Lcom/android/launcher3/home/HomeLoader;->sIconCache:Lcom/android/launcher3/common/model/IconCache;

    iget-object v0, v9, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/android/launcher3/common/model/IconCache;->getDefaultIcon(Lcom/android/launcher3/common/compat/UserHandleCompat;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 3001
    const/16 v20, 0x1

    move/from16 v0, v20

    iput-boolean v0, v9, Lcom/android/launcher3/common/base/item/IconInfo;->usingFallbackIcon:Z

    .line 3004
    :cond_5
    if-eqz v5, :cond_6

    .line 3005
    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v20

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-static {v0, v7, v1}, Lcom/android/launcher3/util/ShortcutTray;->getIcon(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/content/ComponentName;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 3006
    invoke-static/range {p1 .. p1}, Lcom/android/launcher3/util/DualAppUtils;->supportDualApp(Landroid/content/Context;)Z

    move-result v20

    if-eqz v20, :cond_6

    iget-object v0, v9, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/launcher3/util/DualAppUtils;->isDualAppId(Lcom/android/launcher3/common/compat/UserHandleCompat;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 3007
    sget-object v20, Lcom/android/launcher3/home/HomeLoader;->sProfile:Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    move-object/from16 v20, v0

    .line 3008
    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getIconSize()I

    move-result v20

    iget-object v0, v9, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher3/common/compat/UserHandleCompat;->getUser()Landroid/os/UserHandle;

    move-result-object v21

    .line 3007
    move-object/from16 v0, p1

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v0, v7, v1, v2}, Lcom/android/launcher3/util/DualAppUtils;->makeUserBadgedIcon(Landroid/content/Context;Landroid/graphics/Bitmap;ILandroid/os/UserHandle;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 3011
    :cond_6
    invoke-virtual {v9, v7}, Lcom/android/launcher3/common/base/item/IconInfo;->setIcon(Landroid/graphics/Bitmap;)V

    .line 3013
    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v20

    if-eqz v20, :cond_7

    invoke-static {v10}, Lcom/android/launcher3/common/view/IconView;->isKnoxShortcut(Landroid/content/Intent;)Z

    move-result v20

    if-nez v20, :cond_7

    .line 3014
    sget-object v20, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    .line 3015
    .local v14, "pm":Landroid/content/pm/PackageManager;
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v14, v10, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v15

    .line 3017
    .local v15, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v15, :cond_7

    .line 3019
    sget-object v20, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    .line 3020
    move-object/from16 v0, v20

    invoke-static {v15, v0}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->fromResolveInfo(Landroid/content/pm/ResolveInfo;Landroid/content/Context;)Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;

    move-result-object v12

    .line 3021
    .local v12, "launcherInfo":Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    if-eqz v12, :cond_7

    .line 3022
    invoke-static {v12}, Lcom/android/launcher3/common/base/item/IconInfo;->initFlags(Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;)I

    move-result v20

    move/from16 v0, v20

    iput v0, v9, Lcom/android/launcher3/common/base/item/IconInfo;->flags:I

    .line 3027
    .end local v12    # "launcherInfo":Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    .end local v14    # "pm":Landroid/content/pm/PackageManager;
    .end local v15    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_7
    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v9, Lcom/android/launcher3/common/base/item/IconInfo;->componentName:Landroid/content/ComponentName;

    .line 3028
    invoke-static {v13}, Lcom/android/launcher3/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v9, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    .line 3029
    sget-object v20, Lcom/android/launcher3/home/HomeLoader;->sUserManager:Lcom/android/launcher3/common/compat/UserManagerCompat;

    iget-object v0, v9, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    iget-object v0, v9, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-object/from16 v22, v0

    invoke-virtual/range {v20 .. v22}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getBadgedLabelForUser(Ljava/lang/CharSequence;Lcom/android/launcher3/common/compat/UserHandleCompat;)Ljava/lang/CharSequence;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v9, Lcom/android/launcher3/common/base/item/IconInfo;->contentDescription:Ljava/lang/CharSequence;

    .line 3030
    iput-object v10, v9, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    .line 3031
    iput-boolean v5, v9, Lcom/android/launcher3/common/base/item/IconInfo;->customIcon:Z

    .line 3032
    iput-object v8, v9, Lcom/android/launcher3/common/base/item/IconInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    goto/16 :goto_1

    .line 2971
    .end local v9    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    .restart local v4    # "bitmap":Landroid/os/Parcelable;
    .restart local v11    # "intentUser":Lcom/android/launcher3/common/compat/UserHandleCompat;
    :cond_8
    const-string v20, "android.intent.extra.shortcut.ICON_RESOURCE"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    .line 2972
    .local v6, "extra":Landroid/os/Parcelable;
    instance-of v0, v6, Landroid/content/Intent$ShortcutIconResource;

    move/from16 v20, v0

    if-eqz v20, :cond_2

    move-object v8, v6

    .line 2973
    check-cast v8, Landroid/content/Intent$ShortcutIconResource;

    .line 2974
    iget-object v0, v8, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    iget-object v0, v8, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/util/BitmapUtils;->createIconBitmap(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v7

    goto/16 :goto_2

    .line 2987
    .end local v4    # "bitmap":Landroid/os/Parcelable;
    .end local v6    # "extra":Landroid/os/Parcelable;
    .restart local v9    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_9
    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v11

    goto/16 :goto_3
.end method

.method insertWorkspaceScreen(Landroid/content/Context;IJ)J
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "insertIndex"    # I
    .param p3, "insertScreenId"    # J

    .prologue
    const-wide/16 v4, -0x1

    .line 3650
    sget-object v1, Lcom/android/launcher3/home/HomeLoader;->sFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    invoke-virtual {v1}, Lcom/android/launcher3/common/model/FavoritesProvider;->loadScreensFromDb()Ljava/util/ArrayList;

    move-result-object v0

    .line 3652
    .local v0, "workspaceScreens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v1, p2, :cond_1

    .line 3653
    const-string v1, "HomeLoader"

    const-string v2, "insert page should be less than total workspace screen count."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3677
    :cond_0
    :goto_0
    return-wide v4

    .line 3657
    :cond_1
    cmp-long v1, p3, v4

    if-nez v1, :cond_2

    .line 3658
    invoke-static {}, Lcom/android/launcher3/common/model/FavoritesProvider;->getInstance()Lcom/android/launcher3/common/model/FavoritesProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/common/model/FavoritesProvider;->generateNewScreenId()J

    move-result-wide v4

    .line 3660
    .local v4, "screenId":J
    :goto_1
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3663
    iget-object v1, p0, Lcom/android/launcher3/home/HomeLoader;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    invoke-virtual {v1, p1, v0}, Lcom/android/launcher3/common/model/FavoritesUpdater;->updateScreenOrder(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 3665
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3666
    invoke-direct {p0}, Lcom/android/launcher3/home/HomeLoader;->getCallback()Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    move-result-object v3

    .line 3667
    .local v3, "callbacks":Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;
    new-instance v1, Lcom/android/launcher3/home/HomeLoader$35;

    move-object v2, p0

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher3/home/HomeLoader$35;-><init>(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;JI)V

    invoke-virtual {p0, v1}, Lcom/android/launcher3/home/HomeLoader;->runOnMainThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .end local v3    # "callbacks":Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;
    .end local v4    # "screenId":J
    :cond_2
    move-wide v4, p3

    .line 3658
    goto :goto_1
.end method

.method protected loadDefaultLayout(Lcom/android/launcher3/common/model/AutoInstallsLayout;ZZ)V
    .locals 10
    .param p1, "autoInstallLayout"    # Lcom/android/launcher3/common/model/AutoInstallsLayout;
    .param p2, "isSwitchedDb"    # Z
    .param p3, "reloadPostPosition"    # Z

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 3287
    const/4 v0, 0x0

    .line 3288
    .local v0, "parser":Lcom/android/launcher3/home/HomeDefaultLayoutParser;
    if-eqz p1, :cond_0

    .line 3289
    const-string v1, "HomeLoader"

    const-string v2, "use auto install layout for home"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3290
    invoke-virtual {p1}, Lcom/android/launcher3/common/model/AutoInstallsLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 3291
    .local v4, "res":Landroid/content/res/Resources;
    const-string v1, "default_workspace"

    const-string v2, "xml"

    invoke-virtual {p1}, Lcom/android/launcher3/common/model/AutoInstallsLayout;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 3293
    .local v5, "workspaceResId":I
    if-eqz v5, :cond_7

    .line 3294
    new-instance v0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;

    .end local v0    # "parser":Lcom/android/launcher3/home/HomeDefaultLayoutParser;
    sget-object v1, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    sget-object v2, Lcom/android/launcher3/home/HomeLoader;->sFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    invoke-virtual {v2}, Lcom/android/launcher3/common/model/FavoritesProvider;->getAppWidgetHost()Landroid/appwidget/AppWidgetHost;

    move-result-object v2

    sget-object v3, Lcom/android/launcher3/home/HomeLoader;->sFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/home/HomeDefaultLayoutParser;-><init>(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/android/launcher3/common/model/DefaultLayoutParser$LayoutParserCallback;Landroid/content/res/Resources;I)V

    .line 3302
    .end local v4    # "res":Landroid/content/res/Resources;
    .end local v5    # "workspaceResId":I
    .restart local v0    # "parser":Lcom/android/launcher3/home/HomeDefaultLayoutParser;
    :cond_0
    :goto_0
    if-eqz v0, :cond_8

    move v6, v7

    .line 3303
    .local v6, "usingExternallyProvidedLayout":Z
    :goto_1
    if-nez v0, :cond_1

    .line 3304
    invoke-direct {p0}, Lcom/android/launcher3/home/HomeLoader;->getDefaultLayoutParser()Lcom/android/launcher3/home/HomeDefaultLayoutParser;

    move-result-object v0

    .line 3309
    :cond_1
    if-nez p3, :cond_3

    .line 3310
    if-nez p2, :cond_9

    .line 3311
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getLauncherProvider()Lcom/android/launcher3/LauncherProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherProvider;->createEmptyDB()V

    .line 3314
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportHomeModeChange()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3315
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled(Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3316
    sget-object v1, Lcom/android/launcher3/home/HomeLoader;->sFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    invoke-virtual {v1, v7, v7}, Lcom/android/launcher3/common/model/FavoritesProvider;->switchTable(IZ)Z

    .line 3318
    :cond_2
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportEasyModeChange()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3319
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->isEasyModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3320
    sget-object v1, Lcom/android/launcher3/home/HomeLoader;->sFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    invoke-virtual {v1, v9, v7}, Lcom/android/launcher3/common/model/FavoritesProvider;->switchTable(IZ)Z

    .line 3327
    :cond_3
    :goto_2
    invoke-virtual {v0, p3}, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->setReloadPostPosition(Z)V

    .line 3330
    sget-object v1, Lcom/android/launcher3/home/HomeLoader;->sFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/common/model/FavoritesProvider;->loadFavorites(Lcom/android/launcher3/common/model/DefaultLayoutParser;)I

    move-result v1

    if-gtz v1, :cond_6

    .line 3331
    if-eqz v6, :cond_6

    .line 3333
    if-nez p2, :cond_5

    if-nez p3, :cond_5

    .line 3334
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getLauncherProvider()Lcom/android/launcher3/LauncherProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherProvider;->createEmptyDB()V

    .line 3337
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportHomeModeChange()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3338
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled(Z)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3339
    sget-object v1, Lcom/android/launcher3/home/HomeLoader;->sFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    invoke-virtual {v1, v7, v7}, Lcom/android/launcher3/common/model/FavoritesProvider;->switchTable(IZ)Z

    .line 3341
    :cond_4
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportEasyModeChange()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3342
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->isEasyModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3343
    sget-object v1, Lcom/android/launcher3/home/HomeLoader;->sFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    invoke-virtual {v1, v9, v7}, Lcom/android/launcher3/common/model/FavoritesProvider;->switchTable(IZ)Z

    .line 3346
    :cond_5
    sget-object v1, Lcom/android/launcher3/home/HomeLoader;->sFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    invoke-direct {p0}, Lcom/android/launcher3/home/HomeLoader;->getDefaultLayoutParser()Lcom/android/launcher3/home/HomeDefaultLayoutParser;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/common/model/FavoritesProvider;->loadFavorites(Lcom/android/launcher3/common/model/DefaultLayoutParser;)I

    .line 3349
    :cond_6
    return-void

    .line 3297
    .end local v6    # "usingExternallyProvidedLayout":Z
    .restart local v4    # "res":Landroid/content/res/Resources;
    .restart local v5    # "workspaceResId":I
    :cond_7
    const-string v1, "HomeLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "default_workspace layout not found in package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3298
    invoke-virtual {p1}, Lcom/android/launcher3/common/model/AutoInstallsLayout;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3297
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v4    # "res":Landroid/content/res/Resources;
    .end local v5    # "workspaceResId":I
    :cond_8
    move v6, v8

    .line 3302
    goto/16 :goto_1

    .line 3323
    .restart local v6    # "usingExternallyProvidedLayout":Z
    :cond_9
    sget-object v1, Lcom/android/launcher3/home/HomeLoader;->sFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    const-string v2, "favorites"

    invoke-virtual {v1, v2}, Lcom/android/launcher3/common/model/FavoritesProvider;->deleteTable(Ljava/lang/String;)V

    .line 3324
    sget-object v1, Lcom/android/launcher3/home/HomeLoader;->sFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    const-string v2, "workspaceScreens"

    invoke-virtual {v1, v2}, Lcom/android/launcher3/common/model/FavoritesProvider;->deleteTable(Ljava/lang/String;)V

    goto :goto_2
.end method

.method protected loadDefaultLayoutCompleted()V
    .locals 3

    .prologue
    .line 3353
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportCustomerDialerChange()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3355
    invoke-direct {p0}, Lcom/android/launcher3/home/HomeLoader;->saveCustomerPageKey()V

    .line 3357
    sget-object v0, Lcom/android/launcher3/home/HomeLoader;->sContentResolver:Landroid/content/ContentResolver;

    const-string v1, "skt_phone20_settings"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3358
    invoke-direct {p0}, Lcom/android/launcher3/home/HomeLoader;->changeDialerAppOnLoadDefaultLayout()V

    .line 3362
    :cond_0
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportEasyModeChange()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3363
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->isEasyModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3364
    invoke-direct {p0}, Lcom/android/launcher3/home/HomeLoader;->addAppsButtonForEasy()V

    .line 3366
    :cond_1
    return-void
.end method

.method public loadPageItems(ILcom/android/launcher3/common/model/DataLoader$DataLoaderState;)Ljava/util/ArrayList;
    .locals 35
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
    .line 529
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/home/HomeLoader;->getCallback()Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    move-result-object v27

    .line 530
    .local v27, "oldCallbacks":Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;
    if-nez v27, :cond_1

    .line 531
    const-string v2, "HomeLoader"

    const-string v7, "loadPageItems running with no launcher"

    invoke-static {v2, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    const/4 v11, 0x0

    .line 671
    :cond_0
    :goto_0
    return-object v11

    .line 535
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeLoader;->mBgOrderedScreens:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 536
    const-string v2, "HomeLoader"

    const-string v7, "loadPageItems running with no screen : check favorites"

    invoke-static {v2, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/home/HomeLoader;->checkWorkspaceIsEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 539
    const-string v2, "HomeLoader"

    const-string v7, "loadPageItems running with no screen : mBgOrderedScreens.isEmpty()"

    invoke-static {v2, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    const/4 v11, 0x0

    goto :goto_0

    .line 544
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v32

    .line 545
    .local v32, "t":J
    if-gez p1, :cond_3

    .line 546
    invoke-interface/range {v27 .. v27}, Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;->getCurrentWorkspaceScreen()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/home/HomeLoader;->mBgOrderedScreens:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-static {v2, v7}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 548
    :cond_3
    if-ltz p1, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeLoader;->mBgOrderedScreens:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, p1

    if-lt v0, v2, :cond_5

    .line 549
    :cond_4
    const-string v2, "HomeLoader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "loadPageItems this rank is invalid : rank "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    const/4 v11, 0x0

    goto :goto_0

    .line 553
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeLoader;->mBgOrderedScreens:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v30

    .line 554
    .local v30, "screen":J
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 555
    .local v11, "pageItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 556
    .local v10, "needHandlingItems":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/ArrayList<*>;>;"
    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v10, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v10, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v10, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v10, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    sget-object v3, Lcom/android/launcher3/common/model/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    .line 563
    .local v3, "contentUri":Landroid/net/Uri;
    const/4 v4, 0x0

    .line 566
    .local v4, "projection":[Ljava/lang/String;
    const/16 v25, 0x0

    .line 567
    .local v25, "isReArrangeHotseatData":Z
    new-instance v12, Lcom/android/launcher3/util/LongArrayMap;

    invoke-direct {v12}, Lcom/android/launcher3/util/LongArrayMap;-><init>()V

    .line 568
    .local v12, "occupied":Lcom/android/launcher3/util/LongArrayMap;, "Lcom/android/launcher3/util/LongArrayMap<[[Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    const-wide/16 v14, 0x0

    sget-object v2, Lcom/android/launcher3/home/HomeLoader;->sProfile:Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    iget-object v2, v2, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountX()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    sget-object v7, Lcom/android/launcher3/home/HomeLoader;->sProfile:Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    iget-object v7, v7, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    .line 569
    invoke-virtual {v7}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountY()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    filled-new-array {v2, v7}, [I

    move-result-object v2

    const-class v7, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-static {v7, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 568
    invoke-virtual {v12, v14, v15, v2}, Lcom/android/launcher3/util/LongArrayMap;->put(JLjava/lang/Object;)V

    .line 570
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher3/home/HomeLoader;->mIsFirstBind:Z

    if-eqz v2, :cond_6

    .line 571
    const-string v5, "(screen=? AND container=?) OR (container=?)"

    .line 573
    .local v5, "selection":Ljava/lang/String;
    const/4 v2, 0x3

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static/range {v30 .. v31}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    const/4 v2, 0x1

    const/16 v7, -0x64

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    const/4 v2, 0x2

    const/16 v7, -0x65

    .line 574
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    .line 575
    .local v6, "selectionArg":[Ljava/lang/String;
    const/16 v25, 0x1

    .line 576
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v2

    .line 577
    invoke-virtual {v2}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->getMaxHotseatCount()I

    move-result v23

    .line 578
    .local v23, "hotseatCount":I
    const-wide/16 v14, 0x1

    const/4 v2, 0x1

    move/from16 v0, v23

    filled-new-array {v0, v2}, [I

    move-result-object v2

    const-class v7, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-static {v7, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-virtual {v12, v14, v15, v2}, Lcom/android/launcher3/util/LongArrayMap;->put(JLjava/lang/Object;)V

    .line 584
    .end local v23    # "hotseatCount":I
    :goto_1
    sget-object v2, Lcom/android/launcher3/home/HomeLoader;->sContentResolver:Landroid/content/ContentResolver;

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 589
    .local v8, "c":Landroid/database/Cursor;
    if-nez v8, :cond_7

    .line 590
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 580
    .end local v5    # "selection":Ljava/lang/String;
    .end local v6    # "selectionArg":[Ljava/lang/String;
    .end local v8    # "c":Landroid/database/Cursor;
    :cond_6
    const-string v5, "screen=? AND container=?"

    .line 581
    .restart local v5    # "selection":Ljava/lang/String;
    const/4 v2, 0x2

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static/range {v30 .. v31}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    const/4 v2, 0x1

    const/16 v7, -0x64

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    .restart local v6    # "selectionArg":[Ljava/lang/String;
    goto :goto_1

    .line 593
    .restart local v8    # "c":Landroid/database/Cursor;
    :cond_7
    new-instance v9, Lcom/android/launcher3/common/model/CursorInfo;

    invoke-direct {v9, v8}, Lcom/android/launcher3/common/model/CursorInfo;-><init>(Landroid/database/Cursor;)V

    .local v9, "cursorIconInfo":Lcom/android/launcher3/common/model/CursorInfo;
    move-object/from16 v7, p0

    move-object/from16 v13, p2

    .line 596
    :try_start_0
    invoke-direct/range {v7 .. v13}, Lcom/android/launcher3/home/HomeLoader;->createItems(Landroid/database/Cursor;Lcom/android/launcher3/common/model/CursorInfo;Ljava/util/HashMap;Ljava/util/ArrayList;Lcom/android/launcher3/util/LongArrayMap;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)Lcom/android/launcher3/util/LongArrayMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v21

    .line 598
    .local v21, "folders":Lcom/android/launcher3/util/LongArrayMap;, "Lcom/android/launcher3/util/LongArrayMap<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_8

    .line 599
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 602
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/HomeLoader;->isStopped(Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 603
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 598
    .end local v21    # "folders":Lcom/android/launcher3/util/LongArrayMap;, "Lcom/android/launcher3/util/LongArrayMap<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    :catchall_0
    move-exception v2

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    if-nez v7, :cond_9

    .line 599
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v2

    .line 606
    .restart local v21    # "folders":Lcom/android/launcher3/util/LongArrayMap;, "Lcom/android/launcher3/util/LongArrayMap<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    :cond_a
    if-eqz v21, :cond_b

    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher3/util/LongArrayMap;->size()I

    move-result v2

    if-lez v2, :cond_b

    .line 607
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "container in ("

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/HomeLoader;->makeFoldersIdToString(Lcom/android/launcher3/util/LongArrayMap;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v7, 0x29

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 608
    sget-object v13, Lcom/android/launcher3/home/HomeLoader;->sContentResolver:Landroid/content/ContentResolver;

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v14, v3

    move-object v15, v4

    move-object/from16 v16, v5

    invoke-virtual/range {v13 .. v18}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 610
    if-eqz v8, :cond_d

    move-object/from16 v7, p0

    move-object/from16 v13, p2

    .line 612
    :try_start_1
    invoke-direct/range {v7 .. v13}, Lcom/android/launcher3/home/HomeLoader;->createItems(Landroid/database/Cursor;Lcom/android/launcher3/common/model/CursorInfo;Ljava/util/HashMap;Ljava/util/ArrayList;Lcom/android/launcher3/util/LongArrayMap;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)Lcom/android/launcher3/util/LongArrayMap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 614
    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_b

    .line 615
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 623
    :cond_b
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/HomeLoader;->isStopped(Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 624
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 614
    :catchall_1
    move-exception v2

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    if-nez v7, :cond_c

    .line 615
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_c
    throw v2

    .line 619
    :cond_d
    const-string v2, "HomeLoader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Cursor is null. Exist empty folder. folders size : "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher3/util/LongArrayMap;->size()I

    move-result v13

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 628
    :cond_e
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/android/launcher3/home/HomeLoader;->doHandlingItems(Ljava/util/HashMap;Ljava/util/ArrayList;)V

    .line 631
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/HomeLoader;->sortItemsInFolder(Lcom/android/launcher3/util/LongArrayMap;)V

    .line 633
    if-eqz v25, :cond_f

    .line 634
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v2}, Lcom/android/launcher3/home/HomeLoader;->reArrangeHotseatData(Ljava/util/ArrayList;I)V

    .line 638
    :cond_f
    const-string v2, "HomeLoader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "loaded workspace in "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    sub-long v14, v14, v32

    invoke-virtual {v7, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v13, "ms"

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    const-string v2, "HomeLoader"

    const-string v7, "workspace layout: "

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    sget-object v2, Lcom/android/launcher3/home/HomeLoader;->sProfile:Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    iget-object v2, v2, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountX()I

    move-result v19

    .line 641
    .local v19, "countX":I
    sget-object v2, Lcom/android/launcher3/home/HomeLoader;->sProfile:Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    iget-object v2, v2, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountY()I

    move-result v20

    .line 643
    .local v20, "countY":I
    const/16 v34, 0x0

    .local v34, "y":I
    :goto_3
    move/from16 v0, v34

    move/from16 v1, v20

    if-ge v0, v1, :cond_13

    .line 644
    const-string v26, ""

    .line 645
    .local v26, "line":Ljava/lang/String;
    const-wide/16 v14, 0x0

    invoke-virtual {v12, v14, v15}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, [[Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 646
    .local v28, "page":[[Lcom/android/launcher3/common/base/item/ItemInfo;
    const/16 v29, 0x0

    .local v29, "x":I
    :goto_4
    move/from16 v0, v29

    move/from16 v1, v19

    if-ge v0, v1, :cond_12

    .line 647
    move-object/from16 v0, v28

    array-length v2, v0

    move/from16 v0, v29

    if-ge v0, v2, :cond_11

    aget-object v2, v28, v29

    array-length v2, v2

    move/from16 v0, v34

    if-ge v0, v2, :cond_11

    .line 648
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v2, v28, v29

    aget-object v2, v2, v34

    if-eqz v2, :cond_10

    const-string v2, "#"

    :goto_5
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 646
    :goto_6
    add-int/lit8 v29, v29, 0x1

    goto :goto_4

    .line 648
    :cond_10
    const-string v2, "."

    goto :goto_5

    .line 650
    :cond_11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "!"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    goto :goto_6

    .line 653
    :cond_12
    const-string v2, "HomeLoader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[ "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v13, " ]"

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    add-int/lit8 v34, v34, 0x1

    goto :goto_3

    .line 656
    .end local v26    # "line":Ljava/lang/String;
    .end local v28    # "page":[[Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v29    # "x":I
    :cond_13
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher3/home/HomeLoader;->mIsFirstBind:Z

    if-eqz v2, :cond_16

    .line 657
    const-string v2, "HomeLoader"

    const-string v7, "hotseat layout: "

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v2

    .line 659
    invoke-virtual {v2}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->getMaxHotseatCount()I

    move-result v23

    .line 660
    .restart local v23    # "hotseatCount":I
    const-string v26, ""

    .line 661
    .restart local v26    # "line":Ljava/lang/String;
    const-wide/16 v14, 0x1

    invoke-virtual {v12, v14, v15}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, [[Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 662
    .local v22, "hotseat":[[Lcom/android/launcher3/common/base/item/ItemInfo;
    const/16 v24, 0x0

    .local v24, "i":I
    :goto_7
    move/from16 v0, v24

    move/from16 v1, v23

    if-ge v0, v1, :cond_15

    .line 663
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v2, v22, v24

    const/4 v13, 0x0

    aget-object v2, v2, v13

    if-eqz v2, :cond_14

    const-string v2, "#"

    :goto_8
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 662
    add-int/lit8 v24, v24, 0x1

    goto :goto_7

    .line 663
    :cond_14
    const-string v2, "."

    goto :goto_8

    .line 665
    :cond_15
    const-string v2, "HomeLoader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[ "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v13, " ]"

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    .end local v22    # "hotseat":[[Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v23    # "hotseatCount":I
    .end local v24    # "i":I
    .end local v26    # "line":Ljava/lang/String;
    :cond_16
    if-ltz p1, :cond_0

    .line 669
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeLoader;->mIsPageLoaded:[Z

    const/4 v7, 0x1

    aput-boolean v7, v2, p1

    goto/16 :goto_0
.end method

.method registerCallbacks(Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;)V
    .locals 2
    .param p1, "callbacks"    # Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    .prologue
    .line 516
    iget-object v1, p0, Lcom/android/launcher3/home/HomeLoader;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 517
    :try_start_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mCallbacks:Ljava/lang/ref/WeakReference;

    .line 518
    monitor-exit v1

    .line 519
    return-void

    .line 518
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeHotseatItemByIndex(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 4601
    new-instance v0, Lcom/android/launcher3/home/HomeLoader$46;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/home/HomeLoader$46;-><init>(Lcom/android/launcher3/home/HomeLoader;I)V

    .line 4617
    .local v0, "r":Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/android/launcher3/home/HomeLoader;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 4618
    return-void
.end method

.method public removeItem(Landroid/content/ComponentName;Z)V
    .locals 1
    .param p1, "cn"    # Landroid/content/ComponentName;
    .param p2, "isWidget"    # Z

    .prologue
    .line 4530
    new-instance v0, Lcom/android/launcher3/home/HomeLoader$44;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/launcher3/home/HomeLoader$44;-><init>(Lcom/android/launcher3/home/HomeLoader;Landroid/content/ComponentName;Z)V

    invoke-static {v0}, Lcom/android/launcher3/home/HomeLoader;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 4559
    return-void
.end method

.method public removeItemsByPosition(IIIII)V
    .locals 7
    .param p1, "screen"    # I
    .param p2, "cellX"    # I
    .param p3, "cellY"    # I
    .param p4, "spanX"    # I
    .param p5, "spanY"    # I

    .prologue
    .line 4473
    new-instance v0, Lcom/android/launcher3/home/HomeLoader$43;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/home/HomeLoader$43;-><init>(Lcom/android/launcher3/home/HomeLoader;IIIII)V

    invoke-static {v0}, Lcom/android/launcher3/home/HomeLoader;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 4527
    return-void
.end method

.method public removePackagesAndComponents(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/launcher3/common/compat/UserHandleCompat;I)Ljava/util/ArrayList;
    .locals 14
    .param p3, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;
    .param p4, "reason"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;",
            "Lcom/android/launcher3/common/compat/UserHandleCompat;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2733
    .local p1, "removedPackageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, "removedApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 2734
    .local v5, "removedComponents":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 2735
    .local v12, "removedAppsInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    if-nez p4, :cond_2

    .line 2737
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 2738
    .local v11, "pn":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/launcher3/home/HomeLoader;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    move-object/from16 v0, p3

    invoke-virtual {v2, v11, v0}, Lcom/android/launcher3/common/model/FavoritesUpdater;->deletePackageFromDatabase(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    goto :goto_0

    .line 2741
    .end local v11    # "pn":Ljava/lang/String;
    :cond_0
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 2742
    .local v8, "a":Lcom/android/launcher3/common/base/item/ItemInfo;
    instance-of v1, v8, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    if-eqz v1, :cond_1

    move-object v1, v8

    check-cast v1, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    iget-object v9, v1, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    .line 2744
    .local v9, "cn":Landroid/content/ComponentName;
    :goto_2
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-static {v9, v0, v1}, Lcom/android/launcher3/home/HomeLoader;->getItemInfoByComponentName(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;Z)Ljava/util/ArrayList;

    move-result-object v10

    .line 2745
    .local v10, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    iget-object v1, p0, Lcom/android/launcher3/home/HomeLoader;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    invoke-virtual {v1, v10}, Lcom/android/launcher3/common/model/FavoritesUpdater;->deleteItemsFromDatabase(Ljava/util/ArrayList;)V

    .line 2746
    invoke-virtual {v5, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2747
    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2742
    .end local v9    # "cn":Landroid/content/ComponentName;
    .end local v10    # "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    :cond_1
    iget-object v9, v8, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    goto :goto_2

    .line 2752
    .end local v8    # "a":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_2
    sget-object v1, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    move-object/from16 v0, p3

    invoke-static {v1, p1, v0}, Lcom/android/launcher3/home/ExternalRequestQueue;->removeFromExternalRequestQueue(Landroid/content/Context;Ljava/util/ArrayList;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    .line 2754
    invoke-direct {p0}, Lcom/android/launcher3/home/HomeLoader;->getCallback()Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    move-result-object v3

    .line 2755
    .local v3, "callbacks":Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;
    if-nez v3, :cond_3

    .line 2756
    const-string v1, "HomeLoader"

    const-string v2, "removePackagesAndComponents Nobody to tell about the new app.  Launcher is probably loading."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2771
    :goto_3
    return-object v12

    .line 2761
    :cond_3
    sget-object v13, Lcom/android/launcher3/home/HomeLoader;->sHandler:Lcom/android/launcher3/common/model/DeferredHandler;

    new-instance v1, Lcom/android/launcher3/home/HomeLoader$25;

    move-object v2, p0

    move-object v4, p1

    move-object/from16 v6, p3

    move/from16 v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/launcher3/home/HomeLoader$25;-><init>(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;Ljava/util/ArrayList;Ljava/util/HashSet;Lcom/android/launcher3/common/compat/UserHandleCompat;I)V

    invoke-virtual {v13, v1}, Lcom/android/launcher3/common/model/DeferredHandler;->post(Ljava/lang/Runnable;)V

    goto :goto_3
.end method

.method public removePagesItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 4
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 3179
    sget-object v2, Lcom/android/launcher3/home/HomeLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3180
    :try_start_0
    iget-object v1, p0, Lcom/android/launcher3/home/HomeLoader;->mBgHotseatItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3181
    iget-object v1, p0, Lcom/android/launcher3/home/HomeLoader;->mBgHotseatItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3182
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/util/logging/SALogging;->updateLogValuesForHomeItems()V

    .line 3192
    :cond_0
    :goto_0
    monitor-exit v2

    .line 3193
    return-void

    .line 3184
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/home/HomeLoader;->mBgPagesItems:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 3185
    .local v0, "screenId":Ljava/lang/Long;
    iget-object v1, p0, Lcom/android/launcher3/home/HomeLoader;->mBgPagesItems:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3186
    iget-object v1, p0, Lcom/android/launcher3/home/HomeLoader;->mBgPagesItems:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3187
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/util/logging/SALogging;->updateLogValuesForHomeItems()V

    goto :goto_0

    .line 3192
    .end local v0    # "screenId":Ljava/lang/Long;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeScreen(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 4429
    new-instance v0, Lcom/android/launcher3/home/HomeLoader$42;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/home/HomeLoader$42;-><init>(Lcom/android/launcher3/home/HomeLoader;I)V

    invoke-static {v0}, Lcom/android/launcher3/home/HomeLoader;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 4469
    return-void
.end method

.method public removeUnRestoredItems(Z)V
    .locals 4
    .param p1, "itemLoaded"    # Z

    .prologue
    .line 3242
    new-instance v0, Lcom/android/launcher3/home/HomeLoader$32;

    invoke-direct {v0, p0}, Lcom/android/launcher3/home/HomeLoader$32;-><init>(Lcom/android/launcher3/home/HomeLoader;)V

    .line 3268
    .local v0, "r":Ljava/lang/Runnable;
    const-string v1, "HomeLoader"

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

    .line 3269
    if-eqz p1, :cond_0

    .line 3270
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 3277
    :goto_0
    return-void

    .line 3272
    :cond_0
    const-string v1, "HomeLoader"

    const-string v2, "home item is not loaded run after load all item"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3273
    iget-object v2, p0, Lcom/android/launcher3/home/HomeLoader;->mLoadCompleteRunnables:Ljava/util/ArrayList;

    monitor-enter v2

    .line 3274
    :try_start_0
    iget-object v1, p0, Lcom/android/launcher3/home/HomeLoader;->mLoadCompleteRunnables:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3275
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeWidgetIfNeeded(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)V
    .locals 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;

    .prologue
    .line 4913
    invoke-direct {p0}, Lcom/android/launcher3/home/HomeLoader;->getWidgetsInHome()Ljava/util/ArrayList;

    move-result-object v8

    .line 4914
    .local v8, "widgetItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/home/LauncherAppWidgetInfo;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 4915
    .local v7, "removePackages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 4917
    .local v6, "removeComponents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    .line 4918
    .local v3, "item":Lcom/android/launcher3/home/LauncherAppWidgetInfo;
    iget-object v0, v3, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    .line 4919
    .local v0, "cn":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    iget-object v10, v3, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {p2, v10}, Lcom/android/launcher3/common/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 4920
    sget-object v10, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;

    move-result-object v10

    invoke-virtual {v10, v0, p2}, Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;->findProvider(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    move-result-object v5

    .line 4921
    .local v5, "providerInfo":Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;
    if-nez v5, :cond_0

    .line 4922
    const/4 v2, 0x0

    .line 4924
    .local v2, "isVaild":Z
    :try_start_0
    sget-object v10, Lcom/android/launcher3/home/HomeLoader;->sPackageManager:Landroid/content/pm/PackageManager;

    const/4 v11, 0x2

    .line 4925
    invoke-virtual {v10, p1, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 4926
    .local v4, "pkgInfoReceivers":Landroid/content/pm/PackageInfo;
    sget-object v10, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    iget-object v11, v4, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    invoke-static {v10, v0, v11}, Lcom/android/launcher3/Utilities;->isComponentActive(Landroid/content/Context;Landroid/content/ComponentName;[Landroid/content/pm/ComponentInfo;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    if-eqz v10, :cond_1

    .line 4927
    const/4 v2, 0x1

    .line 4932
    .end local v4    # "pkgInfoReceivers":Landroid/content/pm/PackageInfo;
    :cond_1
    :goto_1
    if-nez v2, :cond_0

    .line 4933
    const-string v10, "HomeLoader"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Can\'t find widget component info : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 4934
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", therefore it will be removed"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 4933
    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4935
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4929
    :catch_0
    move-exception v1

    .line 4930
    .local v1, "e":Ljava/lang/Exception;
    const-string v10, "HomeLoader"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "removeWidgetIfNeeded e : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 4940
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "isVaild":Z
    .end local v3    # "item":Lcom/android/launcher3/home/LauncherAppWidgetInfo;
    .end local v5    # "providerInfo":Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;
    :cond_2
    const/4 v9, 0x0

    invoke-virtual {p0, v7, v6, p2, v9}, Lcom/android/launcher3/home/HomeLoader;->removePackagesAndComponents(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/launcher3/common/compat/UserHandleCompat;I)Ljava/util/ArrayList;

    .line 4941
    return-void
.end method

.method removeWorkspaceItem(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<+",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2223
    .local p1, "workspaceApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<+Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-direct {p0}, Lcom/android/launcher3/home/HomeLoader;->getCallback()Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    move-result-object v0

    .line 2225
    .local v0, "callbacks":Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;
    new-instance v1, Lcom/android/launcher3/home/HomeLoader$19;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/launcher3/home/HomeLoader$19;-><init>(Lcom/android/launcher3/home/HomeLoader;Ljava/util/ArrayList;Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;)V

    .line 2251
    .local v1, "r":Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/launcher3/home/HomeLoader;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 2252
    return-void
.end method

.method removeWorkspaceItem(ZILjava/lang/String;Landroid/content/Intent;Z)V
    .locals 9
    .param p1, "isWidget"    # Z
    .param p2, "appWidgetId"    # I
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "intent"    # Landroid/content/Intent;
    .param p5, "duplicate"    # Z

    .prologue
    .line 2256
    invoke-direct {p0}, Lcom/android/launcher3/home/HomeLoader;->getCallback()Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    move-result-object v8

    .line 2257
    .local v8, "callbacks":Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v5

    .line 2259
    .local v5, "isHomeOnlyMode":Z
    new-instance v0, Lcom/android/launcher3/home/HomeLoader$20;

    move-object v1, p0

    move v2, p1

    move-object v3, p3

    move v4, p2

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v8}, Lcom/android/launcher3/home/HomeLoader$20;-><init>(Lcom/android/launcher3/home/HomeLoader;ZLjava/lang/String;IZLandroid/content/Intent;ZLcom/android/launcher3/home/HomeLoader$HomeCallbacks;)V

    .line 2312
    .local v0, "r":Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/android/launcher3/home/HomeLoader;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 2313
    return-void
.end method

.method public runLoadCompleteRunnables()V
    .locals 4

    .prologue
    .line 4417
    const-string v1, "HomeLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "runLoadCompleteRunnables, count : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/home/HomeLoader;->mLoadCompleteRunnables:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4418
    iget-object v1, p0, Lcom/android/launcher3/home/HomeLoader;->mLoadCompleteRunnables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4419
    iget-object v2, p0, Lcom/android/launcher3/home/HomeLoader;->mLoadCompleteRunnables:Ljava/util/ArrayList;

    monitor-enter v2

    .line 4420
    :try_start_0
    iget-object v1, p0, Lcom/android/launcher3/home/HomeLoader;->mLoadCompleteRunnables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 4421
    .local v0, "r":Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/android/launcher3/home/HomeLoader;->runOnWorkerThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 4424
    .end local v0    # "r":Ljava/lang/Runnable;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 4423
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/launcher3/home/HomeLoader;->mLoadCompleteRunnables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 4424
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4426
    :cond_1
    return-void
.end method

.method public setOrderedScreen(Ljava/util/ArrayList;)V
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
    .line 3236
    .local p1, "screen":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mBgOrderedScreens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3237
    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mBgOrderedScreens:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3238
    return-void
.end method

.method public setPackageState(Lcom/android/launcher3/common/compat/PackageInstallerCompat$PackageInstallInfo;)V
    .locals 2
    .param p1, "installInfo"    # Lcom/android/launcher3/common/compat/PackageInstallerCompat$PackageInstallInfo;

    .prologue
    .line 1852
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/android/launcher3/common/compat/PackageInstallerCompat$PackageInstallInfo;->packageName:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 1905
    :cond_0
    :goto_0
    return-void

    .line 1856
    :cond_1
    new-instance v0, Lcom/android/launcher3/home/HomeLoader$12;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/home/HomeLoader$12;-><init>(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/common/compat/PackageInstallerCompat$PackageInstallInfo;)V

    .line 1904
    .local v0, "updateRunnable":Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/android/launcher3/home/HomeLoader;->runOnWorkerThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setup(Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V
    .locals 2
    .param p1, "task"    # Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;

    .prologue
    .line 1352
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeLoader;->unbindItemsOnMainThread()V

    .line 1354
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeLoader;->clearSBgDataStructures()V

    .line 1355
    invoke-direct {p0}, Lcom/android/launcher3/home/HomeLoader;->createPinnedShortcutMap()V

    .line 1357
    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mBgOrderedScreens:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/launcher3/home/HomeLoader;->sFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    invoke-virtual {v1}, Lcom/android/launcher3/common/model/FavoritesProvider;->loadScreensFromDb()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1358
    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mBgOrderedScreens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mIsPageLoaded:[Z

    .line 1359
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/home/HomeLoader;->mIsFirstBind:Z

    .line 1361
    invoke-static {}, Lcom/android/launcher3/Utilities;->isBootCompleted()Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher3/home/HomeLoader;->mIsBootCompleted:Z

    .line 1362
    return-void
.end method

.method public showApps(Ljava/util/ArrayList;Z)V
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
    .line 2605
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/home/HomeLoader;->updateAndBindItems(Ljava/util/ArrayList;Z)V

    .line 2606
    return-void
.end method

.method public startPageLoaderTask(Lcom/android/launcher3/common/model/DataLoader$DataLoaderCallback;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V
    .locals 1
    .param p1, "loaderCallback"    # Lcom/android/launcher3/common/model/DataLoader$DataLoaderCallback;
    .param p2, "task"    # Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;

    .prologue
    .line 199
    new-instance v0, Lcom/android/launcher3/home/HomeLoader$2;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/launcher3/home/HomeLoader$2;-><init>(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;Lcom/android/launcher3/common/model/DataLoader$DataLoaderCallback;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/HomeLoader;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 211
    return-void
.end method

.method public titleUpdate()V
    .locals 8

    .prologue
    .line 4259
    invoke-direct {p0}, Lcom/android/launcher3/home/HomeLoader;->getAllItemInHome()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/launcher3/home/HomeLoader;->getNeedTitleUpdateIcons(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v4

    .line 4260
    .local v4, "needUpdateItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/LauncherAppState;->getAppsButtonEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4261
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeLoader;->getAppsButton()Lcom/android/launcher3/common/base/item/IconInfo;

    move-result-object v0

    .line 4262
    .local v0, "apps":Lcom/android/launcher3/common/base/item/IconInfo;
    if-eqz v0, :cond_0

    .line 4263
    sget-object v5, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090023

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    .line 4264
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4268
    .end local v0    # "apps":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/home/HomeLoader;->getCallback()Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    move-result-object v1

    .line 4269
    .local v1, "callbacks":Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;
    if-nez v1, :cond_1

    .line 4270
    const-string v5, "HomeLoader"

    const-string v6, "titleUpdate. Nobody to tell about the new app. Launcher is probably loading."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4290
    :goto_0
    return-void

    .line 4275
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4276
    .local v2, "finalUpdateItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    sget-object v6, Lcom/android/launcher3/home/HomeLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v6

    .line 4277
    :try_start_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 4278
    .local v3, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    check-cast v3, Lcom/android/launcher3/common/base/item/IconInfo;

    .end local v3    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 4280
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    :cond_2
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4281
    new-instance v5, Lcom/android/launcher3/home/HomeLoader$39;

    invoke-direct {v5, p0, v1, v2}, Lcom/android/launcher3/home/HomeLoader$39;-><init>(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v5}, Lcom/android/launcher3/home/HomeLoader;->runOnMainThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public unRegisterCallbacks()V
    .locals 3

    .prologue
    .line 522
    iget-object v1, p0, Lcom/android/launcher3/home/HomeLoader;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 523
    :try_start_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/launcher3/home/HomeLoader;->mCallbacks:Ljava/lang/ref/WeakReference;

    .line 524
    monitor-exit v1

    .line 525
    return-void

    .line 524
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unbindItemsOnMainThread()V
    .locals 6

    .prologue
    .line 1781
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1782
    .local v2, "tmpItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    sget-object v4, Lcom/android/launcher3/home/HomeLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1783
    :try_start_0
    iget-object v3, p0, Lcom/android/launcher3/home/HomeLoader;->mBgHotseatItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1784
    iget-object v3, p0, Lcom/android/launcher3/home/HomeLoader;->mBgPagesItems:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1785
    .local v0, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 1786
    .end local v0    # "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1787
    new-instance v1, Lcom/android/launcher3/home/HomeLoader$8;

    invoke-direct {v1, p0, v2}, Lcom/android/launcher3/home/HomeLoader$8;-><init>(Lcom/android/launcher3/home/HomeLoader;Ljava/util/ArrayList;)V

    .line 1795
    .local v1, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v1}, Lcom/android/launcher3/home/HomeLoader;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 1796
    return-void
.end method

.method updateContactShortcutInfo(JLandroid/content/Intent;)V
    .locals 3
    .param p1, "id"    # J
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 4293
    new-instance v0, Lcom/android/launcher3/home/HomeLoader$40;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/launcher3/home/HomeLoader$40;-><init>(Lcom/android/launcher3/home/HomeLoader;JLandroid/content/Intent;)V

    .line 4307
    .local v0, "r":Ljava/lang/Runnable;
    new-instance v1, Lcom/android/launcher3/home/HomeLoader$41;

    invoke-direct {v1, p0, v0}, Lcom/android/launcher3/home/HomeLoader$41;-><init>(Lcom/android/launcher3/home/HomeLoader;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v1}, Lcom/android/launcher3/home/HomeLoader;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 4321
    return-void
.end method

.method updateContainerForDexSync(ZLcom/android/launcher3/folder/FolderInfo;Lcom/android/launcher3/common/base/item/IconInfo;)V
    .locals 6
    .param p1, "addToFolder"    # Z
    .param p2, "folder"    # Lcom/android/launcher3/folder/FolderInfo;
    .param p3, "item"    # Lcom/android/launcher3/common/base/item/IconInfo;

    .prologue
    .line 3615
    invoke-direct {p0}, Lcom/android/launcher3/home/HomeLoader;->getCallback()Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    move-result-object v2

    .line 3616
    .local v2, "oldCallbacks":Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;
    new-instance v0, Lcom/android/launcher3/home/HomeLoader$34;

    move-object v1, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/home/HomeLoader$34;-><init>(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;ZLcom/android/launcher3/folder/FolderInfo;Lcom/android/launcher3/common/base/item/IconInfo;)V

    .line 3625
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/HomeLoader;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 3626
    return-void
.end method

.method public updateDeepShortcutsChanged(Ljava/lang/String;Ljava/util/List;Lcom/android/launcher3/common/compat/UserHandleCompat;Z)V
    .locals 19
    .param p1, "packageName"    # Ljava/lang/String;
    .param p3, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;
    .param p4, "updateIdMap"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;",
            ">;",
            "Lcom/android/launcher3/common/compat/UserHandleCompat;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 4125
    .local p2, "shortcuts":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 4126
    .local v10, "removedShortcutInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    new-instance v7, Lcom/android/launcher3/util/MultiHashMap;

    invoke-direct {v7}, Lcom/android/launcher3/util/MultiHashMap;-><init>()V

    .line 4127
    .local v7, "idsToWorkspaceShortcutInfos":Lcom/android/launcher3/util/MultiHashMap;, "Lcom/android/launcher3/util/MultiHashMap<Ljava/lang/String;Lcom/android/launcher3/common/base/item/IconInfo;>;"
    sget-object v16, Lcom/android/launcher3/home/HomeLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v16

    .line 4128
    :try_start_0
    sget-object v15, Lcom/android/launcher3/home/HomeLoader;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v15}, Lcom/android/launcher3/util/LongArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_0
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_1

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 4129
    .local v9, "itemInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget v0, v9, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    move/from16 v17, v0

    const/16 v18, 0x6

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 4130
    move-object v0, v9

    check-cast v0, Lcom/android/launcher3/common/base/item/IconInfo;

    move-object v8, v0

    .line 4131
    .local v8, "ii":Lcom/android/launcher3/common/base/item/IconInfo;
    invoke-virtual {v8}, Lcom/android/launcher3/common/base/item/IconInfo;->getPromisedIntent()Landroid/content/Intent;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    iget-object v0, v8, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 4132
    invoke-virtual {v8}, Lcom/android/launcher3/common/base/item/IconInfo;->getDeepShortcutId()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v7, v0, v8}, Lcom/android/launcher3/util/MultiHashMap;->addToList(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 4136
    .end local v8    # "ii":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v9    # "itemInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    :catchall_0
    move-exception v15

    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v15

    :cond_1
    :try_start_1
    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4138
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 4139
    .local v4, "context":Landroid/content/Context;
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 4140
    .local v14, "updatedShortcutInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    invoke-virtual {v7}, Lcom/android/launcher3/util/MultiHashMap;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_4

    .line 4142
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher3/home/HomeLoader;->mDeepShortcutManager:Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;

    new-instance v16, Ljava/util/ArrayList;

    .line 4143
    invoke-virtual {v7}, Lcom/android/launcher3/util/MultiHashMap;->keySet()Ljava/util/Set;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4142
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move-object/from16 v2, p3

    invoke-virtual {v15, v0, v1, v2}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;->queryForFullDetails(Ljava/lang/String;Ljava/util/List;Lcom/android/launcher3/common/compat/UserHandleCompat;)Ljava/util/List;

    move-result-object v13

    .line 4144
    .local v13, "shortcutsList":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;>;"
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_2
    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_4

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;

    .line 4145
    .local v5, "fullDetails":Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;
    invoke-virtual {v5}, Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;->getId()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Lcom/android/launcher3/util/MultiHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    .line 4146
    .local v12, "shortcutInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    invoke-virtual {v5}, Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;->isPinned()Z

    move-result v16

    if-nez v16, :cond_3

    .line 4152
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 4155
    :cond_3
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_2

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 4156
    .local v11, "shortcutInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    invoke-virtual {v11, v5, v4}, Lcom/android/launcher3/common/base/item/IconInfo;->updateFromDeepShortcutInfo(Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;Landroid/content/Context;)V

    .line 4157
    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 4165
    .end local v5    # "fullDetails":Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;
    .end local v11    # "shortcutInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v12    # "shortcutInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    .end local v13    # "shortcutsList":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;>;"
    :cond_4
    invoke-virtual {v7}, Lcom/android/launcher3/util/MultiHashMap;->keySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 4166
    .local v6, "id":Ljava/lang/String;
    invoke-virtual {v7, v6}, Lcom/android/launcher3/util/MultiHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Collection;

    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    .line 4169
    .end local v6    # "id":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v14, v10, v1}, Lcom/android/launcher3/home/HomeLoader;->bindUpdatedDeepShortcuts(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    .line 4170
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_6

    .line 4171
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher3/home/HomeLoader;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    invoke-virtual {v15, v10}, Lcom/android/launcher3/common/model/FavoritesUpdater;->deleteItemsFromDatabase(Ljava/util/ArrayList;)V

    .line 4174
    :cond_6
    if-eqz p4, :cond_7

    .line 4176
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/home/HomeLoader;->updateDeepShortcutMap(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;Ljava/util/List;)V

    .line 4177
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/home/HomeLoader;->bindDeepShortcuts()V

    .line 4179
    :cond_7
    return-void
.end method

.method updateFolderTitle(Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 2
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 3600
    invoke-direct {p0}, Lcom/android/launcher3/home/HomeLoader;->getCallback()Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    move-result-object v0

    .line 3601
    .local v0, "oldCallbacks":Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;
    new-instance v1, Lcom/android/launcher3/home/HomeLoader$33;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/launcher3/home/HomeLoader$33;-><init>(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 3610
    .local v1, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v1}, Lcom/android/launcher3/home/HomeLoader;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 3611
    return-void
.end method

.method public updateItemsOnlyDB(Ljava/util/ArrayList;)V
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
    .line 2722
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2723
    .local v0, "contentValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 2724
    .local v1, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 2725
    .local v2, "values":Landroid/content/ContentValues;
    const-string v4, "hidden"

    iget v5, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->hidden:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2726
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2728
    .end local v1    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v2    # "values":Landroid/content/ContentValues;
    :cond_0
    iget-object v3, p0, Lcom/android/launcher3/home/HomeLoader;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    sget-object v4, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    invoke-virtual {v3, v4, v0, p1}, Lcom/android/launcher3/common/model/FavoritesUpdater;->updateItemsInDatabaseHelper(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 2729
    return-void
.end method

.method public updatePackageFlags(Lcom/android/launcher3/util/StringFilter;Lcom/android/launcher3/common/compat/UserHandleCompat;Lcom/android/launcher3/util/FlagOp;)V
    .locals 12
    .param p1, "pkgFilter"    # Lcom/android/launcher3/util/StringFilter;
    .param p2, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;
    .param p3, "flagOp"    # Lcom/android/launcher3/util/FlagOp;

    .prologue
    .line 3986
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 3988
    .local v7, "updatedShortcuts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    const-string v8, ""

    invoke-virtual {p1, v8}, Lcom/android/launcher3/util/StringFilter;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 3989
    iget-object v9, p0, Lcom/android/launcher3/home/HomeLoader;->mQuietModeUsers:Landroid/util/LongSparseArray;

    sget-object v8, Lcom/android/launcher3/home/HomeLoader;->sUserManager:Lcom/android/launcher3/common/compat/UserManagerCompat;

    invoke-virtual {v8, p2}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher3/common/compat/UserHandleCompat;)J

    move-result-wide v10

    const/16 v8, 0x8

    .line 3990
    invoke-virtual {p3, v8}, Lcom/android/launcher3/util/FlagOp;->apply(I)I

    move-result v8

    if-lez v8, :cond_2

    const/4 v8, 0x1

    :goto_0
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 3989
    invoke-virtual {v9, v10, v11, v8}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 3992
    :cond_0
    sget-object v9, Lcom/android/launcher3/home/HomeLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v9

    .line 3993
    :try_start_0
    invoke-direct {p0}, Lcom/android/launcher3/home/HomeLoader;->getAllItemInHome()Ljava/util/ArrayList;

    move-result-object v2

    .line 3994
    .local v2, "allItemInHome":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 3995
    .local v5, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    instance-of v10, v5, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v10, :cond_1

    .line 3996
    move-object v0, v5

    check-cast v0, Lcom/android/launcher3/common/base/item/IconInfo;

    move-object v4, v0

    .line 3997
    .local v4, "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    invoke-virtual {v4}, Lcom/android/launcher3/common/base/item/IconInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v3

    .line 3998
    .local v3, "cn":Landroid/content/ComponentName;
    iget-object v10, v4, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {v10, p2}, Lcom/android/launcher3/common/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    if-eqz v3, :cond_1

    .line 3999
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Lcom/android/launcher3/util/StringFilter;->matches(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 4000
    iget v10, v4, Lcom/android/launcher3/common/base/item/IconInfo;->isDisabled:I

    invoke-virtual {p3, v10}, Lcom/android/launcher3/util/FlagOp;->apply(I)I

    move-result v10

    iput v10, v4, Lcom/android/launcher3/common/base/item/IconInfo;->isDisabled:I

    .line 4001
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 4005
    .end local v2    # "allItemInHome":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .end local v3    # "cn":Landroid/content/ComponentName;
    .end local v4    # "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v5    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 3990
    :cond_2
    const/4 v8, 0x0

    goto :goto_0

    .line 4005
    .restart local v2    # "allItemInHome":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    :cond_3
    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4007
    invoke-direct {p0}, Lcom/android/launcher3/home/HomeLoader;->getCallback()Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    move-result-object v6

    .line 4008
    .local v6, "oldCallback":Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;
    sget-object v8, Lcom/android/launcher3/home/HomeLoader;->sHandler:Lcom/android/launcher3/common/model/DeferredHandler;

    new-instance v9, Lcom/android/launcher3/home/HomeLoader$36;

    invoke-direct {v9, p0, v6, v7, p2}, Lcom/android/launcher3/home/HomeLoader$36;-><init>(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;Ljava/util/ArrayList;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    invoke-virtual {v8, v9}, Lcom/android/launcher3/common/model/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 4016
    return-void
.end method

.method public updatePagesItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 6
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 3197
    iget-object v1, p0, Lcom/android/launcher3/home/HomeLoader;->mBgHotseatItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3198
    iget v1, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->hidden:I

    if-eqz v1, :cond_1

    .line 3199
    iget-object v1, p0, Lcom/android/launcher3/home/HomeLoader;->mBgHotseatItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3200
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/util/logging/SALogging;->updateLogValuesForHomeItems()V

    .line 3218
    :cond_0
    :goto_0
    return-void

    .line 3201
    :cond_1
    iget-wide v2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v4, -0x65

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 3202
    iget-object v1, p0, Lcom/android/launcher3/home/HomeLoader;->mBgHotseatItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3203
    invoke-virtual {p0, p1}, Lcom/android/launcher3/home/HomeLoader;->addPagesItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 3204
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/util/logging/SALogging;->updateLogValuesForHomeItems()V

    goto :goto_0

    .line 3207
    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/home/HomeLoader;->mBgPagesItems:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 3208
    .local v0, "screenId":Ljava/lang/Long;
    iget-object v1, p0, Lcom/android/launcher3/home/HomeLoader;->mBgPagesItems:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3209
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-wide v4, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_4

    iget-wide v2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v4, -0x64

    cmp-long v1, v2, v4

    if-eqz v1, :cond_5

    .line 3210
    :cond_4
    iget-object v1, p0, Lcom/android/launcher3/home/HomeLoader;->mBgPagesItems:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3211
    invoke-virtual {p0, p1}, Lcom/android/launcher3/home/HomeLoader;->addPagesItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 3213
    :cond_5
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/util/logging/SALogging;->updateLogValuesForHomeItems()V

    goto :goto_0
.end method

.method public updateSessionDisplayInfo(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1911
    if-nez p1, :cond_0

    .line 1958
    :goto_0
    return-void

    .line 1915
    :cond_0
    new-instance v0, Lcom/android/launcher3/home/HomeLoader$13;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/home/HomeLoader$13;-><init>(Lcom/android/launcher3/home/HomeLoader;Ljava/lang/String;)V

    .line 1957
    .local v0, "updateRunnable":Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/android/launcher3/home/HomeLoader;->runOnWorkerThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public updateShortcut(Ljava/util/HashSet;Lcom/android/launcher3/common/compat/UserHandleCompat;)V
    .locals 9
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
    .line 1961
    .local p1, "updatedPackages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1962
    .local v5, "updatedShortcuts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    sget-object v7, Lcom/android/launcher3/home/HomeLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1963
    :try_start_0
    sget-object v6, Lcom/android/launcher3/home/HomeLoader;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v6}, Lcom/android/launcher3/util/LongArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 1964
    .local v2, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    instance-of v8, v2, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v8, :cond_0

    iget-object v8, v2, Lcom/android/launcher3/common/base/item/ItemInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {p2, v8}, Lcom/android/launcher3/common/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget v8, v2, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    if-nez v8, :cond_0

    .line 1966
    move-object v0, v2

    check-cast v0, Lcom/android/launcher3/common/base/item/IconInfo;

    move-object v4, v0

    .line 1967
    .local v4, "si":Lcom/android/launcher3/common/base/item/IconInfo;
    invoke-virtual {v4}, Lcom/android/launcher3/common/base/item/IconInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 1968
    .local v1, "cn":Landroid/content/ComponentName;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1969
    sget-object v8, Lcom/android/launcher3/home/HomeLoader;->sIconCache:Lcom/android/launcher3/common/model/IconCache;

    invoke-virtual {v4, v8}, Lcom/android/launcher3/common/base/item/IconInfo;->updateIcon(Lcom/android/launcher3/common/model/IconCache;)V

    .line 1970
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1974
    .end local v1    # "cn":Landroid/content/ComponentName;
    .end local v2    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v4    # "si":Lcom/android/launcher3/common/base/item/IconInfo;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    :cond_1
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1976
    invoke-direct {p0}, Lcom/android/launcher3/home/HomeLoader;->getCallback()Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    move-result-object v3

    .line 1977
    .local v3, "oldCallbacks":Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;
    sget-object v6, Lcom/android/launcher3/home/HomeLoader;->sHandler:Lcom/android/launcher3/common/model/DeferredHandler;

    new-instance v7, Lcom/android/launcher3/home/HomeLoader$14;

    invoke-direct {v7, p0, v3, v5, p2}, Lcom/android/launcher3/home/HomeLoader$14;-><init>(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;Ljava/util/ArrayList;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    invoke-virtual {v6, v7}, Lcom/android/launcher3/common/model/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1985
    return-void
.end method

.method public updateShortcutIcons()V
    .locals 12

    .prologue
    .line 4059
    sget-object v8, Lcom/android/launcher3/home/HomeLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v8

    .line 4060
    :try_start_0
    invoke-direct {p0}, Lcom/android/launcher3/home/HomeLoader;->getAllItemInHome()Ljava/util/ArrayList;

    move-result-object v1

    .line 4061
    .local v1, "allItemInHome":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 4062
    .local v6, "updatedIcons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 4063
    .local v4, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    instance-of v7, v4, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v7, :cond_0

    move-object v0, v4

    check-cast v0, Lcom/android/launcher3/common/base/item/IconInfo;

    move-object v7, v0

    iget-boolean v7, v7, Lcom/android/launcher3/common/base/item/IconInfo;->customIcon:Z

    if-eqz v7, :cond_0

    iget v7, v4, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    const/4 v10, 0x1

    if-ne v7, v10, :cond_0

    .line 4065
    move-object v0, v4

    check-cast v0, Lcom/android/launcher3/common/base/item/IconInfo;

    move-object v7, v0

    invoke-virtual {v7}, Lcom/android/launcher3/common/base/item/IconInfo;->getOriginalIcon()Landroid/graphics/Bitmap;

    move-result-object v5

    .line 4066
    .local v5, "originalIcon":Landroid/graphics/Bitmap;
    if-eqz v5, :cond_0

    .line 4067
    move-object v3, v5

    .line 4068
    .local v3, "icon":Landroid/graphics/Bitmap;
    invoke-static {}, Lcom/android/launcher3/util/ShortcutTray;->isIconTrayEnabled()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 4069
    sget-object v7, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    iget-object v10, v4, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    invoke-static {v7, v5, v10}, Lcom/android/launcher3/util/ShortcutTray;->getIcon(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/content/ComponentName;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 4072
    :cond_1
    sget-object v7, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/launcher3/util/DualAppUtils;->supportDualApp(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, v4, Lcom/android/launcher3/common/base/item/ItemInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-static {v7}, Lcom/android/launcher3/util/DualAppUtils;->isDualAppId(Lcom/android/launcher3/common/compat/UserHandleCompat;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 4073
    sget-object v7, Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;

    sget-object v10, Lcom/android/launcher3/home/HomeLoader;->sProfile:Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    iget-object v10, v10, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    .line 4074
    invoke-virtual {v10}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getIconSize()I

    move-result v10

    iget-object v11, v4, Lcom/android/launcher3/common/base/item/ItemInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {v11}, Lcom/android/launcher3/common/compat/UserHandleCompat;->getUser()Landroid/os/UserHandle;

    move-result-object v11

    .line 4073
    invoke-static {v7, v3, v10, v11}, Lcom/android/launcher3/util/DualAppUtils;->makeUserBadgedIcon(Landroid/content/Context;Landroid/graphics/Bitmap;ILandroid/os/UserHandle;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 4076
    :cond_2
    move-object v0, v4

    check-cast v0, Lcom/android/launcher3/common/base/item/IconInfo;

    move-object v7, v0

    invoke-virtual {v7, v3}, Lcom/android/launcher3/common/base/item/IconInfo;->setIcon(Landroid/graphics/Bitmap;)V

    .line 4077
    check-cast v4, Lcom/android/launcher3/common/base/item/IconInfo;

    .end local v4    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4098
    .end local v1    # "allItemInHome":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .end local v3    # "icon":Landroid/graphics/Bitmap;
    .end local v5    # "originalIcon":Landroid/graphics/Bitmap;
    .end local v6    # "updatedIcons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 4082
    .restart local v1    # "allItemInHome":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .restart local v6    # "updatedIcons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    :cond_3
    :try_start_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    .line 4083
    invoke-direct {p0}, Lcom/android/launcher3/home/HomeLoader;->getCallback()Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    move-result-object v2

    .line 4084
    .local v2, "callbacks":Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;
    if-nez v2, :cond_4

    .line 4085
    const-string v7, "HomeLoader"

    const-string v9, "updateShortcutIcons. Nobody to tell about the new app. Launcher is probably loading."

    invoke-static {v7, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4087
    monitor-exit v8

    .line 4099
    .end local v2    # "callbacks":Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;
    :goto_1
    return-void

    .line 4089
    .restart local v2    # "callbacks":Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;
    :cond_4
    sget-object v7, Lcom/android/launcher3/home/HomeLoader;->sHandler:Lcom/android/launcher3/common/model/DeferredHandler;

    new-instance v9, Lcom/android/launcher3/home/HomeLoader$37;

    invoke-direct {v9, p0, v2, v6}, Lcom/android/launcher3/home/HomeLoader$37;-><init>(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;Ljava/util/ArrayList;)V

    invoke-virtual {v7, v9}, Lcom/android/launcher3/common/model/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 4098
    .end local v2    # "callbacks":Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;
    :cond_5
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public updateUnavailablePackage(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;I)V
    .locals 8
    .param p1, "disabledPackages"    # Ljava/lang/String;
    .param p2, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;
    .param p3, "reason"    # I

    .prologue
    .line 4044
    invoke-direct {p0}, Lcom/android/launcher3/home/HomeLoader;->getAllItemInHome()Ljava/util/ArrayList;

    move-result-object v3

    .line 4045
    .local v3, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 4046
    .local v2, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    instance-of v5, v2, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v5, :cond_0

    move-object v1, v2

    .line 4047
    check-cast v1, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 4048
    .local v1, "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/item/IconInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 4049
    .local v0, "cn":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4050
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/item/IconInfo;->getUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v5

    invoke-virtual {p2, v5}, Lcom/android/launcher3/common/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4051
    iget v5, v1, Lcom/android/launcher3/common/base/item/IconInfo;->isDisabled:I

    or-int/2addr v5, p3

    iput v5, v1, Lcom/android/launcher3/common/base/item/IconInfo;->isDisabled:I

    .line 4052
    const-string v5, "HomeLoader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateUnavailablePackage unavailable = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4056
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v1    # "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v2    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_1
    return-void
.end method
