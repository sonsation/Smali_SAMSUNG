.class public Lcom/android/launcher3/home/HomeController;
.super Lcom/android/launcher3/common/stage/Stage;
.source "HomeController.java"

# interfaces
.implements Lcom/android/launcher3/common/base/controller/ControllerBase;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;
.implements Lcom/android/launcher3/LauncherModel$OnBadgeBindingCompletedLisnter;
.implements Lcom/android/launcher3/common/multiselect/MultiSelectManager$MultiSelectListener;
.implements Lcom/android/launcher3/folder/folderlock/FolderLock$FolderLockActionCallback;
.implements Lcom/android/launcher3/LauncherModel$OnRefreshLiveIconListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/home/HomeController$DialerChangeObserver;,
        Lcom/android/launcher3/home/HomeController$State;,
        Lcom/android/launcher3/home/HomeController$PendingAddArguments;
    }
.end annotation


# static fields
.field private static final BOUNCE_ANIMATION_DURATION:I = 0xc8

.field private static final BOUNCE_ANIMATION_TENSION:F = 1.3f

.field private static final ENTER_RESIZE_STATE_DELAY:I = 0xc8

.field private static final EXIT_DRAG_STATE_DELAY:I = 0x64

.field private static final EXIT_SCREEN_GRID_STATE_DELAY:I = 0xc8

.field private static final FIND_OPEN_FOLDER_DELAY:I = 0x12c

.field private static final KEY_PREF_CURRENT_SET_DIALER:Ljava/lang/String; = "current_set_dialer_pref"

.field private static final MAP_NO_RECURSE:Z = false

.field private static final MAP_RECURSE:Z = true

.field private static final NEW_APPS_ANIMATION_INACTIVE_TIMEOUT_SECONDS:I = 0x5

.field private static final ON_ACTIVITY_RESULT_ANIMATION_DELAY:I = 0x1f4

.field private static final OPEN_FOLDER_DELAY:I = 0x1f4

.field private static final REQUEST_BIND_APPWIDGET:I = 0xb

.field static final REQUEST_CREATE_APPWIDGET:I = 0x5

.field static final REQUEST_CREATE_SHORTCUT:I = 0x1

.field private static final REQUEST_PICK_APPWIDGET:I = 0x9

.field static final REQUEST_PICK_WALLPAPER:I = 0xa

.field static final REQUEST_RECONFIGURE_APPWIDGET:I = 0xc

.field private static final RUNTIME_HOME_STATE_CURRENT_SCREEN:Ljava/lang/String; = "launcher.current_screen"

.field private static final RUNTIME_HOME_STATE_PENDING_CELL_X:Ljava/lang/String; = "launcher.add_cell_x"

.field private static final RUNTIME_HOME_STATE_PENDING_CELL_Y:Ljava/lang/String; = "launcher.add_cell_y"

.field private static final RUNTIME_HOME_STATE_PENDING_COMPONENT:Ljava/lang/String; = "launcher.add_component"

.field private static final RUNTIME_HOME_STATE_PENDING_CONTAINER:Ljava/lang/String; = "launcher.add_container"

.field private static final RUNTIME_HOME_STATE_PENDING_SCREEN:Ljava/lang/String; = "launcher.add_screen"

.field private static final RUNTIME_HOME_STATE_PENDING_SPAN_X:Ljava/lang/String; = "launcher.add_span_x"

.field private static final RUNTIME_HOME_STATE_PENDING_SPAN_Y:Ljava/lang/String; = "launcher.add_span_y"

.field private static final RUNTIME_HOME_STATE_PENDING_WIDGET_ID:Ljava/lang/String; = "launcher.add_widget_id"

.field private static final RUNTIME_HOME_STATE_PENDING_WIDGET_INFO:Ljava/lang/String; = "launcher.add_widget_info"

.field private static final TAG:Ljava/lang/String; = "Launcher.HomeController"

.field private static sPendingAddItem:Lcom/android/launcher3/home/HomeController$PendingAddArguments;

.field static sSingleInstanceAppWidgetList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field static sSingleInstanceAppWidgetPackageList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mAppWidgetHost:Lcom/android/launcher3/home/LauncherAppWidgetHost;

.field mAppWidgetManager:Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;

.field private mBlurRunnableHandler:Landroid/os/Handler;

.field private mBounceAnimation:Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation;

.field private mCaptureListener:Lcom/android/launcher3/util/capture/CapturePreview$CaptureListener;

.field private mDialerChangeObserver:Lcom/android/launcher3/home/HomeController$DialerChangeObserver;

.field private mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

.field private mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

.field private mDropTargetBar:Lcom/android/launcher3/home/DropTargetBar;

.field private mEdgeLight:Lcom/android/launcher3/home/EdgeLight;

.field private mEnabledCustomLayoutAnimation:Z

.field private mExitDragStateHandler:Landroid/os/Handler;

.field private mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

.field private mFestivalPageController:Lcom/android/launcher3/home/FestivalPageController;

.field private mFindAppPositionHandler:Landroid/os/Handler;

.field private mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

.field private mHomeAnimation:Lcom/android/launcher3/home/HomeTransitionAnimation;

.field private mHomeBindController:Lcom/android/launcher3/home/HomeBindController;

.field private mHomeCapturePreview:Lcom/android/launcher3/util/capture/CapturePreview;

.field private mHomeContainer:Lcom/android/launcher3/home/HomeContainer;

.field private mHomeDefaultIconClick:Z

.field private mHomeKeyPressed:Z

.field private mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

.field private mHomePageReorder:Z

.field private mHotseat:Lcom/android/launcher3/home/Hotseat;

.field private mHotseatMoveRange:I

.field private mIsStartedTrayEventSetY:Z

.field private mMoveToAppsPanelHeight:I

.field private mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

.field private mOverviewBlurAmount:F

.field private mOverviewDrakenAlpha:F

.field private mOverviewPanel:Lcom/android/launcher3/home/OverviewPanel;

.field private mPageIndicatorView:Landroid/view/View;

.field private mPageSnapMovingRatioOnHome:F

.field private mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

.field private mPendingAddWidgetId:I

.field private mPendingAddWidgetInfo:Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

.field private mRestoring:Z

.field private mScreenGridHelper:Lcom/android/launcher3/home/ScreenGridHelper;

.field private mScreenGridPanel:Lcom/android/launcher3/home/ScreenGridPanel;

.field private mScrollDeterminator:Lcom/android/launcher3/util/event/ScrollDeterminator;

.field private mStartSFinderRatio:F

.field private mState:Lcom/android/launcher3/home/HomeController$State;

.field private mSwipeAffordance:Lcom/android/launcher3/home/SwipeAffordance;

.field private mTmpAddItemCellCoordinates:[I

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

.field private mWaitingForResult:Z

.field private mWorkspace:Lcom/android/launcher3/home/Workspace;

.field private mZeroPageController:Lcom/android/launcher3/home/ZeroPageController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 239
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/launcher3/home/HomeController;->sSingleInstanceAppWidgetList:Ljava/util/HashMap;

    .line 241
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/launcher3/home/HomeController;->sSingleInstanceAppWidgetPackageList:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 141
    invoke-direct {p0}, Lcom/android/launcher3/common/stage/Stage;-><init>()V

    .line 180
    new-instance v0, Lcom/android/launcher3/home/HomeController$State;

    invoke-direct {v0, v2}, Lcom/android/launcher3/home/HomeController$State;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher3/home/HomeController;->mState:Lcom/android/launcher3/home/HomeController$State;

    .line 212
    new-instance v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-direct {v0}, Lcom/android/launcher3/common/base/item/ItemInfo;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 214
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddWidgetId:I

    .line 215
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher3/home/HomeController;->mTmpAddItemCellCoordinates:[I

    .line 218
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/home/HomeController;->mExitDragStateHandler:Landroid/os/Handler;

    .line 219
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/home/HomeController;->mFindAppPositionHandler:Landroid/os/Handler;

    .line 220
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/home/HomeController;->mBlurRunnableHandler:Landroid/os/Handler;

    .line 235
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/home/HomeController;->mDialerChangeObserver:Lcom/android/launcher3/home/HomeController$DialerChangeObserver;

    .line 247
    iput-boolean v2, p0, Lcom/android/launcher3/home/HomeController;->mEnabledCustomLayoutAnimation:Z

    .line 249
    iput-boolean v1, p0, Lcom/android/launcher3/home/HomeController;->mIsStartedTrayEventSetY:Z

    .line 252
    iput-boolean v1, p0, Lcom/android/launcher3/home/HomeController;->mHomePageReorder:Z

    .line 253
    iput-boolean v1, p0, Lcom/android/launcher3/home/HomeController;->mHomeDefaultIconClick:Z

    .line 254
    iput-boolean v1, p0, Lcom/android/launcher3/home/HomeController;->mHomeKeyPressed:Z

    .line 258
    new-instance v0, Lcom/android/launcher3/util/event/ScrollDeterminator;

    invoke-direct {v0}, Lcom/android/launcher3/util/event/ScrollDeterminator;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/home/HomeController;->mScrollDeterminator:Lcom/android/launcher3/util/event/ScrollDeterminator;

    .line 260
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/home/HomeController;->mUpdateBadgeItems:Ljava/util/ArrayList;

    .line 262
    new-instance v0, Lcom/android/launcher3/home/HomeController$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/home/HomeController$1;-><init>(Lcom/android/launcher3/home/HomeController;)V

    iput-object v0, p0, Lcom/android/launcher3/home/HomeController;->mUpdateBadgeListRunnable:Ljava/lang/Runnable;

    .line 4807
    new-instance v0, Lcom/android/launcher3/home/HomeController$40;

    invoke-direct {v0, p0}, Lcom/android/launcher3/home/HomeController$40;-><init>(Lcom/android/launcher3/home/HomeController;)V

    iput-object v0, p0, Lcom/android/launcher3/home/HomeController;->mCaptureListener:Lcom/android/launcher3/util/capture/CapturePreview$CaptureListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/home/HomeController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeController;

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/android/launcher3/home/HomeController;->updateBadgeItems()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/launcher3/home/HomeController;)Lcom/android/launcher3/home/HomeController$State;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeController;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mState:Lcom/android/launcher3/home/HomeController$State;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/launcher3/home/HomeController;)Lcom/android/launcher3/Launcher;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeController;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/launcher3/home/HomeController;)Lcom/android/launcher3/Launcher;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeController;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/launcher3/home/HomeController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeController;

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/android/launcher3/home/HomeController;->callRefreshLiveIcon()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/launcher3/home/HomeController;Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/common/base/view/CellLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeController;
    .param p1, "x1"    # Landroid/appwidget/AppWidgetHostView;
    .param p2, "x2"    # Lcom/android/launcher3/common/base/view/CellLayout;

    .prologue
    .line 141
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/home/HomeController;->enterResizeState(Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/common/base/view/CellLayout;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/launcher3/home/HomeController;)Lcom/android/launcher3/Launcher;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeController;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/launcher3/home/HomeController;)Lcom/android/launcher3/common/view/DragLayer;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeController;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/launcher3/home/HomeController;)Lcom/android/launcher3/common/base/item/ItemInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeController;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/launcher3/home/HomeController;IJJLandroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;
    .locals 2
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeController;
    .param p1, "x1"    # I
    .param p2, "x2"    # J
    .param p4, "x3"    # J
    .param p6, "x4"    # Landroid/appwidget/AppWidgetHostView;
    .param p7, "x5"    # Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    .prologue
    .line 141
    invoke-direct/range {p0 .. p7}, Lcom/android/launcher3/home/HomeController;->completeAddAppWidget(IJJLandroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/launcher3/home/HomeController;)Lcom/android/launcher3/home/LauncherAppWidgetHost;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeController;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mAppWidgetHost:Lcom/android/launcher3/home/LauncherAppWidgetHost;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/launcher3/home/HomeController;)Lcom/android/launcher3/Launcher;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeController;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/launcher3/home/HomeController;)Lcom/android/launcher3/Launcher;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeController;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/launcher3/home/HomeController;)Lcom/android/launcher3/home/ZeroPageController;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeController;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mZeroPageController:Lcom/android/launcher3/home/ZeroPageController;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/launcher3/home/HomeController;)Lcom/android/launcher3/Launcher;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeController;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/launcher3/home/HomeController;)Lcom/android/launcher3/Launcher;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeController;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/launcher3/home/HomeController;)Lcom/android/launcher3/Launcher;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeController;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/launcher3/home/HomeController;)Lcom/android/launcher3/home/Hotseat;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeController;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/launcher3/home/HomeController;)Lcom/android/launcher3/common/stage/StageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeController;

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/launcher3/home/HomeController;)Lcom/android/launcher3/Launcher;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeController;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/launcher3/home/HomeController;)Lcom/android/launcher3/common/stage/StageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeController;

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/launcher3/home/HomeController;)Lcom/android/launcher3/common/stage/StageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeController;

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/launcher3/home/HomeController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeController;

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/android/launcher3/home/HomeController;->changePaddingforScreenGrid()V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/launcher3/home/HomeController;)Lcom/android/launcher3/Launcher;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeController;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/launcher3/home/HomeController;)Lcom/android/launcher3/home/HomeContainer;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeController;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mHomeContainer:Lcom/android/launcher3/home/HomeContainer;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/launcher3/home/HomeController;)Lcom/android/launcher3/Launcher;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeController;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/launcher3/home/HomeController;)Lcom/android/launcher3/Launcher;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeController;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/launcher3/home/HomeController;)Lcom/android/launcher3/common/tray/TrayManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeController;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/launcher3/home/HomeController;)Lcom/android/launcher3/home/SwipeAffordance;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeController;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mSwipeAffordance:Lcom/android/launcher3/home/SwipeAffordance;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/launcher3/home/HomeController;)Lcom/android/launcher3/home/Workspace;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeController;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/launcher3/home/HomeController;)Lcom/android/launcher3/Launcher;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeController;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/launcher3/home/HomeController;)Lcom/android/launcher3/common/drag/DragManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeController;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/launcher3/home/HomeController;)Lcom/android/launcher3/Launcher;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeController;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method private addAppWidgetFromDrop(Lcom/android/launcher3/widget/PendingAddWidgetInfo;JJ[I[I)V
    .locals 14
    .param p1, "info"    # Lcom/android/launcher3/widget/PendingAddWidgetInfo;
    .param p2, "container"    # J
    .param p4, "screenId"    # J
    .param p6, "cell"    # [I
    .param p7, "span"    # [I

    .prologue
    .line 2272
    invoke-direct {p0}, Lcom/android/launcher3/home/HomeController;->resetAddInfo()V

    .line 2273
    iget-object v4, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    move-wide/from16 v0, p2

    iput-wide v0, p1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->container:J

    move-wide/from16 v0, p2

    iput-wide v0, v4, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    .line 2274
    iget-object v4, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    move-wide/from16 v0, p4

    iput-wide v0, p1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->screenId:J

    move-wide/from16 v0, p4

    iput-wide v0, v4, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    .line 2275
    iget-object v4, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/android/launcher3/common/base/item/ItemInfo;->dropPos:[I

    .line 2276
    iget-object v4, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    iget v5, p1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->minSpanX:I

    iput v5, v4, Lcom/android/launcher3/common/base/item/ItemInfo;->minSpanX:I

    .line 2277
    iget-object v4, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    iget v5, p1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->minSpanY:I

    iput v5, v4, Lcom/android/launcher3/common/base/item/ItemInfo;->minSpanY:I

    .line 2279
    if-eqz p6, :cond_0

    .line 2280
    iget-object v4, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    const/4 v5, 0x0

    aget v5, p6, v5

    iput v5, v4, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    .line 2281
    iget-object v4, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    const/4 v5, 0x1

    aget v5, p6, v5

    iput v5, v4, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    .line 2283
    :cond_0
    if-eqz p7, :cond_1

    .line 2284
    iget-object v4, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    const/4 v5, 0x0

    aget v5, p7, v5

    iput v5, v4, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    .line 2285
    iget-object v4, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    const/4 v5, 0x1

    aget v5, p7, v5

    iput v5, v4, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    .line 2288
    :cond_1
    iget-object v10, p1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->boundWidget:Landroid/appwidget/AppWidgetHostView;

    .line 2290
    .local v10, "hostView":Landroid/appwidget/AppWidgetHostView;
    if-eqz v10, :cond_2

    .line 2291
    invoke-virtual {v10}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetId()I

    move-result v2

    .line 2292
    .local v2, "appWidgetId":I
    iget-object v4, p1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->info:Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    invoke-direct {p0, v2, p1, v10, v4}, Lcom/android/launcher3/home/HomeController;->addAppWidgetImpl(ILcom/android/launcher3/common/base/item/ItemInfo;Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;)V

    .line 2295
    const/4 v4, 0x0

    iput-object v4, p1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->boundWidget:Landroid/appwidget/AppWidgetHostView;

    .line 2322
    :goto_0
    return-void

    .line 2299
    .end local v2    # "appWidgetId":I
    :cond_2
    iget-object v4, p0, Lcom/android/launcher3/home/HomeController;->mAppWidgetHost:Lcom/android/launcher3/home/LauncherAppWidgetHost;

    invoke-virtual {v4}, Lcom/android/launcher3/home/LauncherAppWidgetHost;->allocateAppWidgetId()I

    move-result v2

    .line 2300
    .restart local v2    # "appWidgetId":I
    iget-object v12, p1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->bindOptions:Landroid/os/Bundle;

    .line 2302
    .local v12, "options":Landroid/os/Bundle;
    iget-object v4, p0, Lcom/android/launcher3/home/HomeController;->mAppWidgetManager:Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;

    iget-object v5, p1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->info:Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    invoke-virtual {v4, v2, v5, v12}, Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;->bindAppWidgetIdIfAllowed(ILandroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;)Z

    move-result v13

    .line 2304
    .local v13, "success":Z
    if-eqz v13, :cond_3

    .line 2305
    const/4 v4, 0x0

    iget-object v5, p1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->info:Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    invoke-direct {p0, v2, p1, v4, v5}, Lcom/android/launcher3/home/HomeController;->addAppWidgetImpl(ILcom/android/launcher3/common/base/item/ItemInfo;Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;)V

    .line 2319
    :goto_1
    iget-object v4, p0, Lcom/android/launcher3/home/HomeController;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    invoke-virtual {v4}, Lcom/android/launcher3/home/HomeLoader;->getItemPositionHelper()Lcom/android/launcher3/home/HomeItemPositionHelper;

    move-result-object v3

    .line 2320
    .local v3, "positionHelper":Lcom/android/launcher3/home/HomeItemPositionHelper;
    const/4 v4, 0x0

    aget v6, p6, v4

    const/4 v4, 0x1

    aget v7, p6, v4

    const/4 v4, 0x0

    aget v8, p7, v4

    const/4 v4, 0x1

    aget v9, p7, v4

    move-wide/from16 v4, p4

    invoke-virtual/range {v3 .. v9}, Lcom/android/launcher3/home/HomeItemPositionHelper;->addToPreservedPosition(JIIII)V

    goto :goto_0

    .line 2307
    .end local v3    # "positionHelper":Lcom/android/launcher3/home/HomeItemPositionHelper;
    :cond_3
    iget-object v4, p1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->info:Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    iput-object v4, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddWidgetInfo:Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    .line 2308
    new-instance v11, Landroid/content/Intent;

    const-string v4, "android.appwidget.action.APPWIDGET_BIND"

    invoke-direct {v11, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2309
    .local v11, "intent":Landroid/content/Intent;
    const-string v4, "appWidgetId"

    invoke-virtual {v11, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2310
    const-string v4, "appWidgetProvider"

    iget-object v5, p1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v11, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2311
    iget-object v4, p0, Lcom/android/launcher3/home/HomeController;->mAppWidgetManager:Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;

    iget-object v5, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddWidgetInfo:Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    invoke-virtual {v4, v5}, Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;->getUser(Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;)Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v4

    const-string v5, "appWidgetProviderProfile"

    .line 2312
    invoke-virtual {v4, v11, v5}, Lcom/android/launcher3/common/compat/UserHandleCompat;->addToIntent(Landroid/content/Intent;Ljava/lang/String;)V

    .line 2315
    iget-object v4, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    const/16 v5, 0xb

    invoke-static {v4, v11, v5}, Lcom/android/launcher3/Utilities;->startActivityForResultSafely(Landroid/app/Activity;Landroid/content/Intent;I)V

    goto :goto_1
.end method

.method private addAppWidgetImpl(ILcom/android/launcher3/common/base/item/ItemInfo;Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;)V
    .locals 6
    .param p1, "appWidgetId"    # I
    .param p2, "info"    # Lcom/android/launcher3/common/base/item/ItemInfo;
    .param p3, "boundWidget"    # Landroid/appwidget/AppWidgetHostView;
    .param p4, "appWidgetInfo"    # Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    .prologue
    .line 2191
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/home/HomeController;->addAppWidgetImpl(ILcom/android/launcher3/common/base/item/ItemInfo;Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;I)V

    .line 2192
    return-void
.end method

.method private addAppWidgetImpl(ILcom/android/launcher3/common/base/item/ItemInfo;Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;I)V
    .locals 13
    .param p1, "appWidgetId"    # I
    .param p2, "info"    # Lcom/android/launcher3/common/base/item/ItemInfo;
    .param p3, "boundWidget"    # Landroid/appwidget/AppWidgetHostView;
    .param p4, "appWidgetInfo"    # Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;
    .param p5, "delay"    # I

    .prologue
    .line 2197
    move-object/from16 v0, p4

    iget-object v2, v0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-eqz v2, :cond_0

    .line 2198
    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddWidgetInfo:Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    .line 2199
    iput p1, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddWidgetId:I

    .line 2202
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mAppWidgetManager:Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;

    iget-object v5, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mAppWidgetHost:Lcom/android/launcher3/home/LauncherAppWidgetHost;

    const/4 v7, 0x5

    move-object/from16 v3, p4

    move v4, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;->startConfigActivity(Landroid/appwidget/AppWidgetProviderInfo;ILandroid/app/Activity;Landroid/appwidget/AppWidgetHost;I)V

    .line 2231
    :goto_0
    return-void

    .line 2206
    :cond_0
    iget-wide v4, p2, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    iget-wide v6, p2, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    move-object v2, p0

    move v3, p1

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    invoke-direct/range {v2 .. v9}, Lcom/android/launcher3/home/HomeController;->completeAddAppWidget(IJJLandroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v10

    .line 2210
    .local v10, "hostView":Landroid/appwidget/AppWidgetHostView;
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    iget-wide v4, p2, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    invoke-virtual {v2, v4, v5}, Lcom/android/launcher3/home/Workspace;->getScreenWithId(J)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v11

    .line 2212
    .local v11, "layout":Lcom/android/launcher3/common/base/view/CellLayout;
    invoke-virtual {p0, v10, v11}, Lcom/android/launcher3/home/HomeController;->canEnterResizeMode(Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/common/base/view/CellLayout;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2213
    new-instance v12, Lcom/android/launcher3/home/HomeController$11;

    invoke-direct {v12, p0, v10, v11}, Lcom/android/launcher3/home/HomeController$11;-><init>(Lcom/android/launcher3/home/HomeController;Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/common/base/view/CellLayout;)V

    .line 2229
    .local v12, "onComplete":Ljava/lang/Runnable;
    :goto_1
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move/from16 v0, p5

    int-to-long v4, v0

    invoke-virtual {v2, v12, v4, v5}, Lcom/android/launcher3/home/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 2220
    .end local v12    # "onComplete":Ljava/lang/Runnable;
    :cond_1
    new-instance v12, Lcom/android/launcher3/home/HomeController$12;

    invoke-direct {v12, p0}, Lcom/android/launcher3/home/HomeController$12;-><init>(Lcom/android/launcher3/home/HomeController;)V

    .restart local v12    # "onComplete":Ljava/lang/Runnable;
    goto :goto_1
.end method

.method private addInScreen(Landroid/view/View;JJIIIIZZ)V
    .locals 22
    .param p1, "child"    # Landroid/view/View;
    .param p2, "container"    # J
    .param p4, "screenId"    # J
    .param p6, "x"    # I
    .param p7, "y"    # I
    .param p8, "spanX"    # I
    .param p9, "spanY"    # I
    .param p10, "insert"    # Z
    .param p11, "computeXYFromRank"    # Z

    .prologue
    .line 2627
    const-wide/16 v18, -0x64

    cmp-long v5, p2, v18

    if-nez v5, :cond_1

    .line 2628
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-wide/from16 v0, p4

    invoke-virtual {v5, v0, v1}, Lcom/android/launcher3/home/Workspace;->getScreenWithId(J)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v5

    if-nez v5, :cond_1

    .line 2629
    const-string v5, "Launcher.HomeController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Skipping child, screenId "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p4

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, " not found"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2631
    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    .line 2713
    .end local p1    # "child":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 2635
    .restart local p1    # "child":Landroid/view/View;
    :cond_1
    const-wide/16 v18, -0xc9

    cmp-long v5, p4, v18

    if-nez v5, :cond_2

    .line 2637
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Screen id should not be EXTRA_EMPTY_SCREEN_ID"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2641
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 2642
    .local v14, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    const-wide/16 v18, -0x65

    cmp-long v5, p2, v18

    if-nez v5, :cond_b

    .line 2643
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/HomeController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v5}, Lcom/android/launcher3/home/Hotseat;->getLayout()Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v15

    .line 2644
    .local v15, "layout":Lcom/android/launcher3/common/base/view/CellLayout;
    move-object/from16 v0, p1

    instance-of v5, v0, Lcom/android/launcher3/common/view/IconView;

    if-eqz v5, :cond_3

    move-object/from16 v5, p1

    .line 2645
    check-cast v5, Lcom/android/launcher3/common/view/IconView;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/launcher3/common/view/IconView;->setIconDisplay(I)V

    .line 2647
    :cond_3
    sget-object v5, Lcom/android/launcher3/home/HomeFocusHelper;->HOTSEAT_ICON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 2649
    if-eqz p11, :cond_8

    .line 2650
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/HomeController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    move-wide/from16 v0, p4

    long-to-int v6, v0

    invoke-virtual {v5, v6}, Lcom/android/launcher3/home/Hotseat;->getCellXFromOrder(I)I

    move-result p6

    .line 2651
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/HomeController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    move-wide/from16 v0, p4

    long-to-int v6, v0

    invoke-virtual {v5, v6}, Lcom/android/launcher3/home/Hotseat;->getCellYFromOrder(I)I

    move-result p7

    .line 2652
    move/from16 v0, p6

    iput v0, v14, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    .line 2653
    move/from16 v0, p7

    iput v0, v14, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    move-object v8, v15

    .line 2679
    .end local v15    # "layout":Lcom/android/launcher3/common/base/view/CellLayout;
    .local v8, "layout":Lcom/android/launcher3/common/base/view/CellLayout;
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 2681
    .local v4, "genericLp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v4, :cond_4

    instance-of v5, v4, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    if-nez v5, :cond_d

    .line 2682
    :cond_4
    new-instance v12, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    move/from16 v0, p6

    move/from16 v1, p7

    move/from16 v2, p8

    move/from16 v3, p9

    invoke-direct {v12, v0, v1, v2, v3}, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;-><init>(IIII)V

    .line 2691
    .local v12, "lp":Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;
    :goto_2
    if-gez p8, :cond_5

    if-gez p9, :cond_5

    .line 2692
    const/4 v5, 0x0

    iput-boolean v5, v12, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 2696
    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5, v14}, Lcom/android/launcher3/Launcher;->getViewIdForItem(Lcom/android/launcher3/common/base/item/ItemInfo;)I

    move-result v11

    .line 2698
    .local v11, "childId":I
    move-object/from16 v0, p1

    instance-of v5, v0, Lcom/android/launcher3/folder/view/FolderView;

    if-nez v5, :cond_e

    const/4 v13, 0x1

    .line 2699
    .local v13, "markCellsAsOccupied":Z
    :goto_3
    if-eqz p10, :cond_f

    const/4 v10, 0x0

    :goto_4
    move-object/from16 v9, p1

    invoke-virtual/range {v8 .. v13}, Lcom/android/launcher3/common/base/view/CellLayout;->addViewToCellLayout(Landroid/view/View;IILcom/android/launcher3/common/base/view/CellLayout$LayoutParams;Z)Z

    move-result v5

    if-nez v5, :cond_6

    .line 2703
    const-string v5, "Launcher.HomeController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to add to item at ("

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v9, v12, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellX:I

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ","

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v9, v12, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellY:I

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ") to CellLayout"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x1

    invoke-static {v5, v6, v9}, Lcom/android/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2706
    :cond_6
    move-object/from16 v0, p1

    instance-of v5, v0, Lcom/android/launcher3/folder/view/FolderView;

    if-nez v5, :cond_7

    .line 2707
    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    .line 2708
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 2710
    :cond_7
    move-object/from16 v0, p1

    instance-of v5, v0, Lcom/android/launcher3/common/drag/DropTarget;

    if-eqz v5, :cond_0

    .line 2711
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/HomeController;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    check-cast p1, Lcom/android/launcher3/common/drag/DropTarget;

    .end local p1    # "child":Landroid/view/View;
    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/android/launcher3/common/drag/DragManager;->addDropTarget(Lcom/android/launcher3/common/drag/DropTarget;)V

    goto/16 :goto_0

    .line 2654
    .end local v4    # "genericLp":Landroid/view/ViewGroup$LayoutParams;
    .end local v8    # "layout":Lcom/android/launcher3/common/base/view/CellLayout;
    .end local v11    # "childId":I
    .end local v12    # "lp":Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;
    .end local v13    # "markCellsAsOccupied":Z
    .restart local v15    # "layout":Lcom/android/launcher3/common/base/view/CellLayout;
    .restart local p1    # "child":Landroid/view/View;
    :cond_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/HomeController;->mHomeBindController:Lcom/android/launcher3/home/HomeBindController;

    invoke-virtual {v5}, Lcom/android/launcher3/home/HomeBindController;->isWorkspaceLoading()Z

    move-result v5

    if-nez v5, :cond_10

    .line 2655
    instance-of v5, v14, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v5, :cond_9

    .line 2656
    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v5

    const-string v6, "HSAD"

    const-string v7, "Folder"

    const-wide/16 v8, -0x1

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertLogging(Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 2664
    :goto_5
    iget-wide v0, v14, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    move-wide/from16 v18, v0

    const-wide/16 v20, -0x65

    cmp-long v5, v18, v20

    if-eqz v5, :cond_10

    .line 2665
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    .line 2666
    .local v16, "res":Landroid/content/res/Resources;
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v5

    const v6, 0x7f0901c0

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v9, 0x7f0900f9

    .line 2667
    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 2666
    invoke-virtual {v5, v6, v9}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;)V

    move-object v8, v15

    .line 2668
    .end local v15    # "layout":Lcom/android/launcher3/common/base/view/CellLayout;
    .restart local v8    # "layout":Lcom/android/launcher3/common/base/view/CellLayout;
    goto/16 :goto_1

    .line 2659
    .end local v8    # "layout":Lcom/android/launcher3/common/base/view/CellLayout;
    .end local v16    # "res":Landroid/content/res/Resources;
    .restart local v15    # "layout":Lcom/android/launcher3/common/base/view/CellLayout;
    :cond_9
    invoke-virtual {v14}, Lcom/android/launcher3/common/base/item/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    if-eqz v5, :cond_a

    .line 2660
    invoke-virtual {v14}, Lcom/android/launcher3/common/base/item/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 2661
    .local v7, "extra":Ljava/lang/String;
    :goto_6
    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v5

    const-string v6, "HSAD"

    const-wide/16 v8, -0x1

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertLogging(Ljava/lang/String;Ljava/lang/String;JZ)V

    goto :goto_5

    .line 2660
    .end local v7    # "extra":Ljava/lang/String;
    :cond_a
    const/4 v7, 0x0

    goto :goto_6

    .line 2671
    .end local v15    # "layout":Lcom/android/launcher3/common/base/view/CellLayout;
    :cond_b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-wide/from16 v0, p4

    invoke-virtual {v5, v0, v1}, Lcom/android/launcher3/home/Workspace;->getScreenWithId(J)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v8

    .line 2672
    .restart local v8    # "layout":Lcom/android/launcher3/common/base/view/CellLayout;
    move-object/from16 v0, p1

    instance-of v5, v0, Lcom/android/launcher3/common/view/IconView;

    if-eqz v5, :cond_c

    move-object/from16 v5, p1

    .line 2673
    check-cast v5, Lcom/android/launcher3/common/view/IconView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/launcher3/common/view/IconView;->setIconDisplay(I)V

    move-object/from16 v5, p1

    .line 2674
    check-cast v5, Lcom/android/launcher3/common/view/IconView;

    invoke-static {}, Lcom/android/launcher3/util/WhiteBgManager;->isWhiteBg()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/launcher3/common/view/IconView;->changeTextColorForBg(Z)V

    .line 2676
    :cond_c
    sget-object v5, Lcom/android/launcher3/home/HomeFocusHelper;->WORKSPACE_ICON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    goto/16 :goto_1

    .restart local v4    # "genericLp":Landroid/view/ViewGroup$LayoutParams;
    :cond_d
    move-object v12, v4

    .line 2684
    check-cast v12, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    .line 2685
    .restart local v12    # "lp":Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;
    move/from16 v0, p6

    iput v0, v12, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->tmpCellX:I

    move/from16 v0, p6

    iput v0, v12, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellX:I

    .line 2686
    move/from16 v0, p7

    iput v0, v12, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->tmpCellY:I

    move/from16 v0, p7

    iput v0, v12, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellY:I

    .line 2687
    move/from16 v0, p8

    iput v0, v12, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellHSpan:I

    .line 2688
    move/from16 v0, p9

    iput v0, v12, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellVSpan:I

    goto/16 :goto_2

    .line 2698
    .restart local v11    # "childId":I
    :cond_e
    const/4 v13, 0x0

    goto/16 :goto_3

    .line 2699
    .restart local v13    # "markCellsAsOccupied":Z
    :cond_f
    const/4 v10, -0x1

    goto/16 :goto_4

    .end local v4    # "genericLp":Landroid/view/ViewGroup$LayoutParams;
    .end local v8    # "layout":Lcom/android/launcher3/common/base/view/CellLayout;
    .end local v11    # "childId":I
    .end local v12    # "lp":Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;
    .end local v13    # "markCellsAsOccupied":Z
    .restart local v15    # "layout":Lcom/android/launcher3/common/base/view/CellLayout;
    :cond_10
    move-object v8, v15

    .end local v15    # "layout":Lcom/android/launcher3/common/base/view/CellLayout;
    .restart local v8    # "layout":Lcom/android/launcher3/common/base/view/CellLayout;
    goto/16 :goto_1
.end method

.method private callRefreshLiveIcon()V
    .locals 1

    .prologue
    .line 852
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    if-nez v0, :cond_0

    .line 856
    :goto_0
    return-void

    .line 855
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->callRefreshLiveIcon()V

    goto :goto_0
.end method

.method private changeItemInfo(Lcom/android/launcher3/common/base/item/IconInfo;Landroid/content/ComponentName;)V
    .locals 6
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/IconInfo;
    .param p2, "changeCN"    # Landroid/content/ComponentName;

    .prologue
    .line 4615
    invoke-direct {p0, p1}, Lcom/android/launcher3/home/HomeController;->getViewForTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    .line 4616
    .local v2, "view":Landroid/view/View;
    instance-of v3, v2, Lcom/android/launcher3/common/view/IconView;

    if-nez v3, :cond_0

    .line 4632
    :goto_0
    return-void

    .line 4619
    :cond_0
    const-string v3, "Launcher.HomeController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "changeItemInfo item "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " changeCN "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4620
    iget-object v3, p1, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v3, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4621
    iput-object p2, p1, Lcom/android/launcher3/common/base/item/IconInfo;->componentName:Landroid/content/ComponentName;

    .line 4622
    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    iget-object v4, p1, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {v3, p2, v4}, Lcom/android/launcher3/home/HomeLoader;->getBadgeCount(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)I

    move-result v3

    iput v3, p1, Lcom/android/launcher3/common/base/item/IconInfo;->mBadgeCount:I

    .line 4623
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/common/model/IconCache;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/launcher3/common/base/item/IconInfo;->updateIcon(Lcom/android/launcher3/common/model/IconCache;)V

    move-object v0, v2

    .line 4625
    check-cast v0, Lcom/android/launcher3/common/view/IconView;

    .line 4626
    .local v0, "iconView":Lcom/android/launcher3/common/view/IconView;
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/common/model/IconCache;

    move-result-object v3

    invoke-virtual {v0, p1, v3}, Lcom/android/launcher3/common/view/IconView;->applyFromShortcutInfo(Lcom/android/launcher3/common/base/item/IconInfo;Lcom/android/launcher3/common/model/IconCache;)V

    .line 4628
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 4629
    .local v1, "values":Landroid/content/ContentValues;
    const-string v3, "intent"

    iget-object v4, p1, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4630
    const-string v3, "title"

    iget-object v4, p1, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4631
    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    invoke-virtual {v3, v1, p1}, Lcom/android/launcher3/common/model/FavoritesUpdater;->updateItem(Landroid/content/ContentValues;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto :goto_0
.end method

.method private changePaddingforScreenGrid()V
    .locals 8

    .prologue
    .line 1077
    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    if-eqz v3, :cond_0

    .line 1079
    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher3/home/Workspace;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 1080
    .local v1, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v3, 0x11

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1081
    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v0

    .line 1082
    .local v0, "dp":Lcom/android/launcher3/common/deviceprofile/DeviceProfile;
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->isScreenGridState()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1083
    iget-object v3, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeMaxGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->getWorkspacePadding(Lcom/android/launcher3/common/deviceprofile/GridInfo;)Landroid/graphics/Rect;

    move-result-object v2

    .line 1087
    .local v2, "padding":Landroid/graphics/Rect;
    :goto_0
    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    iget v4, v2, Landroid/graphics/Rect;->left:I

    iget v5, v2, Landroid/graphics/Rect;->top:I

    iget v6, v2, Landroid/graphics/Rect;->right:I

    iget v7, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/launcher3/home/Workspace;->setPadding(IIII)V

    .line 1088
    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v3, v1}, Lcom/android/launcher3/home/Workspace;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1090
    .end local v0    # "dp":Lcom/android/launcher3/common/deviceprofile/DeviceProfile;
    .end local v1    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v2    # "padding":Landroid/graphics/Rect;
    :cond_0
    return-void

    .line 1085
    .restart local v0    # "dp":Lcom/android/launcher3/common/deviceprofile/DeviceProfile;
    .restart local v1    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    iget-object v3, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->getWorkspacePadding(Lcom/android/launcher3/common/deviceprofile/GridInfo;)Landroid/graphics/Rect;

    move-result-object v2

    .restart local v2    # "padding":Landroid/graphics/Rect;
    goto :goto_0
.end method

.method private completeAddAppWidget(IJJLandroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;
    .locals 18
    .param p1, "appWidgetId"    # I
    .param p2, "container"    # J
    .param p4, "screenId"    # J
    .param p6, "hostView"    # Landroid/appwidget/AppWidgetHostView;
    .param p7, "appWidgetInfo"    # Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    .prologue
    .line 2112
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mAppWidgetManager:Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v14

    .line 2113
    .local v14, "appWidgetProviderInfo":Landroid/appwidget/AppWidgetProviderInfo;
    if-nez v14, :cond_0

    .line 2117
    const-string v2, "Launcher.HomeController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "App widget provider info is null. AppWidgetID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2118
    const/4 v2, 0x0

    .line 2176
    :goto_0
    return-object v2

    .line 2121
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 2122
    .local v15, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    if-nez p7, :cond_1

    .line 2123
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v2, v14}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->fromProviderInfo(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    move-result-object p7

    .line 2127
    :cond_1
    move-object/from16 v0, p7

    iget-boolean v2, v0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->isCustomWidget:Z

    if-eqz v2, :cond_2

    .line 2128
    const/16 p1, -0x64

    .line 2132
    :cond_2
    new-instance v3, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    move-object/from16 v0, p7

    iget-object v2, v0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move/from16 v0, p1

    invoke-direct {v3, v0, v2}, Lcom/android/launcher3/home/LauncherAppWidgetInfo;-><init>(ILandroid/content/ComponentName;)V

    .line 2133
    .local v3, "launcherInfo":Lcom/android/launcher3/home/LauncherAppWidgetInfo;
    iget v2, v15, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    iput v2, v3, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->spanX:I

    .line 2134
    iget v2, v15, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    iput v2, v3, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->spanY:I

    .line 2135
    iget v2, v15, Lcom/android/launcher3/common/base/item/ItemInfo;->minSpanX:I

    iput v2, v3, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->minSpanX:I

    .line 2136
    iget v2, v15, Lcom/android/launcher3/common/base/item/ItemInfo;->minSpanY:I

    iput v2, v3, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->minSpanY:I

    .line 2137
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mAppWidgetManager:Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;

    move-object/from16 v0, p7

    invoke-virtual {v2, v0}, Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;->getUser(Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;)Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v2

    iput-object v2, v3, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    .line 2139
    iget v8, v15, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    iget v9, v15, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    move-object/from16 v2, p0

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    invoke-virtual/range {v2 .. v9}, Lcom/android/launcher3/home/HomeController;->addItemToDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJII)J

    .line 2141
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher3/home/HomeController;->mRestoring:Z

    if-nez v2, :cond_3

    .line 2142
    if-nez p6, :cond_5

    .line 2144
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mAppWidgetHost:Lcom/android/launcher3/home/LauncherAppWidgetHost;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    move/from16 v0, p1

    move-object/from16 v1, p7

    invoke-virtual {v2, v4, v0, v1}, Lcom/android/launcher3/home/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v2

    iput-object v2, v3, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    .line 2150
    :goto_1
    iget-object v2, v3, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v2, v3}, Landroid/appwidget/AppWidgetHostView;->setTag(Ljava/lang/Object;)V

    .line 2151
    iget-object v2, v3, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/appwidget/AppWidgetHostView;->setVisibility(I)V

    .line 2152
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3, v2}, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->notifyWidgetSizeChanged(Lcom/android/launcher3/Launcher;)V

    .line 2154
    iget-object v5, v3, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    iget v10, v15, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    iget v11, v15, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    iget v12, v3, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->spanX:I

    iget v13, v3, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->spanY:I

    move-object/from16 v4, p0

    move-wide/from16 v6, p2

    move-wide/from16 v8, p4

    invoke-virtual/range {v4 .. v13}, Lcom/android/launcher3/home/HomeController;->addInScreen(Landroid/view/View;JJIIII)V

    .line 2157
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mHomeBindController:Lcom/android/launcher3/home/HomeBindController;

    iget-object v4, v3, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    move-object/from16 v0, p7

    invoke-virtual {v2, v4, v0}, Lcom/android/launcher3/home/HomeBindController;->addWidgetToAutoAdvanceIfNeeded(Landroid/view/View;Landroid/appwidget/AppWidgetProviderInfo;)V

    .line 2159
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/home/HomeController;->resetAddInfo()V

    .line 2161
    iget-object v2, v3, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 2163
    .local v7, "packageName":Ljava/lang/String;
    sget-object v2, Lcom/android/launcher3/home/HomeController;->sSingleInstanceAppWidgetList:Ljava/util/HashMap;

    iget-object v4, v3, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2164
    sget-object v2, Lcom/android/launcher3/home/HomeController;->sSingleInstanceAppWidgetList:Ljava/util/HashMap;

    iget-object v4, v3, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    .line 2165
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/util/LongSparseArray;

    .line 2166
    .local v17, "userMap":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v2}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/UserManagerCompat;

    move-result-object v2

    iget-object v4, v3, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {v2, v4}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher3/common/compat/UserHandleCompat;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    .line 2167
    .local v16, "profileId":Ljava/lang/Long;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 2174
    .end local v16    # "profileId":Ljava/lang/Long;
    .end local v17    # "userMap":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    :cond_4
    :goto_2
    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v5

    const-string v6, "WGAD"

    const-wide/16 v8, -0x1

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertLogging(Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 2176
    iget-object v2, v3, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    goto/16 :goto_0

    .line 2148
    .end local v7    # "packageName":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p6

    iput-object v0, v3, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    goto/16 :goto_1

    .line 2168
    .restart local v7    # "packageName":Ljava/lang/String;
    :cond_6
    sget-object v2, Lcom/android/launcher3/home/HomeController;->sSingleInstanceAppWidgetPackageList:Ljava/util/HashMap;

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2169
    sget-object v2, Lcom/android/launcher3/home/HomeController;->sSingleInstanceAppWidgetPackageList:Ljava/util/HashMap;

    .line 2170
    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/util/LongSparseArray;

    .line 2171
    .restart local v17    # "userMap":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v2}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/UserManagerCompat;

    move-result-object v2

    iget-object v4, v3, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {v2, v4}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher3/common/compat/UserHandleCompat;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    .line 2172
    .restart local v16    # "profileId":Ljava/lang/Long;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_2
.end method

.method private completeAddShortcut(Landroid/content/Intent;JJII)V
    .locals 30
    .param p1, "data"    # Landroid/content/Intent;
    .param p2, "container"    # J
    .param p4, "screenId"    # J
    .param p6, "cellX"    # I
    .param p7, "cellY"    # I

    .prologue
    .line 2043
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher3/home/HomeController;->mTmpAddItemCellCoordinates:[I

    .line 2044
    .local v11, "cellXY":[I
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-object v0, v7, Lcom/android/launcher3/common/base/item/ItemInfo;->dropPos:[I

    move-object/from16 v27, v0

    .line 2045
    .local v27, "touchXY":[I
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move-wide/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/launcher3/home/HomeController;->getCellLayout(JJ)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v6

    .line 2047
    .local v6, "layout":Lcom/android/launcher3/common/base/view/CellLayout;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, p1

    invoke-static {v7, v0}, Lcom/android/launcher3/home/InstallShortcutReceiver;->fromShortcutIntent(Landroid/content/Context;Landroid/content/Intent;)Lcom/android/launcher3/common/base/item/IconInfo;

    move-result-object v13

    .line 2048
    .local v13, "info":Lcom/android/launcher3/common/base/item/IconInfo;
    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-object v7, v7, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    if-nez v7, :cond_1

    .line 2107
    :cond_0
    :goto_0
    return-void

    .line 2051
    :cond_1
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v8, v13, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-object v9, v9, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    .line 2052
    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 2051
    invoke-static {v7, v8, v9}, Lcom/android/launcher3/Utilities;->hasPermissionForActivity(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 2054
    const-string v7, "Launcher.HomeController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Ignoring malicious intent "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v13, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2057
    :cond_2
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/home/HomeController;->mHomeBindController:Lcom/android/launcher3/home/HomeBindController;

    invoke-virtual {v7, v13}, Lcom/android/launcher3/home/HomeBindController;->createShortcut(Lcom/android/launcher3/common/base/item/IconInfo;)Landroid/view/View;

    move-result-object v28

    .line 2061
    .local v28, "view":Landroid/view/View;
    if-ltz p6, :cond_5

    if-ltz p7, :cond_5

    .line 2062
    const/4 v7, 0x0

    aput p6, v11, v7

    .line 2063
    const/4 v7, 0x1

    aput p7, v11, v7

    .line 2064
    const/16 v25, 0x1

    .line 2066
    .local v25, "foundCellSpan":Z
    instance-of v7, v6, Lcom/android/launcher3/home/HotseatCellLayout;

    if-eqz v7, :cond_4

    .line 2067
    new-instance v24, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    invoke-direct/range {v24 .. v24}, Lcom/android/launcher3/common/drag/DropTarget$DragObject;-><init>()V

    .line 2068
    .local v24, "dragObject":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    move-object/from16 v0, v24

    iput-object v13, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    .line 2070
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/home/HomeController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v7}, Lcom/android/launcher3/home/Hotseat;->getDragController()Lcom/android/launcher3/home/HotseatDragController;

    move-result-object v7

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-virtual {v7, v11, v0, v1}, Lcom/android/launcher3/home/HotseatDragController;->createUserFolderIfNecessary([ILandroid/view/View;Lcom/android/launcher3/common/drag/DropTarget$DragObject;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 2074
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/home/HomeController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v7}, Lcom/android/launcher3/home/Hotseat;->getDragController()Lcom/android/launcher3/home/HotseatDragController;

    move-result-object v7

    move-object/from16 v0, v24

    invoke-virtual {v7, v11, v0}, Lcom/android/launcher3/home/HotseatDragController;->addToExistingFolderIfNecessary([ILcom/android/launcher3/common/drag/DropTarget$DragObject;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 2097
    .end local v24    # "dragObject":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    :cond_3
    :goto_1
    if-nez v25, :cond_8

    .line 2098
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/home/HomeController;->showOutOfSpaceMessage()V

    goto :goto_0

    .line 2078
    :cond_4
    new-instance v24, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    invoke-direct/range {v24 .. v24}, Lcom/android/launcher3/common/drag/DropTarget$DragObject;-><init>()V

    .line 2079
    .restart local v24    # "dragObject":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    move-object/from16 v0, v24

    iput-object v13, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    .line 2081
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v7}, Lcom/android/launcher3/home/Workspace;->getDragController()Lcom/android/launcher3/home/WorkspaceDragController;

    move-result-object v7

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-virtual {v7, v11, v0, v1}, Lcom/android/launcher3/home/WorkspaceDragController;->createUserFolderIfNecessary([ILandroid/view/View;Lcom/android/launcher3/common/drag/DropTarget$DragObject;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 2085
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v7}, Lcom/android/launcher3/home/Workspace;->getDragController()Lcom/android/launcher3/home/WorkspaceDragController;

    move-result-object v7

    move-object/from16 v0, v24

    invoke-virtual {v7, v11, v0}, Lcom/android/launcher3/home/WorkspaceDragController;->addToExistingFolderIfNecessary([ILcom/android/launcher3/common/drag/DropTarget$DragObject;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto/16 :goto_0

    .line 2089
    .end local v24    # "dragObject":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    .end local v25    # "foundCellSpan":Z
    :cond_5
    if-eqz v27, :cond_7

    .line 2091
    const/4 v7, 0x0

    aget v7, v27, v7

    const/4 v8, 0x1

    aget v8, v27, v8

    const/4 v9, 0x1

    const/4 v10, 0x1

    invoke-virtual/range {v6 .. v11}, Lcom/android/launcher3/common/base/view/CellLayout;->findNearestVacantArea(IIII[I)[I

    move-result-object v26

    .line 2092
    .local v26, "result":[I
    if-eqz v26, :cond_6

    const/16 v25, 0x1

    .line 2093
    .restart local v25    # "foundCellSpan":Z
    :goto_2
    goto :goto_1

    .line 2092
    .end local v25    # "foundCellSpan":Z
    :cond_6
    const/16 v25, 0x0

    goto :goto_2

    .line 2094
    .end local v26    # "result":[I
    :cond_7
    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {v6, v11, v7, v8, v9}, Lcom/android/launcher3/common/base/view/CellLayout;->findCellForSpan([IIIZ)Z

    move-result v25

    .restart local v25    # "foundCellSpan":Z
    goto :goto_1

    .line 2102
    :cond_8
    const/4 v7, 0x0

    aget v18, v11, v7

    const/4 v7, 0x1

    aget v19, v11, v7

    move-object/from16 v12, p0

    move-wide/from16 v14, p2

    move-wide/from16 v16, p4

    invoke-virtual/range {v12 .. v19}, Lcom/android/launcher3/home/HomeController;->addItemToDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJII)J

    .line 2104
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/launcher3/home/HomeController;->mRestoring:Z

    if-nez v7, :cond_0

    .line 2105
    const/4 v7, 0x0

    aget v20, v11, v7

    const/4 v7, 0x1

    aget v21, v11, v7

    const/16 v22, 0x1

    const/16 v23, 0x1

    move-object/from16 v14, p0

    move-object/from16 v15, v28

    move-wide/from16 v16, p2

    move-wide/from16 v18, p4

    invoke-virtual/range {v14 .. v23}, Lcom/android/launcher3/home/HomeController;->addInScreen(Landroid/view/View;JJIIII)V

    goto/16 :goto_0
.end method

.method private completeRestoreAppWidget(I)V
    .locals 4
    .param p1, "appWidgetId"    # I

    .prologue
    .line 2333
    invoke-direct {p0, p1}, Lcom/android/launcher3/home/HomeController;->getWidgetForAppWidgetId(I)Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    move-result-object v1

    .line 2334
    .local v1, "view":Lcom/android/launcher3/home/LauncherAppWidgetHostView;
    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/android/launcher3/home/PendingAppWidgetHostView;

    if-nez v2, :cond_1

    .line 2335
    :cond_0
    const-string v2, "Launcher.HomeController"

    const-string v3, "Widget update called, when the widget no longer exists."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2344
    :goto_0
    return-void

    .line 2339
    :cond_1
    invoke-virtual {v1}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    .line 2340
    .local v0, "info":Lcom/android/launcher3/home/LauncherAppWidgetInfo;
    const/4 v2, 0x0

    iput v2, v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->restoreStatus:I

    .line 2342
    invoke-direct {p0}, Lcom/android/launcher3/home/HomeController;->reinflateWidgetsIfNecessary()V

    .line 2343
    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/HomeController;->updateItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto :goto_0
.end method

.method private completeTwoStageWidgetDrop(II)V
    .locals 12
    .param p1, "resultCode"    # I
    .param p2, "appWidgetId"    # I

    .prologue
    .line 2004
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-wide v10, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    invoke-virtual {v0, v10, v11}, Lcom/android/launcher3/home/Workspace;->getScreenWithId(J)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v2

    .line 2005
    .local v2, "cellLayout":Lcom/android/launcher3/common/base/view/CellLayout;
    const/4 v4, 0x0

    .line 2006
    .local v4, "onCompleteRunnable":Ljava/lang/Runnable;
    const/4 v5, 0x0

    .line 2008
    .local v5, "animationType":I
    const/4 v6, 0x0

    .line 2009
    .local v6, "boundWidget":Landroid/appwidget/AppWidgetHostView;
    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    .line 2010
    const/4 v5, 0x3

    .line 2011
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mAppWidgetHost:Lcom/android/launcher3/home/LauncherAppWidgetHost;

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddWidgetInfo:Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    invoke-virtual {v0, v1, p2, v3}, Lcom/android/launcher3/home/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v8

    .line 2013
    .local v8, "hostView":Landroid/appwidget/AppWidgetHostView;
    move-object v6, v8

    .line 2014
    new-instance v4, Lcom/android/launcher3/home/HomeController$10;

    .end local v4    # "onCompleteRunnable":Ljava/lang/Runnable;
    invoke-direct {v4, p0, p2, v8, v2}, Lcom/android/launcher3/home/HomeController$10;-><init>(Lcom/android/launcher3/home/HomeController;ILandroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/common/base/view/CellLayout;)V

    .line 2031
    .end local v8    # "hostView":Landroid/appwidget/AppWidgetHostView;
    .restart local v4    # "onCompleteRunnable":Ljava/lang/Runnable;
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/view/DragLayer;->getAnimatedView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2032
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->getDragController()Lcom/android/launcher3/home/WorkspaceDragController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 2033
    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/common/view/DragLayer;->getAnimatedView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/drag/DragView;

    const/4 v7, 0x1

    .line 2032
    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher3/home/WorkspaceDragController;->animateWidgetDrop(Lcom/android/launcher3/common/base/item/ItemInfo;Lcom/android/launcher3/common/base/view/CellLayout;Lcom/android/launcher3/common/drag/DragView;Ljava/lang/Runnable;ILandroid/view/View;Z)V

    .line 2039
    :cond_1
    :goto_1
    return-void

    .line 2026
    :cond_2
    if-nez p1, :cond_0

    .line 2027
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mAppWidgetHost:Lcom/android/launcher3/home/LauncherAppWidgetHost;

    invoke-virtual {v0, p2}, Lcom/android/launcher3/home/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    .line 2028
    const/4 v5, 0x4

    goto :goto_0

    .line 2035
    :cond_3
    if-eqz v4, :cond_1

    .line 2037
    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    goto :goto_1
.end method

.method private createFolder()V
    .locals 18

    .prologue
    .line 4250
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/home/HomeController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v13}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->getCheckedAppsViewList()Ljava/util/ArrayList;

    move-result-object v2

    .line 4251
    .local v2, "appsViewList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_0

    .line 4252
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/launcher3/home/HomeController;->getTargetView(Ljava/util/ArrayList;)Landroid/view/View;

    move-result-object v10

    .line 4253
    .local v10, "targetView":Landroid/view/View;
    if-nez v10, :cond_1

    .line 4254
    const-string v13, "Launcher.HomeController"

    const-string v14, "onClickCreateFolder : targetView is null"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4319
    .end local v10    # "targetView":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 4257
    .restart local v10    # "targetView":Landroid/view/View;
    :cond_1
    invoke-virtual {v10}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 4258
    .local v9, "targetItem":Lcom/android/launcher3/common/base/item/IconInfo;
    invoke-virtual {v10}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v13

    invoke-interface {v13}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 4260
    .local v8, "targetCellLayout":Lcom/android/launcher3/common/base/view/CellLayout;
    if-eqz v9, :cond_9

    .line 4261
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v13}, Lcom/android/launcher3/Launcher;->isFolderStage()Z

    move-result v13

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v13}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0b0032

    .line 4262
    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 4264
    .local v3, "delayToOpenFolder":I
    :goto_1
    iget-wide v14, v9, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    const-wide/16 v16, -0x65

    cmp-long v13, v14, v16

    if-nez v13, :cond_3

    const/4 v5, 0x1

    .line 4265
    .local v5, "isHotseat":Z
    :goto_2
    if-eqz v5, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v13}, Lcom/android/launcher3/home/Workspace;->getNextPage()I

    move-result v11

    .line 4269
    .local v11, "toPage":I
    :goto_3
    if-eqz v5, :cond_5

    .line 4270
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/home/HomeController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v13, v10}, Lcom/android/launcher3/home/Hotseat;->setTargetView(Landroid/view/View;)V

    .line 4276
    :goto_4
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/launcher3/home/HomeController;->removeCheckedAppView(Ljava/util/ArrayList;)V

    .line 4279
    if-eqz v5, :cond_6

    .line 4280
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/home/HomeController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v13}, Lcom/android/launcher3/home/Hotseat;->getDragController()Lcom/android/launcher3/home/HotseatDragController;

    move-result-object v13

    invoke-virtual {v13, v8, v9}, Lcom/android/launcher3/home/HotseatDragController;->addFolder(Lcom/android/launcher3/common/base/view/CellLayout;Lcom/android/launcher3/common/base/item/IconInfo;)Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v4

    .line 4286
    .local v4, "folder":Lcom/android/launcher3/folder/view/FolderIconView;
    :goto_5
    const/4 v13, 0x4

    invoke-virtual {v4, v13}, Lcom/android/launcher3/folder/view/FolderIconView;->setVisibility(I)V

    .line 4288
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 4289
    .local v7, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_6
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    .line 4290
    .local v12, "view":Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 4291
    .local v6, "item":Lcom/android/launcher3/common/base/item/IconInfo;
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 4262
    .end local v3    # "delayToOpenFolder":I
    .end local v4    # "folder":Lcom/android/launcher3/folder/view/FolderIconView;
    .end local v5    # "isHotseat":Z
    .end local v6    # "item":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v7    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    .end local v11    # "toPage":I
    .end local v12    # "view":Landroid/view/View;
    :cond_2
    const/16 v3, 0x1f4

    goto :goto_1

    .line 4264
    .restart local v3    # "delayToOpenFolder":I
    :cond_3
    const/4 v5, 0x0

    goto :goto_2

    .line 4265
    .restart local v5    # "isHotseat":Z
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    iget-wide v14, v9, Lcom/android/launcher3/common/base/item/IconInfo;->screenId:J

    .line 4266
    invoke-virtual {v13, v14, v15}, Lcom/android/launcher3/home/Workspace;->getPageIndexForScreenId(J)I

    move-result v11

    goto :goto_3

    .line 4273
    .restart local v11    # "toPage":I
    :cond_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/launcher3/home/HomeController;->removeHomeItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 4274
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v13, v10}, Lcom/android/launcher3/home/Workspace;->setTargetView(Landroid/view/View;)V

    goto :goto_4

    .line 4282
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v13}, Lcom/android/launcher3/home/Workspace;->getDragController()Lcom/android/launcher3/home/WorkspaceDragController;

    move-result-object v13

    invoke-virtual {v13, v8, v9}, Lcom/android/launcher3/home/WorkspaceDragController;->addFolder(Lcom/android/launcher3/common/base/view/CellLayout;Lcom/android/launcher3/common/base/item/IconInfo;)Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v4

    .restart local v4    # "folder":Lcom/android/launcher3/folder/view/FolderIconView;
    goto :goto_5

    .line 4293
    .restart local v7    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    :cond_7
    invoke-virtual {v4, v7}, Lcom/android/launcher3/folder/view/FolderIconView;->addItems(Ljava/util/ArrayList;)V

    .line 4295
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v13}, Lcom/android/launcher3/home/Workspace;->getNextPage()I

    move-result v13

    if-eq v11, v13, :cond_8

    .line 4296
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v13, v11}, Lcom/android/launcher3/home/Workspace;->snapToPageImmediately(I)V

    .line 4299
    :cond_8
    new-instance v13, Landroid/os/Handler;

    invoke-direct {v13}, Landroid/os/Handler;-><init>()V

    new-instance v14, Lcom/android/launcher3/home/HomeController$37;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v4}, Lcom/android/launcher3/home/HomeController$37;-><init>(Lcom/android/launcher3/home/HomeController;Lcom/android/launcher3/folder/view/FolderIconView;)V

    int-to-long v0, v3

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v13, v14, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 4316
    .end local v3    # "delayToOpenFolder":I
    .end local v4    # "folder":Lcom/android/launcher3/folder/view/FolderIconView;
    .end local v5    # "isHotseat":Z
    .end local v7    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    .end local v11    # "toPage":I
    :cond_9
    const-string v13, "Launcher.HomeController"

    const-string v14, "onClickCreateFolder : app info is null"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private deleteItemInFolderFromDb(Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 1
    .param p1, "info"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 3464
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    check-cast p1, Lcom/android/launcher3/folder/FolderInfo;

    .end local p1    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/model/FavoritesUpdater;->deleteFolderContentsFromDatabase(Lcom/android/launcher3/folder/FolderInfo;)V

    .line 3465
    return-void
.end method

.method private ensurePendingDropLayoutExists(J)J
    .locals 3
    .param p1, "screenId"    # J

    .prologue
    .line 1992
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1, p1, p2}, Lcom/android/launcher3/home/Workspace;->getScreenWithId(J)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v0

    .line 1993
    .local v0, "dropLayout":Lcom/android/launcher3/common/base/view/CellLayout;
    if-nez v0, :cond_0

    .line 1996
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->addExtraEmptyScreen()Z

    .line 1997
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->commitExtraEmptyScreen()J

    move-result-wide p1

    .line 1999
    .end local p1    # "screenId":J
    :cond_0
    return-wide p1
.end method

.method private enterNormalState(ZLjava/lang/Runnable;Z)V
    .locals 7
    .param p1, "animated"    # Z
    .param p2, "onCompleteRunnable"    # Ljava/lang/Runnable;
    .param p3, "forced"    # Z

    .prologue
    const/4 v6, 0x1

    .line 1165
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->isHomeStage()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mState:Lcom/android/launcher3/home/HomeController$State;

    invoke-static {v2, v6}, Lcom/android/launcher3/home/HomeController$State;->access$100(Lcom/android/launcher3/home/HomeController$State;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1190
    :cond_0
    :goto_0
    return-void

    .line 1169
    :cond_1
    new-instance v0, Lcom/android/launcher3/common/stage/StageEntry;

    invoke-direct {v0}, Lcom/android/launcher3/common/stage/StageEntry;-><init>()V

    .line 1170
    .local v0, "data":Lcom/android/launcher3/common/stage/StageEntry;
    iput-boolean p1, v0, Lcom/android/launcher3/common/stage/StageEntry;->enableAnimation:Z

    .line 1171
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mState:Lcom/android/launcher3/home/HomeController$State;

    invoke-static {v2}, Lcom/android/launcher3/home/HomeController$State;->access$300(Lcom/android/launcher3/home/HomeController$State;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/launcher3/common/stage/StageEntry;->setInternalStateFrom(I)V

    .line 1172
    invoke-virtual {v0, v6}, Lcom/android/launcher3/common/stage/StageEntry;->setInternalStateTo(I)V

    .line 1173
    invoke-virtual {v0, p2}, Lcom/android/launcher3/common/stage/StageEntry;->addOnCompleteRunnableCallBack(Ljava/lang/Runnable;)V

    .line 1174
    if-nez p3, :cond_2

    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->isHomeStage()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1175
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1176
    .local v1, "res":Landroid/content/res/Resources;
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v2

    const v3, 0x7f0901b1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f09011c

    .line 1177
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "2"

    .line 1176
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1178
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/launcher3/common/stage/StageManager;->finishAllStage(Lcom/android/launcher3/common/stage/StageEntry;)V

    .line 1184
    .end local v1    # "res":Landroid/content/res/Resources;
    :goto_1
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mHomeBindController:Lcom/android/launcher3/home/HomeBindController;

    invoke-virtual {v2, v6}, Lcom/android/launcher3/home/HomeBindController;->setUserPresent(Z)V

    .line 1185
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mHomeBindController:Lcom/android/launcher3/home/HomeBindController;

    invoke-virtual {v2}, Lcom/android/launcher3/home/HomeBindController;->updateAutoAdvanceState()V

    .line 1187
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportQuickOption()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDragMgr()Lcom/android/launcher3/common/drag/DragManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/common/drag/DragManager;->isQuickOptionShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1188
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDragMgr()Lcom/android/launcher3/common/drag/DragManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/common/drag/DragManager;->enableQuickOptionView()V

    goto :goto_0

    .line 1180
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v2

    invoke-virtual {v2, p0, v0}, Lcom/android/launcher3/common/stage/StageManager;->switchInternalState(Lcom/android/launcher3/common/stage/Stage;Lcom/android/launcher3/common/stage/StageEntry;)V

    goto :goto_1
.end method

.method private enterResizeState(Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/common/base/view/CellLayout;)V
    .locals 8
    .param p1, "hostView"    # Landroid/appwidget/AppWidgetHostView;
    .param p2, "layout"    # Lcom/android/launcher3/common/base/view/CellLayout;

    .prologue
    .line 1375
    new-instance v0, Lcom/android/launcher3/home/HomeController$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/launcher3/home/HomeController$6;-><init>(Lcom/android/launcher3/home/HomeController;Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/common/base/view/CellLayout;)V

    .line 1385
    .local v0, "addResizeFrame":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1, p2}, Lcom/android/launcher3/home/Workspace;->getIdForScreen(Lcom/android/launcher3/common/base/view/CellLayout;)J

    move-result-wide v4

    .line 1386
    .local v4, "screenId":J
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1, v4, v5}, Lcom/android/launcher3/home/Workspace;->getPageIndexForScreenId(J)I

    move-result v1

    int-to-long v2, v1

    .line 1387
    .local v2, "pageIndex":J
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->getNextPage()I

    move-result v1

    int-to-long v6, v1

    cmp-long v1, v2, v6

    if-eqz v1, :cond_0

    .line 1388
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/home/HomeController;->enterNormalState(Z)V

    .line 1394
    :goto_0
    return-void

    .line 1389
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->isPageMoving()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1390
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 1392
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/home/Workspace;->setDelayedResizeRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private exitScreenGridStateDelayed(I)V
    .locals 4
    .param p1, "delay"    # I

    .prologue
    .line 4460
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mState:Lcom/android/launcher3/home/HomeController$State;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/android/launcher3/home/HomeController$State;->access$100(Lcom/android/launcher3/home/HomeController$State;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4483
    :goto_0
    return-void

    .line 4464
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/launcher3/home/HomeController$38;

    invoke-direct {v1, p0}, Lcom/android/launcher3/home/HomeController$38;-><init>(Lcom/android/launcher3/home/HomeController;)V

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private findAppInFolder(Landroid/view/View;Landroid/content/ComponentName;)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 5000
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/folder/FolderInfo;

    .line 5001
    .local v1, "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    const/4 v3, 0x0

    .line 5002
    .local v3, "needToScrollPage":Z
    iget-wide v4, v1, Lcom/android/launcher3/folder/FolderInfo;->container:J

    const-wide/16 v6, -0x64

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    .line 5003
    invoke-virtual {v4}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v4

    iget-object v5, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    iget-wide v6, v1, Lcom/android/launcher3/folder/FolderInfo;->screenId:J

    invoke-virtual {v5, v6, v7}, Lcom/android/launcher3/home/Workspace;->getPageIndexForScreenId(J)I

    move-result v5

    if-eq v4, v5, :cond_0

    .line 5004
    const/4 v3, 0x1

    .line 5005
    iget-object v4, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    iget-wide v6, v1, Lcom/android/launcher3/folder/FolderInfo;->screenId:J

    invoke-virtual {v4, v6, v7}, Lcom/android/launcher3/home/Workspace;->snapToScreenId(J)V

    .line 5007
    :cond_0
    iget-object v4, v1, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 5008
    .local v2, "info":Lcom/android/launcher3/common/base/item/IconInfo;
    invoke-virtual {v2}, Lcom/android/launcher3/common/base/item/IconInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5009
    new-instance v0, Lcom/android/launcher3/common/stage/StageEntry;

    invoke-direct {v0}, Lcom/android/launcher3/common/stage/StageEntry;-><init>()V

    .line 5010
    .local v0, "data":Lcom/android/launcher3/common/stage/StageEntry;
    const-string v4, "KEY_FOLDER_ICON_VIEW"

    invoke-virtual {v0, v4, p1}, Lcom/android/launcher3/common/stage/StageEntry;->putExtras(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5011
    const-string v4, "KEY_FOLDER_ICON_APPSEARCHED"

    invoke-virtual {v0, v4, v2}, Lcom/android/launcher3/common/stage/StageEntry;->putExtras(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5012
    iget-object v7, p0, Lcom/android/launcher3/home/HomeController;->mFindAppPositionHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/launcher3/home/HomeController$41;

    invoke-direct {v8, p0, v0}, Lcom/android/launcher3/home/HomeController$41;-><init>(Lcom/android/launcher3/home/HomeController;Lcom/android/launcher3/common/stage/StageEntry;)V

    if-eqz v3, :cond_2

    const-wide/16 v4, 0x3b6

    :goto_1
    invoke-virtual {v7, v8, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    const-wide/16 v4, 0x12c

    goto :goto_1

    .line 5021
    .end local v0    # "data":Lcom/android/launcher3/common/stage/StageEntry;
    .end local v2    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_3
    return-void
.end method

.method private findEmptyCell([I)J
    .locals 6
    .param p1, "targetCell"    # [I

    .prologue
    .line 4360
    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher3/home/Workspace;->getChildCount()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .line 4362
    .local v1, "count":I
    move v2, v1

    .local v2, "index":I
    :goto_0
    if-lez v2, :cond_2

    .line 4363
    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v3, v2}, Lcom/android/launcher3/home/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 4364
    .local v0, "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    if-nez v0, :cond_1

    .line 4362
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 4368
    :cond_1
    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 4372
    .end local v0    # "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    :cond_2
    const/4 v3, 0x1

    invoke-direct {p0, p1, v2, v3}, Lcom/android/launcher3/home/HomeController;->findEmptyCell([IIZ)J

    move-result-wide v4

    return-wide v4
.end method

.method private findEmptyCell([IIZ)J
    .locals 14
    .param p1, "targetCell"    # [I
    .param p2, "targetScreen"    # I
    .param p3, "lastPosition"    # Z

    .prologue
    .line 4376
    const/4 v11, 0x0

    .line 4377
    .local v11, "prevTargetX":I
    const/4 v8, 0x0

    .line 4379
    .local v8, "prevTargetY":I
    move/from16 v10, p2

    .local v10, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->getPageCount()I

    move-result v1

    if-ge v10, v1, :cond_5

    .line 4380
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1, v10}, Lcom/android/launcher3/home/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 4381
    .local v9, "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    if-nez v9, :cond_1

    .line 4379
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 4385
    :cond_1
    invoke-virtual {v9}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountX()I

    move-result v4

    .line 4386
    .local v4, "countX":I
    invoke-virtual {v9}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountY()I

    move-result v5

    .line 4387
    .local v5, "countY":I
    invoke-virtual {v9}, Lcom/android/launcher3/common/base/view/CellLayout;->getOccupied()[[Z

    move-result-object v6

    .line 4389
    .local v6, "occupied":[[Z
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1, v10}, Lcom/android/launcher3/home/Workspace;->getScreenIdForPageIndex(I)J

    move-result-wide v12

    .line 4390
    .local v12, "screenId":J
    const-wide/16 v2, -0xc9

    cmp-long v1, v12, v2

    if-nez v1, :cond_2

    .line 4391
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->commitExtraEmptyScreen()J

    move-result-wide v12

    .line 4394
    :cond_2
    const-wide/16 v2, -0x1

    cmp-long v1, v12, v2

    if-eqz v1, :cond_0

    .line 4398
    if-eqz p3, :cond_4

    .line 4399
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeLoader;->getItemPositionHelper()Lcom/android/launcher3/home/HomeItemPositionHelper;

    move-result-object v0

    .line 4400
    .local v0, "positionHelper":Lcom/android/launcher3/home/HomeItemPositionHelper;
    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v7, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher3/home/HomeItemPositionHelper;->findVacantCell([IIIII[[ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4423
    .end local v0    # "positionHelper":Lcom/android/launcher3/home/HomeItemPositionHelper;
    .end local v4    # "countX":I
    .end local v5    # "countY":I
    .end local v6    # "occupied":[[Z
    .end local v9    # "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    .end local v12    # "screenId":J
    :cond_3
    :goto_1
    return-wide v12

    .line 4404
    .restart local v4    # "countX":I
    .restart local v5    # "countY":I
    .restart local v6    # "occupied":[[Z
    .restart local v9    # "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    .restart local v12    # "screenId":J
    :cond_4
    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object v1, p1

    move v7, v11

    invoke-static/range {v1 .. v8}, Lcom/android/launcher3/Utilities;->findVacantCellToRightBottom([IIIII[[ZII)Z

    move-result v1

    if-nez v1, :cond_3

    .line 4409
    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object v1, p1

    move v7, v11

    invoke-static/range {v1 .. v8}, Lcom/android/launcher3/Utilities;->findVacantCellToLeftTop([IIIII[[ZII)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 4416
    .end local v4    # "countX":I
    .end local v5    # "countY":I
    .end local v6    # "occupied":[[Z
    .end local v9    # "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    .end local v12    # "screenId":J
    :cond_5
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->hasExtraEmptyScreen()Z

    move-result v1

    if-nez v1, :cond_6

    .line 4417
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->addExtraEmptyScreen()Z

    .line 4420
    :cond_6
    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, p1, v1

    .line 4421
    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, p1, v1

    .line 4423
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->commitExtraEmptyScreen()J

    move-result-wide v12

    goto :goto_1
.end method

.method private findSearchedApp(Landroid/content/ComponentName;Landroid/os/UserHandle;)V
    .locals 10
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "user"    # Landroid/os/UserHandle;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 4953
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v6, p1, p2}, Lcom/android/launcher3/home/Workspace;->getIconView(Landroid/content/ComponentName;Landroid/os/UserHandle;)Landroid/view/View;

    move-result-object v5

    .line 4954
    .local v5, "view":Landroid/view/View;
    if-nez v5, :cond_0

    .line 4955
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v6, p1, p2}, Lcom/android/launcher3/home/Hotseat;->getIconView(Landroid/content/ComponentName;Landroid/os/UserHandle;)Landroid/view/View;

    move-result-object v5

    .line 4958
    :cond_0
    if-nez v5, :cond_4

    .line 4960
    const/4 v3, 0x0

    .line 4961
    .local v3, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    if-eqz p1, :cond_3

    .line 4962
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    .line 4963
    .local v4, "searchedComp":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    invoke-virtual {v6}, Lcom/android/launcher3/home/HomeLoader;->getAllAppItemInHome()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 4964
    .local v2, "i":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-object v7, v2, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v7, :cond_1

    invoke-virtual {v2}, Lcom/android/launcher3/common/base/item/ItemInfo;->getUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 4965
    iget-object v7, v2, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    .line 4966
    .local v0, "cn":Ljava/lang/String;
    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v2}, Lcom/android/launcher3/common/base/item/ItemInfo;->getUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher3/common/compat/UserHandleCompat;->getUser()Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v7, p2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 4967
    move-object v3, v2

    .line 4972
    .end local v0    # "cn":Ljava/lang/String;
    .end local v2    # "i":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/android/launcher3/common/base/item/ItemInfo;->isHiddenByUser()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 4973
    new-instance v1, Lcom/android/launcher3/common/stage/StageEntry;

    invoke-direct {v1}, Lcom/android/launcher3/common/stage/StageEntry;-><init>()V

    .line 4974
    .local v1, "data":Lcom/android/launcher3/common/stage/StageEntry;
    iput-boolean v8, v1, Lcom/android/launcher3/common/stage/StageEntry;->enableAnimation:Z

    .line 4975
    iput v8, v1, Lcom/android/launcher3/common/stage/StageEntry;->fromStage:I

    .line 4976
    const-string v6, "KEY_PICKER_MODE"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lcom/android/launcher3/common/stage/StageEntry;->putExtras(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4977
    const-string v6, "KEY_BOUNCED_ITEM"

    iget-object v7, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v7}, Lcom/android/launcher3/Launcher;->getSearchedApp()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lcom/android/launcher3/common/stage/StageEntry;->putExtras(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4978
    const-string v6, "KEY_BOUNCED_ITEM_USER"

    iget-object v7, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v7}, Lcom/android/launcher3/Launcher;->getSearchedAppUser()Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lcom/android/launcher3/common/stage/StageEntry;->putExtras(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4979
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v6

    const/4 v7, 0x6

    invoke-virtual {v6, v7, v1}, Lcom/android/launcher3/common/stage/StageManager;->startStage(ILcom/android/launcher3/common/stage/StageEntry;)V

    .line 4980
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v6, v9}, Lcom/android/launcher3/Launcher;->setSearchedApp(Ljava/lang/String;)V

    .line 4981
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v6, v9}, Lcom/android/launcher3/Launcher;->setSearchedAppUser(Landroid/os/UserHandle;)V

    .line 4997
    .end local v1    # "data":Lcom/android/launcher3/common/stage/StageEntry;
    .end local v3    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v4    # "searchedComp":Ljava/lang/String;
    :cond_3
    :goto_0
    return-void

    .line 4988
    :cond_4
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v6, :cond_6

    .line 4989
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 4990
    .local v3, "info":Lcom/android/launcher3/common/base/item/IconInfo;
    iget-wide v6, v3, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    const-wide/16 v8, -0x64

    cmp-long v6, v6, v8

    if-nez v6, :cond_5

    .line 4991
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    iget-wide v8, v3, Lcom/android/launcher3/common/base/item/IconInfo;->screenId:J

    invoke-virtual {v6, v8, v9}, Lcom/android/launcher3/home/Workspace;->snapToScreenId(J)V

    .line 4993
    :cond_5
    invoke-direct {p0, v5}, Lcom/android/launcher3/home/HomeController;->startBounceAnimationForSearchedApp(Landroid/view/View;)V

    goto :goto_0

    .line 4994
    .end local v3    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_6
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v6, :cond_3

    .line 4995
    invoke-direct {p0, v5, p1}, Lcom/android/launcher3/home/HomeController;->findAppInFolder(Landroid/view/View;Landroid/content/ComponentName;)V

    goto :goto_0
.end method

.method private getAdjustedInternalState(I)I
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 859
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mState:Lcom/android/launcher3/home/HomeController$State;

    invoke-static {v0}, Lcom/android/launcher3/home/HomeController$State;->access$300(Lcom/android/launcher3/home/HomeController$State;)I

    move-result p1

    .end local p1    # "value":I
    :cond_0
    return p1
.end method

.method private getAllCellLayoutChildren()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/view/CellLayoutChildren;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2513
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2514
    .local v0, "childrenLayouts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/view/CellLayoutChildren;>;"
    const/4 v2, 0x0

    .line 2516
    .local v2, "screenCount":I
    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    if-eqz v3, :cond_0

    .line 2517
    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher3/home/Workspace;->getChildCount()I

    move-result v2

    .line 2520
    :cond_0
    const/4 v1, 0x0

    .local v1, "screen":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 2521
    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v3, v1}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v3}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2520
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2523
    :cond_1
    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    if-eqz v3, :cond_2

    .line 2524
    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v3}, Lcom/android/launcher3/home/Hotseat;->getLayout()Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2526
    :cond_2
    return-object v0
.end method

.method private getFirstMatch(Lcom/android/launcher3/common/base/item/ItemOperator;)Landroid/view/View;
    .locals 3
    .param p1, "operator"    # Lcom/android/launcher3/common/base/item/ItemOperator;

    .prologue
    const/4 v2, 0x0

    .line 2458
    const/4 v1, 0x1

    new-array v0, v1, [Landroid/view/View;

    .line 2459
    .local v0, "value":[Landroid/view/View;
    new-instance v1, Lcom/android/launcher3/home/HomeController$18;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/launcher3/home/HomeController$18;-><init>(Lcom/android/launcher3/home/HomeController;Lcom/android/launcher3/common/base/item/ItemOperator;[Landroid/view/View;)V

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/home/HomeController;->mapOverItems(ZLcom/android/launcher3/common/base/item/ItemOperator;)V

    .line 2469
    aget-object v1, v0, v2

    return-object v1
.end method

.method private getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher3/common/base/view/CellLayout;
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2378
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    if-eqz v2, :cond_1

    .line 2379
    invoke-direct {p0}, Lcom/android/launcher3/home/HomeController;->getWorkspaceAndHotseatCellLayouts()Ljava/util/ArrayList;

    move-result-object v1

    .line 2380
    .local v1, "layouts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/view/CellLayout;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 2381
    .local v0, "layout":Lcom/android/launcher3/common/base/view/CellLayout;
    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->indexOfChild(Landroid/view/View;)I

    move-result v3

    const/4 v4, -0x1

    if-le v3, v4, :cond_0

    .line 2386
    .end local v0    # "layout":Lcom/android/launcher3/common/base/view/CellLayout;
    .end local v1    # "layouts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/view/CellLayout;>;"
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getTargetView(Ljava/util/ArrayList;)Landroid/view/View;
    .locals 22
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
    .line 4322
    .local p1, "appsViewList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/16 v17, 0x1

    .line 4323
    .local v17, "isItemInFolder":Z
    const/4 v5, 0x0

    .line 4324
    .local v5, "targetView":Landroid/view/View;
    const/16 v19, 0x0

    .line 4326
    .local v19, "targetItem":Lcom/android/launcher3/common/base/item/ItemInfo;
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v16, v4, -0x1

    .local v16, "i":I
    :goto_0
    if-ltz v16, :cond_0

    .line 4327
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "targetView":Landroid/view/View;
    check-cast v5, Landroid/view/View;

    .line 4328
    .restart local v5    # "targetView":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v19

    .end local v19    # "targetItem":Lcom/android/launcher3/common/base/item/ItemInfo;
    check-cast v19, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 4329
    .restart local v19    # "targetItem":Lcom/android/launcher3/common/base/item/ItemInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/HomeController;->isItemInFolder(Lcom/android/launcher3/common/base/item/ItemInfo;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 4330
    const/16 v17, 0x0

    .line 4335
    :cond_0
    if-eqz v17, :cond_1

    .line 4336
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/HomeController;->removeHomeItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 4338
    const/4 v4, 0x2

    new-array v14, v4, [I

    .line 4339
    .local v14, "cellXY":[I
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/launcher3/home/HomeController;->findEmptyCell([I)J

    move-result-wide v20

    .line 4341
    .local v20, "screenId":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-wide/from16 v0, v20

    invoke-virtual {v4, v0, v1}, Lcom/android/launcher3/home/Workspace;->getScreenWithId(J)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v15

    .line 4342
    .local v15, "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    const-wide/16 v6, -0x64

    move-object/from16 v0, v19

    iput-wide v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    .line 4344
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/HomeController;->mHomeBindController:Lcom/android/launcher3/home/HomeBindController;

    check-cast v19, Lcom/android/launcher3/common/base/item/IconInfo;

    .end local v19    # "targetItem":Lcom/android/launcher3/common/base/item/ItemInfo;
    move-object/from16 v0, v19

    invoke-virtual {v4, v15, v0}, Lcom/android/launcher3/home/HomeBindController;->createShortcut(Landroid/view/ViewGroup;Lcom/android/launcher3/common/base/item/IconInfo;)Landroid/view/View;

    move-result-object v5

    .line 4345
    if-eqz v5, :cond_1

    .line 4346
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 4347
    .local v18, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    const/4 v4, 0x0

    aget v4, v14, v4

    move-object/from16 v0, v18

    iput v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    .line 4348
    const/4 v4, 0x1

    aget v4, v14, v4

    move-object/from16 v0, v18

    iput v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    .line 4349
    move-wide/from16 v0, v20

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    .line 4351
    const-wide/16 v6, -0x64

    move-object/from16 v0, v18

    iget-wide v8, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    move-object/from16 v0, v18

    iget v10, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    move-object/from16 v0, v18

    iget v11, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    move-object/from16 v0, v18

    iget v12, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    move-object/from16 v0, v18

    iget v13, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v13}, Lcom/android/launcher3/home/HomeController;->addInScreen(Landroid/view/View;JJIIII)V

    .line 4356
    .end local v14    # "cellXY":[I
    .end local v15    # "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    .end local v18    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v20    # "screenId":J
    :cond_1
    return-object v5

    .line 4326
    .restart local v19    # "targetItem":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_2
    add-int/lit8 v16, v16, -0x1

    goto/16 :goto_0
.end method

.method private getViewForTag(Ljava/lang/Object;)Landroid/view/View;
    .locals 1
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 2424
    new-instance v0, Lcom/android/launcher3/home/HomeController$15;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/home/HomeController$15;-><init>(Lcom/android/launcher3/home/HomeController;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/android/launcher3/home/HomeController;->getFirstMatch(Lcom/android/launcher3/common/base/item/ItemOperator;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private getWidgetForAppWidgetId(I)Lcom/android/launcher3/home/LauncherAppWidgetHostView;
    .locals 1
    .param p1, "appWidgetId"    # I

    .prologue
    .line 2434
    new-instance v0, Lcom/android/launcher3/home/HomeController$16;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/home/HomeController$16;-><init>(Lcom/android/launcher3/home/HomeController;I)V

    invoke-direct {p0, v0}, Lcom/android/launcher3/home/HomeController;->getFirstMatch(Lcom/android/launcher3/common/base/item/ItemOperator;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    return-object v0
.end method

.method private getWorkspaceAndHotseatCellLayouts()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/view/CellLayout;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2390
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2391
    .local v0, "layouts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/view/CellLayout;>;"
    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher3/home/Workspace;->getChildCount()I

    move-result v2

    .line 2392
    .local v2, "screenCount":I
    const/4 v1, 0x0

    .local v1, "screen":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 2393
    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v3, v1}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2392
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2396
    :cond_0
    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    if-eqz v3, :cond_1

    .line 2397
    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v3}, Lcom/android/launcher3/home/Hotseat;->getLayout()Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2399
    :cond_1
    return-object v0
.end method

.method private mapOverItems(ZLcom/android/launcher3/common/base/item/ItemOperator;)V
    .locals 12
    .param p1, "recurse"    # Z
    .param p2, "op"    # Lcom/android/launcher3/common/base/item/ItemOperator;

    .prologue
    .line 2479
    invoke-direct {p0}, Lcom/android/launcher3/home/HomeController;->getAllCellLayoutChildren()Ljava/util/ArrayList;

    move-result-object v2

    .line 2480
    .local v2, "containers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/view/CellLayoutChildren;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    .line 2482
    .local v1, "container":Lcom/android/launcher3/common/base/view/CellLayoutChildren;
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v7

    .line 2483
    .local v7, "itemCount":I
    const/4 v8, 0x0

    .local v8, "itemIdx":I
    :goto_0
    if-ge v8, v7, :cond_0

    .line 2484
    invoke-virtual {v1, v8}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 2485
    .local v6, "item":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    instance-of v10, v10, Lcom/android/launcher3/common/base/item/ItemInfo;

    if-eqz v10, :cond_4

    .line 2486
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 2487
    .local v5, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    if-eqz p1, :cond_3

    instance-of v10, v5, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v10, :cond_3

    instance-of v10, v6, Lcom/android/launcher3/folder/view/FolderIconView;

    if-eqz v10, :cond_3

    move-object v3, v6

    .line 2488
    check-cast v3, Lcom/android/launcher3/folder/view/FolderIconView;

    .line 2489
    .local v3, "folder":Lcom/android/launcher3/folder/view/FolderIconView;
    invoke-virtual {v3}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderView()Lcom/android/launcher3/folder/view/FolderView;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/launcher3/folder/view/FolderView;->getItemsInReadingOrder()Ljava/util/ArrayList;

    move-result-object v4

    .line 2491
    .local v4, "folderChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2492
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    check-cast v5, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 2493
    .restart local v5    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    invoke-interface {p2, v5, v0, v3}, Lcom/android/launcher3/common/base/item/ItemOperator;->evaluate(Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;Landroid/view/View;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 2505
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "container":Lcom/android/launcher3/common/base/view/CellLayoutChildren;
    .end local v3    # "folder":Lcom/android/launcher3/folder/view/FolderIconView;
    .end local v4    # "folderChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v5    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v6    # "item":Landroid/view/View;
    .end local v7    # "itemCount":I
    .end local v8    # "itemIdx":I
    :cond_2
    return-void

    .line 2498
    .restart local v1    # "container":Lcom/android/launcher3/common/base/view/CellLayoutChildren;
    .restart local v5    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    .restart local v6    # "item":Landroid/view/View;
    .restart local v7    # "itemCount":I
    .restart local v8    # "itemIdx":I
    :cond_3
    const/4 v10, 0x0

    invoke-interface {p2, v5, v6, v10}, Lcom/android/launcher3/common/base/item/ItemOperator;->evaluate(Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;Landroid/view/View;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 2483
    .end local v5    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_0
.end method

.method private modifyItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJII)V
    .locals 12
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;
    .param p2, "container"    # J
    .param p4, "screenId"    # J
    .param p6, "cellX"    # I
    .param p7, "cellY"    # I

    .prologue
    .line 3503
    const/4 v8, -0x1

    const/4 v9, -0x1

    iget v10, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->hidden:I

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide/from16 v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v10}, Lcom/android/launcher3/home/HomeController;->modifyItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJIIIII)V

    .line 3504
    return-void
.end method

.method private modifyItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJIIIII)V
    .locals 10
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;
    .param p2, "container"    # J
    .param p4, "screenId"    # J
    .param p6, "cellX"    # I
    .param p7, "cellY"    # I
    .param p8, "spanX"    # I
    .param p9, "spanY"    # I
    .param p10, "hidden"    # I

    .prologue
    .line 3513
    iget v3, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    move/from16 v0, p7

    if-ne v3, v0, :cond_0

    iget v3, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    move/from16 v0, p6

    if-eq v3, v0, :cond_1

    .line 3514
    :cond_0
    instance-of v3, p1, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    if-eqz v3, :cond_4

    .line 3515
    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v3

    const-string v4, "IWAR"

    const-string v5, "Home_Widget_Longpress"

    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertLogging(Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 3523
    :cond_1
    :goto_0
    iput-wide p2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    .line 3524
    move/from16 v0, p6

    iput v0, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    .line 3525
    move/from16 v0, p7

    iput v0, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    .line 3526
    const/4 v3, -0x1

    move/from16 v0, p8

    if-le v0, v3, :cond_2

    const/4 v3, -0x1

    move/from16 v0, p9

    if-le v0, v3, :cond_2

    .line 3527
    move/from16 v0, p8

    iput v0, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    .line 3528
    move/from16 v0, p9

    iput v0, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    .line 3533
    :cond_2
    const-wide/16 v4, 0x0

    cmp-long v3, p4, v4

    if-gez v3, :cond_5

    const-wide/16 v4, -0x65

    cmp-long v3, p2, v4

    if-nez v3, :cond_5

    .line 3534
    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    move/from16 v0, p6

    move/from16 v1, p7

    invoke-virtual {v3, v0, v1}, Lcom/android/launcher3/home/Hotseat;->getOrderInHotseat(II)I

    move-result v3

    int-to-long v4, v3

    iput-wide v4, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    .line 3539
    :goto_1
    move/from16 v0, p10

    iput v0, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->hidden:I

    .line 3541
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 3543
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "container"

    iget-wide v4, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3544
    const-string v3, "cellX"

    iget v4, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3545
    const-string v3, "cellY"

    iget v4, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3546
    const-string v3, "rank"

    iget v4, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3547
    const-string v3, "screen"

    iget-wide v4, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3548
    const-string v3, "hidden"

    iget v4, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->hidden:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3550
    const/4 v3, -0x1

    move/from16 v0, p8

    if-le v0, v3, :cond_3

    const/4 v3, -0x1

    move/from16 v0, p9

    if-le v0, v3, :cond_3

    .line 3551
    const-string v3, "spanX"

    iget v4, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3552
    const-string v3, "spanY"

    iget v4, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3555
    :cond_3
    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    invoke-virtual {v3, v2, p1}, Lcom/android/launcher3/common/model/FavoritesUpdater;->updateItem(Landroid/content/ContentValues;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 3556
    return-void

    .line 3518
    .end local v2    # "values":Landroid/content/ContentValues;
    :cond_4
    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v3

    const-string v4, "IWAR"

    const-string v5, "Home_Icon_Longpress"

    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertLogging(Ljava/lang/String;Ljava/lang/String;JZ)V

    goto/16 :goto_0

    .line 3536
    :cond_5
    iput-wide p4, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    goto/16 :goto_1
.end method

.method private moveFolderItemsToHome(Ljava/util/ArrayList;)I
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p1, "folderContents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 2822
    const/4 v4, 0x0

    .line 2823
    .local v4, "moveToScreen":I
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v6}, Lcom/android/launcher3/home/Workspace;->getChildCount()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .line 2825
    .local v1, "count":I
    move v3, v1

    .local v3, "index":I
    :goto_0
    if-lez v3, :cond_2

    .line 2826
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v6, v3}, Lcom/android/launcher3/home/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 2827
    .local v0, "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    if-nez v0, :cond_1

    .line 2825
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 2831
    :cond_1
    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v6

    if-lez v6, :cond_0

    .line 2836
    .end local v0    # "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 2837
    .local v2, "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    const/4 v7, 0x2

    new-array v5, v7, [I

    .line 2838
    .local v5, "targetCell":[I
    const-wide/16 v8, -0x64

    iput-wide v8, v2, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    .line 2839
    invoke-direct {p0, v5, v3, v11}, Lcom/android/launcher3/home/HomeController;->findEmptyCell([IIZ)J

    move-result-wide v8

    iput-wide v8, v2, Lcom/android/launcher3/common/base/item/IconInfo;->screenId:J

    .line 2840
    aget v7, v5, v10

    iput v7, v2, Lcom/android/launcher3/common/base/item/IconInfo;->cellX:I

    .line 2841
    aget v7, v5, v11

    iput v7, v2, Lcom/android/launcher3/common/base/item/IconInfo;->cellY:I

    .line 2842
    iget-object v7, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    iget-wide v8, v2, Lcom/android/launcher3/common/base/item/IconInfo;->screenId:J

    invoke-virtual {v7, v8, v9}, Lcom/android/launcher3/home/Workspace;->getPageIndexForScreenId(J)I

    move-result v4

    .line 2843
    invoke-virtual {p0, v2}, Lcom/android/launcher3/home/HomeController;->updateItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 2844
    iget-object v7, p0, Lcom/android/launcher3/home/HomeController;->mHomeBindController:Lcom/android/launcher3/home/HomeBindController;

    invoke-virtual {v7, v2, v10}, Lcom/android/launcher3/home/HomeBindController;->bindItem(Lcom/android/launcher3/common/base/item/ItemInfo;Z)V

    goto :goto_1

    .line 2846
    .end local v2    # "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v5    # "targetCell":[I
    :cond_3
    return v4
.end method

.method private onClickAppShortcut(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    .line 1645
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    .line 1646
    .local v9, "tag":Ljava/lang/Object;
    instance-of v1, v9, Lcom/android/launcher3/common/base/item/IconInfo;

    if-nez v1, :cond_0

    .line 1647
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Input must be a Shortcut"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    move-object v8, v9

    .line 1651
    check-cast v8, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 1653
    .local v8, "shortcut":Lcom/android/launcher3/common/base/item/IconInfo;
    iget-boolean v1, v8, Lcom/android/launcher3/common/base/item/IconInfo;->isAppsButton:Z

    if-eqz v1, :cond_1

    .line 1654
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v6}, Lcom/android/launcher3/Launcher;->showAppsView(ZZ)V

    .line 1655
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 1656
    .local v7, "res":Landroid/content/res/Resources;
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v1

    const v2, 0x7f0901bf

    invoke-virtual {v7, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v4, 0x7f09010f

    .line 1657
    invoke-virtual {v7, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "3"

    .line 1656
    invoke-virtual {v1, v2, v4, v5}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1689
    .end local v7    # "res":Landroid/content/res/Resources;
    :goto_0
    return-void

    .line 1661
    :cond_1
    iget v1, v8, Lcom/android/launcher3/common/base/item/IconInfo;->isDisabled:I

    if-eqz v1, :cond_4

    .line 1664
    iget v1, v8, Lcom/android/launcher3/common/base/item/IconInfo;->isDisabled:I

    and-int/lit8 v1, v1, -0x5

    and-int/lit8 v1, v1, -0x9

    if-eqz v1, :cond_4

    .line 1667
    iget-object v1, v8, Lcom/android/launcher3/common/base/item/IconInfo;->disabledMessage:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1669
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v2, v8, Lcom/android/launcher3/common/base/item/IconInfo;->disabledMessage:Ljava/lang/CharSequence;

    invoke-static {v1, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1673
    :cond_2
    const v0, 0x7f090011

    .line 1674
    .local v0, "error":I
    iget v1, v8, Lcom/android/launcher3/common/base/item/IconInfo;->isDisabled:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    .line 1675
    const v0, 0x7f0900b0

    .line 1677
    :cond_3
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v1, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1683
    .end local v0    # "error":I
    :cond_4
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/Launcher;->startAppShortcutOrInfoActivity(Landroid/view/View;)V

    .line 1685
    invoke-virtual {v8}, Lcom/android/launcher3/common/base/item/IconInfo;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 1686
    invoke-virtual {v8}, Lcom/android/launcher3/common/base/item/IconInfo;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1687
    .local v3, "extra":Ljava/lang/String;
    :goto_1
    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v1

    const-string v2, "HOIS"

    const-wide/16 v4, -0x1

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertLogging(Ljava/lang/String;Ljava/lang/String;JZ)V

    goto :goto_0

    .line 1686
    .end local v3    # "extra":Ljava/lang/String;
    :cond_5
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private onClickPendingWidget(Lcom/android/launcher3/home/PendingAppWidgetHostView;)V
    .locals 9
    .param p1, "v"    # Lcom/android/launcher3/home/PendingAppWidgetHostView;

    .prologue
    .line 1692
    invoke-virtual {p1}, Lcom/android/launcher3/home/PendingAppWidgetHostView;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    .line 1693
    .local v6, "info":Lcom/android/launcher3/home/LauncherAppWidgetInfo;
    invoke-virtual {p1}, Lcom/android/launcher3/home/PendingAppWidgetHostView;->isReadyForClickSetup()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1694
    iget v8, v6, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->appWidgetId:I

    .line 1695
    .local v8, "widgetId":I
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mAppWidgetManager:Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;

    invoke-virtual {v0, v8}, Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    .line 1696
    .local v1, "appWidgetInfo":Landroid/appwidget/AppWidgetProviderInfo;
    if-eqz v1, :cond_0

    .line 1697
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0, v1}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->fromProviderInfo(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddWidgetInfo:Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    .line 1699
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-virtual {v0, v6}, Lcom/android/launcher3/common/base/item/ItemInfo;->copyFrom(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 1700
    iput v8, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddWidgetId:I

    .line 1702
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;

    move-result-object v0

    iget v2, v6, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->appWidgetId:I

    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v4, p0, Lcom/android/launcher3/home/HomeController;->mAppWidgetHost:Lcom/android/launcher3/home/LauncherAppWidgetHost;

    const/16 v5, 0xc

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;->startConfigActivity(Landroid/appwidget/AppWidgetProviderInfo;ILandroid/app/Activity;Landroid/appwidget/AppWidgetHost;I)V

    .line 1711
    .end local v1    # "appWidgetInfo":Landroid/appwidget/AppWidgetProviderInfo;
    .end local v8    # "widgetId":I
    :cond_0
    :goto_0
    return-void

    .line 1708
    :cond_1
    iget-object v0, v6, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 1709
    .local v7, "packageName":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v7}, Lcom/android/launcher3/LauncherModel;->getMarketIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-static {v0, p1, v2, v6}, Lcom/android/launcher3/Utilities;->startActivitySafely(Landroid/app/Activity;Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private preparePendingAddArgs(ILandroid/content/Intent;ILcom/android/launcher3/common/base/item/ItemInfo;)Lcom/android/launcher3/home/HomeController$PendingAddArguments;
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "data"    # Landroid/content/Intent;
    .param p3, "appWidgetId"    # I
    .param p4, "info"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 1980
    new-instance v0, Lcom/android/launcher3/home/HomeController$PendingAddArguments;

    invoke-direct {v0}, Lcom/android/launcher3/home/HomeController$PendingAddArguments;-><init>()V

    .line 1981
    .local v0, "args":Lcom/android/launcher3/home/HomeController$PendingAddArguments;
    iput p1, v0, Lcom/android/launcher3/home/HomeController$PendingAddArguments;->requestCode:I

    .line 1982
    iput-object p2, v0, Lcom/android/launcher3/home/HomeController$PendingAddArguments;->intent:Landroid/content/Intent;

    .line 1983
    iget-wide v2, p4, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    iput-wide v2, v0, Lcom/android/launcher3/home/HomeController$PendingAddArguments;->container:J

    .line 1984
    iget-wide v2, p4, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    iput-wide v2, v0, Lcom/android/launcher3/home/HomeController$PendingAddArguments;->screenId:J

    .line 1985
    iget v1, p4, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    iput v1, v0, Lcom/android/launcher3/home/HomeController$PendingAddArguments;->cellX:I

    .line 1986
    iget v1, p4, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    iput v1, v0, Lcom/android/launcher3/home/HomeController$PendingAddArguments;->cellY:I

    .line 1987
    iput p3, v0, Lcom/android/launcher3/home/HomeController$PendingAddArguments;->appWidgetId:I

    .line 1988
    return-object v0
.end method

.method private processShortcutFromDrop(Landroid/content/ComponentName;JJ[I)V
    .locals 4
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "container"    # J
    .param p4, "screenId"    # J
    .param p6, "cell"    # [I

    .prologue
    const/4 v3, 0x1

    .line 2254
    invoke-direct {p0}, Lcom/android/launcher3/home/HomeController;->resetAddInfo()V

    .line 2255
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    iput-wide p2, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    .line 2256
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    iput-wide p4, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    .line 2257
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->dropPos:[I

    .line 2258
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    iput-object p1, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    .line 2260
    if-eqz p6, :cond_0

    .line 2261
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    const/4 v2, 0x0

    aget v2, p6, v2

    iput v2, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    .line 2262
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    aget v2, p6, v3

    iput v2, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    .line 2265
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CREATE_SHORTCUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2266
    .local v0, "createShortcutIntent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2267
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v1, v0, v3}, Lcom/android/launcher3/Utilities;->startActivityForResultSafely(Landroid/app/Activity;Landroid/content/Intent;I)V

    .line 2268
    return-void
.end method

.method private reinflateWidgetsIfNecessary()V
    .locals 10

    .prologue
    .line 2716
    iget-object v9, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v9}, Lcom/android/launcher3/home/Workspace;->getChildCount()I

    move-result v1

    .line 2717
    .local v1, "clCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 2718
    iget-object v9, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v9, v2}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 2719
    .local v0, "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v7

    .line 2720
    .local v7, "swc":Lcom/android/launcher3/common/base/view/CellLayoutChildren;
    invoke-virtual {v7}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v4

    .line 2721
    .local v4, "itemCount":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    if-ge v5, v4, :cond_1

    .line 2722
    invoke-virtual {v7, v5}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 2724
    .local v8, "v":Landroid/view/View;
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    instance-of v9, v9, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    if-eqz v9, :cond_0

    .line 2725
    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    .line 2726
    .local v3, "info":Lcom/android/launcher3/home/LauncherAppWidgetInfo;
    iget-object v6, v3, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    check-cast v6, Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    .line 2727
    .local v6, "lahv":Lcom/android/launcher3/home/LauncherAppWidgetHostView;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->isReinflateRequired()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 2728
    iget-object v9, p0, Lcom/android/launcher3/home/HomeController;->mHomeBindController:Lcom/android/launcher3/home/HomeBindController;

    invoke-virtual {v9, v3}, Lcom/android/launcher3/home/HomeBindController;->removeAppWidget(Lcom/android/launcher3/home/LauncherAppWidgetInfo;)V

    .line 2730
    invoke-virtual {v0, v6}, Lcom/android/launcher3/common/base/view/CellLayout;->removeView(Landroid/view/View;)V

    .line 2731
    iget-object v9, p0, Lcom/android/launcher3/home/HomeController;->mHomeBindController:Lcom/android/launcher3/home/HomeBindController;

    invoke-virtual {v9, v3}, Lcom/android/launcher3/home/HomeBindController;->bindAppWidget(Lcom/android/launcher3/home/LauncherAppWidgetInfo;)V

    .line 2721
    .end local v3    # "info":Lcom/android/launcher3/home/LauncherAppWidgetInfo;
    .end local v6    # "lahv":Lcom/android/launcher3/home/LauncherAppWidgetHostView;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 2717
    .end local v8    # "v":Landroid/view/View;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2736
    .end local v0    # "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    .end local v4    # "itemCount":I
    .end local v5    # "j":I
    .end local v7    # "swc":Lcom/android/launcher3/common/base/view/CellLayoutChildren;
    :cond_2
    return-void
.end method

.method private removeCheckedAppView(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4427
    .local p1, "appsViewList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4428
    .local v0, "appListChecked":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 4429
    .local v1, "checkedApp":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 4430
    .local v2, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    if-eqz v2, :cond_0

    .line 4434
    invoke-virtual {p0, v2}, Lcom/android/launcher3/home/HomeController;->removeHomeItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto :goto_0

    .line 4436
    .end local v1    # "checkedApp":Landroid/view/View;
    .end local v2    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_1
    return-void
.end method

.method private removeShortcut()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 4206
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v2}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->getCheckedAppsViewList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4207
    .local v0, "appsViewList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 4208
    new-instance v1, Lcom/android/launcher3/home/HomeController$35;

    invoke-direct {v1, p0, v0}, Lcom/android/launcher3/home/HomeController$35;-><init>(Lcom/android/launcher3/home/HomeController;Ljava/util/ArrayList;)V

    .line 4217
    .local v1, "r":Ljava/lang/Runnable;
    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/home/HomeController;->removeShortcutAnimation(Ljava/util/ArrayList;Ljava/lang/Runnable;)V

    .line 4219
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v3, :cond_0

    .line 4220
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->showToast(I)V

    .line 4223
    .end local v1    # "r":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method private removeShortcutAnimation(Ljava/util/ArrayList;Ljava/lang/Runnable;)V
    .locals 11
    .param p2, "r"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "appsViewList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x2

    .line 4226
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 4227
    .local v1, "animatorSet":Landroid/animation/AnimatorSet;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 4228
    .local v3, "v":Landroid/view/View;
    new-array v5, v8, [Landroid/animation/PropertyValuesHolder;

    sget-object v6, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v7, v8, [F

    fill-array-data v7, :array_0

    .line 4229
    invoke-static {v6, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    aput-object v6, v5, v9

    sget-object v6, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v7, v8, [F

    fill-array-data v7, :array_1

    .line 4230
    invoke-static {v6, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    aput-object v6, v5, v10

    .line 4228
    invoke-static {v3, v5}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 4231
    .local v2, "scaleAnimator":Landroid/animation/Animator;
    const/16 v5, 0x22

    invoke-static {v5}, Lcom/android/launcher3/util/ViInterpolator;->getInterploator(I)Landroid/view/animation/PathInterpolator;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 4232
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 4234
    new-array v5, v10, [Landroid/animation/PropertyValuesHolder;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v7, v8, [F

    fill-array-data v7, :array_2

    .line 4235
    invoke-static {v6, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    aput-object v6, v5, v9

    .line 4234
    invoke-static {v3, v5}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 4236
    .local v0, "alphaAnimator":Landroid/animation/Animator;
    const/16 v5, 0x1e

    invoke-static {v5}, Lcom/android/launcher3/util/ViInterpolator;->getInterploator(I)Landroid/view/animation/PathInterpolator;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 4237
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_0

    .line 4239
    .end local v0    # "alphaAnimator":Landroid/animation/Animator;
    .end local v2    # "scaleAnimator":Landroid/animation/Animator;
    .end local v3    # "v":Landroid/view/View;
    :cond_0
    const-wide/16 v4, 0xc8

    invoke-virtual {v1, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 4240
    new-instance v4, Lcom/android/launcher3/home/HomeController$36;

    invoke-direct {v4, p0, p2}, Lcom/android/launcher3/home/HomeController$36;-><init>(Lcom/android/launcher3/home/HomeController;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4246
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 4247
    return-void

    .line 4228
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data

    .line 4229
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data

    .line 4234
    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private requestBindAppWidget(ILandroid/content/Intent;)V
    .locals 7
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    const/16 v5, 0x1f4

    const/4 v0, -0x1

    .line 1883
    iput v0, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddWidgetId:I

    .line 1885
    new-instance v6, Lcom/android/launcher3/home/HomeController$8;

    invoke-direct {v6, p0}, Lcom/android/launcher3/home/HomeController$8;-><init>(Lcom/android/launcher3/home/HomeController;)V

    .line 1893
    .local v6, "exitDragStateRunnable":Ljava/lang/Runnable;
    if-eqz p2, :cond_1

    const-string v2, "appWidgetId"

    .line 1894
    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1895
    .local v1, "appWidgetId":I
    :goto_0
    if-nez p1, :cond_2

    .line 1896
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/home/HomeController;->completeTwoStageWidgetDrop(II)V

    .line 1897
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0, v6, v5}, Lcom/android/launcher3/home/Workspace;->removeExtraEmptyScreenDelayed(Ljava/lang/Runnable;I)V

    .line 1903
    :cond_0
    :goto_1
    return-void

    .end local v1    # "appWidgetId":I
    :cond_1
    move v1, v0

    .line 1894
    goto :goto_0

    .line 1899
    .restart local v1    # "appWidgetId":I
    :cond_2
    if-ne p1, v0, :cond_0

    .line 1900
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddWidgetInfo:Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/home/HomeController;->addAppWidgetImpl(ILcom/android/launcher3/common/base/item/ItemInfo;Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;I)V

    goto :goto_1
.end method

.method private requestCreateOrPickAppWidget(IILandroid/content/Intent;)V
    .locals 10
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 1831
    iget v3, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddWidgetId:I

    .line 1832
    .local v3, "pendingAddWidgetId":I
    const/4 v6, -0x1

    iput v6, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddWidgetId:I

    .line 1834
    if-eqz p3, :cond_2

    const-string v6, "appWidgetId"

    const/4 v7, -0x1

    invoke-virtual {p3, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 1836
    .local v5, "widgetId":I
    :goto_0
    if-gez v5, :cond_3

    .line 1837
    move v0, v3

    .line 1843
    .local v0, "appWidgetId":I
    :goto_1
    if-ltz v0, :cond_0

    if-nez p2, :cond_5

    .line 1844
    :cond_0
    const-string v6, "Launcher.HomeController"

    const-string v7, "Error: appWidgetId (EXTRA_APPWIDGET_ID) was not returned from the widget configuration activity."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1846
    const/4 v4, 0x0

    .line 1847
    .local v4, "result":I
    invoke-direct {p0, v4, v0}, Lcom/android/launcher3/home/HomeController;->completeTwoStageWidgetDrop(II)V

    .line 1848
    new-instance v2, Lcom/android/launcher3/home/HomeController$7;

    invoke-direct {v2, p0}, Lcom/android/launcher3/home/HomeController$7;-><init>(Lcom/android/launcher3/home/HomeController;)V

    .line 1854
    .local v2, "onComplete":Ljava/lang/Runnable;
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->isWorkspaceLocked()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1857
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    const-wide/16 v8, 0x1f4

    invoke-virtual {v6, v2, v8, v9}, Lcom/android/launcher3/home/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1879
    .end local v2    # "onComplete":Ljava/lang/Runnable;
    .end local v4    # "result":I
    :cond_1
    :goto_2
    return-void

    .line 1834
    .end local v0    # "appWidgetId":I
    .end local v5    # "widgetId":I
    :cond_2
    const/4 v5, -0x1

    goto :goto_0

    .line 1839
    .restart local v5    # "widgetId":I
    :cond_3
    move v0, v5

    .restart local v0    # "appWidgetId":I
    goto :goto_1

    .line 1859
    .restart local v2    # "onComplete":Ljava/lang/Runnable;
    .restart local v4    # "result":I
    :cond_4
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    const/16 v7, 0x1f4

    invoke-virtual {v6, v2, v7}, Lcom/android/launcher3/home/Workspace;->removeExtraEmptyScreenDelayed(Ljava/lang/Runnable;I)V

    goto :goto_2

    .line 1863
    .end local v2    # "onComplete":Ljava/lang/Runnable;
    .end local v4    # "result":I
    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->isWorkspaceLocked()Z

    move-result v6

    if-nez v6, :cond_7

    .line 1864
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-wide v6, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v8, -0x64

    cmp-long v6, v6, v8

    if-nez v6, :cond_6

    .line 1867
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-object v7, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-wide v8, v7, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    .line 1868
    invoke-direct {p0, v8, v9}, Lcom/android/launcher3/home/HomeController;->ensurePendingDropLayoutExists(J)J

    move-result-wide v8

    iput-wide v8, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    .line 1870
    :cond_6
    invoke-direct {p0, p2, v0}, Lcom/android/launcher3/home/HomeController;->completeTwoStageWidgetDrop(II)V

    .line 1871
    const/4 v6, -0x1

    if-eq p2, v6, :cond_1

    .line 1872
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    const/4 v7, 0x0

    const/16 v8, 0x1f4

    invoke-virtual {v6, v7, v8}, Lcom/android/launcher3/home/Workspace;->removeExtraEmptyScreenDelayed(Ljava/lang/Runnable;I)V

    goto :goto_2

    .line 1875
    :cond_7
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-direct {p0, p1, p3, v0, v6}, Lcom/android/launcher3/home/HomeController;->preparePendingAddArgs(ILandroid/content/Intent;ILcom/android/launcher3/common/base/item/ItemInfo;)Lcom/android/launcher3/home/HomeController$PendingAddArguments;

    move-result-object v1

    .line 1876
    .local v1, "args":Lcom/android/launcher3/home/HomeController$PendingAddArguments;
    sput-object v1, Lcom/android/launcher3/home/HomeController;->sPendingAddItem:Lcom/android/launcher3/home/HomeController$PendingAddArguments;

    goto :goto_2
.end method

.method private requestReconfigureAppWidget(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v2, -0x1

    .line 1907
    iget v1, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddWidgetId:I

    .line 1908
    .local v1, "pendingAddWidgetId":I
    iput v2, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddWidgetId:I

    .line 1910
    if-ne p2, v2, :cond_0

    .line 1912
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-direct {p0, p1, p3, v1, v2}, Lcom/android/launcher3/home/HomeController;->preparePendingAddArgs(ILandroid/content/Intent;ILcom/android/launcher3/common/base/item/ItemInfo;)Lcom/android/launcher3/home/HomeController$PendingAddArguments;

    move-result-object v0

    .line 1913
    .local v0, "args":Lcom/android/launcher3/home/HomeController$PendingAddArguments;
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->isWorkspaceLocked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1914
    sput-object v0, Lcom/android/launcher3/home/HomeController;->sPendingAddItem:Lcom/android/launcher3/home/HomeController$PendingAddArguments;

    .line 1919
    .end local v0    # "args":Lcom/android/launcher3/home/HomeController$PendingAddArguments;
    :cond_0
    :goto_0
    return-void

    .line 1916
    .restart local v0    # "args":Lcom/android/launcher3/home/HomeController$PendingAddArguments;
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/HomeController;->completeAdd(Lcom/android/launcher3/home/HomeController$PendingAddArguments;)J

    goto :goto_0
.end method

.method private resetAddInfo()V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 2180
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    iput-wide v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    .line 2181
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    iput-wide v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    .line 2182
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    iput v2, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    iput v2, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    .line 2183
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    iput v2, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    iput v2, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    .line 2184
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    const/4 v2, 0x1

    iput v2, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->minSpanY:I

    iput v2, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->minSpanX:I

    .line 2185
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    iput-object v3, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->dropPos:[I

    .line 2186
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    iput-object v3, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    .line 2187
    return-void
.end method

.method private showOutOfSpaceMessage()V
    .locals 3

    .prologue
    .line 2347
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    const v1, 0x7f09008c

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2348
    return-void
.end method

.method private startBounceAnimationForSearchedApp(Landroid/view/View;)V
    .locals 1
    .param p1, "bounceView"    # Landroid/view/View;

    .prologue
    .line 5031
    if-nez p1, :cond_0

    .line 5036
    :goto_0
    return-void

    .line 5034
    :cond_0
    new-instance v0, Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation;

    invoke-direct {v0, p1}, Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/launcher3/home/HomeController;->mBounceAnimation:Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation;

    .line 5035
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mBounceAnimation:Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation;

    invoke-virtual {v0}, Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation;->animate()V

    goto :goto_0
.end method

.method private startDragEmptyCell()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1541
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->isSwitchingState()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1557
    :cond_0
    :goto_0
    return-void

    .line 1545
    :cond_1
    iget-object v4, p0, Lcom/android/launcher3/home/HomeController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v4}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->getCheckedAppsViewList()Ljava/util/ArrayList;

    move-result-object v0

    .line 1546
    .local v0, "appsViewList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 1547
    invoke-direct {p0, v0}, Lcom/android/launcher3/home/HomeController;->getTargetView(Ljava/util/ArrayList;)Landroid/view/View;

    move-result-object v3

    .line 1548
    .local v3, "target":Landroid/view/View;
    if-eqz v3, :cond_0

    .line 1552
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 1553
    .local v2, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    new-instance v1, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    invoke-direct {v1, v3, v2}, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;-><init>(Landroid/view/View;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 1554
    .local v1, "cellInfo":Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;
    invoke-virtual {p0, v5}, Lcom/android/launcher3/home/HomeController;->enterDragState(Z)V

    .line 1555
    const/4 v4, 0x0

    invoke-virtual {p0, v1, v4, v5}, Lcom/android/launcher3/home/HomeController;->startDrag(Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;ZZ)Z

    goto :goto_0
.end method

.method private switchInternalStateChange(II)V
    .locals 7
    .param p1, "fromState"    # I
    .param p2, "toState"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x4

    const/4 v3, 0x5

    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 3644
    if-ne p1, p2, :cond_1

    .line 3755
    :cond_0
    :goto_0
    return-void

    .line 3648
    :cond_1
    if-eq p1, v1, :cond_2

    if-ne p1, v3, :cond_4

    :cond_2
    if-ne p2, v4, :cond_4

    .line 3649
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mZeroPageController:Lcom/android/launcher3/home/ZeroPageController;

    if-eqz v0, :cond_3

    .line 3650
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mZeroPageController:Lcom/android/launcher3/home/ZeroPageController;

    if-ne p1, v3, :cond_f

    move v0, v1

    :goto_1
    invoke-virtual {v2, v0}, Lcom/android/launcher3/home/ZeroPageController;->createCustomZeroPage(Z)V

    .line 3653
    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->createCustomPlusPage()V

    .line 3654
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0, v1, v6}, Lcom/android/launcher3/home/Workspace;->setVisibilityOnCustomLayout(ZZ)V

    .line 3655
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/Workspace;->showDefaultHomeIcon(Z)V

    .line 3656
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->checkAlignButtonEnabled()V

    .line 3659
    :cond_4
    if-ne p1, v4, :cond_7

    if-eq p2, v1, :cond_5

    if-eq p2, v5, :cond_5

    if-ne p2, v3, :cond_7

    .line 3661
    :cond_5
    if-eq p2, v1, :cond_6

    .line 3662
    invoke-virtual {p0, p2}, Lcom/android/launcher3/home/HomeController;->removeCustomPage(I)V

    .line 3665
    :cond_6
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    iget-boolean v0, p0, Lcom/android/launcher3/home/HomeController;->mEnabledCustomLayoutAnimation:Z

    if-eqz v0, :cond_10

    if-ne p2, v1, :cond_10

    move v0, v1

    :goto_2
    invoke-virtual {v2, v6, v6, v0}, Lcom/android/launcher3/home/Workspace;->setVisibilityOnCustomLayout(ZZZ)V

    .line 3667
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    iget-boolean v0, p0, Lcom/android/launcher3/home/HomeController;->mEnabledCustomLayoutAnimation:Z

    if-eqz v0, :cond_11

    if-ne p2, v1, :cond_11

    move v0, v1

    :goto_3
    invoke-virtual {v2, v0}, Lcom/android/launcher3/home/Workspace;->hideDefaultHomeIcon(Z)V

    .line 3671
    :cond_7
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->isStartedSwipeAffordanceAnim()Z

    move-result v0

    if-eqz v0, :cond_8

    if-ne p1, v1, :cond_8

    .line 3672
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mSwipeAffordance:Lcom/android/launcher3/home/SwipeAffordance;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/SwipeAffordance;->startCancelAnim(Z)V

    .line 3675
    :cond_8
    if-ne p2, v1, :cond_12

    .line 3676
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFestivalPage()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mFestivalPageController:Lcom/android/launcher3/home/FestivalPageController;

    if-eqz v0, :cond_9

    .line 3677
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mFestivalPageController:Lcom/android/launcher3/home/FestivalPageController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/FestivalPageController;->createCustomFestivalPage()V

    .line 3680
    :cond_9
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/android/launcher3/home/Workspace;->setCrosshairsVisibilityChilds(I)V

    .line 3682
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->hideHintPages()V

    .line 3683
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    new-instance v2, Lcom/android/launcher3/home/HomeController$33;

    invoke-direct {v2, p0, p1}, Lcom/android/launcher3/home/HomeController$33;-><init>(Lcom/android/launcher3/home/HomeController;I)V

    invoke-virtual {v0, v2}, Lcom/android/launcher3/home/Workspace;->removeExtraEmptyScreenOnDrop(Ljava/lang/Runnable;)V

    .line 3693
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mDropTargetBar:Lcom/android/launcher3/home/DropTargetBar;

    if-eqz v0, :cond_a

    .line 3694
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mDropTargetBar:Lcom/android/launcher3/home/DropTargetBar;

    invoke-virtual {v0, v6}, Lcom/android/launcher3/home/DropTargetBar;->setDropTargetBarVisible(Z)V

    .line 3697
    :cond_a
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->disableAndFlushExternalQueue()V

    .line 3698
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getTopViewChangedMessageHandler()Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;

    move-result-object v0

    .line 3699
    invoke-virtual {v0, v1}, Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;->sendMessage(I)V

    .line 3706
    :cond_b
    :goto_4
    if-eq p2, v5, :cond_c

    const/4 v0, 0x6

    if-eq p2, v0, :cond_c

    if-ne p2, v3, :cond_e

    .line 3707
    :cond_c
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0, v6}, Lcom/android/launcher3/home/Workspace;->setCrosshairsVisibilityChilds(I)V

    .line 3709
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mZeroPageController:Lcom/android/launcher3/home/ZeroPageController;

    if-eqz v0, :cond_d

    .line 3710
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mZeroPageController:Lcom/android/launcher3/home/ZeroPageController;

    invoke-virtual {v0, v6, v6}, Lcom/android/launcher3/home/ZeroPageController;->updatePageIndicatorForZeroPage(ZZ)V

    .line 3713
    :cond_d
    if-ne p2, v3, :cond_13

    .line 3714
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mScreenGridPanel:Lcom/android/launcher3/home/ScreenGridPanel;

    if-eqz v0, :cond_e

    .line 3715
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mScreenGridPanel:Lcom/android/launcher3/home/ScreenGridPanel;

    invoke-virtual {v0}, Lcom/android/launcher3/home/ScreenGridPanel;->updateButtonStatus()V

    .line 3717
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mScreenGridPanel:Lcom/android/launcher3/home/ScreenGridPanel;

    invoke-virtual {v0}, Lcom/android/launcher3/home/ScreenGridPanel;->getScreenGridTopConatiner()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 3718
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mScreenGridPanel:Lcom/android/launcher3/home/ScreenGridPanel;

    invoke-virtual {v0}, Lcom/android/launcher3/home/ScreenGridPanel;->getScreenGridTopConatiner()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 3729
    :cond_e
    :goto_5
    if-ne p2, v4, :cond_15

    .line 3730
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getTopViewChangedMessageHandler()Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;

    move-result-object v0

    .line 3731
    invoke-virtual {v0, v3}, Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;->sendMessage(I)V

    .line 3732
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->clearFocus()V

    .line 3733
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/Workspace;->setCrosshairsVisibilityChilds(I)V

    .line 3734
    iput-boolean v6, p0, Lcom/android/launcher3/home/HomeController;->mHomeDefaultIconClick:Z

    .line 3735
    iput-boolean v6, p0, Lcom/android/launcher3/home/HomeController;->mHomePageReorder:Z

    goto/16 :goto_0

    :cond_f
    move v0, v6

    .line 3650
    goto/16 :goto_1

    :cond_10
    move v0, v6

    .line 3665
    goto/16 :goto_2

    :cond_11
    move v0, v6

    .line 3667
    goto/16 :goto_3

    .line 3701
    :cond_12
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFestivalPage()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mFestivalPageController:Lcom/android/launcher3/home/FestivalPageController;

    if-eqz v0, :cond_b

    .line 3702
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mFestivalPageController:Lcom/android/launcher3/home/FestivalPageController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/FestivalPageController;->removeCustomFestivalPage()V

    goto :goto_4

    .line 3721
    :cond_13
    if-ne p2, v5, :cond_14

    .line 3722
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->addExtraEmptyScreenOnDrag()V

    .line 3723
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0, v6}, Lcom/android/launcher3/home/Workspace;->showHintPages(Z)V

    goto :goto_5

    .line 3724
    :cond_14
    const/4 v0, 0x6

    if-ne p2, v0, :cond_e

    .line 3725
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0, v6}, Lcom/android/launcher3/home/Workspace;->showHintPages(Z)V

    goto :goto_5

    .line 3736
    :cond_15
    if-ne p2, v3, :cond_16

    .line 3737
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getTopViewChangedMessageHandler()Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;

    move-result-object v0

    const/16 v1, 0x11

    .line 3738
    invoke-virtual {v0, v1}, Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;->sendMessage(I)V

    .line 3739
    invoke-direct {p0}, Lcom/android/launcher3/home/HomeController;->changePaddingforScreenGrid()V

    goto/16 :goto_0

    .line 3740
    :cond_16
    if-ne p1, v3, :cond_17

    .line 3741
    invoke-direct {p0}, Lcom/android/launcher3/home/HomeController;->changePaddingforScreenGrid()V

    goto/16 :goto_0

    .line 3742
    :cond_17
    if-ne p1, v4, :cond_0

    .line 3743
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getTopViewChangedMessageHandler()Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;

    move-result-object v0

    .line 3744
    invoke-virtual {v0, v1}, Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;->sendMessage(I)V

    .line 3745
    iget-boolean v0, p0, Lcom/android/launcher3/home/HomeController;->mHomeDefaultIconClick:Z

    if-eqz v0, :cond_18

    .line 3746
    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v1

    const-string v2, "HDIC"

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertLogging(Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 3750
    :cond_18
    iget-boolean v0, p0, Lcom/android/launcher3/home/HomeController;->mHomePageReorder:Z

    if-eqz v0, :cond_0

    .line 3751
    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v1

    const-string v2, "HPRO"

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertLogging(Ljava/lang/String;Ljava/lang/String;JZ)V

    goto/16 :goto_0
.end method

.method private updateBadgeItems()V
    .locals 1

    .prologue
    .line 4043
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mUpdateBadgeItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4044
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mUpdateBadgeItems:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/launcher3/home/HomeController;->updateBadgeItems(Ljava/util/ArrayList;)V

    .line 4045
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mUpdateBadgeItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4047
    :cond_0
    return-void
.end method

.method private updateBadgeItems(Ljava/util/ArrayList;)V
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
    .line 3189
    .local p1, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 3190
    .local v0, "updates":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    const/4 v1, 0x1

    new-instance v2, Lcom/android/launcher3/home/HomeController$29;

    invoke-direct {v2, p0, v0}, Lcom/android/launcher3/home/HomeController$29;-><init>(Lcom/android/launcher3/home/HomeController;Ljava/util/HashSet;)V

    invoke-direct {p0, v1, v2}, Lcom/android/launcher3/home/HomeController;->mapOverItems(ZLcom/android/launcher3/common/base/item/ItemOperator;)V

    .line 3210
    return-void
.end method

.method private updateCheckBox(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 4166
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/home/Workspace;->updateCheckBox(Z)V

    .line 4167
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/home/Hotseat;->updateCheckBox(Z)V

    .line 4168
    return-void
.end method

.method private updateHotseatByMoveToAppsPosition(F)V
    .locals 3
    .param p1, "overlayedRange"    # F

    .prologue
    .line 3952
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    if-eqz v2, :cond_1

    .line 3953
    iget v2, p0, Lcom/android/launcher3/home/HomeController;->mMoveToAppsPanelHeight:I

    if-nez v2, :cond_0

    .line 3954
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    invoke-virtual {v2}, Lcom/android/launcher3/common/tray/TrayManager;->getHeightOfTrayForDrag()I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/home/HomeController;->mMoveToAppsPanelHeight:I

    .line 3957
    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    invoke-virtual {v2}, Lcom/android/launcher3/common/tray/TrayManager;->getHeightOfTrayForDrag()I

    move-result v2

    int-to-float v2, v2

    div-float v0, p1, v2

    .line 3958
    .local v0, "factor":F
    iget v2, p0, Lcom/android/launcher3/home/HomeController;->mHotseatMoveRange:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    neg-float v1, v2

    .line 3959
    .local v1, "hotseatTranslationY":F
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/home/Hotseat;->setTranslationY(F)V

    .line 3961
    .end local v0    # "factor":F
    .end local v1    # "hotseatTranslationY":F
    :cond_1
    return-void
.end method

.method private updateLiveIcon(Lcom/android/launcher3/common/base/view/CellLayout;)V
    .locals 13
    .param p1, "cell"    # Lcom/android/launcher3/common/base/view/CellLayout;

    .prologue
    .line 4064
    if-nez p1, :cond_1

    .line 4114
    :cond_0
    return-void

    .line 4067
    :cond_1
    invoke-virtual {p1}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v0

    .line 4068
    .local v0, "cl":Lcom/android/launcher3/common/base/view/CellLayoutChildren;
    if-eqz v0, :cond_0

    .line 4071
    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v6

    .line 4072
    .local v6, "itemCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v6, :cond_0

    .line 4073
    invoke-virtual {v0, v2}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 4074
    .local v10, "view":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    instance-of v11, v11, Lcom/android/launcher3/common/base/item/ItemInfo;

    if-eqz v11, :cond_2

    .line 4075
    invoke-virtual {v10}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 4076
    .local v5, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    instance-of v11, v5, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v11, :cond_4

    move-object v11, v5

    .line 4077
    check-cast v11, Lcom/android/launcher3/common/base/item/IconInfo;

    iget-object v4, v11, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    .line 4078
    .local v4, "intent":Landroid/content/Intent;
    if-eqz v4, :cond_2

    .line 4079
    invoke-static {v4}, Lcom/android/launcher3/common/view/LiveIconManager;->isKnoxLiveIcon(Landroid/content/Intent;)Z

    move-result v11

    if-eqz v11, :cond_3

    move-object v11, v10

    .line 4080
    check-cast v11, Lcom/android/launcher3/common/view/IconView;

    check-cast v5, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 4081
    .end local v5    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/common/model/IconCache;

    move-result-object v12

    .line 4080
    invoke-virtual {v11, v5, v12}, Lcom/android/launcher3/common/view/IconView;->applyFromShortcutInfo(Lcom/android/launcher3/common/base/item/IconInfo;Lcom/android/launcher3/common/model/IconCache;)V

    .line 4082
    invoke-virtual {v10}, Landroid/view/View;->invalidate()V

    .line 4072
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .restart local v4    # "intent":Landroid/content/Intent;
    .restart local v5    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_3
    move-object v11, v5

    .line 4083
    check-cast v11, Lcom/android/launcher3/common/base/item/IconInfo;

    iget-object v11, v11, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v11}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    if-eqz v11, :cond_2

    move-object v11, v5

    .line 4084
    check-cast v11, Lcom/android/launcher3/common/base/item/IconInfo;

    iget-object v11, v11, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v11}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 4085
    .local v9, "packageName":Ljava/lang/String;
    invoke-static {v9}, Lcom/android/launcher3/common/view/LiveIconManager;->isLiveIconPackage(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    move-object v11, v10

    .line 4086
    check-cast v11, Lcom/android/launcher3/common/view/IconView;

    check-cast v5, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 4087
    .end local v5    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/common/model/IconCache;

    move-result-object v12

    .line 4086
    invoke-virtual {v11, v5, v12}, Lcom/android/launcher3/common/view/IconView;->applyFromShortcutInfo(Lcom/android/launcher3/common/base/item/IconInfo;Lcom/android/launcher3/common/model/IconCache;)V

    .line 4088
    invoke-virtual {v10}, Landroid/view/View;->invalidate()V

    goto :goto_1

    .line 4092
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v9    # "packageName":Ljava/lang/String;
    .restart local v5    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_4
    instance-of v11, v5, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v11, :cond_2

    .line 4093
    const/4 v8, 0x0

    .line 4094
    .local v8, "needToRefreshFolderIcon":Z
    invoke-virtual {v0, v5}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(Lcom/android/launcher3/common/base/item/ItemInfo;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/folder/view/FolderIconView;

    .line 4095
    .local v1, "folderIconView":Lcom/android/launcher3/folder/view/FolderIconView;
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_2
    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v11

    iget-object v11, v11, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v7, v11, :cond_6

    .line 4096
    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v11

    iget-object v11, v11, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 4097
    .local v3, "insideItem":Lcom/android/launcher3/common/base/item/IconInfo;
    if-eqz v3, :cond_7

    .line 4098
    invoke-virtual {v3}, Lcom/android/launcher3/common/base/item/IconInfo;->getIntent()Landroid/content/Intent;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    if-eqz v11, :cond_7

    .line 4099
    invoke-virtual {v3}, Lcom/android/launcher3/common/base/item/IconInfo;->getIntent()Landroid/content/Intent;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 4100
    .restart local v9    # "packageName":Ljava/lang/String;
    if-eqz v9, :cond_7

    iget v11, v3, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    const/16 v12, 0x9

    if-ge v11, v12, :cond_7

    .line 4101
    invoke-static {v9}, Lcom/android/launcher3/common/view/LiveIconManager;->isCalendarPackage(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_5

    iget-object v11, v3, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    invoke-static {v11}, Lcom/android/launcher3/common/view/IconView;->isKnoxShortcut(Landroid/content/Intent;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 4102
    :cond_5
    const/4 v8, 0x1

    .line 4108
    .end local v3    # "insideItem":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v9    # "packageName":Ljava/lang/String;
    :cond_6
    if-eqz v8, :cond_2

    .line 4109
    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderIconView;->refreshFolderIcon()V

    goto/16 :goto_1

    .line 4095
    .restart local v3    # "insideItem":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_2
.end method


# virtual methods
.method addFolderItemsToDb(Ljava/util/ArrayList;J)V
    .locals 4
    .param p2, "container"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 3489
    .local p1, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3495
    :cond_0
    :goto_0
    return-void

    .line 3491
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 3492
    .local v0, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    iput-wide p2, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    goto :goto_1

    .line 3494
    .end local v0    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/common/model/FavoritesUpdater;->addItems(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method addInScreen(Landroid/view/View;JJIIII)V
    .locals 12
    .param p1, "child"    # Landroid/view/View;
    .param p2, "container"    # J
    .param p4, "screenId"    # J
    .param p6, "x"    # I
    .param p7, "y"    # I
    .param p8, "spanX"    # I
    .param p9, "spanY"    # I

    .prologue
    .line 2622
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->isWorkspaceLocked()Z

    move-result v10

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide/from16 v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v11}, Lcom/android/launcher3/home/HomeController;->addInScreen(Landroid/view/View;JJIIIIZZ)V

    .line 2623
    return-void
.end method

.method addInScreenFromBind(Landroid/view/View;JJIIII)V
    .locals 12
    .param p1, "child"    # Landroid/view/View;
    .param p2, "container"    # J
    .param p4, "screenId"    # J
    .param p6, "x"    # I
    .param p7, "y"    # I
    .param p8, "spanX"    # I
    .param p9, "spanY"    # I

    .prologue
    .line 2618
    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide/from16 v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v11}, Lcom/android/launcher3/home/HomeController;->addInScreen(Landroid/view/View;JJIIIIZZ)V

    .line 2619
    return-void
.end method

.method addItemOnHome(Lcom/android/launcher3/common/base/item/ItemInfo;[IJ)V
    .locals 25
    .param p1, "itemInfo"    # Lcom/android/launcher3/common/base/item/ItemInfo;
    .param p2, "targetCell"    # [I
    .param p3, "screenId"    # J

    .prologue
    .line 3428
    const-wide/16 v22, -0x64

    .line 3429
    .local v22, "container":J
    const/4 v2, 0x0

    aget v10, p2, v2

    .line 3430
    .local v10, "cellX":I
    const/4 v2, 0x1

    aget v11, p2, v2

    .line 3431
    .local v11, "cellY":I
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getCloneItemEnabled()Z

    move-result v21

    .line 3432
    .local v21, "cloneable":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-wide/from16 v0, p3

    invoke-virtual {v4, v0, v1}, Lcom/android/launcher3/home/Workspace;->getPageIndexForScreenId(J)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 3435
    .local v3, "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    packed-switch v2, :pswitch_data_0

    .line 3447
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown item type: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3438
    :pswitch_0
    if-eqz v21, :cond_0

    check-cast p1, Lcom/android/launcher3/common/base/item/IconInfo;

    .end local p1    # "itemInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/common/base/item/IconInfo;->makeCloneInfo()Lcom/android/launcher3/common/base/item/IconInfo;

    move-result-object p1

    .line 3439
    .restart local p1    # "itemInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/HomeController;->mHomeBindController:Lcom/android/launcher3/home/HomeBindController;

    move-object/from16 v2, p1

    check-cast v2, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v4, v2}, Lcom/android/launcher3/home/HomeBindController;->createShortcut(Lcom/android/launcher3/common/base/item/IconInfo;)Landroid/view/View;

    move-result-object v5

    .line 3450
    .local v5, "view":Landroid/view/View;
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-wide/from16 v0, p3

    invoke-virtual {v4, v0, v1}, Lcom/android/launcher3/home/Workspace;->getPageIndexForScreenId(J)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/launcher3/home/Workspace;->snapToPageImmediately(I)V

    .line 3451
    const-wide/16 v6, -0x64

    const/4 v12, 0x1

    const/4 v13, 0x1

    move-object/from16 v4, p0

    move-wide/from16 v8, p3

    invoke-virtual/range {v4 .. v13}, Lcom/android/launcher3/home/HomeController;->addInScreen(Landroid/view/View;JJIIII)V

    .line 3452
    invoke-virtual {v3}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->measureChild(Landroid/view/View;)V

    .line 3454
    const-wide/16 v14, -0x64

    const/16 v20, -0x1

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-wide/from16 v16, p3

    move/from16 v18, v10

    move/from16 v19, v11

    invoke-virtual/range {v12 .. v20}, Lcom/android/launcher3/home/HomeController;->addOrMoveItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJIII)V

    .line 3455
    if-eqz v21, :cond_1

    move-object/from16 v0, p1

    instance-of v2, v0, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v2, :cond_1

    .line 3456
    new-instance v4, Ljava/util/ArrayList;

    move-object/from16 v2, p1

    check-cast v2, Lcom/android/launcher3/folder/FolderInfo;

    iget-object v2, v2, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6, v7}, Lcom/android/launcher3/home/HomeController;->addFolderItemsToDb(Ljava/util/ArrayList;J)V

    .line 3457
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    if-eqz v2, :cond_1

    move-object/from16 v2, p1

    check-cast v2, Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/FolderInfo;->isLocked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3458
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    check-cast p1, Lcom/android/launcher3/folder/FolderInfo;

    .end local p1    # "itemInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/launcher3/folder/folderlock/FolderLock;->addLockedRecords(Lcom/android/launcher3/folder/FolderInfo;)V

    .line 3461
    :cond_1
    return-void

    .line 3442
    .end local v5    # "view":Landroid/view/View;
    .restart local p1    # "itemInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    :pswitch_1
    if-eqz v21, :cond_2

    check-cast p1, Lcom/android/launcher3/folder/FolderInfo;

    .end local p1    # "itemInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/folder/FolderInfo;->makeCloneInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object p1

    .line 3443
    .restart local p1    # "itemInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v4, p1

    check-cast v4, Lcom/android/launcher3/folder/FolderInfo;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v5, p0

    invoke-static/range {v2 .. v8}, Lcom/android/launcher3/folder/view/FolderIconView;->fromXml(Lcom/android/launcher3/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher3/folder/FolderInfo;Lcom/android/launcher3/common/base/controller/ControllerBase;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;I)Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v5

    .line 3445
    .restart local v5    # "view":Landroid/view/View;
    goto/16 :goto_0

    .line 3435
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public addItemToDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJII)J
    .locals 2
    .param p1, "info"    # Lcom/android/launcher3/common/base/item/ItemInfo;
    .param p2, "container"    # J
    .param p4, "screenId"    # J
    .param p6, "cellX"    # I
    .param p7, "cellY"    # I

    .prologue
    .line 3476
    iput-wide p2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    .line 3477
    iput p6, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    .line 3478
    iput p7, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    .line 3480
    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-gez v0, :cond_0

    const-wide/16 v0, -0x65

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    .line 3481
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v0, p6, p7}, Lcom/android/launcher3/home/Hotseat;->getOrderInHotseat(II)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    .line 3485
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/model/FavoritesUpdater;->addItem(Lcom/android/launcher3/common/base/item/ItemInfo;)J

    move-result-wide v0

    return-wide v0

    .line 3483
    :cond_0
    iput-wide p4, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    goto :goto_0
.end method

.method public addItemToDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJI)V
    .locals 0
    .param p1, "info"    # Lcom/android/launcher3/common/base/item/ItemInfo;
    .param p2, "container"    # J
    .param p4, "screenId"    # J
    .param p6, "rank"    # I

    .prologue
    .line 3500
    return-void
.end method

.method public addOrMoveItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJIII)V
    .locals 4
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;
    .param p2, "container"    # J
    .param p4, "screenId"    # J
    .param p6, "cellX"    # I
    .param p7, "cellY"    # I
    .param p8, "rank"    # I

    .prologue
    const-wide/16 v2, -0x1

    .line 3594
    iget-wide v0, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 3596
    :cond_0
    invoke-virtual/range {p0 .. p7}, Lcom/android/launcher3/home/HomeController;->addItemToDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJII)J

    .line 3601
    :goto_0
    return-void

    .line 3599
    :cond_1
    invoke-direct/range {p0 .. p7}, Lcom/android/launcher3/home/HomeController;->modifyItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJII)V

    goto :goto_0
.end method

.method public addOrMoveItems(Ljava/util/ArrayList;JJ)V
    .locals 26
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
    .line 4826
    .local p1, "changedItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    move-object/from16 v14, p1

    .line 4827
    .local v14, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 4828
    .local v13, "itemMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;>;"
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_0
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_1

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 4829
    .local v12, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-wide v0, v12, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_0

    .line 4830
    iget-wide v0, v12, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v13, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4832
    :cond_0
    iget-wide v0, v12, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/ArrayList;

    .line 4833
    .local v17, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    check-cast v12, Lcom/android/launcher3/common/base/item/IconInfo;

    .end local v12    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4835
    .end local v17    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    :cond_1
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v20

    if-eqz v20, :cond_5

    .line 4836
    const/4 v9, 0x0

    .line 4837
    .local v9, "hasHotseatItems":Z
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_2
    :goto_1
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_4

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 4838
    .local v12, "item":Lcom/android/launcher3/common/base/item/IconInfo;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/launcher3/home/HomeController;->isItemInFolder(Lcom/android/launcher3/common/base/item/ItemInfo;)Z

    move-result v21

    if-nez v21, :cond_2

    .line 4839
    iget-wide v0, v12, Lcom/android/launcher3/common/base/item/IconInfo;->id:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/home/HomeController;->getHomescreenIconByItemId(J)Landroid/view/View;

    move-result-object v10

    .line 4840
    .local v10, "iconView":Landroid/view/View;
    if-eqz v10, :cond_2

    .line 4842
    iget-wide v0, v12, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    move-wide/from16 v22, v0

    const-wide/16 v24, -0x65

    cmp-long v21, v22, v24

    if-nez v21, :cond_3

    .line 4843
    const/4 v9, 0x1

    .line 4844
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/HomeController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher3/home/Hotseat;->getLayout()Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v4

    .line 4848
    .local v4, "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    :goto_2
    invoke-virtual {v4, v10}, Lcom/android/launcher3/common/base/view/CellLayout;->removeView(Landroid/view/View;)V

    goto :goto_1

    .line 4846
    .end local v4    # "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-object/from16 v22, v0

    iget-wide v0, v12, Lcom/android/launcher3/common/base/item/IconInfo;->screenId:J

    move-wide/from16 v24, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/home/Workspace;->getPageIndexForScreenId(J)I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/common/base/view/CellLayout;

    .restart local v4    # "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    goto :goto_2

    .line 4852
    .end local v4    # "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    .end local v10    # "iconView":Landroid/view/View;
    .end local v12    # "item":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_4
    if-eqz v9, :cond_5

    .line 4853
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/HomeController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher3/home/Hotseat;->getDragController()Lcom/android/launcher3/home/HotseatDragController;

    move-result-object v20

    const/16 v21, 0x0

    const/16 v22, 0x1

    invoke-virtual/range {v20 .. v22}, Lcom/android/launcher3/home/HotseatDragController;->removeEmptyCells(ZZ)V

    .line 4854
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/HomeController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Lcom/android/launcher3/home/Hotseat;->changeGrid(Z)V

    .line 4858
    .end local v9    # "hasHotseatItems":Z
    :cond_5
    invoke-virtual {v13}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v16

    .line 4859
    .local v16, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 4860
    .local v18, "updateItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 4861
    .local v5, "contentValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_6
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_9

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Long;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 4862
    .local v6, "containerId":J
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/ArrayList;

    .line 4863
    .local v15, "itemsInContainer":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v20

    if-eqz v20, :cond_7

    cmp-long v20, v6, p2

    if-eqz v20, :cond_7

    const-wide/16 v22, 0x0

    cmp-long v20, v6, v22

    if-lez v20, :cond_7

    .line 4864
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lcom/android/launcher3/home/HomeController;->getHomescreenIconByItemId(J)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/android/launcher3/folder/view/FolderIconView;

    .line 4865
    .local v10, "iconView":Lcom/android/launcher3/folder/view/FolderIconView;
    if-eqz v10, :cond_7

    .line 4866
    invoke-virtual {v10}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v8

    .line 4867
    .local v8, "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    invoke-virtual {v8, v15}, Lcom/android/launcher3/folder/FolderInfo;->remove(Ljava/util/ArrayList;)V

    .line 4871
    .end local v8    # "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    .end local v10    # "iconView":Lcom/android/launcher3/folder/view/FolderIconView;
    :cond_7
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_3
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_6

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 4872
    .restart local v12    # "item":Lcom/android/launcher3/common/base/item/IconInfo;
    move-object v11, v12

    .line 4873
    .local v11, "info":Lcom/android/launcher3/common/base/item/IconInfo;
    move-wide/from16 v0, p2

    iput-wide v0, v11, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    .line 4874
    move-wide/from16 v0, p4

    iput-wide v0, v11, Lcom/android/launcher3/common/base/item/IconInfo;->screenId:J

    .line 4875
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v22

    if-nez v22, :cond_8

    .line 4878
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/HomeController;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Lcom/android/launcher3/common/model/FavoritesUpdater;->addItem(Lcom/android/launcher3/common/base/item/ItemInfo;)J

    .line 4880
    :cond_8
    new-instance v19, Landroid/content/ContentValues;

    invoke-direct/range {v19 .. v19}, Landroid/content/ContentValues;-><init>()V

    .line 4881
    .local v19, "values":Landroid/content/ContentValues;
    const-string v22, "container"

    iget-wide v0, v11, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4882
    const-string v22, "rank"

    iget v0, v11, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4883
    const-string v22, "cellX"

    iget v0, v11, Lcom/android/launcher3/common/base/item/IconInfo;->cellX:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4884
    const-string v22, "cellY"

    iget v0, v11, Lcom/android/launcher3/common/base/item/IconInfo;->cellY:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4885
    const-string v22, "screen"

    iget-wide v0, v11, Lcom/android/launcher3/common/base/item/IconInfo;->screenId:J

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4886
    const-string v22, "hidden"

    iget v0, v11, Lcom/android/launcher3/common/base/item/IconInfo;->hidden:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4887
    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4888
    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 4891
    .end local v6    # "containerId":J
    .end local v11    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v12    # "item":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v15    # "itemsInContainer":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    .end local v19    # "values":Landroid/content/ContentValues;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/HomeController;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v5, v2}, Lcom/android/launcher3/common/model/FavoritesUpdater;->updateItemsInDatabaseHelper(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 4892
    return-void
.end method

.method addPendingItem(Lcom/android/launcher3/common/base/item/PendingAddItemInfo;JJ[III)V
    .locals 8
    .param p1, "info"    # Lcom/android/launcher3/common/base/item/PendingAddItemInfo;
    .param p2, "container"    # J
    .param p4, "screenId"    # J
    .param p6, "cell"    # [I
    .param p7, "spanX"    # I
    .param p8, "spanY"    # I

    .prologue
    .line 2235
    iget v0, p1, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->itemType:I

    packed-switch v0, :pswitch_data_0

    .line 2248
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown item type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->itemType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2238
    :pswitch_1
    const/4 v0, 0x2

    new-array v7, v0, [I

    .line 2239
    .local v7, "span":[I
    const/4 v0, 0x0

    aput p7, v7, v0

    .line 2240
    const/4 v0, 0x1

    aput p8, v7, v0

    move-object v1, p1

    .line 2241
    check-cast v1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/home/HomeController;->addAppWidgetFromDrop(Lcom/android/launcher3/widget/PendingAddWidgetInfo;JJ[I[I)V

    .line 2250
    .end local v7    # "span":[I
    :goto_0
    return-void

    .line 2245
    :pswitch_2
    iget-object v1, p1, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->componentName:Landroid/content/ComponentName;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/home/HomeController;->processShortcutFromDrop(Landroid/content/ComponentName;JJ[I)V

    goto :goto_0

    .line 2235
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public addShortcutToHome(Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 7
    .param p1, "itemInfo"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 3407
    const/4 v6, 0x2

    new-array v3, v6, [I

    .line 3409
    .local v3, "targetCell":[I
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v6}, Lcom/android/launcher3/home/Workspace;->getChildCount()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .line 3411
    .local v1, "count":I
    move v2, v1

    .local v2, "index":I
    :goto_0
    if-lez v2, :cond_2

    .line 3412
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v6, v2}, Lcom/android/launcher3/home/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 3413
    .local v0, "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    if-nez v0, :cond_1

    .line 3411
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 3417
    :cond_1
    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v6

    if-lez v6, :cond_0

    .line 3422
    .end local v0    # "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    :cond_2
    const/4 v6, 0x1

    invoke-direct {p0, v3, v2, v6}, Lcom/android/launcher3/home/HomeController;->findEmptyCell([IIZ)J

    move-result-wide v4

    .line 3424
    .local v4, "screenId":J
    invoke-virtual {p0, p1, v3, v4, v5}, Lcom/android/launcher3/home/HomeController;->addItemOnHome(Lcom/android/launcher3/common/base/item/ItemInfo;[IJ)V

    .line 3425
    return-void
.end method

.method applyGridChangeFinally()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 4486
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0021

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 4487
    .local v0, "delay":I
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mScreenGridHelper:Lcom/android/launcher3/home/ScreenGridHelper;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/home/ScreenGridHelper;->applyGridChange(I)V

    .line 4488
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->getScreenOrder()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/home/HomeController;->updateWorkspaceScreenOrder(Ljava/util/ArrayList;)V

    .line 4489
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    const/4 v2, 0x1

    invoke-virtual {v1, v3, v2}, Lcom/android/launcher3/home/Hotseat;->changeGrid(ZZ)V

    .line 4491
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/android/launcher3/home/HomeController$39;

    invoke-direct {v2, p0}, Lcom/android/launcher3/home/HomeController$39;-><init>(Lcom/android/launcher3/home/HomeController;)V

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4498
    invoke-virtual {p0, v3}, Lcom/android/launcher3/home/HomeController;->notifyCapture(Z)V

    .line 4499
    return-void
.end method

.method autoAlignItems(ZZ)Z
    .locals 1
    .param p1, "isUpward"    # Z
    .param p2, "checkToAlign"    # Z

    .prologue
    .line 4117
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher3/home/HomeController;->autoAlignItems(ZZI)Z

    move-result v0

    return v0
.end method

.method autoAlignItems(ZZI)Z
    .locals 8
    .param p1, "isUpward"    # Z
    .param p2, "checkToAlign"    # Z
    .param p3, "pageIndex"    # I

    .prologue
    const/4 v6, 0x0

    .line 4121
    if-nez p2, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->isPageMoving()Z

    move-result v1

    if-nez v1, :cond_3

    .line 4122
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1, p3}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/home/WorkspaceCellLayout;

    .line 4123
    .local v0, "currentPage":Lcom/android/launcher3/home/WorkspaceCellLayout;
    if-eqz v0, :cond_3

    .line 4124
    invoke-static {v0, p1, p2}, Lcom/android/launcher3/home/AutoAlignHelper;->autoAlignItems(Lcom/android/launcher3/common/base/view/CellLayout;ZZ)Z

    move-result v7

    .line 4125
    .local v7, "isAligned":Z
    if-eqz p2, :cond_1

    .line 4139
    .end local v0    # "currentPage":Lcom/android/launcher3/home/WorkspaceCellLayout;
    .end local v7    # "isAligned":Z
    :goto_0
    return v7

    .line 4127
    .restart local v0    # "currentPage":Lcom/android/launcher3/home/WorkspaceCellLayout;
    .restart local v7    # "isAligned":Z
    :cond_1
    if-eqz v7, :cond_3

    .line 4128
    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/HomeController;->updateItemLocationsInDatabase(Lcom/android/launcher3/common/base/view/CellLayout;)V

    .line 4129
    invoke-virtual {v0, p1}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setEnabledOnAlignButton(Z)V

    .line 4131
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher3/home/Workspace;->getDefaultPage()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 4132
    invoke-virtual {p0, v6}, Lcom/android/launcher3/home/HomeController;->notifyCapture(Z)V

    .line 4135
    :cond_2
    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v1

    const-string v2, "ATAN"

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertLogging(Ljava/lang/String;Ljava/lang/String;JZ)V

    .end local v0    # "currentPage":Lcom/android/launcher3/home/WorkspaceCellLayout;
    .end local v7    # "isAligned":Z
    :cond_3
    move v7, v6

    .line 4139
    goto :goto_0
.end method

.method public backupOriginalData()V
    .locals 1

    .prologue
    .line 4448
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mScreenGridHelper:Lcom/android/launcher3/home/ScreenGridHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/home/ScreenGridHelper;->backupOriginalData()V

    .line 4449
    return-void
.end method

.method canEnterResizeMode(Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/common/base/view/CellLayout;)Z
    .locals 1
    .param p1, "hostView"    # Landroid/appwidget/AppWidgetHostView;
    .param p2, "layout"    # Lcom/android/launcher3/common/base/view/CellLayout;

    .prologue
    .line 1307
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher3/home/HomeController;->canEnterResizeMode(Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/common/base/view/CellLayout;Z)Z

    move-result v0

    return v0
.end method

.method canEnterResizeMode(Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/common/base/view/CellLayout;Z)Z
    .locals 10
    .param p1, "hostView"    # Landroid/appwidget/AppWidgetHostView;
    .param p2, "layout"    # Lcom/android/launcher3/common/base/view/CellLayout;
    .param p3, "checkState"    # Z

    .prologue
    .line 1311
    if-eqz p3, :cond_1

    if-eqz p1, :cond_0

    iget-object v7, p0, Lcom/android/launcher3/home/HomeController;->mState:Lcom/android/launcher3/home/HomeController$State;

    const/4 v8, 0x2

    invoke-static {v7, v8}, Lcom/android/launcher3/home/HomeController$State;->access$100(Lcom/android/launcher3/home/HomeController$State;I)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1312
    :cond_0
    const/4 v7, 0x0

    .line 1356
    :goto_0
    return v7

    .line 1315
    :cond_1
    invoke-virtual {p1}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    .line 1316
    .local v2, "pInfo":Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;
    if-nez v2, :cond_2

    .line 1317
    const/4 v7, 0x0

    goto :goto_0

    .line 1320
    :cond_2
    invoke-virtual {v2}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->getSupportedSpans()Ljava/util/ArrayList;

    move-result-object v7

    if-eqz v7, :cond_6

    invoke-virtual {v2}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->getSupportedSpans()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_6

    .line 1321
    invoke-virtual {v2}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->resizeMode()I

    move-result v3

    .line 1323
    .local v3, "resizeMode":I
    :goto_1
    const/4 v7, 0x1

    if-ne v3, v7, :cond_3

    .line 1324
    invoke-virtual {v2}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->getMinSpanX()I

    move-result v7

    invoke-virtual {p2}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountX()I

    move-result v8

    if-ge v7, v8, :cond_5

    :cond_3
    const/4 v7, 0x2

    if-ne v3, v7, :cond_4

    .line 1326
    invoke-virtual {v2}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->getMinSpanY()I

    move-result v7

    invoke-virtual {p2}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountY()I

    move-result v8

    if-ge v7, v8, :cond_5

    .line 1327
    :cond_4
    invoke-virtual {v2}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->getMinSpanX()I

    move-result v7

    invoke-virtual {p2}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountX()I

    move-result v8

    if-lt v7, v8, :cond_7

    invoke-virtual {v2}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->getMinSpanY()I

    move-result v7

    invoke-virtual {p2}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountY()I

    move-result v8

    if-lt v7, v8, :cond_7

    .line 1328
    :cond_5
    const/4 v7, 0x0

    goto :goto_0

    .line 1321
    .end local v3    # "resizeMode":I
    :cond_6
    iget v3, v2, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->resizeMode:I

    goto :goto_1

    .line 1331
    .restart local v3    # "resizeMode":I
    :cond_7
    if-eqz v3, :cond_d

    .line 1332
    invoke-virtual {v2}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->getSupportedSpans()Ljava/util/ArrayList;

    move-result-object v6

    .line 1333
    .local v6, "supportSpans":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[I>;"
    if-eqz v6, :cond_c

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_c

    .line 1334
    invoke-virtual {v2}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->resizeMode()I

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_8

    .line 1335
    invoke-virtual {v2}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->resizeMode()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_c

    .line 1336
    :cond_8
    const/4 v5, 0x0

    .line 1337
    .local v5, "supportCount":I
    const/4 v7, 0x2

    new-array v0, v7, [I

    .line 1338
    .local v0, "cellXY":[I
    const/4 v7, 0x0

    invoke-virtual {p2}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountX()I

    move-result v8

    aput v8, v0, v7

    .line 1339
    const/4 v7, 0x1

    invoke-virtual {p2}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountY()I

    move-result v8

    aput v8, v0, v7

    .line 1340
    invoke-virtual {v2}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->resizeMode()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_a

    const/4 v1, 0x0

    .line 1342
    .local v1, "idx":I
    :goto_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_9
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    .line 1343
    .local v4, "span":[I
    aget v8, v4, v1

    aget v9, v0, v1

    if-gt v8, v9, :cond_9

    .line 1344
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 1340
    .end local v1    # "idx":I
    .end local v4    # "span":[I
    :cond_a
    const/4 v1, 0x1

    goto :goto_2

    .line 1348
    .restart local v1    # "idx":I
    :cond_b
    const/4 v7, 0x2

    if-ge v5, v7, :cond_c

    .line 1349
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 1353
    .end local v0    # "cellXY":[I
    .end local v1    # "idx":I
    .end local v5    # "supportCount":I
    :cond_c
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 1356
    .end local v6    # "supportSpans":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[I>;"
    :cond_d
    const/4 v7, 0x0

    goto/16 :goto_0
.end method

.method canMoveHometray()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 3925
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->isHomeStage()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mState:Lcom/android/launcher3/home/HomeController$State;

    invoke-static {v1, v0}, Lcom/android/launcher3/home/HomeController$State;->access$100(Lcom/android/launcher3/home/HomeController$State;I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mHomeAnimation:Lcom/android/launcher3/home/HomeTransitionAnimation;

    .line 3926
    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeTransitionAnimation;->isRunningOverviewAnimation()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->hasTargetView()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method canMoveVertically()Z
    .locals 3

    .prologue
    .line 5222
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v1}, Lcom/android/launcher3/Utilities;->getFullScreenHeight(Landroid/app/Activity;)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/launcher3/home/HomeController;->mStartSFinderRatio:F

    mul-float v0, v1, v2

    .line 5223
    .local v0, "threshold":F
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mScrollDeterminator:Lcom/android/launcher3/util/event/ScrollDeterminator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mScrollDeterminator:Lcom/android/launcher3/util/event/ScrollDeterminator;

    float-to-int v2, v0

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/event/ScrollDeterminator;->isVerticalScrollWithThreshold(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method canRunNewAppsAnimation()Z
    .locals 6

    .prologue
    .line 2549
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/launcher3/home/HomeController;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    invoke-virtual {v4}, Lcom/android/launcher3/common/drag/DragManager;->getLastGestureUpTime()J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 2550
    .local v0, "diff":J
    const-wide/16 v2, 0x1388

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public cancelGridChange()V
    .locals 1

    .prologue
    .line 4452
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mScreenGridHelper:Lcom/android/launcher3/home/ScreenGridHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/home/ScreenGridHelper;->restoreGridLayout()V

    .line 4453
    return-void
.end method

.method changeDialerApp()V
    .locals 30

    .prologue
    .line 4503
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/launcher3/Launcher;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v27

    const-string v28, "current_set_dialer_pref"

    const/16 v29, -0x1

    invoke-interface/range {v27 .. v29}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    .line 4504
    .local v10, "currentSetDialer":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v27, v0

    .line 4505
    invoke-virtual/range {v27 .. v27}, Lcom/android/launcher3/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string v28, "skt_phone20_settings"

    const/16 v29, 0x0

    invoke-static/range {v27 .. v29}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    .line 4507
    .local v11, "currentSystemSetDialer":I
    if-ne v10, v11, :cond_1

    .line 4612
    :cond_0
    :goto_0
    return-void

    .line 4511
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/launcher3/Launcher;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v16

    .line 4512
    .local v16, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v27, "current_set_dialer_pref"

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    invoke-interface {v0, v1, v11}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 4513
    invoke-interface/range {v16 .. v16}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 4516
    const/16 v19, 0x0

    .line 4518
    .local v19, "findHotseatItem":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/launcher3/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    .line 4520
    .local v9, "context":Landroid/content/Context;
    new-instance v12, Landroid/content/ComponentName;

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->getCustomerDialerPackageName()Ljava/lang/String;

    move-result-object v27

    .line 4521
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->getCustomerDialerClassName()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-direct {v12, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4522
    .local v12, "customerDialer":Landroid/content/ComponentName;
    new-instance v24, Landroid/content/ComponentName;

    invoke-static {v9}, Lcom/android/launcher3/LauncherFeature;->getOemDialerPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v27

    .line 4523
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->getOemDialerClassName()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4525
    .local v24, "oemDialer":Landroid/content/ComponentName;
    const/16 v27, 0x1

    move/from16 v0, v27

    if-ne v11, v0, :cond_3

    .line 4526
    const-string v27, "Launcher.HomeController"

    const-string v28, "OEM -> T phone app"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4527
    move-object v4, v12

    .line 4528
    .local v4, "addToHotseatCN":Landroid/content/ComponentName;
    move-object/from16 v5, v24

    .line 4536
    .local v5, "addToWorkspaceCN":Landroid/content/ComponentName;
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/HomeController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/launcher3/home/Hotseat;->getLayout()Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildrenAllItems()Ljava/util/ArrayList;

    move-result-object v20

    .line 4537
    .local v20, "hotseatItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportHomeModeChange()Z

    move-result v27

    if-eqz v27, :cond_4

    .line 4538
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v27

    if-eqz v27, :cond_4

    const/16 v22, 0x1

    .line 4540
    .local v22, "isHomeOnly":Z
    :goto_2
    if-eqz v22, :cond_7

    .line 4541
    const/16 v17, 0x0

    .line 4542
    .local v17, "existOemDialer":Z
    const/16 v18, 0x0

    .line 4543
    .local v18, "existTPhoneDialer":Z
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v27

    :cond_2
    :goto_3
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_6

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 4544
    .local v23, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    move-object/from16 v0, v23

    instance-of v0, v0, Lcom/android/launcher3/common/base/item/IconInfo;

    move/from16 v28, v0

    if-eqz v28, :cond_2

    move-object/from16 v21, v23

    .line 4547
    check-cast v21, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 4548
    .local v21, "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher3/common/base/item/IconInfo;->getIntent()Landroid/content/Intent;

    move-result-object v28

    if-eqz v28, :cond_2

    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher3/common/base/item/IconInfo;->getIntent()Landroid/content/Intent;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v28

    if-eqz v28, :cond_2

    .line 4549
    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher3/common/base/item/IconInfo;->getIntent()Landroid/content/Intent;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v8

    .line 4550
    .local v8, "className":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_5

    .line 4551
    const/16 v18, 0x1

    goto :goto_3

    .line 4530
    .end local v4    # "addToHotseatCN":Landroid/content/ComponentName;
    .end local v5    # "addToWorkspaceCN":Landroid/content/ComponentName;
    .end local v8    # "className":Ljava/lang/String;
    .end local v17    # "existOemDialer":Z
    .end local v18    # "existTPhoneDialer":Z
    .end local v20    # "hotseatItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .end local v21    # "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v22    # "isHomeOnly":Z
    .end local v23    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_3
    const-string v27, "Launcher.HomeController"

    const-string v28, "T -> OEM phone app"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4531
    move-object/from16 v4, v24

    .line 4532
    .restart local v4    # "addToHotseatCN":Landroid/content/ComponentName;
    move-object v5, v12

    .restart local v5    # "addToWorkspaceCN":Landroid/content/ComponentName;
    goto :goto_1

    .line 4538
    .restart local v20    # "hotseatItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    :cond_4
    const/16 v22, 0x0

    goto :goto_2

    .line 4552
    .restart local v8    # "className":Ljava/lang/String;
    .restart local v17    # "existOemDialer":Z
    .restart local v18    # "existTPhoneDialer":Z
    .restart local v21    # "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    .restart local v22    # "isHomeOnly":Z
    .restart local v23    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_5
    invoke-virtual/range {v24 .. v24}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_2

    .line 4553
    const/16 v17, 0x1

    goto :goto_3

    .line 4558
    .end local v8    # "className":Ljava/lang/String;
    .end local v21    # "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v23    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_6
    if-eqz v18, :cond_7

    if-eqz v17, :cond_7

    .line 4559
    const-string v27, "Launcher.HomeController"

    const-string v28, "changeDialerApp() - both items are exist in hotseat."

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 4564
    .end local v17    # "existOemDialer":Z
    .end local v18    # "existTPhoneDialer":Z
    :cond_7
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v27

    :cond_8
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_9

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 4565
    .restart local v23    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    move-object/from16 v0, v23

    instance-of v0, v0, Lcom/android/launcher3/common/base/item/IconInfo;

    move/from16 v28, v0

    if-eqz v28, :cond_8

    move-object/from16 v21, v23

    .line 4568
    check-cast v21, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 4569
    .restart local v21    # "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher3/common/base/item/IconInfo;->getIntent()Landroid/content/Intent;

    move-result-object v28

    if-eqz v28, :cond_8

    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher3/common/base/item/IconInfo;->getIntent()Landroid/content/Intent;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v28

    if-eqz v28, :cond_8

    .line 4570
    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v28

    .line 4571
    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher3/common/base/item/IconInfo;->getIntent()Landroid/content/Intent;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v29

    .line 4570
    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_8

    .line 4572
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v4}, Lcom/android/launcher3/home/HomeController;->changeItemInfo(Lcom/android/launcher3/common/base/item/IconInfo;Landroid/content/ComponentName;)V

    .line 4573
    const/16 v19, 0x1

    .line 4578
    .end local v21    # "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v23    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_9
    if-eqz v19, :cond_f

    .line 4580
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v27

    if-nez v27, :cond_a

    const/4 v7, 0x1

    .line 4582
    .local v7, "checkOnlyCustomerPage":Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/launcher3/home/Workspace;->getChildCount()I

    move-result v26

    .line 4583
    .local v26, "screenCount":I
    invoke-static {v9}, Lcom/android/launcher3/Utilities;->getCustomerPageKey(Landroid/content/Context;)J

    move-result-wide v14

    .line 4584
    .local v14, "customerPageId":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v14, v15}, Lcom/android/launcher3/home/Workspace;->getPageIndexForScreenId(J)I

    move-result v13

    .line 4585
    .local v13, "customerPageIndex":I
    if-eqz v7, :cond_b

    if-gez v13, :cond_b

    .line 4586
    const-string v27, "Launcher.HomeController"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "customer page is not exist. id "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " index "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 4580
    .end local v7    # "checkOnlyCustomerPage":Z
    .end local v13    # "customerPageIndex":I
    .end local v14    # "customerPageId":J
    .end local v26    # "screenCount":I
    :cond_a
    const/4 v7, 0x0

    goto :goto_4

    .line 4590
    .restart local v7    # "checkOnlyCustomerPage":Z
    .restart local v13    # "customerPageIndex":I
    .restart local v14    # "customerPageId":J
    .restart local v26    # "screenCount":I
    :cond_b
    const/16 v25, 0x0

    .local v25, "screen":I
    :goto_5
    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_0

    .line 4591
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-object/from16 v27, v0

    .line 4592
    move-object/from16 v0, v27

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual/range {v27 .. v27}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v6

    .line 4593
    .local v6, "cellLayoutChildren":Lcom/android/launcher3/common/base/view/CellLayoutChildren;
    if-eqz v7, :cond_d

    move/from16 v0, v25

    if-eq v0, v13, :cond_d

    .line 4590
    :cond_c
    add-int/lit8 v25, v25, 0x1

    goto :goto_5

    .line 4596
    :cond_d
    invoke-virtual {v6}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildrenAllItems()Ljava/util/ArrayList;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v27

    :cond_e
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_c

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 4597
    .restart local v23    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    move-object/from16 v0, v23

    instance-of v0, v0, Lcom/android/launcher3/common/base/item/IconInfo;

    move/from16 v28, v0

    if-eqz v28, :cond_e

    move-object/from16 v21, v23

    .line 4600
    check-cast v21, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 4601
    .restart local v21    # "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher3/common/base/item/IconInfo;->getIntent()Landroid/content/Intent;

    move-result-object v28

    if-eqz v28, :cond_e

    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher3/common/base/item/IconInfo;->getIntent()Landroid/content/Intent;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v28

    if-eqz v28, :cond_e

    .line 4602
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v28

    .line 4603
    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher3/common/base/item/IconInfo;->getIntent()Landroid/content/Intent;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v29

    .line 4602
    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_e

    .line 4604
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v5}, Lcom/android/launcher3/home/HomeController;->changeItemInfo(Lcom/android/launcher3/common/base/item/IconInfo;Landroid/content/ComponentName;)V

    goto/16 :goto_0

    .line 4610
    .end local v6    # "cellLayoutChildren":Lcom/android/launcher3/common/base/view/CellLayoutChildren;
    .end local v7    # "checkOnlyCustomerPage":Z
    .end local v13    # "customerPageIndex":I
    .end local v14    # "customerPageId":J
    .end local v21    # "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v23    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v25    # "screen":I
    .end local v26    # "screenCount":I
    :cond_f
    const-string v27, "Launcher.HomeController"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " are not in the hotseat"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method changeGrid(IIZ)V
    .locals 1
    .param p1, "cellX"    # I
    .param p2, "cellY"    # I
    .param p3, "animated"    # Z

    .prologue
    .line 4444
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mScreenGridHelper:Lcom/android/launcher3/home/ScreenGridHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/launcher3/home/ScreenGridHelper;->changeGrid(IIZ)V

    .line 4445
    return-void
.end method

.method public changeHomeScreenMode(Ljava/lang/String;Z)V
    .locals 6
    .param p1, "pref_key"    # Ljava/lang/String;
    .param p2, "startLoaderOnBackground"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 3604
    invoke-static {}, Lcom/android/launcher3/common/model/FavoritesProvider;->getInstance()Lcom/android/launcher3/common/model/FavoritesProvider;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    if-eqz v3, :cond_0

    .line 3605
    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3, p1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 3606
    .local v0, "HomeOnlySettingValue":Z
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v3

    if-ne v0, v3, :cond_1

    .line 3633
    .end local v0    # "HomeOnlySettingValue":Z
    :cond_0
    :goto_0
    return-void

    .line 3609
    .restart local v0    # "HomeOnlySettingValue":Z
    :cond_1
    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mZeroPageController:Lcom/android/launcher3/home/ZeroPageController;

    if-eqz v3, :cond_2

    .line 3610
    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mZeroPageController:Lcom/android/launcher3/home/ZeroPageController;

    invoke-virtual {v3, v5}, Lcom/android/launcher3/home/ZeroPageController;->removeCustomZeroPage(Z)V

    .line 3613
    :cond_2
    invoke-static {}, Lcom/android/launcher3/common/model/FavoritesProvider;->getInstance()Lcom/android/launcher3/common/model/FavoritesProvider;

    move-result-object v3

    invoke-virtual {v3, v5, v0}, Lcom/android/launcher3/common/model/FavoritesProvider;->switchTable(IZ)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3615
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/launcher3/LauncherAppState;->writeHomeOnlyModeEnabled(Z)V

    .line 3616
    const/4 v3, 0x2

    new-array v1, v3, [I

    .line 3617
    .local v1, "cellXY":[I
    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v3, v1}, Lcom/android/launcher3/Utilities;->loadCurrentGridSize(Landroid/content/Context;[I)V

    .line 3618
    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v3

    aget v4, v1, v4

    aget v5, v1, v5

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->setCurrentGrid(II)V

    .line 3620
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3621
    .local v2, "handler":Landroid/os/Handler;
    new-instance v3, Lcom/android/launcher3/home/HomeController$32;

    invoke-direct {v3, p0, v0, p2}, Lcom/android/launcher3/home/HomeController$32;-><init>(Lcom/android/launcher3/home/HomeController;ZZ)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method checkEdgeLightDisplayAvailability()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 5195
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 5196
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v4

    if-ne v4, p0, :cond_0

    move v0, v2

    .line 5199
    .local v0, "isHomeStage":Z
    :goto_0
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportQuickOption()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getDragMgr()Lcom/android/launcher3/common/drag/DragManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/common/drag/DragManager;->isQuickOptionShowing()Z

    move-result v4

    if-eqz v4, :cond_1

    move v1, v2

    .line 5201
    .local v1, "isQuickOptionShowing":Z
    :goto_1
    if-eqz v0, :cond_2

    iget-object v4, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 5202
    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->isPaused()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    .line 5203
    invoke-virtual {v4}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    .line 5204
    invoke-virtual {v4}, Lcom/android/launcher3/home/Workspace;->isPageMoving()Z

    move-result v4

    if-nez v4, :cond_2

    if-nez v1, :cond_2

    iget-object v4, p0, Lcom/android/launcher3/home/HomeController;->mState:Lcom/android/launcher3/home/HomeController$State;

    .line 5206
    invoke-static {v4, v2}, Lcom/android/launcher3/home/HomeController$State;->access$100(Lcom/android/launcher3/home/HomeController$State;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 5207
    invoke-static {}, Lcom/android/launcher3/home/ZeroPageController;->isMoving()Z

    move-result v4

    if-nez v4, :cond_2

    :goto_2
    return v2

    .end local v0    # "isHomeStage":Z
    .end local v1    # "isQuickOptionShowing":Z
    :cond_0
    move v0, v3

    .line 5196
    goto :goto_0

    .restart local v0    # "isHomeStage":Z
    :cond_1
    move v1, v3

    .line 5199
    goto :goto_1

    .restart local v1    # "isQuickOptionShowing":Z
    :cond_2
    move v2, v3

    .line 5207
    goto :goto_2
.end method

.method clearDropTargets()V
    .locals 2

    .prologue
    .line 2445
    const/4 v0, 0x0

    new-instance v1, Lcom/android/launcher3/home/HomeController$17;

    invoke-direct {v1, p0}, Lcom/android/launcher3/home/HomeController$17;-><init>(Lcom/android/launcher3/home/HomeController;)V

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/home/HomeController;->mapOverItems(ZLcom/android/launcher3/common/base/item/ItemOperator;)V

    .line 2455
    return-void
.end method

.method completeAdd(Lcom/android/launcher3/home/HomeController$PendingAddArguments;)J
    .locals 8
    .param p1, "args"    # Lcom/android/launcher3/home/HomeController$PendingAddArguments;

    .prologue
    const/4 v6, 0x0

    .line 1952
    iget-wide v4, p1, Lcom/android/launcher3/home/HomeController$PendingAddArguments;->screenId:J

    .line 1953
    .local v4, "screenId":J
    iget-wide v0, p1, Lcom/android/launcher3/home/HomeController$PendingAddArguments;->container:J

    const-wide/16 v2, -0x64

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1956
    iget-wide v0, p1, Lcom/android/launcher3/home/HomeController$PendingAddArguments;->screenId:J

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/home/HomeController;->ensurePendingDropLayoutExists(J)J

    move-result-wide v4

    .line 1959
    :cond_0
    iget v0, p1, Lcom/android/launcher3/home/HomeController$PendingAddArguments;->requestCode:I

    sparse-switch v0, :sswitch_data_0

    .line 1974
    :goto_0
    invoke-direct {p0}, Lcom/android/launcher3/home/HomeController;->resetAddInfo()V

    .line 1975
    return-wide v4

    .line 1961
    :sswitch_0
    iget-object v1, p1, Lcom/android/launcher3/home/HomeController$PendingAddArguments;->intent:Landroid/content/Intent;

    iget-wide v2, p1, Lcom/android/launcher3/home/HomeController$PendingAddArguments;->container:J

    iget v6, p1, Lcom/android/launcher3/home/HomeController$PendingAddArguments;->cellX:I

    iget v7, p1, Lcom/android/launcher3/home/HomeController$PendingAddArguments;->cellY:I

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/home/HomeController;->completeAddShortcut(Landroid/content/Intent;JJII)V

    goto :goto_0

    .line 1965
    :sswitch_1
    iget v1, p1, Lcom/android/launcher3/home/HomeController$PendingAddArguments;->appWidgetId:I

    iget-wide v2, p1, Lcom/android/launcher3/home/HomeController$PendingAddArguments;->container:J

    move-object v0, p0

    move-object v7, v6

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/home/HomeController;->completeAddAppWidget(IJJLandroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    goto :goto_0

    .line 1968
    :sswitch_2
    iget v0, p1, Lcom/android/launcher3/home/HomeController$PendingAddArguments;->appWidgetId:I

    invoke-direct {p0, v0}, Lcom/android/launcher3/home/HomeController;->completeRestoreAppWidget(I)V

    goto :goto_0

    .line 1959
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
        0xc -> :sswitch_2
    .end sparse-switch
.end method

.method createAndShowSwipeAffordance()V
    .locals 3

    .prologue
    .line 5045
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->findPageIndicator()Lcom/android/launcher3/common/view/PageIndicator;

    move-result-object v0

    .line 5046
    .local v0, "indicator":Lcom/android/launcher3/common/view/PageIndicator;
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mSwipeAffordance:Lcom/android/launcher3/home/SwipeAffordance;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 5047
    invoke-static {v1}, Lcom/android/launcher3/home/SwipeAffordance;->needToCreateAffordance(Lcom/android/launcher3/Launcher;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 5049
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    const v2, 0x7f11009d

    invoke-virtual {v1, v2}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/home/SwipeAffordance;

    iput-object v1, p0, Lcom/android/launcher3/home/HomeController;->mSwipeAffordance:Lcom/android/launcher3/home/SwipeAffordance;

    .line 5050
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mSwipeAffordance:Lcom/android/launcher3/home/SwipeAffordance;

    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1, v2, v0}, Lcom/android/launcher3/home/SwipeAffordance;->setup(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/common/view/PageIndicator;)V

    .line 5052
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mState:Lcom/android/launcher3/home/HomeController$State;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/launcher3/home/HomeController$State;->access$100(Lcom/android/launcher3/home/HomeController$State;I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->isHomeStage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5053
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mSwipeAffordance:Lcom/android/launcher3/home/SwipeAffordance;

    invoke-virtual {v1}, Lcom/android/launcher3/home/SwipeAffordance;->startAnim()V

    .line 5056
    :cond_0
    return-void
.end method

.method createNewAppBounceAnimation(Landroid/view/View;I)Landroid/animation/ValueAnimator;
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "i"    # I

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2530
    const/4 v1, 0x3

    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    const-string v2, "alpha"

    new-array v3, v4, [F

    aput v6, v3, v5

    .line 2531
    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "scaleX"

    new-array v3, v4, [F

    aput v6, v3, v5

    .line 2532
    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x2

    const-string v3, "scaleY"

    new-array v4, v4, [F

    aput v6, v4, v5

    .line 2533
    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    aput-object v3, v1, v2

    .line 2530
    invoke-static {p1, v1}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofPropertyValuesHolder(Landroid/view/View;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 2534
    .local v0, "bounceAnim":Landroid/animation/ValueAnimator;
    const-wide/16 v2, 0x1c2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2535
    mul-int/lit8 v1, p2, 0x55

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 2536
    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    const v2, 0x3fa66666    # 1.3f

    invoke-direct {v1, v2}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2537
    new-instance v1, Lcom/android/launcher3/home/HomeController$19;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/home/HomeController$19;-><init>(Lcom/android/launcher3/home/HomeController;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2545
    return-object v0
.end method

.method public deleteFolder(Lcom/android/launcher3/folder/FolderInfo;)V
    .locals 1
    .param p1, "folderInfo"    # Lcom/android/launcher3/folder/FolderInfo;

    .prologue
    .line 3366
    invoke-direct {p0, p1}, Lcom/android/launcher3/home/HomeController;->getViewForTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/home/HomeController;->removeHomeOrFolderItem(Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;)Z

    .line 3367
    return-void
.end method

.method public deleteItemFromDb(Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 1
    .param p1, "info"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 3317
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/model/FavoritesUpdater;->deleteItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 3318
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
    const/4 v6, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3894
    const/4 v2, 0x0

    .line 3895
    .local v2, "toBeChanged":Z
    iget-object v5, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->isHomeStage()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3897
    iget-object v5, p0, Lcom/android/launcher3/home/HomeController;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    if-eqz v5, :cond_1

    .line 3898
    iget-object v5, p0, Lcom/android/launcher3/home/HomeController;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    invoke-virtual {v5}, Lcom/android/launcher3/common/tray/TrayManager;->getTrayMovingRange()I

    move-result v0

    .line 3902
    .local v0, "range":I
    :goto_0
    cmpl-float v5, p2, v6

    if-lez v5, :cond_2

    move v1, v4

    .line 3903
    .local v1, "swipeDown":Z
    :goto_1
    cmpl-float v5, p2, v6

    if-nez v5, :cond_3

    .line 3904
    const/4 v2, 0x0

    .line 3913
    :goto_2
    if-eqz v2, :cond_0

    .line 3914
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v4

    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 3915
    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0901bf

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 3916
    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f09010f

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v1, :cond_b

    const-string v3, "2"

    .line 3914
    :goto_3
    invoke-virtual {v4, v5, v6, v3}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3920
    .end local v0    # "range":I
    .end local v1    # "swipeDown":Z
    :cond_0
    return v2

    .line 3900
    :cond_1
    iget-object v5, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v5}, Lcom/android/launcher3/Utilities;->getFullScreenHeight(Landroid/app/Activity;)I

    move-result v0

    .restart local v0    # "range":I
    goto :goto_0

    :cond_2
    move v1, v3

    .line 3902
    goto :goto_1

    .line 3905
    .restart local v1    # "swipeDown":Z
    :cond_3
    if-eqz v1, :cond_7

    .line 3906
    cmpg-float v5, p3, p4

    if-gez v5, :cond_4

    if-lez p1, :cond_4

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v5, p5, :cond_5

    .line 3907
    :cond_4
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v5, p5, :cond_6

    int-to-float v5, v0

    iget v6, p0, Lcom/android/launcher3/home/HomeController;->mPageSnapMovingRatioOnHome:F

    mul-float/2addr v5, v6

    cmpl-float v5, p2, v5

    if-ltz v5, :cond_6

    :cond_5
    move v2, v4

    :goto_4
    goto :goto_2

    :cond_6
    move v2, v3

    goto :goto_4

    .line 3909
    :cond_7
    cmpl-float v5, p3, p4

    if-lez v5, :cond_8

    if-gez p1, :cond_8

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v5, p5, :cond_9

    .line 3910
    :cond_8
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v5, p5, :cond_a

    neg-float v5, p2

    int-to-float v6, v0

    iget v7, p0, Lcom/android/launcher3/home/HomeController;->mPageSnapMovingRatioOnHome:F

    mul-float/2addr v6, v7

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_a

    :cond_9
    move v2, v4

    :goto_5
    goto :goto_2

    :cond_a
    move v2, v3

    goto :goto_5

    .line 3916
    :cond_b
    const-string v3, "1"

    goto :goto_3
.end method

.method disableShortcutsByPackageName(Ljava/util/ArrayList;Lcom/android/launcher3/common/compat/UserHandleCompat;ILcom/android/launcher3/common/model/IconCache;)V
    .locals 9
    .param p2, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;
    .param p3, "reason"    # I
    .param p4, "iconCache"    # Lcom/android/launcher3/common/model/IconCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/launcher3/common/compat/UserHandleCompat;",
            "I",
            "Lcom/android/launcher3/common/model/IconCache;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2875
    .local p1, "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 2876
    .local v3, "packageNames":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2877
    .local v5, "folderIconsToRefresh":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/folder/view/FolderIconView;>;"
    invoke-virtual {v3, p1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 2879
    const/4 v8, 0x1

    new-instance v0, Lcom/android/launcher3/home/HomeController$22;

    move-object v1, p0

    move-object v2, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/home/HomeController$22;-><init>(Lcom/android/launcher3/home/HomeController;Lcom/android/launcher3/common/compat/UserHandleCompat;Ljava/util/HashSet;Lcom/android/launcher3/common/model/IconCache;Ljava/util/ArrayList;)V

    invoke-direct {p0, v8, v0}, Lcom/android/launcher3/home/HomeController;->mapOverItems(ZLcom/android/launcher3/common/base/item/ItemOperator;)V

    .line 2900
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_1

    .line 2901
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/folder/view/FolderIconView;

    .line 2902
    .local v6, "folderIconView":Lcom/android/launcher3/folder/view/FolderIconView;
    if-eqz v6, :cond_0

    .line 2903
    invoke-virtual {v6}, Lcom/android/launcher3/folder/view/FolderIconView;->refreshFolderIcon()V

    .line 2900
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 2906
    .end local v6    # "folderIconView":Lcom/android/launcher3/folder/view/FolderIconView;
    :cond_1
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x0

    .line 5155
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    .line 5156
    invoke-virtual {v0}, Lcom/android/launcher3/home/Hotseat;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    .line 5157
    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->isPageMoving()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5173
    :cond_0
    :goto_0
    return v3

    .line 5161
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 5164
    :sswitch_0
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/home/Workspace;->dispatchUnhandledMove(Landroid/view/View;I)Z

    goto :goto_0

    .line 5169
    :sswitch_1
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x42

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/home/Workspace;->dispatchUnhandledMove(Landroid/view/View;I)Z

    goto :goto_0

    .line 5161
    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x5c -> :sswitch_0
        0x5d -> :sswitch_1
    .end sparse-switch
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 5211
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    .line 5212
    .local v0, "text":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 5213
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    if-eqz v1, :cond_0

    .line 5214
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->getCurrentPageDescription()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5218
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 5216
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900f4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method dropCompletedFromHotseat(Ljava/util/ArrayList;Ljava/lang/Runnable;ZI)V
    .locals 1
    .param p2, "postRunnable"    # Ljava/lang/Runnable;
    .param p3, "fromOther"    # Z
    .param p4, "fullCnt"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/drag/DropTarget$DragObject;",
            ">;",
            "Ljava/lang/Runnable;",
            "ZI)V"
        }
    .end annotation

    .prologue
    .line 4904
    .local p1, "extraDragObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/launcher3/home/Workspace;->dropCompletedFromHotseat(Ljava/util/ArrayList;Ljava/lang/Runnable;ZI)V

    .line 4905
    return-void
.end method

.method dropCompletedWidgetFromHotseat(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V
    .locals 1
    .param p1, "d"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .prologue
    .line 4899
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->getDragController()Lcom/android/launcher3/home/WorkspaceDragController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/home/WorkspaceDragController;->dropCompletedWidgetFromHotseat(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V

    .line 4900
    return-void
.end method

.method public enableCustomLayoutAnimation(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 4914
    iput-boolean p1, p0, Lcom/android/launcher3/home/HomeController;->mEnabledCustomLayoutAnimation:Z

    .line 4915
    return-void
.end method

.method public enterDragState(Z)V
    .locals 3
    .param p1, "animated"    # Z

    .prologue
    const/4 v2, 0x2

    .line 1254
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mState:Lcom/android/launcher3/home/HomeController$State;

    invoke-static {v1, v2}, Lcom/android/launcher3/home/HomeController$State;->access$100(Lcom/android/launcher3/home/HomeController$State;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1268
    :goto_0
    return-void

    .line 1258
    :cond_0
    new-instance v0, Lcom/android/launcher3/common/stage/StageEntry;

    invoke-direct {v0}, Lcom/android/launcher3/common/stage/StageEntry;-><init>()V

    .line 1259
    .local v0, "data":Lcom/android/launcher3/common/stage/StageEntry;
    iput-boolean p1, v0, Lcom/android/launcher3/common/stage/StageEntry;->enableAnimation:Z

    .line 1260
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mState:Lcom/android/launcher3/home/HomeController$State;

    invoke-static {v1}, Lcom/android/launcher3/home/HomeController$State;->access$300(Lcom/android/launcher3/home/HomeController$State;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/stage/StageEntry;->setInternalStateFrom(I)V

    .line 1261
    invoke-virtual {v0, v2}, Lcom/android/launcher3/common/stage/StageEntry;->setInternalStateTo(I)V

    .line 1263
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->isHomeStage()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1264
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/launcher3/common/stage/StageManager;->finishAllStage(Lcom/android/launcher3/common/stage/StageEntry;)V

    goto :goto_0

    .line 1266
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/android/launcher3/common/stage/StageManager;->switchInternalState(Lcom/android/launcher3/common/stage/Stage;Lcom/android/launcher3/common/stage/StageEntry;)V

    goto :goto_0
.end method

.method public enterNormalState(Z)V
    .locals 2
    .param p1, "animated"    # Z

    .prologue
    .line 1157
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/home/HomeController;->enterNormalState(ZLjava/lang/Runnable;Z)V

    .line 1158
    return-void
.end method

.method public enterNormalState(ZZ)V
    .locals 1
    .param p1, "animated"    # Z
    .param p2, "forced"    # Z

    .prologue
    .line 1161
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/launcher3/home/HomeController;->enterNormalState(ZLjava/lang/Runnable;Z)V

    .line 1162
    return-void
.end method

.method enterOverviewState(Z)V
    .locals 7
    .param p1, "animated"    # Z

    .prologue
    .line 1193
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->isHomeStage()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->isModalState()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->isScreenGridState()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1194
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->isWorkspaceLocked()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->isOverviewState()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1195
    :cond_1
    const-string v1, "Launcher.HomeController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not enterOverviewState : mLauncher.isHomeStage() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 1196
    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->isHomeStage()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isModalState() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1197
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->isModalState()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " sScreenGridState() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1198
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->isScreenGridState()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " workspace loading = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mHomeBindController:Lcom/android/launcher3/home/HomeBindController;

    .line 1199
    invoke-virtual {v3}, Lcom/android/launcher3/home/HomeBindController;->isWorkspaceLoading()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mWaitingForResult = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/launcher3/home/HomeController;->mWaitingForResult:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isOverviewState() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1201
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->isOverviewState()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1195
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1217
    :goto_0
    return-void

    .line 1205
    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mZeroPageController:Lcom/android/launcher3/home/ZeroPageController;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mZeroPageController:Lcom/android/launcher3/home/ZeroPageController;

    invoke-virtual {v1}, Lcom/android/launcher3/home/ZeroPageController;->hasMessages()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1206
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mZeroPageController:Lcom/android/launcher3/home/ZeroPageController;

    invoke-virtual {v1}, Lcom/android/launcher3/home/ZeroPageController;->restoreOffset()V

    .line 1209
    :cond_3
    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v1

    const-string v2, "HOEE"

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertLogging(Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 1212
    new-instance v0, Lcom/android/launcher3/common/stage/StageEntry;

    invoke-direct {v0}, Lcom/android/launcher3/common/stage/StageEntry;-><init>()V

    .line 1213
    .local v0, "data":Lcom/android/launcher3/common/stage/StageEntry;
    iput-boolean p1, v0, Lcom/android/launcher3/common/stage/StageEntry;->enableAnimation:Z

    .line 1214
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mState:Lcom/android/launcher3/home/HomeController$State;

    invoke-static {v1}, Lcom/android/launcher3/home/HomeController$State;->access$300(Lcom/android/launcher3/home/HomeController$State;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/stage/StageEntry;->setInternalStateFrom(I)V

    .line 1215
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/stage/StageEntry;->setInternalStateTo(I)V

    .line 1216
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/android/launcher3/common/stage/StageManager;->switchInternalState(Lcom/android/launcher3/common/stage/Stage;Lcom/android/launcher3/common/stage/StageEntry;)V

    goto :goto_0
.end method

.method enterResizeStateDelay(Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/common/base/view/CellLayout;)V
    .locals 1
    .param p1, "hostView"    # Landroid/appwidget/AppWidgetHostView;
    .param p2, "layout"    # Lcom/android/launcher3/common/base/view/CellLayout;

    .prologue
    .line 1371
    const/16 v0, 0xc8

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher3/home/HomeController;->enterResizeStateDelay(Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/common/base/view/CellLayout;I)V

    .line 1372
    return-void
.end method

.method enterResizeStateDelay(Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/common/base/view/CellLayout;I)V
    .locals 4
    .param p1, "hostView"    # Landroid/appwidget/AppWidgetHostView;
    .param p2, "layout"    # Lcom/android/launcher3/common/base/view/CellLayout;
    .param p3, "delay"    # I

    .prologue
    .line 1361
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/launcher3/home/HomeController$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/launcher3/home/HomeController$5;-><init>(Lcom/android/launcher3/home/HomeController;Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/common/base/view/CellLayout;)V

    int-to-long v2, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1368
    return-void
.end method

.method public enterScreenGridState(Z)V
    .locals 4
    .param p1, "animated"    # Z

    .prologue
    const/4 v3, 0x0

    .line 1220
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->isWorkspaceLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1221
    const-string v1, "Launcher.HomeController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not enterScreenGridState : isWorkspaceLocked() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1222
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->isWorkspaceLocked()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1221
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1239
    :goto_0
    return-void

    .line 1226
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->isHomeStage()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1227
    new-instance v0, Lcom/android/launcher3/common/stage/StageEntry;

    invoke-direct {v0}, Lcom/android/launcher3/common/stage/StageEntry;-><init>()V

    .line 1228
    .local v0, "data":Lcom/android/launcher3/common/stage/StageEntry;
    iput-boolean v3, v0, Lcom/android/launcher3/common/stage/StageEntry;->enableAnimation:Z

    .line 1229
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/android/launcher3/common/stage/StageManager;->startStage(ILcom/android/launcher3/common/stage/StageEntry;)V

    .line 1232
    .end local v0    # "data":Lcom/android/launcher3/common/stage/StageEntry;
    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/launcher3/home/HomeController;->enterOverviewState(Z)V

    .line 1234
    new-instance v0, Lcom/android/launcher3/common/stage/StageEntry;

    invoke-direct {v0}, Lcom/android/launcher3/common/stage/StageEntry;-><init>()V

    .line 1235
    .restart local v0    # "data":Lcom/android/launcher3/common/stage/StageEntry;
    iput-boolean p1, v0, Lcom/android/launcher3/common/stage/StageEntry;->enableAnimation:Z

    .line 1236
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mState:Lcom/android/launcher3/home/HomeController$State;

    invoke-static {v1}, Lcom/android/launcher3/home/HomeController$State;->access$300(Lcom/android/launcher3/home/HomeController$State;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/stage/StageEntry;->setInternalStateFrom(I)V

    .line 1237
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/stage/StageEntry;->setInternalStateTo(I)V

    .line 1238
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/android/launcher3/common/stage/StageManager;->switchInternalState(Lcom/android/launcher3/common/stage/Stage;Lcom/android/launcher3/common/stage/StageEntry;)V

    goto :goto_0
.end method

.method enterSelectState(Z)V
    .locals 3
    .param p1, "animated"    # Z

    .prologue
    const/4 v2, 0x6

    .line 1242
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->isHomeStage()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mState:Lcom/android/launcher3/home/HomeController$State;

    invoke-static {v1, v2}, Lcom/android/launcher3/home/HomeController$State;->access$100(Lcom/android/launcher3/home/HomeController$State;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1251
    :cond_0
    :goto_0
    return-void

    .line 1246
    :cond_1
    new-instance v0, Lcom/android/launcher3/common/stage/StageEntry;

    invoke-direct {v0}, Lcom/android/launcher3/common/stage/StageEntry;-><init>()V

    .line 1247
    .local v0, "data":Lcom/android/launcher3/common/stage/StageEntry;
    iput-boolean p1, v0, Lcom/android/launcher3/common/stage/StageEntry;->enableAnimation:Z

    .line 1248
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mState:Lcom/android/launcher3/home/HomeController$State;

    invoke-static {v1}, Lcom/android/launcher3/home/HomeController$State;->access$300(Lcom/android/launcher3/home/HomeController$State;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/stage/StageEntry;->setInternalStateFrom(I)V

    .line 1249
    invoke-virtual {v0, v2}, Lcom/android/launcher3/common/stage/StageEntry;->setInternalStateTo(I)V

    .line 1250
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/android/launcher3/common/stage/StageManager;->switchInternalState(Lcom/android/launcher3/common/stage/Stage;Lcom/android/launcher3/common/stage/StageEntry;)V

    goto :goto_0
.end method

.method public exitDragStateDelayed()V
    .locals 1

    .prologue
    .line 1271
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/HomeController;->exitDragStateDelayed(I)V

    .line 1272
    return-void
.end method

.method exitDragStateDelayed(I)V
    .locals 6
    .param p1, "delay"    # I

    .prologue
    const/4 v4, 0x1

    .line 1275
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v1

    .line 1276
    .local v1, "stageManager":Lcom/android/launcher3/common/stage/StageManager;
    if-nez v1, :cond_1

    .line 1304
    :cond_0
    :goto_0
    return-void

    .line 1280
    :cond_1
    invoke-virtual {v1}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/common/stage/Stage;->getMode()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_2

    .line 1281
    invoke-virtual {p0, v4}, Lcom/android/launcher3/home/HomeController;->enterNormalState(Z)V

    .line 1284
    :cond_2
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mState:Lcom/android/launcher3/home/HomeController$State;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/android/launcher3/home/HomeController$State;->access$100(Lcom/android/launcher3/home/HomeController$State;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1289
    invoke-virtual {v1}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v2

    if-ne v2, p0, :cond_3

    .line 1290
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mExitDragStateHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/launcher3/home/HomeController$4;

    invoke-direct {v3, p0}, Lcom/android/launcher3/home/HomeController$4;-><init>(Lcom/android/launcher3/home/HomeController;)V

    int-to-long v4, p1

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1297
    :cond_3
    new-instance v0, Lcom/android/launcher3/common/stage/StageEntry;

    invoke-direct {v0}, Lcom/android/launcher3/common/stage/StageEntry;-><init>()V

    .line 1298
    .local v0, "data":Lcom/android/launcher3/common/stage/StageEntry;
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/launcher3/common/stage/StageEntry;->enableAnimation:Z

    .line 1299
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mState:Lcom/android/launcher3/home/HomeController$State;

    invoke-static {v2}, Lcom/android/launcher3/home/HomeController$State;->access$300(Lcom/android/launcher3/home/HomeController$State;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/launcher3/common/stage/StageEntry;->setInternalStateFrom(I)V

    .line 1300
    invoke-virtual {v0, v4}, Lcom/android/launcher3/common/stage/StageEntry;->setInternalStateTo(I)V

    .line 1302
    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/HomeController;->switchInternalState(Lcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/Animator;

    goto :goto_0
.end method

.method public exitResizeState(Z)V
    .locals 1
    .param p1, "animated"    # Z

    .prologue
    .line 1397
    iget-boolean v0, p0, Lcom/android/launcher3/home/HomeController;->mHomeKeyPressed:Z

    if-eqz v0, :cond_0

    const-string v0, "3"

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/home/HomeController;->exitResizeState(ZLjava/lang/String;)V

    .line 1398
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/home/HomeController;->mHomeKeyPressed:Z

    .line 1399
    return-void

    .line 1397
    :cond_0
    const-string v0, "4"

    goto :goto_0
.end method

.method public exitResizeState(ZLjava/lang/String;)V
    .locals 8
    .param p1, "animated"    # Z
    .param p2, "detail"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    .line 1402
    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->isHomeStage()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1423
    :cond_0
    :goto_0
    return-void

    .line 1406
    :cond_1
    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    invoke-virtual {v3}, Lcom/android/launcher3/common/view/DragLayer;->clearAllResizeFrames()Z

    move-result v1

    .line 1408
    .local v1, "isClearResizeFrames":Z
    if-eqz v1, :cond_0

    .line 1409
    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1411
    .local v2, "res":Landroid/content/res/Resources;
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v3

    const v4, 0x7f0901c2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f090131

    .line 1412
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1411
    invoke-virtual {v3, v4, v5, p2}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1413
    sget-object v3, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09004b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    .line 1414
    invoke-virtual {v5}, Lcom/android/launcher3/home/Workspace;->getCurrentPageDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1413
    invoke-virtual {v3, v4}, Lcom/android/launcher3/util/Talk;->say(Ljava/lang/String;)V

    .line 1416
    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v3, v7}, Lcom/android/launcher3/Utilities;->changeEdgeHandleState(Landroid/content/Context;Z)V

    .line 1417
    new-instance v0, Lcom/android/launcher3/common/stage/StageEntry;

    invoke-direct {v0}, Lcom/android/launcher3/common/stage/StageEntry;-><init>()V

    .line 1418
    .local v0, "data":Lcom/android/launcher3/common/stage/StageEntry;
    iput-boolean p1, v0, Lcom/android/launcher3/common/stage/StageEntry;->enableAnimation:Z

    .line 1419
    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mState:Lcom/android/launcher3/home/HomeController$State;

    invoke-static {v3}, Lcom/android/launcher3/home/HomeController$State;->access$300(Lcom/android/launcher3/home/HomeController$State;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/launcher3/common/stage/StageEntry;->setInternalStateFrom(I)V

    .line 1420
    invoke-virtual {v0, v7}, Lcom/android/launcher3/common/stage/StageEntry;->setInternalStateTo(I)V

    .line 1421
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v3

    invoke-virtual {v3, p0, v0}, Lcom/android/launcher3/common/stage/StageManager;->switchInternalState(Lcom/android/launcher3/common/stage/Stage;Lcom/android/launcher3/common/stage/StageEntry;)V

    goto :goto_0
.end method

.method exitScreenGridStateDelayed()V
    .locals 1

    .prologue
    .line 4456
    const/16 v0, 0xc8

    invoke-direct {p0, v0}, Lcom/android/launcher3/home/HomeController;->exitScreenGridStateDelayed(I)V

    .line 4457
    return-void
.end method

.method public finishAllStage()V
    .locals 3

    .prologue
    .line 4668
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/common/stage/StageManager;->getStackSize()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 4669
    new-instance v0, Lcom/android/launcher3/common/stage/StageEntry;

    invoke-direct {v0}, Lcom/android/launcher3/common/stage/StageEntry;-><init>()V

    .line 4670
    .local v0, "data":Lcom/android/launcher3/common/stage/StageEntry;
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/launcher3/common/stage/StageEntry;->enableAnimation:Z

    .line 4671
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/launcher3/common/stage/StageManager;->finishAllStage(Lcom/android/launcher3/common/stage/StageEntry;)V

    .line 4673
    .end local v0    # "data":Lcom/android/launcher3/common/stage/StageEntry;
    :cond_0
    return-void
.end method

.method public getAppWidgetHost()Lcom/android/launcher3/home/LauncherAppWidgetHost;
    .locals 1

    .prologue
    .line 1738
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mAppWidgetHost:Lcom/android/launcher3/home/LauncherAppWidgetHost;

    return-object v0
.end method

.method protected getBackgroundBlurAmountForState(I)F
    .locals 2
    .param p1, "internalState"    # I

    .prologue
    .line 1127
    if-nez p1, :cond_0

    .line 1128
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->getInternalState()I

    move-result p1

    .line 1131
    :cond_0
    const/4 v0, 0x0

    .line 1132
    .local v0, "blurAmount":F
    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    const/4 v1, 0x5

    if-ne p1, v1, :cond_2

    .line 1133
    :cond_1
    iget v0, p0, Lcom/android/launcher3/home/HomeController;->mOverviewBlurAmount:F

    .line 1135
    :cond_2
    return v0
.end method

.method protected getBackgroundDimAlphaForState(I)F
    .locals 2
    .param p1, "internalState"    # I

    .prologue
    .line 1140
    if-nez p1, :cond_0

    .line 1141
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->getInternalState()I

    move-result p1

    .line 1144
    :cond_0
    const/4 v0, 0x0

    .line 1145
    .local v0, "dimAlpha":F
    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    const/4 v1, 0x5

    if-ne p1, v1, :cond_2

    .line 1146
    :cond_1
    iget v0, p0, Lcom/android/launcher3/home/HomeController;->mOverviewDrakenAlpha:F

    .line 1148
    :cond_2
    return v0
.end method

.method protected getBackgroundImageAlphaForState(I)F
    .locals 1
    .param p1, "internalState"    # I

    .prologue
    .line 1153
    const/4 v0, 0x0

    return v0
.end method

.method public getBindController()Lcom/android/launcher3/home/HomeBindController;
    .locals 1

    .prologue
    .line 1734
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mHomeBindController:Lcom/android/launcher3/home/HomeBindController;

    return-object v0
.end method

.method public getCellLayout(JJ)Lcom/android/launcher3/common/base/view/CellLayout;
    .locals 3
    .param p1, "container"    # J
    .param p3, "screenId"    # J

    .prologue
    .line 2366
    const-wide/16 v0, -0x65

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 2367
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    if-eqz v0, :cond_0

    .line 2368
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Hotseat;->getLayout()Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v0

    .line 2373
    :goto_0
    return-object v0

    .line 2370
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2373
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0, p3, p4}, Lcom/android/launcher3/home/Workspace;->getScreenWithId(J)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v0

    goto :goto_0
.end method

.method public getChildViewAt(Lcom/android/launcher3/common/base/item/ItemInfo;)Landroid/view/View;
    .locals 6
    .param p1, "info"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    const/4 v1, 0x0

    .line 1570
    if-nez p1, :cond_1

    .line 1585
    :cond_0
    :goto_0
    return-object v1

    .line 1574
    :cond_1
    const/4 v0, 0x0

    .line 1575
    .local v0, "cellLayout":Lcom/android/launcher3/common/base/view/CellLayout;
    iget-wide v2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v4, -0x64

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    .line 1576
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    iget-wide v4, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    invoke-virtual {v2, v4, v5}, Lcom/android/launcher3/home/Workspace;->getScreenWithId(J)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v0

    .line 1581
    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    .line 1582
    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(Lcom/android/launcher3/common/base/item/ItemInfo;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 1577
    :cond_3
    iget-wide v2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v4, -0x65

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 1578
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v2}, Lcom/android/launcher3/home/Hotseat;->getLayout()Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v0

    goto :goto_1
.end method

.method public getContainerView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1431
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    return-object v0
.end method

.method public getDragSourceForLongKey()Lcom/android/launcher3/common/drag/DragSource;
    .locals 1

    .prologue
    .line 1561
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->getWorkspace()Lcom/android/launcher3/home/Workspace;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1562
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->getWorkspace()Lcom/android/launcher3/home/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->getDragController()Lcom/android/launcher3/home/WorkspaceDragController;

    move-result-object v0

    .line 1565
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/android/launcher3/common/stage/Stage;->getDragSourceForLongKey()Lcom/android/launcher3/common/drag/DragSource;

    move-result-object v0

    goto :goto_0
.end method

.method public getDropTarget()Lcom/android/launcher3/common/drag/DropTarget;
    .locals 1

    .prologue
    .line 3789
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->getDragController()Lcom/android/launcher3/home/WorkspaceDragController;

    move-result-object v0

    return-object v0
.end method

.method getFestivalPageController()Lcom/android/launcher3/home/FestivalPageController;
    .locals 1

    .prologue
    .line 1762
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mFestivalPageController:Lcom/android/launcher3/home/FestivalPageController;

    return-object v0
.end method

.method public getFolderForTag(Ljava/lang/Object;)Lcom/android/launcher3/folder/view/FolderView;
    .locals 1
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 2403
    new-instance v0, Lcom/android/launcher3/home/HomeController$13;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/home/HomeController$13;-><init>(Lcom/android/launcher3/home/HomeController;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/android/launcher3/home/HomeController;->getFirstMatch(Lcom/android/launcher3/common/base/item/ItemOperator;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/folder/view/FolderView;

    return-object v0
.end method

.method public getFolderIconView(Lcom/android/launcher3/folder/FolderInfo;)Landroid/view/View;
    .locals 2
    .param p1, "folder"    # Lcom/android/launcher3/folder/FolderInfo;

    .prologue
    .line 4792
    invoke-virtual {p1}, Lcom/android/launcher3/folder/FolderInfo;->isContainApps()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4793
    const/4 v0, 0x0

    .line 4795
    :goto_0
    return-object v0

    :cond_0
    iget-wide v0, p1, Lcom/android/launcher3/folder/FolderInfo;->id:J

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/home/HomeController;->getHomescreenIconByItemId(J)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method getFolderItemCount(Ljava/lang/String;)I
    .locals 10
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 4919
    const/4 v7, 0x0

    .line 4921
    .local v7, "resultCount":I
    iget-object v9, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    if-eqz v9, :cond_2

    if-eqz p1, :cond_2

    .line 4922
    iget-object v9, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v9}, Lcom/android/launcher3/home/Workspace;->getPageCount()I

    move-result v6

    .line 4924
    .local v6, "pageCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v6, :cond_2

    .line 4925
    iget-object v9, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v9, v3}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 4927
    .local v1, "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    if-eqz v1, :cond_1

    .line 4928
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v2

    .line 4929
    .local v2, "clc":Lcom/android/launcher3/common/base/view/CellLayoutChildren;
    if-eqz v2, :cond_1

    .line 4930
    invoke-virtual {v2}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v0

    .line 4932
    .local v0, "childCount":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    if-ge v5, v0, :cond_1

    .line 4933
    invoke-virtual {v2, v5}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 4935
    .local v8, "v":Landroid/view/View;
    instance-of v9, v8, Lcom/android/launcher3/folder/view/FolderIconView;

    if-eqz v9, :cond_0

    move-object v4, v8

    .line 4936
    check-cast v4, Lcom/android/launcher3/common/view/IconView;

    .line 4937
    .local v4, "iv":Lcom/android/launcher3/common/view/IconView;
    invoke-virtual {v4}, Lcom/android/launcher3/common/view/IconView;->getTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 4938
    add-int/lit8 v7, v7, 0x1

    .line 4932
    .end local v4    # "iv":Lcom/android/launcher3/common/view/IconView;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 4924
    .end local v0    # "childCount":I
    .end local v2    # "clc":Lcom/android/launcher3/common/base/view/CellLayoutChildren;
    .end local v5    # "j":I
    .end local v8    # "v":Landroid/view/View;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4947
    .end local v1    # "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    .end local v3    # "i":I
    .end local v6    # "pageCount":I
    :cond_2
    return v7
.end method

.method getHomeContainer()Lcom/android/launcher3/home/HomeContainer;
    .locals 1

    .prologue
    .line 3964
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mHomeContainer:Lcom/android/launcher3/home/HomeContainer;

    return-object v0
.end method

.method getHomeLoader()Lcom/android/launcher3/home/HomeLoader;
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    return-object v0
.end method

.method getHomePageIndicatorView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1758
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mPageIndicatorView:Landroid/view/View;

    return-object v0
.end method

.method public getHomescreenIconByItemId(J)Landroid/view/View;
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 2414
    new-instance v0, Lcom/android/launcher3/home/HomeController$14;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/launcher3/home/HomeController$14;-><init>(Lcom/android/launcher3/home/HomeController;J)V

    invoke-direct {p0, v0}, Lcom/android/launcher3/home/HomeController;->getFirstMatch(Lcom/android/launcher3/common/base/item/ItemOperator;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getHotseat()Lcom/android/launcher3/home/Hotseat;
    .locals 1

    .prologue
    .line 1746
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    return-object v0
.end method

.method protected getInternalState()I
    .locals 1

    .prologue
    .line 1094
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mState:Lcom/android/launcher3/home/HomeController$State;

    invoke-static {v0}, Lcom/android/launcher3/home/HomeController$State;->access$1400(Lcom/android/launcher3/home/HomeController$State;)I

    move-result v0

    return v0
.end method

.method getLauncher()Lcom/android/launcher3/Launcher;
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method public getLocationInfoFromDB(Lcom/android/launcher3/common/base/item/ItemInfo;)Lcom/android/launcher3/common/base/item/ItemInfo;
    .locals 1
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 4655
    const/4 v0, 0x0

    return-object v0
.end method

.method getOverviewPanel()Lcom/android/launcher3/home/OverviewPanel;
    .locals 1

    .prologue
    .line 1750
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mOverviewPanel:Lcom/android/launcher3/home/OverviewPanel;

    return-object v0
.end method

.method public getPageIndexForDragView(Lcom/android/launcher3/common/base/item/ItemInfo;)I
    .locals 1
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 4895
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->getDragController()Lcom/android/launcher3/home/WorkspaceDragController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/home/WorkspaceDragController;->getPageIndexForDragView(Lcom/android/launcher3/common/base/item/ItemInfo;)I

    move-result v0

    return v0
.end method

.method getPendingAddItem()Lcom/android/launcher3/home/HomeController$PendingAddArguments;
    .locals 1

    .prologue
    .line 2325
    sget-object v0, Lcom/android/launcher3/home/HomeController;->sPendingAddItem:Lcom/android/launcher3/home/HomeController$PendingAddArguments;

    return-object v0
.end method

.method public getScreenDivision()Lcom/android/launcher3/util/event/ScreenDivision;
    .locals 1

    .prologue
    .line 5232
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mHomeContainer:Lcom/android/launcher3/home/HomeContainer;

    iget-object v0, v0, Lcom/android/launcher3/home/HomeContainer;->mScreenDivision:Lcom/android/launcher3/util/event/ScreenDivision;

    return-object v0
.end method

.method getScreenGridPanel()Lcom/android/launcher3/home/ScreenGridPanel;
    .locals 1

    .prologue
    .line 1754
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mScreenGridPanel:Lcom/android/launcher3/home/ScreenGridPanel;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 1426
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mState:Lcom/android/launcher3/home/HomeController$State;

    invoke-static {v0}, Lcom/android/launcher3/home/HomeController$State;->access$300(Lcom/android/launcher3/home/HomeController$State;)I

    move-result v0

    return v0
.end method

.method public getTrayBgBlurAmount()F
    .locals 1

    .prologue
    .line 5111
    const/4 v0, 0x0

    return v0
.end method

.method public getTrayLevel()Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;
    .locals 1

    .prologue
    .line 3772
    sget-object v0, Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;->Overground:Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;

    return-object v0
.end method

.method public getTrayScale()F
    .locals 1

    .prologue
    .line 3784
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mHomeContainer:Lcom/android/launcher3/home/HomeContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeContainer;->getScaleY()F

    move-result v0

    return v0
.end method

.method public getWorkspace()Lcom/android/launcher3/home/Workspace;
    .locals 1

    .prologue
    .line 1742
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    return-object v0
.end method

.method public getZeroPageController()Lcom/android/launcher3/home/ZeroPageController;
    .locals 1

    .prologue
    .line 4659
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mZeroPageController:Lcom/android/launcher3/home/ZeroPageController;

    return-object v0
.end method

.method public hasStartedSFinder()Z
    .locals 1

    .prologue
    .line 3968
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mHomeContainer:Lcom/android/launcher3/home/HomeContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeContainer;->hasStartedSFinder()Z

    move-result v0

    return v0
.end method

.method public homeKeyPressed()V
    .locals 2

    .prologue
    .line 5236
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->isHomeStage()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mState:Lcom/android/launcher3/home/HomeController$State;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/android/launcher3/home/HomeController$State;->access$100(Lcom/android/launcher3/home/HomeController$State;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5237
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/home/HomeController;->mHomeKeyPressed:Z

    .line 5239
    :cond_0
    return-void
.end method

.method initBounceAnimation()V
    .locals 1

    .prologue
    .line 5024
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mBounceAnimation:Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation;

    if-eqz v0, :cond_0

    .line 5025
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mBounceAnimation:Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation;

    invoke-virtual {v0}, Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation;->stop()V

    .line 5026
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/home/HomeController;->mBounceAnimation:Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation;

    .line 5028
    :cond_0
    return-void
.end method

.method public initStageView()V
    .locals 12

    .prologue
    const/high16 v11, 0x42c80000    # 100.0f

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 361
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v6

    iput-object v6, p0, Lcom/android/launcher3/home/HomeController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    .line 362
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mHomeAnimation:Lcom/android/launcher3/home/HomeTransitionAnimation;

    invoke-virtual {v6}, Lcom/android/launcher3/home/HomeTransitionAnimation;->setupView()V

    .line 365
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    const v7, 0x7f1100b4

    invoke-virtual {v6, v7}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/home/HomeContainer;

    iput-object v6, p0, Lcom/android/launcher3/home/HomeController;->mHomeContainer:Lcom/android/launcher3/home/HomeContainer;

    .line 366
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mHomeContainer:Lcom/android/launcher3/home/HomeContainer;

    invoke-virtual {v6, p0}, Lcom/android/launcher3/home/HomeContainer;->bindController(Lcom/android/launcher3/common/base/controller/ControllerBase;)V

    .line 367
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mHomeContainer:Lcom/android/launcher3/home/HomeContainer;

    iget-object v7, p0, Lcom/android/launcher3/home/HomeController;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    invoke-virtual {v6, v7}, Lcom/android/launcher3/home/HomeContainer;->setTrayManager(Lcom/android/launcher3/common/tray/TrayManager;)V

    .line 368
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportNavigationBar()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 369
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v0

    .line 370
    .local v0, "dp":Lcom/android/launcher3/common/deviceprofile/DeviceProfile;
    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->isVerticalBarLayout()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 371
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mHomeContainer:Lcom/android/launcher3/home/HomeContainer;

    iget v7, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->navigationBarHeight:I

    invoke-virtual {v6, v10, v10, v7, v10}, Lcom/android/launcher3/home/HomeContainer;->setPadding(IIII)V

    .line 378
    .end local v0    # "dp":Lcom/android/launcher3/common/deviceprofile/DeviceProfile;
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    const v7, 0x7f11000e

    invoke-virtual {v6, v7}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/home/Workspace;

    iput-object v6, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    .line 379
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v6, p0}, Lcom/android/launcher3/home/Workspace;->bindController(Lcom/android/launcher3/common/base/controller/ControllerBase;)V

    .line 380
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v6, v10}, Lcom/android/launcher3/home/Workspace;->setHapticFeedbackEnabled(Z)V

    .line 381
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v6, p0}, Lcom/android/launcher3/home/Workspace;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 382
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    iget-object v7, p0, Lcom/android/launcher3/home/HomeController;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    iget-object v8, p0, Lcom/android/launcher3/home/HomeController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    invoke-virtual {v6, v7, v8}, Lcom/android/launcher3/home/Workspace;->setup(Lcom/android/launcher3/common/drag/DragManager;Lcom/android/launcher3/common/view/DragLayer;)V

    .line 383
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v6}, Lcom/android/launcher3/home/Workspace;->initDefaultHomeIcon()V

    .line 384
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    iget-object v7, p0, Lcom/android/launcher3/home/HomeController;->mScrollDeterminator:Lcom/android/launcher3/util/event/ScrollDeterminator;

    invoke-virtual {v6, v7}, Lcom/android/launcher3/home/Workspace;->setScrollDeterminator(Lcom/android/launcher3/util/event/ScrollDeterminator;)V

    .line 387
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    const v7, 0x7f11000d

    invoke-virtual {v6, v7}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/home/Hotseat;

    iput-object v6, p0, Lcom/android/launcher3/home/HomeController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    .line 388
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    if-eqz v6, :cond_1

    .line 389
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v6, p0}, Lcom/android/launcher3/home/Hotseat;->bindController(Lcom/android/launcher3/common/base/controller/ControllerBase;)V

    .line 390
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v6}, Lcom/android/launcher3/home/Hotseat;->resetLayout()V

    .line 391
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v6, p0}, Lcom/android/launcher3/home/Hotseat;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 392
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    iget-object v7, p0, Lcom/android/launcher3/home/HomeController;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    invoke-virtual {v6, v7}, Lcom/android/launcher3/home/Hotseat;->setup(Lcom/android/launcher3/common/drag/DragManager;)V

    .line 395
    :cond_1
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    const v7, 0x7f1100b3

    invoke-virtual {v6, v7}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/home/DropTargetBar;

    iput-object v6, p0, Lcom/android/launcher3/home/HomeController;->mDropTargetBar:Lcom/android/launcher3/home/DropTargetBar;

    .line 396
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mDropTargetBar:Lcom/android/launcher3/home/DropTargetBar;

    iget-object v7, p0, Lcom/android/launcher3/home/HomeController;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    invoke-virtual {v6, v7}, Lcom/android/launcher3/home/DropTargetBar;->setup(Lcom/android/launcher3/common/drag/DragManager;)V

    .line 399
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    const v7, 0x7f11009b

    invoke-virtual {v6, v7}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/home/OverviewPanel;

    iput-object v6, p0, Lcom/android/launcher3/home/HomeController;->mOverviewPanel:Lcom/android/launcher3/home/OverviewPanel;

    .line 400
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mOverviewPanel:Lcom/android/launcher3/home/OverviewPanel;

    invoke-virtual {v6, p0}, Lcom/android/launcher3/home/OverviewPanel;->bindController(Lcom/android/launcher3/common/base/controller/ControllerBase;)V

    .line 403
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    const v7, 0x7f11009c

    invoke-virtual {v6, v7}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/home/ScreenGridPanel;

    iput-object v6, p0, Lcom/android/launcher3/home/HomeController;->mScreenGridPanel:Lcom/android/launcher3/home/ScreenGridPanel;

    .line 404
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mScreenGridPanel:Lcom/android/launcher3/home/ScreenGridPanel;

    invoke-virtual {v6, p0}, Lcom/android/launcher3/home/ScreenGridPanel;->bindController(Lcom/android/launcher3/common/base/controller/ControllerBase;)V

    .line 405
    new-instance v6, Lcom/android/launcher3/home/ScreenGridHelper;

    iget-object v7, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v6, v7, p0}, Lcom/android/launcher3/home/ScreenGridHelper;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/home/HomeController;)V

    iput-object v6, p0, Lcom/android/launcher3/home/HomeController;->mScreenGridHelper:Lcom/android/launcher3/home/ScreenGridHelper;

    .line 407
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mScreenGridPanel:Lcom/android/launcher3/home/ScreenGridPanel;

    invoke-virtual {v6}, Lcom/android/launcher3/home/ScreenGridPanel;->initScreenGridTopContainer()V

    .line 410
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    const v7, 0x7f11009a

    invoke-virtual {v6, v7}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/launcher3/home/HomeController;->mPageIndicatorView:Landroid/view/View;

    .line 411
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mPageIndicatorView:Landroid/view/View;

    if-eqz v6, :cond_3

    .line 413
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mPageIndicatorView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 414
    .local v4, "oldLp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mHomeContainer:Lcom/android/launcher3/home/HomeContainer;

    iget-object v7, p0, Lcom/android/launcher3/home/HomeController;->mPageIndicatorView:Landroid/view/View;

    invoke-virtual {v6, v7}, Lcom/android/launcher3/home/HomeContainer;->removeView(Landroid/view/View;)V

    .line 416
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    invoke-virtual {v6}, Lcom/android/launcher3/common/view/DragLayer;->getChildCount()I

    move-result v2

    .line 417
    .local v2, "indexToAddView":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    invoke-virtual {v6}, Lcom/android/launcher3/common/view/DragLayer;->getChildCount()I

    move-result v6

    if-ge v1, v6, :cond_2

    .line 418
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mHomeContainer:Lcom/android/launcher3/home/HomeContainer;

    iget-object v7, p0, Lcom/android/launcher3/home/HomeController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    invoke-virtual {v7, v1}, Lcom/android/launcher3/common/view/DragLayer;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 419
    move v2, v1

    .line 424
    :cond_2
    new-instance v3, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;

    invoke-direct {v3, v4}, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 425
    .local v3, "newLp":Lcom/android/launcher3/common/view/DragLayer$LayoutParams;
    const/16 v6, 0x51

    iput v6, v3, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;->gravity:I

    .line 426
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    iget-object v7, p0, Lcom/android/launcher3/home/HomeController;->mPageIndicatorView:Landroid/view/View;

    invoke-virtual {v6, v7, v2, v3}, Lcom/android/launcher3/common/view/DragLayer;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 429
    .end local v1    # "i":I
    .end local v2    # "indexToAddView":I
    .end local v3    # "newLp":Lcom/android/launcher3/common/view/DragLayer$LayoutParams;
    .end local v4    # "oldLp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_3
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 430
    .local v5, "res":Landroid/content/res/Resources;
    const v6, 0x7f0b0038

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v11

    iput v6, p0, Lcom/android/launcher3/home/HomeController;->mOverviewBlurAmount:F

    .line 431
    const v6, 0x7f0b0039

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v11

    iput v6, p0, Lcom/android/launcher3/home/HomeController;->mOverviewDrakenAlpha:F

    .line 432
    const v6, 0x7f10000a

    invoke-virtual {v5, v6, v9, v9}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v6

    iput v6, p0, Lcom/android/launcher3/home/HomeController;->mPageSnapMovingRatioOnHome:F

    .line 433
    const v6, 0x7f0a015b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/android/launcher3/home/HomeController;->mHotseatMoveRange:I

    .line 434
    const v6, 0x7f10000b

    invoke-virtual {v5, v6, v9, v9}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v6

    iput v6, p0, Lcom/android/launcher3/home/HomeController;->mStartSFinderRatio:F

    .line 436
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mHomeBindController:Lcom/android/launcher3/home/HomeBindController;

    iget-object v7, p0, Lcom/android/launcher3/home/HomeController;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    iget-object v8, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    iget-object v9, p0, Lcom/android/launcher3/home/HomeController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/launcher3/home/HomeBindController;->setup(Lcom/android/launcher3/common/drag/DragManager;Lcom/android/launcher3/home/Workspace;Lcom/android/launcher3/home/Hotseat;)V

    .line 438
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v6}, Lcom/android/launcher3/home/Workspace;->getZeroPageController()Lcom/android/launcher3/home/ZeroPageController;

    move-result-object v6

    iput-object v6, p0, Lcom/android/launcher3/home/HomeController;->mZeroPageController:Lcom/android/launcher3/home/ZeroPageController;

    .line 439
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mZeroPageController:Lcom/android/launcher3/home/ZeroPageController;

    if-eqz v6, :cond_5

    .line 440
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mZeroPageController:Lcom/android/launcher3/home/ZeroPageController;

    invoke-virtual {v6}, Lcom/android/launcher3/home/ZeroPageController;->setup()V

    .line 441
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportZeroPageHome()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->isModalState()Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 442
    invoke-static {v6, v10}, Lcom/android/launcher3/home/ZeroPageController;->isActiveZeroPage(Landroid/content/Context;Z)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    .line 443
    invoke-virtual {v6}, Lcom/android/launcher3/home/Workspace;->getDefaultPage()I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_4

    .line 444
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mZeroPageController:Lcom/android/launcher3/home/ZeroPageController;

    invoke-virtual {v6}, Lcom/android/launcher3/home/ZeroPageController;->startZeroPage()V

    .line 447
    :cond_4
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    const v7, 0x7f1100b5

    invoke-virtual {v6, v7}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/home/EdgeLight;

    iput-object v6, p0, Lcom/android/launcher3/home/HomeController;->mEdgeLight:Lcom/android/launcher3/home/EdgeLight;

    .line 448
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mEdgeLight:Lcom/android/launcher3/home/EdgeLight;

    if-eqz v6, :cond_5

    .line 449
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mEdgeLight:Lcom/android/launcher3/home/EdgeLight;

    invoke-virtual {v6, p0}, Lcom/android/launcher3/home/EdgeLight;->registerContentObserver(Lcom/android/launcher3/home/HomeController;)V

    .line 453
    :cond_5
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportMultiSelect()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 454
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->getMultiSelectManager()Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    move-result-object v6

    iput-object v6, p0, Lcom/android/launcher3/home/HomeController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    .line 455
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    if-eqz v6, :cond_6

    .line 456
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v6, p0}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->addMultiSelectCallbacks(Lcom/android/launcher3/common/multiselect/MultiSelectManager$MultiSelectListener;)V

    .line 460
    :cond_6
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFestivalPage()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 461
    new-instance v6, Lcom/android/launcher3/home/FestivalPageController;

    iget-object v7, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v6, v7, p0}, Lcom/android/launcher3/home/FestivalPageController;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/home/HomeController;)V

    iput-object v6, p0, Lcom/android/launcher3/home/HomeController;->mFestivalPageController:Lcom/android/launcher3/home/FestivalPageController;

    .line 464
    :cond_7
    invoke-super {p0}, Lcom/android/launcher3/common/stage/Stage;->initStageView()V

    .line 465
    return-void

    .line 373
    .end local v5    # "res":Landroid/content/res/Resources;
    .restart local v0    # "dp":Lcom/android/launcher3/common/deviceprofile/DeviceProfile;
    :cond_8
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mHomeContainer:Lcom/android/launcher3/home/HomeContainer;

    iget v7, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->navigationBarHeight:I

    invoke-virtual {v6, v10, v10, v10, v7}, Lcom/android/launcher3/home/HomeContainer;->setPadding(IIII)V

    goto/16 :goto_0

    .line 417
    .end local v0    # "dp":Lcom/android/launcher3/common/deviceprofile/DeviceProfile;
    .restart local v1    # "i":I
    .restart local v2    # "indexToAddView":I
    .restart local v4    # "oldLp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1
.end method

.method isChangeGridState()Z
    .locals 1

    .prologue
    .line 4440
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mScreenGridHelper:Lcom/android/launcher3/home/ScreenGridHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/home/ScreenGridHelper;->isChangeGridState()Z

    move-result v0

    return v0
.end method

.method isHorizontalScoll()Z
    .locals 1

    .prologue
    .line 5135
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mScrollDeterminator:Lcom/android/launcher3/util/event/ScrollDeterminator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mScrollDeterminator:Lcom/android/launcher3/util/event/ScrollDeterminator;

    invoke-virtual {v0}, Lcom/android/launcher3/util/event/ScrollDeterminator;->isHorizontalScroll()Z

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

.method public isItemInFolder(Lcom/android/launcher3/common/base/item/ItemInfo;)Z
    .locals 4
    .param p1, "info"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 2610
    iget-wide v0, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v2, -0x64

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v2, -0x65

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

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

.method public isModalState()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1771
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mState:Lcom/android/launcher3/home/HomeController$State;

    invoke-static {v1, v0}, Lcom/android/launcher3/home/HomeController$State;->access$100(Lcom/android/launcher3/home/HomeController$State;I)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMovingOnBlock()Z
    .locals 1

    .prologue
    .line 5101
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mScrollDeterminator:Lcom/android/launcher3/util/event/ScrollDeterminator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mScrollDeterminator:Lcom/android/launcher3/util/event/ScrollDeterminator;

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

.method isNormalState()Z
    .locals 2

    .prologue
    .line 1779
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mState:Lcom/android/launcher3/home/HomeController$State;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/launcher3/home/HomeController$State;->access$100(Lcom/android/launcher3/home/HomeController$State;I)Z

    move-result v0

    return v0
.end method

.method public isOverBlurSlop(I)Z
    .locals 1
    .param p1, "slop"    # I

    .prologue
    .line 5116
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mScrollDeterminator:Lcom/android/launcher3/util/event/ScrollDeterminator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mScrollDeterminator:Lcom/android/launcher3/util/event/ScrollDeterminator;

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

.method isOverviewState()Z
    .locals 2

    .prologue
    .line 1775
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mState:Lcom/android/launcher3/home/HomeController$State;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/android/launcher3/home/HomeController$State;->access$100(Lcom/android/launcher3/home/HomeController$State;I)Z

    move-result v0

    return v0
.end method

.method isReorderAnimating()Z
    .locals 3

    .prologue
    .line 4143
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 4144
    .local v0, "currentPage":Lcom/android/launcher3/common/base/view/CellLayout;
    if-eqz v0, :cond_0

    .line 4145
    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->isReorderAnimating()Z

    move-result v1

    .line 4147
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isRestoring()Z
    .locals 1

    .prologue
    .line 1714
    iget-boolean v0, p0, Lcom/android/launcher3/home/HomeController;->mRestoring:Z

    return v0
.end method

.method public isScreenGridState()Z
    .locals 2

    .prologue
    .line 1787
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mState:Lcom/android/launcher3/home/HomeController$State;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/android/launcher3/home/HomeController$State;->access$100(Lcom/android/launcher3/home/HomeController$State;I)Z

    move-result v0

    return v0
.end method

.method public isScrollLocked()Z
    .locals 1

    .prologue
    .line 5106
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mScrollDeterminator:Lcom/android/launcher3/util/event/ScrollDeterminator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mScrollDeterminator:Lcom/android/launcher3/util/event/ScrollDeterminator;

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

.method isSelectState()Z
    .locals 2

    .prologue
    .line 1783
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mState:Lcom/android/launcher3/home/HomeController$State;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/android/launcher3/home/HomeController$State;->access$100(Lcom/android/launcher3/home/HomeController$State;I)Z

    move-result v0

    return v0
.end method

.method isStartedSwipeAffordanceAnim()Z
    .locals 1

    .prologue
    .line 5059
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mSwipeAffordance:Lcom/android/launcher3/home/SwipeAffordance;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mSwipeAffordance:Lcom/android/launcher3/home/SwipeAffordance;

    invoke-virtual {v0}, Lcom/android/launcher3/home/SwipeAffordance;->isStartedAnim()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isSwitchingState()Z
    .locals 1

    .prologue
    .line 1766
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/stage/StageManager;->isRunningAnimation()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1767
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->isSelectState()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->isRunningStateChangeAnimation()Z

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

.method public isVerticalScroll()Z
    .locals 1

    .prologue
    .line 5096
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mScrollDeterminator:Lcom/android/launcher3/util/event/ScrollDeterminator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mScrollDeterminator:Lcom/android/launcher3/util/event/ScrollDeterminator;

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

.method isVisibleGridPanel()Z
    .locals 2

    .prologue
    .line 5071
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mScreenGridPanel:Lcom/android/launcher3/home/ScreenGridPanel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mScreenGridPanel:Lcom/android/launcher3/home/ScreenGridPanel;

    .line 5072
    invoke-virtual {v0}, Lcom/android/launcher3/home/ScreenGridPanel;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mScreenGridPanel:Lcom/android/launcher3/home/ScreenGridPanel;

    invoke-virtual {v0}, Lcom/android/launcher3/home/ScreenGridPanel;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWaitingForResult()Z
    .locals 1

    .prologue
    .line 1730
    iget-boolean v0, p0, Lcom/android/launcher3/home/HomeController;->mWaitingForResult:Z

    return v0
.end method

.method isWorkspaceLocked()Z
    .locals 1

    .prologue
    .line 1722
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mHomeBindController:Lcom/android/launcher3/home/HomeBindController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeBindController;->isWorkspaceLoading()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher3/home/HomeController;->mWaitingForResult:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method modifyItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJIIII)V
    .locals 12
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;
    .param p2, "container"    # J
    .param p4, "screenId"    # J
    .param p6, "cellX"    # I
    .param p7, "cellY"    # I
    .param p8, "spanX"    # I
    .param p9, "spanY"    # I

    .prologue
    .line 3508
    iget v10, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->hidden:I

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide/from16 v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v10}, Lcom/android/launcher3/home/HomeController;->modifyItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJIIIII)V

    .line 3509
    return-void
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
    .line 3561
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3562
    .local v0, "contentValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3564
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 3565
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 3566
    .local v3, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    iput-wide p2, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    .line 3570
    if-gez p4, :cond_0

    const-wide/16 v6, -0x65

    cmp-long v5, p2, v6

    if-nez v5, :cond_0

    .line 3571
    iget-object v5, p0, Lcom/android/launcher3/home/HomeController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    iget v6, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    iget v7, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    invoke-virtual {v5, v6, v7}, Lcom/android/launcher3/home/Hotseat;->getOrderInHotseat(II)I

    move-result v5

    int-to-long v6, v5

    iput-wide v6, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    .line 3576
    :goto_1
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 3577
    .local v4, "values":Landroid/content/ContentValues;
    const-string v5, "container"

    iget-wide v6, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3578
    const-string v5, "cellX"

    iget v6, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3579
    const-string v5, "cellY"

    iget v6, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3580
    const-string v5, "rank"

    iget v6, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3581
    const-string v5, "screen"

    iget-wide v6, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3583
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3564
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3573
    .end local v4    # "values":Landroid/content/ContentValues;
    :cond_0
    int-to-long v6, p4

    iput-wide v6, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    goto :goto_1

    .line 3585
    .end local v3    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_1
    iget-object v5, p0, Lcom/android/launcher3/home/HomeController;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5, v6, v0, p1}, Lcom/android/launcher3/common/model/FavoritesUpdater;->updateItemsInDatabaseHelper(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 3586
    return-void
.end method

.method public moveItemFromFolder(Lcom/android/launcher3/common/base/item/IconInfo;)V
    .locals 10
    .param p1, "iconInfo"    # Lcom/android/launcher3/common/base/item/IconInfo;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 3371
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->getLauncherModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/LauncherModel;->getHomeLoader()Lcom/android/launcher3/home/HomeLoader;

    move-result-object v3

    .line 3372
    .local v3, "homeLoader":Lcom/android/launcher3/home/HomeLoader;
    iget-wide v6, p1, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    invoke-virtual {v3, v6, v7}, Lcom/android/launcher3/home/HomeLoader;->getItemById(J)Lcom/android/launcher3/common/base/item/ItemInfo;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/folder/FolderInfo;

    .line 3373
    .local v2, "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    invoke-virtual {v2, p1}, Lcom/android/launcher3/folder/FolderInfo;->remove(Lcom/android/launcher3/common/base/item/IconInfo;)V

    .line 3374
    const/4 v6, 0x2

    new-array v5, v6, [I

    .line 3375
    .local v5, "targetCell":[I
    const-wide/16 v6, -0x64

    iput-wide v6, p1, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    .line 3376
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v6}, Lcom/android/launcher3/home/Workspace;->getChildCount()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .line 3378
    .local v1, "count":I
    move v4, v1

    .local v4, "index":I
    :goto_0
    if-lez v4, :cond_2

    .line 3379
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v6, v4}, Lcom/android/launcher3/home/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 3380
    .local v0, "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    if-nez v0, :cond_1

    .line 3378
    :cond_0
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 3384
    :cond_1
    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v6

    if-lez v6, :cond_0

    .line 3389
    .end local v0    # "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    :cond_2
    invoke-direct {p0, v5, v4, v9}, Lcom/android/launcher3/home/HomeController;->findEmptyCell([IIZ)J

    move-result-wide v6

    iput-wide v6, p1, Lcom/android/launcher3/common/base/item/IconInfo;->screenId:J

    .line 3390
    aget v6, v5, v8

    iput v6, p1, Lcom/android/launcher3/common/base/item/IconInfo;->cellX:I

    .line 3391
    aget v6, v5, v9

    iput v6, p1, Lcom/android/launcher3/common/base/item/IconInfo;->cellY:I

    .line 3393
    invoke-virtual {p0, p1}, Lcom/android/launcher3/home/HomeController;->updateItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 3394
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mHomeBindController:Lcom/android/launcher3/home/HomeBindController;

    invoke-virtual {v6, p1, v8}, Lcom/android/launcher3/home/HomeBindController;->bindItem(Lcom/android/launcher3/common/base/item/ItemInfo;Z)V

    .line 3396
    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    new-instance v7, Lcom/android/launcher3/home/HomeController$31;

    invoke-direct {v7, p0, p1}, Lcom/android/launcher3/home/HomeController$31;-><init>(Lcom/android/launcher3/home/HomeController;Lcom/android/launcher3/common/base/item/IconInfo;)V

    const-wide/16 v8, 0x1f4

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3404
    return-void
.end method

.method public moveOutItemsFromLockedFolder(Lcom/android/launcher3/folder/FolderInfo;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 23
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
    .line 4740
    .local p2, "homeNeedUpdateInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    .local p3, "appsNeedUpdateInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/folder/FolderInfo;->isContainApps()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 4788
    :cond_0
    return-void

    .line 4743
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/HomeController;->mHomeBindController:Lcom/android/launcher3/home/HomeBindController;

    move-object/from16 v17, v0

    .line 4744
    .local v17, "homeBindController":Lcom/android/launcher3/home/HomeBindController;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/HomeController;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    invoke-virtual {v6}, Lcom/android/launcher3/home/HomeLoader;->getItemPositionHelper()Lcom/android/launcher3/home/HomeItemPositionHelper;

    move-result-object v2

    .line 4745
    .local v2, "homeItemPositionHelper":Lcom/android/launcher3/home/HomeItemPositionHelper;
    const-string v6, "Launcher.HomeController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "the folder title of moveoutHomeOrAppsItemsFromLockedFolder is  :  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/launcher3/folder/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4746
    const/16 v19, 0x0

    .local v19, "index":I
    :goto_0
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    move/from16 v0, v19

    if-ge v0, v6, :cond_0

    .line 4747
    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 4748
    .local v20, "info":Lcom/android/launcher3/common/base/item/IconInfo;
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/FolderInfo;->remove(Lcom/android/launcher3/common/base/item/IconInfo;)V

    .line 4749
    const/4 v6, 0x2

    new-array v3, v6, [I

    .line 4750
    .local v3, "xy":[I
    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/android/launcher3/folder/FolderInfo;->screenId:J

    .line 4751
    .local v4, "screenId":J
    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/launcher3/folder/FolderInfo;->cellX:I

    move-object/from16 v0, p1

    iget v7, v0, Lcom/android/launcher3/folder/FolderInfo;->cellY:I

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher3/home/HomeItemPositionHelper;->findNearEmptyCell([IJII)Z

    move-result v16

    .line 4752
    .local v16, "found":Z
    const-string v6, "Launcher.HomeController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " moveout found pos is   :  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " / "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x0

    aget v9, v3, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " / "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x1

    aget v9, v3, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4753
    if-nez v16, :cond_4

    .line 4754
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/HomeController;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    invoke-virtual {v6}, Lcom/android/launcher3/home/HomeLoader;->getWorkspaceScreenCount()I

    move-result v21

    .line 4755
    .local v21, "screenCount":I
    const/16 v22, 0x0

    .line 4756
    .local v22, "startPage":I
    move/from16 v18, v22

    .local v18, "i":I
    :goto_1
    move/from16 v0, v18

    move/from16 v1, v21

    if-ge v0, v1, :cond_3

    if-nez v16, :cond_3

    .line 4757
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/HomeController;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Lcom/android/launcher3/home/HomeLoader;->getWorkspaceScreenId(I)J

    move-result-wide v4

    .line 4758
    move/from16 v0, v18

    int-to-long v8, v0

    move-object/from16 v0, p1

    iget-wide v10, v0, Lcom/android/launcher3/folder/FolderInfo;->screenId:J

    cmp-long v6, v8, v10

    if-eqz v6, :cond_2

    .line 4759
    move/from16 v0, v18

    int-to-long v8, v0

    const/4 v10, 0x1

    const/4 v11, 0x1

    move-object v6, v2

    move-object v7, v3

    invoke-virtual/range {v6 .. v11}, Lcom/android/launcher3/home/HomeItemPositionHelper;->findEmptyCell([IJII)Z

    move-result v16

    .line 4756
    :cond_2
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 4762
    :cond_3
    if-nez v16, :cond_4

    .line 4763
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/HomeController;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    const-wide/16 v10, -0x1

    move/from16 v0, v21

    invoke-virtual {v6, v8, v0, v10, v11}, Lcom/android/launcher3/home/HomeLoader;->insertWorkspaceScreen(Landroid/content/Context;IJ)J

    move-result-wide v4

    .line 4766
    .end local v18    # "i":I
    .end local v21    # "screenCount":I
    .end local v22    # "startPage":I
    :cond_4
    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/HomeBindController;->createShortcut(Lcom/android/launcher3/common/base/item/IconInfo;)Landroid/view/View;

    move-result-object v7

    .line 4767
    .local v7, "v":Landroid/view/View;
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v8, 0x1

    if-ge v6, v8, :cond_5

    .line 4768
    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/launcher3/folder/FolderInfo;->cellX:I

    move-object/from16 v0, v20

    iput v6, v0, Lcom/android/launcher3/common/base/item/IconInfo;->cellX:I

    .line 4769
    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/launcher3/folder/FolderInfo;->cellY:I

    move-object/from16 v0, v20

    iput v6, v0, Lcom/android/launcher3/common/base/item/IconInfo;->cellY:I

    .line 4770
    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/android/launcher3/folder/FolderInfo;->screenId:J

    move-object/from16 v0, v20

    iput-wide v8, v0, Lcom/android/launcher3/common/base/item/IconInfo;->screenId:J

    .line 4771
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher3/home/HomeController;->removeHomeItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 4777
    :goto_2
    const-wide/16 v8, -0x64

    move-object/from16 v0, v20

    iput-wide v8, v0, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    .line 4778
    move-object/from16 v0, v20

    iget-wide v8, v0, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    move-object/from16 v0, v20

    iget-wide v10, v0, Lcom/android/launcher3/common/base/item/IconInfo;->screenId:J

    move-object/from16 v0, v20

    iget v12, v0, Lcom/android/launcher3/common/base/item/IconInfo;->cellX:I

    move-object/from16 v0, v20

    iget v13, v0, Lcom/android/launcher3/common/base/item/IconInfo;->cellY:I

    const/4 v14, 0x1

    const/4 v15, 0x1

    move-object/from16 v6, p0

    invoke-virtual/range {v6 .. v15}, Lcom/android/launcher3/home/HomeController;->addInScreen(Landroid/view/View;JJIIII)V

    .line 4779
    move-object/from16 v0, v20

    iget-wide v8, v0, Lcom/android/launcher3/common/base/item/IconInfo;->id:J

    const-wide/16 v10, -0x1

    cmp-long v6, v8, v10

    if-nez v6, :cond_6

    .line 4780
    invoke-static {}, Lcom/android/launcher3/common/model/FavoritesProvider;->getInstance()Lcom/android/launcher3/common/model/FavoritesProvider;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/common/model/FavoritesProvider;->generateNewItemId()J

    move-result-wide v8

    move-object/from16 v0, v20

    iput-wide v8, v0, Lcom/android/launcher3/common/base/item/IconInfo;->id:J

    .line 4781
    move-object/from16 v0, v20

    iget-wide v10, v0, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    move-object/from16 v0, v20

    iget-wide v12, v0, Lcom/android/launcher3/common/base/item/IconInfo;->screenId:J

    move-object/from16 v0, v20

    iget v14, v0, Lcom/android/launcher3/common/base/item/IconInfo;->cellX:I

    move-object/from16 v0, v20

    iget v15, v0, Lcom/android/launcher3/common/base/item/IconInfo;->cellY:I

    move-object/from16 v8, p0

    move-object/from16 v9, v20

    invoke-virtual/range {v8 .. v15}, Lcom/android/launcher3/home/HomeController;->addItemToDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJII)J

    .line 4782
    const-string v6, "Launcher.HomeController"

    const-string v8, "moveoutHomeOrAppsItemsFromLockedFolder Home no ID "

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4746
    :goto_3
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_0

    .line 4773
    :cond_5
    const/4 v6, 0x0

    aget v6, v3, v6

    move-object/from16 v0, v20

    iput v6, v0, Lcom/android/launcher3/common/base/item/IconInfo;->cellX:I

    .line 4774
    const/4 v6, 0x1

    aget v6, v3, v6

    move-object/from16 v0, v20

    iput v6, v0, Lcom/android/launcher3/common/base/item/IconInfo;->cellY:I

    .line 4775
    move-object/from16 v0, v20

    iput-wide v4, v0, Lcom/android/launcher3/common/base/item/IconInfo;->screenId:J

    goto :goto_2

    .line 4784
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/HomeController;->updateItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 4785
    const-string v6, "Launcher.HomeController"

    const-string v8, "moveoutHomeOrAppsItemsFromLockedFolder Home has ID"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public notifyCapture(Z)V
    .locals 1
    .param p1, "immediate"    # Z

    .prologue
    .line 4800
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mHomeCapturePreview:Lcom/android/launcher3/util/capture/CapturePreview;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/capture/CapturePreview;->notifyCapture(Z)V

    .line 4801
    return-void
.end method

.method notifyCaptureIfNecessary()V
    .locals 1

    .prologue
    .line 4804
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mHomeCapturePreview:Lcom/android/launcher3/util/capture/CapturePreview;

    invoke-virtual {v0}, Lcom/android/launcher3/util/capture/CapturePreview;->notifyCaptureIfNecessary()V

    .line 4805
    return-void
.end method

.method public notifyControllerItemsChanged()V
    .locals 1

    .prologue
    .line 4664
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/HomeController;->notifyCapture(Z)V

    .line 4665
    return-void

    .line 4664
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 3276
    invoke-virtual {p0, v1}, Lcom/android/launcher3/home/HomeController;->setWaitingForResult(Z)V

    .line 3278
    sparse-switch p1, :sswitch_data_0

    .line 3303
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/home/HomeController;->requestCreateShortcut(IILandroid/content/Intent;)V

    .line 3304
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/view/DragLayer;->clearAnimatedView()V

    .line 3307
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 3281
    :sswitch_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/home/HomeController;->requestCreateOrPickAppWidget(IILandroid/content/Intent;)V

    goto :goto_0

    .line 3285
    :sswitch_2
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->isOverviewState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3286
    invoke-virtual {p0, v1}, Lcom/android/launcher3/home/HomeController;->enterNormalState(Z)V

    goto :goto_0

    .line 3291
    :sswitch_3
    invoke-direct {p0, p2, p3}, Lcom/android/launcher3/home/HomeController;->requestBindAppWidget(ILandroid/content/Intent;)V

    goto :goto_0

    .line 3295
    :sswitch_4
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/home/HomeController;->requestReconfigureAppWidget(IILandroid/content/Intent;)V

    goto :goto_0

    .line 3278
    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_1
        0x9 -> :sswitch_1
        0xa -> :sswitch_2
        0xb -> :sswitch_3
        0xc -> :sswitch_4
        0x65 -> :sswitch_0
    .end sparse-switch
.end method

.method public onBackPressed()Z
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x1

    .line 3251
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->initBounceAnimation()V

    .line 3252
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mState:Lcom/android/launcher3/home/HomeController$State;

    invoke-static {v0, v3}, Lcom/android/launcher3/home/HomeController$State;->access$100(Lcom/android/launcher3/home/HomeController$State;I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mState:Lcom/android/launcher3/home/HomeController$State;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/android/launcher3/home/HomeController$State;->access$100(Lcom/android/launcher3/home/HomeController$State;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3253
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mState:Lcom/android/launcher3/home/HomeController$State;

    invoke-static {v0, v3}, Lcom/android/launcher3/home/HomeController$State;->access$100(Lcom/android/launcher3/home/HomeController$State;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3254
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mZeroPageController:Lcom/android/launcher3/home/ZeroPageController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mZeroPageController:Lcom/android/launcher3/home/ZeroPageController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/ZeroPageController;->isCurrentZeroPage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3255
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mZeroPageController:Lcom/android/launcher3/home/ZeroPageController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/ZeroPageController;->startZeroPage()V

    .line 3269
    :goto_0
    return v2

    .line 3257
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/launcher3/home/HomeController;->enterNormalState(Z)V

    goto :goto_0

    .line 3260
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/launcher3/home/HomeController;->enterNormalState(Z)V

    goto :goto_0

    .line 3262
    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mState:Lcom/android/launcher3/home/HomeController$State;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/android/launcher3/home/HomeController$State;->access$100(Lcom/android/launcher3/home/HomeController$State;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3263
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->startHomeSettingActivity()V

    .line 3264
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->exitScreenGridStateDelayed()V

    goto :goto_0

    .line 3266
    :cond_4
    const-string v0, "1"

    invoke-virtual {p0, v2, v0}, Lcom/android/launcher3/home/HomeController;->exitResizeState(ZLjava/lang/String;)V

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
    .line 4051
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

    .line 4052
    .local v0, "ii":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mUpdateBadgeItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4053
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mUpdateBadgeItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4057
    .end local v0    # "ii":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mUpdateBadgeListRunnable:Ljava/lang/Runnable;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/Launcher;->waitUntilResume(Ljava/lang/Runnable;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4061
    :goto_1
    return-void

    .line 4060
    :cond_2
    invoke-direct {p0}, Lcom/android/launcher3/home/HomeController;->updateBadgeItems()V

    goto :goto_1
.end method

.method public onChangeColorForBg(Z)V
    .locals 1
    .param p1, "whiteBg"    # Z

    .prologue
    .line 4016
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/home/Hotseat;->changeColorForBg(Z)V

    .line 4017
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/home/Workspace;->changeColorForBg(Z)V

    .line 4018
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mOverviewPanel:Lcom/android/launcher3/home/OverviewPanel;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/home/OverviewPanel;->changeColorForBg(Z)V

    .line 4019
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mDropTargetBar:Lcom/android/launcher3/home/DropTargetBar;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/home/DropTargetBar;->changeColorForBg(Z)V

    .line 4020
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mSwipeAffordance:Lcom/android/launcher3/home/SwipeAffordance;

    if-eqz v0, :cond_0

    .line 4021
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mSwipeAffordance:Lcom/android/launcher3/home/SwipeAffordance;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/home/SwipeAffordance;->changeColorForBg(Z)V

    .line 4023
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mZeroPageController:Lcom/android/launcher3/home/ZeroPageController;

    if-eqz v0, :cond_1

    .line 4024
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mZeroPageController:Lcom/android/launcher3/home/ZeroPageController;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/home/ZeroPageController;->changeColorForBg(Z)V

    .line 4026
    :cond_1
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFlexibleGrid()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4027
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mScreenGridPanel:Lcom/android/launcher3/home/ScreenGridPanel;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/home/ScreenGridPanel;->changeColorForBg(Z)V

    .line 4029
    :cond_2
    return-void
.end method

.method public onChangeSelectMode(ZZ)V
    .locals 6
    .param p1, "enter"    # Z
    .param p2, "animated"    # Z

    .prologue
    .line 4152
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->isHomeStage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4153
    if-eqz p1, :cond_1

    .line 4154
    invoke-virtual {p0, p2}, Lcom/android/launcher3/home/HomeController;->enterSelectState(Z)V

    .line 4155
    sget-object v0, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0900d1

    .line 4156
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 4157
    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090033

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    .line 4158
    invoke-virtual {v5}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v5}, Lcom/android/launcher3/home/Workspace;->getPageCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 4157
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4155
    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/Talk;->postSay(Ljava/lang/String;)V

    .line 4163
    :cond_0
    :goto_0
    return-void

    .line 4160
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v0}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->clearCheckedApps()V

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/view/View;Z)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "isChecked"    # Z

    .prologue
    .line 4171
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-wide v2, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v4, -0x65

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 4172
    .local v0, "isHotseat":Z
    :goto_0
    if-eqz p2, :cond_2

    .line 4173
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    .line 4174
    invoke-virtual {v1}, Lcom/android/launcher3/home/Hotseat;->getDragController()Lcom/android/launcher3/home/HotseatDragController;

    move-result-object v1

    :goto_1
    check-cast v1, Lcom/android/launcher3/common/drag/DragSource;

    .line 4173
    invoke-virtual {v2, p1, v1}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->addCheckedApp(Landroid/view/View;Lcom/android/launcher3/common/drag/DragSource;)V

    .line 4178
    :goto_2
    return-void

    .line 4171
    .end local v0    # "isHotseat":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 4174
    .restart local v0    # "isHotseat":Z
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->getDragController()Lcom/android/launcher3/home/WorkspaceDragController;

    move-result-object v1

    goto :goto_1

    .line 4176
    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->removeCheckedApp(Landroid/view/View;)V

    goto :goto_2
.end method

.method public onClick(Landroid/view/View;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1590
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->isSwitchingState()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {}, Lcom/android/launcher3/home/ZeroPageController;->isMoving()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/launcher3/home/HomeController;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/launcher3/home/HomeController;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    .line 1591
    invoke-virtual {v4}, Lcom/android/launcher3/common/tray/TrayManager;->isMoving()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1641
    .end local p1    # "v":Landroid/view/View;
    :cond_0
    :goto_0
    return v2

    .line 1595
    .restart local p1    # "v":Landroid/view/View;
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->initBounceAnimation()V

    .line 1597
    instance-of v4, p1, Lcom/android/launcher3/common/base/view/CellLayout;

    if-eqz v4, :cond_3

    .line 1598
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->isOverviewState()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1599
    iget-object v4, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v4, p1}, Lcom/android/launcher3/home/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 1600
    .local v0, "indexToClick":I
    iget-object v4, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v4}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v4

    if-eq v0, v4, :cond_2

    .line 1601
    iget-object v4, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v4, v0}, Lcom/android/launcher3/home/Workspace;->checkVisibilityOfCustomLayout(I)V

    .line 1602
    iget-object v4, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v4, v0, v3}, Lcom/android/launcher3/home/Workspace;->moveToScreen(IZ)V

    .line 1604
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/launcher3/home/HomeController;->enterNormalState(Z)V

    goto :goto_0

    .line 1609
    .end local v0    # "indexToClick":I
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 1610
    .local v1, "tag":Ljava/lang/Object;
    instance-of v4, v1, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v4, :cond_5

    .line 1611
    instance-of v3, p1, Lcom/android/launcher3/folder/view/FolderIconView;

    if-eqz v3, :cond_0

    .line 1612
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFolderSelect()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->isSelectState()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1613
    check-cast p1, Lcom/android/launcher3/folder/view/FolderIconView;

    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {p1}, Lcom/android/launcher3/folder/view/FolderIconView;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/CheckBox;->toggle()V

    goto :goto_0

    .line 1615
    .restart local p1    # "v":Landroid/view/View;
    :cond_4
    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mState:Lcom/android/launcher3/home/HomeController$State;

    invoke-static {v3, v2}, Lcom/android/launcher3/home/HomeController$State;->access$100(Lcom/android/launcher3/home/HomeController$State;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1616
    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3, p1}, Lcom/android/launcher3/Launcher;->onClickFolderIcon(Landroid/view/View;)V

    goto :goto_0

    .line 1621
    :cond_5
    instance-of v4, v1, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v4, :cond_7

    .line 1622
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->isSelectState()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1623
    instance-of v3, p1, Lcom/android/launcher3/common/view/IconView;

    if-eqz v3, :cond_0

    check-cast v1, Lcom/android/launcher3/common/base/item/IconInfo;

    .end local v1    # "tag":Ljava/lang/Object;
    iget-boolean v3, v1, Lcom/android/launcher3/common/base/item/IconInfo;->isAppsButton:Z

    if-nez v3, :cond_0

    .line 1624
    check-cast p1, Lcom/android/launcher3/common/view/IconView;

    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {p1}, Lcom/android/launcher3/common/view/IconView;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/CheckBox;->toggle()V

    goto :goto_0

    .line 1627
    .restart local v1    # "tag":Ljava/lang/Object;
    .restart local p1    # "v":Landroid/view/View;
    :cond_6
    invoke-direct {p0, p1}, Lcom/android/launcher3/home/HomeController;->onClickAppShortcut(Landroid/view/View;)V

    goto :goto_0

    .line 1630
    :cond_7
    instance-of v4, v1, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    if-eqz v4, :cond_9

    .line 1631
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->isSelectState()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1632
    instance-of v4, p1, Lcom/android/launcher3/home/PendingAppWidgetHostView;

    if-eqz v4, :cond_0

    .line 1633
    iget-object v4, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->isSafeModeEnabled()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1634
    iget-object v4, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    const v5, 0x7f0900b1

    invoke-static {v4, v5, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 1636
    :cond_8
    check-cast p1, Lcom/android/launcher3/home/PendingAppWidgetHostView;

    .end local p1    # "v":Landroid/view/View;
    invoke-direct {p0, p1}, Lcom/android/launcher3/home/HomeController;->onClickPendingWidget(Lcom/android/launcher3/home/PendingAppWidgetHostView;)V

    goto/16 :goto_0

    .restart local p1    # "v":Landroid/view/View;
    :cond_9
    move v2, v3

    .line 1641
    goto/16 :goto_0
.end method

.method public onClickMultiSelectPanel(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    const/4 v1, 0x1

    .line 4182
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->isHomeStage()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->isFolderStage()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 4183
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getSecondTopStageMode()I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 4203
    :cond_0
    :goto_0
    return-void

    .line 4187
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 4202
    :goto_1
    invoke-virtual {p0, v1, v1}, Lcom/android/launcher3/home/HomeController;->enterNormalState(ZZ)V

    goto :goto_0

    .line 4189
    :pswitch_0
    invoke-direct {p0}, Lcom/android/launcher3/home/HomeController;->removeShortcut()V

    goto :goto_1

    .line 4193
    :pswitch_1
    invoke-direct {p0}, Lcom/android/launcher3/home/HomeController;->createFolder()V

    goto :goto_1

    .line 4187
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onConfigurationChangedIfNeeded(Z)V
    .locals 6
    .param p1, "changedOrientation"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3977
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v0

    .line 3979
    .local v0, "dp":Lcom/android/launcher3/common/deviceprofile/DeviceProfile;
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportNavigationBar()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3980
    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->isVerticalBarLayout()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3981
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mHomeContainer:Lcom/android/launcher3/home/HomeContainer;

    iget v3, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->navigationBarHeight:I

    invoke-virtual {v2, v4, v4, v3, v4}, Lcom/android/launcher3/home/HomeContainer;->setPadding(IIII)V

    .line 3987
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->isStartedSwipeAffordanceAnim()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->isHomeStage()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3988
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mSwipeAffordance:Lcom/android/launcher3/home/SwipeAffordance;

    invoke-virtual {v2, v5}, Lcom/android/launcher3/home/SwipeAffordance;->startCancelAnim(Z)V

    .line 3991
    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->isHomeStage()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3992
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    invoke-virtual {v2}, Lcom/android/launcher3/common/drag/DragManager;->setScrollZone()V

    .line 3995
    :cond_2
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v2}, Lcom/android/launcher3/home/Hotseat;->getLayout()Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/home/HotseatCellLayout;

    .line 3996
    .local v1, "hotseatCellLayout":Lcom/android/launcher3/home/HotseatCellLayout;
    invoke-virtual {v1}, Lcom/android/launcher3/home/HotseatCellLayout;->updateIconViews()V

    .line 3998
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->getState()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    .line 3999
    invoke-virtual {p0, v4}, Lcom/android/launcher3/home/HomeController;->exitResizeState(Z)V

    .line 4001
    :cond_3
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    invoke-virtual {v2}, Lcom/android/launcher3/common/drag/DragManager;->isQuickOptionShowing()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 4002
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    invoke-virtual {v2}, Lcom/android/launcher3/common/drag/DragManager;->removeQuickOptionView()V

    .line 4005
    :cond_4
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher3/home/Workspace;->onConfigurationChangedIfNeeded()V

    .line 4006
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mScreenGridPanel:Lcom/android/launcher3/home/ScreenGridPanel;

    invoke-virtual {v2}, Lcom/android/launcher3/home/ScreenGridPanel;->onConfigurationChangedIfNeeded()V

    .line 4007
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mOverviewPanel:Lcom/android/launcher3/home/OverviewPanel;

    invoke-virtual {v2}, Lcom/android/launcher3/home/OverviewPanel;->onConfigurationChangedIfNeeded()V

    .line 4008
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mHomeAnimation:Lcom/android/launcher3/home/HomeTransitionAnimation;

    invoke-virtual {v2}, Lcom/android/launcher3/home/HomeTransitionAnimation;->onConfigurationChangedIfNeeded()V

    .line 4009
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mDropTargetBar:Lcom/android/launcher3/home/DropTargetBar;

    invoke-virtual {v2}, Lcom/android/launcher3/home/DropTargetBar;->onConfigurationChangedIfNeeded()V

    .line 4012
    invoke-virtual {p0, v5}, Lcom/android/launcher3/home/HomeController;->notifyCapture(Z)V

    .line 4013
    return-void

    .line 3983
    .end local v1    # "hotseatCellLayout":Lcom/android/launcher3/home/HotseatCellLayout;
    :cond_5
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mHomeContainer:Lcom/android/launcher3/home/HomeContainer;

    iget v3, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->navigationBarHeight:I

    invoke-virtual {v2, v4, v4, v4, v3}, Lcom/android/launcher3/home/HomeContainer;->setPadding(IIII)V

    goto :goto_0
.end method

.method public onDestroyActivity()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 645
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFestivalPage()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mFestivalPageController:Lcom/android/launcher3/home/FestivalPageController;

    if-eqz v1, :cond_0

    .line 646
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mFestivalPageController:Lcom/android/launcher3/home/FestivalPageController;

    invoke-virtual {v1}, Lcom/android/launcher3/home/FestivalPageController;->onDestroy()V

    .line 649
    :cond_0
    iput-object v2, p0, Lcom/android/launcher3/home/HomeController;->mAppWidgetHost:Lcom/android/launcher3/home/LauncherAppWidgetHost;

    .line 651
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    if-eqz v1, :cond_1

    .line 652
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/common/tray/TrayManager;->removeTrayEventCallbacks(Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;)V

    .line 655
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mHomeBindController:Lcom/android/launcher3/home/HomeBindController;

    if-eqz v1, :cond_2

    .line 656
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mHomeBindController:Lcom/android/launcher3/home/HomeBindController;

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeBindController;->clearWidgetsToAdvance()V

    .line 657
    iput-object v2, p0, Lcom/android/launcher3/home/HomeController;->mHomeBindController:Lcom/android/launcher3/home/HomeBindController;

    .line 660
    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    if-eqz v1, :cond_3

    .line 661
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 662
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->removeAllWorkspaceScreens()V

    .line 663
    iput-object v2, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    .line 666
    :cond_3
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mZeroPageController:Lcom/android/launcher3/home/ZeroPageController;

    if-eqz v1, :cond_4

    .line 667
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mZeroPageController:Lcom/android/launcher3/home/ZeroPageController;

    invoke-virtual {v1}, Lcom/android/launcher3/home/ZeroPageController;->onDestroy()V

    .line 670
    :cond_4
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    if-eqz v1, :cond_5

    .line 671
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->removeMultiSelectCallbacks(Lcom/android/launcher3/common/multiselect/MultiSelectManager$MultiSelectListener;)V

    .line 674
    :cond_5
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    if-eqz v1, :cond_6

    .line 675
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/folder/folderlock/FolderLock;->removeFolderLockActionCallback(Lcom/android/launcher3/folder/folderlock/FolderLock$FolderLockActionCallback;)V

    .line 678
    :cond_6
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mExitDragStateHandler:Landroid/os/Handler;

    if-eqz v1, :cond_7

    .line 679
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mExitDragStateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 682
    :cond_7
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mFindAppPositionHandler:Landroid/os/Handler;

    if-eqz v1, :cond_8

    .line 683
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mFindAppPositionHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 686
    :cond_8
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->resetBlurRunnable()V

    .line 688
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    .line 690
    .local v0, "launcherAppState":Lcom/android/launcher3/LauncherAppState;
    if-eqz v0, :cond_9

    .line 691
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/launcher3/LauncherModel;->unregisterOnBadgeBindingCompletedLisnter(Lcom/android/launcher3/LauncherModel$OnBadgeBindingCompletedLisnter;)V

    .line 692
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/launcher3/LauncherModel;->unregisterOnLiveIconUpdateLisnter(Lcom/android/launcher3/LauncherModel$OnRefreshLiveIconListener;)V

    .line 695
    :cond_9
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportCustomerDialerChange()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 696
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mDialerChangeObserver:Lcom/android/launcher3/home/HomeController$DialerChangeObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 699
    :cond_a
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mEdgeLight:Lcom/android/launcher3/home/EdgeLight;

    if-eqz v1, :cond_b

    .line 700
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mEdgeLight:Lcom/android/launcher3/home/EdgeLight;

    invoke-virtual {v1}, Lcom/android/launcher3/home/EdgeLight;->unregisterContentObserver()V

    .line 702
    :cond_b
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mHomeCapturePreview:Lcom/android/launcher3/util/capture/CapturePreview;

    invoke-virtual {v1}, Lcom/android/launcher3/util/capture/CapturePreview;->stopCapture()V

    .line 703
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 12
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v11, 0x7f0901bf

    const v10, 0x7f090151

    const v9, 0xc369

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1436
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->isWorkspaceLocked()Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->isHomeStage()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    .line 1437
    invoke-virtual {v6}, Lcom/android/launcher3/common/tray/TrayManager;->isMoving()Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->isScreenGridState()Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mScrollDeterminator:Lcom/android/launcher3/util/event/ScrollDeterminator;

    .line 1438
    invoke-virtual {v6}, Lcom/android/launcher3/util/event/ScrollDeterminator;->cancelLongPressOnHScroll()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1439
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->isSwitchingState()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {}, Lcom/android/launcher3/home/ZeroPageController;->isMoving()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1537
    :cond_1
    :goto_0
    return v8

    .line 1443
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->initBounceAnimation()V

    .line 1445
    instance-of v6, p1, Lcom/android/launcher3/home/Workspace;

    if-eqz v6, :cond_3

    .line 1446
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->isOverviewState()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1447
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v6}, Lcom/android/launcher3/home/Workspace;->isTouchActive()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1448
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v6, v9, v7}, Lcom/android/launcher3/home/Workspace;->performHapticFeedback(II)Z

    .line 1450
    invoke-virtual {p0, v7}, Lcom/android/launcher3/home/HomeController;->enterOverviewState(Z)V

    .line 1451
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 1452
    .local v5, "res":Landroid/content/res/Resources;
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v6

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1453
    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "2"

    .line 1452
    invoke-virtual {v6, v8, v9, v10}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v8, v7

    .line 1454
    goto :goto_0

    .line 1463
    .end local v5    # "res":Landroid/content/res/Resources;
    :cond_3
    instance-of v6, p1, Lcom/android/launcher3/home/WorkspaceCellLayout;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v6}, Lcom/android/launcher3/home/Workspace;->hasTargetView()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1467
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v6, :cond_5

    .line 1468
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/common/base/item/IconInfo;

    iget-boolean v6, v6, Lcom/android/launcher3/common/base/item/IconInfo;->isAppsButton:Z

    if-nez v6, :cond_1

    .line 1473
    :cond_5
    const/4 v1, 0x1

    .line 1474
    .local v1, "animated":Z
    instance-of v6, p1, Lcom/android/launcher3/home/AppWidgetResizeFrame;

    if-eqz v6, :cond_6

    .line 1476
    check-cast p1, Lcom/android/launcher3/home/AppWidgetResizeFrame;

    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {p1}, Lcom/android/launcher3/home/AppWidgetResizeFrame;->getResizeWidgetView()Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    move-result-object p1

    .line 1477
    .restart local p1    # "v":Landroid/view/View;
    const/4 v1, 0x0

    .line 1480
    :cond_6
    const/4 v4, 0x0

    .line 1481
    .local v4, "longClickCellInfo":Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;
    const/4 v3, 0x0

    .line 1482
    .local v3, "itemUnderLongClick":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lcom/android/launcher3/common/base/item/ItemInfo;

    if-eqz v6, :cond_8

    .line 1483
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 1485
    .local v2, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    if-nez v6, :cond_7

    .line 1486
    const-string v6, "Launcher.HomeController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "v\'s getParent() is null, v screenID = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v10, v2, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1490
    :cond_7
    new-instance v4, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    .end local v4    # "longClickCellInfo":Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;
    invoke-direct {v4, p1, v2}, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;-><init>(Landroid/view/View;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 1491
    .restart local v4    # "longClickCellInfo":Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;
    iget-object v3, v4, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 1492
    invoke-direct {p0}, Lcom/android/launcher3/home/HomeController;->resetAddInfo()V

    .line 1495
    .end local v2    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_8
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    invoke-virtual {v6}, Lcom/android/launcher3/common/drag/DragManager;->isDragging()Z

    move-result v6

    if-nez v6, :cond_9

    .line 1496
    if-nez v3, :cond_c

    .line 1498
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->isOverviewState()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 1499
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v6}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v6

    iget-object v8, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v8, p1}, Lcom/android/launcher3/home/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v8

    if-ne v6, v8, :cond_9

    .line 1500
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v6, p1}, Lcom/android/launcher3/home/Workspace;->startReordering(Landroid/view/View;)Z

    .line 1501
    iput-boolean v7, p0, Lcom/android/launcher3/home/HomeController;->mHomePageReorder:Z

    :cond_9
    :goto_1
    move v8, v7

    .line 1537
    goto/16 :goto_0

    .line 1504
    :cond_a
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->isSelectState()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 1505
    invoke-direct {p0}, Lcom/android/launcher3/home/HomeController;->startDragEmptyCell()V

    goto :goto_1

    .line 1507
    :cond_b
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v6, v9, v7}, Lcom/android/launcher3/home/Workspace;->performHapticFeedback(II)Z

    .line 1510
    invoke-virtual {p0, v7}, Lcom/android/launcher3/home/HomeController;->enterOverviewState(Z)V

    .line 1511
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 1512
    .restart local v5    # "res":Landroid/content/res/Resources;
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v6

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1513
    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "2"

    .line 1512
    invoke-virtual {v6, v8, v9, v10}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1517
    .end local v5    # "res":Landroid/content/res/Resources;
    :cond_c
    instance-of v6, v3, Lcom/android/launcher3/folder/view/FolderView;

    if-nez v6, :cond_9

    .line 1518
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->isSelectState()Z

    move-result v6

    if-eqz v6, :cond_d

    .line 1519
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v6, v3}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->canLongClick(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1520
    invoke-virtual {p0, v1}, Lcom/android/launcher3/home/HomeController;->enterDragState(Z)V

    .line 1521
    invoke-virtual {p0, v4, v8, v8}, Lcom/android/launcher3/home/HomeController;->startDrag(Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;ZZ)Z

    move-result v6

    if-nez v6, :cond_9

    .line 1522
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->exitDragStateDelayed()V

    goto :goto_1

    .line 1526
    :cond_d
    invoke-virtual {p0, v1}, Lcom/android/launcher3/home/HomeController;->enterDragState(Z)V

    .line 1527
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->isOverviewState()Z

    move-result v6

    if-nez v6, :cond_e

    move v0, v7

    .line 1529
    .local v0, "allowQuickOption":Z
    :goto_2
    invoke-virtual {p0, v4, v0, v8}, Lcom/android/launcher3/home/HomeController;->startDrag(Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;ZZ)Z

    move-result v6

    if-nez v6, :cond_9

    .line 1530
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->exitDragStateDelayed()V

    goto :goto_1

    .end local v0    # "allowQuickOption":Z
    :cond_e
    move v0, v8

    .line 1527
    goto :goto_2
.end method

.method public onPauseActivity()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 537
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->initBounceAnimation()V

    .line 538
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->isSelectState()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 539
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v2}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->isShowingHelpDialog()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 540
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v2, v4}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->hideHelpDialog(Z)V

    .line 542
    :cond_0
    invoke-virtual {p0, v4}, Lcom/android/launcher3/home/HomeController;->enterNormalState(Z)V

    .line 545
    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mState:Lcom/android/launcher3/home/HomeController$State;

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/android/launcher3/home/HomeController$State;->access$100(Lcom/android/launcher3/home/HomeController$State;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 546
    invoke-virtual {p0, v4}, Lcom/android/launcher3/home/HomeController;->exitResizeState(Z)V

    .line 549
    :cond_2
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportHotword()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 550
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mState:Lcom/android/launcher3/home/HomeController$State;

    invoke-static {v2, v6}, Lcom/android/launcher3/home/HomeController$State;->access$100(Lcom/android/launcher3/home/HomeController$State;I)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    .line 551
    invoke-virtual {v3}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/Launcher;->isGoogleSearchWidget(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 552
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2, v4}, Lcom/android/launcher3/Launcher;->setHotWordDetection(Z)V

    .line 556
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v2

    if-ne v2, p0, :cond_4

    .line 557
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mState:Lcom/android/launcher3/home/HomeController$State;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/android/launcher3/home/HomeController$State;->access$100(Lcom/android/launcher3/home/HomeController$State;I)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-wide v2, v2, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    .line 558
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->exitDragStateDelayed()V

    .line 562
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->isStartedSwipeAffordanceAnim()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->isHomeStage()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->isSkipAnim()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 563
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mSwipeAffordance:Lcom/android/launcher3/home/SwipeAffordance;

    invoke-virtual {v2, v6}, Lcom/android/launcher3/home/SwipeAffordance;->startCancelAnim(Z)V

    .line 566
    :cond_5
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 567
    .local v0, "fragmentManager":Landroid/app/FragmentManager;
    invoke-static {v0}, Lcom/android/launcher3/home/AutoAlignConfirmDialog;->isActive(Landroid/app/FragmentManager;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 568
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 569
    .local v1, "fragmentTransaction":Landroid/app/FragmentTransaction;
    invoke-static {v1, v0}, Lcom/android/launcher3/home/AutoAlignConfirmDialog;->dismiss(Landroid/app/FragmentTransaction;Landroid/app/FragmentManager;)V

    .line 570
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 572
    .end local v1    # "fragmentTransaction":Landroid/app/FragmentTransaction;
    :cond_6
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->stopEdgeLight()V

    .line 574
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher3/home/Workspace;->onPause()V

    .line 575
    return-void
.end method

.method public onReceiveTrayEvent(Lcom/android/launcher3/common/tray/TrayManager$TrayEvent;)V
    .locals 13
    .param p1, "event"    # Lcom/android/launcher3/common/tray/TrayManager$TrayEvent;

    .prologue
    const/4 v3, 0x2

    const/4 v12, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 3794
    iget v11, p1, Lcom/android/launcher3/common/tray/TrayManager$TrayEvent;->mEventType:I

    packed-switch v11, :pswitch_data_0

    .line 3889
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 3796
    :pswitch_1
    iget-object v11, p0, Lcom/android/launcher3/home/HomeController;->mHomeContainer:Lcom/android/launcher3/home/HomeContainer;

    invoke-virtual {v11}, Lcom/android/launcher3/home/HomeContainer;->getVisibility()I

    move-result v11

    if-eqz v11, :cond_1

    .line 3797
    iget-object v11, p0, Lcom/android/launcher3/home/HomeController;->mHomeContainer:Lcom/android/launcher3/home/HomeContainer;

    invoke-virtual {v11, v10}, Lcom/android/launcher3/home/HomeContainer;->setVisibility(I)V

    .line 3798
    iget-object v10, p0, Lcom/android/launcher3/home/HomeController;->mHomeContainer:Lcom/android/launcher3/home/HomeContainer;

    invoke-virtual {v10, v12}, Lcom/android/launcher3/home/HomeContainer;->setAlpha(F)V

    .line 3800
    :cond_1
    iget-object v10, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v10, v9}, Lcom/android/launcher3/home/Workspace;->updateOnlyCurrentPage(Z)V

    .line 3801
    iget-object v10, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v10, v9}, Lcom/android/launcher3/home/Workspace;->updateChildrenLayersEnabled(Z)V

    goto :goto_0

    .line 3804
    :pswitch_2
    iget v9, p1, Lcom/android/launcher3/common/tray/TrayManager$TrayEvent;->mValue:F

    float-to-int v7, v9

    .line 3805
    .local v7, "stageMode":I
    if-ne v7, v3, :cond_2

    .line 3806
    iget-object v9, p0, Lcom/android/launcher3/home/HomeController;->mHomeContainer:Lcom/android/launcher3/home/HomeContainer;

    const/16 v11, 0x8

    invoke-virtual {v9, v11}, Lcom/android/launcher3/home/HomeContainer;->setVisibility(I)V

    .line 3808
    :cond_2
    iget-object v9, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v9, v10}, Lcom/android/launcher3/home/Workspace;->updateOnlyCurrentPage(Z)V

    .line 3809
    iget-object v9, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v9, v10}, Lcom/android/launcher3/home/Workspace;->updateChildrenLayersEnabled(Z)V

    .line 3811
    iget-object v9, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v9}, Lcom/android/launcher3/Launcher;->getLauncherModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/launcher3/LauncherModel;->flushPendingQueue()V

    goto :goto_0

    .line 3814
    .end local v7    # "stageMode":I
    :pswitch_3
    iget v8, p1, Lcom/android/launcher3/common/tray/TrayManager$TrayEvent;->mValue:F

    .line 3815
    .local v8, "toTranslationY":F
    iget-object v11, p0, Lcom/android/launcher3/home/HomeController;->mHomeContainer:Lcom/android/launcher3/home/HomeContainer;

    invoke-virtual {v11, v8}, Lcom/android/launcher3/home/HomeContainer;->setTranslationY(F)V

    .line 3816
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->isStartedSwipeAffordanceAnim()Z

    move-result v11

    if-eqz v11, :cond_3

    iget-boolean v11, p0, Lcom/android/launcher3/home/HomeController;->mIsStartedTrayEventSetY:Z

    if-nez v11, :cond_3

    cmpl-float v11, v8, v12

    if-eqz v11, :cond_3

    .line 3818
    iput-boolean v9, p0, Lcom/android/launcher3/home/HomeController;->mIsStartedTrayEventSetY:Z

    .line 3819
    iget-object v9, p0, Lcom/android/launcher3/home/HomeController;->mSwipeAffordance:Lcom/android/launcher3/home/SwipeAffordance;

    invoke-virtual {v9, v10}, Lcom/android/launcher3/home/SwipeAffordance;->startCancelAnim(Z)V

    .line 3821
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->stopEdgeLight()V

    goto :goto_0

    .line 3825
    .end local v8    # "toTranslationY":F
    :pswitch_4
    iget v9, p1, Lcom/android/launcher3/common/tray/TrayManager$TrayEvent;->mValue:F

    iget-object v10, p0, Lcom/android/launcher3/home/HomeController;->mHomeContainer:Lcom/android/launcher3/home/HomeContainer;

    invoke-virtual {v10}, Lcom/android/launcher3/home/HomeContainer;->getHeight()I

    move-result v10

    int-to-float v10, v10

    add-float v0, v9, v10

    .line 3826
    .local v0, "borderY":F
    iget-object v9, p0, Lcom/android/launcher3/home/HomeController;->mHomeContainer:Lcom/android/launcher3/home/HomeContainer;

    invoke-virtual {v9}, Lcom/android/launcher3/home/HomeContainer;->getTranslationY()F

    move-result v9

    iget-object v10, p0, Lcom/android/launcher3/home/HomeController;->mHomeContainer:Lcom/android/launcher3/home/HomeContainer;

    invoke-virtual {v10}, Lcom/android/launcher3/home/HomeContainer;->getHeight()I

    move-result v10

    int-to-float v10, v10

    add-float v1, v9, v10

    .line 3827
    .local v1, "bottomOfHome":F
    cmpg-float v9, v0, v1

    if-gez v9, :cond_4

    .line 3828
    sub-float v9, v1, v0

    invoke-direct {p0, v9}, Lcom/android/launcher3/home/HomeController;->updateHotseatByMoveToAppsPosition(F)V

    goto/16 :goto_0

    .line 3829
    :cond_4
    iget-object v9, p0, Lcom/android/launcher3/home/HomeController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v9}, Lcom/android/launcher3/home/Hotseat;->getTranslationY()F

    move-result v9

    cmpl-float v9, v9, v12

    if-eqz v9, :cond_0

    .line 3830
    invoke-direct {p0, v12}, Lcom/android/launcher3/home/HomeController;->updateHotseatByMoveToAppsPosition(F)V

    goto/16 :goto_0

    .line 3834
    .end local v0    # "borderY":F
    .end local v1    # "bottomOfHome":F
    :pswitch_5
    iput-boolean v10, p0, Lcom/android/launcher3/home/HomeController;->mIsStartedTrayEventSetY:Z

    .line 3835
    iget v10, p1, Lcom/android/launcher3/common/tray/TrayManager$TrayEvent;->mValue:F

    float-to-int v6, v10

    .line 3836
    .local v6, "stageChanged":I
    if-lez v6, :cond_6

    .line 3837
    iget-object v10, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v10}, Lcom/android/launcher3/Launcher;->isHomeStage()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 3838
    iget-object v9, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v9}, Lcom/android/launcher3/Launcher;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v9

    invoke-virtual {v9, v3}, Lcom/android/launcher3/common/stage/StageManager;->startStageByTray(I)V

    goto/16 :goto_0

    .line 3840
    :cond_5
    iget-object v10, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v10}, Lcom/android/launcher3/Launcher;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/android/launcher3/common/stage/StageManager;->startStageByTray(I)V

    goto/16 :goto_0

    .line 3843
    :cond_6
    iget-object v10, p0, Lcom/android/launcher3/home/HomeController;->mHomeAnimation:Lcom/android/launcher3/home/HomeTransitionAnimation;

    iget-object v11, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v11}, Lcom/android/launcher3/Launcher;->isHomeStage()Z

    move-result v11

    invoke-virtual {v10, v9, v11}, Lcom/android/launcher3/home/HomeTransitionAnimation;->getTrayReturnAnimation(ZZ)Landroid/animation/Animator;

    move-result-object v5

    .line 3844
    .local v5, "returnAnimator":Landroid/animation/Animator;
    iget-object v10, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v10}, Lcom/android/launcher3/Launcher;->isHomeStage()Z

    move-result v10

    if-eqz v10, :cond_7

    move v3, v9

    .line 3845
    .local v3, "finalStageMode":I
    :cond_7
    if-nez v5, :cond_8

    .line 3846
    iget-object v9, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v9}, Lcom/android/launcher3/Launcher;->getTrayManager()Lcom/android/launcher3/common/tray/TrayManager;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 3847
    iget-object v9, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v9}, Lcom/android/launcher3/Launcher;->getTrayManager()Lcom/android/launcher3/common/tray/TrayManager;

    move-result-object v9

    invoke-virtual {v9, v3}, Lcom/android/launcher3/common/tray/TrayManager;->trayMoveEnd(I)V

    goto/16 :goto_0

    .line 3850
    :cond_8
    new-instance v9, Lcom/android/launcher3/home/HomeController$34;

    invoke-direct {v9, p0, v3}, Lcom/android/launcher3/home/HomeController$34;-><init>(Lcom/android/launcher3/home/HomeController;I)V

    invoke-virtual {v5, v9}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3858
    invoke-virtual {v5}, Landroid/animation/Animator;->start()V

    goto/16 :goto_0

    .line 3863
    .end local v3    # "finalStageMode":I
    .end local v5    # "returnAnimator":Landroid/animation/Animator;
    .end local v6    # "stageChanged":I
    :pswitch_6
    iget v11, p1, Lcom/android/launcher3/common/tray/TrayManager$TrayEvent;->mValue:F

    cmpl-float v11, v11, v12

    if-lez v11, :cond_9

    move v4, v9

    .line 3864
    .local v4, "fromHomeToApps":Z
    :goto_1
    if-eqz v4, :cond_a

    .line 3865
    invoke-virtual {p0, v10, v9}, Lcom/android/launcher3/home/HomeController;->enterNormalState(ZZ)V

    .line 3866
    iget-object v10, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v10}, Lcom/android/launcher3/home/Workspace;->removeExtraEmptyScreen()V

    .line 3868
    new-instance v2, Lcom/android/launcher3/common/stage/StageEntry;

    invoke-direct {v2}, Lcom/android/launcher3/common/stage/StageEntry;-><init>()V

    .line 3869
    .local v2, "data":Lcom/android/launcher3/common/stage/StageEntry;
    iput-boolean v9, v2, Lcom/android/launcher3/common/stage/StageEntry;->enableAnimation:Z

    .line 3870
    invoke-virtual {v2, v9}, Lcom/android/launcher3/common/stage/StageEntry;->setInternalStateTo(I)V

    .line 3871
    const-string v10, "KEY_SUPPRESS_CHANGE_STAGE_ONCE"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v10, v9}, Lcom/android/launcher3/common/stage/StageEntry;->putExtras(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3872
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v9

    invoke-virtual {v9, v3, v2}, Lcom/android/launcher3/common/stage/StageManager;->startStage(ILcom/android/launcher3/common/stage/StageEntry;)V

    goto/16 :goto_0

    .end local v2    # "data":Lcom/android/launcher3/common/stage/StageEntry;
    .end local v4    # "fromHomeToApps":Z
    :cond_9
    move v4, v10

    .line 3863
    goto :goto_1

    .line 3875
    .restart local v4    # "fromHomeToApps":Z
    :cond_a
    new-instance v2, Lcom/android/launcher3/common/stage/StageEntry;

    invoke-direct {v2}, Lcom/android/launcher3/common/stage/StageEntry;-><init>()V

    .line 3876
    .restart local v2    # "data":Lcom/android/launcher3/common/stage/StageEntry;
    iput-boolean v9, v2, Lcom/android/launcher3/common/stage/StageEntry;->enableAnimation:Z

    .line 3877
    iget-object v10, p0, Lcom/android/launcher3/home/HomeController;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    invoke-virtual {v10}, Lcom/android/launcher3/common/drag/DragManager;->isDragging()Z

    move-result v10

    if-eqz v10, :cond_b

    .line 3878
    invoke-virtual {v2, v3}, Lcom/android/launcher3/common/stage/StageEntry;->setInternalStateTo(I)V

    .line 3882
    :goto_2
    const-string v10, "KEY_SUPPRESS_CHANGE_STAGE_ONCE"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v10, v9}, Lcom/android/launcher3/common/stage/StageEntry;->putExtras(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3883
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v9

    invoke-virtual {v9, v2}, Lcom/android/launcher3/common/stage/StageManager;->finishAllStage(Lcom/android/launcher3/common/stage/StageEntry;)V

    goto/16 :goto_0

    .line 3880
    :cond_b
    invoke-virtual {v2, v9}, Lcom/android/launcher3/common/stage/StageEntry;->setInternalStateTo(I)V

    goto :goto_2

    .line 3794
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public onRefreshLiveIcon()V
    .locals 5

    .prologue
    .line 4033
    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher3/home/Workspace;->getWorkspaceScreens()Lcom/android/launcher3/util/LongArrayMap;

    move-result-object v1

    .line 4034
    .local v1, "cells":Lcom/android/launcher3/util/LongArrayMap;, "Lcom/android/launcher3/util/LongArrayMap<Lcom/android/launcher3/common/base/view/CellLayout;>;"
    invoke-virtual {v1}, Lcom/android/launcher3/util/LongArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 4035
    .local v0, "cell":Lcom/android/launcher3/common/base/view/CellLayout;
    invoke-direct {p0, v0}, Lcom/android/launcher3/home/HomeController;->updateLiveIcon(Lcom/android/launcher3/common/base/view/CellLayout;)V

    goto :goto_0

    .line 4038
    .end local v0    # "cell":Lcom/android/launcher3/common/base/view/CellLayout;
    :cond_0
    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v3}, Lcom/android/launcher3/home/Hotseat;->getLayout()Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v2

    .line 4039
    .local v2, "hotseatCellLayout":Lcom/android/launcher3/common/base/view/CellLayout;
    invoke-direct {p0, v2}, Lcom/android/launcher3/home/HomeController;->updateLiveIcon(Lcom/android/launcher3/common/base/view/CellLayout;)V

    .line 4040
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 579
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mHomeBindController:Lcom/android/launcher3/home/HomeBindController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeBindController;->restoreInstanceState()V

    .line 580
    return-void
.end method

.method public onResumeActivity()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 473
    invoke-direct {p0}, Lcom/android/launcher3/home/HomeController;->reinflateWidgetsIfNecessary()V

    .line 475
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v8

    if-eqz v8, :cond_8

    .line 476
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v8

    if-ne v8, p0, :cond_8

    move v4, v6

    .line 478
    .local v4, "isHomeStage":Z
    :goto_0
    iget-object v8, p0, Lcom/android/launcher3/home/HomeController;->mSwipeAffordance:Lcom/android/launcher3/home/SwipeAffordance;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v8}, Lcom/android/launcher3/Launcher;->isSkipAnim()Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/android/launcher3/home/HomeController;->mState:Lcom/android/launcher3/home/HomeController$State;

    invoke-static {v8, v6}, Lcom/android/launcher3/home/HomeController$State;->access$100(Lcom/android/launcher3/home/HomeController$State;I)Z

    move-result v8

    if-eqz v8, :cond_0

    if-eqz v4, :cond_0

    .line 480
    iget-object v8, p0, Lcom/android/launcher3/home/HomeController;->mSwipeAffordance:Lcom/android/launcher3/home/SwipeAffordance;

    invoke-virtual {v8}, Lcom/android/launcher3/home/SwipeAffordance;->startAnim()V

    .line 483
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->initBounceAnimation()V

    .line 485
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportTransitionEffects()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 486
    iget-object v8, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v8}, Lcom/android/launcher3/Launcher;->getPageTransitionManager()Lcom/android/launcher3/pagetransition/PageTransitionManager;

    move-result-object v8

    iget-object v9, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v8, v9}, Lcom/android/launcher3/pagetransition/PageTransitionManager;->setup(Lcom/android/launcher3/common/base/view/PagedView;)V

    .line 488
    :cond_1
    iget-object v8, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v8}, Lcom/android/launcher3/home/Workspace;->onResume()V

    .line 490
    iget-object v8, p0, Lcom/android/launcher3/home/HomeController;->mState:Lcom/android/launcher3/home/HomeController$State;

    invoke-static {v8, v6}, Lcom/android/launcher3/home/HomeController$State;->access$100(Lcom/android/launcher3/home/HomeController$State;I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 491
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportHotword()Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v9, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    .line 492
    invoke-virtual {v9}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/launcher3/Launcher;->isGoogleSearchWidget(I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 493
    iget-object v8, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v8, v6}, Lcom/android/launcher3/Launcher;->setHotWordDetection(Z)V

    .line 496
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->startEdgeLight()V

    .line 499
    :cond_3
    invoke-static {}, Lcom/samsung/android/feature/SemGateConfig;->isGateEnabled()Z

    move-result v6

    if-eqz v6, :cond_4

    if-eqz v4, :cond_4

    .line 500
    const-string v6, "GATE"

    const-string v8, "<GATE-M>SCREEN_LOADED_HOME</GATE-M>"

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    :cond_4
    if-eqz v4, :cond_5

    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mState:Lcom/android/launcher3/home/HomeController$State;

    const/4 v8, 0x4

    invoke-static {v6, v8}, Lcom/android/launcher3/home/HomeController$State;->access$100(Lcom/android/launcher3/home/HomeController$State;I)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 504
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/LauncherAppState;->getTopViewChangedMessageHandler()Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;

    move-result-object v6

    const/4 v8, 0x5

    .line 505
    invoke-virtual {v6, v8}, Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;->sendMessage(I)V

    .line 508
    :cond_5
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    invoke-virtual {v6}, Lcom/android/launcher3/home/HomeLoader;->clearPreservedPosition()V

    .line 510
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 511
    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->getSearchedApp()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 512
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->getSearchedApp()Ljava/lang/String;

    move-result-object v0

    .line 514
    .local v0, "appinfo":Ljava/lang/String;
    if-eqz v0, :cond_7

    .line 515
    const/4 v5, 0x0

    .line 516
    .local v5, "pkg":Ljava/lang/String;
    const/4 v1, 0x0

    .line 517
    .local v1, "cmp":Ljava/lang/String;
    const-string v6, "/"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 518
    const-string v6, "/"

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 519
    .local v3, "index":I
    invoke-virtual {v0, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 520
    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 522
    .end local v3    # "index":I
    :cond_6
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v6, v5}, Lcom/android/launcher3/Utilities;->isPackageExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 523
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, v5, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    .local v2, "componentName":Landroid/content/ComponentName;
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->getSearchedAppUser()Landroid/os/UserHandle;

    move-result-object v6

    invoke-direct {p0, v2, v6}, Lcom/android/launcher3/home/HomeController;->findSearchedApp(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    .line 525
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v6, v10}, Lcom/android/launcher3/Launcher;->setSearchedApp(Ljava/lang/String;)V

    .line 526
    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v6, v10}, Lcom/android/launcher3/Launcher;->setSearchedAppUser(Landroid/os/UserHandle;)V

    .line 532
    .end local v0    # "appinfo":Ljava/lang/String;
    .end local v1    # "cmp":Ljava/lang/String;
    .end local v2    # "componentName":Landroid/content/ComponentName;
    .end local v5    # "pkg":Ljava/lang/String;
    :cond_7
    const-string v6, "Launcher.HomeController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onResume HomeContainer current alpha = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/launcher3/home/HomeController;->mHomeContainer:Lcom/android/launcher3/home/HomeContainer;

    invoke-virtual {v8}, Lcom/android/launcher3/home/HomeContainer;->getAlpha()F

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    return-void

    .end local v4    # "isHomeStage":Z
    :cond_8
    move v4, v7

    .line 476
    goto/16 :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v2, -0x1

    .line 584
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 585
    const-string v0, "launcher.current_screen"

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    .line 586
    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->getCurrentPageOffsetFromCustomContent()I

    move-result v1

    .line 585
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 589
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-wide v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-wide v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/launcher3/home/HomeController;->mWaitingForResult:Z

    if-eqz v0, :cond_1

    .line 591
    const-string v0, "launcher.add_container"

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-wide v2, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 592
    const-string v0, "launcher.add_screen"

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-wide v2, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 593
    const-string v0, "launcher.add_cell_x"

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    iget v1, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 594
    const-string v0, "launcher.add_cell_y"

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    iget v1, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 595
    const-string v0, "launcher.add_span_x"

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    iget v1, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 596
    const-string v0, "launcher.add_span_y"

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    iget v1, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 597
    const-string v0, "launcher.add_component"

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-object v1, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 598
    const-string v0, "launcher.add_widget_info"

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddWidgetInfo:Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 599
    const-string v0, "launcher.add_widget_id"

    iget v1, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddWidgetId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 601
    :cond_1
    return-void
.end method

.method public onSetPageScrollListener(Lcom/android/launcher3/common/base/view/PagedView$PageScrollListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/launcher3/common/base/view/PagedView$PageScrollListener;

    .prologue
    .line 5040
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/home/Workspace;->setPageScrollListener(Lcom/android/launcher3/common/base/view/PagedView$PageScrollListener;)V

    .line 5041
    return-void
.end method

.method protected onStageEnter(Lcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/Animator;
    .locals 22
    .param p1, "data"    # Lcom/android/launcher3/common/stage/StageEntry;

    .prologue
    .line 708
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v4}, Lcom/android/launcher3/home/Workspace;->getDragController()Lcom/android/launcher3/home/WorkspaceDragController;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/launcher3/common/drag/DragManager;->setDragScroller(Lcom/android/launcher3/common/drag/DragScroller;)V

    .line 709
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v2, v4}, Lcom/android/launcher3/common/drag/DragManager;->setMoveTarget(Landroid/view/View;)V

    .line 711
    const/4 v10, 0x0

    .line 712
    .local v10, "enterAnim":Landroid/animation/Animator;
    if-eqz p1, :cond_6

    .line 713
    move-object/from16 v0, p1

    iget v15, v0, Lcom/android/launcher3/common/stage/StageEntry;->fromStage:I

    .line 714
    .local v15, "fromViewMode":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/common/stage/StageEntry;->getLayerViews()Ljava/util/HashMap;

    move-result-object v18

    .line 715
    .local v18, "layerViews":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/View;Ljava/lang/Integer;>;"
    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/android/launcher3/common/stage/StageEntry;->enableAnimation:Z

    .line 716
    .local v3, "animated":Z
    const-string v2, "KEY_SUPPRESS_CHANGE_STAGE_ONCE"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Lcom/android/launcher3/common/stage/StageEntry;->getExtras(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_8

    const/16 v19, 0x1

    .line 717
    .local v19, "suppressChangeStageOnce":Z
    :goto_0
    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    if-eqz v2, :cond_0

    .line 718
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    invoke-virtual {v2}, Lcom/android/launcher3/common/tray/TrayManager;->setSuppressChangeStageOnce()V

    .line 721
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/android/launcher3/home/Workspace;->setVisibility(I)V

    .line 723
    const/4 v2, 0x2

    if-ne v15, v2, :cond_a

    .line 724
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/common/stage/StageEntry;->getInternalStateFrom()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/launcher3/home/HomeController;->getAdjustedInternalState(I)I

    move-result v14

    .line 725
    .local v14, "fromState":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/common/stage/StageEntry;->getInternalStateTo()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/launcher3/home/HomeController;->getAdjustedInternalState(I)I

    move-result v20

    .line 727
    .local v20, "toState":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mHomeAnimation:Lcom/android/launcher3/home/HomeTransitionAnimation;

    move-object/from16 v0, v18

    invoke-virtual {v2, v3, v0}, Lcom/android/launcher3/home/HomeTransitionAnimation;->getEnterFromAppsAnimation(ZLjava/util/HashMap;)Landroid/animation/Animator;

    move-result-object v10

    .line 728
    const/4 v2, 0x2

    move/from16 v0, v20

    if-ne v0, v2, :cond_1

    .line 729
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher3/home/HomeController;->enterDragState(Z)V

    .line 730
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mDropTargetBar:Lcom/android/launcher3/home/DropTargetBar;

    if-eqz v2, :cond_1

    .line 731
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mDropTargetBar:Lcom/android/launcher3/home/DropTargetBar;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/launcher3/home/DropTargetBar;->setDropTargetBarVisible(Z)V

    .line 735
    :cond_1
    const/4 v2, 0x4

    if-ne v14, v2, :cond_2

    const/4 v2, 0x1

    move/from16 v0, v20

    if-ne v0, v2, :cond_2

    .line 736
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher3/home/HomeController;->enterNormalState(Z)V

    .line 738
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mState:Lcom/android/launcher3/home/HomeController$State;

    move/from16 v0, v20

    invoke-static {v2, v0}, Lcom/android/launcher3/home/HomeController$State;->access$200(Lcom/android/launcher3/home/HomeController$State;I)V

    .line 740
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/launcher3/home/Workspace;->updateAccessibilityFlags(Z)V

    .line 741
    invoke-static {}, Lcom/android/launcher3/util/WhiteBgManager;->isWhiteNavigationBar()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 742
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/launcher3/Launcher;->changeNavigationBarColor(Z)V

    .line 744
    :cond_3
    invoke-static {}, Lcom/android/launcher3/util/WhiteBgManager;->isWhiteStatusBar()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 745
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/launcher3/Launcher;->changeStatusBarColor(Z)V

    .line 748
    :cond_4
    const/4 v2, 0x1

    move/from16 v0, v20

    if-ne v0, v2, :cond_9

    .line 749
    sget-object v2, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09004b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    .line 750
    invoke-virtual {v5}, Lcom/android/launcher3/home/Workspace;->getCurrentPageDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 749
    invoke-virtual {v2, v4}, Lcom/android/launcher3/util/Talk;->say(Ljava/lang/String;)V

    .line 824
    .end local v14    # "fromState":I
    .end local v20    # "toState":I
    :cond_5
    :goto_1
    if-eqz v10, :cond_6

    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/android/launcher3/common/stage/StageEntry;->broughtToHome:Z

    if-eqz v2, :cond_6

    .line 825
    const-wide/16 v4, 0x1e

    invoke-virtual {v10, v4, v5}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 829
    .end local v3    # "animated":Z
    .end local v15    # "fromViewMode":I
    .end local v18    # "layerViews":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/View;Ljava/lang/Integer;>;"
    .end local v19    # "suppressChangeStageOnce":Z
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mState:Lcom/android/launcher3/home/HomeController$State;

    const/4 v4, 0x4

    invoke-static {v2, v4}, Lcom/android/launcher3/home/HomeController$State;->access$100(Lcom/android/launcher3/home/HomeController$State;I)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 830
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getTopViewChangedMessageHandler()Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;

    move-result-object v2

    const/4 v4, 0x5

    .line 831
    invoke-virtual {v2, v4}, Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;->sendMessage(I)V

    .line 837
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/home/HomeController;->notifyCaptureIfNecessary()V

    .line 839
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportHotword()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 840
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mState:Lcom/android/launcher3/home/HomeController$State;

    const/4 v4, 0x1

    invoke-static {v2, v4}, Lcom/android/launcher3/home/HomeController$State;->access$100(Lcom/android/launcher3/home/HomeController$State;I)Z

    move-result v2

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    .line 841
    invoke-virtual {v4}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/launcher3/Launcher;->isGoogleSearchWidget(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 842
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/launcher3/Launcher;->setHotWordDetection(Z)V

    .line 846
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/home/HomeController;->startEdgeLight()V

    .line 847
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/home/HomeController;->callRefreshLiveIcon()V

    .line 848
    return-object v10

    .line 716
    .restart local v3    # "animated":Z
    .restart local v15    # "fromViewMode":I
    .restart local v18    # "layerViews":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/View;Ljava/lang/Integer;>;"
    :cond_8
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 751
    .restart local v14    # "fromState":I
    .restart local v19    # "suppressChangeStageOnce":Z
    .restart local v20    # "toState":I
    :cond_9
    const/4 v2, 0x2

    move/from16 v0, v20

    if-ne v0, v2, :cond_5

    .line 752
    sget-object v2, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09004b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 753
    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090033

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-object/from16 v21, v0

    .line 754
    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v21

    add-int/lit8 v21, v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v6, v7

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher3/home/Workspace;->getPageCount()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v6, v7

    .line 753
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 752
    invoke-virtual {v2, v4}, Lcom/android/launcher3/util/Talk;->say(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 756
    .end local v14    # "fromState":I
    .end local v20    # "toState":I
    :cond_a
    const/4 v2, 0x5

    if-eq v15, v2, :cond_b

    const/4 v2, 0x6

    if-ne v15, v2, :cond_13

    .line 757
    :cond_b
    const-string v2, "KEY_FOLDER_ICON_VIEW"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/android/launcher3/common/stage/StageEntry;->getExtras(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    .line 759
    .local v8, "anchorView":Landroid/view/View;
    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    .line 760
    .local v9, "animatorSet":Landroid/animation/AnimatorSet;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mHomeAnimation:Lcom/android/launcher3/home/HomeTransitionAnimation;

    move-object/from16 v0, v18

    invoke-virtual {v2, v3, v0, v8}, Lcom/android/launcher3/home/HomeTransitionAnimation;->getEnterFromFolderAnimation(ZLjava/util/HashMap;Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v13

    .line 761
    .local v13, "enterFromFolderAnim":Landroid/animation/Animator;
    invoke-virtual {v9, v13}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 762
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mHomeContainer:Lcom/android/launcher3/home/HomeContainer;

    invoke-virtual {v2}, Lcom/android/launcher3/home/HomeContainer;->getTranslationY()F

    move-result v2

    const/4 v4, 0x0

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_c

    .line 763
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mHomeAnimation:Lcom/android/launcher3/home/HomeTransitionAnimation;

    move-object/from16 v0, v18

    invoke-virtual {v2, v3, v0}, Lcom/android/launcher3/home/HomeTransitionAnimation;->getEnterFromAppsAnimation(ZLjava/util/HashMap;)Landroid/animation/Animator;

    move-result-object v11

    .line 764
    .local v11, "enterFromAppsAnim":Landroid/animation/Animator;
    invoke-virtual {v9, v11}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 766
    .end local v11    # "enterFromAppsAnim":Landroid/animation/Animator;
    :cond_c
    move-object v10, v9

    .line 768
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/common/stage/StageEntry;->getInternalStateTo()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/launcher3/home/HomeController;->getAdjustedInternalState(I)I

    move-result v20

    .line 769
    .restart local v20    # "toState":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/common/stage/StageEntry;->getInternalStateFrom()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/launcher3/home/HomeController;->getAdjustedInternalState(I)I

    move-result v14

    .line 770
    .restart local v14    # "fromState":I
    const/4 v2, 0x2

    move/from16 v0, v20

    if-ne v0, v2, :cond_d

    .line 771
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/launcher3/home/HomeController;->enterDragState(Z)V

    .line 772
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mDropTargetBar:Lcom/android/launcher3/home/DropTargetBar;

    if-eqz v2, :cond_d

    const/4 v2, 0x5

    if-ne v15, v2, :cond_d

    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/launcher3/common/stage/StageEntry;->stageCountOnFinishAllStage:I

    const/4 v4, 0x2

    if-le v2, v4, :cond_d

    .line 773
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mDropTargetBar:Lcom/android/launcher3/home/DropTargetBar;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/launcher3/home/DropTargetBar;->setDropTargetBarVisible(Z)V

    .line 777
    :cond_d
    invoke-static {}, Lcom/android/launcher3/util/WhiteBgManager;->isWhiteStatusBar()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 778
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/launcher3/Launcher;->changeStatusBarColor(Z)V

    .line 781
    :cond_e
    invoke-static {}, Lcom/android/launcher3/util/WhiteBgManager;->isWhiteNavigationBar()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 782
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/launcher3/Launcher;->changeNavigationBarColor(Z)V

    .line 785
    :cond_f
    const/4 v2, 0x6

    if-ne v15, v2, :cond_11

    .line 786
    const-string v2, "KEY_ITEMS_TO_HIDE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/android/launcher3/common/stage/StageEntry;->getExtras(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/ArrayList;

    .line 787
    .local v16, "itemsToHide":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    const-string v2, "KEY_ITEMS_TO_SHOW"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/android/launcher3/common/stage/StageEntry;->getExtras(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/ArrayList;

    .line 788
    .local v17, "itemsToShow":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    if-eqz v16, :cond_10

    if-eqz v17, :cond_10

    .line 789
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Lcom/android/launcher3/Launcher;->updateItemInfo(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 792
    :cond_10
    const/4 v2, 0x1

    move/from16 v0, v20

    if-ne v0, v2, :cond_12

    const/4 v2, 0x4

    if-ne v14, v2, :cond_12

    .line 793
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mState:Lcom/android/launcher3/home/HomeController$State;

    move/from16 v0, v20

    invoke-static {v2, v0}, Lcom/android/launcher3/home/HomeController$State;->access$200(Lcom/android/launcher3/home/HomeController$State;I)V

    .line 794
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v14, v1}, Lcom/android/launcher3/home/HomeController;->switchInternalStateChange(II)V

    .line 795
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mHomeAnimation:Lcom/android/launcher3/home/HomeTransitionAnimation;

    .line 796
    move-object/from16 v0, v18

    invoke-virtual {v2, v3, v0}, Lcom/android/launcher3/home/HomeTransitionAnimation;->getEnterFromAppsPickerAnimation(ZLjava/util/HashMap;)Landroid/animation/Animator;

    move-result-object v12

    .line 797
    .local v12, "enterFromAppsPickerAnim":Landroid/animation/Animator;
    invoke-virtual {v9, v12}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 798
    move-object v10, v9

    .line 803
    .end local v12    # "enterFromAppsPickerAnim":Landroid/animation/Animator;
    .end local v16    # "itemsToHide":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .end local v17    # "itemsToShow":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    :cond_11
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/launcher3/home/Workspace;->updateAccessibilityFlags(Z)V

    goto/16 :goto_1

    .line 799
    .restart local v16    # "itemsToHide":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .restart local v17    # "itemsToShow":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    :cond_12
    const/4 v2, 0x1

    move/from16 v0, v20

    if-ne v0, v2, :cond_11

    .line 800
    move-object v10, v9

    goto :goto_3

    .line 804
    .end local v8    # "anchorView":Landroid/view/View;
    .end local v9    # "animatorSet":Landroid/animation/AnimatorSet;
    .end local v13    # "enterFromFolderAnim":Landroid/animation/Animator;
    .end local v14    # "fromState":I
    .end local v16    # "itemsToHide":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .end local v17    # "itemsToShow":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .end local v20    # "toState":I
    :cond_13
    const/4 v2, 0x3

    if-eq v15, v2, :cond_14

    const/4 v2, 0x4

    if-ne v15, v2, :cond_5

    .line 805
    :cond_14
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/common/stage/StageEntry;->getInternalStateFrom()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/launcher3/home/HomeController;->getAdjustedInternalState(I)I

    move-result v14

    .line 806
    .restart local v14    # "fromState":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/common/stage/StageEntry;->getInternalStateTo()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/launcher3/home/HomeController;->getAdjustedInternalState(I)I

    move-result v20

    .line 807
    .restart local v20    # "toState":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mState:Lcom/android/launcher3/home/HomeController$State;

    move/from16 v0, v20

    invoke-static {v2, v0}, Lcom/android/launcher3/home/HomeController$State;->access$200(Lcom/android/launcher3/home/HomeController$State;I)V

    .line 809
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v14, v1}, Lcom/android/launcher3/home/HomeController;->switchInternalStateChange(II)V

    .line 811
    const/4 v2, 0x2

    move/from16 v0, v20

    if-ne v0, v2, :cond_16

    .line 812
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mHomeAnimation:Lcom/android/launcher3/home/HomeTransitionAnimation;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher3/home/HomeTransitionAnimation;->getDragAnimation(ZLjava/util/HashMap;ZZZ)Landroid/animation/AnimatorSet;

    move-result-object v10

    .line 813
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mDropTargetBar:Lcom/android/launcher3/home/DropTargetBar;

    if-eqz v2, :cond_15

    .line 814
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mDropTargetBar:Lcom/android/launcher3/home/DropTargetBar;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/launcher3/home/DropTargetBar;->setDropTargetBarVisible(Z)V

    .line 821
    :cond_15
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/launcher3/home/Workspace;->updateAccessibilityFlags(Z)V

    goto/16 :goto_1

    .line 817
    :cond_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/HomeController;->mHomeAnimation:Lcom/android/launcher3/home/HomeTransitionAnimation;

    const/4 v2, 0x1

    move/from16 v0, v20

    if-ne v0, v2, :cond_17

    const/4 v2, 0x1

    :goto_5
    move-object/from16 v0, v18

    invoke-virtual {v4, v3, v0, v2}, Lcom/android/launcher3/home/HomeTransitionAnimation;->getEnterFromWidgetsAnimation(ZLjava/util/HashMap;Z)Landroid/animation/Animator;

    move-result-object v10

    goto :goto_4

    :cond_17
    const/4 v2, 0x0

    goto :goto_5

    .line 833
    .end local v3    # "animated":Z
    .end local v14    # "fromState":I
    .end local v15    # "fromViewMode":I
    .end local v18    # "layerViews":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/View;Ljava/lang/Integer;>;"
    .end local v19    # "suppressChangeStageOnce":Z
    .end local v20    # "toState":I
    :cond_18
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getTopViewChangedMessageHandler()Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;

    move-result-object v2

    const/4 v4, 0x1

    .line 834
    invoke-virtual {v2, v4}, Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;->sendMessage(I)V

    goto/16 :goto_2
.end method

.method protected onStageEnterByTray()Landroid/animation/Animator;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 949
    invoke-static {}, Lcom/android/launcher3/util/WhiteBgManager;->isWhiteNavigationBar()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 950
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1, v3}, Lcom/android/launcher3/Launcher;->changeNavigationBarColor(Z)V

    .line 952
    :cond_0
    invoke-static {}, Lcom/android/launcher3/util/WhiteBgManager;->isWhiteStatusBar()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 953
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1, v3}, Lcom/android/launcher3/Launcher;->changeStatusBarColor(Z)V

    .line 956
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mHomeAnimation:Lcom/android/launcher3/home/HomeTransitionAnimation;

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v2}, Lcom/android/launcher3/home/HomeTransitionAnimation;->getEnterFromAppsAnimation(ZLjava/util/HashMap;)Landroid/animation/Animator;

    move-result-object v0

    .line 957
    .local v0, "enterAni":Landroid/animation/Animator;
    new-instance v1, Lcom/android/launcher3/home/HomeController$3;

    invoke-direct {v1, p0}, Lcom/android/launcher3/home/HomeController$3;-><init>(Lcom/android/launcher3/home/HomeController;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 998
    return-object v0
.end method

.method protected onStageExit(Lcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/Animator;
    .locals 7
    .param p1, "data"    # Lcom/android/launcher3/common/stage/StageEntry;

    .prologue
    const/4 v6, 0x0

    .line 864
    iget-object v5, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v5}, Lcom/android/launcher3/Utilities;->closeDialog(Landroid/app/Activity;)V

    .line 865
    const/4 v2, 0x0

    .line 866
    .local v2, "exitAnim":Landroid/animation/Animator;
    if-eqz p1, :cond_2

    .line 867
    iget v4, p1, Lcom/android/launcher3/common/stage/StageEntry;->toStage:I

    .line 868
    .local v4, "toViewMode":I
    invoke-virtual {p1}, Lcom/android/launcher3/common/stage/StageEntry;->getLayerViews()Ljava/util/HashMap;

    move-result-object v3

    .line 869
    .local v3, "layerViews":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/View;Ljava/lang/Integer;>;"
    iget-boolean v1, p1, Lcom/android/launcher3/common/stage/StageEntry;->enableAnimation:Z

    .line 871
    .local v1, "animated":Z
    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    .line 872
    iget-object v5, p0, Lcom/android/launcher3/home/HomeController;->mHomeAnimation:Lcom/android/launcher3/home/HomeTransitionAnimation;

    invoke-virtual {v5, v1, v3}, Lcom/android/launcher3/home/HomeTransitionAnimation;->getExitToAppsAnimation(ZLjava/util/HashMap;)Landroid/animation/Animator;

    move-result-object v2

    .line 873
    iget-object v5, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v5, v6}, Lcom/android/launcher3/home/Workspace;->updateAccessibilityFlags(Z)V

    .line 874
    invoke-static {}, Lcom/android/launcher3/util/WhiteBgManager;->isWhiteNavigationBar()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 875
    iget-object v5, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5, v6}, Lcom/android/launcher3/Launcher;->changeNavigationBarColor(Z)V

    .line 877
    :cond_0
    invoke-static {}, Lcom/android/launcher3/util/WhiteBgManager;->isWhiteStatusBar()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 878
    iget-object v5, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5, v6}, Lcom/android/launcher3/Launcher;->changeStatusBarColor(Z)V

    .line 889
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->isStartedSwipeAffordanceAnim()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 890
    iget-object v5, p0, Lcom/android/launcher3/home/HomeController;->mSwipeAffordance:Lcom/android/launcher3/home/SwipeAffordance;

    invoke-virtual {v5, v6}, Lcom/android/launcher3/home/SwipeAffordance;->startCancelAnim(Z)V

    .line 894
    .end local v1    # "animated":Z
    .end local v3    # "layerViews":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/View;Ljava/lang/Integer;>;"
    .end local v4    # "toViewMode":I
    :cond_2
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportHotword()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 895
    iget-object v5, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5, v6}, Lcom/android/launcher3/Launcher;->setHotWordDetection(Z)V

    .line 897
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->stopEdgeLight()V

    .line 899
    return-object v2

    .line 880
    .restart local v1    # "animated":Z
    .restart local v3    # "layerViews":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/View;Ljava/lang/Integer;>;"
    .restart local v4    # "toViewMode":I
    :cond_4
    const/4 v5, 0x5

    if-eq v4, v5, :cond_5

    const/4 v5, 0x6

    if-ne v4, v5, :cond_6

    .line 881
    :cond_5
    const-string v5, "KEY_FOLDER_ICON_VIEW"

    invoke-virtual {p1, v5}, Lcom/android/launcher3/common/stage/StageEntry;->getExtras(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 882
    .local v0, "anchorView":Landroid/view/View;
    iget-object v5, p0, Lcom/android/launcher3/home/HomeController;->mHomeAnimation:Lcom/android/launcher3/home/HomeTransitionAnimation;

    invoke-virtual {v5, v1, v3, v0}, Lcom/android/launcher3/home/HomeTransitionAnimation;->getExitToFolderAnimation(ZLjava/util/HashMap;Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v2

    .line 883
    iget-object v5, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v5, v6}, Lcom/android/launcher3/home/Workspace;->updateAccessibilityFlags(Z)V

    goto :goto_0

    .line 884
    .end local v0    # "anchorView":Landroid/view/View;
    :cond_6
    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    .line 885
    iget-object v5, p0, Lcom/android/launcher3/home/HomeController;->mHomeAnimation:Lcom/android/launcher3/home/HomeTransitionAnimation;

    invoke-virtual {v5, v1, v3}, Lcom/android/launcher3/home/HomeTransitionAnimation;->getExitToWidgetsAnimation(ZLjava/util/HashMap;)Landroid/animation/Animator;

    move-result-object v2

    .line 886
    iget-object v5, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v5, v6}, Lcom/android/launcher3/home/Workspace;->updateAccessibilityFlags(Z)V

    goto :goto_0
.end method

.method protected onStageExitByTray()Landroid/animation/Animator;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 904
    invoke-static {}, Lcom/android/launcher3/util/WhiteBgManager;->isWhiteNavigationBar()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 905
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/Launcher;->changeNavigationBarColor(Z)V

    .line 907
    :cond_0
    invoke-static {}, Lcom/android/launcher3/util/WhiteBgManager;->isWhiteStatusBar()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 908
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/Launcher;->changeStatusBarColor(Z)V

    .line 911
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mHomeAnimation:Lcom/android/launcher3/home/HomeTransitionAnimation;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/home/HomeTransitionAnimation;->getExitToAppsAnimation(ZLjava/util/HashMap;)Landroid/animation/Animator;

    move-result-object v0

    .line 912
    .local v0, "exitAni":Landroid/animation/Animator;
    new-instance v1, Lcom/android/launcher3/home/HomeController$2;

    invoke-direct {v1, p0}, Lcom/android/launcher3/home/HomeController$2;-><init>(Lcom/android/launcher3/home/HomeController;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 944
    return-object v0
.end method

.method public onStartForResult(I)V
    .locals 1
    .param p1, "requestCode"    # I

    .prologue
    .line 3310
    if-ltz p1, :cond_0

    .line 3311
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/HomeController;->setWaitingForResult(Z)V

    .line 3313
    :cond_0
    return-void
.end method

.method public onSwipeBlockListener(FF)V
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v2, 0x0

    .line 5086
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0, v2}, Lcom/android/launcher3/home/ZeroPageController;->isActiveZeroPage(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    .line 5087
    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->getPageCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 5088
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mScrollDeterminator:Lcom/android/launcher3/util/event/ScrollDeterminator;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/util/event/ScrollDeterminator;->setScrollableView(Z)Z

    .line 5090
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mScrollDeterminator:Lcom/android/launcher3/util/event/ScrollDeterminator;

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/event/ScrollDeterminator;->setTalkBackEnabled(Landroid/content/Context;)Z

    .line 5091
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mScrollDeterminator:Lcom/android/launcher3/util/event/ScrollDeterminator;

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/launcher3/util/event/ScrollDeterminator;->setBlockArea(Lcom/android/launcher3/common/base/view/PagedView;FF)Z

    .line 5092
    return-void
.end method

.method public onUpdateAlphabetList(Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 0
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 4651
    return-void
.end method

.method public onZeroPageActiveChanged(Z)V
    .locals 1
    .param p1, "active"    # Z

    .prologue
    .line 5227
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mZeroPageController:Lcom/android/launcher3/home/ZeroPageController;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/home/ZeroPageController;->onZeroPageActiveChanged(Z)V

    .line 5228
    return-void
.end method

.method public recoverCancelItemForFolderLock(Lcom/android/launcher3/common/base/item/IconInfo;JJIII)Z
    .locals 24
    .param p1, "info"    # Lcom/android/launcher3/common/base/item/IconInfo;
    .param p2, "container"    # J
    .param p4, "screenId"    # J
    .param p6, "cellX"    # I
    .param p7, "cellY"    # I
    .param p8, "rank"    # I

    .prologue
    .line 4677
    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    const-wide/16 v10, -0x66

    cmp-long v6, v8, v10

    if-nez v6, :cond_0

    .line 4678
    const-string v6, "Launcher.FolderLock"

    const-string v8, "drag a item from Apps to Home no need recover"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4679
    const/4 v6, 0x0

    .line 4735
    :goto_0
    return v6

    .line 4681
    :cond_0
    const/4 v6, 0x2

    new-array v0, v6, [I

    move-object/from16 v18, v0

    .line 4682
    .local v18, "cellXY":[I
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move-wide/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/launcher3/home/HomeController;->getCellLayout(JJ)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v23

    .line 4683
    .local v23, "layout":Lcom/android/launcher3/common/base/view/CellLayout;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/HomeController;->mHomeBindController:Lcom/android/launcher3/home/HomeBindController;

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Lcom/android/launcher3/home/HomeBindController;->createShortcut(Lcom/android/launcher3/common/base/item/IconInfo;)Landroid/view/View;

    move-result-object v7

    .line 4684
    .local v7, "view":Landroid/view/View;
    const/16 v22, 0x0

    .line 4686
    .local v22, "foundCellSpan":Z
    if-ltz p6, :cond_5

    if-ltz p7, :cond_5

    .line 4687
    const/4 v6, 0x0

    aput p6, v18, v6

    .line 4688
    const/4 v6, 0x1

    aput p7, v18, v6

    .line 4689
    const/16 v22, 0x1

    .line 4691
    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    const-wide/16 v10, -0x65

    cmp-long v6, v8, v10

    if-eqz v6, :cond_5

    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    const-wide/16 v10, -0x64

    cmp-long v6, v8, v10

    if-eqz v6, :cond_5

    .line 4692
    move-object/from16 v0, v23

    instance-of v6, v0, Lcom/android/launcher3/home/HotseatCellLayout;

    if-eqz v6, :cond_2

    .line 4693
    const-string v6, "Launcher.FolderLock"

    const-string v8, "drag from Hotseat  "

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4694
    new-instance v19, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    invoke-direct/range {v19 .. v19}, Lcom/android/launcher3/common/drag/DropTarget$DragObject;-><init>()V

    .line 4695
    .local v19, "dragObject":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    .line 4696
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/HomeController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v6}, Lcom/android/launcher3/home/Hotseat;->getDragController()Lcom/android/launcher3/home/HotseatDragController;

    move-result-object v6

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v7, v1}, Lcom/android/launcher3/home/HotseatDragController;->createUserFolderIfNecessary([ILandroid/view/View;Lcom/android/launcher3/common/drag/DropTarget$DragObject;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 4697
    const/4 v6, 0x1

    goto :goto_0

    .line 4699
    :cond_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/HomeController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v6}, Lcom/android/launcher3/home/Hotseat;->getDragController()Lcom/android/launcher3/home/HotseatDragController;

    move-result-object v6

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Lcom/android/launcher3/home/HotseatDragController;->addToExistingFolderIfNecessary([ILcom/android/launcher3/common/drag/DropTarget$DragObject;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 4700
    const/4 v6, 0x1

    goto :goto_0

    .line 4703
    .end local v19    # "dragObject":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    :cond_2
    new-instance v19, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    invoke-direct/range {v19 .. v19}, Lcom/android/launcher3/common/drag/DropTarget$DragObject;-><init>()V

    .line 4704
    .restart local v19    # "dragObject":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    .line 4705
    invoke-static {}, Lcom/android/launcher3/folder/folderlock/FolderLock;->getInstance()Lcom/android/launcher3/folder/folderlock/FolderLock;

    move-result-object v21

    .line 4706
    .local v21, "folderLock":Lcom/android/launcher3/folder/folderlock/FolderLock;
    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/folderlock/FolderLock;->setReorderLayout(Lcom/android/launcher3/common/base/view/CellLayout;)V

    .line 4707
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v6}, Lcom/android/launcher3/home/Workspace;->getDragController()Lcom/android/launcher3/home/WorkspaceDragController;

    move-result-object v6

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v7, v1}, Lcom/android/launcher3/home/WorkspaceDragController;->createUserFolderIfNecessary([ILandroid/view/View;Lcom/android/launcher3/common/drag/DropTarget$DragObject;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 4708
    const/4 v6, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Lcom/android/launcher3/folder/folderlock/FolderLock;->setReorderLayout(Lcom/android/launcher3/common/base/view/CellLayout;)V

    .line 4709
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 4711
    :cond_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v6}, Lcom/android/launcher3/home/Workspace;->getDragController()Lcom/android/launcher3/home/WorkspaceDragController;

    move-result-object v6

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Lcom/android/launcher3/home/WorkspaceDragController;->addToExistingFolderIfNecessary([ILcom/android/launcher3/common/drag/DropTarget$DragObject;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 4712
    const/4 v6, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Lcom/android/launcher3/folder/folderlock/FolderLock;->setReorderLayout(Lcom/android/launcher3/common/base/view/CellLayout;)V

    .line 4713
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 4715
    :cond_4
    const/4 v6, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Lcom/android/launcher3/folder/folderlock/FolderLock;->setReorderLayout(Lcom/android/launcher3/common/base/view/CellLayout;)V

    .line 4720
    .end local v19    # "dragObject":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    .end local v21    # "folderLock":Lcom/android/launcher3/folder/folderlock/FolderLock;
    :cond_5
    if-nez v22, :cond_6

    .line 4721
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/home/HomeController;->showOutOfSpaceMessage()V

    .line 4722
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 4725
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/launcher3/home/HomeController;->mRestoring:Z

    if-nez v6, :cond_7

    .line 4726
    move-object/from16 v0, v23

    instance-of v6, v0, Lcom/android/launcher3/home/HotseatCellLayout;

    if-eqz v6, :cond_8

    .line 4727
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/HomeController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v6}, Lcom/android/launcher3/home/Hotseat;->getDragController()Lcom/android/launcher3/home/HotseatDragController;

    move-result-object v6

    const/4 v8, 0x0

    aget v8, v18, v8

    const/4 v9, 0x1

    const/4 v10, 0x1

    invoke-virtual {v6, v8, v9, v10}, Lcom/android/launcher3/home/HotseatDragController;->makeEmptyCell(IZZ)V

    .line 4728
    const/4 v6, 0x0

    aget v12, v18, v6

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x1

    const/16 v16, 0x1

    const/16 v17, 0x1

    move-object/from16 v6, p0

    move-wide/from16 v8, p2

    move-wide/from16 v10, p4

    invoke-direct/range {v6 .. v17}, Lcom/android/launcher3/home/HomeController;->addInScreen(Landroid/view/View;JJIIIIZZ)V

    .line 4729
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/HomeController;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    const/4 v8, 0x0

    aget v8, v18, v8

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/launcher3/common/drag/DragManager;->createDragView(Landroid/view/View;II)Lcom/android/launcher3/common/drag/DragView;

    move-result-object v20

    .line 4730
    .local v20, "dragView":Lcom/android/launcher3/common/drag/DragView;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v6

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher3/home/HomeController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    move-object/from16 v0, v20

    invoke-virtual {v6, v0, v7, v8, v9}, Lcom/android/launcher3/common/view/DragLayer;->animateViewIntoPosition(Lcom/android/launcher3/common/drag/DragView;Landroid/view/View;Ljava/lang/Runnable;Landroid/view/View;)V

    .line 4735
    .end local v20    # "dragView":Lcom/android/launcher3/common/drag/DragView;
    :cond_7
    :goto_1
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 4732
    :cond_8
    const/4 v6, 0x0

    aget v12, v18, v6

    const/4 v6, 0x1

    aget v13, v18, v6

    const/4 v14, 0x1

    const/4 v15, 0x1

    move-object/from16 v6, p0

    move-wide/from16 v8, p2

    move-wide/from16 v10, p4

    invoke-virtual/range {v6 .. v15}, Lcom/android/launcher3/home/HomeController;->addInScreen(Landroid/view/View;JJIIII)V

    goto :goto_1
.end method

.method removeCustomPage(I)V
    .locals 4
    .param p1, "toState"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 3758
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mZeroPageController:Lcom/android/launcher3/home/ZeroPageController;

    if-eqz v0, :cond_1

    .line 3759
    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mZeroPageController:Lcom/android/launcher3/home/ZeroPageController;

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-ne p1, v0, :cond_2

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {v3, v0}, Lcom/android/launcher3/home/ZeroPageController;->removeCustomZeroPage(Z)V

    .line 3761
    if-ne p1, v2, :cond_1

    .line 3762
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mZeroPageController:Lcom/android/launcher3/home/ZeroPageController;

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/home/ZeroPageController;->updatePageIndicatorForZeroPage(ZZ)V

    .line 3763
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->startEdgeLight()V

    .line 3766
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->removeCustomPlusPage()V

    .line 3767
    return-void

    :cond_2
    move v0, v1

    .line 3759
    goto :goto_0
.end method

.method removeHomeItem(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2554
    invoke-direct {p0, p1}, Lcom/android/launcher3/home/HomeController;->getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v0

    .line 2555
    .local v0, "parentCell":Lcom/android/launcher3/common/base/view/CellLayout;
    if-eqz v0, :cond_3

    .line 2556
    instance-of v1, v0, Lcom/android/launcher3/home/HotseatCellLayout;

    if-eqz v1, :cond_2

    .line 2557
    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/base/view/CellLayout;->removeViewInLayout(Landroid/view/View;)V

    .line 2569
    :goto_0
    instance-of v1, p1, Lcom/android/launcher3/common/drag/DropTarget;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    if-eqz v1, :cond_0

    .line 2570
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    move-object v1, p1

    check-cast v1, Lcom/android/launcher3/common/drag/DropTarget;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/common/drag/DragManager;->removeDropTarget(Lcom/android/launcher3/common/drag/DropTarget;)V

    .line 2573
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->getState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 2574
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/common/drag/DragManager;->cancelDragIfViewRemoved(Landroid/view/View;)V

    .line 2576
    :cond_1
    return-void

    .line 2559
    :cond_2
    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/base/view/CellLayout;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 2566
    :cond_3
    const-string v1, "Launcher.HomeController"

    const-string v2, "mDragInfo.cell has null parent"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public removeHomeItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 6
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 2579
    instance-of v3, p1, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    if-eqz v3, :cond_2

    move-object v2, p1

    .line 2580
    check-cast v2, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    .line 2582
    .local v2, "widget":Lcom/android/launcher3/home/LauncherAppWidgetInfo;
    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mAppWidgetHost:Lcom/android/launcher3/home/LauncherAppWidgetHost;

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->isCustomWidget()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2583
    invoke-virtual {v2}, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->isWidgetIdValid()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2586
    new-instance v3, Lcom/android/launcher3/home/HomeController$20;

    invoke-direct {v3, p0, v2}, Lcom/android/launcher3/home/HomeController$20;-><init>(Lcom/android/launcher3/home/HomeController;Lcom/android/launcher3/home/LauncherAppWidgetInfo;)V

    sget-object v4, Lcom/android/launcher3/Utilities;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Void;

    .line 2591
    invoke-virtual {v3, v4, v5}, Lcom/android/launcher3/home/HomeController$20;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2593
    :cond_0
    iget-object v3, v2, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {p0, v3}, Lcom/android/launcher3/home/HomeController;->removeHomeItem(Landroid/view/View;)V

    .line 2595
    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mHomeBindController:Lcom/android/launcher3/home/HomeBindController;

    invoke-virtual {v3, v2}, Lcom/android/launcher3/home/HomeBindController;->removeAppWidget(Lcom/android/launcher3/home/LauncherAppWidgetInfo;)V

    .line 2607
    .end local v2    # "widget":Lcom/android/launcher3/home/LauncherAppWidgetInfo;
    :cond_1
    :goto_0
    return-void

    .line 2596
    :cond_2
    instance-of v3, p1, Lcom/android/launcher3/common/base/item/IconInfo;

    if-nez v3, :cond_3

    instance-of v3, p1, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v3, :cond_1

    .line 2597
    :cond_3
    iget-wide v4, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    invoke-virtual {p0, v4, v5}, Lcom/android/launcher3/home/HomeController;->getHomescreenIconByItemId(J)Landroid/view/View;

    move-result-object v1

    .line 2598
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/android/launcher3/home/HomeController;->isItemInFolder(Lcom/android/launcher3/common/base/item/ItemInfo;)Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz v1, :cond_4

    .line 2599
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v3, :cond_4

    .line 2600
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/folder/FolderInfo;

    .local v0, "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    move-object v3, p1

    .line 2601
    check-cast v3, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/folder/FolderInfo;->remove(Lcom/android/launcher3/common/base/item/IconInfo;)V

    .line 2602
    const-string v3, "Launcher.HomeController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removeHomeItem : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/launcher3/common/base/item/ItemInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2604
    .end local v0    # "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    :cond_4
    iget-wide v4, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    invoke-virtual {p0, v4, v5}, Lcom/android/launcher3/home/HomeController;->getHomescreenIconByItemId(J)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/launcher3/home/HomeController;->removeHomeItem(Landroid/view/View;)V

    goto :goto_0
.end method

.method public removeHomeOrFolderItem(Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;)Z
    .locals 13
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    .line 2749
    instance-of v1, p1, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v1, :cond_4

    .line 2750
    invoke-virtual {p0, p1}, Lcom/android/launcher3/home/HomeController;->deleteItemFromDb(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    move-object v1, p1

    .line 2751
    check-cast v1, Lcom/android/launcher3/common/base/item/IconInfo;

    iget-boolean v1, v1, Lcom/android/launcher3/common/base/item/IconInfo;->isAppsButton:Z

    if-eqz v1, :cond_3

    .line 2752
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/android/launcher3/LauncherAppState;->setAppsButtonEnabled(Z)V

    .line 2814
    .end local p1    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    .line 2815
    invoke-virtual {p0, p2}, Lcom/android/launcher3/home/HomeController;->removeHomeItem(Landroid/view/View;)V

    .line 2818
    :cond_1
    const/4 v6, 0x1

    :cond_2
    return v6

    .line 2753
    .restart local p1    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/launcher3/home/HomeController;->isItemInFolder(Lcom/android/launcher3/common/base/item/ItemInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2754
    iget-wide v2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    invoke-virtual {p0, v2, v3}, Lcom/android/launcher3/home/HomeController;->getHomescreenIconByItemId(J)Landroid/view/View;

    move-result-object v8

    .line 2755
    .local v8, "folderView":Landroid/view/View;
    if-eqz v8, :cond_0

    .line 2756
    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/folder/FolderInfo;

    .line 2757
    .local v7, "folderItem":Lcom/android/launcher3/folder/FolderInfo;
    if-eqz v7, :cond_0

    .line 2758
    check-cast p1, Lcom/android/launcher3/common/base/item/IconInfo;

    .end local p1    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    invoke-virtual {v7, p1}, Lcom/android/launcher3/folder/FolderInfo;->remove(Lcom/android/launcher3/common/base/item/IconInfo;)V

    goto :goto_0

    .line 2762
    .end local v7    # "folderItem":Lcom/android/launcher3/folder/FolderInfo;
    .end local v8    # "folderView":Landroid/view/View;
    .restart local p1    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_4
    instance-of v1, p1, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v1, :cond_6

    move-object v0, p1

    .line 2763
    check-cast v0, Lcom/android/launcher3/folder/FolderInfo;

    .line 2764
    .local v0, "folder":Lcom/android/launcher3/folder/FolderInfo;
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2765
    iget-object v1, v0, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/android/launcher3/home/HomeController;->moveFolderItemsToHome(Ljava/util/ArrayList;)I

    move-result v9

    .line 2766
    .local v9, "moveToPage":I
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v1

    if-eq v1, v9, :cond_5

    .line 2767
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1, v9}, Lcom/android/launcher3/home/Workspace;->snapToPage(I)V

    .line 2770
    .end local v9    # "moveToPage":I
    :cond_5
    invoke-direct {p0, v0}, Lcom/android/launcher3/home/HomeController;->deleteItemInFolderFromDb(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 2771
    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v1

    const-string v2, "DTHF"

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertLogging(Ljava/lang/String;Ljava/lang/String;JZ)V

    goto :goto_0

    .line 2773
    .end local v0    # "folder":Lcom/android/launcher3/folder/FolderInfo;
    :cond_6
    instance-of v1, p1, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    if-eqz v1, :cond_2

    move-object v12, p1

    .line 2774
    check-cast v12, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    .line 2776
    .local v12, "widget":Lcom/android/launcher3/home/LauncherAppWidgetInfo;
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportHotword()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2777
    iget-object v1, v12, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    if-eqz v1, :cond_7

    iget-object v1, v12, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    sget-object v2, Lcom/android/launcher3/Launcher;->GOOGLE_SEARCH_WIDGET:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2778
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1, v6}, Lcom/android/launcher3/Launcher;->setHotWordDetection(Z)V

    .line 2783
    :cond_7
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mHomeBindController:Lcom/android/launcher3/home/HomeBindController;

    invoke-virtual {v1, v12}, Lcom/android/launcher3/home/HomeBindController;->removeAppWidget(Lcom/android/launcher3/home/LauncherAppWidgetInfo;)V

    .line 2784
    invoke-virtual {p0, v12}, Lcom/android/launcher3/home/HomeController;->deleteItemFromDb(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 2786
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mAppWidgetHost:Lcom/android/launcher3/home/LauncherAppWidgetHost;

    if-eqz v1, :cond_8

    invoke-virtual {v12}, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->isCustomWidget()Z

    move-result v1

    if-nez v1, :cond_8

    .line 2787
    invoke-virtual {v12}, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->isWidgetIdValid()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2790
    new-instance v1, Lcom/android/launcher3/home/HomeController$21;

    invoke-direct {v1, p0, v12}, Lcom/android/launcher3/home/HomeController$21;-><init>(Lcom/android/launcher3/home/HomeController;Lcom/android/launcher3/home/LauncherAppWidgetInfo;)V

    sget-object v2, Lcom/android/launcher3/Utilities;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v3, v6, [Ljava/lang/Void;

    .line 2795
    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/home/HomeController$21;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2797
    :cond_8
    iget-object v1, v12, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    if-eqz v1, :cond_9

    sget-object v1, Lcom/android/launcher3/home/HomeController;->sSingleInstanceAppWidgetList:Ljava/util/HashMap;

    iget-object v2, v12, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    .line 2798
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2799
    sget-object v1, Lcom/android/launcher3/home/HomeController;->sSingleInstanceAppWidgetList:Ljava/util/HashMap;

    iget-object v2, v12, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    .line 2800
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/LongSparseArray;

    .line 2801
    .local v11, "userMap":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v1}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/UserManagerCompat;

    move-result-object v1

    iget-object v2, v12, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher3/common/compat/UserHandleCompat;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 2802
    .local v10, "profileId":Ljava/lang/Long;
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v2, v3, v1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto/16 :goto_0

    .line 2803
    .end local v10    # "profileId":Ljava/lang/Long;
    .end local v11    # "userMap":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    :cond_9
    iget-object v1, v12, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/launcher3/home/HomeController;->sSingleInstanceAppWidgetPackageList:Ljava/util/HashMap;

    iget-object v2, v12, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    .line 2804
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2805
    sget-object v1, Lcom/android/launcher3/home/HomeController;->sSingleInstanceAppWidgetPackageList:Ljava/util/HashMap;

    iget-object v2, v12, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    .line 2806
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/LongSparseArray;

    .line 2807
    .restart local v11    # "userMap":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v1}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/UserManagerCompat;

    move-result-object v1

    iget-object v2, v12, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher3/common/compat/UserHandleCompat;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 2808
    .restart local v10    # "profileId":Ljava/lang/Long;
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v2, v3, v1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto/16 :goto_0
.end method

.method removeItemsByComponentName(Ljava/util/HashSet;Lcom/android/launcher3/common/compat/UserHandleCompat;)V
    .locals 24
    .param p2, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Landroid/content/ComponentName;",
            ">;",
            "Lcom/android/launcher3/common/compat/UserHandleCompat;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2952
    .local p1, "componentNames":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/home/HomeController;->getWorkspaceAndHotseatCellLayouts()Ljava/util/ArrayList;

    move-result-object v11

    .line 2953
    .local v11, "cellLayouts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/view/CellLayout;>;"
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_0
    :goto_0
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 2954
    .local v18, "layoutParent":Lcom/android/launcher3/common/base/view/CellLayout;
    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v17

    .line 2956
    .local v17, "layout":Landroid/view/ViewGroup;
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 2957
    .local v8, "children":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;>;"
    const/16 v16, 0x0

    .local v16, "j":I
    :goto_1
    invoke-virtual/range {v17 .. v17}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    move/from16 v0, v16

    if-ge v0, v3, :cond_2

    .line 2958
    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    .line 2959
    .local v20, "view":Landroid/view/View;
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/android/launcher3/common/base/item/ItemInfo;

    if-eqz v3, :cond_1

    .line 2960
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/base/item/ItemInfo;

    move-object/from16 v0, v20

    invoke-virtual {v8, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2957
    :cond_1
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 2964
    .end local v20    # "view":Landroid/view/View;
    :cond_2
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2965
    .local v7, "childrenToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 2966
    .local v6, "folderAppsToRemove":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/folder/FolderInfo;Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;>;"
    new-instance v2, Lcom/android/launcher3/home/HomeController$24;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    invoke-direct/range {v2 .. v8}, Lcom/android/launcher3/home/HomeController$24;-><init>(Lcom/android/launcher3/home/HomeController;Ljava/util/HashSet;Lcom/android/launcher3/common/compat/UserHandleCompat;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;)V

    .line 2991
    .local v2, "filter":Lcom/android/launcher3/common/model/DataLoader$ItemInfoFilter;
    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Lcom/android/launcher3/home/HomeLoader;->filterItemInfo(Ljava/lang/Iterable;Lcom/android/launcher3/common/model/DataLoader$ItemInfoFilter;Z)Ljava/util/ArrayList;

    .line 2994
    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/launcher3/folder/FolderInfo;

    .line 2995
    .local v13, "folder":Lcom/android/launcher3/folder/FolderInfo;
    invoke-virtual {v6, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    .line 2996
    .local v10, "appsToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 2997
    .local v14, "info":Lcom/android/launcher3/common/base/item/IconInfo;
    invoke-virtual {v13, v14}, Lcom/android/launcher3/folder/FolderInfo;->remove(Lcom/android/launcher3/common/base/item/IconInfo;)V

    goto :goto_2

    .line 3002
    .end local v10    # "appsToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    .end local v13    # "folder":Lcom/android/launcher3/folder/FolderInfo;
    .end local v14    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/android/launcher3/home/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v4

    if-ne v3, v4, :cond_7

    const/16 v19, 0x1

    .line 3003
    .local v19, "needToVI":Z
    :goto_3
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    .line 3006
    .local v12, "child":Landroid/view/View;
    if-nez v12, :cond_8

    const/4 v15, 0x0

    .line 3008
    .local v15, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    :goto_5
    if-eqz v19, :cond_9

    .line 3009
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher3/home/Workspace;->getContext()Landroid/content/Context;

    move-result-object v3

    const v5, 0x7f06000f

    invoke-static {v3, v5}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v9

    .line 3010
    .local v9, "animator":Landroid/animation/Animator;
    invoke-virtual {v9, v12}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 3011
    const-wide/16 v22, 0xc8

    move-wide/from16 v0, v22

    invoke-virtual {v9, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 3012
    new-instance v3, Lcom/android/launcher3/home/HomeController$25;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v15, v12}, Lcom/android/launcher3/home/HomeController$25;-><init>(Lcom/android/launcher3/home/HomeController;Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;)V

    invoke-virtual {v9, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3030
    invoke-virtual {v9}, Landroid/animation/Animator;->start()V

    .line 3035
    .end local v9    # "animator":Landroid/animation/Animator;
    :goto_6
    instance-of v3, v12, Lcom/android/launcher3/common/drag/DropTarget;

    if-eqz v3, :cond_6

    .line 3036
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/HomeController;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    move-object v3, v12

    check-cast v3, Lcom/android/launcher3/common/drag/DropTarget;

    invoke-virtual {v5, v3}, Lcom/android/launcher3/common/drag/DragManager;->removeDropTarget(Lcom/android/launcher3/common/drag/DropTarget;)V

    .line 3038
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/HomeController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    if-eqz v3, :cond_5

    if-eqz v12, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/home/HomeController;->isSelectState()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 3039
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/HomeController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v3, v12}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->removeCheckedApp(Landroid/view/View;)V

    goto :goto_4

    .line 3002
    .end local v12    # "child":Landroid/view/View;
    .end local v15    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v19    # "needToVI":Z
    :cond_7
    const/16 v19, 0x0

    goto :goto_3

    .line 3006
    .restart local v12    # "child":Landroid/view/View;
    .restart local v19    # "needToVI":Z
    :cond_8
    invoke-virtual {v12}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/base/item/ItemInfo;

    move-object v15, v3

    goto :goto_5

    .line 3032
    .restart local v15    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v12}, Lcom/android/launcher3/home/HomeController;->removeHomeOrFolderItem(Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;)Z

    goto :goto_6

    .line 3043
    .end local v12    # "child":Landroid/view/View;
    .end local v15    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_a
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_b

    .line 3044
    invoke-virtual/range {v17 .. v17}, Landroid/view/ViewGroup;->requestLayout()V

    .line 3045
    invoke-virtual/range {v17 .. v17}, Landroid/view/ViewGroup;->invalidate()V

    .line 3048
    :cond_b
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_c

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 3049
    :cond_c
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/launcher3/home/HomeController;->notifyCapture(Z)V

    goto/16 :goto_0

    .line 3052
    .end local v2    # "filter":Lcom/android/launcher3/common/model/DataLoader$ItemInfoFilter;
    .end local v6    # "folderAppsToRemove":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/folder/FolderInfo;Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;>;"
    .end local v7    # "childrenToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v8    # "children":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;>;"
    .end local v16    # "j":I
    .end local v17    # "layout":Landroid/view/ViewGroup;
    .end local v18    # "layoutParent":Lcom/android/launcher3/common/base/view/CellLayout;
    .end local v19    # "needToVI":Z
    :cond_d
    return-void
.end method

.method removeItemsByMatcher(Lcom/android/launcher3/util/ItemInfoMatcher;)V
    .locals 22
    .param p1, "matcher"    # Lcom/android/launcher3/util/ItemInfoMatcher;

    .prologue
    .line 3060
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/home/HomeController;->getWorkspaceAndHotseatCellLayouts()Ljava/util/ArrayList;

    move-result-object v10

    .line 3061
    .local v10, "cellLayouts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/view/CellLayout;>;"
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_0
    :goto_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 3062
    .local v16, "layoutParent":Lcom/android/launcher3/common/base/view/CellLayout;
    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v15

    .line 3064
    .local v15, "layout":Landroid/view/ViewGroup;
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 3065
    .local v7, "children":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;>;"
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_1
    invoke-virtual {v15}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v14, v3, :cond_2

    .line 3066
    invoke-virtual {v15, v14}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    .line 3067
    .local v18, "view":Landroid/view/View;
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/android/launcher3/common/base/item/ItemInfo;

    if-eqz v3, :cond_1

    .line 3068
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/base/item/ItemInfo;

    move-object/from16 v0, v18

    invoke-virtual {v7, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3065
    :cond_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 3072
    .end local v18    # "view":Landroid/view/View;
    :cond_2
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 3073
    .local v6, "childrenToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 3074
    .local v5, "folderAppsToRemove":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/folder/FolderInfo;Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;>;"
    new-instance v2, Lcom/android/launcher3/home/HomeController$26;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher3/home/HomeController$26;-><init>(Lcom/android/launcher3/home/HomeController;Lcom/android/launcher3/util/ItemInfoMatcher;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;)V

    .line 3099
    .local v2, "filter":Lcom/android/launcher3/common/model/DataLoader$ItemInfoFilter;
    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Lcom/android/launcher3/home/HomeLoader;->filterItemInfo(Ljava/lang/Iterable;Lcom/android/launcher3/common/model/DataLoader$ItemInfoFilter;Z)Ljava/util/ArrayList;

    .line 3102
    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/launcher3/folder/FolderInfo;

    .line 3103
    .local v12, "folder":Lcom/android/launcher3/folder/FolderInfo;
    invoke-virtual {v5, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    .line 3104
    .local v9, "appsToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 3105
    .local v13, "info":Lcom/android/launcher3/common/base/item/IconInfo;
    invoke-virtual {v12, v13}, Lcom/android/launcher3/folder/FolderInfo;->remove(Lcom/android/launcher3/common/base/item/IconInfo;)V

    goto :goto_2

    .line 3110
    .end local v9    # "appsToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    .end local v12    # "folder":Lcom/android/launcher3/folder/FolderInfo;
    .end local v13    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Lcom/android/launcher3/home/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v4

    if-ne v3, v4, :cond_7

    const/16 v17, 0x1

    .line 3111
    .local v17, "needToVI":Z
    :goto_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    .line 3114
    .local v11, "child":Landroid/view/View;
    if-eqz v17, :cond_8

    .line 3115
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher3/home/Workspace;->getContext()Landroid/content/Context;

    move-result-object v3

    const v20, 0x7f06000f

    move/from16 v0, v20

    invoke-static {v3, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v8

    .line 3116
    .local v8, "animator":Landroid/animation/Animator;
    invoke-virtual {v8, v11}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 3117
    const-wide/16 v20, 0xc8

    move-wide/from16 v0, v20

    invoke-virtual {v8, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 3118
    new-instance v3, Lcom/android/launcher3/home/HomeController$27;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v3, v0, v1, v11}, Lcom/android/launcher3/home/HomeController$27;-><init>(Lcom/android/launcher3/home/HomeController;Lcom/android/launcher3/common/base/view/CellLayout;Landroid/view/View;)V

    invoke-virtual {v8, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3127
    invoke-virtual {v8}, Landroid/animation/Animator;->start()V

    .line 3133
    .end local v8    # "animator":Landroid/animation/Animator;
    :goto_5
    instance-of v3, v11, Lcom/android/launcher3/common/drag/DropTarget;

    if-eqz v3, :cond_6

    .line 3134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/HomeController;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    move-object/from16 v20, v0

    move-object v3, v11

    check-cast v3, Lcom/android/launcher3/common/drag/DropTarget;

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/android/launcher3/common/drag/DragManager;->removeDropTarget(Lcom/android/launcher3/common/drag/DropTarget;)V

    .line 3137
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/HomeController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    if-eqz v3, :cond_5

    if-eqz v11, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/home/HomeController;->isSelectState()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 3138
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/HomeController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v3, v11}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->removeCheckedApp(Landroid/view/View;)V

    goto :goto_4

    .line 3110
    .end local v11    # "child":Landroid/view/View;
    .end local v17    # "needToVI":Z
    :cond_7
    const/16 v17, 0x0

    goto :goto_3

    .line 3129
    .restart local v11    # "child":Landroid/view/View;
    .restart local v17    # "needToVI":Z
    :cond_8
    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Lcom/android/launcher3/common/base/view/CellLayout;->removeViewInLayout(Landroid/view/View;)V

    .line 3130
    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Lcom/android/launcher3/common/base/view/CellLayout;->removeViewInLayout(Landroid/view/View;)V

    goto :goto_5

    .line 3142
    .end local v11    # "child":Landroid/view/View;
    :cond_9
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_a

    .line 3143
    invoke-virtual {v15}, Landroid/view/ViewGroup;->requestLayout()V

    .line 3144
    invoke-virtual {v15}, Landroid/view/ViewGroup;->invalidate()V

    .line 3147
    :cond_a
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_b

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 3148
    :cond_b
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/launcher3/home/HomeController;->notifyCapture(Z)V

    goto/16 :goto_0

    .line 3151
    .end local v2    # "filter":Lcom/android/launcher3/common/model/DataLoader$ItemInfoFilter;
    .end local v5    # "folderAppsToRemove":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/folder/FolderInfo;Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;>;"
    .end local v6    # "childrenToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v7    # "children":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;>;"
    .end local v14    # "j":I
    .end local v15    # "layout":Landroid/view/ViewGroup;
    .end local v16    # "layoutParent":Lcom/android/launcher3/common/base/view/CellLayout;
    .end local v17    # "needToVI":Z
    :cond_c
    return-void
.end method

.method removeItemsByPackageName(Ljava/util/ArrayList;Lcom/android/launcher3/common/compat/UserHandleCompat;)V
    .locals 12
    .param p2, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/launcher3/common/compat/UserHandleCompat;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2912
    .local p1, "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 2913
    .local v8, "packageNames":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v8, p1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 2916
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 2917
    .local v5, "infos":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 2918
    .local v2, "cns":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    invoke-direct {p0}, Lcom/android/launcher3/home/HomeController;->getWorkspaceAndHotseatCellLayouts()Ljava/util/ArrayList;

    move-result-object v0

    .line 2919
    .local v0, "cellLayouts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/view/CellLayout;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 2920
    .local v7, "layoutParent":Lcom/android/launcher3/common/base/view/CellLayout;
    invoke-virtual {v7}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v6

    .line 2921
    .local v6, "layout":Landroid/view/ViewGroup;
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 2922
    .local v1, "childCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_0

    .line 2923
    invoke-virtual {v6, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 2924
    .local v9, "view":Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    instance-of v10, v10, Lcom/android/launcher3/common/base/item/ItemInfo;

    if-eqz v10, :cond_1

    .line 2925
    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-virtual {v5, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2922
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2929
    .end local v1    # "childCount":I
    .end local v4    # "i":I
    .end local v6    # "layout":Landroid/view/ViewGroup;
    .end local v7    # "layoutParent":Lcom/android/launcher3/common/base/view/CellLayout;
    .end local v9    # "view":Landroid/view/View;
    :cond_2
    new-instance v3, Lcom/android/launcher3/home/HomeController$23;

    invoke-direct {v3, p0, v8, p2, v2}, Lcom/android/launcher3/home/HomeController$23;-><init>(Lcom/android/launcher3/home/HomeController;Ljava/util/HashSet;Lcom/android/launcher3/common/compat/UserHandleCompat;Ljava/util/HashSet;)V

    .line 2939
    .local v3, "filter":Lcom/android/launcher3/common/model/DataLoader$ItemInfoFilter;
    const/4 v10, 0x0

    invoke-static {v5, v3, v10}, Lcom/android/launcher3/home/HomeLoader;->filterItemInfo(Ljava/lang/Iterable;Lcom/android/launcher3/common/model/DataLoader$ItemInfoFilter;Z)Ljava/util/ArrayList;

    .line 2942
    invoke-virtual {p0, v2, p2}, Lcom/android/launcher3/home/HomeController;->removeItemsByComponentName(Ljava/util/HashSet;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    .line 2943
    return-void
.end method

.method removeItemsOnScreen(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 3
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
    .line 2740
    .local p1, "removeItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .local p2, "moveToAppsItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 2741
    .local v0, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/android/launcher3/home/HomeController;->removeHomeOrFolderItem(Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;)Z

    goto :goto_0

    .line 2743
    .end local v0    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2744
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1, p2}, Lcom/android/launcher3/Launcher;->updateItemInfoToAppsItems(Ljava/util/ArrayList;)V

    .line 2746
    :cond_1
    return-void
.end method

.method public replaceFolderWithFinalItem(Lcom/android/launcher3/common/base/item/ItemInfo;ILandroid/view/View;)V
    .locals 17
    .param p1, "info"    # Lcom/android/launcher3/common/base/item/ItemInfo;
    .param p2, "itemCount"    # I
    .param p3, "folderIcon"    # Landroid/view/View;

    .prologue
    .line 3322
    move-object/from16 v0, p1

    instance-of v2, v0, Lcom/android/launcher3/folder/FolderInfo;

    if-nez v2, :cond_1

    .line 3362
    .end local p3    # "folderIcon":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .restart local p3    # "folderIcon":Landroid/view/View;
    :cond_1
    move-object/from16 v16, p1

    .line 3326
    check-cast v16, Lcom/android/launcher3/folder/FolderInfo;

    .line 3327
    .local v16, "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    move-object/from16 v0, v16

    iget-wide v6, v0, Lcom/android/launcher3/folder/FolderInfo;->container:J

    move-object/from16 v0, v16

    iget-wide v8, v0, Lcom/android/launcher3/folder/FolderInfo;->screenId:J

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7, v8, v9}, Lcom/android/launcher3/home/HomeController;->getCellLayout(JJ)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v14

    .line 3329
    .local v14, "cellLayout":Lcom/android/launcher3/common/base/view/CellLayout;
    const/4 v5, 0x0

    .line 3331
    .local v5, "child":Landroid/view/View;
    const/4 v2, 0x1

    move/from16 v0, p2

    if-gt v0, v2, :cond_4

    .line 3332
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    .line 3333
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 3334
    .local v3, "finalItem":Lcom/android/launcher3/common/base/item/IconInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mHomeBindController:Lcom/android/launcher3/home/HomeBindController;

    if-eqz v2, :cond_6

    .line 3335
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mHomeBindController:Lcom/android/launcher3/home/HomeBindController;

    invoke-virtual {v2, v14, v3}, Lcom/android/launcher3/home/HomeBindController;->createShortcut(Landroid/view/ViewGroup;Lcom/android/launcher3/common/base/item/IconInfo;)Landroid/view/View;

    move-result-object v5

    move-object v15, v5

    .line 3337
    .end local v5    # "child":Landroid/view/View;
    .local v15, "child":Landroid/view/View;
    :goto_1
    move-object/from16 v0, v16

    iget-wide v4, v0, Lcom/android/launcher3/folder/FolderInfo;->container:J

    move-object/from16 v0, v16

    iget-wide v6, v0, Lcom/android/launcher3/folder/FolderInfo;->screenId:J

    move-object/from16 v0, v16

    iget v8, v0, Lcom/android/launcher3/folder/FolderInfo;->cellX:I

    move-object/from16 v0, v16

    iget v9, v0, Lcom/android/launcher3/folder/FolderInfo;->cellY:I

    move-object/from16 v0, v16

    iget v10, v0, Lcom/android/launcher3/folder/FolderInfo;->rank:I

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v10}, Lcom/android/launcher3/home/HomeController;->addOrMoveItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJIII)V

    .line 3340
    .end local v3    # "finalItem":Lcom/android/launcher3/common/base/item/IconInfo;
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/HomeController;->deleteItemFromDb(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 3341
    if-eqz v14, :cond_2

    .line 3343
    instance-of v2, v14, Lcom/android/launcher3/home/HotseatCellLayout;

    if-eqz v2, :cond_5

    .line 3344
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Lcom/android/launcher3/common/base/view/CellLayout;->removeViewInLayout(Landroid/view/View;)V

    .line 3349
    :cond_2
    :goto_3
    move-object/from16 v0, p3

    instance-of v2, v0, Lcom/android/launcher3/common/drag/DropTarget;

    if-eqz v2, :cond_3

    .line 3350
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeController;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    check-cast p3, Lcom/android/launcher3/common/drag/DropTarget;

    .end local p3    # "folderIcon":Landroid/view/View;
    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/android/launcher3/common/drag/DragManager;->removeDropTarget(Lcom/android/launcher3/common/drag/DropTarget;)V

    .line 3352
    :cond_3
    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v5

    const-string v6, "DTHF"

    const/4 v7, 0x0

    const-wide/16 v8, -0x1

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertLogging(Ljava/lang/String;Ljava/lang/String;JZ)V

    move-object v5, v15

    .line 3358
    .end local v15    # "child":Landroid/view/View;
    .restart local v5    # "child":Landroid/view/View;
    :cond_4
    if-eqz v5, :cond_0

    .line 3359
    move-object/from16 v0, v16

    iget-wide v6, v0, Lcom/android/launcher3/folder/FolderInfo;->container:J

    move-object/from16 v0, v16

    iget-wide v8, v0, Lcom/android/launcher3/folder/FolderInfo;->screenId:J

    move-object/from16 v0, v16

    iget v10, v0, Lcom/android/launcher3/folder/FolderInfo;->cellX:I

    move-object/from16 v0, v16

    iget v11, v0, Lcom/android/launcher3/folder/FolderInfo;->cellY:I

    move-object/from16 v0, v16

    iget v12, v0, Lcom/android/launcher3/folder/FolderInfo;->spanX:I

    move-object/from16 v0, v16

    iget v13, v0, Lcom/android/launcher3/folder/FolderInfo;->spanY:I

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v13}, Lcom/android/launcher3/home/HomeController;->addInScreenFromBind(Landroid/view/View;JJIIII)V

    goto/16 :goto_0

    .line 3346
    .end local v5    # "child":Landroid/view/View;
    .restart local v15    # "child":Landroid/view/View;
    .restart local p3    # "folderIcon":Landroid/view/View;
    :cond_5
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Lcom/android/launcher3/common/base/view/CellLayout;->removeView(Landroid/view/View;)V

    goto :goto_3

    .end local v15    # "child":Landroid/view/View;
    .restart local v3    # "finalItem":Lcom/android/launcher3/common/base/item/IconInfo;
    .restart local v5    # "child":Landroid/view/View;
    :cond_6
    move-object v15, v5

    .end local v5    # "child":Landroid/view/View;
    .restart local v15    # "child":Landroid/view/View;
    goto :goto_1

    .end local v3    # "finalItem":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v15    # "child":Landroid/view/View;
    .restart local v5    # "child":Landroid/view/View;
    :cond_7
    move-object v15, v5

    .end local v5    # "child":Landroid/view/View;
    .restart local v15    # "child":Landroid/view/View;
    goto :goto_2
.end method

.method public requestBlurChange(ZLandroid/view/Window;FJ)V
    .locals 8
    .param p1, "show"    # Z
    .param p2, "dest"    # Landroid/view/Window;
    .param p3, "amount"    # F
    .param p4, "duration"    # J

    .prologue
    .line 5121
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->isPaused()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mHomeContainer:Lcom/android/launcher3/home/HomeContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeContainer;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 5122
    :cond_0
    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/launcher3/util/BlurUtils;->blurByWindowManager(ZLandroid/view/Window;FJ)V

    .line 5126
    :goto_0
    return-void

    .line 5124
    :cond_1
    iget-object v7, p0, Lcom/android/launcher3/home/HomeController;->mBlurRunnableHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/launcher3/util/BlurRunnable;

    iget-object v6, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/util/BlurRunnable;-><init>(ZLandroid/view/Window;FJLandroid/content/Context;)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method requestCreateShortcut(IILandroid/content/Intent;)V
    .locals 10
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const-wide/16 v8, 0x1f4

    const/4 v7, 0x1

    const/4 v6, -0x1

    .line 1923
    new-instance v1, Lcom/android/launcher3/home/HomeController$9;

    invoke-direct {v1, p0}, Lcom/android/launcher3/home/HomeController$9;-><init>(Lcom/android/launcher3/home/HomeController;)V

    .line 1930
    .local v1, "exitDragStateRunnable":Ljava/lang/Runnable;
    if-ne p2, v6, :cond_3

    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-wide v2, v2, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    .line 1931
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-direct {p0, p1, p3, v6, v2}, Lcom/android/launcher3/home/HomeController;->preparePendingAddArgs(ILandroid/content/Intent;ILcom/android/launcher3/common/base/item/ItemInfo;)Lcom/android/launcher3/home/HomeController$PendingAddArguments;

    move-result-object v0

    .line 1933
    .local v0, "args":Lcom/android/launcher3/home/HomeController$PendingAddArguments;
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->isWorkspaceLocked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1934
    sput-object v0, Lcom/android/launcher3/home/HomeController;->sPendingAddItem:Lcom/android/launcher3/home/HomeController$PendingAddArguments;

    .line 1949
    .end local v0    # "args":Lcom/android/launcher3/home/HomeController$PendingAddArguments;
    :cond_0
    :goto_0
    return-void

    .line 1936
    .restart local v0    # "args":Lcom/android/launcher3/home/HomeController$PendingAddArguments;
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/HomeController;->completeAdd(Lcom/android/launcher3/home/HomeController$PendingAddArguments;)J

    .line 1937
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    invoke-virtual {v2}, Lcom/android/launcher3/common/view/DragLayer;->getAnimatedView()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_2

    .line 1938
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 1940
    :cond_2
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v2, v1, v8, v9}, Lcom/android/launcher3/home/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1944
    .end local v0    # "args":Lcom/android/launcher3/home/HomeController$PendingAddArguments;
    :cond_3
    if-nez p2, :cond_0

    .line 1945
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v2}, Lcom/android/launcher3/home/Hotseat;->getDragController()Lcom/android/launcher3/home/HotseatDragController;

    move-result-object v2

    invoke-virtual {v2, v7, v7}, Lcom/android/launcher3/home/HotseatDragController;->removeEmptyCells(ZZ)V

    .line 1946
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v2, v1, v8, v9}, Lcom/android/launcher3/home/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method resetBlurRunnable()V
    .locals 2

    .prologue
    .line 5129
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mBlurRunnableHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 5130
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mBlurRunnableHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 5132
    :cond_0
    return-void
.end method

.method public resetStartedSFinder()V
    .locals 1

    .prologue
    .line 3972
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mHomeContainer:Lcom/android/launcher3/home/HomeContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeContainer;->resetStartedSFinder()V

    .line 3973
    return-void
.end method

.method public restoreState(Landroid/os/Bundle;Z)V
    .locals 10
    .param p1, "savedState"    # Landroid/os/Bundle;
    .param p2, "isOnTop"    # Z

    .prologue
    .line 605
    if-nez p2, :cond_0

    .line 606
    sget-object v3, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    invoke-virtual {v3}, Lcom/android/launcher3/util/Talk;->isAccessibilityEnabled()Z

    move-result v0

    .line 607
    .local v0, "accessibilityEnabled":Z
    iget-object v8, p0, Lcom/android/launcher3/home/HomeController;->mHomeContainer:Lcom/android/launcher3/home/HomeContainer;

    if-eqz v0, :cond_3

    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v8, v3}, Lcom/android/launcher3/home/HomeContainer;->setVisibility(I)V

    .line 608
    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mPageIndicatorView:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mHomeContainer:Lcom/android/launcher3/home/HomeContainer;

    iget-object v8, p0, Lcom/android/launcher3/home/HomeController;->mPageIndicatorView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 609
    iget-object v8, p0, Lcom/android/launcher3/home/HomeController;->mPageIndicatorView:Landroid/view/View;

    if-eqz v0, :cond_4

    const/16 v3, 0x8

    :goto_1
    invoke-virtual {v8, v3}, Landroid/view/View;->setVisibility(I)V

    .line 612
    .end local v0    # "accessibilityEnabled":Z
    :cond_0
    const-string v3, "launcher.current_screen"

    const/16 v8, -0x3e9

    invoke-virtual {p1, v3, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 614
    .local v1, "currentScreen":I
    const/16 v3, -0x3e9

    if-eq v1, v3, :cond_1

    .line 615
    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v3, v1}, Lcom/android/launcher3/home/Workspace;->setRestorePage(I)V

    .line 618
    :cond_1
    const-string v3, "launcher.add_container"

    const-wide/16 v8, -0x1

    invoke-virtual {p1, v3, v8, v9}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 619
    .local v4, "pendingAddContainer":J
    const-string v3, "launcher.add_screen"

    const-wide/16 v8, -0x1

    invoke-virtual {p1, v3, v8, v9}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 621
    .local v6, "pendingAddScreen":J
    const-wide/16 v8, -0x1

    cmp-long v3, v4, v8

    if-eqz v3, :cond_2

    const-wide/16 v8, -0x1

    cmp-long v3, v6, v8

    if-lez v3, :cond_2

    .line 622
    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    iput-wide v4, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    .line 623
    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    iput-wide v6, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    .line 624
    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    const-string v8, "launcher.add_cell_x"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    .line 625
    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    const-string v8, "launcher.add_cell_y"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    .line 626
    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    const-string v8, "launcher.add_span_x"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    .line 627
    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    const-string v8, "launcher.add_span_y"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    .line 628
    iget-object v8, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    const-string v3, "launcher.add_component"

    .line 629
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    iput-object v3, v8, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    .line 630
    const-string v3, "launcher.add_widget_info"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/appwidget/AppWidgetProviderInfo;

    .line 632
    .local v2, "info":Landroid/appwidget/AppWidgetProviderInfo;
    if-nez v2, :cond_5

    const/4 v3, 0x0

    .line 633
    :goto_2
    iput-object v3, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddWidgetInfo:Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    .line 635
    const-string v3, "launcher.add_widget_id"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddWidgetId:I

    .line 636
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/launcher3/home/HomeController;->setWaitingForResult(Z)V

    .line 638
    const-string v3, "Launcher.HomeController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "restoreState exist pendingAddInfo "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/launcher3/home/HomeController;->mPendingAddInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/launcher3/home/HomeController;->mRestoring:Z

    .line 641
    .end local v2    # "info":Landroid/appwidget/AppWidgetProviderInfo;
    :cond_2
    return-void

    .line 607
    .end local v1    # "currentScreen":I
    .end local v4    # "pendingAddContainer":J
    .end local v6    # "pendingAddScreen":J
    .restart local v0    # "accessibilityEnabled":Z
    :cond_3
    const/4 v3, 0x4

    goto/16 :goto_0

    .line 609
    :cond_4
    const/4 v3, 0x4

    goto/16 :goto_1

    .line 632
    .end local v0    # "accessibilityEnabled":Z
    .restart local v1    # "currentScreen":I
    .restart local v2    # "info":Landroid/appwidget/AppWidgetProviderInfo;
    .restart local v4    # "pendingAddContainer":J
    .restart local v6    # "pendingAddScreen":J
    :cond_5
    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 633
    invoke-static {v3, v2}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->fromProviderInfo(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    move-result-object v3

    goto :goto_2
.end method

.method public searchBarHasFocus()Z
    .locals 1

    .prologue
    .line 5243
    const/4 v0, 0x0

    return v0
.end method

.method public setAppsButtonEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 3636
    const/4 v0, 0x0

    .line 3637
    .local v0, "appsButton":Lcom/android/launcher3/common/base/item/IconInfo;
    if-eqz p1, :cond_0

    .line 3638
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v1}, Lcom/android/launcher3/Utilities;->createAppsButton(Landroid/content/Context;)Lcom/android/launcher3/common/base/item/IconInfo;

    move-result-object v0

    .line 3640
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getLauncherModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1, v2, p1, v0}, Lcom/android/launcher3/LauncherModel;->updateAppsButton(Landroid/content/Context;ZLcom/android/launcher3/common/base/item/IconInfo;)V

    .line 3641
    return-void
.end method

.method setHomeDefaultIconClick(Z)V
    .locals 0
    .param p1, "isClicked"    # Z

    .prologue
    .line 5151
    iput-boolean p1, p0, Lcom/android/launcher3/home/HomeController;->mHomeDefaultIconClick:Z

    .line 5152
    return-void
.end method

.method setPendingAddItem(Lcom/android/launcher3/home/HomeController$PendingAddArguments;)V
    .locals 0
    .param p1, "arg"    # Lcom/android/launcher3/home/HomeController$PendingAddArguments;

    .prologue
    .line 2329
    sput-object p1, Lcom/android/launcher3/home/HomeController;->sPendingAddItem:Lcom/android/launcher3/home/HomeController$PendingAddArguments;

    .line 2330
    return-void
.end method

.method public setRestoring(Z)V
    .locals 0
    .param p1, "restoring"    # Z

    .prologue
    .line 1718
    iput-boolean p1, p0, Lcom/android/launcher3/home/HomeController;->mRestoring:Z

    .line 1719
    return-void
.end method

.method setScrollBlockArea(FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 5139
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mScrollDeterminator:Lcom/android/launcher3/util/event/ScrollDeterminator;

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/launcher3/util/event/ScrollDeterminator;->setBlockArea(Lcom/android/launcher3/common/base/view/PagedView;FF)Z

    .line 5140
    return-void
.end method

.method setScrollForceBlock()V
    .locals 1

    .prologue
    .line 5143
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mScrollDeterminator:Lcom/android/launcher3/util/event/ScrollDeterminator;

    invoke-virtual {v0}, Lcom/android/launcher3/util/event/ScrollDeterminator;->setForceBlock()V

    .line 5144
    return-void
.end method

.method setScrollTalkBackEnabled()V
    .locals 2

    .prologue
    .line 5147
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mScrollDeterminator:Lcom/android/launcher3/util/event/ScrollDeterminator;

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/event/ScrollDeterminator;->setTalkBackEnabled(Landroid/content/Context;)Z

    .line 5148
    return-void
.end method

.method public setWaitingForResult(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 1726
    iput-boolean p1, p0, Lcom/android/launcher3/home/HomeController;->mWaitingForResult:Z

    .line 1727
    return-void
.end method

.method public setup()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 317
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getLauncherModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v1

    .line 318
    .local v1, "model":Lcom/android/launcher3/LauncherModel;
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    .line 319
    .local v0, "app":Lcom/android/launcher3/LauncherAppState;
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDragMgr()Lcom/android/launcher3/common/drag/DragManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/home/HomeController;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    .line 320
    invoke-virtual {v1}, Lcom/android/launcher3/LauncherModel;->getHomeLoader()Lcom/android/launcher3/home/HomeLoader;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/home/HomeController;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    .line 321
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    invoke-virtual {v2}, Lcom/android/launcher3/home/HomeLoader;->getUpdater()Lcom/android/launcher3/common/model/DataUpdater;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/model/FavoritesUpdater;

    iput-object v2, p0, Lcom/android/launcher3/home/HomeController;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    .line 323
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getTrayManager()Lcom/android/launcher3/common/tray/TrayManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/home/HomeController;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    .line 324
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    if-eqz v2, :cond_0

    .line 325
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    invoke-virtual {v2, p0}, Lcom/android/launcher3/common/tray/TrayManager;->addTrayEventCallbacks(Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;)V

    .line 328
    :cond_0
    new-instance v2, Lcom/android/launcher3/home/HomeBindController;

    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/common/model/IconCache;

    move-result-object v4

    invoke-direct {v2, v3, p0, v1, v4}, Lcom/android/launcher3/home/HomeBindController;-><init>(Landroid/content/Context;Lcom/android/launcher3/home/HomeController;Lcom/android/launcher3/LauncherModel;Lcom/android/launcher3/common/model/IconCache;)V

    iput-object v2, p0, Lcom/android/launcher3/home/HomeController;->mHomeBindController:Lcom/android/launcher3/home/HomeBindController;

    .line 329
    new-instance v2, Lcom/android/launcher3/home/HomeTransitionAnimation;

    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v4, p0, Lcom/android/launcher3/home/HomeController;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    invoke-direct {v2, v3, p0, v4}, Lcom/android/launcher3/home/HomeTransitionAnimation;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/home/HomeController;Lcom/android/launcher3/common/tray/TrayManager;)V

    iput-object v2, p0, Lcom/android/launcher3/home/HomeController;->mHomeAnimation:Lcom/android/launcher3/home/HomeTransitionAnimation;

    .line 331
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v2}, Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/home/HomeController;->mAppWidgetManager:Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;

    .line 333
    new-instance v2, Lcom/android/launcher3/home/LauncherAppWidgetHost;

    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    const/16 v4, 0x400

    invoke-direct {v2, v3, v4}, Lcom/android/launcher3/home/LauncherAppWidgetHost;-><init>(Lcom/android/launcher3/Launcher;I)V

    iput-object v2, p0, Lcom/android/launcher3/home/HomeController;->mAppWidgetHost:Lcom/android/launcher3/home/LauncherAppWidgetHost;

    .line 334
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mAppWidgetHost:Lcom/android/launcher3/home/LauncherAppWidgetHost;

    invoke-virtual {v2}, Lcom/android/launcher3/home/LauncherAppWidgetHost;->startListening()V

    .line 336
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFolderLock()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 337
    invoke-static {}, Lcom/android/launcher3/folder/folderlock/FolderLock;->getInstance()Lcom/android/launcher3/folder/folderlock/FolderLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/home/HomeController;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    .line 338
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    invoke-virtual {v2, p0}, Lcom/android/launcher3/folder/folderlock/FolderLock;->addFolderLockActionCallback(Lcom/android/launcher3/folder/folderlock/FolderLock$FolderLockActionCallback;)V

    .line 341
    :cond_1
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/launcher3/LauncherModel;->registerOnBadgeBindingCompletedLisnter(Lcom/android/launcher3/LauncherModel$OnBadgeBindingCompletedLisnter;)V

    .line 342
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/launcher3/LauncherModel;->registerOnLiveIconUpdateListener(Lcom/android/launcher3/LauncherModel$OnRefreshLiveIconListener;)V

    .line 344
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportCustomerDialerChange()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 345
    new-instance v2, Lcom/android/launcher3/home/HomeController$DialerChangeObserver;

    invoke-direct {v2, p0}, Lcom/android/launcher3/home/HomeController$DialerChangeObserver;-><init>(Lcom/android/launcher3/home/HomeController;)V

    iput-object v2, p0, Lcom/android/launcher3/home/HomeController;->mDialerChangeObserver:Lcom/android/launcher3/home/HomeController$DialerChangeObserver;

    .line 346
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "skt_phone20_settings"

    .line 347
    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher3/home/HomeController;->mDialerChangeObserver:Lcom/android/launcher3/home/HomeController$DialerChangeObserver;

    .line 346
    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 350
    :cond_2
    new-instance v2, Lcom/android/launcher3/util/capture/CapturePreview;

    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v2, v3}, Lcom/android/launcher3/util/capture/CapturePreview;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/launcher3/home/HomeController;->mHomeCapturePreview:Lcom/android/launcher3/util/capture/CapturePreview;

    .line 351
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mHomeCapturePreview:Lcom/android/launcher3/util/capture/CapturePreview;

    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mCaptureListener:Lcom/android/launcher3/util/capture/CapturePreview$CaptureListener;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/util/capture/CapturePreview;->setListener(Lcom/android/launcher3/util/capture/CapturePreview$CaptureListener;)V

    .line 353
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v2

    new-instance v3, Lcom/android/launcher3/home/HomeProxyCallbacksImpl;

    invoke-direct {v3, p0}, Lcom/android/launcher3/home/HomeProxyCallbacksImpl;-><init>(Lcom/android/launcher3/home/HomeController;)V

    invoke-virtual {v2, v3}, Lcom/android/launcher3/proxy/LauncherProxy;->setHomeProxyCallbacks(Lcom/android/launcher3/proxy/HomeProxyCallbacks;)V

    .line 355
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mScrollDeterminator:Lcom/android/launcher3/util/event/ScrollDeterminator;

    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/util/event/ScrollDeterminator;->setSystemTouchSlop(Landroid/content/Context;)I

    .line 356
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mScrollDeterminator:Lcom/android/launcher3/util/event/ScrollDeterminator;

    invoke-virtual {v2, v5}, Lcom/android/launcher3/util/event/ScrollDeterminator;->registrateController(I)V

    .line 357
    return-void
.end method

.method showCancelDropTarget()V
    .locals 1

    .prologue
    .line 4908
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mDropTargetBar:Lcom/android/launcher3/home/DropTargetBar;

    if-eqz v0, :cond_0

    .line 4909
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mDropTargetBar:Lcom/android/launcher3/home/DropTargetBar;

    invoke-virtual {v0}, Lcom/android/launcher3/home/DropTargetBar;->showCancelDropTarget()V

    .line 4911
    :cond_0
    return-void
.end method

.method showMoveToAppsPanel(Z)V
    .locals 4
    .param p1, "showPanel"    # Z

    .prologue
    .line 3930
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getCloneItemEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3931
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3949
    :cond_0
    :goto_0
    return-void

    .line 3935
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    if-eqz v1, :cond_0

    .line 3936
    if-eqz p1, :cond_2

    .line 3937
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mHomeContainer:Lcom/android/launcher3/home/HomeContainer;

    invoke-virtual {v2}, Lcom/android/launcher3/home/HomeContainer;->getHeight()I

    move-result v2

    invoke-virtual {v1, p0, v2}, Lcom/android/launcher3/common/tray/TrayManager;->pullTrayForDrag(Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;I)V

    goto :goto_0

    .line 3939
    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mHomeContainer:Lcom/android/launcher3/home/HomeContainer;

    invoke-virtual {v2}, Lcom/android/launcher3/home/HomeContainer;->getHeight()I

    move-result v2

    invoke-virtual {v1, p0, v2}, Lcom/android/launcher3/common/tray/TrayManager;->releaseTrayForDrag(Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;I)V

    .line 3941
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->isHomeStage()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mHomeContainer:Lcom/android/launcher3/home/HomeContainer;

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeContainer;->getTranslationY()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->isRunningAnimation()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3942
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mHomeAnimation:Lcom/android/launcher3/home/HomeTransitionAnimation;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->isHomeStage()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/home/HomeTransitionAnimation;->getTrayReturnAnimation(ZZ)Landroid/animation/Animator;

    move-result-object v0

    .line 3943
    .local v0, "returnAnimator":Landroid/animation/Animator;
    if-eqz v0, :cond_0

    .line 3944
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_0
.end method

.method showNoSpacePage(Z)V
    .locals 4
    .param p1, "isFromApps"    # Z

    .prologue
    const/4 v3, 0x0

    .line 2351
    if-eqz p1, :cond_0

    .line 2352
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    const v2, 0x7f09007b

    invoke-virtual {v1, v2}, Lcom/android/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 2353
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2358
    :goto_0
    return-void

    .line 2355
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    const v2, 0x7f09007d

    invoke-virtual {v1, v2}, Lcom/android/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 2356
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method showNoSpacePageforHotseat()V
    .locals 3

    .prologue
    .line 2361
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    const v2, 0x7f09007c

    invoke-virtual {v1, v2}, Lcom/android/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 2362
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2363
    return-void
.end method

.method startDrag(Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;ZZ)Z
    .locals 10
    .param p1, "cellInfo"    # Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;
    .param p2, "allowQuickOption"    # Z
    .param p3, "fromEmptyCell"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1791
    iget-object v0, p1, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 1794
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isInTouchMode()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1825
    :cond_0
    :goto_0
    return v4

    .line 1798
    :cond_1
    instance-of v2, v0, Landroid/appwidget/AppWidgetHostView;

    if-eqz v2, :cond_2

    move-object v2, v0

    check-cast v2, Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    iget-object v2, v2, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mPrvHostView:Landroid/widget/FrameLayout;

    if-nez v2, :cond_0

    :cond_2
    instance-of v2, v0, Landroid/widget/FrameLayout;

    if-eqz v2, :cond_3

    const-string v2, "previous_hostView"

    .line 1799
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1803
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_5

    .line 1804
    :cond_4
    const-string v2, "Launcher.HomeController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parent of child is null, child = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1808
    :cond_5
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1810
    iget-wide v6, p1, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->container:J

    const-wide/16 v8, -0x65

    cmp-long v2, v6, v8

    if-nez v2, :cond_7

    move v1, v3

    .line 1812
    .local v1, "isHotseat":Z
    :goto_1
    if-eqz v1, :cond_8

    .line 1813
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v5, p0, Lcom/android/launcher3/home/HomeController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v5}, Lcom/android/launcher3/home/Hotseat;->getDragController()Lcom/android/launcher3/home/HotseatDragController;

    move-result-object v5

    invoke-virtual {v2, v0, v5, p2, p3}, Lcom/android/launcher3/Launcher;->beginDragShared(Landroid/view/View;Lcom/android/launcher3/common/drag/DragSource;ZZ)V

    .line 1818
    :goto_2
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher3/home/Workspace;->getDragController()Lcom/android/launcher3/home/WorkspaceDragController;

    move-result-object v5

    if-nez v1, :cond_9

    move v2, v3

    :goto_3
    invoke-virtual {v5, p1, v2, p3}, Lcom/android/launcher3/home/WorkspaceDragController;->startDrag(Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;ZZ)Z

    .line 1819
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v2}, Lcom/android/launcher3/home/Hotseat;->getDragController()Lcom/android/launcher3/home/HotseatDragController;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Lcom/android/launcher3/home/HotseatDragController;->startDrag(Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;Z)V

    .line 1821
    instance-of v2, v0, Lcom/android/launcher3/common/view/IconView;

    if-eqz v2, :cond_6

    .line 1822
    invoke-virtual {p0, v3}, Lcom/android/launcher3/home/HomeController;->showMoveToAppsPanel(Z)V

    :cond_6
    move v4, v3

    .line 1825
    goto :goto_0

    .end local v1    # "isHotseat":Z
    :cond_7
    move v1, v4

    .line 1810
    goto :goto_1

    .line 1815
    .restart local v1    # "isHotseat":Z
    :cond_8
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v5, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v5}, Lcom/android/launcher3/home/Workspace;->getDragController()Lcom/android/launcher3/home/WorkspaceDragController;

    move-result-object v5

    invoke-virtual {v2, v0, v5, p2, p3}, Lcom/android/launcher3/Launcher;->beginDragShared(Landroid/view/View;Lcom/android/launcher3/common/drag/DragSource;ZZ)V

    goto :goto_2

    :cond_9
    move v2, v4

    .line 1818
    goto :goto_3
.end method

.method startEdgeLight()V
    .locals 1

    .prologue
    .line 5177
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mEdgeLight:Lcom/android/launcher3/home/EdgeLight;

    if-eqz v0, :cond_0

    .line 5178
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mEdgeLight:Lcom/android/launcher3/home/EdgeLight;

    invoke-virtual {v0}, Lcom/android/launcher3/home/EdgeLight;->startEdgeLight()V

    .line 5180
    :cond_0
    return-void
.end method

.method public startTrayMove()V
    .locals 1

    .prologue
    .line 3777
    sget-object v0, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    invoke-virtual {v0}, Lcom/android/launcher3/util/Talk;->isAccessibilityEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3778
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mHomeContainer:Lcom/android/launcher3/home/HomeContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeContainer;->semClearAccessibilityFocus()V

    .line 3780
    :cond_0
    return-void
.end method

.method stopEdgeLight()V
    .locals 1

    .prologue
    .line 5183
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mEdgeLight:Lcom/android/launcher3/home/EdgeLight;

    if-eqz v0, :cond_0

    .line 5184
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mEdgeLight:Lcom/android/launcher3/home/EdgeLight;

    invoke-virtual {v0}, Lcom/android/launcher3/home/EdgeLight;->stopEdgeLight()V

    .line 5186
    :cond_0
    return-void
.end method

.method protected supportNavigationBarForState(I)Z
    .locals 2
    .param p1, "internalState"    # I

    .prologue
    .line 1112
    if-nez p1, :cond_0

    .line 1113
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->getInternalState()I

    move-result p1

    .line 1116
    :cond_0
    const/4 v0, 0x1

    .line 1117
    .local v0, "support":Z
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getCloneItemEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1118
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 1120
    const/4 v0, 0x0

    .line 1122
    :cond_1
    return v0
.end method

.method protected supportStatusBarForState(I)Z
    .locals 2
    .param p1, "internalState"    # I

    .prologue
    .line 1099
    if-nez p1, :cond_0

    .line 1100
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->getInternalState()I

    move-result p1

    .line 1103
    :cond_0
    const/4 v0, 0x1

    .line 1104
    .local v0, "support":Z
    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    const/4 v1, 0x6

    if-ne p1, v1, :cond_2

    .line 1105
    :cond_1
    const/4 v0, 0x0

    .line 1107
    :cond_2
    return v0
.end method

.method protected switchInternalState(Lcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/Animator;
    .locals 14
    .param p1, "data"    # Lcom/android/launcher3/common/stage/StageEntry;

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x6

    const/4 v5, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1003
    invoke-virtual {p1}, Lcom/android/launcher3/common/stage/StageEntry;->getInternalStateFrom()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/home/HomeController;->getAdjustedInternalState(I)I

    move-result v11

    .line 1004
    .local v11, "fromState":I
    invoke-virtual {p1}, Lcom/android/launcher3/common/stage/StageEntry;->getInternalStateTo()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/home/HomeController;->getAdjustedInternalState(I)I

    move-result v13

    .line 1005
    .local v13, "toState":I
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mState:Lcom/android/launcher3/home/HomeController$State;

    invoke-static {v0, v13}, Lcom/android/launcher3/home/HomeController$State;->access$200(Lcom/android/launcher3/home/HomeController$State;I)V

    .line 1006
    invoke-virtual {p1}, Lcom/android/launcher3/common/stage/StageEntry;->getLayerViews()Ljava/util/HashMap;

    move-result-object v2

    .line 1007
    .local v2, "layerViews":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/View;Ljava/lang/Integer;>;"
    iget-boolean v1, p1, Lcom/android/launcher3/common/stage/StageEntry;->enableAnimation:Z

    .line 1009
    .local v1, "animated":Z
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0, v4}, Lcom/android/launcher3/home/Workspace;->setVisibility(I)V

    .line 1010
    invoke-direct {p0, v11, v13}, Lcom/android/launcher3/home/HomeController;->switchInternalStateChange(II)V

    .line 1012
    const/4 v12, 0x0

    .line 1013
    .local v12, "stateChangeAnim":Landroid/animation/Animator;
    if-ne v11, v3, :cond_4

    .line 1014
    const/4 v0, 0x4

    if-ne v13, v0, :cond_2

    .line 1015
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mHomeAnimation:Lcom/android/launcher3/home/HomeTransitionAnimation;

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/android/launcher3/home/HomeTransitionAnimation;->getOverviewAnimation(ZLjava/util/HashMap;ZZ)Landroid/animation/AnimatorSet;

    move-result-object v12

    .line 1057
    :cond_0
    :goto_0
    if-ne v13, v3, :cond_f

    .line 1058
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->notifyCaptureIfNecessary()V

    .line 1060
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportHotword()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1061
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v4, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v5, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v5}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/launcher3/Launcher;->isGoogleSearchWidget(I)Z

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/launcher3/Launcher;->setHotWordDetection(Z)V

    .line 1064
    :cond_1
    invoke-static {}, Lcom/android/launcher3/util/GlobalSettingUtils;->resetSettingsValue()V

    .line 1072
    :goto_1
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/home/Workspace;->updateAccessibilityFlags(Z)V

    .line 1073
    return-object v12

    .line 1016
    :cond_2
    if-ne v13, v5, :cond_3

    .line 1017
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mHomeAnimation:Lcom/android/launcher3/home/HomeTransitionAnimation;

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/home/HomeTransitionAnimation;->getDragAnimation(ZLjava/util/HashMap;ZZZ)Landroid/animation/AnimatorSet;

    move-result-object v12

    goto :goto_0

    .line 1018
    :cond_3
    if-ne v13, v6, :cond_0

    .line 1019
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mExitDragStateHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1020
    invoke-direct {p0, v3}, Lcom/android/launcher3/home/HomeController;->updateCheckBox(Z)V

    .line 1021
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mHomeAnimation:Lcom/android/launcher3/home/HomeTransitionAnimation;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/home/HomeTransitionAnimation;->getSelectAnimation(ZLjava/util/HashMap;Z)Landroid/animation/AnimatorSet;

    move-result-object v12

    goto :goto_0

    .line 1023
    :cond_4
    const/4 v0, 0x4

    if-ne v11, v0, :cond_6

    .line 1024
    if-ne v13, v3, :cond_5

    .line 1025
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mHomeAnimation:Lcom/android/launcher3/home/HomeTransitionAnimation;

    invoke-virtual {v0, v1, v2, v4, v4}, Lcom/android/launcher3/home/HomeTransitionAnimation;->getOverviewAnimation(ZLjava/util/HashMap;ZZ)Landroid/animation/AnimatorSet;

    move-result-object v12

    goto :goto_0

    .line 1026
    :cond_5
    const/4 v0, 0x5

    if-ne v13, v0, :cond_0

    .line 1027
    iget-object v5, p0, Lcom/android/launcher3/home/HomeController;->mHomeAnimation:Lcom/android/launcher3/home/HomeTransitionAnimation;

    move v6, v1

    move-object v7, v2

    move v8, v4

    move v9, v3

    move v10, v4

    invoke-virtual/range {v5 .. v10}, Lcom/android/launcher3/home/HomeTransitionAnimation;->getScreenGridAnimation(ZLjava/util/HashMap;ZZZ)Landroid/animation/AnimatorSet;

    move-result-object v12

    goto :goto_0

    .line 1029
    :cond_6
    if-eq v11, v5, :cond_7

    if-ne v11, v7, :cond_b

    .line 1030
    :cond_7
    if-ne v11, v7, :cond_8

    .line 1031
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    invoke-virtual {v0}, Lcom/android/launcher3/common/view/DragLayer;->clearAllResizeFrames()Z

    .line 1033
    :cond_8
    if-ne v13, v3, :cond_a

    .line 1034
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v0}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->isMultiSelectMode()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1035
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, v4, v1}, Lcom/android/launcher3/Launcher;->onChangeSelectMode(ZZ)V

    .line 1036
    invoke-direct {p0, v4}, Lcom/android/launcher3/home/HomeController;->updateCheckBox(Z)V

    .line 1038
    :cond_9
    iget-object v5, p0, Lcom/android/launcher3/home/HomeController;->mHomeAnimation:Lcom/android/launcher3/home/HomeTransitionAnimation;

    move v6, v1

    move-object v7, v2

    move v8, v4

    move v9, v4

    move v10, v4

    invoke-virtual/range {v5 .. v10}, Lcom/android/launcher3/home/HomeTransitionAnimation;->getDragAnimation(ZLjava/util/HashMap;ZZZ)Landroid/animation/AnimatorSet;

    move-result-object v12

    goto/16 :goto_0

    .line 1039
    :cond_a
    if-ne v13, v6, :cond_0

    .line 1040
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mExitDragStateHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1041
    invoke-direct {p0, v3}, Lcom/android/launcher3/home/HomeController;->updateCheckBox(Z)V

    .line 1042
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mHomeAnimation:Lcom/android/launcher3/home/HomeTransitionAnimation;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/home/HomeTransitionAnimation;->getSelectAnimation(ZLjava/util/HashMap;Z)Landroid/animation/AnimatorSet;

    move-result-object v12

    goto/16 :goto_0

    .line 1044
    :cond_b
    const/4 v0, 0x5

    if-ne v11, v0, :cond_d

    .line 1045
    iget-object v5, p0, Lcom/android/launcher3/home/HomeController;->mHomeAnimation:Lcom/android/launcher3/home/HomeTransitionAnimation;

    if-ne v13, v3, :cond_c

    move v10, v3

    :goto_2
    move v6, v1

    move-object v7, v2

    move v8, v4

    move v9, v4

    invoke-virtual/range {v5 .. v10}, Lcom/android/launcher3/home/HomeTransitionAnimation;->getScreenGridAnimation(ZLjava/util/HashMap;ZZZ)Landroid/animation/AnimatorSet;

    move-result-object v12

    goto/16 :goto_0

    :cond_c
    move v10, v4

    goto :goto_2

    .line 1046
    :cond_d
    if-ne v11, v6, :cond_0

    .line 1047
    if-ne v13, v3, :cond_e

    .line 1048
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mHomeAnimation:Lcom/android/launcher3/home/HomeTransitionAnimation;

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/launcher3/home/HomeTransitionAnimation;->getSelectAnimation(ZLjava/util/HashMap;Z)Landroid/animation/AnimatorSet;

    move-result-object v12

    .line 1049
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, v4, v1}, Lcom/android/launcher3/Launcher;->onChangeSelectMode(ZZ)V

    .line 1050
    invoke-direct {p0, v4}, Lcom/android/launcher3/home/HomeController;->updateCheckBox(Z)V

    goto/16 :goto_0

    .line 1051
    :cond_e
    if-ne v13, v5, :cond_0

    .line 1052
    invoke-direct {p0, v4}, Lcom/android/launcher3/home/HomeController;->updateCheckBox(Z)V

    .line 1053
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mHomeAnimation:Lcom/android/launcher3/home/HomeTransitionAnimation;

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/home/HomeTransitionAnimation;->getDragAnimation(ZLjava/util/HashMap;ZZZ)Landroid/animation/AnimatorSet;

    move-result-object v12

    goto/16 :goto_0

    .line 1066
    :cond_f
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportHotword()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getHotWordInstance()Lcom/android/launcher3/home/HotWord;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 1067
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getHotWordInstance()Lcom/android/launcher3/home/HotWord;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/launcher3/home/HotWord;->setEnableHotWord(Z)V

    .line 1069
    :cond_10
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->stopEdgeLight()V

    goto/16 :goto_1
.end method

.method updateBixbyHomeEnterCount()V
    .locals 1

    .prologue
    .line 5189
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mEdgeLight:Lcom/android/launcher3/home/EdgeLight;

    if-eqz v0, :cond_0

    .line 5190
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mEdgeLight:Lcom/android/launcher3/home/EdgeLight;

    invoke-virtual {v0}, Lcom/android/launcher3/home/EdgeLight;->updateBixbyHomeEnterCount()V

    .line 5192
    :cond_0
    return-void
.end method

.method updateCountBadge(Landroid/view/View;Z)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "animate"    # Z

    .prologue
    .line 5076
    instance-of v1, p1, Lcom/android/launcher3/common/view/IconView;

    if-eqz v1, :cond_0

    move-object v1, p1

    .line 5077
    check-cast v1, Lcom/android/launcher3/common/view/IconView;

    invoke-virtual {v1}, Lcom/android/launcher3/common/view/IconView;->getCountBadgeView()Landroid/widget/TextView;

    move-result-object v0

    .line 5078
    .local v0, "countBadge":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 5079
    check-cast p1, Lcom/android/launcher3/common/view/IconView;

    .end local p1    # "view":Landroid/view/View;
    const/4 v1, 0x0

    invoke-virtual {p1, v1, p2}, Lcom/android/launcher3/common/view/IconView;->updateCountBadge(ZZ)V

    .line 5082
    .end local v0    # "countBadge":Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method public updateItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 2
    .param p1, "info"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 3469
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 3470
    .local v0, "values":Landroid/content/ContentValues;
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1, v1, v0}, Lcom/android/launcher3/common/base/item/ItemInfo;->onAddToDatabase(Landroid/content/Context;Landroid/content/ContentValues;)V

    .line 3471
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    invoke-virtual {v1, v0, p1}, Lcom/android/launcher3/common/model/FavoritesUpdater;->updateItem(Landroid/content/ContentValues;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 3472
    return-void
.end method

.method updateItemLocationsInDatabase(Lcom/android/launcher3/common/base/view/CellLayout;)V
    .locals 14
    .param p1, "cl"    # Lcom/android/launcher3/common/base/view/CellLayout;

    .prologue
    .line 2850
    invoke-virtual {p1}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v11

    .line 2852
    .local v11, "count":I
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/home/Workspace;->getIdForScreen(Lcom/android/launcher3/common/base/view/CellLayout;)J

    move-result-wide v4

    .line 2853
    .local v4, "screenId":J
    const/16 v10, -0x64

    .line 2855
    .local v10, "container":I
    instance-of v0, p1, Lcom/android/launcher3/home/HotseatCellLayout;

    if-eqz v0, :cond_0

    .line 2856
    const-wide/16 v4, -0x1

    .line 2857
    const/16 v10, -0x65

    .line 2860
    :cond_0
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    if-ge v12, v11, :cond_2

    .line 2861
    invoke-virtual {p1}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 2862
    .local v13, "v":Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    if-eqz v0, :cond_1

    .line 2863
    invoke-virtual {v13}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 2864
    .local v1, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    if-eqz v1, :cond_1

    iget-boolean v0, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->requiresDbUpdate:Z

    if-eqz v0, :cond_1

    .line 2865
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->requiresDbUpdate:Z

    .line 2866
    int-to-long v2, v10

    iget v6, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    iget v7, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    iget v8, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    iget v9, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Lcom/android/launcher3/home/HomeController;->modifyItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJIIII)V

    .line 2860
    .end local v1    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 2871
    .end local v13    # "v":Landroid/view/View;
    :cond_2
    return-void
.end method

.method updateRestoreItems(Ljava/util/HashSet;)V
    .locals 2
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
    .line 3213
    .local p1, "updates":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    const/4 v0, 0x1

    new-instance v1, Lcom/android/launcher3/home/HomeController$30;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/home/HomeController$30;-><init>(Lcom/android/launcher3/home/HomeController;Ljava/util/HashSet;)V

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/home/HomeController;->mapOverItems(ZLcom/android/launcher3/common/base/item/ItemOperator;)V

    .line 3228
    return-void
.end method

.method updateShortcuts(Ljava/util/ArrayList;Lcom/android/launcher3/common/model/IconCache;)V
    .locals 6
    .param p2, "iconCache"    # Lcom/android/launcher3/common/model/IconCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;",
            "Lcom/android/launcher3/common/model/IconCache;",
            ")V"
        }
    .end annotation

    .prologue
    .line 3154
    .local p1, "shortcuts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 3155
    .local v3, "updates":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3157
    .local v1, "folderIconsToRefresh":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/folder/view/FolderIconView;>;"
    const/4 v4, 0x1

    new-instance v5, Lcom/android/launcher3/home/HomeController$28;

    invoke-direct {v5, p0, v3, p2, v1}, Lcom/android/launcher3/home/HomeController$28;-><init>(Lcom/android/launcher3/home/HomeController;Ljava/util/HashSet;Lcom/android/launcher3/common/model/IconCache;Ljava/util/ArrayList;)V

    invoke-direct {p0, v4, v5}, Lcom/android/launcher3/home/HomeController;->mapOverItems(ZLcom/android/launcher3/common/base/item/ItemOperator;)V

    .line 3180
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 3181
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/folder/view/FolderIconView;

    .line 3182
    .local v0, "folderIconView":Lcom/android/launcher3/folder/view/FolderIconView;
    if-eqz v0, :cond_0

    .line 3183
    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderIconView;->refreshFolderIcon()V

    .line 3180
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3186
    .end local v0    # "folderIconView":Lcom/android/launcher3/folder/view/FolderIconView;
    :cond_1
    return-void
.end method

.method updateWorkspaceScreenOrder(Ljava/util/ArrayList;)V
    .locals 2
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
    .line 3589
    .local p1, "screenOrder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, v1, p1}, Lcom/android/launcher3/common/model/FavoritesUpdater;->updateScreenOrder(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 3590
    return-void
.end method

.method public updateZeroPage(I)V
    .locals 3
    .param p1, "op"    # I

    .prologue
    .line 5063
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mZeroPageController:Lcom/android/launcher3/home/ZeroPageController;

    if-eqz v0, :cond_0

    .line 5064
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mZeroPageController:Lcom/android/launcher3/home/ZeroPageController;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/home/ZeroPageController;->updateZeroPage(I)V

    .line 5065
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController;->mZeroPageController:Lcom/android/launcher3/home/ZeroPageController;

    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeController;->isNormalState()Z

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/home/ZeroPageController;->updatePageIndicatorForZeroPage(ZZ)V

    .line 5066
    const-string v0, "Launcher.HomeController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateZeroPage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5068
    :cond_0
    return-void
.end method

.method widgetsRestored(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/home/LauncherAppWidgetInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "changedInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/home/LauncherAppWidgetInfo;>;"
    const/4 v5, 0x0

    .line 3231
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3232
    new-instance v1, Lcom/android/launcher3/home/DeferredWidgetRefresh;

    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mAppWidgetHost:Lcom/android/launcher3/home/LauncherAppWidgetHost;

    invoke-direct {v1, p0, p1, v2}, Lcom/android/launcher3/home/DeferredWidgetRefresh;-><init>(Lcom/android/launcher3/home/HomeController;Ljava/util/ArrayList;Lcom/android/launcher3/home/LauncherAppWidgetHost;)V

    .line 3233
    .local v1, "widgetRefresh":Lcom/android/launcher3/home/DeferredWidgetRefresh;
    iget-object v2, p0, Lcom/android/launcher3/home/HomeController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher3/home/Workspace;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    iget-object v4, v2, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    iget-object v2, v2, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-static {v3, v4, v2}, Lcom/android/launcher3/home/HomeLoader;->getProviderInfo(Landroid/content/Context;Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 3235
    invoke-virtual {v1}, Lcom/android/launcher3/home/DeferredWidgetRefresh;->run()V

    .line 3247
    .end local v1    # "widgetRefresh":Lcom/android/launcher3/home/DeferredWidgetRefresh;
    :cond_0
    return-void

    .line 3239
    .restart local v1    # "widgetRefresh":Lcom/android/launcher3/home/DeferredWidgetRefresh;
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    .line 3240
    .local v0, "info":Lcom/android/launcher3/home/LauncherAppWidgetInfo;
    iget-object v2, v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    instance-of v2, v2, Lcom/android/launcher3/home/PendingAppWidgetHostView;

    if-eqz v2, :cond_2

    .line 3241
    const/16 v2, 0x64

    iput v2, v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->installProgress:I

    .line 3242
    iget-object v2, v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    check-cast v2, Lcom/android/launcher3/home/PendingAppWidgetHostView;

    invoke-virtual {v2}, Lcom/android/launcher3/home/PendingAppWidgetHostView;->applyState()V

    goto :goto_0
.end method
