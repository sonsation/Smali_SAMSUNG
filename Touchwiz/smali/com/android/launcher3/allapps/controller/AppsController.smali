.class public Lcom/android/launcher3/allapps/controller/AppsController;
.super Lcom/android/launcher3/common/stage/Stage;
.source "AppsController.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;
.implements Lcom/android/launcher3/LauncherModel$OnBadgeBindingCompletedLisnter;
.implements Lcom/android/launcher3/LauncherModel$OnRefreshLiveIconListener;
.implements Lcom/android/launcher3/common/multiselect/MultiSelectManager$MultiSelectListener;
.implements Lcom/android/launcher3/folder/folderlock/FolderLock$FolderLockActionCallback;
.implements Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/allapps/controller/AppsController$ViewType;
    }
.end annotation


# static fields
.field private static final APPS_ORGANIZE_APPS_ALERT:Ljava/lang/String; = "AppsController.OrganizeAppsAlert"

.field private static final APPS_VIEW_TYPE:Ljava/lang/String; = "AppsController.ViewType"

.field static final DEBUG_APPS_CONTROLLER:Z = true

.field private static final EXIT_DRAG_STATE_DELAY:I = 0x64

.field private static final FACTOR_INTERVAL:I = 0x2

.field private static final FACTOR_VALID_DECIMAL_PLACE:I = 0x2

.field private static final KEY_REPOSITION_BY:Ljava/lang/String; = "KEY_REPOSITION_BY"

.field private static final KEY_TARGET_GRID_SIZE:Ljava/lang/String; = "KEY_CHANGE_GRID_SIZE"

.field private static final MAP_NO_RECURSE:Z = false

.field private static final MAP_RECURSE:Z = true

.field private static final REPOSITION_CONFIGURATION:I = 0x3

.field private static final REPOSITION_GRIDBY:I = 0x1

.field private static final REPOSITION_TIDEUP:I = 0x2

.field private static final REPOSITION_VIEWBY:I = 0x0

.field public static final STATE_DRAG:I = 0x1

.field public static final STATE_GRID:I = 0x5

.field public static final STATE_NORMAL:I = 0x0

.field public static final STATE_SEARCH:I = 0x3

.field public static final STATE_SELECT:I = 0x2

.field public static final STATE_TIDY:I = 0x4

.field private static final TAG:Ljava/lang/String; = "Launcher.AppsController"


# instance fields
.field private mAdapterProvider:Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;

.field private mApplyTideUpPage:Z

.field private mAppsAlphaRatio:F

.field private mAppsAnimation:Lcom/android/launcher3/allapps/AppsTransitionAnimation;

.field private mAppsContainer:Lcom/android/launcher3/allapps/view/AppsContainer;

.field private mAppsFocusListener:Lcom/android/launcher3/allapps/controller/AppsFocusListener;

.field private mAppsPageIndicatorView:Landroid/view/View;

.field private mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

.field private mAppsScreenGridPanel:Lcom/android/launcher3/allapps/AppsScreenGridPanel;

.field private mAppsSearch:Lcom/android/launcher3/allapps/view/AppsSearch;

.field private mAppsShrinkFactor:F

.field private mAppsSlipY:I

.field private mBounceAnimation:Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation;

.field private mDataListener:Lcom/android/launcher3/allapps/controller/AppsAdapter$DataListener;

.field private mDownwardFadeOutEnd:I

.field private mDownwardFadeOutStart:I

.field private mDragController:Lcom/android/launcher3/allapps/controller/AppsDragController;

.field private mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

.field private mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

.field private mExitDragStateHandler:Landroid/os/Handler;

.field private mFadeOutRange:F

.field private mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

.field private mFromSetting:Z

.field private mHwLayerPageIndexWhileTray:I

.field private mIsResumed:Z

.field private mLoggingRunnable:Ljava/lang/Runnable;

.field private mMoveToHomeApproachingStart:I

.field private mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

.field private mPageIndicatorScaleRatio:F

.field private mPageIndicatorShrinkFactor:F

.field private mPageSnapMovingRatioOnApps:F

.field private mPrevState:I

.field private mRemoveInProgress:Z

.field private mReorderController:Lcom/android/launcher3/allapps/controller/AppsReorderController;

.field private mScrollDeterminator:Lcom/android/launcher3/util/event/ScrollDeterminator;

.field private mState:I

.field private mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

.field private mUpdateBadgeItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateBadgeListRunnable:Ljava/lang/Runnable;

.field private mUpwardFadeOutEnd:I

.field private mUpwardFadeOutStart:I

.field private mViewType:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 110
    invoke-direct {p0}, Lcom/android/launcher3/common/stage/Stage;-><init>()V

    .line 165
    iput v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mPrevState:I

    .line 166
    iput v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mState:I

    .line 167
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mExitDragStateHandler:Landroid/os/Handler;

    .line 182
    iput-boolean v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mApplyTideUpPage:Z

    .line 186
    iput-boolean v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mFromSetting:Z

    .line 187
    iput-boolean v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mIsResumed:Z

    .line 188
    iput-boolean v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mRemoveInProgress:Z

    .line 190
    new-instance v0, Lcom/android/launcher3/util/event/ScrollDeterminator;

    invoke-direct {v0}, Lcom/android/launcher3/util/event/ScrollDeterminator;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mScrollDeterminator:Lcom/android/launcher3/util/event/ScrollDeterminator;

    .line 197
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mHwLayerPageIndexWhileTray:I

    .line 199
    new-instance v0, Lcom/android/launcher3/allapps/controller/AppsController$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/allapps/controller/AppsController$1;-><init>(Lcom/android/launcher3/allapps/controller/AppsController;)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLoggingRunnable:Ljava/lang/Runnable;

    .line 208
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mUpdateBadgeItems:Ljava/util/ArrayList;

    .line 210
    new-instance v0, Lcom/android/launcher3/allapps/controller/AppsController$2;

    invoke-direct {v0, p0}, Lcom/android/launcher3/allapps/controller/AppsController$2;-><init>(Lcom/android/launcher3/allapps/controller/AppsController;)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mUpdateBadgeListRunnable:Ljava/lang/Runnable;

    .line 217
    new-instance v0, Lcom/android/launcher3/allapps/controller/AppsController$3;

    invoke-direct {v0, p0}, Lcom/android/launcher3/allapps/controller/AppsController$3;-><init>(Lcom/android/launcher3/allapps/controller/AppsController;)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mDataListener:Lcom/android/launcher3/allapps/controller/AppsAdapter$DataListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/allapps/controller/AppsController;)Lcom/android/launcher3/allapps/view/AppsPagedView;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/controller/AppsController;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher3/allapps/controller/AppsController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/allapps/controller/AppsController;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->updateBadgeItems()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/launcher3/allapps/controller/AppsController;)Lcom/android/launcher3/allapps/controller/AppsDragController;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/controller/AppsController;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mDragController:Lcom/android/launcher3/allapps/controller/AppsDragController;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/launcher3/allapps/controller/AppsController;)Lcom/android/launcher3/Launcher;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/controller/AppsController;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/launcher3/allapps/controller/AppsController;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/controller/AppsController;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLoggingRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/launcher3/allapps/controller/AppsController;)Lcom/android/launcher3/common/drag/DragManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/controller/AppsController;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/launcher3/allapps/controller/AppsController;)Lcom/android/launcher3/Launcher;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/controller/AppsController;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/launcher3/allapps/controller/AppsController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/allapps/controller/AppsController;
    .param p1, "x1"    # Z

    .prologue
    .line 110
    iput-boolean p1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mRemoveInProgress:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/launcher3/allapps/controller/AppsController;)Lcom/android/launcher3/Launcher;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/controller/AppsController;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/launcher3/allapps/controller/AppsController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/allapps/controller/AppsController;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->searchSettingCheck()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/launcher3/allapps/controller/AppsController;)Lcom/android/launcher3/common/stage/StageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/controller/AppsController;

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/launcher3/allapps/controller/AppsController;)Lcom/android/launcher3/Launcher;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/controller/AppsController;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher3/allapps/controller/AppsController;)Lcom/android/launcher3/allapps/AppsScreenGridPanel;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/controller/AppsController;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsScreenGridPanel:Lcom/android/launcher3/allapps/AppsScreenGridPanel;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/launcher3/allapps/controller/AppsController;)Lcom/android/launcher3/Launcher;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/controller/AppsController;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/launcher3/allapps/controller/AppsController;)Lcom/android/launcher3/Launcher;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/controller/AppsController;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/launcher3/allapps/controller/AppsController;[I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/allapps/controller/AppsController;
    .param p1, "x1"    # [I

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/controller/AppsController;->repositionByGrid([I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/launcher3/allapps/controller/AppsController;)Lcom/android/launcher3/common/stage/StageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/controller/AppsController;

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/launcher3/allapps/controller/AppsController;)Lcom/android/launcher3/Launcher;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/controller/AppsController;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/launcher3/allapps/controller/AppsController;)Lcom/android/launcher3/allapps/controller/AppsController$ViewType;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/controller/AppsController;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mViewType:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/launcher3/allapps/controller/AppsController;)Lcom/android/launcher3/allapps/controller/AppsReorderController;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/controller/AppsController;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mReorderController:Lcom/android/launcher3/allapps/controller/AppsReorderController;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/launcher3/allapps/controller/AppsController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/allapps/controller/AppsController;
    .param p1, "x1"    # Z

    .prologue
    .line 110
    iput-boolean p1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mApplyTideUpPage:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/launcher3/allapps/controller/AppsController;)Lcom/android/launcher3/common/tray/TrayManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/controller/AppsController;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/launcher3/allapps/controller/AppsController;)Lcom/android/launcher3/allapps/view/AppsContainer;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/controller/AppsController;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsContainer:Lcom/android/launcher3/allapps/view/AppsContainer;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/launcher3/allapps/controller/AppsController;)Lcom/android/launcher3/allapps/view/AppsSearch;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/controller/AppsController;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsSearch:Lcom/android/launcher3/allapps/view/AppsSearch;

    return-object v0
.end method

.method private addFolderChildItemToDb(Lcom/android/launcher3/common/base/item/ItemInfo;J)J
    .locals 2
    .param p1, "info"    # Lcom/android/launcher3/common/base/item/ItemInfo;
    .param p2, "container"    # J

    .prologue
    .line 2002
    iput-wide p2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    .line 2003
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAdapterProvider:Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;->addItem(Lcom/android/launcher3/common/base/item/ItemInfo;)J

    move-result-wide v0

    return-wide v0
.end method

.method private applyOrCancelTideUpPages()V
    .locals 5

    .prologue
    const v3, 0x7f0901b2

    const/4 v4, 0x0

    .line 2070
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2071
    .local v0, "res":Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAdapterProvider:Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;

    invoke-virtual {v1, v4, v4}, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;->setStateAndUpdateLock(IZ)V

    .line 2072
    iget-boolean v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mApplyTideUpPage:Z

    if-nez v1, :cond_0

    .line 2074
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v1, v4}, Lcom/android/launcher3/allapps/view/AppsPagedView;->setCurrentPage(I)V

    .line 2075
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAdapterProvider:Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;->reloadAllItemsFromDB(Z)V

    .line 2076
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAdapterProvider:Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;->getNormalizer()Lcom/android/launcher3/allapps/controller/Normalizer;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2, v4}, Lcom/android/launcher3/allapps/controller/AppsController;->repositionByNormalizer(Lcom/android/launcher3/allapps/controller/Normalizer;IZ)V

    .line 2077
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v1

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f090118

    .line 2078
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2077
    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 2083
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->updateDirtyItems()V

    .line 2084
    iput-boolean v4, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mApplyTideUpPage:Z

    .line 2085
    return-void

    .line 2080
    :cond_0
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v1

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f090117

    .line 2081
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2080
    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private applySetViewType()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 937
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAdapterProvider:Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mViewType:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;->setAdapter(Lcom/android/launcher3/allapps/controller/AppsController$ViewType;)V

    .line 938
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mViewType:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    sget-object v1, Lcom/android/launcher3/allapps/controller/AppsController$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    if-ne v0, v1, :cond_1

    .line 939
    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v1

    const-string v2, "AZBT"

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertLogging(Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 943
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAdapterProvider:Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;->getNormalizer()Lcom/android/launcher3/allapps/controller/Normalizer;

    move-result-object v0

    invoke-direct {p0, v0, v6, v6}, Lcom/android/launcher3/allapps/controller/AppsController;->repositionByNormalizer(Lcom/android/launcher3/allapps/controller/Normalizer;IZ)V

    .line 944
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mViewType:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    sget-object v1, Lcom/android/launcher3/allapps/controller/AppsController$ViewType;->CUSTOM_GRID:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    if-ne v0, v1, :cond_0

    .line 945
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->updateDirtyItems()V

    .line 947
    :cond_0
    return-void

    .line 941
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAdapterProvider:Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;->reloadAllItemsFromDB(Z)V

    goto :goto_0
.end method

.method private changeState(IZZ)Z
    .locals 4
    .param p1, "toState"    # I
    .param p2, "animated"    # Z
    .param p3, "forced"    # Z

    .prologue
    .line 1103
    if-nez p3, :cond_0

    iget v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mState:I

    if-ne v1, p1, :cond_0

    .line 1104
    const/4 v1, 0x0

    .line 1116
    :goto_0
    return v1

    .line 1108
    :cond_0
    const-string v1, "Launcher.AppsController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", animated : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    new-instance v0, Lcom/android/launcher3/common/stage/StageEntry;

    invoke-direct {v0}, Lcom/android/launcher3/common/stage/StageEntry;-><init>()V

    .line 1112
    .local v0, "data":Lcom/android/launcher3/common/stage/StageEntry;
    iput-boolean p2, v0, Lcom/android/launcher3/common/stage/StageEntry;->enableAnimation:Z

    .line 1113
    iget v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mState:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/stage/StageEntry;->setInternalStateFrom(I)V

    .line 1114
    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/stage/StageEntry;->setInternalStateTo(I)V

    .line 1115
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/android/launcher3/common/stage/StageManager;->switchInternalState(Lcom/android/launcher3/common/stage/Stage;Lcom/android/launcher3/common/stage/StageEntry;)V

    .line 1116
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private closeOrganizeAppsConfirmDialog()V
    .locals 3

    .prologue
    .line 2786
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 2787
    .local v1, "manager":Landroid/app/FragmentManager;
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 2789
    .local v0, "ft":Landroid/app/FragmentTransaction;
    invoke-static {v0, v1}, Lcom/android/launcher3/allapps/OrganizeAppsConfirmDialog;->dismiss(Landroid/app/FragmentTransaction;Landroid/app/FragmentManager;)V

    .line 2790
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 2791
    return-void
.end method

.method private closeViewTypeDialog()V
    .locals 3

    .prologue
    .line 991
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 992
    .local v1, "manager":Landroid/app/FragmentManager;
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 994
    .local v0, "ft":Landroid/app/FragmentTransaction;
    invoke-static {v0, v1}, Lcom/android/launcher3/allapps/AppsViewTypeDialog;->dismiss(Landroid/app/FragmentTransaction;Landroid/app/FragmentManager;)V

    .line 995
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 996
    return-void
.end method

.method private createFolder()V
    .locals 20

    .prologue
    .line 2163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->getCheckedAppsViewList()Ljava/util/ArrayList;

    move-result-object v2

    .line 2164
    .local v2, "appsViewList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2165
    .local v5, "folderItemsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v16

    if-lez v16, :cond_0

    .line 2166
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/launcher3/allapps/controller/AppsController;->getTargetView(Ljava/util/ArrayList;)Landroid/view/View;

    move-result-object v13

    .line 2167
    .local v13, "targetView":Landroid/view/View;
    if-nez v13, :cond_1

    .line 2232
    .end local v13    # "targetView":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 2170
    .restart local v13    # "targetView":Landroid/view/View;
    :cond_1
    invoke-virtual {v13}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 2171
    .local v12, "targetItem":Lcom/android/launcher3/common/base/item/IconInfo;
    invoke-virtual {v13}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    check-cast v11, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 2173
    .local v11, "targetCellLayout":Lcom/android/launcher3/common/base/view/CellLayout;
    if-eqz v12, :cond_7

    .line 2174
    const-string v16, "Launcher.AppsController"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Create folder with target item\'s position. target item is "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget-object v0, v12, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher3/Launcher;->isFolderStage()Z

    move-result v16

    if-eqz v16, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f0b0032

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 2176
    .local v3, "delayToOpenFolder":I
    :goto_1
    iget-wide v0, v12, Lcom/android/launcher3/common/base/item/IconInfo;->screenId:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    long-to-int v14, v0

    .line 2179
    .local v14, "toPage":I
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v13}, Lcom/android/launcher3/allapps/controller/AppsController;->removeCheckedAppView(Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v5

    .line 2181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v8

    .line 2182
    .local v8, "page":Lcom/android/launcher3/common/base/view/CellLayout;
    if-eqz v8, :cond_2

    .line 2183
    invoke-virtual {v8, v13}, Lcom/android/launcher3/common/base/view/CellLayout;->removeView(Landroid/view/View;)V

    .line 2187
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/allapps/controller/AppsController;->getDragController()Lcom/android/launcher3/allapps/controller/AppsDragController;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11, v12}, Lcom/android/launcher3/allapps/controller/AppsDragController;->addFolder(Lcom/android/launcher3/common/base/view/CellLayout;Lcom/android/launcher3/common/base/item/IconInfo;)Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v4

    .line 2189
    .local v4, "folder":Lcom/android/launcher3/folder/view/FolderIconView;
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v16

    if-lez v16, :cond_3

    .line 2190
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/launcher3/allapps/controller/AppsController;->removeCheckedAppViewFromFolder(Ljava/util/ArrayList;)V

    .line 2193
    :cond_3
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2194
    .local v7, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_5

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/View;

    .line 2195
    .local v15, "view":Landroid/view/View;
    invoke-virtual {v15}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 2196
    .local v6, "item":Lcom/android/launcher3/common/base/item/IconInfo;
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2175
    .end local v3    # "delayToOpenFolder":I
    .end local v4    # "folder":Lcom/android/launcher3/folder/view/FolderIconView;
    .end local v6    # "item":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v7    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    .end local v8    # "page":Lcom/android/launcher3/common/base/view/CellLayout;
    .end local v14    # "toPage":I
    .end local v15    # "view":Landroid/view/View;
    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    .line 2198
    .restart local v3    # "delayToOpenFolder":I
    .restart local v4    # "folder":Lcom/android/launcher3/folder/view/FolderIconView;
    .restart local v7    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    .restart local v8    # "page":Lcom/android/launcher3/common/base/view/CellLayout;
    .restart local v14    # "toPage":I
    :cond_5
    invoke-virtual {v4, v7}, Lcom/android/launcher3/folder/view/FolderIconView;->addItems(Ljava/util/ArrayList;)V

    .line 2200
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/allapps/controller/AppsController;->isAlphabeticalMode()Z

    move-result v16

    if-eqz v16, :cond_6

    .line 2201
    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/controller/AppsController;->repositionByNormalizer(Z)V

    .line 2202
    invoke-virtual {v4}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v16

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/android/launcher3/folder/FolderInfo;->screenId:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    long-to-int v14, v0

    .line 2204
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/allapps/controller/AppsController;->removeEmptyPagesAndUpdateAllItemsInfo()Z

    .line 2206
    move v10, v14

    .line 2207
    .local v10, "snapToPage":I
    new-instance v9, Lcom/android/launcher3/allapps/controller/AppsController$20;

    move-object/from16 v0, p0

    invoke-direct {v9, v0, v10}, Lcom/android/launcher3/allapps/controller/AppsController$20;-><init>(Lcom/android/launcher3/allapps/controller/AppsController;I)V

    .line 2216
    .local v9, "runnable":Ljava/lang/Runnable;
    new-instance v16, Landroid/os/Handler;

    invoke-direct/range {v16 .. v16}, Landroid/os/Handler;-><init>()V

    new-instance v17, Lcom/android/launcher3/allapps/controller/AppsController$21;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v9, v4}, Lcom/android/launcher3/allapps/controller/AppsController$21;-><init>(Lcom/android/launcher3/allapps/controller/AppsController;Ljava/lang/Runnable;Lcom/android/launcher3/folder/view/FolderIconView;)V

    int-to-long v0, v3

    move-wide/from16 v18, v0

    invoke-virtual/range {v16 .. v19}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 2229
    .end local v3    # "delayToOpenFolder":I
    .end local v4    # "folder":Lcom/android/launcher3/folder/view/FolderIconView;
    .end local v7    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    .end local v8    # "page":Lcom/android/launcher3/common/base/view/CellLayout;
    .end local v9    # "runnable":Ljava/lang/Runnable;
    .end local v10    # "snapToPage":I
    .end local v14    # "toPage":I
    :cond_7
    const-string v16, "Launcher.AppsController"

    const-string v17, "onClickCreateFolder : app info is null"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private findSearchedApp(Landroid/content/ComponentName;Landroid/os/UserHandle;)V
    .locals 16
    .param p1, "cmp"    # Landroid/content/ComponentName;
    .param p2, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 2576
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v11}, Lcom/android/launcher3/Launcher;->getLauncherModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/launcher3/LauncherModel;->getAppsModel()Lcom/android/launcher3/allapps/model/AppsModel;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/launcher3/allapps/model/AppsModel;->getTopLevelItemsInApps()Ljava/util/ArrayList;

    move-result-object v7

    .line 2578
    .local v7, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 2579
    .local v6, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    iget-wide v14, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    long-to-int v13, v14

    invoke-virtual {v12, v13}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v9

    .line 2580
    .local v9, "parentCell":Lcom/android/launcher3/common/base/view/CellLayout;
    if-eqz v9, :cond_0

    .line 2581
    iget v12, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    if-nez v12, :cond_2

    .line 2582
    iget-object v12, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-virtual {v6}, Lcom/android/launcher3/common/base/item/ItemInfo;->getUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/launcher3/common/compat/UserHandleCompat;->getUser()Landroid/os/UserHandle;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 2583
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    iget-wide v12, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    long-to-int v12, v12

    invoke-virtual {v11, v12}, Lcom/android/launcher3/allapps/view/AppsPagedView;->snapToPage(I)V

    .line 2584
    iget v11, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v12}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellCountX()I

    move-result v12

    rem-int/2addr v11, v12

    iget v12, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v13}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellCountX()I

    move-result v13

    div-int/2addr v12, v13

    invoke-virtual {v9, v11, v12}, Lcom/android/launcher3/common/base/view/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v10

    .line 2585
    .local v10, "view":Landroid/view/View;
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/launcher3/allapps/controller/AppsController;->startBounceAnimationForSearchedApp(Landroid/view/View;)V

    .line 2613
    .end local v6    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v9    # "parentCell":Lcom/android/launcher3/common/base/view/CellLayout;
    .end local v10    # "view":Landroid/view/View;
    :cond_1
    :goto_0
    return-void

    .line 2588
    .restart local v6    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    .restart local v9    # "parentCell":Lcom/android/launcher3/common/base/view/CellLayout;
    :cond_2
    iget v12, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_0

    move-object v4, v6

    .line 2589
    check-cast v4, Lcom/android/launcher3/folder/FolderInfo;

    .line 2590
    .local v4, "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    iget-object v12, v4, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 2591
    .local v5, "info":Lcom/android/launcher3/common/base/item/IconInfo;
    iget-object v13, v5, Lcom/android/launcher3/common/base/item/IconInfo;->componentName:Landroid/content/ComponentName;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-virtual {v5}, Lcom/android/launcher3/common/base/item/IconInfo;->getUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/launcher3/common/compat/UserHandleCompat;->getUser()Landroid/os/UserHandle;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 2592
    iget v11, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v12}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellCountX()I

    move-result v12

    rem-int/2addr v11, v12

    iget v12, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v13}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellCountX()I

    move-result v13

    div-int/2addr v12, v13

    invoke-virtual {v9, v11, v12}, Lcom/android/launcher3/common/base/view/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v10

    .restart local v10    # "view":Landroid/view/View;
    move-object v3, v10

    .line 2593
    check-cast v3, Lcom/android/launcher3/folder/view/FolderIconView;

    .line 2594
    .local v3, "folderIconView":Lcom/android/launcher3/folder/view/FolderIconView;
    new-instance v2, Lcom/android/launcher3/common/stage/StageEntry;

    invoke-direct {v2}, Lcom/android/launcher3/common/stage/StageEntry;-><init>()V

    .line 2595
    .local v2, "data":Lcom/android/launcher3/common/stage/StageEntry;
    const-string v11, "KEY_FOLDER_ICON_VIEW"

    invoke-virtual {v2, v11, v3}, Lcom/android/launcher3/common/stage/StageEntry;->putExtras(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2596
    const-string v11, "KEY_FOLDER_ICON_APPSEARCHED"

    invoke-virtual {v2, v11, v5}, Lcom/android/launcher3/common/stage/StageEntry;->putExtras(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2597
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    iget-wide v12, v4, Lcom/android/launcher3/folder/FolderInfo;->screenId:J

    long-to-int v12, v12

    invoke-virtual {v11, v12}, Lcom/android/launcher3/allapps/view/AppsPagedView;->snapToPage(I)V

    .line 2598
    new-instance v8, Landroid/os/Handler;

    invoke-direct {v8}, Landroid/os/Handler;-><init>()V

    .line 2599
    .local v8, "mHandler":Landroid/os/Handler;
    new-instance v11, Lcom/android/launcher3/allapps/controller/AppsController$23;

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v2}, Lcom/android/launcher3/allapps/controller/AppsController$23;-><init>(Lcom/android/launcher3/allapps/controller/AppsController;Lcom/android/launcher3/common/stage/StageEntry;)V

    const-wide/16 v12, 0x3e8

    invoke-virtual {v8, v11, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private getFirstMatch(Lcom/android/launcher3/common/base/item/ItemOperator;)Landroid/view/View;
    .locals 4
    .param p1, "operator"    # Lcom/android/launcher3/common/base/item/ItemOperator;

    .prologue
    const/4 v3, 0x0

    .line 2007
    const/4 v1, 0x1

    new-array v0, v1, [Landroid/view/View;

    .line 2008
    .local v0, "value":[Landroid/view/View;
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    new-instance v2, Lcom/android/launcher3/allapps/controller/AppsController$18;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/launcher3/allapps/controller/AppsController$18;-><init>(Lcom/android/launcher3/allapps/controller/AppsController;Lcom/android/launcher3/common/base/item/ItemOperator;[Landroid/view/View;)V

    invoke-virtual {v1, v3, v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->mapOverItems(ZLcom/android/launcher3/common/base/item/ItemOperator;)V

    .line 2018
    aget-object v1, v0, v3

    return-object v1
.end method

.method private getOrganizeAppsAlertEnable()Z
    .locals 3

    .prologue
    .line 2700
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "AppsController.OrganizeAppsAlert"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private getTargetView(Ljava/util/ArrayList;)Landroid/view/View;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 2235
    .local p1, "appsViewList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v7, 0x0

    .line 2236
    .local v7, "targetView":Landroid/view/View;
    const/4 v6, 0x0

    .line 2237
    .local v6, "targetItem":Lcom/android/launcher3/common/base/item/ItemInfo;
    if-eqz p1, :cond_3

    .line 2238
    const/4 v3, 0x1

    .line 2239
    .local v3, "isItemInFolder":Z
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v2, v8, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 2240
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "targetView":Landroid/view/View;
    check-cast v7, Landroid/view/View;

    .line 2241
    .restart local v7    # "targetView":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "targetItem":Lcom/android/launcher3/common/base/item/ItemInfo;
    check-cast v6, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 2243
    .restart local v6    # "targetItem":Lcom/android/launcher3/common/base/item/ItemInfo;
    invoke-virtual {p0, v6}, Lcom/android/launcher3/allapps/controller/AppsController;->isItemInFolder(Lcom/android/launcher3/common/base/item/ItemInfo;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 2244
    const/4 v3, 0x0

    .line 2249
    :cond_0
    if-eqz v3, :cond_3

    .line 2250
    const/4 v1, -0x1

    .line 2251
    .local v1, "empty":I
    iget-object v8, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v8}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getNextPage()I

    move-result v4

    .line 2252
    .local v4, "orderablePage":I
    iget-object v8, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v8}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getPageCount()I

    move-result v5

    .line 2253
    .local v5, "pageCount":I
    iget-object v8, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v8}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getNextPage()I

    move-result v2

    :goto_1
    if-ge v2, v5, :cond_1

    .line 2254
    iget-object v8, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v8, v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->findFirstEmptyCell(I)I

    move-result v1

    .line 2255
    if-ltz v1, :cond_5

    .line 2256
    move v4, v2

    .line 2261
    :cond_1
    const/4 v8, -0x1

    if-ne v1, v8, :cond_2

    .line 2262
    iget-object v8, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v8}, Lcom/android/launcher3/allapps/view/AppsPagedView;->createAppsPage()Lcom/android/launcher3/allapps/view/AppsViewCellLayout;

    .line 2265
    :cond_2
    iget-object v8, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v8, v4}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v0

    .line 2266
    .local v0, "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    const/4 v8, 0x0

    invoke-virtual {p0, v6, v0, v8}, Lcom/android/launcher3/allapps/controller/AppsController;->createItemView(Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v7

    .line 2268
    if-eqz v7, :cond_3

    .line 2269
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "targetItem":Lcom/android/launcher3/common/base/item/ItemInfo;
    check-cast v6, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 2270
    .restart local v6    # "targetItem":Lcom/android/launcher3/common/base/item/ItemInfo;
    int-to-long v8, v4

    iput-wide v8, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    .line 2271
    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->getPageChildCount()I

    move-result v8

    iput v8, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    .line 2272
    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Lcom/android/launcher3/common/base/item/ItemInfo;->setChecked(Z)V

    .line 2274
    invoke-virtual {p0, v7, v6}, Lcom/android/launcher3/allapps/controller/AppsController;->addItem(Landroid/view/View;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 2279
    .end local v0    # "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    .end local v1    # "empty":I
    .end local v2    # "i":I
    .end local v3    # "isItemInFolder":Z
    .end local v4    # "orderablePage":I
    .end local v5    # "pageCount":I
    :cond_3
    return-object v7

    .line 2239
    .restart local v2    # "i":I
    .restart local v3    # "isItemInFolder":Z
    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 2253
    .restart local v1    # "empty":I
    .restart local v4    # "orderablePage":I
    .restart local v5    # "pageCount":I
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static getViewTypeFromSharedPreference(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2675
    .line 2676
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 2675
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2677
    .local v0, "prefs":Landroid/content/SharedPreferences;
    if-eqz v0, :cond_0

    .line 2678
    const-string v1, "AppsController.ViewType"

    sget-object v2, Lcom/android/launcher3/allapps/controller/AppsController$ViewType;->CUSTOM_GRID:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/controller/AppsController$ViewType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2680
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private initAdapterProvider()V
    .locals 4

    .prologue
    .line 424
    new-instance v0, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mDataListener:Lcom/android/launcher3/allapps/controller/AppsAdapter$DataListener;

    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mViewType:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/allapps/controller/AppsAdapter$DataListener;Lcom/android/launcher3/allapps/controller/AppsController$ViewType;)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAdapterProvider:Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;

    .line 425
    return-void
.end method

.method private initAppSearchBar()V
    .locals 2

    .prologue
    .line 428
    new-instance v0, Lcom/android/launcher3/allapps/view/AppsSearch;

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsContainer:Lcom/android/launcher3/allapps/view/AppsContainer;

    invoke-direct {v0, v1, p0}, Lcom/android/launcher3/allapps/view/AppsSearch;-><init>(Landroid/view/View;Lcom/android/launcher3/allapps/controller/AppsController;)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsSearch:Lcom/android/launcher3/allapps/view/AppsSearch;

    .line 429
    return-void
.end method

.method private initAppsPagedView()V
    .locals 2

    .prologue
    .line 397
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    const v1, 0x7f110024

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/view/AppsPagedView;

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    .line 398
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->setup(Lcom/android/launcher3/common/drag/DragManager;)V

    .line 399
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->setListener(Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;)V

    .line 400
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 401
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->updateBackgroundAndPaddings()V

    .line 402
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mScrollDeterminator:Lcom/android/launcher3/util/event/ScrollDeterminator;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->setScrollDeterminator(Lcom/android/launcher3/util/event/ScrollDeterminator;)V

    .line 403
    return-void
.end method

.method private initBackground()V
    .locals 2

    .prologue
    .line 379
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/view/DragLayer;->setBackgroundImageAlpha(F)V

    .line 380
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    const v1, 0x7f020004

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/view/DragLayer;->setBackgroundImage(I)V

    .line 381
    return-void
.end method

.method private initContainerView()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 363
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    const v3, 0x7f1100b2

    invoke-virtual {v2, v3}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/allapps/view/AppsContainer;

    iput-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsContainer:Lcom/android/launcher3/allapps/view/AppsContainer;

    .line 364
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsContainer:Lcom/android/launcher3/allapps/view/AppsContainer;

    invoke-virtual {v2, p0}, Lcom/android/launcher3/allapps/view/AppsContainer;->bindController(Lcom/android/launcher3/common/base/controller/ControllerBase;)V

    .line 365
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsContainer:Lcom/android/launcher3/allapps/view/AppsContainer;

    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/allapps/view/AppsContainer;->setTrayManager(Lcom/android/launcher3/common/tray/TrayManager;)V

    .line 366
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsContainer:Lcom/android/launcher3/allapps/view/AppsContainer;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/android/launcher3/allapps/view/AppsContainer;->setVisibility(I)V

    .line 367
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportNavigationBar()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 368
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsContainer:Lcom/android/launcher3/allapps/view/AppsContainer;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsContainer;->getPaddingTop()I

    move-result v1

    .line 369
    .local v1, "topPadding":I
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v0

    .line 370
    .local v0, "dp":Lcom/android/launcher3/common/deviceprofile/DeviceProfile;
    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->isVerticalBarLayout()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 371
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsContainer:Lcom/android/launcher3/allapps/view/AppsContainer;

    iget v3, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->navigationBarHeight:I

    invoke-virtual {v2, v4, v1, v3, v4}, Lcom/android/launcher3/allapps/view/AppsContainer;->setPadding(IIII)V

    .line 376
    .end local v0    # "dp":Lcom/android/launcher3/common/deviceprofile/DeviceProfile;
    .end local v1    # "topPadding":I
    :cond_0
    :goto_0
    return-void

    .line 373
    .restart local v0    # "dp":Lcom/android/launcher3/common/deviceprofile/DeviceProfile;
    .restart local v1    # "topPadding":I
    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsContainer:Lcom/android/launcher3/allapps/view/AppsContainer;

    iget v3, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->navigationBarHeight:I

    invoke-virtual {v2, v4, v1, v4, v3}, Lcom/android/launcher3/allapps/view/AppsContainer;->setPadding(IIII)V

    goto :goto_0
.end method

.method private initDragController()V
    .locals 3

    .prologue
    .line 389
    new-instance v0, Lcom/android/launcher3/allapps/controller/AppsDragController;

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/allapps/controller/AppsDragController;-><init>(Landroid/content/Context;Lcom/android/launcher3/allapps/view/AppsPagedView;)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mDragController:Lcom/android/launcher3/allapps/controller/AppsDragController;

    .line 390
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mDragController:Lcom/android/launcher3/allapps/controller/AppsDragController;

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/controller/AppsDragController;->setup(Lcom/android/launcher3/common/view/DragLayer;)V

    .line 391
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mDragController:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->setListener(Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;)V

    .line 392
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mDragController:Lcom/android/launcher3/allapps/controller/AppsDragController;

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mReorderController:Lcom/android/launcher3/allapps/controller/AppsReorderController;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/controller/AppsDragController;->setReorderListener(Lcom/android/launcher3/allapps/AppsReorderListener;)V

    .line 393
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mDragController:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/drag/DragManager;->addDragListener(Lcom/android/launcher3/common/drag/DragManager$DragListener;)V

    .line 394
    return-void
.end method

.method private initPageIndicator()V
    .locals 6

    .prologue
    .line 432
    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    const v5, 0x7f110025

    invoke-virtual {v4, v5}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPageIndicatorView:Landroid/view/View;

    .line 433
    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPageIndicatorView:Landroid/view/View;

    if-eqz v4, :cond_1

    .line 435
    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPageIndicatorView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 436
    .local v3, "oldLp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsContainer:Lcom/android/launcher3/allapps/view/AppsContainer;

    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPageIndicatorView:Landroid/view/View;

    invoke-virtual {v4, v5}, Lcom/android/launcher3/allapps/view/AppsContainer;->removeView(Landroid/view/View;)V

    .line 438
    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    invoke-virtual {v4}, Lcom/android/launcher3/common/view/DragLayer;->getChildCount()I

    move-result v1

    .line 439
    .local v1, "indexToAddView":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    invoke-virtual {v4}, Lcom/android/launcher3/common/view/DragLayer;->getChildCount()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 440
    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsContainer:Lcom/android/launcher3/allapps/view/AppsContainer;

    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    invoke-virtual {v5, v0}, Lcom/android/launcher3/common/view/DragLayer;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 441
    move v1, v0

    .line 446
    :cond_0
    new-instance v2, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;

    invoke-direct {v2, v3}, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 447
    .local v2, "newLp":Lcom/android/launcher3/common/view/DragLayer$LayoutParams;
    const/16 v4, 0x51

    iput v4, v2, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;->gravity:I

    .line 448
    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPageIndicatorView:Landroid/view/View;

    invoke-virtual {v4, v5, v1, v2}, Lcom/android/launcher3/common/view/DragLayer;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 450
    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->isAppsStage()Z

    move-result v4

    if-nez v4, :cond_1

    .line 451
    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPageIndicatorView:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    .line 454
    .end local v0    # "i":I
    .end local v1    # "indexToAddView":I
    .end local v2    # "newLp":Lcom/android/launcher3/common/view/DragLayer$LayoutParams;
    .end local v3    # "oldLp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    return-void

    .line 439
    .restart local v0    # "i":I
    .restart local v1    # "indexToAddView":I
    .restart local v3    # "oldLp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private initReorderController()V
    .locals 3

    .prologue
    .line 384
    new-instance v0, Lcom/android/launcher3/allapps/controller/AppsReorderController;

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/allapps/controller/AppsReorderController;-><init>(Landroid/content/Context;Lcom/android/launcher3/allapps/view/AppsPagedView;)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mReorderController:Lcom/android/launcher3/allapps/controller/AppsReorderController;

    .line 385
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mReorderController:Lcom/android/launcher3/allapps/controller/AppsReorderController;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->setListener(Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;)V

    .line 386
    return-void
.end method

.method private initScreenGridPanel()V
    .locals 2

    .prologue
    .line 458
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    const v1, 0x7f11002e

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/AppsScreenGridPanel;

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsScreenGridPanel:Lcom/android/launcher3/allapps/AppsScreenGridPanel;

    .line 459
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsScreenGridPanel:Lcom/android/launcher3/allapps/AppsScreenGridPanel;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->bindController(Lcom/android/launcher3/common/base/controller/ControllerBase;)V

    .line 460
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsScreenGridPanel:Lcom/android/launcher3/allapps/AppsScreenGridPanel;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->initScreenGridTopContainer()V

    .line 461
    return-void
.end method

.method private initTrayResources()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 406
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 407
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f0a019b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsSlipY:I

    .line 408
    const v1, 0x7f0a00fc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mMoveToHomeApproachingStart:I

    .line 410
    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x7f10000a

    invoke-virtual {v0, v2, v3, v3}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v2

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mPageSnapMovingRatioOnApps:F

    .line 411
    const v1, 0x7f100003

    invoke-virtual {v0, v1, v3, v3}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v1

    iput v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsShrinkFactor:F

    .line 412
    const/high16 v1, 0x7f100000

    invoke-virtual {v0, v1, v3, v3}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v1

    iput v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsAlphaRatio:F

    .line 413
    const v1, 0x7f100002

    invoke-virtual {v0, v1, v3, v3}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v1

    iput v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mPageIndicatorShrinkFactor:F

    .line 414
    const v1, 0x7f100001

    invoke-virtual {v0, v1, v3, v3}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v1

    iput v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mPageIndicatorScaleRatio:F

    .line 416
    const v1, 0x7f0a01a1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mUpwardFadeOutStart:I

    .line 417
    iput v4, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mUpwardFadeOutEnd:I

    .line 418
    iget v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mUpwardFadeOutStart:I

    neg-int v1, v1

    iput v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mDownwardFadeOutStart:I

    .line 419
    iput v4, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mDownwardFadeOutEnd:I

    .line 420
    iget v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mUpwardFadeOutEnd:I

    iget v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mUpwardFadeOutStart:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mFadeOutRange:F

    .line 421
    return-void
.end method

.method private isDragLocked()Z
    .locals 1

    .prologue
    .line 2914
    iget-boolean v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mRemoveInProgress:Z

    return v0
.end method

.method private isGridState()Z
    .locals 2

    .prologue
    .line 1958
    iget v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTidyState()Z
    .locals 2

    .prologue
    .line 1954
    iget v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private modifyItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJIII)V
    .locals 10
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;
    .param p2, "container"    # J
    .param p4, "screenId"    # J
    .param p6, "cellX"    # I
    .param p7, "cellY"    # I
    .param p8, "rank"    # I

    .prologue
    .line 1575
    iget v9, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->hidden:I

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lcom/android/launcher3/allapps/controller/AppsController;->modifyItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJIIII)V

    .line 1576
    return-void
.end method

.method private modifyItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJIIII)V
    .locals 4
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;
    .param p2, "container"    # J
    .param p4, "screenId"    # J
    .param p6, "cellX"    # I
    .param p7, "cellY"    # I
    .param p8, "rank"    # I
    .param p9, "hidden"    # I

    .prologue
    .line 1580
    iput-wide p2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    .line 1581
    iput p8, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    .line 1582
    iput p6, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    .line 1583
    iput p7, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    .line 1584
    iput-wide p4, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    .line 1585
    iput p9, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->hidden:I

    .line 1586
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->mDirty:Z

    .line 1588
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1590
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "container"

    iget-wide v2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1591
    const-string v1, "rank"

    iget v2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1592
    const-string v1, "cellX"

    iget v2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1593
    const-string v1, "cellY"

    iget v2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1594
    const-string v1, "screen"

    iget-wide v2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1595
    const-string v1, "hidden"

    iget v2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->hidden:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1597
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAdapterProvider:Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;

    invoke-virtual {v1, v0, p1}, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;->updateItem(Landroid/content/ContentValues;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 1598
    return-void
.end method

.method private removeAppsItem(Lcom/android/launcher3/common/base/item/ItemInfo;Z)V
    .locals 9
    .param p1, "info"    # Lcom/android/launcher3/common/base/item/ItemInfo;
    .param p2, "removeEmptyCellAndPage"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 1485
    const-string v5, "Launcher.AppsController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "removeAppsItem : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1486
    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/controller/AppsController;->isItemInFolder(Lcom/android/launcher3/common/base/item/ItemInfo;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-wide v6, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    invoke-virtual {p0, v6, v7}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsIconByItemId(J)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-wide v6, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    .line 1487
    invoke-virtual {p0, v6, v7}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsIconByItemId(J)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v5, :cond_1

    .line 1488
    iget-wide v6, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    invoke-virtual {p0, v6, v7}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsIconByItemId(J)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/folder/FolderInfo;

    .local v2, "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    move-object v5, p1

    .line 1489
    check-cast v5, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v2, v5}, Lcom/android/launcher3/folder/FolderInfo;->remove(Lcom/android/launcher3/common/base/item/IconInfo;)V

    .line 1490
    const-string v5, "Launcher.AppsController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "remove : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/launcher3/common/base/item/ItemInfo;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1512
    .end local v2    # "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    :cond_0
    :goto_0
    return-void

    .line 1492
    :cond_1
    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    iget-wide v6, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    long-to-int v6, v6

    invoke-virtual {v5, v6}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v4

    .line 1493
    .local v4, "parentCell":Lcom/android/launcher3/common/base/view/CellLayout;
    if-eqz v4, :cond_0

    .line 1494
    iget v5, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v6}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellCountX()I

    move-result v6

    rem-int/2addr v5, v6

    iget v6, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    iget-object v7, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    .line 1495
    invoke-virtual {v7}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellCountX()I

    move-result v7

    div-int/2addr v6, v7

    .line 1494
    invoke-virtual {v4, v5, v6}, Lcom/android/launcher3/common/base/view/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v3

    .line 1496
    .local v3, "icon":Landroid/view/View;
    invoke-direct {p0, v4, v3}, Lcom/android/launcher3/allapps/controller/AppsController;->removeAppsItem(Lcom/android/launcher3/common/base/view/CellLayout;Landroid/view/View;)V

    .line 1499
    if-eqz p2, :cond_0

    .line 1500
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->getViewType()Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    move-result-object v5

    sget-object v6, Lcom/android/launcher3/allapps/controller/AppsController$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    if-eq v5, v6, :cond_0

    .line 1501
    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v5}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getMaxItemsPerScreen()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .line 1502
    .local v1, "endPos":I
    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mReorderController:Lcom/android/launcher3/allapps/controller/AppsReorderController;

    iget-wide v6, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    long-to-int v6, v6

    invoke-virtual {v5, v8, v1, v6, v8}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->removeEmptyCellAtPage(IIIZ)V

    .line 1504
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->removeEmptyPagesAndUpdateAllItemsInfo()Z

    move-result v0

    .line 1505
    .local v0, "dirtyItemUpdated":Z
    if-nez v0, :cond_0

    .line 1506
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->updateDirtyItems()V

    goto :goto_0
.end method

.method private removeAppsItem(Lcom/android/launcher3/common/base/view/CellLayout;Landroid/view/View;)V
    .locals 2
    .param p1, "parentCell"    # Lcom/android/launcher3/common/base/view/CellLayout;
    .param p2, "v"    # Landroid/view/View;

    .prologue
    .line 1463
    if-eqz p1, :cond_1

    .line 1464
    invoke-virtual {p1, p2}, Lcom/android/launcher3/common/base/view/CellLayout;->removeView(Landroid/view/View;)V

    .line 1473
    :goto_0
    instance-of v0, p2, Lcom/android/launcher3/common/drag/DropTarget;

    if-eqz v0, :cond_0

    .line 1474
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    check-cast p2, Lcom/android/launcher3/common/drag/DropTarget;

    .end local p2    # "v":Landroid/view/View;
    invoke-virtual {v0, p2}, Lcom/android/launcher3/common/drag/DragManager;->removeDropTarget(Lcom/android/launcher3/common/drag/DropTarget;)V

    .line 1476
    :cond_0
    return-void

    .line 1470
    .restart local p2    # "v":Landroid/view/View;
    :cond_1
    const-string v0, "Launcher.AppsController"

    const-string v1, "mDragInfo.cell has null parent"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private removeCheckedAppView(Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;
    .locals 5
    .param p2, "targetView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2283
    .local p1, "appsViewList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2284
    .local v1, "folderItemsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2285
    .local v0, "checkedApp":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 2286
    .local v2, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    if-eqz v2, :cond_0

    .line 2290
    invoke-virtual {p0, v2}, Lcom/android/launcher3/allapps/controller/AppsController;->isItemInFolder(Lcom/android/launcher3/common/base/item/ItemInfo;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2291
    check-cast v2, Lcom/android/launcher3/common/base/item/IconInfo;

    .end local v2    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2294
    .end local v0    # "checkedApp":Landroid/view/View;
    :cond_1
    return-object v1
.end method

.method private removeCheckedAppViewFromFolder(Ljava/util/ArrayList;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2298
    .local p1, "appsViewList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 2299
    .local v5, "itemMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 2300
    .local v4, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-wide v10, v4, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 2301
    iget-wide v10, v4, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2303
    :cond_0
    iget-wide v10, v4, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    .line 2304
    .local v8, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    check-cast v4, Lcom/android/launcher3/common/base/item/IconInfo;

    .end local v4    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2307
    .end local v8    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    :cond_1
    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    .line 2308
    .local v7, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_2
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 2309
    .local v0, "containerId":J
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 2310
    .local v6, "itemsInContainer":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    const-wide/16 v12, 0x0

    cmp-long v9, v0, v12

    if-lez v9, :cond_2

    .line 2311
    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsIconByItemId(J)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/folder/view/FolderIconView;

    .line 2312
    .local v3, "iconView":Lcom/android/launcher3/folder/view/FolderIconView;
    if-eqz v3, :cond_3

    .line 2313
    invoke-virtual {v3}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v2

    .line 2314
    .local v2, "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    invoke-virtual {v2, v6}, Lcom/android/launcher3/folder/FolderInfo;->remove(Ljava/util/ArrayList;)V

    goto :goto_1

    .line 2316
    .end local v2    # "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    :cond_3
    const-string v9, "Launcher.AppsController"

    const-string v11, "folder iconview is null"

    invoke-static {v9, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2320
    .end local v0    # "containerId":J
    .end local v3    # "iconView":Lcom/android/launcher3/folder/view/FolderIconView;
    .end local v6    # "itemsInContainer":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    :cond_4
    return-void
.end method

.method private repositionByConfiguration()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 2937
    const/4 v4, 0x2

    new-array v3, v4, [I

    .line 2938
    .local v3, "savedGrid":[I
    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v4, v3}, Lcom/android/launcher3/util/ScreenGridUtilities;->loadCurrentAppsGridSize(Landroid/content/Context;[I)V

    .line 2939
    aget v0, v3, v6

    .line 2940
    .local v0, "cellX":I
    const/4 v4, 0x1

    aget v1, v3, v4

    .line 2942
    .local v1, "cellY":I
    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v2

    .line 2943
    .local v2, "dp":Lcom/android/launcher3/common/deviceprofile/DeviceProfile;
    invoke-virtual {v2, v0, v1}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->setAppsCurrentGrid(II)V

    .line 2945
    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAdapterProvider:Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;->getNormalizer()Lcom/android/launcher3/allapps/controller/Normalizer;

    move-result-object v4

    const/4 v5, 0x3

    invoke-direct {p0, v4, v5, v6}, Lcom/android/launcher3/allapps/controller/AppsController;->repositionByNormalizer(Lcom/android/launcher3/allapps/controller/Normalizer;IZ)V

    .line 2946
    return-void
.end method

.method private repositionByGrid([I)V
    .locals 9
    .param p1, "grid"    # [I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2949
    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v2

    .line 2950
    .local v2, "dp":Lcom/android/launcher3/common/deviceprofile/DeviceProfile;
    aget v0, p1, v7

    .line 2951
    .local v0, "cellX":I
    aget v1, p1, v8

    .line 2952
    .local v1, "cellY":I
    invoke-virtual {v2, v0, v1}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->setAppsCurrentGrid(II)V

    .line 2954
    const/4 v4, 0x2

    new-array v3, v4, [I

    .line 2955
    .local v3, "savedGrid":[I
    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v4, v3}, Lcom/android/launcher3/util/ScreenGridUtilities;->loadCurrentAppsGridSize(Landroid/content/Context;[I)V

    .line 2957
    const-string v4, "Launcher.AppsController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "repositionByGrid for preview, current cellX : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", cellY : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", savedGridX : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v3, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", savedGridY : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v3, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2960
    aget v4, v3, v7

    if-ne v4, v0, :cond_1

    aget v4, v3, v8

    if-ne v4, v1, :cond_1

    .line 2961
    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAdapterProvider:Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;

    invoke-virtual {v4, v7}, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;->reloadAllItemsFromDB(Z)V

    .line 2967
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v4, v0, v1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->onChangeScreenGrid(II)V

    .line 2968
    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAdapterProvider:Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;->getNormalizer()Lcom/android/launcher3/allapps/controller/Normalizer;

    move-result-object v4

    invoke-direct {p0, v4, v8, v7}, Lcom/android/launcher3/allapps/controller/AppsController;->repositionByNormalizer(Lcom/android/launcher3/allapps/controller/Normalizer;IZ)V

    .line 2969
    return-void

    .line 2963
    :cond_1
    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mViewType:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    sget-object v5, Lcom/android/launcher3/allapps/controller/AppsController$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    if-ne v4, v5, :cond_0

    .line 2964
    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAdapterProvider:Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;

    invoke-virtual {v4, v7}, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;->reloadAllItemsFromDB(Z)V

    goto :goto_0
.end method

.method private repositionByNormalizer(Lcom/android/launcher3/allapps/controller/Normalizer;IZ)V
    .locals 18
    .param p2, "repositionBy"    # I
    .param p3, "animate"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/allapps/controller/Normalizer",
            "<",
            "Ljava/lang/Object;",
            ">;IZ)V"
        }
    .end annotation

    .prologue
    .line 2737
    .local p1, "normalizer":Lcom/android/launcher3/allapps/controller/Normalizer;, "Lcom/android/launcher3/allapps/controller/Normalizer<Ljava/lang/Object;>;"
    const-string v14, "Launcher.AppsController"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "repositionByNormalizer start : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2738
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 2739
    .local v4, "cur":J
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 2740
    .local v9, "iconViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 2741
    .local v8, "folderViewMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/folder/FolderInfo;Landroid/view/View;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v14}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getPageCount()I

    move-result v11

    .line 2742
    .local v11, "pageCount":I
    const/4 v12, 0x0

    .local v12, "pageIndex":I
    :goto_0
    if-ge v12, v11, :cond_2

    .line 2743
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v14, v12}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v3

    .line 2744
    .local v3, "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    invoke-virtual {v3}, Lcom/android/launcher3/common/base/view/CellLayout;->getPageChildCount()I

    move-result v2

    .line 2745
    .local v2, "childCount":I
    const/4 v10, 0x0

    .local v10, "itemIndex":I
    :goto_1
    if-ge v10, v2, :cond_1

    .line 2746
    invoke-virtual {v3, v10}, Lcom/android/launcher3/common/base/view/CellLayout;->getChildOnPageAt(I)Landroid/view/View;

    move-result-object v13

    .line 2747
    .local v13, "view":Landroid/view/View;
    instance-of v14, v13, Lcom/android/launcher3/common/view/Removable;

    if-eqz v14, :cond_0

    move-object v14, v13

    check-cast v14, Lcom/android/launcher3/common/view/Removable;

    invoke-interface {v14}, Lcom/android/launcher3/common/view/Removable;->isMarkToRemove()Z

    move-result v14

    if-nez v14, :cond_0

    .line 2748
    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2749
    invoke-virtual {v13}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v14

    instance-of v14, v14, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v14, :cond_0

    .line 2750
    invoke-virtual {v13}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual {v8, v14, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2745
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 2742
    .end local v13    # "view":Landroid/view/View;
    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 2755
    .end local v2    # "childCount":I
    .end local v3    # "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    .end local v10    # "itemIndex":I
    :cond_2
    const-string v14, "Launcher.AppsController"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "reposition - makeViewList : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sub-long v16, v16, v4

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " , "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 2756
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " , "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " , "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-object/from16 v16, v0

    .line 2757
    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getMaxItemsPerScreen()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " , "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellCountX()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 2755
    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2759
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v14}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getMaxItemsPerScreen()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v15}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellCountX()I

    move-result v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v14, v15}, Lcom/android/launcher3/allapps/controller/Normalizer;->normalize(Ljava/util/ArrayList;II)I

    .line 2760
    const-string v14, "Launcher.AppsController"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "reposition - normalize: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sub-long v16, v16, v4

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2762
    new-instance v7, Ljava/util/HashSet;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v14

    invoke-direct {v7, v14}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 2763
    .local v7, "folderInfos":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/launcher3/folder/FolderInfo;>;"
    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_3
    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/folder/FolderInfo;

    .line 2764
    .local v6, "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    if-nez p2, :cond_4

    .line 2765
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mViewType:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    sget-object v16, Lcom/android/launcher3/allapps/controller/AppsController$ViewType;->CUSTOM_GRID:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    move-object/from16 v0, v16

    if-eq v14, v0, :cond_5

    const/4 v14, 0x1

    :goto_3
    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v17, v0

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v6, v14, v0, v1}, Lcom/android/launcher3/folder/FolderInfo;->setAlphabeticalOrder(ZZLandroid/content/Context;)V

    .line 2767
    :cond_4
    const/4 v14, 0x3

    move/from16 v0, p2

    if-eq v0, v14, :cond_3

    .line 2768
    invoke-virtual {v8, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/View;

    .line 2769
    .restart local v13    # "view":Landroid/view/View;
    instance-of v14, v13, Lcom/android/launcher3/folder/view/FolderIconView;

    if-eqz v14, :cond_3

    .line 2770
    check-cast v13, Lcom/android/launcher3/folder/view/FolderIconView;

    .end local v13    # "view":Landroid/view/View;
    invoke-virtual {v13}, Lcom/android/launcher3/folder/view/FolderIconView;->applyStyle()V

    goto :goto_2

    .line 2765
    :cond_5
    const/4 v14, 0x0

    goto :goto_3

    .line 2775
    .end local v6    # "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    move/from16 v0, p3

    invoke-virtual {v14, v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->rearrangeAllViews(Z)V

    .line 2776
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v14}, Lcom/android/launcher3/allapps/view/AppsPagedView;->removeEmptyScreen()Z

    .line 2777
    const-string v14, "Launcher.AppsController"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "repositionByNormalizer end "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sub-long v16, v16, v4

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2778
    return-void
.end method

.method private repositionByTypeUpPages()V
    .locals 3

    .prologue
    .line 2065
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAdapterProvider:Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;

    const/4 v1, 0x4

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;->setStateAndUpdateLock(IZ)V

    .line 2066
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAdapterProvider:Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;->getNormalizer()Lcom/android/launcher3/allapps/controller/Normalizer;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/launcher3/allapps/controller/AppsController;->repositionByNormalizer(Lcom/android/launcher3/allapps/controller/Normalizer;IZ)V

    .line 2067
    return-void
.end method

.method private restoreScreenGrid(IZ)V
    .locals 4
    .param p1, "delay"    # I
    .param p2, "finishStage"    # Z

    .prologue
    .line 2842
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/launcher3/allapps/controller/AppsController$24;

    invoke-direct {v1, p0, p2}, Lcom/android/launcher3/allapps/controller/AppsController$24;-><init>(Lcom/android/launcher3/allapps/controller/AppsController;Z)V

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2860
    return-void
.end method

.method private saveViewTypeSharefPref()V
    .locals 5

    .prologue
    .line 951
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 953
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 954
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "AppsController.ViewType"

    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mViewType:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/controller/AppsController$ViewType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 955
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 956
    return-void
.end method

.method private searchSettingCheck()V
    .locals 4

    .prologue
    .line 2338
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2339
    .local v1, "pref":Landroid/content/SharedPreferences;
    const-string v2, "search_recommend"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 2341
    .local v0, "checked":Z
    invoke-static {v0}, Lcom/android/launcher3/LauncherFeature;->setSupportGalaxyAppsSearch(Z)V

    .line 2342
    return-void
.end method

.method private sendGSIMLog(Lcom/android/launcher3/common/base/item/IconInfo;)V
    .locals 7
    .param p1, "info"    # Lcom/android/launcher3/common/base/item/IconInfo;

    .prologue
    .line 1069
    if-eqz p1, :cond_0

    .line 1070
    invoke-virtual {p1}, Lcom/android/launcher3/common/base/item/IconInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 1071
    .local v0, "cn":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    .line 1072
    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v1

    const-string v2, "APIS"

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertLogging(Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 1075
    .end local v0    # "cn":Landroid/content/ComponentName;
    :cond_0
    return-void
.end method

.method private setTextViewDescription(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 3053
    instance-of v2, p1, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    move-object v2, p1

    .line 3054
    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3055
    .local v0, "buttonDescriptionFormat":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09000e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3056
    .local v1, "buttonString":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 3060
    .end local v0    # "buttonDescriptionFormat":Ljava/lang/String;
    .end local v1    # "buttonString":Ljava/lang/String;
    .end local p1    # "view":Landroid/view/View;
    :goto_0
    return-void

    .line 3058
    .restart local p1    # "view":Landroid/view/View;
    :cond_0
    const-string v2, "Launcher.AppsController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "This view can\'t cast to TextView : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_1

    .end local p1    # "view":Landroid/view/View;
    :goto_1
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .restart local p1    # "view":Landroid/view/View;
    :cond_1
    const-string p1, "null"

    goto :goto_1
.end method

.method public static setViewTypeFromSharedPreference(Landroid/content/Context;Lcom/android/launcher3/allapps/controller/AppsController$ViewType;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "viewType"    # Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    .prologue
    .line 2684
    .line 2685
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 2684
    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2686
    .local v1, "prefs":Landroid/content/SharedPreferences;
    if-eqz v1, :cond_0

    .line 2687
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2688
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "AppsController.ViewType"

    invoke-virtual {p1}, Lcom/android/launcher3/allapps/controller/AppsController$ViewType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2689
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2691
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method private showMoveToHomePanel(Z)V
    .locals 2
    .param p1, "showPanel"    # Z

    .prologue
    .line 1923
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    if-eqz v0, :cond_0

    .line 1924
    if-eqz p1, :cond_1

    .line 1925
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsContainer:Lcom/android/launcher3/allapps/view/AppsContainer;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/view/AppsContainer;->getHeight()I

    move-result v1

    invoke-virtual {v0, p0, v1}, Lcom/android/launcher3/common/tray/TrayManager;->pullTrayForDrag(Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;I)V

    .line 1930
    :cond_0
    :goto_0
    return-void

    .line 1927
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsContainer:Lcom/android/launcher3/allapps/view/AppsContainer;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/view/AppsContainer;->getHeight()I

    move-result v1

    invoke-virtual {v0, p0, v1}, Lcom/android/launcher3/common/tray/TrayManager;->releaseTrayForDrag(Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;I)V

    goto :goto_0
.end method

.method private startBounceAnimationForSearchedApp(Landroid/view/View;)V
    .locals 1
    .param p1, "bounceView"    # Landroid/view/View;

    .prologue
    .line 2624
    if-nez p1, :cond_0

    .line 2629
    :goto_0
    return-void

    .line 2627
    :cond_0
    new-instance v0, Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation;

    invoke-direct {v0, p1}, Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mBounceAnimation:Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation;

    .line 2628
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mBounceAnimation:Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation;

    invoke-virtual {v0}, Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation;->animate()V

    goto :goto_0
.end method

.method private startSettingActivity(Z)V
    .locals 2
    .param p1, "cancel"    # Z

    .prologue
    .line 2836
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mFromSetting:Z

    .line 2837
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->startHomeSettingActivity()V

    .line 2838
    const/16 v0, 0x96

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/allapps/controller/AppsController;->restoreScreenGrid(IZ)V

    .line 2839
    return-void
.end method

.method private updateAppsViewByTrayPosition(FZ)V
    .locals 17
    .param p1, "offsetY"    # F
    .param p2, "disallowVisible"    # Z

    .prologue
    .line 1864
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsContainer:Lcom/android/launcher3/allapps/view/AppsContainer;

    const/4 v12, 0x0

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v11, v0, v12, v1}, Lcom/android/launcher3/allapps/view/AppsContainer;->setDrawBoundaryY(FZZ)V

    .line 1866
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsContainer:Lcom/android/launcher3/allapps/view/AppsContainer;

    invoke-virtual {v11}, Lcom/android/launcher3/allapps/view/AppsContainer;->getHeight()I

    move-result v11

    int-to-float v11, v11

    add-float v5, p1, v11

    .line 1868
    .local v5, "borderY":F
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    if-eqz v11, :cond_9

    .line 1869
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mDownwardFadeOutEnd:I

    if-eqz v11, :cond_0

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mUpwardFadeOutEnd:I

    if-nez v11, :cond_1

    .line 1870
    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    invoke-virtual {v11}, Lcom/android/launcher3/common/tray/TrayManager;->getTrayMovingRange()I

    move-result v11

    int-to-float v11, v11

    const v12, 0x3f666666    # 0.9f

    mul-float/2addr v11, v12

    float-to-int v7, v11

    .line 1871
    .local v7, "fadeOutEnd":I
    neg-int v11, v7

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mDownwardFadeOutEnd:I

    .line 1872
    move-object/from16 v0, p0

    iput v7, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mUpwardFadeOutEnd:I

    .line 1873
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mUpwardFadeOutEnd:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mUpwardFadeOutStart:I

    sub-int/2addr v11, v12

    int-to-float v11, v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mFadeOutRange:F

    .line 1877
    .end local v7    # "fadeOutEnd":I
    :cond_1
    const/4 v11, 0x0

    cmpl-float v11, p1, v11

    if-lez v11, :cond_6

    .line 1878
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    invoke-virtual {v11}, Lcom/android/launcher3/common/tray/TrayManager;->getTrayMovingRange()I

    move-result v11

    int-to-float v11, v11

    sub-float v10, p1, v11

    .line 1879
    .local v10, "toTranslationY":F
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mDownwardFadeOutStart:I

    int-to-float v11, v11

    cmpl-float v11, v10, v11

    if-ltz v11, :cond_4

    .line 1880
    const/high16 v6, 0x3f800000    # 1.0f

    .line 1896
    .local v6, "factor":F
    :goto_0
    const/4 v11, 0x2

    const/4 v12, 0x2

    invoke-static {v6, v11, v12}, Lcom/android/launcher3/Utilities;->simplifyDecimalFraction(FII)F

    .line 1898
    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    sub-float/2addr v13, v6

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsAlphaRatio:F

    mul-float/2addr v13, v14

    sub-float/2addr v12, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 1899
    .local v2, "alpha":F
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsContainer:Lcom/android/launcher3/allapps/view/AppsContainer;

    invoke-virtual {v11, v2}, Lcom/android/launcher3/allapps/view/AppsContainer;->setAlpha(F)V

    .line 1901
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsShrinkFactor:F

    const/high16 v12, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsShrinkFactor:F

    sub-float/2addr v12, v13

    mul-float/2addr v12, v6

    add-float v9, v11, v12

    .line 1902
    .local v9, "scale":F
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mState:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/launcher3/allapps/controller/AppsController;->getBackgroundImageAlphaForState(I)F

    move-result v11

    mul-float/2addr v11, v6

    float-to-double v12, v11

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    double-to-float v4, v12

    .line 1903
    .local v4, "bgAlpha":F
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsContainer:Lcom/android/launcher3/allapps/view/AppsContainer;

    invoke-virtual {v11, v9}, Lcom/android/launcher3/allapps/view/AppsContainer;->setScaleX(F)V

    .line 1904
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsContainer:Lcom/android/launcher3/allapps/view/AppsContainer;

    invoke-virtual {v11, v9}, Lcom/android/launcher3/allapps/view/AppsContainer;->setScaleY(F)V

    .line 1905
    if-nez p2, :cond_2

    .line 1906
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    invoke-virtual {v11, v4}, Lcom/android/launcher3/common/view/DragLayer;->setBackgroundImageAlpha(F)V

    .line 1908
    :cond_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPageIndicatorView:Landroid/view/View;

    if-eqz v11, :cond_3

    .line 1909
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mPageIndicatorShrinkFactor:F

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mPageIndicatorShrinkFactor:F

    const/4 v13, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    const/high16 v15, 0x3f800000    # 1.0f

    sub-float/2addr v15, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mPageIndicatorScaleRatio:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    sub-float/2addr v14, v15

    .line 1910
    invoke-static {v13, v14}, Ljava/lang/Math;->max(FF)F

    move-result v13

    mul-float/2addr v12, v13

    add-float v8, v11, v12

    .line 1911
    .local v8, "indicatorScale":F
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPageIndicatorView:Landroid/view/View;

    invoke-virtual {v11, v8}, Landroid/view/View;->setScaleX(F)V

    .line 1912
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPageIndicatorView:Landroid/view/View;

    invoke-virtual {v11, v8}, Landroid/view/View;->setScaleY(F)V

    .line 1918
    .end local v2    # "alpha":F
    .end local v4    # "bgAlpha":F
    .end local v6    # "factor":F
    .end local v8    # "indicatorScale":F
    .end local v9    # "scale":F
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsContainer:Lcom/android/launcher3/allapps/view/AppsContainer;

    invoke-virtual {v11, v10}, Lcom/android/launcher3/allapps/view/AppsContainer;->setTranslationY(F)V

    .line 1919
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsSearch:Lcom/android/launcher3/allapps/view/AppsSearch;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/launcher3/allapps/view/AppsSearch;->changeColorAndBackground(Z)V

    .line 1920
    return-void

    .line 1881
    :cond_4
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mDownwardFadeOutEnd:I

    int-to-float v11, v11

    cmpl-float v11, v10, v11

    if-ltz v11, :cond_5

    .line 1882
    const/high16 v11, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mDownwardFadeOutEnd:I

    int-to-float v12, v12

    sub-float v12, v10, v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mFadeOutRange:F

    div-float/2addr v12, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .restart local v6    # "factor":F
    goto/16 :goto_0

    .line 1884
    .end local v6    # "factor":F
    :cond_5
    const/4 v6, 0x0

    .restart local v6    # "factor":F
    goto/16 :goto_0

    .line 1887
    .end local v6    # "factor":F
    .end local v10    # "toTranslationY":F
    :cond_6
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    invoke-virtual {v11}, Lcom/android/launcher3/common/tray/TrayManager;->getTrayMovingRange()I

    move-result v11

    int-to-float v11, v11

    add-float v10, p1, v11

    .line 1888
    .restart local v10    # "toTranslationY":F
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mUpwardFadeOutStart:I

    int-to-float v11, v11

    cmpg-float v11, v10, v11

    if-gtz v11, :cond_7

    .line 1889
    const/high16 v6, 0x3f800000    # 1.0f

    .restart local v6    # "factor":F
    goto/16 :goto_0

    .line 1890
    .end local v6    # "factor":F
    :cond_7
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mUpwardFadeOutEnd:I

    int-to-float v11, v11

    cmpg-float v11, v10, v11

    if-gtz v11, :cond_8

    .line 1891
    const/high16 v11, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mUpwardFadeOutEnd:I

    int-to-float v12, v12

    sub-float/2addr v12, v10

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mFadeOutRange:F

    div-float/2addr v12, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .restart local v6    # "factor":F
    goto/16 :goto_0

    .line 1893
    .end local v6    # "factor":F
    :cond_8
    const/4 v6, 0x0

    .restart local v6    # "factor":F
    goto/16 :goto_0

    .line 1915
    .end local v6    # "factor":F
    .end local v10    # "toTranslationY":F
    :cond_9
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mMoveToHomeApproachingStart:I

    .line 1916
    .local v3, "appsSlipStart":I
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsSlipY:I

    int-to-float v11, v11

    int-to-float v12, v3

    sub-float v12, v5, v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsContainer:Lcom/android/launcher3/allapps/view/AppsContainer;

    invoke-virtual {v13}, Lcom/android/launcher3/allapps/view/AppsContainer;->getHeight()I

    move-result v13

    sub-int/2addr v13, v3

    int-to-float v13, v13

    div-float/2addr v12, v13

    const/4 v13, 0x0

    invoke-static {v12, v13}, Ljava/lang/Math;->max(FF)F

    move-result v12

    mul-float v10, v11, v12

    .restart local v10    # "toTranslationY":F
    goto/16 :goto_1
.end method

.method private updateBadgeItems()V
    .locals 1

    .prologue
    .line 2033
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mUpdateBadgeItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2034
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mUpdateBadgeItems:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/controller/AppsController;->updateBadgeItems(Ljava/util/ArrayList;)V

    .line 2035
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mUpdateBadgeItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2037
    :cond_0
    return-void
.end method


# virtual methods
.method public addFolder(Lcom/android/launcher3/common/base/view/CellLayout;JIII)Lcom/android/launcher3/folder/view/FolderIconView;
    .locals 16
    .param p1, "layout"    # Lcom/android/launcher3/common/base/view/CellLayout;
    .param p2, "screenId"    # J
    .param p4, "cellX"    # I
    .param p5, "cellY"    # I
    .param p6, "rank"    # I

    .prologue
    .line 1963
    new-instance v3, Lcom/android/launcher3/folder/FolderInfo;

    invoke-direct {v3}, Lcom/android/launcher3/folder/FolderInfo;-><init>()V

    .line 1964
    .local v3, "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    const v6, 0x7f09019a

    invoke-virtual {v2, v6}, Lcom/android/launcher3/Launcher;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v3, Lcom/android/launcher3/folder/FolderInfo;->title:Ljava/lang/CharSequence;

    .line 1967
    const-wide/16 v4, -0x66

    .line 1968
    .local v4, "container":J
    move/from16 v0, p6

    iput v0, v3, Lcom/android/launcher3/folder/FolderInfo;->rank:I

    .line 1971
    :try_start_0
    invoke-static {}, Lcom/android/launcher3/common/model/FavoritesProvider;->getInstance()Lcom/android/launcher3/common/model/FavoritesProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/common/model/FavoritesProvider;->generateNewItemId()J

    move-result-wide v6

    iput-wide v6, v3, Lcom/android/launcher3/folder/FolderInfo;->id:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1977
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/allapps/controller/AppsController;->isAlphabeticalMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1978
    const-wide/16 v6, -0x1

    const/4 v8, -0x1

    const/4 v9, -0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v9}, Lcom/android/launcher3/allapps/controller/AppsController;->addItemToDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJII)J

    .line 1979
    const/4 v2, 0x1

    iput-boolean v2, v3, Lcom/android/launcher3/folder/FolderInfo;->mDirty:Z

    .line 1980
    iput-wide v4, v3, Lcom/android/launcher3/folder/FolderInfo;->container:J

    .line 1981
    move-wide/from16 v0, p2

    iput-wide v0, v3, Lcom/android/launcher3/folder/FolderInfo;->screenId:J

    .line 1982
    move/from16 v0, p4

    iput v0, v3, Lcom/android/launcher3/folder/FolderInfo;->cellX:I

    .line 1983
    move/from16 v0, p5

    iput v0, v3, Lcom/android/launcher3/folder/FolderInfo;->cellY:I

    .line 1989
    :goto_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v12, 0x2

    move-object/from16 v7, p1

    move-object v8, v3

    move-object/from16 v9, p0

    move-object/from16 v11, p0

    invoke-static/range {v6 .. v12}, Lcom/android/launcher3/folder/view/FolderIconView;->fromXml(Lcom/android/launcher3/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher3/folder/FolderInfo;Lcom/android/launcher3/common/base/controller/ControllerBase;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;I)Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v14

    .line 1991
    .local v14, "newFolder":Lcom/android/launcher3/folder/view/FolderIconView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsFocusListener:Lcom/android/launcher3/allapps/controller/AppsFocusListener;

    invoke-virtual {v14, v2}, Lcom/android/launcher3/folder/view/FolderIconView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1992
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsFocusListener:Lcom/android/launcher3/allapps/controller/AppsFocusListener;

    invoke-virtual {v14, v2}, Lcom/android/launcher3/folder/view/FolderIconView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1993
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v3}, Lcom/android/launcher3/allapps/controller/AppsController;->addItem(Landroid/view/View;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 1996
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v2

    invoke-virtual {v2, v14}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->measureChild(Landroid/view/View;)V

    .line 1998
    return-object v14

    .line 1972
    .end local v14    # "newFolder":Lcom/android/launcher3/folder/view/FolderIconView;
    :catch_0
    move-exception v13

    .line 1973
    .local v13, "e":Ljava/lang/Exception;
    const-string v2, "Launcher.AppsController"

    const-string v6, "generate new item id for created folder is failed."

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1974
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .end local v13    # "e":Ljava/lang/Exception;
    :cond_0
    move-object/from16 v2, p0

    move-wide/from16 v6, p2

    move/from16 v8, p4

    move/from16 v9, p5

    .line 1985
    invoke-virtual/range {v2 .. v9}, Lcom/android/launcher3/allapps/controller/AppsController;->addItemToDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJII)J

    goto :goto_1
.end method

.method public addItem(Landroid/view/View;Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 1458
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->addItem(Landroid/view/View;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 1459
    return-void
.end method

.method public addItemToDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJII)J
    .locals 2
    .param p1, "info"    # Lcom/android/launcher3/common/base/item/ItemInfo;
    .param p2, "container"    # J
    .param p4, "screenId"    # J
    .param p6, "cellX"    # I
    .param p7, "cellY"    # I

    .prologue
    .line 1528
    iput-wide p2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    .line 1529
    iput-wide p4, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    .line 1530
    iput p6, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    .line 1531
    iput p7, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    .line 1532
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAdapterProvider:Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;->addItem(Lcom/android/launcher3/common/base/item/ItemInfo;)J

    move-result-wide v0

    return-wide v0
.end method

.method public addItemToDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJI)V
    .locals 2
    .param p1, "info"    # Lcom/android/launcher3/common/base/item/ItemInfo;
    .param p2, "container"    # J
    .param p4, "screenId"    # J
    .param p6, "rank"    # I

    .prologue
    .line 1537
    iput-wide p2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    .line 1538
    iput p6, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    .line 1539
    iput-wide p4, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    .line 1541
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAdapterProvider:Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;->addItem(Lcom/android/launcher3/common/base/item/ItemInfo;)J

    .line 1542
    return-void
.end method

.method public addOrMoveItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJIII)V
    .locals 10
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;
    .param p2, "container"    # J
    .param p4, "screenId"    # J
    .param p6, "cellX"    # I
    .param p7, "cellY"    # I
    .param p8, "rank"    # I

    .prologue
    .line 1602
    iget-wide v6, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v8, -0x1

    cmp-long v5, v6, v8

    if-eqz v5, :cond_0

    iget-wide v6, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    const-wide/16 v8, -0x1

    cmp-long v5, v6, v8

    if-nez v5, :cond_3

    .line 1604
    :cond_0
    invoke-virtual/range {p0 .. p7}, Lcom/android/launcher3/allapps/controller/AppsController;->addItemToDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJII)J

    move-result-wide v2

    .line 1606
    .local v2, "folderId":J
    instance-of v5, p1, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v5, :cond_2

    move-object v1, p1

    .line 1607
    check-cast v1, Lcom/android/launcher3/folder/FolderInfo;

    .line 1608
    .local v1, "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1609
    .local v0, "appList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    iget-object v5, v1, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 1610
    .local v4, "info":Lcom/android/launcher3/common/base/item/IconInfo;
    invoke-direct {p0, v4, v2, v3}, Lcom/android/launcher3/allapps/controller/AppsController;->addFolderChildItemToDb(Lcom/android/launcher3/common/base/item/ItemInfo;J)J

    .line 1611
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1613
    .end local v4    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_1
    iget-object v5, v1, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 1614
    iget-object v5, v1, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1615
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1621
    .end local v0    # "appList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    .end local v1    # "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    .end local v2    # "folderId":J
    :cond_2
    :goto_1
    return-void

    .line 1619
    :cond_3
    invoke-direct/range {p0 .. p8}, Lcom/android/launcher3/allapps/controller/AppsController;->modifyItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJIII)V

    goto :goto_1
.end method

.method public addOrMoveItems(Ljava/util/ArrayList;JJ)V
    .locals 20
    .param p2, "container"    # J
    .param p4, "screenId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;JJ)V"
        }
    .end annotation

    .prologue
    .line 2505
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    const-string v15, "Launcher.AppsController"

    const-string v16, "addOrMoveItems"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2506
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 2507
    .local v11, "removeItemsFromApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_0
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_1

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 2508
    .local v6, "item":Lcom/android/launcher3/common/base/item/IconInfo;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/launcher3/allapps/controller/AppsController;->isItemInFolder(Lcom/android/launcher3/common/base/item/ItemInfo;)Z

    move-result v16

    if-nez v16, :cond_0

    .line 2509
    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2512
    .end local v6    # "item":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mReorderController:Lcom/android/launcher3/allapps/controller/AppsReorderController;

    invoke-virtual {v15, v11}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->removeEmptyCellsAndViews(Ljava/util/ArrayList;)V

    .line 2514
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 2515
    .local v7, "itemMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_3

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 2516
    .local v6, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-wide v0, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_2

    .line 2517
    iget-wide v0, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v7, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2519
    :cond_2
    iget-wide v0, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    .line 2520
    .local v10, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    check-cast v6, Lcom/android/launcher3/common/base/item/IconInfo;

    .end local v6    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2523
    .end local v10    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    :cond_3
    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    .line 2524
    .local v9, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 2525
    .local v12, "updateItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2526
    .local v4, "contentValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_4
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_7

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Long;

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 2527
    .local v2, "containerId":J
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    .line 2528
    .local v8, "itemsInContainer":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    cmp-long v15, v2, p2

    if-eqz v15, :cond_5

    const-wide/16 v18, 0x0

    cmp-long v15, v2, v18

    if-lez v15, :cond_5

    .line 2529
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsIconByItemId(J)Landroid/view/View;

    move-result-object v14

    .line 2530
    .local v14, "view":Landroid/view/View;
    if-eqz v14, :cond_6

    .line 2532
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/allapps/controller/AppsController;->getState()I

    move-result v15

    const/16 v17, 0x1

    move/from16 v0, v17

    if-eq v15, v0, :cond_5

    .line 2533
    invoke-virtual {v14}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/folder/FolderInfo;

    .line 2534
    .local v5, "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    invoke-virtual {v5, v8}, Lcom/android/launcher3/folder/FolderInfo;->remove(Ljava/util/ArrayList;)V

    .line 2541
    .end local v5    # "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    .end local v14    # "view":Landroid/view/View;
    :cond_5
    :goto_2
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_4

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 2542
    .local v6, "item":Lcom/android/launcher3/common/base/item/IconInfo;
    move-wide/from16 v0, p2

    iput-wide v0, v6, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    .line 2543
    move-wide/from16 v0, p4

    iput-wide v0, v6, Lcom/android/launcher3/common/base/item/IconInfo;->screenId:J

    .line 2544
    const/16 v17, 0x1

    move/from16 v0, v17

    iput-boolean v0, v6, Lcom/android/launcher3/common/base/item/IconInfo;->mDirty:Z

    .line 2546
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 2547
    .local v13, "values":Landroid/content/ContentValues;
    const-string v17, "container"

    iget-wide v0, v6, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2548
    const-string v17, "rank"

    iget v0, v6, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2549
    const-string v17, "cellX"

    iget v0, v6, Lcom/android/launcher3/common/base/item/IconInfo;->cellX:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2550
    const-string v17, "cellY"

    iget v0, v6, Lcom/android/launcher3/common/base/item/IconInfo;->cellY:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2551
    const-string v17, "screen"

    iget-wide v0, v6, Lcom/android/launcher3/common/base/item/IconInfo;->screenId:J

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2552
    const-string v17, "hidden"

    iget v0, v6, Lcom/android/launcher3/common/base/item/IconInfo;->hidden:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2553
    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2554
    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 2537
    .end local v6    # "item":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v13    # "values":Landroid/content/ContentValues;
    .restart local v14    # "view":Landroid/view/View;
    :cond_6
    const-string v15, "Launcher.AppsController"

    const-string v17, "folder iconview is null"

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 2557
    .end local v2    # "containerId":J
    .end local v8    # "itemsInContainer":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    .end local v14    # "view":Landroid/view/View;
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mAdapterProvider:Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v4, v12}, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;->updateItemsInDatabaseHelper(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 2559
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/allapps/controller/AppsController;->getViewType()Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    move-result-object v15

    sget-object v16, Lcom/android/launcher3/allapps/controller/AppsController$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_8

    .line 2560
    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/launcher3/allapps/controller/AppsController;->repositionByNormalizer(Z)V

    .line 2567
    :goto_4
    return-void

    .line 2562
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/allapps/controller/AppsController;->getState()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_9

    .line 2563
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/allapps/controller/AppsController;->removeEmptyPagesAndUpdateAllItemsInfo()Z

    .line 2565
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/allapps/controller/AppsController;->updateDirtyItems()V

    goto :goto_4
.end method

.method public applyScreenGrid()V
    .locals 6

    .prologue
    .line 2972
    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p0, v4}, Lcom/android/launcher3/common/stage/StageManager;->moveToOverHome(Lcom/android/launcher3/common/stage/Stage;Lcom/android/launcher3/common/stage/StageEntry;)V

    .line 2973
    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v2

    .line 2974
    .local v2, "dp":Lcom/android/launcher3/common/deviceprofile/DeviceProfile;
    iget-object v3, v2, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v3}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountX()I

    move-result v0

    .line 2975
    .local v0, "cellX":I
    iget-object v3, v2, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v3}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountY()I

    move-result v1

    .line 2976
    .local v1, "cellY":I
    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v3, v0, v1}, Lcom/android/launcher3/util/ScreenGridUtilities;->storeAppsGridLayoutPreference(Landroid/content/Context;II)V

    .line 2977
    const-string v3, "Launcher.AppsController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "applyGrid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2978
    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mViewType:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    sget-object v4, Lcom/android/launcher3/allapps/controller/AppsController$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    if-eq v3, v4, :cond_0

    .line 2979
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->updateDirtyItems()V

    .line 2981
    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lcom/android/launcher3/allapps/controller/AppsController;->changeState(IZ)Z

    .line 2982
    return-void
.end method

.method public approachBorderOnDrag(F)V
    .locals 0
    .param p1, "touchY"    # F

    .prologue
    .line 1084
    return-void
.end method

.method public canMoveTray()Z
    .locals 1

    .prologue
    .line 1860
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->isAppsStage()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mState:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public cancelChangeScreenGrid()V
    .locals 2

    .prologue
    .line 959
    const-string v0, "Launcher.AppsController"

    const-string v1, "cancelChangeScreenGrid for preview"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mDragController:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/drag/DragManager;->removeDropTarget(Lcom/android/launcher3/common/drag/DropTarget;)V

    .line 961
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/controller/AppsController;->startSettingActivity(Z)V

    .line 962
    return-void
.end method

.method public changeScreenGrid(ZII)Z
    .locals 6
    .param p1, "animated"    # Z
    .param p2, "gridX"    # I
    .param p3, "gridY"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 2918
    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v1

    .line 2920
    .local v1, "dp":Lcom/android/launcher3/common/deviceprofile/DeviceProfile;
    iget-object v4, v1, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountX()I

    move-result v4

    if-ne v4, p2, :cond_0

    iget-object v4, v1, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountY()I

    move-result v4

    if-ne v4, p3, :cond_0

    .line 2933
    :goto_0
    return v2

    .line 2924
    :cond_0
    new-instance v0, Lcom/android/launcher3/common/stage/StageEntry;

    invoke-direct {v0}, Lcom/android/launcher3/common/stage/StageEntry;-><init>()V

    .line 2925
    .local v0, "data":Lcom/android/launcher3/common/stage/StageEntry;
    const-string v4, "KEY_REPOSITION_BY"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/android/launcher3/common/stage/StageEntry;->putExtras(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2926
    const-string v4, "KEY_CHANGE_GRID_SIZE"

    const/4 v5, 0x2

    new-array v5, v5, [I

    aput p2, v5, v2

    aput p3, v5, v3

    invoke-virtual {v0, v4, v5}, Lcom/android/launcher3/common/stage/StageEntry;->putExtras(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2929
    iput-boolean p1, v0, Lcom/android/launcher3/common/stage/StageEntry;->enableAnimation:Z

    .line 2930
    iget v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mState:I

    invoke-virtual {v0, v2}, Lcom/android/launcher3/common/stage/StageEntry;->setInternalStateFrom(I)V

    .line 2931
    iget v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mState:I

    invoke-virtual {v0, v2}, Lcom/android/launcher3/common/stage/StageEntry;->setInternalStateTo(I)V

    .line 2932
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v2

    invoke-virtual {v2, p0, v0}, Lcom/android/launcher3/common/stage/StageManager;->switchInternalState(Lcom/android/launcher3/common/stage/Stage;Lcom/android/launcher3/common/stage/StageEntry;)V

    move v2, v3

    .line 2933
    goto :goto_0
.end method

.method public changeState(IZ)Z
    .locals 1
    .param p1, "toState"    # I
    .param p2, "animated"    # Z

    .prologue
    .line 1099
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/allapps/controller/AppsController;->changeState(IZZ)Z

    move-result v0

    return v0
.end method

.method public chooseViewType()V
    .locals 3

    .prologue
    .line 965
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getTopViewChangedMessageHandler()Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;

    move-result-object v0

    const/16 v1, 0x19

    .line 966
    invoke-virtual {v0, v1}, Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;->sendMessage(I)V

    .line 968
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mViewType:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/allapps/controller/AppsController$8;

    invoke-direct {v2, p0}, Lcom/android/launcher3/allapps/controller/AppsController$8;-><init>(Lcom/android/launcher3/allapps/controller/AppsController;)V

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/allapps/AppsViewTypeDialog;->createAndShow(Lcom/android/launcher3/allapps/controller/AppsController$ViewType;Landroid/app/FragmentManager;Lcom/android/launcher3/allapps/AppsViewTypeDialog$OnViewTypeChagnedListener;)V

    .line 982
    return-void
.end method

.method public createItemView(Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;
    .locals 8
    .param p1, "info"    # Lcom/android/launcher3/common/base/item/ItemInfo;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "recycleView"    # Landroid/view/View;

    .prologue
    .line 3032
    iget v0, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    packed-switch v0, :pswitch_data_0

    .line 3044
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown item type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3034
    :pswitch_1
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object v2, p3

    check-cast v2, Lcom/android/launcher3/common/view/IconView;

    move-object v3, p1

    check-cast v3, Lcom/android/launcher3/common/base/item/IconInfo;

    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsFocusListener:Lcom/android/launcher3/allapps/controller/AppsFocusListener;

    move-object v1, p2

    move-object v5, p0

    invoke-static/range {v0 .. v6}, Lcom/android/launcher3/allapps/AppsUtils;->createAppIcon(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/android/launcher3/common/view/IconView;Lcom/android/launcher3/common/base/item/IconInfo;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;Lcom/android/launcher3/allapps/controller/AppsFocusListener;)Landroid/view/View;

    move-result-object v7

    .line 3042
    :goto_0
    return-object v7

    .line 3038
    :pswitch_2
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object v2, p1

    check-cast v2, Lcom/android/launcher3/folder/FolderInfo;

    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v6, 0x2

    move-object v1, p2

    move-object v3, p0

    move-object v5, p0

    invoke-static/range {v0 .. v6}, Lcom/android/launcher3/folder/view/FolderIconView;->fromXml(Lcom/android/launcher3/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher3/folder/FolderInfo;Lcom/android/launcher3/common/base/controller/ControllerBase;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;I)Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v7

    .line 3040
    .local v7, "view":Lcom/android/launcher3/folder/view/FolderIconView;
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsFocusListener:Lcom/android/launcher3/allapps/controller/AppsFocusListener;

    invoke-virtual {v7, v0}, Lcom/android/launcher3/folder/view/FolderIconView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 3041
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsFocusListener:Lcom/android/launcher3/allapps/controller/AppsFocusListener;

    invoke-virtual {v7, v0}, Lcom/android/launcher3/folder/view/FolderIconView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    goto :goto_0

    .line 3032
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public deferToBind()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 3019
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->isAppsStage()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mState:I

    if-eq v1, v0, :cond_1

    .line 3021
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->getDragController()Lcom/android/launcher3/allapps/controller/AppsDragController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/allapps/controller/AppsDragController;->needDefferToBind(Lcom/android/launcher3/common/drag/DragManager;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public deleteFolder(Lcom/android/launcher3/folder/FolderInfo;)V
    .locals 14
    .param p1, "folderInfo"    # Lcom/android/launcher3/folder/FolderInfo;

    .prologue
    .line 1625
    iget-object v7, p1, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    .line 1626
    .local v7, "contents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/launcher3/allapps/controller/AppsController;->removeAppsItem(Lcom/android/launcher3/common/base/item/ItemInfo;Z)V

    .line 1627
    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/controller/AppsController;->deleteItemFromDb(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 1628
    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v1

    const-string v2, "DTAF"

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertLogging(Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 1630
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1631
    .local v0, "addItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->isAlphabeticalMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1632
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v10, v1, :cond_0

    .line 1633
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 1634
    .local v11, "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    const-wide/16 v2, -0x66

    iput-wide v2, v11, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    .line 1635
    const-wide/16 v2, -0x1

    iput-wide v2, v11, Lcom/android/launcher3/common/base/item/IconInfo;->screenId:J

    .line 1636
    const/4 v1, -0x1

    iput v1, v11, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    .line 1637
    const/4 v1, 0x1

    iput-boolean v1, v11, Lcom/android/launcher3/common/base/item/IconInfo;->mDirty:Z

    .line 1638
    invoke-virtual {p0, v11}, Lcom/android/launcher3/allapps/controller/AppsController;->updateItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 1639
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1632
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1642
    .end local v11    # "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/allapps/controller/AppsController;->normalizeWithExtraItems(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1643
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->rearrangeAllViews(Z)V

    .line 1644
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 1645
    .local v12, "itemInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v12, v2, v3}, Lcom/android/launcher3/allapps/controller/AppsController;->createItemView(Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2, v12}, Lcom/android/launcher3/allapps/controller/AppsController;->addItem(Landroid/view/View;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto :goto_1

    .line 1648
    .end local v10    # "i":I
    .end local v12    # "itemInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_1
    new-instance v9, Lcom/android/launcher3/allapps/DragAppIcon;

    invoke-direct {v9}, Lcom/android/launcher3/allapps/DragAppIcon;-><init>()V

    .line 1649
    .local v9, "dragAppIcon":Lcom/android/launcher3/allapps/DragAppIcon;
    iget-wide v2, p1, Lcom/android/launcher3/folder/FolderInfo;->screenId:J

    iput-wide v2, v9, Lcom/android/launcher3/allapps/DragAppIcon;->screenId:J

    .line 1650
    iget v1, p1, Lcom/android/launcher3/folder/FolderInfo;->rank:I

    iput v1, v9, Lcom/android/launcher3/allapps/DragAppIcon;->rank:I

    .line 1651
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mReorderController:Lcom/android/launcher3/allapps/controller/AppsReorderController;

    invoke-virtual {v1, v9}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->removeEmptyCell(Lcom/android/launcher3/allapps/DragAppIcon;)V

    .line 1653
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_2
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v10, v1, :cond_2

    .line 1654
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->addItemToLastPosition(Lcom/android/launcher3/common/base/item/IconInfo;)V

    .line 1653
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 1656
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->removeEmptyPagesAndUpdateAllItemsInfo()Z

    move-result v8

    .line 1657
    .local v8, "dirtyItemUpdated":Z
    if-nez v8, :cond_3

    .line 1658
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->updateDirtyItems()V

    .line 1660
    :cond_3
    new-instance v13, Landroid/os/Handler;

    invoke-direct {v13}, Landroid/os/Handler;-><init>()V

    .line 1661
    .local v13, "mHandler":Landroid/os/Handler;
    new-instance v1, Lcom/android/launcher3/allapps/controller/AppsController$15;

    invoke-direct {v1, p0}, Lcom/android/launcher3/allapps/controller/AppsController$15;-><init>(Lcom/android/launcher3/allapps/controller/AppsController;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v13, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1668
    .end local v8    # "dirtyItemUpdated":Z
    .end local v9    # "dragAppIcon":Lcom/android/launcher3/allapps/DragAppIcon;
    .end local v13    # "mHandler":Landroid/os/Handler;
    :cond_4
    return-void
.end method

.method public deleteItemFromDb(Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 1
    .param p1, "info"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 1546
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAdapterProvider:Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;->deleteItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 1547
    return-void
.end method

.method public determineStageChange(IFFFI)Z
    .locals 8
    .param p1, "velocity"    # I
    .param p2, "offset"    # F
    .param p3, "firstDownY"    # F
    .param p4, "lastDownY"    # F
    .param p5, "minSnapVelocity"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 1821
    const/4 v2, 0x0

    .line 1822
    .local v2, "toBeChanged":Z
    cmpl-float v5, p2, v6

    if-lez v5, :cond_1

    move v1, v3

    .line 1824
    .local v1, "swipeUp":Z
    :goto_0
    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->isAppsStage()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1826
    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    if-eqz v5, :cond_2

    .line 1827
    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    invoke-virtual {v5}, Lcom/android/launcher3/common/tray/TrayManager;->getTrayMovingRange()I

    move-result v0

    .line 1832
    .local v0, "range":I
    :goto_1
    cmpl-float v5, p2, v6

    if-nez v5, :cond_3

    .line 1833
    const/4 v2, 0x1

    .line 1842
    :goto_2
    if-eqz v2, :cond_0

    .line 1843
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v4

    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 1844
    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0901b1

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 1845
    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f09011c

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v1, :cond_b

    const-string v3, "3"

    .line 1843
    :goto_3
    invoke-virtual {v4, v5, v6, v3}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1849
    .end local v0    # "range":I
    :cond_0
    return v2

    .end local v1    # "swipeUp":Z
    :cond_1
    move v1, v4

    .line 1822
    goto :goto_0

    .line 1829
    .restart local v1    # "swipeUp":Z
    :cond_2
    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v5}, Lcom/android/launcher3/Utilities;->getFullScreenHeight(Landroid/app/Activity;)I

    move-result v0

    .restart local v0    # "range":I
    goto :goto_1

    .line 1834
    :cond_3
    cmpl-float v5, p2, v6

    if-lez v5, :cond_7

    .line 1835
    cmpl-float v5, p3, p4

    if-lez v5, :cond_4

    if-gez p1, :cond_4

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v5, p5, :cond_5

    .line 1836
    :cond_4
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v5, p5, :cond_6

    int-to-float v5, v0

    iget v6, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mPageSnapMovingRatioOnApps:F

    mul-float/2addr v5, v6

    cmpg-float v5, p2, v5

    if-gtz v5, :cond_6

    :cond_5
    move v2, v3

    :goto_4
    goto :goto_2

    :cond_6
    move v2, v4

    goto :goto_4

    .line 1838
    :cond_7
    cmpg-float v5, p3, p4

    if-gez v5, :cond_8

    if-lez p1, :cond_8

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v5, p5, :cond_9

    .line 1839
    :cond_8
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v5, p5, :cond_a

    neg-float v5, p2

    int-to-float v6, v0

    iget v7, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mPageSnapMovingRatioOnApps:F

    mul-float/2addr v6, v7

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_a

    :cond_9
    move v2, v3

    :goto_5
    goto :goto_2

    :cond_a
    move v2, v4

    goto :goto_5

    .line 1845
    :cond_b
    const-string v3, "4"

    goto :goto_3
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 2477
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 2478
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 2500
    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher3/common/stage/Stage;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :cond_1
    :goto_0
    return v0

    .line 2480
    :sswitch_0
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsSearch:Lcom/android/launcher3/allapps/view/AppsSearch;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/view/AppsSearch;->showPopupMenu()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2481
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportQuickOption()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDragMgr()Lcom/android/launcher3/common/drag/DragManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/common/drag/DragManager;->isQuickOptionShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2482
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    const-string v2, "3"

    invoke-virtual {v1, v2}, Lcom/android/launcher3/common/drag/DragManager;->removeQuickOptionView(Ljava/lang/String;)V

    goto :goto_0

    .line 2488
    :sswitch_1
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsSearch:Lcom/android/launcher3/allapps/view/AppsSearch;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/view/AppsSearch;->launchSfinder()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2494
    :sswitch_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsSearch:Lcom/android/launcher3/allapps/view/AppsSearch;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/view/AppsSearch;->launchSfinder()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2478
    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_2
        0x52 -> :sswitch_0
        0x54 -> :sswitch_1
    .end sparse-switch
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 3063
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    .line 3064
    .local v1, "text":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 3065
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 3066
    .local v0, "res":Landroid/content/res/Resources;
    invoke-direct {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->isTidyState()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3067
    const v2, 0x7f090089

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3073
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 3068
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->isGridState()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3069
    const v2, 0x7f0900b5

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3071
    :cond_1
    const v2, 0x7f090023

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public exitDragStateDelayed()V
    .locals 1

    .prologue
    .line 1079
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/controller/AppsController;->exitDragStateDelayed(I)V

    .line 1080
    return-void
.end method

.method public exitDragStateDelayed(I)V
    .locals 4
    .param p1, "delay"    # I

    .prologue
    .line 1087
    iget v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1088
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mExitDragStateHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/launcher3/allapps/controller/AppsController$9;

    invoke-direct {v1, p0}, Lcom/android/launcher3/allapps/controller/AppsController$9;-><init>(Lcom/android/launcher3/allapps/controller/AppsController;)V

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1095
    :cond_0
    return-void
.end method

.method public getAppsIconByItemId(J)Landroid/view/View;
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 2023
    new-instance v0, Lcom/android/launcher3/allapps/controller/AppsController$19;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/launcher3/allapps/controller/AppsController$19;-><init>(Lcom/android/launcher3/allapps/controller/AppsController;J)V

    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/controller/AppsController;->getFirstMatch(Lcom/android/launcher3/common/base/item/ItemOperator;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getAppsPageIndicatorView()Landroid/view/View;
    .locals 1

    .prologue
    .line 689
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPageIndicatorView:Landroid/view/View;

    return-object v0
.end method

.method public getAppsPagedView()Lcom/android/launcher3/allapps/view/AppsPagedView;
    .locals 1

    .prologue
    .line 685
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    return-object v0
.end method

.method public getAppsScreenGridPanel()Lcom/android/launcher3/allapps/AppsScreenGridPanel;
    .locals 1

    .prologue
    .line 714
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsScreenGridPanel:Lcom/android/launcher3/allapps/AppsScreenGridPanel;

    return-object v0
.end method

.method public getAppsSearchBarView()Landroid/view/View;
    .locals 1

    .prologue
    .line 706
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsSearch:Lcom/android/launcher3/allapps/view/AppsSearch;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/view/AppsSearch;->getAppsSearchBarView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getAppsSearchView()Landroid/view/View;
    .locals 1

    .prologue
    .line 702
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsSearch:Lcom/android/launcher3/allapps/view/AppsSearch;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/view/AppsSearch;->getContainerView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected getBackgroundBlurAmountForState(I)F
    .locals 1
    .param p1, "internalState"    # I

    .prologue
    .line 1294
    invoke-static {}, Lcom/android/launcher3/util/BlurUtils;->getMaxBlurAmount()F

    move-result v0

    return v0
.end method

.method protected getBackgroundDimAlphaForState(I)F
    .locals 1
    .param p1, "internalState"    # I

    .prologue
    .line 1299
    const/4 v0, 0x0

    return v0
.end method

.method protected getBackgroundImageAlphaForState(I)F
    .locals 1
    .param p1, "internalState"    # I

    .prologue
    .line 1304
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getChildViewAt(Lcom/android/launcher3/common/base/item/ItemInfo;)Landroid/view/View;
    .locals 1
    .param p1, "info"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 1009
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getChildViewAt(Lcom/android/launcher3/common/base/item/ItemInfo;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getContainerView()Landroid/view/View;
    .locals 1

    .prologue
    .line 694
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsContainer:Lcom/android/launcher3/allapps/view/AppsContainer;

    return-object v0
.end method

.method public getDragController()Lcom/android/launcher3/allapps/controller/AppsDragController;
    .locals 1

    .prologue
    .line 681
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mDragController:Lcom/android/launcher3/allapps/controller/AppsDragController;

    return-object v0
.end method

.method public getDragSourceForLongKey()Lcom/android/launcher3/common/drag/DragSource;
    .locals 1

    .prologue
    .line 1004
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->getDragController()Lcom/android/launcher3/allapps/controller/AppsDragController;

    move-result-object v0

    return-object v0
.end method

.method public getDropTarget()Lcom/android/launcher3/common/drag/DropTarget;
    .locals 1

    .prologue
    .line 1786
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mDragController:Lcom/android/launcher3/allapps/controller/AppsDragController;

    return-object v0
.end method

.method public getFolderIconView(Lcom/android/launcher3/folder/FolderInfo;)Landroid/view/View;
    .locals 2
    .param p1, "folder"    # Lcom/android/launcher3/folder/FolderInfo;

    .prologue
    .line 2469
    invoke-virtual {p1}, Lcom/android/launcher3/folder/FolderInfo;->isContainApps()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2470
    iget-wide v0, p1, Lcom/android/launcher3/folder/FolderInfo;->id:J

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsIconByItemId(J)Landroid/view/View;

    move-result-object v0

    .line 2472
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getInternalState()I
    .locals 1

    .prologue
    .line 1271
    iget v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mState:I

    return v0
.end method

.method getLauncher()Lcom/android/launcher3/Launcher;
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method public getLocationInfoFromDB(Lcom/android/launcher3/common/base/item/ItemInfo;)Lcom/android/launcher3/common/base/item/ItemInfo;
    .locals 3
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 2363
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getLauncherModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherModel;->getAppsModel()Lcom/android/launcher3/allapps/model/AppsModel;

    move-result-object v0

    .line 2364
    .local v0, "appsModel":Lcom/android/launcher3/allapps/model/AppsModel;
    const/4 v1, 0x0

    .line 2365
    .local v1, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    instance-of v2, p1, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v2, :cond_0

    .line 2366
    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/model/AppsModel;->reloadPositionFromDB(Lcom/android/launcher3/common/base/item/ItemInfo;)Lcom/android/launcher3/common/base/item/ItemInfo;

    move-result-object v1

    .line 2368
    :cond_0
    return-object v1
.end method

.method public getPageIndexForDragView(Lcom/android/launcher3/common/base/item/ItemInfo;)I
    .locals 1
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 2571
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mDragController:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/controller/AppsDragController;->getPageIndexForDragView(Lcom/android/launcher3/common/base/item/ItemInfo;)I

    move-result v0

    .line 2572
    :goto_0
    return v0

    .line 2571
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    .line 2572
    invoke-virtual {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getNextPage()I

    move-result v0

    goto :goto_0
.end method

.method getReorderController()Lcom/android/launcher3/allapps/controller/AppsReorderController;
    .locals 1

    .prologue
    .line 3049
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mReorderController:Lcom/android/launcher3/allapps/controller/AppsReorderController;

    return-object v0
.end method

.method public getScreenDivision()Lcom/android/launcher3/util/event/ScreenDivision;
    .locals 1

    .prologue
    .line 3078
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsContainer:Lcom/android/launcher3/allapps/view/AppsContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/view/AppsContainer;->getScreenDivision()Lcom/android/launcher3/util/event/ScreenDivision;

    move-result-object v0

    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 698
    iget v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mState:I

    return v0
.end method

.method public getTidyUpContainerView()Landroid/view/View;
    .locals 2

    .prologue
    .line 710
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    const v1, 0x7f110028

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getTrayBgBlurAmount()F
    .locals 1

    .prologue
    .line 2900
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/controller/AppsController;->getBackgroundBlurAmountForState(I)F

    move-result v0

    return v0
.end method

.method public getTrayLevel()Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;
    .locals 1

    .prologue
    .line 1776
    sget-object v0, Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;->Underground:Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;

    return-object v0
.end method

.method public getTrayScale()F
    .locals 1

    .prologue
    .line 1781
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsContainer:Lcom/android/launcher3/allapps/view/AppsContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/view/AppsContainer;->getScaleY()F

    move-result v0

    return v0
.end method

.method public getViewType()Lcom/android/launcher3/allapps/controller/AppsController$ViewType;
    .locals 1

    .prologue
    .line 999
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mViewType:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    return-object v0
.end method

.method hideViewTypeDialog()V
    .locals 2

    .prologue
    .line 985
    invoke-direct {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->closeViewTypeDialog()V

    .line 986
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getTopViewChangedMessageHandler()Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;

    move-result-object v0

    const/4 v1, 0x2

    .line 987
    invoke-virtual {v0, v1}, Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;->sendMessage(I)V

    .line 988
    return-void
.end method

.method public initBounceAnimation()V
    .locals 1

    .prologue
    .line 2617
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mBounceAnimation:Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation;

    if-eqz v0, :cond_0

    .line 2618
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mBounceAnimation:Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation;

    invoke-virtual {v0}, Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation;->stop()V

    .line 2619
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mBounceAnimation:Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation;

    .line 2621
    :cond_0
    return-void
.end method

.method public initStageView()V
    .locals 6

    .prologue
    const v5, 0x7f0200d8

    .line 465
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    .line 466
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v2}, Lcom/android/launcher3/allapps/controller/AppsController;->getViewTypeFromSharedPreference(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher3/allapps/controller/AppsController$ViewType;->valueOf(Ljava/lang/String;)Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mViewType:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    .line 468
    invoke-direct {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->initContainerView()V

    .line 469
    invoke-direct {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->initBackground()V

    .line 470
    invoke-direct {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->initAppsPagedView()V

    .line 471
    invoke-direct {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->initReorderController()V

    .line 472
    invoke-direct {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->initDragController()V

    .line 473
    invoke-direct {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->initTrayResources()V

    .line 474
    invoke-direct {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->initAppSearchBar()V

    .line 475
    invoke-direct {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->initAdapterProvider()V

    .line 476
    invoke-direct {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->initPageIndicator()V

    .line 478
    new-instance v2, Lcom/android/launcher3/allapps/AppsTransitionAnimation;

    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    invoke-direct {v2, v3, p0, v4}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/allapps/controller/AppsController;Lcom/android/launcher3/common/tray/TrayManager;)V

    iput-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsAnimation:Lcom/android/launcher3/allapps/AppsTransitionAnimation;

    .line 480
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportMultiSelect()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 481
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getMultiSelectManager()Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    .line 482
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    if-eqz v2, :cond_0

    .line 483
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v2, p0}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->addMultiSelectCallbacks(Lcom/android/launcher3/common/multiselect/MultiSelectManager$MultiSelectListener;)V

    .line 487
    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    const v3, 0x7f11002a

    invoke-virtual {v2, v3}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 488
    .local v0, "applyButton":Landroid/view/View;
    new-instance v2, Lcom/android/launcher3/allapps/controller/AppsController$4;

    invoke-direct {v2, p0}, Lcom/android/launcher3/allapps/controller/AppsController$4;-><init>(Lcom/android/launcher3/allapps/controller/AppsController;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 495
    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/controller/AppsController;->setTextViewDescription(Landroid/view/View;)V

    .line 496
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    const v3, 0x7f110029

    invoke-virtual {v2, v3}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 497
    .local v1, "cancelButton":Landroid/view/View;
    new-instance v2, Lcom/android/launcher3/allapps/controller/AppsController$5;

    invoke-direct {v2, p0}, Lcom/android/launcher3/allapps/controller/AppsController$5;-><init>(Lcom/android/launcher3/allapps/controller/AppsController;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 503
    invoke-direct {p0, v1}, Lcom/android/launcher3/allapps/controller/AppsController;->setTextViewDescription(Landroid/view/View;)V

    .line 504
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v2}, Lcom/android/launcher3/Utilities;->isEnableBtnBg(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 505
    invoke-virtual {v0, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 506
    invoke-virtual {v1, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 509
    :cond_1
    invoke-direct {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->initScreenGridPanel()V

    .line 512
    invoke-direct {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->searchSettingCheck()V

    .line 513
    invoke-super {p0}, Lcom/android/launcher3/common/stage/Stage;->initStageView()V

    .line 514
    return-void
.end method

.method public isAlphabeticalMode()Z
    .locals 2

    .prologue
    .line 2994
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mViewType:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    sget-object v1, Lcom/android/launcher3/allapps/controller/AppsController$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAppsLoading()Z
    .locals 1

    .prologue
    .line 719
    const/4 v0, 0x0

    return v0
.end method

.method public isItemInFolder(Lcom/android/launcher3/common/base/item/ItemInfo;)Z
    .locals 4
    .param p1, "info"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 1516
    iget-wide v0, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v2, -0x66

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMovingOnBlock()Z
    .locals 1

    .prologue
    .line 2890
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mScrollDeterminator:Lcom/android/launcher3/util/event/ScrollDeterminator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mScrollDeterminator:Lcom/android/launcher3/util/event/ScrollDeterminator;

    invoke-virtual {v0}, Lcom/android/launcher3/util/event/ScrollDeterminator;->isMovingOnBlock()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverBlurSlop(I)Z
    .locals 1
    .param p1, "slop"    # I

    .prologue
    .line 2905
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mScrollDeterminator:Lcom/android/launcher3/util/event/ScrollDeterminator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mScrollDeterminator:Lcom/android/launcher3/util/event/ScrollDeterminator;

    invoke-virtual {v0}, Lcom/android/launcher3/util/event/ScrollDeterminator;->getCountTouchMove()I

    move-result v0

    if-le v0, p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isScrollLocked()Z
    .locals 1

    .prologue
    .line 2895
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mScrollDeterminator:Lcom/android/launcher3/util/event/ScrollDeterminator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mScrollDeterminator:Lcom/android/launcher3/util/event/ScrollDeterminator;

    invoke-virtual {v0}, Lcom/android/launcher3/util/event/ScrollDeterminator;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSelectState()Z
    .locals 1

    .prologue
    .line 3014
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v0}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->isMultiSelectMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSwitchingGridToNormal()Z
    .locals 2

    .prologue
    .line 3009
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->isSwithchingInternalState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mPrevState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mState:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSwitchingState()Z
    .locals 1

    .prologue
    .line 2999
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/stage/StageManager;->isRunningAnimation()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->isSwithchingInternalState()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSwithchingInternalState()Z
    .locals 1

    .prologue
    .line 3004
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->isRunningStateChangeAnimation()Z

    move-result v0

    return v0
.end method

.method public isVerticalScroll()Z
    .locals 1

    .prologue
    .line 2885
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mScrollDeterminator:Lcom/android/launcher3/util/event/ScrollDeterminator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mScrollDeterminator:Lcom/android/launcher3/util/event/ScrollDeterminator;

    invoke-virtual {v0}, Lcom/android/launcher3/util/event/ScrollDeterminator;->isVerticalScroll()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public modifyItemsInDb(Ljava/util/ArrayList;JI)V
    .locals 8
    .param p2, "container"    # J
    .param p4, "screen"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;JI)V"
        }
    .end annotation

    .prologue
    .line 1553
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1554
    .local v0, "contentValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1556
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1557
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 1558
    .local v3, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    iput-wide p2, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    .line 1559
    int-to-long v6, p4

    iput-wide v6, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    .line 1561
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1562
    .local v4, "values":Landroid/content/ContentValues;
    const-string v5, "container"

    iget-wide v6, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1563
    const-string v5, "cellX"

    iget v6, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1564
    const-string v5, "cellY"

    iget v6, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1565
    const-string v5, "rank"

    iget v6, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1566
    const-string v5, "screen"

    iget-wide v6, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1568
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1556
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1570
    .end local v3    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v4    # "values":Landroid/content/ContentValues;
    :cond_0
    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAdapterProvider:Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;

    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5, v6, v0, p1}, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;->updateItemsInDatabaseHelper(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1571
    return-void
.end method

.method public moveItemFromFolder(Lcom/android/launcher3/common/base/item/IconInfo;)V
    .locals 8
    .param p1, "iconInfo"    # Lcom/android/launcher3/common/base/item/IconInfo;

    .prologue
    const/4 v6, 0x0

    .line 1672
    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAdapterProvider:Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;

    iget-wide v4, p1, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;->getItemById(J)Lcom/android/launcher3/common/base/item/ItemInfo;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/folder/FolderInfo;

    .line 1673
    .local v2, "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    if-nez v2, :cond_0

    .line 1674
    const-string v3, "Launcher.AppsController"

    const-string v4, "Adapter doesn\'t have an folder which extract item."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1706
    :goto_0
    return-void

    .line 1677
    :cond_0
    invoke-virtual {v2, p1}, Lcom/android/launcher3/folder/FolderInfo;->remove(Lcom/android/launcher3/common/base/item/IconInfo;)V

    .line 1679
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->isAlphabeticalMode()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1680
    const-wide/16 v4, -0x66

    iput-wide v4, p1, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    .line 1681
    const-wide/16 v4, -0x1

    iput-wide v4, p1, Lcom/android/launcher3/common/base/item/IconInfo;->screenId:J

    .line 1682
    const/4 v3, -0x1

    iput v3, p1, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    .line 1683
    const/4 v3, 0x1

    iput-boolean v3, p1, Lcom/android/launcher3/common/base/item/IconInfo;->mDirty:Z

    .line 1684
    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/controller/AppsController;->updateItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 1686
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1687
    .local v0, "addItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1688
    invoke-virtual {p0, v0, v6}, Lcom/android/launcher3/allapps/controller/AppsController;->normalizeWithExtraItems(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1689
    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/launcher3/allapps/view/AppsPagedView;->rearrangeAllViews(Z)V

    .line 1690
    invoke-virtual {p0, p1, v6, v6}, Lcom/android/launcher3/allapps/controller/AppsController;->createItemView(Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3, p1}, Lcom/android/launcher3/allapps/controller/AppsController;->addItem(Landroid/view/View;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 1699
    .end local v0    # "addItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    :cond_1
    :goto_1
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    new-instance v4, Lcom/android/launcher3/allapps/controller/AppsController$16;

    invoke-direct {v4, p0, p1}, Lcom/android/launcher3/allapps/controller/AppsController$16;-><init>(Lcom/android/launcher3/allapps/controller/AppsController;Lcom/android/launcher3/common/base/item/IconInfo;)V

    const-wide/16 v6, 0x1f4

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1692
    :cond_2
    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v3, p1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->addItemToLastPosition(Lcom/android/launcher3/common/base/item/IconInfo;)V

    .line 1693
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->removeEmptyPagesAndUpdateAllItemsInfo()Z

    move-result v1

    .line 1694
    .local v1, "dirtyItemUpdated":Z
    if-nez v1, :cond_1

    .line 1695
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->updateDirtyItems()V

    goto :goto_1
.end method

.method public moveOutItemsFromLockedFolder(Lcom/android/launcher3/folder/FolderInfo;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 16
    .param p1, "folder"    # Lcom/android/launcher3/folder/FolderInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/folder/FolderInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2421
    .local p2, "homeNeedUpdateInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    .local p3, "appsNeedUpdateInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/folder/FolderInfo;->isContainApps()Z

    move-result v12

    if-nez v12, :cond_1

    .line 2465
    :cond_0
    return-void

    .line 2424
    :cond_1
    const/4 v5, 0x0

    .local v5, "index":I
    :goto_0
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v5, v12, :cond_0

    .line 2425
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 2426
    .local v6, "info":Lcom/android/launcher3/common/base/item/IconInfo;
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/android/launcher3/folder/FolderInfo;->remove(Lcom/android/launcher3/common/base/item/IconInfo;)V

    .line 2427
    iget-wide v12, v6, Lcom/android/launcher3/common/base/item/IconInfo;->id:J

    const-wide/16 v14, -0x1

    cmp-long v12, v12, v14

    if-nez v12, :cond_2

    .line 2428
    invoke-static {}, Lcom/android/launcher3/common/model/FavoritesProvider;->getInstance()Lcom/android/launcher3/common/model/FavoritesProvider;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/launcher3/common/model/FavoritesProvider;->generateNewItemId()J

    move-result-wide v12

    iput-wide v12, v6, Lcom/android/launcher3/common/base/item/IconInfo;->id:J

    .line 2430
    :cond_2
    const-wide/16 v12, -0x66

    iput-wide v12, v6, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    .line 2431
    move-object/from16 v0, p1

    iget-wide v10, v0, Lcom/android/launcher3/folder/FolderInfo;->screenId:J

    .line 2432
    .local v10, "screenId":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsPagedView()Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getChildCount()I

    move-result v8

    .line 2433
    .local v8, "screenCount":I
    long-to-int v3, v10

    .line 2434
    .local v3, "folderScreen":I
    const/4 v4, 0x0

    .line 2435
    .local v4, "found":Z
    :goto_1
    if-ge v3, v8, :cond_3

    .line 2436
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v12, v3}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getItemCountPageAt(I)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v13}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellCountX()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v14}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellCountY()I

    move-result v14

    mul-int/2addr v13, v14

    if-ge v12, v13, :cond_4

    .line 2437
    const/4 v4, 0x1

    .line 2443
    :cond_3
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v13, 0x1

    if-ge v12, v13, :cond_5

    .line 2444
    move-object/from16 v0, p1

    iget v12, v0, Lcom/android/launcher3/folder/FolderInfo;->cellX:I

    iput v12, v6, Lcom/android/launcher3/common/base/item/IconInfo;->cellX:I

    .line 2445
    move-object/from16 v0, p1

    iget v12, v0, Lcom/android/launcher3/folder/FolderInfo;->cellY:I

    iput v12, v6, Lcom/android/launcher3/common/base/item/IconInfo;->cellY:I

    .line 2446
    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/android/launcher3/folder/FolderInfo;->screenId:J

    iput-wide v12, v6, Lcom/android/launcher3/common/base/item/IconInfo;->screenId:J

    .line 2447
    move-object/from16 v0, p1

    iget v12, v0, Lcom/android/launcher3/folder/FolderInfo;->rank:I

    iput v12, v6, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    .line 2448
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher3/allapps/controller/AppsController;->removeAppsItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 2459
    :goto_2
    iget-wide v12, v6, Lcom/android/launcher3/common/base/item/IconInfo;->screenId:J

    long-to-int v7, v12

    .line 2460
    .local v7, "page":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v12, v7}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 2461
    .local v2, "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v2, v12}, Lcom/android/launcher3/allapps/controller/AppsController;->createItemView(Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v9

    .line 2462
    .local v9, "v":Landroid/view/View;
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v6}, Lcom/android/launcher3/allapps/controller/AppsController;->addItem(Landroid/view/View;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 2463
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/launcher3/allapps/controller/AppsController;->updateItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 2424
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 2440
    .end local v2    # "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    .end local v7    # "page":I
    .end local v9    # "v":Landroid/view/View;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2450
    :cond_5
    if-eqz v4, :cond_6

    .line 2451
    int-to-long v12, v3

    iput-wide v12, v6, Lcom/android/launcher3/common/base/item/IconInfo;->screenId:J

    .line 2452
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v12, v3}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getItemCountPageAt(I)I

    move-result v12

    iput v12, v6, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    goto :goto_2

    .line 2454
    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v12}, Lcom/android/launcher3/allapps/view/AppsPagedView;->createAppsPage()Lcom/android/launcher3/allapps/view/AppsViewCellLayout;

    .line 2455
    int-to-long v12, v8

    iput-wide v12, v6, Lcom/android/launcher3/common/base/item/IconInfo;->screenId:J

    .line 2456
    const/4 v12, 0x0

    iput v12, v6, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    goto :goto_2
.end method

.method public normalizeWithExtraItems(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 12
    .param p1    # Ljava/util/ArrayList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/ArrayList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
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
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2806
    .local p1, "withItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .local p2, "withOutItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2807
    .local v5, "itemInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    iget-object v9, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v9}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getPageCount()I

    move-result v6

    .line 2808
    .local v6, "pageCount":I
    const/4 v7, 0x0

    .local v7, "pageIndex":I
    :goto_0
    if-ge v7, v6, :cond_2

    .line 2809
    iget-object v9, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v9, v7}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v1

    .line 2810
    .local v1, "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/CellLayout;->getPageChildCount()I

    move-result v0

    .line 2811
    .local v0, "childCount":I
    const/4 v3, 0x0

    .local v3, "itemIndex":I
    :goto_1
    if-ge v3, v0, :cond_1

    .line 2812
    invoke-virtual {v1, v3}, Lcom/android/launcher3/common/base/view/CellLayout;->getChildOnPageAt(I)Landroid/view/View;

    move-result-object v8

    .line 2813
    .local v8, "view":Landroid/view/View;
    instance-of v9, v8, Lcom/android/launcher3/common/view/Removable;

    if-eqz v9, :cond_0

    move-object v9, v8

    check-cast v9, Lcom/android/launcher3/common/view/Removable;

    invoke-interface {v9}, Lcom/android/launcher3/common/view/Removable;->isMarkToRemove()Z

    move-result v9

    if-nez v9, :cond_0

    .line 2814
    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    instance-of v9, v9, Lcom/android/launcher3/common/base/item/ItemInfo;

    if-eqz v9, :cond_0

    .line 2815
    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 2816
    .local v4, "itemInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2811
    .end local v4    # "itemInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2808
    .end local v8    # "view":Landroid/view/View;
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 2821
    .end local v0    # "childCount":I
    .end local v1    # "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    .end local v3    # "itemIndex":I
    :cond_2
    if-eqz p1, :cond_3

    .line 2822
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 2823
    .local v2, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2826
    .end local v2    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_3
    if-eqz p2, :cond_4

    .line 2827
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 2828
    .restart local v2    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    .line 2831
    .end local v2    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_4
    iget-object v9, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAdapterProvider:Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;

    invoke-virtual {v9}, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;->getNormalizer()Lcom/android/launcher3/allapps/controller/Normalizer;

    move-result-object v9

    iget-object v10, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v10}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getMaxItemsPerScreen()I

    move-result v10

    iget-object v11, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    .line 2832
    invoke-virtual {v11}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellCountX()I

    move-result v11

    .line 2831
    invoke-virtual {v9, v5, v10, v11}, Lcom/android/launcher3/allapps/controller/Normalizer;->normalize(Ljava/util/ArrayList;II)I

    .line 2833
    return-void
.end method

.method public notifyCapture(Z)V
    .locals 0
    .param p1, "immediate"    # Z

    .prologue
    .line 2384
    return-void
.end method

.method public notifyControllerItemsChanged()V
    .locals 1

    .prologue
    .line 2373
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/controller/AppsController;->repositionByNormalizer(Z)V

    .line 2374
    return-void
.end method

.method public onBackPressed()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1121
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->initBounceAnimation()V

    .line 1122
    iget-boolean v3, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mFromSetting:Z

    if-eqz v3, :cond_0

    .line 1123
    invoke-direct {p0, v1}, Lcom/android/launcher3/allapps/controller/AppsController;->startSettingActivity(Z)V

    .line 1141
    :goto_0
    return v1

    .line 1127
    :cond_0
    iget v3, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mState:I

    if-eqz v3, :cond_3

    .line 1128
    iget v3, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mState:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 1129
    invoke-virtual {p0, v2, v2}, Lcom/android/launcher3/allapps/controller/AppsController;->changeState(IZ)Z

    goto :goto_0

    .line 1130
    :cond_1
    iget v3, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mState:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_2

    .line 1131
    invoke-direct {p0, v1}, Lcom/android/launcher3/allapps/controller/AppsController;->startSettingActivity(Z)V

    goto :goto_0

    .line 1134
    :cond_2
    invoke-virtual {p0, v2, v1}, Lcom/android/launcher3/allapps/controller/AppsController;->changeState(IZ)Z

    goto :goto_0

    .line 1138
    :cond_3
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1139
    .local v0, "res":Landroid/content/res/Resources;
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v1

    const v3, 0x7f0901b1

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f09011c

    .line 1140
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    .line 1139
    invoke-virtual {v1, v3, v4, v5}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 1141
    goto :goto_0
.end method

.method public onBadgeBindingCompleted(Ljava/util/ArrayList;)V
    .locals 4
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
    .line 2041
    .local p1, "badgeItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 2042
    .local v0, "ii":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mUpdateBadgeItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2043
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mUpdateBadgeItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2047
    .end local v0    # "ii":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mUpdateBadgeListRunnable:Ljava/lang/Runnable;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/Launcher;->waitUntilResume(Ljava/lang/Runnable;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2051
    :goto_1
    return-void

    .line 2050
    :cond_2
    invoke-direct {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->updateBadgeItems()V

    goto :goto_1
.end method

.method public onChangeSelectMode(ZZ)V
    .locals 6
    .param p1, "enter"    # Z
    .param p2, "animated"    # Z

    .prologue
    const/4 v4, 0x2

    .line 2120
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->isAppsStage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2121
    if-eqz p1, :cond_1

    .line 2122
    invoke-virtual {p0, v4, p2}, Lcom/android/launcher3/allapps/controller/AppsController;->changeState(IZ)Z

    .line 2123
    sget-object v0, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0900cf

    .line 2124
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 2125
    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090033

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    .line 2126
    invoke-virtual {v5}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCurrentPage()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v5}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getPageCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 2125
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2123
    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/Talk;->postSay(Ljava/lang/String;)V

    .line 2131
    :cond_0
    :goto_0
    return-void

    .line 2128
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v0}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->clearCheckedApps()V

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/view/View;Z)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "isChecked"    # Z

    .prologue
    .line 2134
    if-eqz p2, :cond_0

    .line 2135
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mDragController:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->addCheckedApp(Landroid/view/View;Lcom/android/launcher3/common/drag/DragSource;)V

    .line 2139
    :goto_0
    return-void

    .line 2137
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->removeCheckedApp(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)Z
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1014
    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->isRunningAnimation()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1065
    .end local p1    # "v":Landroid/view/View;
    :cond_0
    :goto_0
    return v2

    .line 1017
    .restart local p1    # "v":Landroid/view/View;
    :cond_1
    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    invoke-virtual {v4}, Lcom/android/launcher3/common/tray/TrayManager;->isMoving()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1020
    :cond_2
    invoke-direct {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->isTidyState()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1023
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->initBounceAnimation()V

    .line 1025
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 1026
    .local v1, "tag":Ljava/lang/Object;
    instance-of v4, v1, Lcom/android/launcher3/common/base/item/IconInfo;

    if-nez v4, :cond_3

    instance-of v4, v1, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v4, :cond_0

    .line 1027
    :cond_3
    iget v4, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mState:I

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 1029
    :pswitch_0
    instance-of v2, p1, Lcom/android/launcher3/folder/view/FolderIconView;

    if-eqz v2, :cond_5

    .line 1030
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2, p1}, Lcom/android/launcher3/Launcher;->onClickFolderIcon(Landroid/view/View;)V

    :cond_4
    :goto_1
    move v2, v3

    .line 1038
    goto :goto_0

    .line 1032
    :cond_5
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2, p1}, Lcom/android/launcher3/Launcher;->startAppShortcutOrInfoActivity(Landroid/view/View;)V

    .line 1033
    instance-of v2, v1, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v2, :cond_4

    move-object v0, v1

    .line 1034
    check-cast v0, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 1035
    .local v0, "item":Lcom/android/launcher3/common/base/item/IconInfo;
    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/controller/AppsController;->sendGSIMLog(Lcom/android/launcher3/common/base/item/IconInfo;)V

    goto :goto_1

    .end local v0    # "item":Lcom/android/launcher3/common/base/item/IconInfo;
    :pswitch_1
    move v2, v3

    .line 1040
    goto :goto_0

    .line 1042
    :pswitch_2
    instance-of v4, v1, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v4, :cond_0

    move-object v0, v1

    .line 1044
    check-cast v0, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 1045
    .restart local v0    # "item":Lcom/android/launcher3/common/base/item/IconInfo;
    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4, p1}, Lcom/android/launcher3/Launcher;->startAppShortcutOrInfoActivity(Landroid/view/View;)V

    .line 1046
    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsSearch:Lcom/android/launcher3/allapps/view/AppsSearch;

    invoke-virtual {v4, v0}, Lcom/android/launcher3/allapps/view/AppsSearch;->updateRecentApp(Lcom/android/launcher3/common/base/item/IconInfo;)V

    .line 1047
    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/controller/AppsController;->sendGSIMLog(Lcom/android/launcher3/common/base/item/IconInfo;)V

    .line 1048
    invoke-virtual {p0, v2, v2}, Lcom/android/launcher3/allapps/controller/AppsController;->changeState(IZ)Z

    move v2, v3

    .line 1049
    goto :goto_0

    .line 1051
    .end local v0    # "item":Lcom/android/launcher3/common/base/item/IconInfo;
    :pswitch_3
    instance-of v2, p1, Lcom/android/launcher3/folder/view/FolderIconView;

    if-eqz v2, :cond_7

    .line 1052
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFolderSelect()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1053
    check-cast p1, Lcom/android/launcher3/folder/view/FolderIconView;

    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {p1}, Lcom/android/launcher3/folder/view/FolderIconView;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CheckBox;->toggle()V

    :goto_2
    move v2, v3

    .line 1062
    goto :goto_0

    .line 1055
    .restart local p1    # "v":Landroid/view/View;
    :cond_6
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2, p1}, Lcom/android/launcher3/Launcher;->onClickFolderIcon(Landroid/view/View;)V

    goto :goto_2

    .line 1058
    :cond_7
    check-cast p1, Lcom/android/launcher3/common/view/IconView;

    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {p1}, Lcom/android/launcher3/common/view/IconView;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CheckBox;->toggle()V

    .line 1059
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v2

    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0901b4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    const-string v6, "0"

    invoke-virtual {v2, v4, v5, v6}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1027
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public onClickMultiSelectPanel(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    const/4 v2, 0x1

    .line 2143
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->isAppsStage()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->isFolderStage()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 2144
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getSecondTopStageMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 2160
    :cond_0
    :goto_0
    return-void

    .line 2148
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 2159
    :goto_1
    const/4 v0, 0x0

    invoke-direct {p0, v0, v2, v2}, Lcom/android/launcher3/allapps/controller/AppsController;->changeState(IZZ)Z

    goto :goto_0

    .line 2150
    :pswitch_0
    invoke-direct {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->createFolder()V

    goto :goto_1

    .line 2148
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChangedIfNeeded(Z)V
    .locals 8
    .param p1, "changedOrientation"    # Z

    .prologue
    const/4 v6, 0x0

    .line 2633
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2634
    .local v0, "cur":J
    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v2

    .line 2635
    .local v2, "dp":Lcom/android/launcher3/common/deviceprofile/DeviceProfile;
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportNavigationBar()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2636
    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsContainer:Lcom/android/launcher3/allapps/view/AppsContainer;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/view/AppsContainer;->getPaddingTop()I

    move-result v3

    .line 2637
    .local v3, "topPadding":I
    invoke-virtual {v2}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->isVerticalBarLayout()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2638
    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsContainer:Lcom/android/launcher3/allapps/view/AppsContainer;

    iget v5, v2, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->navigationBarHeight:I

    invoke-virtual {v4, v6, v3, v5, v6}, Lcom/android/launcher3/allapps/view/AppsContainer;->setPadding(IIII)V

    .line 2644
    .end local v3    # "topPadding":I
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsSearch:Lcom/android/launcher3/allapps/view/AppsSearch;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/view/AppsSearch;->onConfigurationChangedIfNeeded()V

    .line 2645
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFlexibleGrid()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2646
    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsScreenGridPanel:Lcom/android/launcher3/allapps/AppsScreenGridPanel;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->onConfigurationChangedIfNeeded()V

    .line 2648
    :cond_1
    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v4, p1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->onConfigurationChangedIfNeeded(Z)V

    .line 2650
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2651
    invoke-direct {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->repositionByConfiguration()V

    .line 2655
    :cond_2
    const-string v4, "Launcher.AppsController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onConfigurationChangedIfNeeded consumed : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2658
    return-void

    .line 2640
    .restart local v3    # "topPadding":I
    :cond_3
    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsContainer:Lcom/android/launcher3/allapps/view/AppsContainer;

    iget v5, v2, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->navigationBarHeight:I

    invoke-virtual {v4, v6, v3, v6, v5}, Lcom/android/launcher3/allapps/view/AppsContainer;->setPadding(IIII)V

    goto :goto_0
.end method

.method public onDestroyActivity()V
    .locals 2

    .prologue
    .line 658
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    if-eqz v1, :cond_0

    .line 659
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/common/tray/TrayManager;->removeTrayEventCallbacks(Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;)V

    .line 661
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAdapterProvider:Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;->destroy()V

    .line 662
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsContainer:Lcom/android/launcher3/allapps/view/AppsContainer;

    .line 664
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    if-eqz v1, :cond_1

    .line 665
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->removeMultiSelectCallbacks(Lcom/android/launcher3/common/multiselect/MultiSelectManager$MultiSelectListener;)V

    .line 668
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    if-eqz v1, :cond_2

    .line 669
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/folder/folderlock/FolderLock;->removeFolderLockActionCallback(Lcom/android/launcher3/folder/folderlock/FolderLock$FolderLockActionCallback;)V

    .line 672
    :cond_2
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    .line 674
    .local v0, "launcherAppState":Lcom/android/launcher3/LauncherAppState;
    if-eqz v0, :cond_3

    .line 675
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/launcher3/LauncherModel;->unregisterOnBadgeBindingCompletedLisnter(Lcom/android/launcher3/LauncherModel$OnBadgeBindingCompletedLisnter;)V

    .line 676
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/launcher3/LauncherModel;->unregisterOnLiveIconUpdateLisnter(Lcom/android/launcher3/LauncherModel$OnRefreshLiveIconListener;)V

    .line 678
    :cond_3
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 1146
    if-eqz p2, :cond_0

    .line 1147
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->requestFocus()Z

    .line 1149
    :cond_0
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 518
    invoke-static {}, Lcom/android/launcher3/util/TestHelper;->isRoboUnitTest()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 563
    :cond_0
    :goto_0
    return v3

    .line 524
    :cond_1
    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->isAppsStage()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 527
    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->isRunningAnimation()Z

    move-result v5

    if-nez v5, :cond_0

    .line 530
    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    invoke-virtual {v5}, Lcom/android/launcher3/common/drag/DragManager;->isDragging()Z

    move-result v5

    if-nez v5, :cond_0

    .line 533
    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    invoke-virtual {v5}, Lcom/android/launcher3/common/tray/TrayManager;->isMoving()Z

    move-result v5

    if-nez v5, :cond_0

    .line 536
    :cond_2
    invoke-direct {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->isTidyState()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-direct {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->isDragLocked()Z

    move-result v5

    if-nez v5, :cond_0

    .line 540
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->initBounceAnimation()V

    .line 542
    const/4 v2, 0x0

    .line 543
    .local v2, "longClickCellInfo":Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;
    const/4 v1, 0x0

    .line 544
    .local v1, "itemUnderLongClick":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lcom/android/launcher3/common/base/item/ItemInfo;

    if-eqz v5, :cond_3

    .line 545
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 546
    .local v0, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    new-instance v2, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    .end local v2    # "longClickCellInfo":Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;
    invoke-direct {v2, p1, v0}, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;-><init>(Landroid/view/View;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 547
    .restart local v2    # "longClickCellInfo":Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;
    iget-object v1, v2, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 550
    .end local v0    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_3
    if-eqz v1, :cond_4

    .line 551
    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    invoke-virtual {v5}, Lcom/android/launcher3/common/drag/DragManager;->isDragging()Z

    move-result v5

    if-nez v5, :cond_5

    iget v5, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mState:I

    if-nez v5, :cond_5

    .line 553
    invoke-virtual {p0, v2, v4}, Lcom/android/launcher3/allapps/controller/AppsController;->startDrag(Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;Z)V

    :cond_4
    :goto_1
    move v3, v4

    .line 563
    goto :goto_0

    .line 554
    :cond_5
    iget v5, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mState:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_4

    .line 555
    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v5, v1}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->canLongClick(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 556
    invoke-virtual {p0, v2, v3}, Lcom/android/launcher3/allapps/controller/AppsController;->startDrag(Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;Z)V

    goto :goto_1
.end method

.method onOptionSelectedSearchRecommend()V
    .locals 6

    .prologue
    .line 1933
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/android/launcher3/AppSearchSettingActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1934
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 1935
    .local v1, "mHandler":Landroid/os/Handler;
    new-instance v2, Lcom/android/launcher3/allapps/controller/AppsController$17;

    invoke-direct {v2, p0}, Lcom/android/launcher3/allapps/controller/AppsController$17;-><init>(Lcom/android/launcher3/allapps/controller/AppsController;)V

    const-wide/16 v4, 0x2bc

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1945
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1946
    return-void
.end method

.method public onPauseActivity()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 640
    iput-boolean v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mIsResumed:Z

    .line 641
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->onPause()V

    .line 642
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->initBounceAnimation()V

    .line 643
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->isSelectState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 644
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v0}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->isShowingHelpDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 645
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->hideHelpDialog(Z)V

    .line 647
    :cond_0
    invoke-virtual {p0, v1, v1}, Lcom/android/launcher3/allapps/controller/AppsController;->changeState(IZ)Z

    .line 649
    :cond_1
    return-void
.end method

.method public onReceiveTrayEvent(Lcom/android/launcher3/common/tray/TrayManager$TrayEvent;)V
    .locals 7
    .param p1, "event"    # Lcom/android/launcher3/common/tray/TrayManager$TrayEvent;

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1791
    iget v2, p1, Lcom/android/launcher3/common/tray/TrayManager$TrayEvent;->mEventType:I

    packed-switch v2, :pswitch_data_0

    .line 1816
    :goto_0
    :pswitch_0
    return-void

    .line 1793
    :pswitch_1
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsContainer:Lcom/android/launcher3/allapps/view/AppsContainer;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsContainer;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    .line 1794
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsContainer:Lcom/android/launcher3/allapps/view/AppsContainer;

    invoke-virtual {v2, v4}, Lcom/android/launcher3/allapps/view/AppsContainer;->setVisibility(I)V

    .line 1795
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsContainer:Lcom/android/launcher3/allapps/view/AppsContainer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/launcher3/allapps/view/AppsContainer;->setAlpha(F)V

    .line 1797
    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2, v5}, Lcom/android/launcher3/allapps/view/AppsPagedView;->updateOnlyCurrentPage(Z)V

    .line 1798
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2, v6, v5}, Lcom/android/launcher3/allapps/view/AppsPagedView;->updateChildrenLayersEnabled(IZ)I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mHwLayerPageIndexWhileTray:I

    goto :goto_0

    .line 1801
    :pswitch_2
    iget v2, p1, Lcom/android/launcher3/common/tray/TrayManager$TrayEvent;->mValue:F

    float-to-int v1, v2

    .line 1802
    .local v1, "stageMode":I
    if-ne v1, v5, :cond_1

    .line 1803
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsContainer:Lcom/android/launcher3/allapps/view/AppsContainer;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/android/launcher3/allapps/view/AppsContainer;->setVisibility(I)V

    .line 1805
    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2, v4}, Lcom/android/launcher3/allapps/view/AppsPagedView;->updateOnlyCurrentPage(Z)V

    .line 1806
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    iget v3, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mHwLayerPageIndexWhileTray:I

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/allapps/view/AppsPagedView;->updateChildrenLayersEnabled(IZ)I

    .line 1807
    iput v6, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mHwLayerPageIndexWhileTray:I

    goto :goto_0

    .line 1810
    .end local v1    # "stageMode":I
    :pswitch_3
    iget v0, p1, Lcom/android/launcher3/common/tray/TrayManager$TrayEvent;->mValue:F

    .line 1811
    .local v0, "offsetY":F
    iget-boolean v2, p1, Lcom/android/launcher3/common/tray/TrayManager$TrayEvent;->mDisallowVisible:Z

    invoke-direct {p0, v0, v2}, Lcom/android/launcher3/allapps/controller/AppsController;->updateAppsViewByTrayPosition(FZ)V

    goto :goto_0

    .line 1791
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onRefreshLiveIcon()V
    .locals 2

    .prologue
    .line 2111
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportHomeModeChange()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2112
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 2113
    .local v0, "isHomeOnly":Z
    :goto_0
    if-nez v0, :cond_0

    .line 2114
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->updateLiveIcon()V

    .line 2116
    :cond_0
    return-void

    .line 2112
    .end local v0    # "isHomeOnly":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onResumeActivity()V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 590
    iput-boolean v9, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mIsResumed:Z

    .line 591
    iget-object v7, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v7}, Lcom/android/launcher3/allapps/view/AppsPagedView;->onResume()V

    .line 592
    iget-object v7, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAdapterProvider:Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;

    invoke-virtual {v7}, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;->resume()V

    .line 594
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportTransitionEffects()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 595
    iget-object v7, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v7}, Lcom/android/launcher3/Launcher;->getPageTransitionManager()Lcom/android/launcher3/pagetransition/PageTransitionManager;

    move-result-object v7

    iget-object v8, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v7, v8}, Lcom/android/launcher3/pagetransition/PageTransitionManager;->setup(Lcom/android/launcher3/common/base/view/PagedView;)V

    .line 597
    :cond_0
    iget-object v7, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsSearch:Lcom/android/launcher3/allapps/view/AppsSearch;

    invoke-virtual {v7}, Lcom/android/launcher3/allapps/view/AppsSearch;->resume()V

    .line 599
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->initBounceAnimation()V

    .line 600
    iget-object v7, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v7}, Lcom/android/launcher3/Launcher;->getSearchedApp()Ljava/lang/String;

    move-result-object v0

    .line 602
    .local v0, "appinfo":Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 603
    const/4 v6, 0x0

    .line 604
    .local v6, "pkg":Ljava/lang/String;
    const/4 v1, 0x0

    .line 605
    .local v1, "cmp":Ljava/lang/String;
    const-string v7, "/"

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 606
    const-string v7, "/"

    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 607
    .local v4, "index":I
    const/4 v7, 0x0

    invoke-virtual {v0, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 608
    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 610
    .end local v4    # "index":I
    :cond_1
    iget-object v7, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v7, v6}, Lcom/android/launcher3/Utilities;->isPackageExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 611
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, v6, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    .local v2, "componentName":Landroid/content/ComponentName;
    iget-object v7, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v7}, Lcom/android/launcher3/Launcher;->getLauncherModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher3/LauncherModel;->getAppsModel()Lcom/android/launcher3/allapps/model/AppsModel;

    move-result-object v7

    iget-object v8, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 613
    invoke-virtual {v8}, Lcom/android/launcher3/Launcher;->getSearchedAppUser()Landroid/os/UserHandle;

    move-result-object v8

    invoke-static {v8}, Lcom/android/launcher3/common/compat/UserHandleCompat;->fromUser(Landroid/os/UserHandle;)Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v8

    .line 612
    invoke-virtual {v7, v2, v8, v9}, Lcom/android/launcher3/allapps/model/AppsModel;->getItemInfoInAppsForComponentName(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;Z)Lcom/android/launcher3/common/base/item/ItemInfo;

    move-result-object v5

    .line 614
    .local v5, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcom/android/launcher3/common/base/item/ItemInfo;->isHiddenByUser()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 615
    new-instance v3, Lcom/android/launcher3/common/stage/StageEntry;

    invoke-direct {v3}, Lcom/android/launcher3/common/stage/StageEntry;-><init>()V

    .line 616
    .local v3, "data":Lcom/android/launcher3/common/stage/StageEntry;
    iput-boolean v9, v3, Lcom/android/launcher3/common/stage/StageEntry;->enableAnimation:Z

    .line 617
    iput v11, v3, Lcom/android/launcher3/common/stage/StageEntry;->fromStage:I

    .line 618
    const-string v7, "KEY_PICKER_MODE"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lcom/android/launcher3/common/stage/StageEntry;->putExtras(Ljava/lang/String;Ljava/lang/Object;)V

    .line 619
    const-string v7, "KEY_BOUNCED_ITEM"

    invoke-virtual {v3, v7, v0}, Lcom/android/launcher3/common/stage/StageEntry;->putExtras(Ljava/lang/String;Ljava/lang/Object;)V

    .line 620
    const-string v7, "KEY_BOUNCED_ITEM_USER"

    iget-object v8, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v8}, Lcom/android/launcher3/Launcher;->getSearchedAppUser()Landroid/os/UserHandle;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lcom/android/launcher3/common/stage/StageEntry;->putExtras(Ljava/lang/String;Ljava/lang/Object;)V

    .line 621
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v7

    const/4 v8, 0x6

    invoke-virtual {v7, v8, v3}, Lcom/android/launcher3/common/stage/StageManager;->startStage(ILcom/android/launcher3/common/stage/StageEntry;)V

    .line 622
    iget-object v7, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v7, v10}, Lcom/android/launcher3/Launcher;->setSearchedApp(Ljava/lang/String;)V

    .line 623
    iget-object v7, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v7, v10}, Lcom/android/launcher3/Launcher;->setSearchedAppUser(Landroid/os/UserHandle;)V

    .line 636
    .end local v1    # "cmp":Ljava/lang/String;
    .end local v2    # "componentName":Landroid/content/ComponentName;
    .end local v3    # "data":Lcom/android/launcher3/common/stage/StageEntry;
    .end local v5    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v6    # "pkg":Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    .line 626
    .restart local v1    # "cmp":Ljava/lang/String;
    .restart local v2    # "componentName":Landroid/content/ComponentName;
    .restart local v5    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    .restart local v6    # "pkg":Ljava/lang/String;
    :cond_3
    iget-object v7, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v7}, Lcom/android/launcher3/Launcher;->getSearchedAppUser()Landroid/os/UserHandle;

    move-result-object v7

    invoke-direct {p0, v2, v7}, Lcom/android/launcher3/allapps/controller/AppsController;->findSearchedApp(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    .line 627
    iget-object v7, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v7, v10}, Lcom/android/launcher3/Launcher;->setSearchedApp(Ljava/lang/String;)V

    .line 628
    iget-object v7, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v7, v10}, Lcom/android/launcher3/Launcher;->setSearchedAppUser(Landroid/os/UserHandle;)V

    .line 632
    .end local v1    # "cmp":Ljava/lang/String;
    .end local v2    # "componentName":Landroid/content/ComponentName;
    .end local v5    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v6    # "pkg":Ljava/lang/String;
    :cond_4
    iget-object v7, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v7}, Lcom/android/launcher3/Launcher;->isAppsStage()Z

    move-result v7

    if-eqz v7, :cond_2

    iget v7, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mState:I

    if-nez v7, :cond_2

    .line 633
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher3/LauncherAppState;->getTopViewChangedMessageHandler()Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;

    move-result-object v7

    .line 634
    invoke-virtual {v7, v11}, Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;->sendMessage(I)V

    goto :goto_0
.end method

.method public onSetPageScrollListener(Lcom/android/launcher3/common/base/view/PagedView$PageScrollListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/launcher3/common/base/view/PagedView$PageScrollListener;

    .prologue
    .line 2782
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->setPageScrollListener(Lcom/android/launcher3/common/base/view/PagedView$PageScrollListener;)V

    .line 2783
    return-void
.end method

.method protected onStageEnter(Lcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/Animator;
    .locals 14
    .param p1, "data"    # Lcom/android/launcher3/common/stage/StageEntry;

    .prologue
    const/4 v13, 0x6

    const/4 v12, 0x5

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 736
    iget-object v8, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    iget-object v11, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mDragController:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-virtual {v8, v11}, Lcom/android/launcher3/common/drag/DragManager;->setDragScroller(Lcom/android/launcher3/common/drag/DragScroller;)V

    .line 737
    iget-object v8, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    iget-object v11, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mDragController:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-virtual {v8, v11}, Lcom/android/launcher3/common/drag/DragManager;->addDropTarget(Lcom/android/launcher3/common/drag/DropTarget;)V

    .line 738
    iget-object v8, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    iget-object v11, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v8, v11}, Lcom/android/launcher3/common/drag/DragManager;->setMoveTarget(Landroid/view/View;)V

    .line 740
    const/4 v2, 0x0

    .line 741
    .local v2, "enterAnim":Landroid/animation/Animator;
    if-eqz p1, :cond_1

    .line 742
    iget v3, p1, Lcom/android/launcher3/common/stage/StageEntry;->fromStage:I

    .line 743
    .local v3, "fromViewMode":I
    invoke-virtual {p1}, Lcom/android/launcher3/common/stage/StageEntry;->getLayerViews()Ljava/util/HashMap;

    move-result-object v6

    .line 744
    .local v6, "layerViews":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/View;Ljava/lang/Integer;>;"
    iget-boolean v1, p1, Lcom/android/launcher3/common/stage/StageEntry;->enableAnimation:Z

    .line 745
    .local v1, "animated":Z
    const-string v8, "KEY_SUPPRESS_CHANGE_STAGE_ONCE"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {p1, v8, v11}, Lcom/android/launcher3/common/stage/StageEntry;->getExtras(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-lez v8, :cond_2

    move v7, v9

    .line 746
    .local v7, "suppressChangeStageOnce":Z
    :goto_0
    if-eqz v7, :cond_0

    iget-object v8, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    if-eqz v8, :cond_0

    .line 747
    iget-object v8, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    invoke-virtual {v8}, Lcom/android/launcher3/common/tray/TrayManager;->setSuppressChangeStageOnce()V

    .line 750
    :cond_0
    invoke-virtual {p1}, Lcom/android/launcher3/common/stage/StageEntry;->getInternalStateTo()I

    move-result v8

    if-ne v8, v12, :cond_3

    .line 751
    iget-object v8, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsAnimation:Lcom/android/launcher3/allapps/AppsTransitionAnimation;

    invoke-virtual {v8, v1, v6}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->getEnterFromSettingAnim(ZLjava/util/HashMap;)Landroid/animation/Animator;

    move-result-object v2

    .line 753
    invoke-virtual {p0, v12, v10}, Lcom/android/launcher3/allapps/controller/AppsController;->changeState(IZ)Z

    .line 788
    :goto_1
    iget-object v8, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLoggingRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v8}, Lcom/android/launcher3/common/stage/StageEntry;->addOnCompleteRunnableCallBack(Ljava/lang/Runnable;)V

    .line 791
    .end local v1    # "animated":Z
    .end local v3    # "fromViewMode":I
    .end local v6    # "layerViews":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/View;Ljava/lang/Integer;>;"
    .end local v7    # "suppressChangeStageOnce":Z
    :cond_1
    return-object v2

    .restart local v1    # "animated":Z
    .restart local v3    # "fromViewMode":I
    .restart local v6    # "layerViews":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/View;Ljava/lang/Integer;>;"
    :cond_2
    move v7, v10

    .line 745
    goto :goto_0

    .line 755
    .restart local v7    # "suppressChangeStageOnce":Z
    :cond_3
    if-ne v3, v9, :cond_7

    .line 756
    invoke-virtual {p1}, Lcom/android/launcher3/common/stage/StageEntry;->getInternalStateTo()I

    move-result v8

    if-ne v8, v9, :cond_6

    .line 757
    invoke-virtual {p0, v9, v1}, Lcom/android/launcher3/allapps/controller/AppsController;->changeState(IZ)Z

    .line 766
    :cond_4
    :goto_2
    iget-object v8, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v8, v9}, Lcom/android/launcher3/allapps/view/AppsPagedView;->updateAccessibilityFlags(Z)V

    .line 785
    :cond_5
    :goto_3
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher3/LauncherAppState;->getTopViewChangedMessageHandler()Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;

    move-result-object v8

    const/4 v9, 0x2

    .line 786
    invoke-virtual {v8, v9}, Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;->sendMessage(I)V

    goto :goto_1

    .line 759
    :cond_6
    iget-object v8, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsAnimation:Lcom/android/launcher3/allapps/AppsTransitionAnimation;

    invoke-virtual {v8, v1, v6}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->getEnterFromHomeAnimation(ZLjava/util/HashMap;)Landroid/animation/Animator;

    move-result-object v2

    .line 760
    iget-object v8, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsSearch:Lcom/android/launcher3/allapps/view/AppsSearch;

    invoke-virtual {v8, v10}, Lcom/android/launcher3/allapps/view/AppsSearch;->setSearchBarVisibility(I)V

    .line 761
    invoke-virtual {p1}, Lcom/android/launcher3/common/stage/StageEntry;->getInternalStateTo()I

    move-result v8

    if-nez v8, :cond_4

    .line 762
    sget-object v8, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v11}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f090028

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    .line 763
    invoke-virtual {v11}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getPageDescription()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 762
    invoke-virtual {v8, v10}, Lcom/android/launcher3/util/Talk;->say(Ljava/lang/String;)V

    goto :goto_2

    .line 767
    :cond_7
    if-eq v3, v12, :cond_8

    if-ne v3, v13, :cond_a

    .line 768
    :cond_8
    if-ne v3, v13, :cond_9

    .line 769
    const-string v8, "KEY_ITEMS_TO_HIDE"

    .line 770
    invoke-virtual {p1, v8}, Lcom/android/launcher3/common/stage/StageEntry;->getExtras(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 771
    .local v4, "itemsToHide":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    const-string v8, "KEY_ITEMS_TO_SHOW"

    .line 772
    invoke-virtual {p1, v8}, Lcom/android/launcher3/common/stage/StageEntry;->getExtras(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 773
    .local v5, "itemsToShow":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    if-eqz v4, :cond_9

    if-eqz v5, :cond_9

    .line 774
    iget-object v8, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v8, v4, v5}, Lcom/android/launcher3/Launcher;->updateItemInfo(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 778
    .end local v4    # "itemsToHide":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .end local v5    # "itemsToShow":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    :cond_9
    const-string v8, "KEY_FOLDER_ICON_VIEW"

    invoke-virtual {p1, v8}, Lcom/android/launcher3/common/stage/StageEntry;->getExtras(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 779
    .local v0, "anchorView":Landroid/view/View;
    iget-object v8, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsAnimation:Lcom/android/launcher3/allapps/AppsTransitionAnimation;

    invoke-virtual {v8, v1, v6, v0}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->getEnterFromFolderAnimation(ZLjava/util/HashMap;Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v2

    .line 780
    invoke-virtual {p1}, Lcom/android/launcher3/common/stage/StageEntry;->getInternalStateTo()I

    move-result v8

    invoke-virtual {p0, v8, v1}, Lcom/android/launcher3/allapps/controller/AppsController;->changeState(IZ)Z

    goto/16 :goto_3

    .line 781
    .end local v0    # "anchorView":Landroid/view/View;
    :cond_a
    const/4 v8, 0x3

    if-ne v3, v8, :cond_5

    .line 782
    iget-object v8, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsAnimation:Lcom/android/launcher3/allapps/AppsTransitionAnimation;

    invoke-virtual {v8, v1, v6}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->getEnterFromSettingAnim(ZLjava/util/HashMap;)Landroid/animation/Animator;

    move-result-object v2

    goto/16 :goto_3
.end method

.method protected onStageEnterByTray()Landroid/animation/Animator;
    .locals 4

    .prologue
    .line 861
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsAnimation:Lcom/android/launcher3/allapps/AppsTransitionAnimation;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->getEnterFromHomeAnimation(ZLjava/util/HashMap;)Landroid/animation/Animator;

    move-result-object v0

    .line 862
    .local v0, "enterAni":Landroid/animation/Animator;
    new-instance v1, Lcom/android/launcher3/allapps/controller/AppsController$7;

    invoke-direct {v1, p0}, Lcom/android/launcher3/allapps/controller/AppsController$7;-><init>(Lcom/android/launcher3/allapps/controller/AppsController;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 894
    return-object v0
.end method

.method protected onStageExit(Lcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/Animator;
    .locals 10
    .param p1, "data"    # Lcom/android/launcher3/common/stage/StageEntry;

    .prologue
    const/4 v9, 0x5

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 796
    const/4 v2, 0x0

    .line 797
    .local v2, "exitAnim":Landroid/animation/Animator;
    iget-object v8, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v8}, Lcom/android/launcher3/Utilities;->closeDialog(Landroid/app/Activity;)V

    .line 798
    invoke-direct {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->closeViewTypeDialog()V

    .line 799
    invoke-direct {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->closeOrganizeAppsConfirmDialog()V

    .line 800
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->initBounceAnimation()V

    .line 802
    iget-object v8, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsSearch:Lcom/android/launcher3/allapps/view/AppsSearch;

    invoke-virtual {v8, p1}, Lcom/android/launcher3/allapps/view/AppsSearch;->stageExit(Lcom/android/launcher3/common/stage/StageEntry;)V

    .line 804
    if-eqz p1, :cond_2

    .line 805
    iget v5, p1, Lcom/android/launcher3/common/stage/StageEntry;->toStage:I

    .line 806
    .local v5, "toViewMode":I
    invoke-virtual {p1}, Lcom/android/launcher3/common/stage/StageEntry;->getLayerViews()Ljava/util/HashMap;

    move-result-object v4

    .line 807
    .local v4, "layerViews":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/View;Ljava/lang/Integer;>;"
    iget-boolean v1, p1, Lcom/android/launcher3/common/stage/StageEntry;->enableAnimation:Z

    .line 808
    .local v1, "animated":Z
    if-ne v5, v6, :cond_4

    .line 809
    iget v8, p1, Lcom/android/launcher3/common/stage/StageEntry;->stageCountOnFinishAllStage:I

    if-lez v8, :cond_3

    move v3, v6

    .line 810
    .local v3, "homePressed":Z
    :goto_0
    iget v8, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mState:I

    if-ne v8, v9, :cond_0

    if-eqz v3, :cond_0

    .line 811
    invoke-direct {p0, v7, v7}, Lcom/android/launcher3/allapps/controller/AppsController;->restoreScreenGrid(IZ)V

    .line 813
    :cond_0
    invoke-virtual {p0, v7, v6}, Lcom/android/launcher3/allapps/controller/AppsController;->changeState(IZ)Z

    .line 814
    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsAnimation:Lcom/android/launcher3/allapps/AppsTransitionAnimation;

    invoke-virtual {v6, v1, v4}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->getExitToHomeAnimation(ZLjava/util/HashMap;)Landroid/animation/Animator;

    move-result-object v2

    .line 815
    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v6, v7}, Lcom/android/launcher3/allapps/view/AppsPagedView;->updateAccessibilityFlags(Z)V

    .line 816
    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->getDragMgr()Lcom/android/launcher3/common/drag/DragManager;

    move-result-object v6

    iget-object v7, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mDragController:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-virtual {v6, v7}, Lcom/android/launcher3/common/drag/DragManager;->removeDropTarget(Lcom/android/launcher3/common/drag/DropTarget;)V

    .line 823
    .end local v3    # "homePressed":Z
    :cond_1
    :goto_1
    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLoggingRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v6}, Lcom/android/launcher3/common/stage/StageEntry;->addOnCompleteRunnableCallBack(Ljava/lang/Runnable;)V

    .line 825
    .end local v1    # "animated":Z
    .end local v4    # "layerViews":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/View;Ljava/lang/Integer;>;"
    .end local v5    # "toViewMode":I
    :cond_2
    return-object v2

    .restart local v1    # "animated":Z
    .restart local v4    # "layerViews":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/View;Ljava/lang/Integer;>;"
    .restart local v5    # "toViewMode":I
    :cond_3
    move v3, v7

    .line 809
    goto :goto_0

    .line 817
    :cond_4
    if-eq v5, v9, :cond_5

    const/4 v6, 0x6

    if-ne v5, v6, :cond_6

    .line 818
    :cond_5
    const-string v6, "KEY_FOLDER_ICON_VIEW"

    invoke-virtual {p1, v6}, Lcom/android/launcher3/common/stage/StageEntry;->getExtras(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 819
    .local v0, "anchorView":Landroid/view/View;
    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsAnimation:Lcom/android/launcher3/allapps/AppsTransitionAnimation;

    invoke-virtual {v6, v1, v4, v0}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->getExitToFolderAnimation(ZLjava/util/HashMap;Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v2

    .line 820
    goto :goto_1

    .end local v0    # "anchorView":Landroid/view/View;
    :cond_6
    const/4 v6, 0x3

    if-ne v5, v6, :cond_1

    .line 821
    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsAnimation:Lcom/android/launcher3/allapps/AppsTransitionAnimation;

    invoke-virtual {v6, v7, v4}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->getExitToWidgetAnim(ZLjava/util/HashMap;)Landroid/animation/Animator;

    move-result-object v2

    goto :goto_1
.end method

.method protected onStageExitByTray()Landroid/animation/Animator;
    .locals 4

    .prologue
    .line 830
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsAnimation:Lcom/android/launcher3/allapps/AppsTransitionAnimation;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->getExitToHomeAnimation(ZLjava/util/HashMap;)Landroid/animation/Animator;

    move-result-object v0

    .line 831
    .local v0, "exitAni":Landroid/animation/Animator;
    new-instance v1, Lcom/android/launcher3/allapps/controller/AppsController$6;

    invoke-direct {v1, p0}, Lcom/android/launcher3/allapps/controller/AppsController$6;-><init>(Lcom/android/launcher3/allapps/controller/AppsController;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 856
    return-object v0
.end method

.method protected onStageMovingToInitial(Lcom/android/launcher3/common/stage/StageEntry;)V
    .locals 3
    .param p1, "data"    # Lcom/android/launcher3/common/stage/StageEntry;

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 899
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsContainer:Lcom/android/launcher3/allapps/view/AppsContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/view/AppsContainer;->getAlpha()F

    move-result v0

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_0

    .line 900
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsContainer:Lcom/android/launcher3/allapps/view/AppsContainer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/view/AppsContainer;->setVisibility(I)V

    .line 901
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsContainer:Lcom/android/launcher3/allapps/view/AppsContainer;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/allapps/view/AppsContainer;->setAlpha(F)V

    .line 902
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mDragController:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/drag/DragManager;->removeDropTarget(Lcom/android/launcher3/common/drag/DropTarget;)V

    .line 904
    :cond_0
    return-void
.end method

.method public onStartActivity()V
    .locals 1

    .prologue
    .line 585
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAdapterProvider:Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;->start()V

    .line 586
    return-void
.end method

.method public onStopActivity()V
    .locals 1

    .prologue
    .line 653
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAdapterProvider:Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;->stop()V

    .line 654
    return-void
.end method

.method public onSwipeBlockListener(FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 2876
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mScrollDeterminator:Lcom/android/launcher3/util/event/ScrollDeterminator;

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/launcher3/util/event/ScrollDeterminator;->setBlockArea(Lcom/android/launcher3/common/base/view/PagedView;FF)Z

    .line 2877
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getPageCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 2878
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mScrollDeterminator:Lcom/android/launcher3/util/event/ScrollDeterminator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/event/ScrollDeterminator;->setScrollableView(Z)Z

    .line 2880
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mScrollDeterminator:Lcom/android/launcher3/util/event/ScrollDeterminator;

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/event/ScrollDeterminator;->setTalkBackEnabled(Landroid/content/Context;)Z

    .line 2881
    return-void
.end method

.method public onUpdateAlphabetList(Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 6
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 2346
    instance-of v2, p1, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 2347
    check-cast v0, Lcom/android/launcher3/folder/FolderInfo;

    .line 2348
    .local v0, "folderItem":Lcom/android/launcher3/folder/FolderInfo;
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->getViewType()Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    move-result-object v2

    sget-object v3, Lcom/android/launcher3/allapps/controller/AppsController$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    if-ne v2, v3, :cond_0

    .line 2349
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/launcher3/allapps/controller/AppsController;->repositionByNormalizer(Z)V

    .line 2350
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 2351
    .local v1, "mHandler":Landroid/os/Handler;
    new-instance v2, Lcom/android/launcher3/allapps/controller/AppsController$22;

    invoke-direct {v2, p0, v0}, Lcom/android/launcher3/allapps/controller/AppsController$22;-><init>(Lcom/android/launcher3/allapps/controller/AppsController;Lcom/android/launcher3/folder/FolderInfo;)V

    const-wide/16 v4, 0x32

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2359
    .end local v0    # "folderItem":Lcom/android/launcher3/folder/FolderInfo;
    .end local v1    # "mHandler":Landroid/os/Handler;
    :cond_0
    return-void
.end method

.method public prepareTidedUpPages()V
    .locals 4

    .prologue
    .line 2054
    invoke-direct {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->getOrganizeAppsAlertEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2055
    new-instance v0, Lcom/android/launcher3/allapps/OrganizeAppsConfirmDialog;

    invoke-direct {v0}, Lcom/android/launcher3/allapps/OrganizeAppsConfirmDialog;-><init>()V

    .line 2056
    .local v0, "dialog":Lcom/android/launcher3/allapps/OrganizeAppsConfirmDialog;
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/android/launcher3/allapps/OrganizeAppsConfirmDialog;->show(Landroid/app/FragmentManager;Lcom/android/launcher3/allapps/controller/AppsController;)V

    .line 2062
    .end local v0    # "dialog":Lcom/android/launcher3/allapps/OrganizeAppsConfirmDialog;
    :goto_0
    return-void

    .line 2057
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->hasEmptyCellAtPages()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2058
    const/4 v1, 0x4

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/launcher3/allapps/controller/AppsController;->changeState(IZ)Z

    goto :goto_0

    .line 2060
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    const v2, 0x7f09007a

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public prepareViewsForReposition()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2720
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2721
    .local v6, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iget-object v7, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v7}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getPageCount()I

    move-result v3

    .line 2722
    .local v3, "pageCount":I
    const/4 v4, 0x0

    .local v4, "pageIndex":I
    :goto_0
    if-ge v4, v3, :cond_2

    .line 2723
    iget-object v7, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v7, v4}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v0

    .line 2724
    .local v0, "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->getPageChildCount()I

    move-result v1

    .line 2725
    .local v1, "itemCount":I
    const/4 v2, 0x0

    .local v2, "itemIndex":I
    :goto_1
    if-ge v2, v1, :cond_1

    .line 2726
    invoke-virtual {v0, v2}, Lcom/android/launcher3/common/base/view/CellLayout;->getChildOnPageAt(I)Landroid/view/View;

    move-result-object v5

    .line 2727
    .local v5, "view":Landroid/view/View;
    instance-of v7, v5, Lcom/android/launcher3/common/view/IconView;

    if-eqz v7, :cond_0

    .line 2728
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2725
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2722
    .end local v5    # "view":Landroid/view/View;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2732
    .end local v0    # "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    .end local v1    # "itemCount":I
    .end local v2    # "itemIndex":I
    :cond_2
    return-object v6
.end method

.method public recoverCancelItemForFolderLock(Lcom/android/launcher3/common/base/item/IconInfo;JJIII)Z
    .locals 20
    .param p1, "info"    # Lcom/android/launcher3/common/base/item/IconInfo;
    .param p2, "container"    # J
    .param p4, "screenId"    # J
    .param p6, "cellX"    # I
    .param p7, "cellY"    # I
    .param p8, "rank"    # I

    .prologue
    .line 2388
    move-wide/from16 v0, p4

    long-to-int v15, v0

    .line 2389
    .local v15, "page":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v4, v15}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 2390
    .local v5, "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    move-object/from16 v0, p1

    iget-wide v10, v0, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    const-wide/16 v12, -0x66

    cmp-long v4, v10, v12

    if-eqz v4, :cond_2

    .line 2392
    move-object/from16 v0, p1

    iget-wide v10, v0, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsIconByItemId(J)Landroid/view/View;

    move-result-object v16

    .line 2393
    .local v16, "folderIconView":Landroid/view/View;
    if-eqz v16, :cond_1

    .line 2394
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v18

    .line 2395
    .local v18, "folderObject":Ljava/lang/Object;
    move-object/from16 v0, v18

    instance-of v4, v0, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v4, :cond_0

    move-object/from16 v17, v18

    .line 2396
    check-cast v17, Lcom/android/launcher3/folder/FolderInfo;

    .line 2397
    .local v17, "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/FolderInfo;->add(Lcom/android/launcher3/common/base/item/IconInfo;)V

    .line 2416
    .end local v16    # "folderIconView":Landroid/view/View;
    .end local v17    # "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    .end local v18    # "folderObject":Ljava/lang/Object;
    :cond_0
    :goto_0
    const/4 v4, 0x1

    return v4

    .line 2400
    .restart local v16    # "folderIconView":Landroid/view/View;
    :cond_1
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v5, v4}, Lcom/android/launcher3/allapps/controller/AppsController;->createItemView(Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v7

    .line 2401
    .local v7, "v":Landroid/view/View;
    const/4 v4, 0x2

    new-array v6, v4, [I

    .line 2402
    .local v6, "cellXY":[I
    const/4 v4, 0x0

    aput p6, v6, v4

    .line 2403
    const/4 v4, 0x1

    aput p7, v6, v4

    .line 2404
    new-instance v8, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    invoke-direct {v8}, Lcom/android/launcher3/common/drag/DropTarget$DragObject;-><init>()V

    .line 2405
    .local v8, "dragObject":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    move-object/from16 v0, p1

    iput-object v0, v8, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    .line 2406
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/allapps/controller/AppsController;->getDragController()Lcom/android/launcher3/allapps/controller/AppsDragController;

    move-result-object v4

    move/from16 v0, p8

    invoke-virtual {v5, v0}, Lcom/android/launcher3/common/base/view/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual/range {v4 .. v9}, Lcom/android/launcher3/allapps/controller/AppsDragController;->createUserFolderIfNecessary(Lcom/android/launcher3/common/base/view/CellLayout;[ILandroid/view/View;Lcom/android/launcher3/common/drag/DropTarget$DragObject;Landroid/view/View;)Z

    goto :goto_0

    .line 2409
    .end local v6    # "cellXY":[I
    .end local v7    # "v":Landroid/view/View;
    .end local v8    # "dragObject":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    .end local v16    # "folderIconView":Landroid/view/View;
    :cond_2
    move/from16 v0, p8

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    .line 2410
    move-wide/from16 v0, p4

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/launcher3/common/base/item/IconInfo;->screenId:J

    .line 2411
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v5, v4}, Lcom/android/launcher3/allapps/controller/AppsController;->createItemView(Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v7

    .line 2412
    .restart local v7    # "v":Landroid/view/View;
    const/4 v4, 0x1

    move-object/from16 v0, p1

    iput-boolean v4, v0, Lcom/android/launcher3/common/base/item/IconInfo;->mDirty:Z

    .line 2413
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v7, v1}, Lcom/android/launcher3/allapps/controller/AppsController;->addItem(Landroid/view/View;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 2414
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mReorderController:Lcom/android/launcher3/allapps/controller/AppsReorderController;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v4, v15}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getItemCountPageAt(I)I

    move-result v4

    add-int/lit8 v12, v4, -0x1

    move-object/from16 v0, p1

    iget v13, v0, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    const/4 v14, -0x1

    invoke-virtual/range {v9 .. v15}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->realTimeReorder(IFIIII)V

    goto :goto_0
.end method

.method removeApps(Ljava/util/ArrayList;)V
    .locals 22
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
    .line 1398
    .local p1, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    if-nez p1, :cond_0

    .line 1399
    const-string v18, "Launcher.AppsController"

    const-string v19, "removApps - no items"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1455
    :goto_0
    return-void

    .line 1402
    :cond_0
    const-string v18, "Launcher.AppsController"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "removApps : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1403
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher3/allapps/controller/AppsController;->mRemoveInProgress:Z

    .line 1404
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 1405
    .local v9, "folderItemMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 1407
    .local v15, "removeItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_1
    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_4

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 1408
    .local v10, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/launcher3/allapps/controller/AppsController;->isItemInFolder(Lcom/android/launcher3/common/base/item/ItemInfo;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 1409
    iget-wide v0, v10, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_2

    .line 1410
    iget-wide v0, v10, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1412
    :cond_2
    iget-wide v0, v10, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    .line 1413
    .local v12, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    check-cast v10, Lcom/android/launcher3/common/base/item/IconInfo;

    .end local v10    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1415
    .end local v12    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    .restart local v10    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_3
    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1416
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/allapps/controller/AppsController;->isSelectState()Z

    move-result v19

    if-eqz v19, :cond_1

    .line 1417
    iget-wide v0, v10, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsIconByItemId(J)Landroid/view/View;

    move-result-object v16

    .line 1418
    .local v16, "v":Landroid/view/View;
    if-eqz v16, :cond_1

    .line 1419
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->removeCheckedApp(Landroid/view/View;)V

    goto :goto_1

    .line 1425
    .end local v10    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v16    # "v":Landroid/view/View;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher3/Launcher;->isAppsStage()Z

    move-result v18

    if-eqz v18, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mIsResumed:Z

    move/from16 v18, v0

    if-eqz v18, :cond_6

    const/4 v4, 0x1

    .line 1426
    .local v4, "animate":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mReorderController:Lcom/android/launcher3/allapps/controller/AppsReorderController;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v15, v4}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->removeEmptyCellsAndViews(Ljava/util/ArrayList;Z)V

    .line 1428
    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v14

    .line 1429
    .local v14, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_5
    :goto_3
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_8

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Long;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 1430
    .local v6, "containerId":J
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    .line 1431
    .local v13, "itemsInContainer":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsIconByItemId(J)Landroid/view/View;

    move-result-object v17

    .line 1432
    .local v17, "view":Landroid/view/View;
    if-eqz v17, :cond_5

    .line 1433
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/folder/FolderInfo;

    .line 1434
    .local v8, "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_4
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_7

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 1435
    .local v11, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    const-wide/16 v20, -0x66

    move-wide/from16 v0, v20

    iput-wide v0, v11, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    goto :goto_4

    .line 1425
    .end local v4    # "animate":Z
    .end local v6    # "containerId":J
    .end local v8    # "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    .end local v11    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v13    # "itemsInContainer":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    .end local v14    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    .end local v17    # "view":Landroid/view/View;
    :cond_6
    const/4 v4, 0x0

    goto :goto_2

    .line 1437
    .restart local v4    # "animate":Z
    .restart local v6    # "containerId":J
    .restart local v8    # "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    .restart local v13    # "itemsInContainer":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    .restart local v14    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    .restart local v17    # "view":Landroid/view/View;
    :cond_7
    invoke-virtual {v8, v13}, Lcom/android/launcher3/folder/FolderInfo;->remove(Ljava/util/ArrayList;)V

    goto :goto_3

    .line 1440
    .end local v6    # "containerId":J
    .end local v8    # "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    .end local v13    # "itemsInContainer":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    .end local v17    # "view":Landroid/view/View;
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/allapps/controller/AppsController;->getViewType()Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    move-result-object v18

    sget-object v19, Lcom/android/launcher3/allapps/controller/AppsController$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_a

    .line 1441
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/controller/AppsController;->repositionByNormalizer(Z)V

    .line 1449
    :cond_9
    :goto_5
    new-instance v18, Landroid/os/Handler;

    invoke-direct/range {v18 .. v18}, Landroid/os/Handler;-><init>()V

    new-instance v19, Lcom/android/launcher3/allapps/controller/AppsController$14;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/launcher3/allapps/controller/AppsController$14;-><init>(Lcom/android/launcher3/allapps/controller/AppsController;)V

    const-wide/16 v20, 0xc8

    invoke-virtual/range {v18 .. v21}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 1443
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/allapps/controller/AppsController;->removeEmptyPagesAndUpdateAllItemsInfo()Z

    move-result v5

    .line 1444
    .local v5, "dirtyItemUpdated":Z
    if-nez v5, :cond_9

    .line 1445
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/allapps/controller/AppsController;->updateDirtyItems()V

    goto :goto_5
.end method

.method removeAppsItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 1
    .param p1, "info"    # Lcom/android/launcher3/common/base/item/ItemInfo;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1480
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/allapps/controller/AppsController;->removeAppsItem(Lcom/android/launcher3/common/base/item/ItemInfo;Z)V

    .line 1481
    return-void
.end method

.method public removeEmptyPagesAndUpdateAllItemsInfo()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2662
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->removeEmptyScreen()Z

    move-result v1

    .line 2663
    .local v1, "pageRemoved":Z
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->removeExtraEmptyScreen()V

    .line 2665
    const/4 v0, 0x0

    .line 2666
    .local v0, "dirtyItemUpdated":Z
    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->isAlphabeticalMode()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2667
    invoke-virtual {p0, v3, v3}, Lcom/android/launcher3/allapps/controller/AppsController;->normalizeWithExtraItems(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 2668
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->updateDirtyItems()V

    .line 2669
    const/4 v0, 0x1

    .line 2671
    :cond_0
    return v0
.end method

.method public removeUnusedItemViews(II)V
    .locals 8
    .param p1, "page"    # I
    .param p2, "itemNum"    # I

    .prologue
    .line 2323
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsPagedView()Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v2

    .line 2324
    .local v2, "cellLayout":Lcom/android/launcher3/common/base/view/CellLayout;
    if-eqz v2, :cond_1

    .line 2325
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsPagedView()Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellCountX()I

    move-result v0

    .line 2326
    .local v0, "cellCountX":I
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsPagedView()Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellCountY()I

    move-result v1

    .line 2327
    .local v1, "cellCountY":I
    mul-int v4, v0, v1

    .line 2328
    .local v4, "totalNum":I
    move v3, p2

    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_1

    .line 2329
    rem-int v6, v3, v0

    div-int v7, v3, v0

    invoke-virtual {v2, v6, v7}, Lcom/android/launcher3/common/base/view/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v5

    .line 2330
    .local v5, "view":Landroid/view/View;
    if-eqz v5, :cond_0

    .line 2331
    invoke-virtual {v2, v5}, Lcom/android/launcher3/common/base/view/CellLayout;->removeView(Landroid/view/View;)V

    .line 2328
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2335
    .end local v0    # "cellCountX":I
    .end local v1    # "cellCountY":I
    .end local v3    # "i":I
    .end local v4    # "totalNum":I
    .end local v5    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public replaceFolderWithFinalItem(Lcom/android/launcher3/common/base/item/ItemInfo;ILandroid/view/View;)V
    .locals 18
    .param p1, "info"    # Lcom/android/launcher3/common/base/item/ItemInfo;
    .param p2, "itemCount"    # I
    .param p3, "folderIcon"    # Landroid/view/View;

    .prologue
    .line 1710
    move-object/from16 v0, p1

    instance-of v2, v0, Lcom/android/launcher3/folder/FolderInfo;

    if-nez v2, :cond_1

    .line 1771
    .end local p3    # "folderIcon":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .restart local p3    # "folderIcon":Landroid/view/View;
    :cond_1
    move-object/from16 v14, p1

    .line 1714
    check-cast v14, Lcom/android/launcher3/folder/FolderInfo;

    .line 1715
    .local v14, "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    iget-wide v4, v14, Lcom/android/launcher3/folder/FolderInfo;->screenId:J

    long-to-int v4, v4

    invoke-virtual {v2, v4}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v12

    .line 1717
    .local v12, "cellLayout":Lcom/android/launcher3/common/base/view/CellLayout;
    const/4 v13, 0x0

    .line 1718
    .local v13, "child":Landroid/view/View;
    const/4 v3, 0x0

    .line 1720
    .local v3, "finalItem":Lcom/android/launcher3/common/base/item/IconInfo;
    const/4 v2, 0x1

    move/from16 v0, p2

    if-gt v0, v2, :cond_3

    .line 1722
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/launcher3/allapps/controller/AppsController;->deleteItemFromDb(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 1723
    if-eqz v12, :cond_2

    .line 1725
    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Lcom/android/launcher3/common/base/view/CellLayout;->removeView(Landroid/view/View;)V

    .line 1727
    :cond_2
    move-object/from16 v0, p3

    instance-of v2, v0, Lcom/android/launcher3/common/drag/DropTarget;

    if-eqz v2, :cond_3

    .line 1728
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    check-cast p3, Lcom/android/launcher3/common/drag/DropTarget;

    .end local p3    # "folderIcon":Landroid/view/View;
    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/android/launcher3/common/drag/DragManager;->removeDropTarget(Lcom/android/launcher3/common/drag/DropTarget;)V

    .line 1733
    :cond_3
    const/4 v2, 0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_4

    if-eqz v14, :cond_4

    .line 1734
    iget-object v2, v14, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "finalItem":Lcom/android/launcher3/common/base/item/IconInfo;
    check-cast v3, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 1735
    .restart local v3    # "finalItem":Lcom/android/launcher3/common/base/item/IconInfo;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v12, v2}, Lcom/android/launcher3/allapps/controller/AppsController;->createItemView(Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v13

    .line 1736
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/allapps/controller/AppsController;->isAlphabeticalMode()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1737
    iget-wide v4, v14, Lcom/android/launcher3/folder/FolderInfo;->container:J

    const-wide/16 v6, -0x1

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, -0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v10}, Lcom/android/launcher3/allapps/controller/AppsController;->addOrMoveItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJIII)V

    .line 1738
    iget-wide v4, v14, Lcom/android/launcher3/folder/FolderInfo;->screenId:J

    iput-wide v4, v3, Lcom/android/launcher3/common/base/item/IconInfo;->screenId:J

    .line 1739
    iget v2, v14, Lcom/android/launcher3/folder/FolderInfo;->cellX:I

    iput v2, v3, Lcom/android/launcher3/common/base/item/IconInfo;->cellX:I

    .line 1740
    iget v2, v14, Lcom/android/launcher3/folder/FolderInfo;->cellY:I

    iput v2, v3, Lcom/android/launcher3/common/base/item/IconInfo;->cellY:I

    .line 1741
    iget v2, v14, Lcom/android/launcher3/folder/FolderInfo;->rank:I

    iput v2, v3, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    .line 1748
    :cond_4
    :goto_1
    if-nez p2, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/allapps/controller/AppsController;->isAlphabeticalMode()Z

    move-result v2

    if-nez v2, :cond_5

    .line 1749
    iget v7, v14, Lcom/android/launcher3/folder/FolderInfo;->rank:I

    .line 1750
    .local v7, "startPos":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    iget-wide v4, v14, Lcom/android/launcher3/folder/FolderInfo;->screenId:J

    long-to-int v4, v4

    invoke-virtual {v2, v4}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getItemCountPageAt(I)I

    move-result v8

    .line 1751
    .local v8, "endPos":I
    const/4 v9, 0x1

    .line 1752
    .local v9, "direction":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mReorderController:Lcom/android/launcher3/allapps/controller/AppsReorderController;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    long-to-int v10, v0

    invoke-virtual/range {v4 .. v10}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->realTimeReorder(IFIIII)V

    .line 1755
    .end local v7    # "startPos":I
    .end local v8    # "endPos":I
    .end local v9    # "direction":I
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/allapps/controller/AppsController;->isAlphabeticalMode()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1756
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1757
    .local v11, "addItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    if-eqz v3, :cond_6

    .line 1758
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1760
    :cond_6
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v2}, Lcom/android/launcher3/allapps/controller/AppsController;->normalizeWithExtraItems(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1761
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/launcher3/allapps/view/AppsPagedView;->rearrangeAllViews(Z)V

    .line 1762
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->removeEmptyScreen()Z

    .line 1765
    .end local v11    # "addItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    :cond_7
    if-eqz v13, :cond_8

    if-eqz v3, :cond_8

    .line 1766
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v3}, Lcom/android/launcher3/allapps/controller/AppsController;->addItem(Landroid/view/View;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 1768
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/allapps/controller/AppsController;->isAlphabeticalMode()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1769
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/allapps/controller/AppsController;->updateDirtyItems()V

    goto/16 :goto_0

    .line 1743
    :cond_9
    iget-wide v4, v14, Lcom/android/launcher3/folder/FolderInfo;->container:J

    iget-wide v6, v14, Lcom/android/launcher3/folder/FolderInfo;->screenId:J

    iget v8, v14, Lcom/android/launcher3/folder/FolderInfo;->cellX:I

    iget v9, v14, Lcom/android/launcher3/folder/FolderInfo;->cellY:I

    iget v10, v14, Lcom/android/launcher3/folder/FolderInfo;->rank:I

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v10}, Lcom/android/launcher3/allapps/controller/AppsController;->addOrMoveItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJIII)V

    goto :goto_1
.end method

.method public repositionBy(Lcom/android/launcher3/common/stage/StageEntry;)V
    .locals 5
    .param p1, "entry"    # Lcom/android/launcher3/common/stage/StageEntry;

    .prologue
    const/4 v4, 0x0

    .line 2704
    iget v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mState:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 2705
    invoke-direct {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->repositionByTypeUpPages()V

    .line 2717
    :cond_0
    :goto_0
    return-void

    .line 2706
    :cond_1
    iget v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mState:I

    if-nez v2, :cond_3

    .line 2707
    const-string v2, "KEY_REPOSITION_BY"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/android/launcher3/common/stage/StageEntry;->getExtras(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2708
    .local v1, "repostionBy":I
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 2709
    invoke-direct {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->applyOrCancelTideUpPages()V

    goto :goto_0

    .line 2710
    :cond_2
    if-nez v1, :cond_0

    .line 2711
    invoke-direct {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->applySetViewType()V

    goto :goto_0

    .line 2713
    .end local v1    # "repostionBy":I
    :cond_3
    iget v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mState:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    .line 2714
    const-string v2, "KEY_CHANGE_GRID_SIZE"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/android/launcher3/common/stage/StageEntry;->getExtras(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    move-object v0, v2

    check-cast v0, [I

    .line 2715
    .local v0, "gridXY":[I
    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/controller/AppsController;->repositionByGrid([I)V

    goto :goto_0
.end method

.method public repositionByNormalizer(Z)V
    .locals 2
    .param p1, "animate"    # Z

    .prologue
    .line 2378
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAdapterProvider:Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;->getNormalizer()Lcom/android/launcher3/allapps/controller/Normalizer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/launcher3/allapps/controller/AppsController;->repositionByNormalizer(Lcom/android/launcher3/allapps/controller/Normalizer;IZ)V

    .line 2380
    return-void
.end method

.method public requestBlurChange(ZLandroid/view/Window;FJ)V
    .locals 0
    .param p1, "show"    # Z
    .param p2, "dest"    # Landroid/view/Window;
    .param p3, "amount"    # F
    .param p4, "duration"    # J

    .prologue
    .line 2911
    return-void
.end method

.method public requestDeferredRunnables()Z
    .locals 1

    .prologue
    .line 3026
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAdapterProvider:Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;->requestRunDeferredRunnables()V

    .line 3027
    const/4 v0, 0x1

    return v0
.end method

.method public searchBarHasFocus()Z
    .locals 1

    .prologue
    .line 3083
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsSearchBarView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3084
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsSearchBarView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    .line 3086
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setApplyTidyUpPage(Z)V
    .locals 0
    .param p1, "apply"    # Z

    .prologue
    .line 337
    iput-boolean p1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mApplyTideUpPage:Z

    .line 338
    return-void
.end method

.method public setDataWithOutStageChange(Lcom/android/launcher3/common/stage/StageEntry;)V
    .locals 3
    .param p1, "data"    # Lcom/android/launcher3/common/stage/StageEntry;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2864
    if-eqz p1, :cond_0

    .line 2865
    iget v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mState:I

    if-nez v0, :cond_1

    .line 2866
    invoke-virtual {p1}, Lcom/android/launcher3/common/stage/StageEntry;->getInternalStateTo()I

    move-result v0

    invoke-virtual {p0, v0, v2}, Lcom/android/launcher3/allapps/controller/AppsController;->changeState(IZ)Z

    .line 2872
    :cond_0
    :goto_0
    return-void

    .line 2868
    :cond_1
    invoke-virtual {p0, v1, v1}, Lcom/android/launcher3/allapps/controller/AppsController;->changeState(IZ)Z

    .line 2869
    invoke-virtual {p1}, Lcom/android/launcher3/common/stage/StageEntry;->getInternalStateTo()I

    move-result v0

    invoke-virtual {p0, v0, v2}, Lcom/android/launcher3/allapps/controller/AppsController;->changeState(IZ)Z

    goto :goto_0
.end method

.method public setOrganizeAppsAlertEnable(Z)V
    .locals 2
    .param p1, "set"    # Z

    .prologue
    .line 2694
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2695
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "AppsController.OrganizeAppsAlert"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2696
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2697
    return-void
.end method

.method public setPagedViewVisibility(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 723
    if-eqz p1, :cond_2

    const/4 v0, 0x0

    .line 724
    .local v0, "visibility":I
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    if-eqz v1, :cond_0

    .line 725
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->setVisibility(I)V

    .line 728
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPageIndicatorView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 729
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPageIndicatorView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 731
    :cond_1
    return-void

    .line 723
    .end local v0    # "visibility":I
    :cond_2
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setViewType(Lcom/android/launcher3/allapps/controller/AppsController$ViewType;)V
    .locals 8
    .param p1, "viewType"    # Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    .prologue
    const v7, 0x7f0901b4

    const v4, 0x7f090123

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 907
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mViewType:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    if-ne v1, p1, :cond_0

    .line 934
    :goto_0
    return-void

    .line 910
    :cond_0
    const-string v1, "Launcher.AppsController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setViewType. old: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mViewType:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", new: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    iput-object p1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mViewType:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    .line 915
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v1, v5}, Lcom/android/launcher3/allapps/view/AppsPagedView;->setCurrentPage(I)V

    .line 916
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCurrentPage()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v1

    if-nez v1, :cond_1

    .line 917
    const-string v1, "Launcher.AppsController"

    const-string v2, "There are no items that should be moved to position by normalizer"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 920
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 921
    .local v0, "res":Landroid/content/res/Resources;
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v1

    const v2, 0x7f0901ce

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mViewType:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    .line 922
    invoke-virtual {v3}, Lcom/android/launcher3/allapps/controller/AppsController$ViewType;->ordinal()I

    move-result v3

    .line 921
    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;I)V

    .line 923
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mViewType:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    sget-object v2, Lcom/android/launcher3/allapps/controller/AppsController$ViewType;->CUSTOM_GRID:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/allapps/controller/AppsController$ViewType;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-nez v1, :cond_3

    .line 924
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v1

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 925
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    .line 924
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 931
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->saveViewTypeSharefPref()V

    .line 932
    invoke-direct {p0, v5, v6, v6}, Lcom/android/launcher3/allapps/controller/AppsController;->changeState(IZZ)Z

    .line 933
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->getDragController()Lcom/android/launcher3/allapps/controller/AppsDragController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/controller/AppsDragController;->updateDragMode()V

    goto/16 :goto_0

    .line 926
    :cond_3
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mViewType:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    sget-object v2, Lcom/android/launcher3/allapps/controller/AppsController$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/allapps/controller/AppsController$ViewType;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-nez v1, :cond_2

    .line 927
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v1

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 928
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "2"

    .line 927
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setup()V
    .locals 2

    .prologue
    .line 342
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragMgr()Lcom/android/launcher3/common/drag/DragManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    .line 343
    new-instance v0, Lcom/android/launcher3/allapps/controller/AppsFocusListener;

    invoke-direct {v0}, Lcom/android/launcher3/allapps/controller/AppsFocusListener;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsFocusListener:Lcom/android/launcher3/allapps/controller/AppsFocusListener;

    .line 344
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getTrayManager()Lcom/android/launcher3/common/tray/TrayManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    .line 345
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/common/tray/TrayManager;->addTrayEventCallbacks(Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;)V

    .line 348
    :cond_0
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFolderLock()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 349
    invoke-static {}, Lcom/android/launcher3/folder/folderlock/FolderLock;->getInstance()Lcom/android/launcher3/folder/folderlock/FolderLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    .line 350
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/folder/folderlock/FolderLock;->addFolderLockActionCallback(Lcom/android/launcher3/folder/folderlock/FolderLock$FolderLockActionCallback;)V

    .line 353
    :cond_1
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/LauncherModel;->registerOnBadgeBindingCompletedLisnter(Lcom/android/launcher3/LauncherModel$OnBadgeBindingCompletedLisnter;)V

    .line 354
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/LauncherModel;->registerOnLiveIconUpdateListener(Lcom/android/launcher3/LauncherModel$OnRefreshLiveIconListener;)V

    .line 355
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;

    invoke-direct {v1, p0}, Lcom/android/launcher3/allapps/controller/AppsProxyCallbacksImpl;-><init>(Lcom/android/launcher3/allapps/controller/AppsController;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/proxy/LauncherProxy;->setAppsProxyCallbacks(Lcom/android/launcher3/proxy/AppsProxyCallbacks;)V

    .line 357
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mScrollDeterminator:Lcom/android/launcher3/util/event/ScrollDeterminator;

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/event/ScrollDeterminator;->setSystemTouchSlop(Landroid/content/Context;)I

    .line 358
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mScrollDeterminator:Lcom/android/launcher3/util/event/ScrollDeterminator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/event/ScrollDeterminator;->registrateController(I)V

    .line 359
    return-void
.end method

.method public startContactUs()V
    .locals 1

    .prologue
    .line 2088
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->startContactUsActivity(Landroid/content/Context;)V

    .line 2089
    return-void
.end method

.method public startDrag(Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;Z)V
    .locals 4
    .param p1, "cellInfo"    # Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;
    .param p2, "allowQuickOption"    # Z

    .prologue
    const/4 v2, 0x1

    .line 567
    iget-object v0, p1, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 570
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isInTouchMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 581
    :goto_0
    return-void

    .line 574
    :cond_0
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 576
    invoke-virtual {p0, v2, v2}, Lcom/android/launcher3/allapps/controller/AppsController;->changeState(IZ)Z

    .line 578
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mDragController:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/allapps/controller/AppsDragController;->startDrag(Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;)V

    .line 580
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mDragController:Lcom/android/launcher3/allapps/controller/AppsDragController;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, p2, v3}, Lcom/android/launcher3/Launcher;->beginDragShared(Landroid/view/View;Lcom/android/launcher3/common/drag/DragSource;ZZ)V

    goto :goto_0
.end method

.method public startGalaxyEssentials()V
    .locals 4

    .prologue
    .line 2097
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2098
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2099
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2100
    const-string v2, "com.sec.android.app.samsungapps"

    const-string v3, "com.sec.android.app.samsungapps.interim.essentials.InterimEssentialsActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2103
    :try_start_0
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/Launcher;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2107
    :goto_0
    return-void

    .line 2104
    :catch_0
    move-exception v0

    .line 2105
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "Launcher.AppsController"

    const-string v3, "Unable to start GalaxyEssentials"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startHomeSetting()V
    .locals 2

    .prologue
    .line 2092
    const-string v0, "Launcher.AppsController"

    const-string v1, "onClickHomeSettings"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2093
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->startHomeSettingActivity()V

    .line 2094
    return-void
.end method

.method public startTrayMove()V
    .locals 1

    .prologue
    .line 1854
    sget-object v0, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    invoke-virtual {v0}, Lcom/android/launcher3/util/Talk;->isAccessibilityEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1855
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsContainer:Lcom/android/launcher3/allapps/view/AppsContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/view/AppsContainer;->semClearAccessibilityFocus()V

    .line 1857
    :cond_0
    return-void
.end method

.method protected supportNavigationBarForState(I)Z
    .locals 2
    .param p1, "internalState"    # I

    .prologue
    .line 1285
    const/4 v0, 0x1

    .line 1286
    .local v0, "support":Z
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 1287
    const/4 v0, 0x0

    .line 1289
    :cond_0
    return v0
.end method

.method protected supportStatusBarForState(I)Z
    .locals 2
    .param p1, "internalState"    # I

    .prologue
    .line 1276
    const/4 v0, 0x1

    .line 1277
    .local v0, "support":Z
    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 1278
    :cond_0
    const/4 v0, 0x0

    .line 1280
    :cond_1
    return v0
.end method

.method public switchInternalState(Lcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/Animator;
    .locals 12
    .param p1, "data"    # Lcom/android/launcher3/common/stage/StageEntry;

    .prologue
    const/16 v11, 0x8

    const/4 v9, 0x5

    const/4 v10, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1153
    invoke-virtual {p1}, Lcom/android/launcher3/common/stage/StageEntry;->getInternalStateFrom()I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mPrevState:I

    .line 1154
    .local v2, "fromState":I
    invoke-virtual {p1}, Lcom/android/launcher3/common/stage/StageEntry;->getInternalStateTo()I

    move-result v5

    iput v5, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mState:I

    .line 1155
    .local v5, "toState":I
    invoke-virtual {p1}, Lcom/android/launcher3/common/stage/StageEntry;->getLayerViews()Ljava/util/HashMap;

    move-result-object v3

    .line 1156
    .local v3, "layerViews":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/View;Ljava/lang/Integer;>;"
    iget-boolean v0, p1, Lcom/android/launcher3/common/stage/StageEntry;->enableAnimation:Z

    .line 1157
    .local v0, "animated":Z
    const/4 v4, 0x0

    .line 1158
    .local v4, "stateChangeAnim":Landroid/animation/Animator;
    if-nez v2, :cond_8

    .line 1159
    if-ne v5, v7, :cond_2

    .line 1160
    invoke-direct {p0, v7}, Lcom/android/launcher3/allapps/controller/AppsController;->showMoveToHomePanel(Z)V

    .line 1161
    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v6}, Lcom/android/launcher3/allapps/view/AppsPagedView;->addExtraEmptyScreenOnDrag()V

    .line 1162
    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsAnimation:Lcom/android/launcher3/allapps/AppsTransitionAnimation;

    invoke-virtual {v6, v0, v3, v7, v8}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->getDragAnimation(ZLjava/util/HashMap;ZZ)Landroid/animation/AnimatorSet;

    move-result-object v4

    .line 1163
    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v6, v8}, Lcom/android/launcher3/allapps/view/AppsPagedView;->setCrosshairsVisibilityChilds(I)V

    .line 1261
    :cond_0
    :goto_0
    if-nez v5, :cond_1

    .line 1262
    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLoggingRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v6}, Lcom/android/launcher3/common/stage/StageEntry;->addOnCompleteRunnableCallBack(Ljava/lang/Runnable;)V

    .line 1264
    :cond_1
    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v6, v7}, Lcom/android/launcher3/allapps/view/AppsPagedView;->updateAccessibilityFlags(Z)V

    .line 1266
    return-object v4

    .line 1164
    :cond_2
    const/4 v6, 0x3

    if-ne v5, v6, :cond_3

    .line 1165
    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsSearch:Lcom/android/launcher3/allapps/view/AppsSearch;

    iget-object v8, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsAnimation:Lcom/android/launcher3/allapps/AppsTransitionAnimation;

    invoke-virtual {v6, v8, p1}, Lcom/android/launcher3/allapps/view/AppsSearch;->switchInternalState(Lcom/android/launcher3/allapps/AppsTransitionAnimation;Lcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/Animator;

    move-result-object v4

    goto :goto_0

    .line 1166
    :cond_3
    if-ne v5, v10, :cond_4

    .line 1167
    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mExitDragStateHandler:Landroid/os/Handler;

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1168
    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v6, v7}, Lcom/android/launcher3/allapps/view/AppsPagedView;->updateCheckBox(Z)V

    .line 1169
    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsAnimation:Lcom/android/launcher3/allapps/AppsTransitionAnimation;

    invoke-virtual {v6, v0, v3, v7}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->getSelectAnimation(ZLjava/util/HashMap;Z)Landroid/animation/AnimatorSet;

    move-result-object v4

    .line 1170
    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v6, v8}, Lcom/android/launcher3/allapps/view/AppsPagedView;->setCrosshairsVisibilityChilds(I)V

    .line 1171
    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v6, v8}, Lcom/android/launcher3/allapps/view/AppsPagedView;->showHintPages(Z)V

    goto :goto_0

    .line 1172
    :cond_4
    const/4 v6, 0x4

    if-ne v5, v6, :cond_5

    .line 1173
    const-string v6, "KEY_REPOSITION_BY"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p1, v6, v8}, Lcom/android/launcher3/common/stage/StageEntry;->putExtras(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1174
    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsAnimation:Lcom/android/launcher3/allapps/AppsTransitionAnimation;

    invoke-virtual {v6, v0, v3, v7, p1}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->getTidyUpAnimation(ZLjava/util/HashMap;ZLcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/AnimatorSet;

    move-result-object v4

    .line 1176
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/LauncherAppState;->getTopViewChangedMessageHandler()Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;

    move-result-object v6

    const/16 v8, 0xa

    .line 1177
    invoke-virtual {v6, v8}, Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;->sendMessage(I)V

    goto :goto_0

    .line 1178
    :cond_5
    if-nez v5, :cond_6

    .line 1179
    const-string v6, "KEY_REPOSITION_BY"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p1, v6, v8}, Lcom/android/launcher3/common/stage/StageEntry;->putExtras(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1180
    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsAnimation:Lcom/android/launcher3/allapps/AppsTransitionAnimation;

    invoke-virtual {v6, v0, v3, p1}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->getChangeViewTypeAnimation(ZLjava/util/HashMap;Lcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/AnimatorSet;

    move-result-object v4

    goto :goto_0

    .line 1181
    :cond_6
    if-ne v5, v9, :cond_0

    .line 1182
    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsScreenGridPanel:Lcom/android/launcher3/allapps/AppsScreenGridPanel;

    if-eqz v6, :cond_7

    .line 1183
    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsScreenGridPanel:Lcom/android/launcher3/allapps/AppsScreenGridPanel;

    invoke-virtual {v6}, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->updateButtonStatus()V

    .line 1184
    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsScreenGridPanel:Lcom/android/launcher3/allapps/AppsScreenGridPanel;

    invoke-virtual {v6}, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->updateApplyCancelButton()V

    .line 1185
    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsScreenGridPanel:Lcom/android/launcher3/allapps/AppsScreenGridPanel;

    invoke-virtual {v6}, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->getScreenGridTopConatiner()Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 1186
    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsScreenGridPanel:Lcom/android/launcher3/allapps/AppsScreenGridPanel;

    invoke-virtual {v6}, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->getScreenGridTopConatiner()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1190
    :cond_7
    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsAnimation:Lcom/android/launcher3/allapps/AppsTransitionAnimation;

    invoke-virtual {v6, v8, v3, p1, v7}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->getScreenGridEnterExitAnimation(ZLjava/util/HashMap;Lcom/android/launcher3/common/stage/StageEntry;Z)Landroid/animation/AnimatorSet;

    move-result-object v4

    .line 1192
    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v6, v8, v8}, Lcom/android/launcher3/allapps/view/AppsPagedView;->setCrosshairsVisibilityChilds(IZ)V

    .line 1193
    invoke-direct {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->closeViewTypeDialog()V

    .line 1194
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/LauncherAppState;->getTopViewChangedMessageHandler()Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;

    move-result-object v6

    const/16 v8, 0x18

    .line 1195
    invoke-virtual {v6, v8}, Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;->sendMessage(I)V

    goto/16 :goto_0

    .line 1197
    :cond_8
    if-ne v2, v7, :cond_c

    .line 1198
    invoke-direct {p0, v8}, Lcom/android/launcher3/allapps/controller/AppsController;->showMoveToHomePanel(Z)V

    .line 1199
    if-nez v5, :cond_b

    .line 1200
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->isSelectState()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1201
    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v6, v8, v0}, Lcom/android/launcher3/Launcher;->onChangeSelectMode(ZZ)V

    .line 1202
    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v6, v8}, Lcom/android/launcher3/allapps/view/AppsPagedView;->updateCheckBox(Z)V

    .line 1204
    :cond_9
    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mReorderController:Lcom/android/launcher3/allapps/controller/AppsReorderController;

    invoke-virtual {v6}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->getExistOverLastItemMoved()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 1205
    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mReorderController:Lcom/android/launcher3/allapps/controller/AppsReorderController;

    invoke-virtual {v6}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->undoOverLastItems()V

    .line 1207
    :cond_a
    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsAnimation:Lcom/android/launcher3/allapps/AppsTransitionAnimation;

    invoke-virtual {v6, v0, v3, v8, v8}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->getDragAnimation(ZLjava/util/HashMap;ZZ)Landroid/animation/AnimatorSet;

    move-result-object v4

    .line 1208
    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v6, v11}, Lcom/android/launcher3/allapps/view/AppsPagedView;->setCrosshairsVisibilityChilds(I)V

    goto/16 :goto_0

    .line 1209
    :cond_b
    if-ne v5, v10, :cond_0

    .line 1210
    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mExitDragStateHandler:Landroid/os/Handler;

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1211
    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v6, v7}, Lcom/android/launcher3/allapps/view/AppsPagedView;->updateCheckBox(Z)V

    .line 1212
    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsAnimation:Lcom/android/launcher3/allapps/AppsTransitionAnimation;

    invoke-virtual {v6, v0, v3, v7}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->getSelectAnimation(ZLjava/util/HashMap;Z)Landroid/animation/AnimatorSet;

    move-result-object v4

    .line 1213
    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v6, v8}, Lcom/android/launcher3/allapps/view/AppsPagedView;->setCrosshairsVisibilityChilds(I)V

    goto/16 :goto_0

    .line 1215
    :cond_c
    const/4 v6, 0x3

    if-ne v2, v6, :cond_d

    .line 1216
    if-nez v5, :cond_0

    .line 1217
    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsSearch:Lcom/android/launcher3/allapps/view/AppsSearch;

    iget-object v8, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsAnimation:Lcom/android/launcher3/allapps/AppsTransitionAnimation;

    invoke-virtual {v6, v8, p1}, Lcom/android/launcher3/allapps/view/AppsSearch;->switchInternalState(Lcom/android/launcher3/allapps/AppsTransitionAnimation;Lcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/Animator;

    goto/16 :goto_0

    .line 1219
    :cond_d
    if-ne v2, v10, :cond_f

    .line 1220
    if-nez v5, :cond_e

    .line 1221
    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsAnimation:Lcom/android/launcher3/allapps/AppsTransitionAnimation;

    invoke-virtual {v6, v0, v3, v8}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->getSelectAnimation(ZLjava/util/HashMap;Z)Landroid/animation/AnimatorSet;

    move-result-object v4

    .line 1222
    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v6, v11}, Lcom/android/launcher3/allapps/view/AppsPagedView;->setCrosshairsVisibilityChilds(I)V

    .line 1223
    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v6, v8, v0}, Lcom/android/launcher3/Launcher;->onChangeSelectMode(ZZ)V

    .line 1224
    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v6, v8}, Lcom/android/launcher3/allapps/view/AppsPagedView;->updateCheckBox(Z)V

    .line 1225
    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v6}, Lcom/android/launcher3/allapps/view/AppsPagedView;->hideHintPages()V

    goto/16 :goto_0

    .line 1226
    :cond_e
    if-ne v5, v7, :cond_0

    .line 1227
    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v6, v8}, Lcom/android/launcher3/allapps/view/AppsPagedView;->updateCheckBox(Z)V

    .line 1228
    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v6}, Lcom/android/launcher3/allapps/view/AppsPagedView;->addExtraEmptyScreenOnDrag()V

    .line 1229
    invoke-direct {p0, v7}, Lcom/android/launcher3/allapps/controller/AppsController;->showMoveToHomePanel(Z)V

    .line 1230
    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsAnimation:Lcom/android/launcher3/allapps/AppsTransitionAnimation;

    invoke-virtual {v6, v0, v3, v7, v7}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->getDragAnimation(ZLjava/util/HashMap;ZZ)Landroid/animation/AnimatorSet;

    move-result-object v4

    .line 1231
    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v6, v8}, Lcom/android/launcher3/allapps/view/AppsPagedView;->setCrosshairsVisibilityChilds(I)V

    goto/16 :goto_0

    .line 1233
    :cond_f
    const/4 v6, 0x4

    if-ne v2, v6, :cond_11

    .line 1234
    if-nez v5, :cond_0

    .line 1235
    const-string v6, "KEY_REPOSITION_BY"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p1, v6, v9}, Lcom/android/launcher3/common/stage/StageEntry;->putExtras(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1236
    iget-object v9, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsAnimation:Lcom/android/launcher3/allapps/AppsTransitionAnimation;

    iget-boolean v6, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mApplyTideUpPage:Z

    if-nez v6, :cond_10

    iget-boolean v6, p1, Lcom/android/launcher3/common/stage/StageEntry;->enableAnimation:Z

    if-eqz v6, :cond_10

    move v6, v7

    :goto_1
    invoke-virtual {v9, v6, v3, v8, p1}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->getTidyUpAnimation(ZLjava/util/HashMap;ZLcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/AnimatorSet;

    move-result-object v4

    .line 1239
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/LauncherAppState;->getTopViewChangedMessageHandler()Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;

    move-result-object v6

    .line 1240
    invoke-virtual {v6, v10}, Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;->sendMessage(I)V

    goto/16 :goto_0

    :cond_10
    move v6, v8

    .line 1236
    goto :goto_1

    .line 1242
    :cond_11
    if-ne v2, v9, :cond_0

    .line 1243
    if-nez v5, :cond_12

    .line 1244
    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsAnimation:Lcom/android/launcher3/allapps/AppsTransitionAnimation;

    invoke-virtual {v6, v0, v3, p1, v8}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->getScreenGridEnterExitAnimation(ZLjava/util/HashMap;Lcom/android/launcher3/common/stage/StageEntry;Z)Landroid/animation/AnimatorSet;

    move-result-object v4

    .line 1246
    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v6, v11, v8}, Lcom/android/launcher3/allapps/view/AppsPagedView;->setCrosshairsVisibilityChilds(IZ)V

    goto/16 :goto_0

    .line 1247
    :cond_12
    if-ne v5, v9, :cond_0

    .line 1249
    new-instance v1, Lcom/android/launcher3/allapps/controller/AppsController$10;

    invoke-direct {v1, p0}, Lcom/android/launcher3/allapps/controller/AppsController$10;-><init>(Lcom/android/launcher3/allapps/controller/AppsController;)V

    .line 1255
    .local v1, "completeRunnable":Ljava/lang/Runnable;
    invoke-virtual {p1, v1}, Lcom/android/launcher3/common/stage/StageEntry;->addOnCompleteRunnableCallBack(Ljava/lang/Runnable;)V

    .line 1256
    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsAnimation:Lcom/android/launcher3/allapps/AppsTransitionAnimation;

    invoke-virtual {v6, v0, v3, p1}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->getChangeGridAnimation(ZLjava/util/HashMap;Lcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/AnimatorSet;

    move-result-object v4

    goto/16 :goto_0
.end method

.method updateApps(Ljava/util/ArrayList;)V
    .locals 11
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
    .local p1, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    const/4 v10, 0x1

    .line 1345
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1346
    .local v2, "updates":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1347
    .local v4, "folderInfosToSort":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/folder/FolderInfo;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1348
    .local v5, "folderIconsToRefresh":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/folder/view/FolderIconView;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsController;->isAlphabeticalMode()Z

    move-result v3

    .line 1350
    .local v3, "isAlphabeticalMode":Z
    iget-object v9, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    new-instance v0, Lcom/android/launcher3/allapps/controller/AppsController$13;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/allapps/controller/AppsController$13;-><init>(Lcom/android/launcher3/allapps/controller/AppsController;Ljava/util/HashSet;ZLjava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {v9, v10, v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->mapOverItems(ZLcom/android/launcher3/common/base/item/ItemOperator;)V

    .line 1380
    if-eqz v3, :cond_1

    .line 1381
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_3

    .line 1382
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/folder/FolderInfo;

    .line 1383
    .local v7, "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    if-eqz v7, :cond_0

    .line 1384
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v7, v10, v10, v0}, Lcom/android/launcher3/folder/FolderInfo;->setAlphabeticalOrder(ZZLandroid/content/Context;)V

    .line 1381
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1388
    .end local v7    # "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    .end local v8    # "i":I
    :cond_1
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_3

    .line 1389
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/folder/view/FolderIconView;

    .line 1390
    .local v6, "folderIconView":Lcom/android/launcher3/folder/view/FolderIconView;
    if-eqz v6, :cond_2

    .line 1391
    invoke-virtual {v6}, Lcom/android/launcher3/folder/view/FolderIconView;->refreshFolderIcon()V

    .line 1388
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1395
    .end local v6    # "folderIconView":Lcom/android/launcher3/folder/view/FolderIconView;
    :cond_3
    return-void
.end method

.method public updateBadgeItems(Ljava/util/ArrayList;)V
    .locals 4
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
    .line 1309
    .local p1, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1310
    .local v0, "updates":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    const/4 v2, 0x1

    new-instance v3, Lcom/android/launcher3/allapps/controller/AppsController$11;

    invoke-direct {v3, p0, v0}, Lcom/android/launcher3/allapps/controller/AppsController$11;-><init>(Lcom/android/launcher3/allapps/controller/AppsController;Ljava/util/HashSet;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/allapps/view/AppsPagedView;->mapOverItems(ZLcom/android/launcher3/common/base/item/ItemOperator;)V

    .line 1329
    return-void
.end method

.method public updateCountBadge(Landroid/view/View;Z)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "animate"    # Z

    .prologue
    .line 2795
    instance-of v1, p1, Lcom/android/launcher3/common/view/IconView;

    if-eqz v1, :cond_0

    move-object v1, p1

    .line 2796
    check-cast v1, Lcom/android/launcher3/common/view/IconView;

    invoke-virtual {v1}, Lcom/android/launcher3/common/view/IconView;->getCountBadgeView()Landroid/widget/TextView;

    move-result-object v0

    .line 2797
    .local v0, "countBadge":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 2798
    check-cast p1, Lcom/android/launcher3/common/view/IconView;

    .end local p1    # "view":Landroid/view/View;
    const/4 v1, 0x0

    invoke-virtual {p1, v1, p2}, Lcom/android/launcher3/common/view/IconView;->updateCountBadge(ZZ)V

    .line 2801
    .end local v0    # "countBadge":Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method public updateDirtyItems()V
    .locals 1

    .prologue
    .line 1950
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAdapterProvider:Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;->updateDirtyItems()V

    .line 1951
    return-void
.end method

.method updateGridInfo()V
    .locals 3

    .prologue
    .line 2985
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsScreenGridPanel:Lcom/android/launcher3/allapps/AppsScreenGridPanel;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsScreenGridPanel:Lcom/android/launcher3/allapps/AppsScreenGridPanel;

    .line 2987
    .local v0, "gridPanel":Lcom/android/launcher3/allapps/AppsScreenGridPanel;
    :goto_0
    if-eqz v0, :cond_0

    .line 2988
    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->updateGridBtnLayout()V

    .line 2990
    :cond_0
    return-void

    .line 2985
    .end local v0    # "gridPanel":Lcom/android/launcher3/allapps/AppsScreenGridPanel;
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    const v2, 0x7f11002e

    .line 2986
    invoke-virtual {v1, v2}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/allapps/AppsScreenGridPanel;

    move-object v0, v1

    goto :goto_0
.end method

.method public updateItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 2
    .param p1, "info"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 1521
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1522
    .local v0, "values":Landroid/content/ContentValues;
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1, v1, v0}, Lcom/android/launcher3/common/base/item/ItemInfo;->onAddToDatabase(Landroid/content/Context;Landroid/content/ContentValues;)V

    .line 1523
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAdapterProvider:Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;

    invoke-virtual {v1, v0, p1}, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;->updateItem(Landroid/content/ContentValues;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 1524
    return-void
.end method

.method updateRestoreItems(Ljava/util/HashSet;)V
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
    .line 1332
    .local p1, "updates":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    const/4 v1, 0x1

    new-instance v2, Lcom/android/launcher3/allapps/controller/AppsController$12;

    invoke-direct {v2, p0, p1}, Lcom/android/launcher3/allapps/controller/AppsController$12;-><init>(Lcom/android/launcher3/allapps/controller/AppsController;Ljava/util/HashSet;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->mapOverItems(ZLcom/android/launcher3/common/base/item/ItemOperator;)V

    .line 1342
    return-void
.end method
