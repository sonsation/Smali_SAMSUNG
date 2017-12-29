.class public Lcom/android/server/am/MultiWindowManagerService;
.super Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;
.source "MultiWindowManagerService.java"

# interfaces
.implements Lcom/android/server/am/IMultiWindowManagerServiceBridge;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/MultiWindowManagerService$-void_showMultiWindowDisabledToastIfNeeded__LambdaImpl0;,
        Lcom/android/server/am/MultiWindowManagerService$1;,
        Lcom/android/server/am/MultiWindowManagerService$2;,
        Lcom/android/server/am/MultiWindowManagerService$H;
    }
.end annotation


# static fields
.field private static final ACTION_MINIMIZE_ALL:Ljava/lang/String; = "com.samsung.android.multiwindow.MINIMIZE_ALL"

.field private static final ACTION_MINIMIZE_ALL_BY_SYSTEM:Ljava/lang/String; = "com.samsung.android.multiwindow.MINIMIZE_ALL_BY_SYSTEM"

.field private static final AUTO_RESIZE_DELAY_FOR_APP_TRANSIT:I = 0x2

.field private static final AUTO_RESIZE_DELAY_FOR_IME_HIDDEN:I = 0x1

.field private static final DEBUG:Z

.field private static final DEBUG_DEX_COMPAT:Z = false

.field private static final DEBUG_ENSURE_DOCKEDVIEW:Z

.field private static final DEBUG_SETTINGS:Z = false

.field private static final DEBUG_SNAP_WINDOW:Z

.field private static final DEBUG_STACK:Z = false

.field private static final NUM_OF_MULTI_INSTANCE_LIMIT_DEFAULT:I = 0x2

.field private static final NUM_OF_MULTI_INSTANCE_LIMIT_DEFAULT_ON_DESKTOP_MODE:I = 0x5

.field private static final TAG:Ljava/lang/String; = "MultiWindowManagerService"

.field private static final TAG_BIXBY:Ljava/lang/String; = "MultiWindowManagerService_Bixby"

.field private static final TAG_ENSURE_DOCKEDVIEW:Ljava/lang/String; = "MultiWindowManagerService_EnsureDockedView"

.field private static final TAG_SNAP_WINDOW:Ljava/lang/String; = "MultiWindowManagerService_SnapWindow"


# instance fields
.field private final FLAG_NON_ANIM_TARGET_STACK_DOCKED:I

.field private final FLAG_NON_ANIM_TARGET_STACK_FREEFORM:I

.field private final FLAG_NON_ANIM_TARGET_STACK_FULLSCREEN:I

.field private final FLAG_NON_ANIM_TARGET_STACK_HOME:I

.field private mActivityManager:Lcom/android/server/am/ActivityManagerService;

.field mAppsToBlockFloatingMultiWindows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mArgs_AutoResize:Lcom/android/internal/os/SomeArgs;

.field private mAutoResizeAnimating:Z

.field private mAutoResizeController:Lcom/android/server/am/MultiWindowAutoResizeController;

.field private mAutoResizeFlag:I

.field private mAutoResizeHandlerFired:Z

.field private mBoundsForNewconfig:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/samsung/android/multiwindow/IMultiWindowCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mCoolDownFreeformReceiver:Landroid/content/BroadcastReceiver;

.field private mCoolDownFreeformRequested:Z

.field private mCurrentOrientation:I

.field private mDecorCaptionWindowHeight:I

.field private mDeferResume:Z

.field private mDeferredDetachDockStack:Z

.field private mDexCompatLandscapeTaskSize:Landroid/graphics/Point;

.field private mDexCompatPortraitTaskSize:Landroid/graphics/Point;

.field private mDisplaySize:Landroid/graphics/Point;

.field private mEnsureDockedMode:Z

.field private mFreeformAlwaysVisible:Z

.field mFreeformDefLongSize:I

.field mFreeformDefShortSize:I

.field private mGameManagerService:Lcom/samsung/android/game/IGameManagerService;

.field final mH:Lcom/android/server/am/MultiWindowManagerService$H;

.field private mIsAdjustedForIme:Z

.field private mIsDesktopModeEnabled:Z

.field private mIsMinimizeContainerServiceRunning:Z

.field private mIsOverWrittenFreeformCnt:Z

.field private mIsRotationAnimating:Z

.field private mLastFocusedStack:Lcom/android/server/am/ActivityStack;

.field private mLastFocusedTr:Lcom/android/server/am/TaskRecord;

.field private mLastGlobalDensity:I

.field private mLastReason:Ljava/lang/String;

.field private mLaunchingPairActivities:Z

.field private mMWForceOnRequesters:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mMWForceOnRequestersForAllUsers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMWForceOnRequestersLog:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mMWForceOnRequestersLogForAllUsers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMWOffRequesters:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mMWOffRequestersForAllUsers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMWOffRequestersLog:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mMWOffRequestersLogForAllUsers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxFreeformDefaultCnt:I

.field private mMaxFreeformOverWrittenCnt:I

.field private mMaxMultiInstanceCnt:I

.field private mMinimizeContainerSerivceHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMinimizeContainerService:Landroid/content/Intent;

.field mMinimizeMaxCount:I

.field private mMovingMultiWindowTasksToFullScreen:Z

.field private final mMultiWindowEventListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/samsung/android/multiwindow/IMultiWindowEventListener;",
            ">;"
        }
    .end annotation
.end field

.field mMultiWindowSettingsObserver:Lcom/android/server/am/MultiWindowSettingsObserver;

.field private mMultiwindowSupportList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNoMinimizedTarget:Lcom/android/server/am/TaskRecord;

.field private final mPendingRemoveTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final mPostTopActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mPreTopActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mRequestFreefomInvisible:Z

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private mSimpleDateFormat:Ljava/text/SimpleDateFormat;

.field private mSkipScreenFreezeAnimation:Z

.field private mSnapWindowResizing:Z

.field private final mSplitResizeAnimTargets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

.field mStatusBarHeight:I

.field private mSwappingDockedAndFullscreen:Z

.field mSystemResources:Landroid/content/res/Resources;

.field private final mTasksBoundsUnchangedDuringResize:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mTmpRect:Landroid/graphics/Rect;

.field private mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/ActivityManagerService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/am/MultiWindowManagerService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mCoolDownFreeformRequested:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/server/am/MultiWindowManagerService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mIsDesktopModeEnabled:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/server/am/MultiWindowManagerService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mIsMinimizeContainerServiceRunning:Z

    return v0
.end method

.method static synthetic -get6(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mMultiWindowEventListeners:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/ActivityStackSupervisor;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/am/MultiWindowManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/am/MultiWindowManagerService;->mAutoResizeHandlerFired:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/am/MultiWindowManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/am/MultiWindowManagerService;->mSkipScreenFreezeAnimation:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/am/MultiWindowManagerService;Ljava/lang/String;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/am/MultiWindowManagerService;->bindMinimizeContainerServiceIfNeeded(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/am/MultiWindowManagerService;Lcom/android/server/am/ActivityStack;Z)V
    .locals 0
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;
    .param p2, "initLaunchedPairApp"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/MultiWindowManagerService;->initializePairActivityModeLocked(Lcom/android/server/am/ActivityStack;Z)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/am/MultiWindowManagerService;Z)V
    .locals 0
    .param p1, "request"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/am/MultiWindowManagerService;->setCoolDownFreeformRequested(Z)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/am/MultiWindowManagerService;Ljava/lang/String;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/am/MultiWindowManagerService;->unbindMinimizeContainerServiceIfNeeded(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 194
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    .line 197
    sget-boolean v0, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    if-nez v0, :cond_1

    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/android/server/am/MultiWindowManagerService;->DEBUG_SNAP_WINDOW:Z

    .line 198
    sget-boolean v0, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    if-nez v0, :cond_0

    move v1, v2

    :cond_0
    sput-boolean v1, Lcom/android/server/am/MultiWindowManagerService;->DEBUG_ENSURE_DOCKEDVIEW:Z

    .line 183
    return-void

    :cond_1
    move v0, v1

    .line 197
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 338
    invoke-direct {p0}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;-><init>()V

    .line 209
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 224
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mMWForceOnRequesters:Landroid/util/SparseArray;

    .line 225
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mMWForceOnRequestersLog:Landroid/util/SparseArray;

    .line 226
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mMWForceOnRequestersForAllUsers:Ljava/util/ArrayList;

    .line 227
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mMWForceOnRequestersLogForAllUsers:Ljava/util/ArrayList;

    .line 229
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mMWOffRequesters:Landroid/util/SparseArray;

    .line 230
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mMWOffRequestersLog:Landroid/util/SparseArray;

    .line 231
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mMWOffRequestersForAllUsers:Ljava/util/ArrayList;

    .line 232
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mMWOffRequestersLogForAllUsers:Ljava/util/ArrayList;

    .line 235
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mMultiwindowSupportList:Ljava/util/ArrayList;

    .line 236
    iput-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 242
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mPendingRemoveTasks:Ljava/util/ArrayList;

    .line 244
    iput-boolean v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mFreeformAlwaysVisible:Z

    .line 245
    iput-boolean v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mRequestFreefomInvisible:Z

    .line 247
    iput-boolean v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mMovingMultiWindowTasksToFullScreen:Z

    .line 249
    iput v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mMaxFreeformOverWrittenCnt:I

    .line 250
    iput v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mMaxFreeformDefaultCnt:I

    .line 251
    iput-boolean v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mIsOverWrittenFreeformCnt:Z

    .line 253
    iput v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mMaxMultiInstanceCnt:I

    .line 254
    iput-boolean v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mAutoResizeAnimating:Z

    .line 265
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mDisplaySize:Landroid/graphics/Point;

    .line 267
    iput-boolean v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mDeferResume:Z

    .line 270
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 269
    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mMultiWindowEventListeners:Landroid/os/RemoteCallbackList;

    .line 272
    new-instance v0, Lcom/android/server/am/MultiWindowManagerService$H;

    invoke-direct {v0, p0}, Lcom/android/server/am/MultiWindowManagerService$H;-><init>(Lcom/android/server/am/MultiWindowManagerService;)V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    .line 274
    iput-boolean v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mIsMinimizeContainerServiceRunning:Z

    .line 275
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mMinimizeContainerService:Landroid/content/Intent;

    .line 276
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mMinimizeContainerSerivceHistory:Ljava/util/ArrayList;

    .line 277
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mSimpleDateFormat:Ljava/text/SimpleDateFormat;

    .line 279
    iput-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mLastFocusedStack:Lcom/android/server/am/ActivityStack;

    .line 280
    iput-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mLastFocusedTr:Lcom/android/server/am/TaskRecord;

    .line 282
    iput-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mNoMinimizedTarget:Lcom/android/server/am/TaskRecord;

    .line 284
    iput-boolean v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mCoolDownFreeformRequested:Z

    .line 286
    iput v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mLastGlobalDensity:I

    .line 288
    iput v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentOrientation:I

    .line 289
    iput-boolean v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mIsRotationAnimating:Z

    .line 290
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mBoundsForNewconfig:Ljava/util/HashMap;

    .line 292
    iput-boolean v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mSkipScreenFreezeAnimation:Z

    .line 294
    iput-boolean v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mIsDesktopModeEnabled:Z

    .line 295
    iput v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mDecorCaptionWindowHeight:I

    .line 296
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mDexCompatPortraitTaskSize:Landroid/graphics/Point;

    .line 297
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mDexCompatLandscapeTaskSize:Landroid/graphics/Point;

    .line 298
    iput-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mGameManagerService:Lcom/samsung/android/game/IGameManagerService;

    .line 302
    iput-boolean v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mEnsureDockedMode:Z

    .line 306
    iput-boolean v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mSnapWindowResizing:Z

    .line 309
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/am/MultiWindowManagerService;->FLAG_NON_ANIM_TARGET_STACK_HOME:I

    .line 310
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/am/MultiWindowManagerService;->FLAG_NON_ANIM_TARGET_STACK_FULLSCREEN:I

    .line 311
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/am/MultiWindowManagerService;->FLAG_NON_ANIM_TARGET_STACK_FREEFORM:I

    .line 312
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/server/am/MultiWindowManagerService;->FLAG_NON_ANIM_TARGET_STACK_DOCKED:I

    .line 314
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mSplitResizeAnimTargets:Ljava/util/ArrayList;

    .line 315
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mTasksBoundsUnchangedDuringResize:Ljava/util/ArrayList;

    .line 317
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mTmpRect:Landroid/graphics/Rect;

    .line 319
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mAppsToBlockFloatingMultiWindows:Ljava/util/ArrayList;

    .line 323
    iput-boolean v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mAutoResizeHandlerFired:Z

    .line 324
    iput v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mAutoResizeFlag:I

    .line 327
    iput-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mArgs_AutoResize:Lcom/android/internal/os/SomeArgs;

    .line 329
    iput-boolean v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mSwappingDockedAndFullscreen:Z

    .line 330
    iput-boolean v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mIsAdjustedForIme:Z

    .line 331
    iput-boolean v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mLaunchingPairActivities:Z

    .line 332
    iput-boolean v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mDeferredDetachDockStack:Z

    .line 334
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mPreTopActivities:Ljava/util/ArrayList;

    .line 335
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mPostTopActivities:Ljava/util/ArrayList;

    .line 336
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mLastReason:Ljava/lang/String;

    .line 2709
    new-instance v0, Lcom/android/server/am/MultiWindowManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/MultiWindowManagerService$1;-><init>(Lcom/android/server/am/MultiWindowManagerService;)V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 3038
    new-instance v0, Lcom/android/server/am/MultiWindowManagerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/am/MultiWindowManagerService$2;-><init>(Lcom/android/server/am/MultiWindowManagerService;)V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mCoolDownFreeformReceiver:Landroid/content/BroadcastReceiver;

    .line 339
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mSystemResources:Landroid/content/res/Resources;

    .line 340
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mSystemResources:Landroid/content/res/Resources;

    if-nez v0, :cond_0

    .line 341
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "System Resources is not ready."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 338
    :cond_0
    return-void
.end method

.method private bindMinimizeContainerServiceIfNeeded(Ljava/lang/String;)V
    .locals 6
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 2597
    sget-boolean v1, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_SUPPORT:Z

    if-eqz v1, :cond_2

    sget-boolean v1, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v1, :cond_2

    sget-boolean v1, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v1, :cond_2

    .line 2599
    iget-boolean v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mIsDesktopModeEnabled:Z

    if-eqz v1, :cond_0

    .line 2600
    return-void

    .line 2604
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    .line 2605
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 2606
    .local v0, "freeformStack":Lcom/android/server/am/ActivityStack;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->isAttached()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_3

    monitor-exit v2

    .line 2611
    iget-boolean v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mIsMinimizeContainerServiceRunning:Z

    if-nez v1, :cond_2

    .line 2612
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 2613
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mMinimizeContainerService:Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mServiceConnection:Landroid/content/ServiceConnection;

    sget-object v4, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const/4 v5, 0x1

    .line 2612
    invoke-virtual {v1, v2, v3, v5, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mIsMinimizeContainerServiceRunning:Z

    .line 2615
    iget-boolean v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mIsMinimizeContainerServiceRunning:Z

    if-eqz v1, :cond_4

    .line 2616
    sget-boolean v1, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "MultiWindowManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bind success, MinimizeContainerService, reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2621
    :cond_1
    :goto_0
    sget-boolean v1, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 2622
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mMinimizeContainerSerivceHistory:Ljava/util/ArrayList;

    .line 2623
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BindService["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] Success="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mIsMinimizeContainerServiceRunning:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2624
    const-string v3, " | "

    .line 2623
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2624
    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mSimpleDateFormat:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 2623
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2622
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2596
    .end local v0    # "freeformStack":Lcom/android/server/am/ActivityStack;
    :cond_2
    return-void

    .restart local v0    # "freeformStack":Lcom/android/server/am/ActivityStack;
    :cond_3
    monitor-exit v2

    .line 2607
    return-void

    .line 2604
    .end local v0    # "freeformStack":Lcom/android/server/am/ActivityStack;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 2618
    .restart local v0    # "freeformStack":Lcom/android/server/am/ActivityStack;
    :cond_4
    const-string v1, "MultiWindowManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bind failed, MinimizeContainerService, reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private changeIsDexModeTask(Z)V
    .locals 11
    .param p1, "isDexModeTask"    # Z

    .prologue
    const/4 v10, 0x0

    .line 445
    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStackSupervisor;->getStacks()Ljava/util/ArrayList;

    move-result-object v3

    .line 446
    .local v3, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    .local v2, "stackNdx":I
    :goto_0
    if-ltz v2, :cond_3

    .line 447
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStack;

    .line 448
    .local v1, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v0

    .line 449
    .local v0, "allTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v5, v6, -0x1

    .local v5, "taskNdx":I
    :goto_1
    if-ltz v5, :cond_2

    .line 450
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    .line 451
    .local v4, "task":Lcom/android/server/am/TaskRecord;
    iput-boolean p1, v4, Lcom/android/server/am/TaskRecord;->mIsDexModeTask:Z

    .line 454
    iget-boolean v6, v4, Lcom/android/server/am/TaskRecord;->mIsDexCompatEnabled:Z

    if-eqz v6, :cond_0

    if-eqz p1, :cond_1

    .line 449
    :cond_0
    :goto_2
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 455
    :cond_1
    iput-boolean v10, v4, Lcom/android/server/am/TaskRecord;->mIsDexCompatEnabled:Z

    .line 456
    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    iget v7, v4, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-boolean v8, v4, Lcom/android/server/am/TaskRecord;->mIsDexCompatEnabled:Z

    iget v9, v4, Lcom/android/server/am/TaskRecord;->mDexCompatUiMode:I

    invoke-interface {v6, v7, v8, v9}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->setDexCompatMode(IZI)V

    goto :goto_2

    .line 446
    .end local v4    # "task":Lcom/android/server/am/TaskRecord;
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 444
    .end local v0    # "allTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    .end local v1    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v5    # "taskNdx":I
    :cond_3
    return-void
.end method

.method private detachDockStackIfNeededLocked()V
    .locals 3

    .prologue
    .line 3536
    iget-boolean v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mDeferredDetachDockStack:Z

    if-eqz v1, :cond_1

    .line 3537
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 3538
    .local v0, "dockedStack":Lcom/android/server/am/ActivityStack;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3539
    iget-object v1, v0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->onTaskListEmptyLocked()V

    .line 3541
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mDeferredDetachDockStack:Z

    .line 3535
    .end local v0    # "dockedStack":Lcom/android/server/am/ActivityStack;
    :cond_1
    return-void
.end method

.method private static dockSideTopLeft(I)Z
    .locals 2
    .param p0, "dockSide"    # I

    .prologue
    const/4 v0, 0x1

    .line 2593
    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    if-ne p0, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private dumpMWRequesterLocked(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p3, "title"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 3475
    .local p2, "requesters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3476
    .local v0, "N":I
    if-lez v0, :cond_2

    .line 3477
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "      "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3478
    .local v1, "content":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 3479
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3480
    add-int/lit8 v3, v0, -0x1

    if-ge v2, v3, :cond_0

    .line 3481
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3478
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3484
    :cond_1
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3474
    .end local v1    # "content":Ljava/lang/String;
    .end local v2    # "i":I
    :cond_2
    return-void
.end method

.method private findFirstReturnToHomeTask(Ljava/util/ArrayList;)Lcom/android/server/am/TaskRecord;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;)",
            "Lcom/android/server/am/TaskRecord;"
        }
    .end annotation

    .prologue
    .local p1, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    const/4 v5, 0x0

    .line 2581
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2582
    .local v1, "size":I
    if-nez v1, :cond_0

    const/4 v3, 0x0

    return-object v3

    .line 2583
    :cond_0
    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 2584
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    .line 2585
    .local v2, "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->getTaskToReturnTo()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 2586
    return-object v2

    .line 2583
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2589
    .end local v2    # "task":Lcom/android/server/am/TaskRecord;
    :cond_2
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    return-object v3
.end method

.method private forceClearMinimizeIfNeededLocked(Lcom/android/server/am/TaskRecord;)V
    .locals 9
    .param p1, "minimizingTask"    # Lcom/android/server/am/TaskRecord;

    .prologue
    const/4 v8, 0x2

    .line 3489
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v5, v8}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 3490
    .local v0, "freeformStack":Lcom/android/server/am/ActivityStack;
    if-eqz v0, :cond_4

    .line 3491
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v1

    .line 3492
    .local v1, "freeformTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    iget v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mMinimizeMaxCount:I

    if-ge v5, v6, :cond_0

    .line 3493
    return-void

    .line 3496
    :cond_0
    const/4 v2, 0x0

    .line 3497
    .local v2, "minimizedTasksCount":I
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "tr$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    .line 3498
    .local v3, "tr":Lcom/android/server/am/TaskRecord;
    if-ne v3, p1, :cond_2

    .line 3499
    add-int/lit8 v2, v2, 0x1

    .line 3500
    goto :goto_0

    .line 3503
    :cond_2
    iget v5, v3, Lcom/android/server/am/TaskRecord;->userId:I

    iget v6, p1, Lcom/android/server/am/TaskRecord;->userId:I

    if-ne v5, v6, :cond_1

    iget v5, v3, Lcom/android/server/am/TaskRecord;->mHiddenState:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 3504
    add-int/lit8 v2, v2, 0x1

    .line 3505
    iget v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mMinimizeMaxCount:I

    if-le v2, v5, :cond_1

    .line 3506
    sget-boolean v5, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    if-eqz v5, :cond_3

    const-string v5, "MultiWindowManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "forceClearMinimizeIfNeededLocked tr="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3507
    :cond_3
    invoke-virtual {p0, v3, v8}, Lcom/android/server/am/MultiWindowManagerService;->setHiddenTaskLocked(Lcom/android/server/am/TaskRecord;I)V

    goto :goto_0

    .line 3488
    .end local v1    # "freeformTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    .end local v2    # "minimizedTasksCount":I
    .end local v3    # "tr":Lcom/android/server/am/TaskRecord;
    .end local v4    # "tr$iterator":Ljava/util/Iterator;
    :cond_4
    return-void
.end method

.method private getDisplayByStackId(I)Landroid/view/Display;
    .locals 3
    .param p1, "stackId"    # I

    .prologue
    const/4 v2, 0x0

    .line 3448
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 3449
    .local v0, "targetStack":Lcom/android/server/am/ActivityStack;
    if-eqz v0, :cond_0

    .line 3450
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->isAttached()Z

    move-result v1

    .line 3449
    if-eqz v1, :cond_0

    .line 3451
    iget-object v1, v0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    if-eqz v1, :cond_0

    .line 3452
    iget-object v1, v0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->isAttachedLocked()Z

    move-result v1

    .line 3449
    if-eqz v1, :cond_0

    .line 3453
    iget-object v1, v0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplay:Landroid/view/Display;

    return-object v1

    .line 3456
    :cond_0
    return-object v2
.end method

.method private getNextVisibleActivityLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)Lcom/android/server/am/ActivityRecord;
    .locals 7
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;
    .param p2, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 3417
    if-nez p1, :cond_0

    .line 3418
    return-object v5

    .line 3421
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 3422
    .local v2, "next":Lcom/android/server/am/ActivityRecord;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "nextVisible "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3423
    .local v1, "myReason":Ljava/lang/String;
    if-eq v2, p2, :cond_2

    .line 3424
    iget v5, p1, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-static {v5}, Landroid/app/ActivityManager$StackId;->keepFocusInStackIfPossible(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3427
    return-object v2

    .line 3429
    :cond_1
    iget-object v3, p2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 3431
    .local v3, "task":Lcom/android/server/am/TaskRecord;
    iget-boolean v5, p2, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v5, :cond_2

    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v5

    if-ne v3, v5, :cond_2

    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3432
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v5, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    .line 3433
    .local v0, "homeStack":Lcom/android/server/am/ActivityStack;
    if-eqz v0, :cond_2

    .line 3434
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    .line 3435
    .local v4, "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v4, :cond_3

    iget-boolean v5, v4, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v5, :cond_3

    .line 3443
    .end local v0    # "homeStack":Lcom/android/server/am/ActivityStack;
    .end local v3    # "task":Lcom/android/server/am/TaskRecord;
    .end local v4    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_2
    return-object v2

    .line 3436
    .restart local v0    # "homeStack":Lcom/android/server/am/ActivityStack;
    .restart local v3    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v4    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_3
    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 3437
    return-object v4
.end method

.method private getOrientationFromTaskBounds(Lcom/android/server/am/TaskRecord;)I
    .locals 3
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 705
    const/4 v0, 0x0

    .line 706
    .local v0, "or":I
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->isResizeable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 739
    :goto_0
    return v0

    .line 707
    :cond_0
    iget v1, p1, Lcom/android/server/am/TaskRecord;->mDexCompatUiMode:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 709
    :pswitch_0
    iget-object v1, p1, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p1, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-le v1, v2, :cond_1

    .line 710
    const/4 v0, 0x2

    .line 709
    goto :goto_0

    .line 712
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 716
    :pswitch_1
    iget-object v1, p1, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    if-nez v1, :cond_3

    .line 717
    iget-object v1, p1, Lcom/android/server/am/TaskRecord;->mDexCompatCustomSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p1, Lcom/android/server/am/TaskRecord;->mDexCompatCustomSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    if-le v1, v2, :cond_2

    .line 718
    const/4 v0, 0x2

    goto :goto_0

    .line 720
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 723
    :cond_3
    iget-object v1, p1, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p1, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-le v1, v2, :cond_4

    .line 724
    const/4 v0, 0x2

    goto :goto_0

    .line 726
    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    .line 731
    :pswitch_2
    iget-object v1, p1, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    if-eqz v1, :cond_5

    iget-object v1, p1, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p1, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-le v1, v2, :cond_6

    .line 732
    :cond_5
    const/4 v0, 0x2

    .line 731
    goto :goto_0

    .line 734
    :cond_6
    const/4 v0, 0x1

    goto :goto_0

    .line 707
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getSupportScreenBounds(Lcom/android/server/am/TaskRecord;I)Landroid/graphics/Rect;
    .locals 11
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "appScreenOrientation"    # I

    .prologue
    const/4 v7, 0x0

    const/high16 v10, 0x3f000000    # 0.5f

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 646
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->isResizeable()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 698
    return-object v7

    .line 647
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 648
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-static {p2}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$Utils;->convertToConfigurationOrientation(I)I

    move-result v3

    .line 650
    .local v3, "or":I
    if-nez v3, :cond_1

    .line 651
    invoke-direct {p0, p1}, Lcom/android/server/am/MultiWindowManagerService;->getOrientationFromTaskBounds(Lcom/android/server/am/TaskRecord;)I

    move-result v3

    .line 654
    :cond_1
    iget v6, p1, Lcom/android/server/am/TaskRecord;->mDexCompatUiMode:I

    packed-switch v6, :pswitch_data_0

    .line 682
    const-string v6, "MultiWindowManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getSupportScreenBounds: Illeagal UiMode="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Lcom/android/server/am/TaskRecord;->mDexCompatUiMode:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", tid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    return-object v0

    .line 656
    :pswitch_0
    if-ne v3, v9, :cond_3

    .line 657
    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mDexCompatPortraitTaskSize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mDexCompatPortraitTaskSize:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v8, v8, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 686
    :goto_0
    iget-boolean v6, p1, Lcom/android/server/am/TaskRecord;->mIsDexCompatEnabled:Z

    if-eqz v6, :cond_2

    .line 687
    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    iget v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mDecorCaptionWindowHeight:I

    add-int/2addr v6, v7

    iput v6, v0, Landroid/graphics/Rect;->bottom:I

    .line 696
    :cond_2
    return-object v0

    .line 659
    :cond_3
    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mDexCompatLandscapeTaskSize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mDexCompatLandscapeTaskSize:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v8, v8, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 663
    :pswitch_1
    iget-object v6, p1, Lcom/android/server/am/TaskRecord;->mDexCompatCustomSize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    iget-object v7, p1, Lcom/android/server/am/TaskRecord;->mDexCompatCustomSize:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 664
    .local v2, "longSize":I
    iget-object v6, p1, Lcom/android/server/am/TaskRecord;->mDexCompatCustomSize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    iget-object v7, p1, Lcom/android/server/am/TaskRecord;->mDexCompatCustomSize:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 665
    .local v4, "shortSize":I
    if-ne v3, v9, :cond_4

    .line 666
    invoke-virtual {v0, v8, v8, v4, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 668
    :cond_4
    invoke-virtual {v0, v8, v8, v2, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 672
    .end local v2    # "longSize":I
    .end local v4    # "shortSize":I
    :pswitch_2
    if-ne v3, v9, :cond_5

    .line 673
    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mDisplaySize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    const v7, 0x3f666666    # 0.9f

    mul-float/2addr v6, v7

    add-float/2addr v6, v10

    float-to-int v1, v6

    .line 674
    .local v1, "height":I
    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mDexCompatPortraitTaskSize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    mul-int/2addr v6, v1

    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mDexCompatPortraitTaskSize:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    div-int/2addr v6, v7

    int-to-float v6, v6

    add-float/2addr v6, v10

    float-to-int v5, v6

    .line 675
    .local v5, "width":I
    invoke-virtual {v0, v8, v8, v5, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 678
    .end local v1    # "height":I
    .end local v5    # "width":I
    :cond_5
    return-object v7

    nop

    .line 654
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getTaskDimensions(Landroid/content/pm/ActivityInfo;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 0
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;
    .param p2, "minTaskDimensions"    # Landroid/graphics/Point;
    .param p3, "maxTaskDimensions"    # Landroid/graphics/Point;

    .prologue
    .line 1822
    if-eqz p1, :cond_0

    .line 1823
    invoke-virtual {p0, p2, p1}, Lcom/android/server/am/MultiWindowManagerService;->getTaskMinDimensions(Landroid/graphics/Point;Landroid/content/pm/ActivityInfo;)V

    .line 1824
    invoke-virtual {p0, p3, p1}, Lcom/android/server/am/MultiWindowManagerService;->getTaskMaxDimensions(Landroid/graphics/Point;Landroid/content/pm/ActivityInfo;)V

    .line 1821
    :cond_0
    return-void
.end method

.method private getTaskPositionerByStackId(I)Lcom/android/server/am/LaunchingTaskPositioner;
    .locals 3
    .param p1, "stackId"    # I

    .prologue
    const/4 v2, 0x0

    .line 3461
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 3462
    .local v0, "targetStack":Lcom/android/server/am/ActivityStack;
    if-eqz v0, :cond_0

    .line 3463
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getTaskPositioner()Lcom/android/server/am/LaunchingTaskPositioner;

    move-result-object v1

    return-object v1

    .line 3466
    :cond_0
    return-object v2
.end method

.method private getTopActivityByPackageLocked(ILjava/lang/String;Z)Lcom/android/server/am/ActivityRecord;
    .locals 8
    .param p1, "stackId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "findDexCompat"    # Z

    .prologue
    .line 960
    const/4 v1, 0x0

    .line 961
    .local v1, "candidate":Lcom/android/server/am/ActivityRecord;
    iget-boolean v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mIsDesktopModeEnabled:Z

    if-eqz v7, :cond_5

    if-eqz p2, :cond_5

    .line 962
    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v7, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    .line 963
    .local v3, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v3, :cond_5

    .line 964
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v6

    .line 965
    .local v6, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v5, v7, -0x1

    .end local v1    # "candidate":Lcom/android/server/am/ActivityRecord;
    .local v5, "taskNdx":I
    :goto_0
    if-ltz v5, :cond_5

    .line 966
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    .line 967
    .local v4, "task":Lcom/android/server/am/TaskRecord;
    if-eqz p3, :cond_0

    iget-boolean v7, v4, Lcom/android/server/am/TaskRecord;->mIsDexCompatEnabled:Z

    if-eqz v7, :cond_4

    .line 971
    :cond_0
    iget-object v7, v4, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v0, v7, -0x1

    .local v0, "activityNdx":I
    :goto_1
    if-ltz v0, :cond_4

    .line 972
    iget-object v7, v4, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 973
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v7, v2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-boolean v7, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v7, :cond_2

    .line 971
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 974
    :cond_2
    iget v7, v4, Lcom/android/server/am/TaskRecord;->mHiddenState:I

    if-nez v7, :cond_3

    .line 975
    return-object v2

    .line 977
    :cond_3
    move-object v1, v2

    .local v1, "candidate":Lcom/android/server/am/ActivityRecord;
    goto :goto_2

    .line 965
    .end local v0    # "activityNdx":I
    .end local v1    # "candidate":Lcom/android/server/am/ActivityRecord;
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_4
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 984
    .end local v3    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v4    # "task":Lcom/android/server/am/TaskRecord;
    .end local v5    # "taskNdx":I
    .end local v6    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    :cond_5
    return-object v1
.end method

.method private initGameManagerService()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1006
    sget-boolean v2, Lcom/android/server/am/ActivityManagerService;->GAME_TUNER_ENABLED:Z

    if-eqz v2, :cond_0

    .line 1007
    iget-boolean v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mIsDesktopModeEnabled:Z

    if-eqz v2, :cond_1

    .line 1009
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mGameManagerService:Lcom/samsung/android/game/IGameManagerService;

    if-nez v2, :cond_0

    .line 1010
    const-string v2, "gamemanager"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1011
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 1012
    invoke-static {v0}, Lcom/samsung/android/game/IGameManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/game/IGameManagerService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mGameManagerService:Lcom/samsung/android/game/IGameManagerService;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1005
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_0
    :goto_0
    return-void

    .line 1015
    :catch_0
    move-exception v1

    .line 1016
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1019
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    iput-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mGameManagerService:Lcom/samsung/android/game/IGameManagerService;

    goto :goto_0
.end method

.method private initMultiInstanceSettings()V
    .locals 1

    .prologue
    .line 2393
    iget-boolean v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mIsDesktopModeEnabled:Z

    if-eqz v0, :cond_0

    .line 2394
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mMaxMultiInstanceCnt:I

    .line 2391
    :goto_0
    return-void

    .line 2397
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mMaxMultiInstanceCnt:I

    goto :goto_0
.end method

.method private initializePairActivityModeLocked(Lcom/android/server/am/ActivityStack;Z)V
    .locals 4
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;
    .param p2, "initLaunchedPairApp"    # Z

    .prologue
    .line 5591
    if-nez p1, :cond_0

    .line 5592
    return-void

    .line 5594
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v0

    .line 5595
    .local v0, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "tr$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    .line 5596
    .local v1, "tr":Lcom/android/server/am/TaskRecord;
    if-eqz v1, :cond_1

    .line 5597
    invoke-virtual {p0, v1, p2}, Lcom/android/server/am/MultiWindowManagerService;->initializePairActivityModeLocked(Lcom/android/server/am/TaskRecord;Z)V

    goto :goto_0

    .line 5590
    .end local v1    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_2
    return-void
.end method

.method private installSystemProviders()V
    .locals 2

    .prologue
    .line 3220
    new-instance v0, Lcom/android/server/am/MultiWindowSettingsObserver;

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {v0, v1, p0}, Lcom/android/server/am/MultiWindowSettingsObserver;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/MultiWindowManagerService;)V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mMultiWindowSettingsObserver:Lcom/android/server/am/MultiWindowSettingsObserver;

    .line 3221
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mMultiWindowSettingsObserver:Lcom/android/server/am/MultiWindowSettingsObserver;

    invoke-virtual {v0}, Lcom/android/server/am/MultiWindowSettingsObserver;->init()V

    .line 3218
    return-void
.end method

.method private isAllTaskSlidedLocked()Z
    .locals 8

    .prologue
    .line 2457
    const/4 v0, 0x0

    .line 2458
    .local v0, "freeformStack":Lcom/android/server/am/ActivityStack;
    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStackSupervisor;->getStacks()Ljava/util/ArrayList;

    move-result-object v3

    .line 2459
    .local v3, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "stack$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStack;

    .line 2460
    .local v1, "stack":Lcom/android/server/am/ActivityStack;
    iget v6, v1, Lcom/android/server/am/ActivityStack;->mStackId:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    .line 2461
    move-object v0, v1

    .line 2466
    .end local v0    # "freeformStack":Lcom/android/server/am/ActivityStack;
    .end local v1    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_1
    if-eqz v0, :cond_4

    .line 2467
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "task$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    .line 2468
    .local v4, "task":Lcom/android/server/am/TaskRecord;
    iget-boolean v6, v4, Lcom/android/server/am/TaskRecord;->mSlideMode:Z

    if-nez v6, :cond_2

    .line 2469
    sget-boolean v6, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    if-eqz v6, :cond_3

    const-string v6, "MultiWindowManagerService"

    const-string v7, "isAllTaskSlidedLocked, unslided task exists."

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2470
    :cond_3
    const/4 v6, 0x0

    return v6

    .line 2474
    .end local v4    # "task":Lcom/android/server/am/TaskRecord;
    .end local v5    # "task$iterator":Ljava/util/Iterator;
    :cond_4
    const/4 v6, 0x1

    return v6
.end method

.method private isAnimTargetStack(II)Z
    .locals 3
    .param p1, "flag"    # I
    .param p2, "stackId"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4756
    packed-switch p2, :pswitch_data_0

    .line 4766
    return v0

    .line 4758
    :pswitch_0
    and-int/lit8 v2, p1, 0x1

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    .line 4760
    :pswitch_1
    and-int/lit8 v2, p1, 0x2

    if-nez v2, :cond_1

    :goto_1
    return v0

    :cond_1
    move v0, v1

    goto :goto_1

    .line 4762
    :pswitch_2
    and-int/lit8 v2, p1, 0x4

    if-nez v2, :cond_2

    :goto_2
    return v0

    :cond_2
    move v0, v1

    goto :goto_2

    .line 4764
    :pswitch_3
    and-int/lit8 v2, p1, 0x8

    if-nez v2, :cond_3

    :goto_3
    return v0

    :cond_3
    move v0, v1

    goto :goto_3

    .line 4756
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private isDockedStackVisibleLocked()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3470
    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 3471
    .local v0, "dockedStack":Lcom/android/server/am/ActivityStack;
    if-eqz v0, :cond_0

    invoke-virtual {v0, v5}, Lcom/android/server/am/ActivityStack;->getStackVisibilityLocked(Lcom/android/server/am/ActivityRecord;)I

    move-result v3

    if-ne v3, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private isMultiWindowForceOnRequested(I)Z
    .locals 3
    .param p1, "userId"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3389
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mMWForceOnRequestersForAllUsers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 3390
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mMWForceOnRequesters:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mMWForceOnRequesters:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    move v0, v1

    .line 3389
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 3390
    goto :goto_0
.end method

.method private isMultiWindowOffRequested(I)Z
    .locals 3
    .param p1, "userId"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3394
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mMWOffRequestersForAllUsers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 3395
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mMWOffRequesters:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mMWOffRequesters:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    move v0, v1

    .line 3394
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 3395
    goto :goto_0
.end method

.method private isSplitBoundsChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 7
    .param p1, "prevBounds"    # Landroid/graphics/Rect;
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4690
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 4691
    return v3

    .line 4692
    :cond_0
    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    .line 4694
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    if-ne v5, v4, :cond_2

    move v1, v4

    .line 4695
    .local v1, "isPortrait":Z
    :goto_0
    if-eqz v1, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v6

    if-ne v5, v6, :cond_3

    .line 4697
    :cond_1
    return v3

    .end local v1    # "isPortrait":Z
    :cond_2
    move v1, v3

    .line 4694
    goto :goto_0

    .line 4696
    .restart local v1    # "isPortrait":Z
    :cond_3
    if-nez v1, :cond_4

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v6

    if-eq v5, v6, :cond_1

    .line 4710
    :cond_4
    return v4

    .line 4700
    .end local v1    # "isPortrait":Z
    :cond_5
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 4701
    .local v2, "tempBaseSize":Landroid/graphics/Point;
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v5, v5, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v5, v2}, Lcom/android/server/am/ActivityStack;->getRealDisplaySize(Landroid/graphics/Point;)V

    .line 4702
    new-instance v0, Landroid/graphics/Rect;

    iget v5, v2, Landroid/graphics/Point;->x:I

    iget v6, v2, Landroid/graphics/Point;->y:I

    invoke-direct {v0, v3, v3, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 4704
    .local v0, "displayRect":Landroid/graphics/Rect;
    if-nez p1, :cond_7

    .line 4705
    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    :goto_1
    return v3

    :cond_6
    move v3, v4

    goto :goto_1

    .line 4707
    :cond_7
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    :goto_2
    return v3

    :cond_8
    move v3, v4

    goto :goto_2
.end method

.method private isStackTranslucent(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;)Z
    .locals 8
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;
    .param p2, "starting"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v7, 0x0

    .line 2426
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v2

    .line 2428
    .local v2, "allTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v5, v6, -0x1

    .local v5, "taskNdx":I
    :goto_0
    if-ltz v5, :cond_4

    .line 2429
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    .line 2430
    .local v4, "task":Lcom/android/server/am/TaskRecord;
    iget-object v0, v4, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 2432
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .local v1, "activityNdx":I
    :goto_1
    if-ltz v1, :cond_3

    .line 2433
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 2435
    .local v3, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v6, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v6, :cond_1

    .line 2432
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 2441
    :cond_1
    iget-boolean v6, v3, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-nez v6, :cond_2

    if-ne v3, p2, :cond_0

    .line 2446
    :cond_2
    iget-boolean v6, v3, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-eqz v6, :cond_0

    .line 2449
    return v7

    .line 2428
    .end local v3    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_3
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 2453
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    .end local v4    # "task":Lcom/android/server/am/TaskRecord;
    :cond_4
    const/4 v6, 0x1

    return v6
.end method

.method private loadResources()V
    .locals 4

    .prologue
    .line 2286
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2287
    .local v0, "res":Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const v2, 0x10500c3

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Lcom/android/server/am/ActivityStackSupervisor;->mDefaultMinSizeOfResizeableTask:I

    .line 2288
    const v1, 0x1050019

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mStatusBarHeight:I

    .line 2290
    sget v1, Lcom/samsung/android/framework/res/R$dimen;->multiwindow_freeform_def_shortsize:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mFreeformDefShortSize:I

    .line 2291
    sget v1, Lcom/samsung/android/framework/res/R$dimen;->multiwindow_freeform_def_longsize:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mFreeformDefLongSize:I

    .line 2293
    invoke-direct {p0}, Lcom/android/server/am/MultiWindowManagerService;->updateFreeformMaxCount()V

    .line 2295
    sget v1, Lcom/samsung/android/framework/res/R$array;->config_multiWindowSupportAppList:I

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mMultiwindowSupportList:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v2}, Lcom/android/server/am/MultiWindowManagerService;->loadStringArray(ILjava/util/ArrayList;)V

    .line 2299
    sget v1, Lcom/samsung/android/framework/res/R$dimen;->multiwindow_desktop_freeform_decor_caption_window_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mDecorCaptionWindowHeight:I

    .line 2300
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mDexCompatPortraitTaskSize:Landroid/graphics/Point;

    .line 2301
    sget v2, Lcom/samsung/android/framework/res/R$dimen;->dex_compat_portrait_task_size_width:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 2302
    sget v3, Lcom/samsung/android/framework/res/R$dimen;->dex_compat_portrait_task_size_height:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 2300
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Point;->set(II)V

    .line 2303
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mDexCompatLandscapeTaskSize:Landroid/graphics/Point;

    .line 2304
    sget v2, Lcom/samsung/android/framework/res/R$dimen;->dex_compat_landscape_task_size_width:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 2305
    sget v3, Lcom/samsung/android/framework/res/R$dimen;->dex_compat_landscape_task_size_height:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 2303
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Point;->set(II)V

    .line 2310
    const/16 v1, 0x14

    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mMinimizeMaxCount:I

    .line 2284
    return-void
.end method

.method private loadStringArray(ILjava/util/ArrayList;)V
    .locals 2
    .param p1, "resId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3131
    .local p2, "outArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 3132
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mSystemResources:Landroid/content/res/Resources;

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 3133
    .local v0, "strings":[Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 3134
    invoke-static {p2, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 3130
    :cond_0
    return-void
.end method

.method private minimizeMaxCountingFreeformLocked()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 3070
    sget-boolean v10, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v10, :cond_6

    .line 3071
    const/4 v1, 0x0

    .line 3072
    .local v1, "freeformStack":Lcom/android/server/am/ActivityStack;
    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v10}, Lcom/android/server/am/ActivityStackSupervisor;->getStacks()Ljava/util/ArrayList;

    move-result-object v7

    .line 3073
    .local v7, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "stack$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityStack;

    .line 3074
    .local v5, "stack":Lcom/android/server/am/ActivityStack;
    iget v10, v5, Lcom/android/server/am/ActivityStack;->mStackId:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_0

    .line 3075
    move-object v1, v5

    .line 3080
    .end local v1    # "freeformStack":Lcom/android/server/am/ActivityStack;
    .end local v5    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_1
    if-eqz v1, :cond_6

    .line 3081
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v9

    .line 3082
    .local v9, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    const/4 v0, 0x0

    .line 3083
    .local v0, "count":I
    iget-boolean v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mIsOverWrittenFreeformCnt:Z

    if-eqz v10, :cond_3

    .line 3084
    iget v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mMaxFreeformOverWrittenCnt:I

    .line 3085
    .local v3, "maxFreeformCnt":I
    :goto_0
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-le v10, v3, :cond_6

    .line 3086
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v2, v10, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_5

    .line 3087
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/TaskRecord;

    .line 3088
    .local v8, "task":Lcom/android/server/am/TaskRecord;
    iget v10, v8, Lcom/android/server/am/TaskRecord;->mHiddenState:I

    if-nez v10, :cond_2

    invoke-virtual {v8}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v10

    if-nez v10, :cond_4

    .line 3086
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 3084
    .end local v2    # "i":I
    .end local v3    # "maxFreeformCnt":I
    .end local v8    # "task":Lcom/android/server/am/TaskRecord;
    :cond_3
    iget v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mMaxFreeformDefaultCnt:I

    .restart local v3    # "maxFreeformCnt":I
    goto :goto_0

    .line 3091
    .restart local v2    # "i":I
    .restart local v8    # "task":Lcom/android/server/am/TaskRecord;
    :cond_4
    add-int/lit8 v0, v0, 0x1

    .line 3092
    if-le v0, v3, :cond_2

    .line 3093
    invoke-virtual {v8}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    .line 3094
    .local v4, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v10, v12, v12}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 3095
    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v11, v4, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v10, v11, v12}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 3096
    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v10, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    invoke-interface {v10, v13}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->requestFreeformMinimizedPolicy(Z)V

    .line 3097
    iget v10, v8, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v1, v10, v13}, Lcom/android/server/am/ActivityStack;->moveTaskToBackLocked(IZ)Z

    goto :goto_2

    .line 3101
    .end local v4    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v8    # "task":Lcom/android/server/am/TaskRecord;
    :cond_5
    if-le v0, v3, :cond_6

    .line 3102
    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    new-instance v11, Lcom/android/server/am/MultiWindowManagerService$6;

    invoke-direct {v11, p0, v3}, Lcom/android/server/am/MultiWindowManagerService$6;-><init>(Lcom/android/server/am/MultiWindowManagerService;I)V

    invoke-virtual {v10, v11}, Lcom/android/server/am/MultiWindowManagerService$H;->post(Ljava/lang/Runnable;)Z

    .line 3069
    .end local v0    # "count":I
    .end local v2    # "i":I
    .end local v3    # "maxFreeformCnt":I
    .end local v6    # "stack$iterator":Ljava/util/Iterator;
    .end local v7    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    .end local v9    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    :cond_6
    return-void
.end method

.method private minimizeOhterFreeformsLocked(I)Z
    .locals 1
    .param p1, "taskId"    # I

    .prologue
    .line 3062
    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v0, :cond_0

    .line 3063
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mNoMinimizedTarget:Lcom/android/server/am/TaskRecord;

    .line 3064
    invoke-virtual {p0}, Lcom/android/server/am/MultiWindowManagerService;->minimizeAllTasksInFreeformLocked()Z

    move-result v0

    return v0

    .line 3066
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private moveActivityTaskToBackLocked(IZ)Z
    .locals 4
    .param p1, "taskId"    # I
    .param p2, "minimize"    # Z

    .prologue
    const/4 v3, 0x0

    .line 3515
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2, p1}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v1

    .line 3516
    .local v1, "task":Lcom/android/server/am/TaskRecord;
    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v2, :cond_1

    .line 3517
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2, v1}, Lcom/android/server/am/ActivityStackSupervisor;->isLockedTask(Lcom/android/server/am/TaskRecord;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3518
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->showLockTaskToast()V

    .line 3519
    return v3

    .line 3521
    :cond_0
    sget-boolean v2, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_ADJUST_STACK_ORDER:Z

    if-eqz v2, :cond_2

    .line 3522
    invoke-virtual {p0}, Lcom/android/server/am/MultiWindowManagerService;->changeFreeformMode()V

    .line 3532
    :cond_1
    return v3

    .line 3524
    :cond_2
    iget-object v2, v1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/am/ActivityStack;->moveTaskToBackLocked(IZ)Z

    move-result v0

    .line 3525
    .local v0, "res":Z
    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->isDesktopModeLocked()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3529
    :cond_3
    :goto_0
    return v0

    .line 3526
    :cond_4
    const-string v2, "FFAC"

    .line 3527
    const-string v3, "Minimize"

    .line 3526
    invoke-virtual {p0, v2, v3}, Lcom/android/server/am/MultiWindowManagerService;->logMultiWindowBehavior(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private moveFreeformStackToBottomLocked(Lcom/android/server/am/ActivityStack;)V
    .locals 3
    .param p1, "targetStack"    # Lcom/android/server/am/ActivityStack;

    .prologue
    .line 2556
    if-eqz p1, :cond_0

    iget v0, p1, Lcom/android/server/am/ActivityStack;->mStackId:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2557
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2558
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2560
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/16 v1, 0xb

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 2561
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    iget v1, p1, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-interface {v0, v1}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->moveStackToBottomLocked(I)V

    .line 2555
    :cond_0
    return-void
.end method

.method private moveFreeformStackToTopLocked(ILcom/android/server/am/ActivityStack;)I
    .locals 6
    .param p1, "freeformIndex"    # I
    .param p2, "topStack"    # Lcom/android/server/am/ActivityStack;

    .prologue
    .line 2536
    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, v4, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    iget-object v1, v4, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    .line 2537
    .local v1, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityStack;

    .line 2539
    .local v0, "freeformStack":Lcom/android/server/am/ActivityStack;
    if-eqz v0, :cond_1

    if-eq v0, p2, :cond_1

    .line 2540
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2541
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 2542
    add-int/lit8 v4, p1, -0x1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityStack;

    .line 2543
    .local v3, "top":Lcom/android/server/am/ActivityStack;
    iget v4, v3, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-static {v4}, Landroid/app/ActivityManager$StackId;->isAlwaysOnTop(I)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eq v3, v0, :cond_0

    .line 2544
    add-int/lit8 p1, p1, -0x1

    .line 2546
    :cond_0
    invoke-virtual {v1, p1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2547
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v2

    .line 2548
    .local v2, "task":Lcom/android/server/am/TaskRecord;
    if-eqz v2, :cond_1

    .line 2549
    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v5, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowManagerService;->moveTaskToTop(I)V

    .line 2552
    .end local v2    # "task":Lcom/android/server/am/TaskRecord;
    .end local v3    # "top":Lcom/android/server/am/ActivityStack;
    :cond_1
    return p1
.end method

.method private moveLruActivitiesLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityStack;Lcom/android/server/am/TaskRecord;)V
    .locals 4
    .param p1, "prevStack"    # Lcom/android/server/am/ActivityStack;
    .param p2, "targetStack"    # Lcom/android/server/am/ActivityStack;
    .param p3, "task"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 2698
    iget-object v2, p1, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2699
    .local v0, "i":I
    :cond_0
    :goto_0
    if-lez v0, :cond_1

    .line 2700
    add-int/lit8 v0, v0, -0x1

    .line 2701
    iget-object v2, p1, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 2702
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v2, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    iget v3, p3, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v2, v3, :cond_0

    .line 2703
    iget-object v2, p1, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2704
    invoke-virtual {p2, v1}, Lcom/android/server/am/ActivityStack;->updateLRUListLocked(Lcom/android/server/am/ActivityRecord;)Z

    goto :goto_0

    .line 2697
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1
    return-void
.end method

.method private movePausingActivityIfNeededLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityStack;Lcom/android/server/am/TaskRecord;)V
    .locals 10
    .param p1, "prevStack"    # Lcom/android/server/am/ActivityStack;
    .param p2, "targetStack"    # Lcom/android/server/am/ActivityStack;
    .param p3, "task"    # Lcom/android/server/am/TaskRecord;

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x65

    const/4 v4, 0x0

    .line 2679
    iget-object v1, p1, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 2680
    .local v1, "prevPausingActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_0

    iget-object v5, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v5, p3, :cond_0

    const/4 v4, 0x1

    .line 2682
    .local v4, "wasPausing":Z
    :cond_0
    if-eqz v4, :cond_2

    .line 2683
    iget-object v5, p1, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v6, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 2684
    iput-object v7, p1, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 2686
    iget-object v5, p1, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2687
    .local v0, "msg":Landroid/os/Message;
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2688
    iget-wide v6, v1, Lcom/android/server/am/ActivityRecord;->pauseTime:J

    const-wide/16 v8, 0x1f4

    add-long/2addr v6, v8

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long v2, v6, v8

    .line 2689
    .local v2, "remainingPauseTimeoutDelay":J
    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-gez v5, :cond_1

    .line 2690
    const-wide/16 v2, 0x0

    .line 2692
    :cond_1
    iput-object v1, p2, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 2693
    iget-object v5, p2, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2678
    .end local v0    # "msg":Landroid/os/Message;
    .end local v2    # "remainingPauseTimeoutDelay":J
    :cond_2
    return-void
.end method

.method private moveTaskToStackWithSizeUnchangedLocked(IIZ)V
    .locals 12
    .param p1, "taskId"    # I
    .param p2, "stackId"    # I
    .param p3, "toTop"    # Z

    .prologue
    const/4 v8, 0x1

    .line 4307
    const-string v2, "moveTaskToStackWithSizeUnchangedLocked"

    .line 4308
    .local v2, "reason":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v9, p1}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v4

    .line 4309
    .local v4, "task":Lcom/android/server/am/TaskRecord;
    iget-object v9, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v9, p2, v8, p3}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(IZZ)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    .line 4311
    .local v3, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 4312
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v0, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 4313
    .local v0, "prevStack":Lcom/android/server/am/ActivityStack;
    iget-object v9, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v9, v0}, Lcom/android/server/am/ActivityStackSupervisor;->isFocusedStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v9}, Lcom/android/server/am/ActivityStackSupervisor;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v9

    if-ne v9, v1, :cond_0

    const/4 v5, 0x1

    .line 4314
    .local v5, "wasFocused":Z
    :goto_0
    iget-object v9, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v9, v1, :cond_1

    const/4 v7, 0x1

    .line 4318
    .local v7, "wasResumed":Z
    :goto_1
    iget-object v9, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v9, v0}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 4319
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v9

    if-ne v9, v1, :cond_2

    const/4 v6, 0x1

    .line 4321
    .local v6, "wasFront":Z
    :goto_2
    iget-object v9, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v10, v4, Lcom/android/server/am/TaskRecord;->taskId:I

    iget v11, v3, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-virtual {v9, v10, v11, p3}, Lcom/android/server/wm/WindowManagerService;->moveTaskToStack(IIZ)V

    .line 4323
    invoke-virtual {v3, v4, p3, v2}, Lcom/android/server/am/ActivityStack;->addTask(Lcom/android/server/am/TaskRecord;ZLjava/lang/String;)V

    .line 4326
    if-nez v5, :cond_4

    .line 4325
    .end local v6    # "wasFront":Z
    :goto_3
    invoke-virtual {v3, v1, v6, v7, v2}, Lcom/android/server/am/ActivityStack;->moveToFrontAndResumeStateIfNeeded(Lcom/android/server/am/ActivityRecord;ZZLjava/lang/String;)V

    .line 4306
    return-void

    .line 4313
    .end local v5    # "wasFocused":Z
    .end local v7    # "wasResumed":Z
    :cond_0
    const/4 v5, 0x0

    .restart local v5    # "wasFocused":Z
    goto :goto_0

    .line 4314
    :cond_1
    const/4 v7, 0x0

    .restart local v7    # "wasResumed":Z
    goto :goto_1

    .line 4319
    :cond_2
    const/4 v6, 0x0

    .restart local v6    # "wasFront":Z
    goto :goto_2

    .line 4318
    .end local v6    # "wasFront":Z
    :cond_3
    const/4 v6, 0x0

    .restart local v6    # "wasFront":Z
    goto :goto_2

    :cond_4
    move v6, v8

    .line 4326
    goto :goto_3
.end method

.method private notifyDelayedAutoResizeIfNeeded(I)V
    .locals 4
    .param p1, "flag"    # I

    .prologue
    .line 4675
    iget-boolean v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mAutoResizeHandlerFired:Z

    if-nez v0, :cond_0

    return-void

    .line 4677
    :cond_0
    iget v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mAutoResizeFlag:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_1

    .line 4678
    iget v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mAutoResizeFlag:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mAutoResizeFlag:I

    .line 4681
    :cond_1
    iget v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mAutoResizeFlag:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    .line 4682
    iget v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mAutoResizeFlag:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_2

    .line 4683
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mArgs_AutoResize:Lcom/android/internal/os/SomeArgs;

    const/16 v3, 0x10

    invoke-virtual {v1, v3, v2}, Lcom/android/server/am/MultiWindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/MultiWindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 4674
    :cond_2
    return-void
.end method

.method private notifyMultiWindowSettingChanged(Z)V
    .locals 4
    .param p1, "on"    # Z

    .prologue
    .line 3255
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 3256
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 3257
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    const/4 v3, 0x3

    invoke-virtual {v2, v3, v0}, Lcom/android/server/am/MultiWindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/MultiWindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 3254
    return-void

    .line 3256
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private overridePairActivitiesScreenFreezeAnimationLocked()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 3572
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 3573
    .local v5, "tokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 3574
    .local v0, "dockStack":Lcom/android/server/am/ActivityStack;
    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v6, v9}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 3575
    .local v1, "fullStack":Lcom/android/server/am/ActivityStack;
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    .line 3576
    invoke-virtual {v0, v8}, Lcom/android/server/am/ActivityStack;->getStackVisibilityLocked(Lcom/android/server/am/ActivityRecord;)I

    move-result v6

    if-ne v6, v9, :cond_4

    .line 3577
    invoke-virtual {v1, v8}, Lcom/android/server/am/ActivityStack;->getStackVisibilityLocked(Lcom/android/server/am/ActivityRecord;)I

    move-result v6

    if-ne v6, v9, :cond_4

    .line 3578
    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mPostTopActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3579
    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mPostTopActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3581
    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mPreTopActivities:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mPostTopActivities:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ne v6, v7, :cond_2

    .line 3582
    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mPostTopActivities:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 3583
    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mPostTopActivities:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_1

    .line 3584
    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mPostTopActivities:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3582
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 3585
    :cond_1
    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mPreTopActivities:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mPostTopActivities:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-ne v6, v7, :cond_0

    .line 3586
    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mPostTopActivities:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 3590
    .end local v2    # "i":I
    :cond_2
    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mPostTopActivities:Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "r$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 3591
    .local v3, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v6, v3, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 3593
    .end local v3    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_3
    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    invoke-interface {v6, v5, v9}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->prepareResizeAnim(Ljava/util/ArrayList;Z)V

    .line 3595
    .end local v4    # "r$iterator":Ljava/util/Iterator;
    :cond_4
    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mPreTopActivities:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 3596
    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mPostTopActivities:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 3597
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 3571
    return-void
.end method

.method private prepareAppTransitionIfNeeded(Lcom/android/server/am/TaskRecord;)Z
    .locals 5
    .param p1, "targetTask"    # Lcom/android/server/am/TaskRecord;

    .prologue
    const/16 v4, 0xb

    const/4 v3, 0x1

    .line 2567
    const/4 v1, 0x0

    .line 2568
    .local v1, "updateActivitiesVisibility":Z
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->isHomeTask()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2569
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, v4, v3}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 2577
    :cond_0
    :goto_0
    return v1

    .line 2571
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 2572
    .local v0, "focusedStack":Lcom/android/server/am/ActivityStack;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->isHomeTask()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2573
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, v4, v3}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 2574
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private readGrantPermissionComponents()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    .line 2314
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2317
    .local v6, "grantPermissionComponents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 2319
    .local v8, "intents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Intent;>;"
    new-instance v7, Landroid/content/Intent;

    const-string v10, "android.content.pm.action.REQUEST_PERMISSIONS"

    invoke-direct {v7, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2320
    .local v7, "intent":Landroid/content/Intent;
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/pm/IPackageManager;->getPermissionControllerPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2321
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2324
    new-instance v7, Landroid/content/Intent;

    .end local v7    # "intent":Landroid/content/Intent;
    const-string v10, "android.intent.action.MANAGE_PERMISSIONS"

    invoke-direct {v7, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2325
    .restart local v7    # "intent":Landroid/content/Intent;
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/pm/IPackageManager;->getPermissionControllerPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2326
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2328
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "aIntent$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 2329
    .local v0, "aIntent":Landroid/content/Intent;
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v10

    .line 2332
    iget-object v11, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v11}, Lcom/android/server/am/ActivityManagerService;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v11

    iget v11, v11, Landroid/content/pm/UserInfo;->id:I

    .line 2330
    const/4 v12, 0x0

    .line 2331
    const v13, 0x10400

    .line 2329
    invoke-interface {v10, v0, v12, v13, v11}, Landroid/content/pm/IPackageManager;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v9

    .line 2333
    .local v9, "rInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v9, :cond_0

    .line 2334
    new-instance v4, Landroid/content/ComponentName;

    iget-object v10, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v11, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2335
    .local v4, "component":Landroid/content/ComponentName;
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2338
    .end local v0    # "aIntent":Landroid/content/Intent;
    .end local v1    # "aIntent$iterator":Ljava/util/Iterator;
    .end local v4    # "component":Landroid/content/ComponentName;
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v8    # "intents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Intent;>;"
    .end local v9    # "rInfo":Landroid/content/pm/ResolveInfo;
    :catch_0
    move-exception v5

    .line 2339
    .local v5, "exception":Landroid/os/RemoteException;
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 2343
    .end local v5    # "exception":Landroid/os/RemoteException;
    :cond_1
    const-string v10, "com.android.systemui/com.android.systemui.recents.RecentsActivity"

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2344
    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v10, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    invoke-interface {v10, v6}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->setGrantPermissionComponents(Ljava/util/ArrayList;)V

    .line 2347
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v10

    const-string v11, "CscFeature_Framework_ConfigAppListToBlockFloatingMultiWindows"

    invoke-virtual {v10, v11, v14}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2348
    .local v2, "appLockComponents":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 2349
    const-string v10, ":"

    invoke-virtual {v2, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    const/4 v10, 0x0

    array-length v12, v11

    :goto_1
    if-ge v10, v12, :cond_2

    aget-object v3, v11, v10

    .line 2350
    .local v3, "cmp":Ljava/lang/String;
    iget-object v13, p0, Lcom/android/server/am/MultiWindowManagerService;->mAppsToBlockFloatingMultiWindows:Ljava/util/ArrayList;

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2349
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 2313
    .end local v3    # "cmp":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private retrieveMultiWindowSettings()V
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v8, 0x0

    .line 3145
    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 3147
    .local v2, "resolver":Landroid/content/ContentResolver;
    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "android.software.freeform_window_management"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 3149
    const-string v6, "enable_freeform_support"

    .line 3148
    invoke-static {v2, v6, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_2

    const/4 v1, 0x1

    .line 3151
    .local v1, "freeformWindowManagement":Z
    :goto_0
    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "android.software.picture_in_picture"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    .line 3153
    .local v4, "supportsPictureInPicture":Z
    invoke-static {}, Landroid/app/ActivityManager;->supportsMultiWindow()Z

    move-result v3

    .line 3155
    .local v3, "supportsMultiWindow":Z
    const-string v6, "force_resizable_activities"

    .line 3154
    invoke-static {v2, v6, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_3

    const/4 v0, 0x1

    .line 3157
    .local v0, "forceResizable":Z
    :goto_1
    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7

    .line 3158
    :try_start_0
    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iput-boolean v0, v6, Lcom/android/server/am/ActivityManagerService;->mForceResizableActivities:Z

    .line 3159
    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v8, v8, Lcom/android/server/am/ActivityManagerService;->mForceResizableActivities:Z

    invoke-virtual {v6, v8}, Lcom/android/server/wm/WindowManagerService;->setForceResizableTasks(Z)V

    .line 3160
    if-nez v3, :cond_0

    if-eqz v0, :cond_6

    .line 3161
    :cond_0
    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    const/4 v8, 0x1

    iput-boolean v8, v6, Lcom/android/server/am/ActivityManagerService;->mSupportsMultiWindow:Z

    .line 3162
    iget-object v8, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    if-nez v1, :cond_4

    move v6, v0

    :goto_2
    iput-boolean v6, v8, Lcom/android/server/am/ActivityManagerService;->mSupportsFreeformWindowManagement:Z

    .line 3163
    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    if-nez v4, :cond_5

    .end local v0    # "forceResizable":Z
    :goto_3
    iput-boolean v0, v6, Lcom/android/server/am/ActivityManagerService;->mSupportsPictureInPicture:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_4
    monitor-exit v7

    .line 3138
    return-void

    .line 3147
    .end local v1    # "freeformWindowManagement":Z
    .end local v3    # "supportsMultiWindow":Z
    .end local v4    # "supportsPictureInPicture":Z
    :cond_1
    const/4 v1, 0x1

    .restart local v1    # "freeformWindowManagement":Z
    goto :goto_0

    .line 3148
    .end local v1    # "freeformWindowManagement":Z
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "freeformWindowManagement":Z
    goto :goto_0

    .line 3154
    .restart local v3    # "supportsMultiWindow":Z
    .restart local v4    # "supportsPictureInPicture":Z
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "forceResizable":Z
    goto :goto_1

    :cond_4
    move v6, v5

    .line 3162
    goto :goto_2

    :cond_5
    move v0, v5

    .line 3163
    goto :goto_3

    .line 3165
    :cond_6
    :try_start_1
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/android/server/am/ActivityManagerService;->mSupportsMultiWindow:Z

    .line 3166
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/android/server/am/ActivityManagerService;->mSupportsFreeformWindowManagement:Z

    .line 3167
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/android/server/am/ActivityManagerService;->mSupportsPictureInPicture:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    .line 3157
    .end local v0    # "forceResizable":Z
    :catchall_0
    move-exception v5

    monitor-exit v7

    throw v5
.end method

.method private scheduleSetMultiWindowDynamicEnabled(ZI)V
    .locals 3
    .param p1, "on"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 3399
    const-string v1, "multi_window_enabled"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v1, v2, v0, p2}, Lcom/android/server/am/MultiWindowManagerService;->scheduleSetMultiWindowSettingToRepository(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;I)V

    .line 3398
    return-void

    .line 3399
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private scheduleSetMultiWindowSettingToRepository(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;I)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 3403
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 3404
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 3405
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 3406
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 3407
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 3408
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    const/4 v3, 0x7

    invoke-virtual {v2, v3, v0}, Lcom/android/server/am/MultiWindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/MultiWindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 3402
    return-void
.end method

.method private setCoolDownFreeformRequested(Z)V
    .locals 1
    .param p1, "request"    # Z

    .prologue
    .line 3126
    iput-boolean p1, p0, Lcom/android/server/am/MultiWindowManagerService;->mCoolDownFreeformRequested:Z

    .line 3127
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    invoke-interface {v0, p1}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->setCoolDownFreeformRequested(Z)V

    .line 3125
    return-void
.end method

.method private setLatestDexBounds()V
    .locals 6

    .prologue
    .line 463
    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 464
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v0, :cond_1

    .line 465
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v3

    .line 466
    .local v3, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "task$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    .line 468
    .local v1, "task":Lcom/android/server/am/TaskRecord;
    iget-object v4, v1, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    if-eqz v4, :cond_0

    new-instance v4, Landroid/graphics/Rect;

    iget-object v5, v1, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    invoke-direct {v4, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    :goto_1
    iput-object v4, v1, Lcom/android/server/am/TaskRecord;->mLastDeXBounds:Landroid/graphics/Rect;

    goto :goto_0

    :cond_0
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    goto :goto_1

    .line 462
    .end local v1    # "task":Lcom/android/server/am/TaskRecord;
    .end local v2    # "task$iterator":Ljava/util/Iterator;
    .end local v3    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    :cond_1
    return-void
.end method

.method private setLaunchBoundsLocked(ILandroid/graphics/Rect;)V
    .locals 4
    .param p1, "taskId"    # I
    .param p2, "launchBounds"    # Landroid/graphics/Rect;

    .prologue
    const/4 v2, 0x0

    .line 2402
    sget-boolean v1, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v1, :cond_3

    .line 2403
    if-nez p2, :cond_0

    .line 2404
    const-string v1, "MultiWindowManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setLaunchBoundsLocked: bounds is abnormal, r="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2405
    return-void

    .line 2407
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v0

    .line 2408
    .local v0, "task":Lcom/android/server/am/TaskRecord;
    if-nez v0, :cond_1

    .line 2409
    const-string v1, "MultiWindowManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setLaunchBoundsLocked: cannot find task, id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2410
    return-void

    .line 2413
    :cond_1
    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2416
    iput-object v2, v0, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    .line 2417
    return-void

    .line 2420
    :cond_2
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v1, v0, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    .line 2421
    sget-boolean v1, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    if-eqz v1, :cond_3

    const-string v1, "MultiWindowManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setLaunchBoundsLocked: id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", r="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2401
    .end local v0    # "task":Lcom/android/server/am/TaskRecord;
    :cond_3
    return-void
.end method

.method private setMultiWindowDynamicEnabled(ZI)V
    .locals 6
    .param p1, "on"    # Z
    .param p2, "userId"    # I

    .prologue
    const/4 v5, 0x0

    .line 3412
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mMultiWindowSettingsObserver:Lcom/android/server/am/MultiWindowSettingsObserver;

    const-string v1, "multi_window_enabled"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/MultiWindowSettingsObserver;->setMultiWindowSettingToRepository(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;IZ)V

    .line 3411
    return-void

    :cond_0
    move v3, v5

    .line 3412
    goto :goto_0
.end method

.method private setMultiWindowForceEnabledForUser(Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 14
    .param p1, "requester"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "enable"    # Z
    .param p4, "userId"    # I

    .prologue
    .line 3272
    iget-object v9, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v9

    .line 3273
    :try_start_0
    iget-object v8, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    const-string v10, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v11, "setMultiWindowForceEnabled"

    invoke-virtual {v8, v10, v11}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3275
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v8

    move/from16 v0, p4

    if-eq v0, v8, :cond_0

    .line 3276
    iget-object v8, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    const-string v10, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const-string v11, "setMultiWindowForceEnabled"

    invoke-virtual {v8, v10, v11}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3279
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 3280
    .local v4, "origId":J
    const/4 v8, -0x1

    move/from16 v0, p4

    if-ne v0, v8, :cond_5

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mMWForceOnRequestersForAllUsers:Ljava/util/ArrayList;

    .line 3281
    .local v2, "forceOnRequester":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    const/4 v8, -0x1

    move/from16 v0, p4

    if-ne v0, v8, :cond_6

    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mMWForceOnRequestersLogForAllUsers:Ljava/util/ArrayList;

    .line 3283
    .local v3, "forceOnRequesterLog":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    if-nez v2, :cond_1

    .line 3284
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "forceOnRequester":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3285
    .restart local v2    # "forceOnRequester":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/android/server/am/MultiWindowManagerService;->mMWForceOnRequesters:Landroid/util/SparseArray;

    move/from16 v0, p4

    invoke-virtual {v8, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3287
    :cond_1
    if-nez v3, :cond_2

    .line 3288
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "forceOnRequesterLog":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3289
    .restart local v3    # "forceOnRequesterLog":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/android/server/am/MultiWindowManagerService;->mMWForceOnRequestersLog:Landroid/util/SparseArray;

    move/from16 v0, p4

    invoke-virtual {v8, v0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3293
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "("

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p3

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ", "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p2

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ", "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mSimpleDateFormat:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ")"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3294
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/16 v10, 0x64

    if-le v8, v10, :cond_3

    .line 3295
    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3299
    :cond_3
    if-eqz p3, :cond_7

    .line 3300
    :try_start_1
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 3301
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3302
    const/4 v8, 0x1

    move/from16 v0, p4

    invoke-direct {p0, p1, v8, v0}, Lcom/android/server/am/MultiWindowManagerService;->updateMultiWindowDynamicEnabledLocked(Ljava/lang/String;ZI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3311
    :cond_4
    :goto_2
    :try_start_2
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "str$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 3312
    .local v6, "str":Ljava/lang/String;
    const-string v8, "MultiWindowManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateMultiWindowSetting prev requester : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 3272
    .end local v2    # "forceOnRequester":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "forceOnRequesterLog":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "origId":J
    .end local v6    # "str":Ljava/lang/String;
    .end local v7    # "str$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v8

    monitor-exit v9

    throw v8

    .line 3280
    .restart local v4    # "origId":J
    :cond_5
    :try_start_3
    iget-object v8, p0, Lcom/android/server/am/MultiWindowManagerService;->mMWForceOnRequesters:Landroid/util/SparseArray;

    move/from16 v0, p4

    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .restart local v2    # "forceOnRequester":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto/16 :goto_0

    .line 3281
    :cond_6
    iget-object v8, p0, Lcom/android/server/am/MultiWindowManagerService;->mMWForceOnRequestersLog:Landroid/util/SparseArray;

    move/from16 v0, p4

    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .restart local v3    # "forceOnRequesterLog":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto/16 :goto_1

    .line 3305
    :cond_7
    :try_start_4
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3306
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 3307
    const/4 v8, 0x0

    move/from16 v0, p4

    invoke-direct {p0, p1, v8, v0}, Lcom/android/server/am/MultiWindowManagerService;->updateMultiWindowDynamicEnabledLocked(Ljava/lang/String;ZI)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    .line 3310
    :catchall_1
    move-exception v8

    .line 3311
    :try_start_5
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7    # "str$iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 3312
    .restart local v6    # "str":Ljava/lang/String;
    const-string v10, "MultiWindowManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updateMultiWindowSetting prev requester : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 3314
    .end local v6    # "str":Ljava/lang/String;
    :cond_8
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit v9

    .line 3270
    return-void

    .line 3314
    :cond_9
    :try_start_6
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3310
    throw v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method private setSnapWindowLocked(ZLandroid/graphics/Rect;ILjava/lang/String;Ljava/lang/String;)V
    .locals 40
    .param p1, "enable"    # Z
    .param p2, "region"    # Landroid/graphics/Rect;
    .param p3, "target"    # I
    .param p4, "reason"    # Ljava/lang/String;
    .param p5, "snapCaller"    # Ljava/lang/String;

    .prologue
    .line 4935
    sget-boolean v2, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_WINDOW_SUPPORT:Z

    if-eqz v2, :cond_8

    .line 4936
    if-eqz p1, :cond_16

    if-eqz p2, :cond_16

    .line 4937
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v31, v0

    .line 4938
    .local v31, "offset":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v27

    .line 4940
    .local v27, "h":I
    if-gtz v27, :cond_0

    .line 4942
    return-void

    .line 4945
    :cond_0
    const/16 v33, 0x0

    .line 4947
    .local v33, "snapTask":Lcom/android/server/am/TaskRecord;
    const/4 v2, 0x3

    move/from16 v0, p3

    if-ne v0, v2, :cond_9

    .line 4948
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v25

    .line 4949
    .local v25, "full":Lcom/android/server/am/ActivityStack;
    if-nez v25, :cond_1

    return-void

    .line 4950
    :cond_1
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v26

    .line 4951
    .local v26, "fullT":Lcom/android/server/am/TaskRecord;
    if-nez v26, :cond_2

    return-void

    .line 4952
    :cond_2
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v38

    .line 4953
    .local v38, "topAr":Lcom/android/server/am/ActivityRecord;
    if-nez v38, :cond_3

    return-void

    .line 4954
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    move-object/from16 v0, v38

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v2, v4}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->getFullScreenStackTopTaskBounds(Landroid/os/IBinder;)Landroid/graphics/Rect;

    move-result-object v20

    .line 4955
    .local v20, "contentB":Landroid/graphics/Rect;
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    return-void

    .line 4957
    :cond_4
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v37, v0

    .line 4958
    .local v37, "top":I
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v32, v0

    .line 4959
    .local v32, "right":I
    move-object/from16 v0, v20

    iget v11, v0, Landroid/graphics/Rect;->bottom:I

    .line 4961
    .local v11, "bottom":I
    const/4 v2, 0x1

    move-object/from16 v0, v26

    iput-boolean v2, v0, Lcom/android/server/am/TaskRecord;->mSnapTargetFull:Z

    .line 4963
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MultiWindowManagerService;->mSplitResizeAnimTargets:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/am/MultiWindowManagerService;->updateSplitResizeAnimTargetsLocked(Ljava/util/ArrayList;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 4964
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/MultiWindowManagerService;->mSplitResizeAnimTargets:Ljava/util/ArrayList;

    invoke-interface {v2, v4}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->prepareResizeAnim(Ljava/util/ArrayList;)V

    .line 4965
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    invoke-interface {v2}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->waitScreenFreezeAnimationForRecentsDrawn()V

    .line 4966
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MultiWindowManagerService;->mSplitResizeAnimTargets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 4969
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->setIgnoreMinimizeDocked(Z)V

    .line 4970
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    move-object/from16 v0, v26

    iget v4, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    const/4 v5, 0x1

    invoke-interface {v2, v4, v5}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->setTaskToSnapTargetFullscreen(IZ)Z

    .line 4972
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v26

    iget v3, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    new-instance v7, Landroid/graphics/Rect;

    sub-int v4, v11, v37

    const/4 v5, 0x0

    const/4 v6, 0x0

    move/from16 v0, v32

    invoke-direct {v7, v5, v6, v0, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x1

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/ActivityManagerService;->moveTaskToDockedStack(IIZZLandroid/graphics/Rect;Z)Z

    .line 4974
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->setIgnoreMinimizeDocked(Z)V

    .line 4976
    const/4 v2, 0x1

    move-object/from16 v0, v26

    iput-boolean v2, v0, Lcom/android/server/am/TaskRecord;->mSnapWindowTarget:Z

    .line 4977
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    move-object/from16 v0, v26

    iget v4, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    const/4 v5, 0x1

    invoke-interface {v2, v4, v5}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->setTaskToSnapWindowTarget(IZ)Z

    .line 4979
    new-instance v3, Landroid/graphics/Rect;

    move-object/from16 v0, v26

    iget-object v2, v0, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    invoke-direct {v3, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 4980
    .local v3, "dockedBounds":Landroid/graphics/Rect;
    move/from16 v0, v32

    iput v0, v3, Landroid/graphics/Rect;->right:I

    .line 4981
    move/from16 v0, v27

    iput v0, v3, Landroid/graphics/Rect;->bottom:I

    .line 4982
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v4, 0x0

    iput-boolean v4, v2, Lcom/android/server/am/ActivityStackSupervisor;->mSnapWindowRunning:Z

    .line 4983
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/am/MultiWindowManagerService;->mSnapWindowResizing:Z

    .line 4984
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityManagerService;->resizeDockedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 4985
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/android/server/am/ActivityStackSupervisor;->mSnapWindowRunning:Z

    .line 4986
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/am/MultiWindowManagerService;->mSnapWindowResizing:Z

    .line 4989
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    move-object/from16 v0, v38

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move/from16 v0, v31

    invoke-interface {v2, v4, v0}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->adjOffsetForSnapWindowTarget(Landroid/os/IBinder;I)I

    move-result v31

    .line 4990
    new-instance v35, Landroid/graphics/Rect;

    move-object/from16 v0, v26

    iget-object v2, v0, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    move-object/from16 v0, v35

    invoke-direct {v0, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 4991
    .local v35, "taskBounds":Landroid/graphics/Rect;
    move/from16 v0, v31

    neg-int v2, v0

    move-object/from16 v0, v35

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 4992
    move/from16 v0, v32

    move-object/from16 v1, v35

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 4993
    sub-int v2, v11, v37

    sub-int v2, v2, v31

    move-object/from16 v0, v35

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 4994
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v26

    iget v4, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    const/4 v5, 0x0

    move-object/from16 v0, v35

    invoke-virtual {v2, v4, v0, v5}, Lcom/android/server/am/ActivityManagerService;->resizeTask(ILandroid/graphics/Rect;I)V

    .line 4995
    sget-boolean v2, Lcom/android/server/am/MultiWindowManagerService;->DEBUG_SNAP_WINDOW:Z

    if-eqz v2, :cond_6

    .line 4996
    const-string v2, "MultiWindowManagerService_SnapWindow"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "snap target full screen tid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v26

    iget v5, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " region : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4998
    :cond_6
    move-object/from16 v33, v26

    .line 5051
    .end local v3    # "dockedBounds":Landroid/graphics/Rect;
    .end local v11    # "bottom":I
    .end local v20    # "contentB":Landroid/graphics/Rect;
    .end local v25    # "full":Lcom/android/server/am/ActivityStack;
    .end local v26    # "fullT":Lcom/android/server/am/TaskRecord;
    .end local v32    # "right":I
    .end local v33    # "snapTask":Lcom/android/server/am/TaskRecord;
    .end local v35    # "taskBounds":Landroid/graphics/Rect;
    .end local v37    # "top":I
    .end local v38    # "topAr":Lcom/android/server/am/ActivityRecord;
    :cond_7
    :goto_0
    if-eqz v33, :cond_8

    .line 5052
    move-object/from16 v0, v33

    iget-object v2, v0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v2, :cond_15

    .line 5053
    move-object/from16 v0, v33

    iget-object v2, v0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 5054
    .local v10, "SnapPackageName":Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1, v10}, Lcom/android/server/am/MultiWindowManagerService;->logSnapWindowComplete(Ljava/lang/String;Ljava/lang/String;)V

    .line 4934
    .end local v10    # "SnapPackageName":Ljava/lang/String;
    .end local v27    # "h":I
    .end local v31    # "offset":I
    :cond_8
    :goto_2
    return-void

    .line 4999
    .restart local v27    # "h":I
    .restart local v31    # "offset":I
    .restart local v33    # "snapTask":Lcom/android/server/am/TaskRecord;
    :cond_9
    const/4 v2, 0x1

    move/from16 v0, p3

    if-eq v0, v2, :cond_a

    const/4 v2, 0x2

    move/from16 v0, p3

    if-ne v0, v2, :cond_7

    .line 5000
    :cond_a
    const/4 v2, 0x2

    move/from16 v0, p3

    if-ne v0, v2, :cond_b

    .line 5001
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/MultiWindowManagerService;->swapTasksForSnapWindowLocked()V

    .line 5003
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v21

    .line 5004
    .local v21, "docked":Lcom/android/server/am/ActivityStack;
    if-nez v21, :cond_c

    return-void

    .line 5005
    :cond_c
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v22

    .line 5006
    .local v22, "dockedT":Lcom/android/server/am/TaskRecord;
    if-nez v22, :cond_d

    return-void

    .line 5008
    :cond_d
    const/4 v2, 0x1

    move/from16 v0, p3

    if-ne v0, v2, :cond_f

    .line 5009
    const/16 v24, 0x4

    .line 5010
    .local v24, "flag":I
    if-nez v31, :cond_e

    .line 5011
    const/16 v24, 0xc

    .line 5013
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MultiWindowManagerService;->mSplitResizeAnimTargets:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v2, v1}, Lcom/android/server/am/MultiWindowManagerService;->updateSplitResizeAnimTargetsLocked(Ljava/util/ArrayList;I)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 5014
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/MultiWindowManagerService;->mSplitResizeAnimTargets:Ljava/util/ArrayList;

    invoke-interface {v2, v4}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->prepareResizeAnim(Ljava/util/ArrayList;)V

    .line 5015
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MultiWindowManagerService;->mSplitResizeAnimTargets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 5019
    .end local v24    # "flag":I
    :cond_f
    const/4 v2, 0x1

    move-object/from16 v0, v22

    iput-boolean v2, v0, Lcom/android/server/am/TaskRecord;->mSnapWindowTarget:Z

    .line 5020
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    move-object/from16 v0, v22

    iget v4, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    const/4 v5, 0x1

    invoke-interface {v2, v4, v5}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->setTaskToSnapWindowTarget(IZ)Z

    .line 5021
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v5, v6}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 5024
    new-instance v3, Landroid/graphics/Rect;

    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mBounds:Landroid/graphics/Rect;

    invoke-direct {v3, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 5025
    .restart local v3    # "dockedBounds":Landroid/graphics/Rect;
    move/from16 v0, v27

    iput v0, v3, Landroid/graphics/Rect;->bottom:I

    .line 5026
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v4, 0x0

    iput-boolean v4, v2, Lcom/android/server/am/ActivityStackSupervisor;->mSnapWindowRunning:Z

    .line 5027
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityManagerService;->resizeDockedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 5028
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/android/server/am/ActivityStackSupervisor;->mSnapWindowRunning:Z

    .line 5031
    new-instance v35, Landroid/graphics/Rect;

    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    move-object/from16 v0, v35

    invoke-direct {v0, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 5032
    .restart local v35    # "taskBounds":Landroid/graphics/Rect;
    move/from16 v0, v31

    neg-int v2, v0

    move-object/from16 v0, v35

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 5033
    move-object/from16 v0, v35

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v2, v2, v31

    move-object/from16 v0, v35

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 5034
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v22

    iget v4, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    const/4 v5, 0x0

    move-object/from16 v0, v35

    invoke-virtual {v2, v4, v0, v5}, Lcom/android/server/am/ActivityManagerService;->resizeTask(ILandroid/graphics/Rect;I)V

    .line 5036
    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v28, v2, -0x1

    .local v28, "i":I
    :goto_3
    if-ltz v28, :cond_11

    .line 5037
    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    move/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    iget v0, v2, Lcom/android/server/am/ActivityStack;->mStackId:I

    move/from16 v34, v0

    .line 5038
    .local v34, "stackId":I
    if-eqz v34, :cond_10

    const/4 v2, 0x1

    move/from16 v0, v34

    if-ne v0, v2, :cond_13

    .line 5039
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    move/from16 v0, v34

    invoke-virtual {v2, v0}, Lcom/android/server/am/ActivityManagerService;->setFocusedStack(I)V

    .line 5044
    .end local v34    # "stackId":I
    :cond_11
    sget-boolean v2, Lcom/android/server/am/MultiWindowManagerService;->DEBUG_SNAP_WINDOW:Z

    if-eqz v2, :cond_12

    .line 5045
    const-string v4, "MultiWindowManagerService_SnapWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "snap target "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v2, 0x1

    move/from16 v0, p3

    if-ne v0, v2, :cond_14

    const-string v2, "A "

    :goto_4
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " tid : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v22

    iget v5, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " region : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5047
    :cond_12
    move-object/from16 v33, v22

    .local v33, "snapTask":Lcom/android/server/am/TaskRecord;
    goto/16 :goto_0

    .line 5036
    .local v33, "snapTask":Lcom/android/server/am/TaskRecord;
    .restart local v34    # "stackId":I
    :cond_13
    add-int/lit8 v28, v28, -0x1

    goto :goto_3

    .line 5045
    .end local v34    # "stackId":I
    :cond_14
    const-string v2, "B "

    goto :goto_4

    .line 5053
    .end local v3    # "dockedBounds":Landroid/graphics/Rect;
    .end local v21    # "docked":Lcom/android/server/am/ActivityStack;
    .end local v22    # "dockedT":Lcom/android/server/am/TaskRecord;
    .end local v28    # "i":I
    .end local v33    # "snapTask":Lcom/android/server/am/TaskRecord;
    .end local v35    # "taskBounds":Landroid/graphics/Rect;
    :cond_15
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 5058
    .end local v27    # "h":I
    .end local v31    # "offset":I
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-boolean v2, v2, Lcom/android/server/am/ActivityStackSupervisor;->mSnapWindowRunning:Z

    if-nez v2, :cond_17

    .line 5059
    return-void

    .line 5061
    :cond_17
    const-string v2, "remove task"

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    .line 5062
    .local v15, "byRemoveTask":Z
    const-string v2, "swap tasks"

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    .line 5063
    .local v18, "bySwapTasks":Z
    const-string v2, "resize docked size null"

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    .line 5064
    .local v19, "byToggleRecent":Z
    const-string v2, "config-orientation"

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    .line 5065
    .local v14, "byOrientationChanged":Z
    const-string v2, "snap task to back"

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    .line 5066
    .local v16, "bySnapTaskToBack":Z
    const/4 v2, 0x1

    move/from16 v0, p3

    if-ne v0, v2, :cond_18

    const/16 v17, 0x1

    .line 5067
    .local v17, "bySplitResize":Z
    :goto_5
    const/4 v2, 0x2

    move/from16 v0, p3

    if-ne v0, v2, :cond_19

    const/4 v13, 0x1

    .line 5068
    .local v13, "byDockedToFull":Z
    :goto_6
    const/4 v2, 0x3

    move/from16 v0, p3

    if-ne v0, v2, :cond_1a

    const/4 v12, 0x1

    .line 5070
    .local v12, "byDividerDisableButton":Z
    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v4, 0x0

    iput-boolean v4, v2, Lcom/android/server/am/ActivityStackSupervisor;->mSnapWindowRunning:Z

    .line 5071
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v21

    .line 5072
    .restart local v21    # "docked":Lcom/android/server/am/ActivityStack;
    if-nez v21, :cond_1b

    return-void

    .line 5066
    .end local v12    # "byDividerDisableButton":Z
    .end local v13    # "byDockedToFull":Z
    .end local v17    # "bySplitResize":Z
    .end local v21    # "docked":Lcom/android/server/am/ActivityStack;
    :cond_18
    const/16 v17, 0x0

    .restart local v17    # "bySplitResize":Z
    goto :goto_5

    .line 5067
    :cond_19
    const/4 v13, 0x0

    .restart local v13    # "byDockedToFull":Z
    goto :goto_6

    .line 5068
    :cond_1a
    const/4 v12, 0x0

    .restart local v12    # "byDividerDisableButton":Z
    goto :goto_7

    .line 5073
    .restart local v21    # "docked":Lcom/android/server/am/ActivityStack;
    :cond_1b
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v22

    .line 5074
    .restart local v22    # "dockedT":Lcom/android/server/am/TaskRecord;
    if-nez v22, :cond_1c

    return-void

    .line 5075
    :cond_1c
    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    .line 5076
    .restart local v3    # "dockedBounds":Landroid/graphics/Rect;
    if-eqz v3, :cond_1d

    move-object/from16 v0, v22

    iget-boolean v2, v0, Lcom/android/server/am/TaskRecord;->mSnapTargetFull:Z

    if-nez v2, :cond_1d

    if-eqz v18, :cond_1e

    .line 5077
    :cond_1d
    new-instance v3, Landroid/graphics/Rect;

    .end local v3    # "dockedBounds":Landroid/graphics/Rect;
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 5079
    .restart local v3    # "dockedBounds":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    invoke-interface {v2, v3}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->getMiddleTargetDockedBounds(Landroid/graphics/Rect;)V

    .line 5081
    :cond_1e
    move-object/from16 v0, v22

    iget-boolean v2, v0, Lcom/android/server/am/TaskRecord;->mSnapWindowTarget:Z

    if-nez v2, :cond_22

    if-eqz v15, :cond_22

    .line 5082
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v36

    .line 5083
    .local v36, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    const/16 v28, 0x0

    .restart local v28    # "i":I
    :goto_8
    invoke-virtual/range {v36 .. v36}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v28

    if-ge v0, v2, :cond_21

    .line 5084
    move-object/from16 v0, v36

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    .end local v22    # "dockedT":Lcom/android/server/am/TaskRecord;
    check-cast v22, Lcom/android/server/am/TaskRecord;

    .line 5085
    .restart local v22    # "dockedT":Lcom/android/server/am/TaskRecord;
    move-object/from16 v0, v22

    iget-boolean v2, v0, Lcom/android/server/am/TaskRecord;->mSnapWindowTarget:Z

    if-eqz v2, :cond_20

    .line 5086
    const/4 v2, 0x0

    move-object/from16 v0, v22

    iput-boolean v2, v0, Lcom/android/server/am/TaskRecord;->mSnapWindowTarget:Z

    .line 5087
    const/4 v2, 0x0

    move-object/from16 v0, v22

    iput-boolean v2, v0, Lcom/android/server/am/TaskRecord;->mSnapTargetFull:Z

    .line 5088
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/16 v4, 0xca

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 5089
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    move-object/from16 v0, v22

    iget v4, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->setTaskToSnapWindowTarget(IZ)Z

    .line 5090
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    move-object/from16 v0, v22

    iget v4, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->setTaskToSnapTargetFullscreen(IZ)Z

    .line 5091
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v2

    iget-object v5, v2, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/am/ActivityManagerService;->resizeDockedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 5093
    sget-boolean v2, Lcom/android/server/am/MultiWindowManagerService;->DEBUG_SNAP_WINDOW:Z

    if-eqz v2, :cond_1f

    .line 5094
    const-string v2, "MultiWindowManagerService_SnapWindow"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "un-snapped tid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v22

    iget v5, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5096
    :cond_1f
    return-void

    .line 5083
    :cond_20
    add-int/lit8 v28, v28, 0x1

    goto :goto_8

    .line 5099
    :cond_21
    move-object/from16 v0, v22

    iget-boolean v2, v0, Lcom/android/server/am/TaskRecord;->mSnapWindowTarget:Z

    if-nez v2, :cond_22

    .line 5101
    return-void

    .line 5105
    .end local v28    # "i":I
    .end local v36    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    :cond_22
    if-eqz v14, :cond_29

    .line 5106
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    invoke-interface {v2}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->adjStackBoundsForSnapWindow()V

    .line 5144
    :cond_23
    :goto_9
    move-object/from16 v0, v22

    iget-boolean v2, v0, Lcom/android/server/am/TaskRecord;->mSnapTargetFull:Z

    if-eqz v2, :cond_24

    if-eqz v15, :cond_24

    .line 5145
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    move-object/from16 v0, v22

    iget v4, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    const/4 v5, 0x1

    invoke-interface {v2, v4, v5}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->setSnapWindowDeferAnimation(IZ)Z

    .line 5148
    :cond_24
    const/4 v2, 0x0

    move-object/from16 v0, v22

    iput-boolean v2, v0, Lcom/android/server/am/TaskRecord;->mSnapWindowTarget:Z

    .line 5149
    const/4 v2, 0x0

    move-object/from16 v0, v22

    iput-boolean v2, v0, Lcom/android/server/am/TaskRecord;->mSnapTargetFull:Z

    .line 5151
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    move-object/from16 v0, v22

    iget v4, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->setTaskToSnapWindowTarget(IZ)Z

    .line 5152
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    move-object/from16 v0, v22

    iget v4, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->setTaskToSnapTargetFullscreen(IZ)Z

    .line 5154
    if-nez v18, :cond_25

    if-nez v16, :cond_25

    if-nez v12, :cond_25

    if-eqz v15, :cond_26

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x1

    if-le v2, v4, :cond_26

    .line 5155
    :cond_25
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v5, v6}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 5156
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    .line 5157
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityManagerService;->resizeDockedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 5160
    :cond_26
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    const/16 v4, 0xf

    move-object/from16 v0, p4

    invoke-virtual {v2, v4, v0}, Lcom/android/server/am/MultiWindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v30

    .line 5161
    .local v30, "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Lcom/android/server/am/MultiWindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 5163
    sget-boolean v2, Lcom/android/server/am/MultiWindowManagerService;->DEBUG_SNAP_WINDOW:Z

    if-eqz v2, :cond_27

    .line 5164
    const-string v2, "MultiWindowManagerService_SnapWindow"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "un-snapped tid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v22

    iget v5, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " reason : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5169
    :cond_27
    const/16 v23, 0x0

    .line 5170
    .local v23, "extra":Ljava/lang/String;
    if-eqz v17, :cond_31

    .line 5171
    const-string v23, "DividerDragging"

    .line 5177
    .end local v23    # "extra":Ljava/lang/String;
    :cond_28
    :goto_a
    if-eqz v23, :cond_8

    .line 5178
    const-string v2, "SNOF"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v2, v1}, Lcom/android/server/am/MultiWindowManagerService;->logMultiWindowBehavior(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 5107
    .end local v30    # "msg":Landroid/os/Message;
    :cond_29
    if-nez v19, :cond_23

    .line 5110
    const/16 v29, 0x1

    .line 5111
    .local v29, "loadAnim":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-boolean v2, v2, Lcom/android/server/am/ActivityStackSupervisor;->mHandleNonResizeableTask:Z

    if-eqz v2, :cond_2c

    .line 5112
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v25

    .line 5113
    .restart local v25    # "full":Lcom/android/server/am/ActivityStack;
    const/16 v39, 0x0

    .line 5114
    .local v39, "topT":Lcom/android/server/am/TaskRecord;
    const/16 v38, 0x0

    .line 5115
    .local v38, "topAr":Lcom/android/server/am/ActivityRecord;
    if-eqz v25, :cond_2a

    .line 5116
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v39

    .line 5118
    .end local v39    # "topT":Lcom/android/server/am/TaskRecord;
    :cond_2a
    if-eqz v39, :cond_2b

    .line 5119
    invoke-virtual/range {v39 .. v39}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v38

    .line 5121
    .end local v38    # "topAr":Lcom/android/server/am/ActivityRecord;
    :cond_2b
    if-eqz v38, :cond_2c

    .line 5122
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MultiWindowManagerService;->mSplitResizeAnimTargets:Ljava/util/ArrayList;

    move-object/from16 v0, v38

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5123
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/MultiWindowManagerService;->mSplitResizeAnimTargets:Ljava/util/ArrayList;

    invoke-interface {v2, v4}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->prepareResizeAnim(Ljava/util/ArrayList;)V

    .line 5124
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MultiWindowManagerService;->mSplitResizeAnimTargets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 5125
    const/16 v29, 0x0

    .line 5128
    .end local v25    # "full":Lcom/android/server/am/ActivityStack;
    :cond_2c
    if-nez v29, :cond_2d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    invoke-interface {v2}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->isScreenFreezeAnimationSet()Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 5131
    :cond_2d
    :goto_b
    if-eqz v29, :cond_2e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MultiWindowManagerService;->mSplitResizeAnimTargets:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/am/MultiWindowManagerService;->updateSplitResizeAnimTargetsLocked(Ljava/util/ArrayList;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 5132
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/MultiWindowManagerService;->mSplitResizeAnimTargets:Ljava/util/ArrayList;

    invoke-interface {v2, v4}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->prepareResizeAnim(Ljava/util/ArrayList;)V

    .line 5133
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MultiWindowManagerService;->mSplitResizeAnimTargets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 5135
    :cond_2e
    if-eqz v18, :cond_30

    .line 5136
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    invoke-interface {v2}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->deferReportDrawn()V

    .line 5137
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v22

    iget v4, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v5, v6}, Lcom/android/server/am/ActivityManagerService;->resizeTask(ILandroid/graphics/Rect;I)V

    .line 5138
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    invoke-interface {v2}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->continueReportDrawn()V

    goto/16 :goto_9

    .line 5129
    :cond_2f
    const/16 v29, 0x1

    goto :goto_b

    .line 5140
    :cond_30
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v22

    iget v4, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v5, v6}, Lcom/android/server/am/ActivityManagerService;->resizeTask(ILandroid/graphics/Rect;I)V

    goto/16 :goto_9

    .line 5172
    .end local v29    # "loadAnim":Z
    .restart local v23    # "extra":Ljava/lang/String;
    .restart local v30    # "msg":Landroid/os/Message;
    :cond_31
    if-eqz v14, :cond_32

    .line 5173
    const-string v23, "OrientationChanged"

    .local v23, "extra":Ljava/lang/String;
    goto/16 :goto_a

    .line 5174
    .local v23, "extra":Ljava/lang/String;
    :cond_32
    if-eqz v12, :cond_28

    .line 5175
    const-string v23, "DividerFinishButton"

    .local v23, "extra":Ljava/lang/String;
    goto/16 :goto_a
.end method

.method private showMultiWindowDisabledToastIfNeeded()V
    .locals 2

    .prologue
    .line 3371
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mLastReason:Ljava/lang/String;

    const-string v1, "mobile_keyboard"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3372
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3373
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3374
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    new-instance v1, Lcom/android/server/am/MultiWindowManagerService$-void_showMultiWindowDisabledToastIfNeeded__LambdaImpl0;

    invoke-direct {v1, p0}, Lcom/android/server/am/MultiWindowManagerService$-void_showMultiWindowDisabledToastIfNeeded__LambdaImpl0;-><init>(Lcom/android/server/am/MultiWindowManagerService;)V

    invoke-virtual {v0, v1}, Lcom/android/server/am/MultiWindowManagerService$H;->post(Ljava/lang/Runnable;)Z

    .line 3370
    :cond_1
    return-void
.end method

.method private slideAllFreeformTasksLocked()V
    .locals 10

    .prologue
    .line 2487
    sget-boolean v6, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v6, :cond_4

    .line 2488
    sget-boolean v6, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    if-eqz v6, :cond_0

    const-string v6, "MultiWindowManagerService"

    const-string v7, "slideAllFreeformTasksLocked is calling"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2490
    :cond_0
    const/4 v0, 0x0

    .line 2491
    .local v0, "freeformStack":Lcom/android/server/am/ActivityStack;
    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStackSupervisor;->getStacks()Ljava/util/ArrayList;

    move-result-object v3

    .line 2492
    .local v3, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "stack$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStack;

    .line 2493
    .local v1, "stack":Lcom/android/server/am/ActivityStack;
    iget v6, v1, Lcom/android/server/am/ActivityStack;->mStackId:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    .line 2494
    move-object v0, v1

    .line 2499
    .end local v0    # "freeformStack":Lcom/android/server/am/ActivityStack;
    .end local v1    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_2
    if-eqz v0, :cond_4

    .line 2500
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "task$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    .line 2501
    .local v4, "task":Lcom/android/server/am/TaskRecord;
    iget-boolean v6, v4, Lcom/android/server/am/TaskRecord;->mSlideMode:Z

    if-nez v6, :cond_3

    .line 2502
    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    iget v7, v4, Lcom/android/server/am/TaskRecord;->taskId:I

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-interface {v6, v7, v8, v9}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->slideFreeformTask(IZI)Z

    goto :goto_0

    .line 2486
    .end local v2    # "stack$iterator":Ljava/util/Iterator;
    .end local v3    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    .end local v4    # "task":Lcom/android/server/am/TaskRecord;
    .end local v5    # "task$iterator":Ljava/util/Iterator;
    :cond_4
    return-void
.end method

.method private startPairActivitiesScreenFreezeAnimationLocked()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 3546
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 3547
    .local v0, "dockStack":Lcom/android/server/am/ActivityStack;
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v5, v8}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 3548
    .local v1, "fullStack":Lcom/android/server/am/ActivityStack;
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mPreTopActivities:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 3549
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mPostTopActivities:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 3550
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3551
    .local v4, "tokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 3552
    invoke-virtual {v0, v7}, Lcom/android/server/am/ActivityStack;->getStackVisibilityLocked(Lcom/android/server/am/ActivityRecord;)I

    move-result v5

    if-ne v5, v8, :cond_0

    .line 3553
    invoke-virtual {v1, v7}, Lcom/android/server/am/ActivityStack;->getStackVisibilityLocked(Lcom/android/server/am/ActivityRecord;)I

    move-result v5

    if-ne v5, v8, :cond_0

    .line 3554
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mPreTopActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3555
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mPreTopActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3557
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mPreTopActivities:Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "r$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 3558
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v5, v2, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3561
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v3    # "r$iterator":Ljava/util/Iterator;
    :cond_0
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mFocusedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v5, :cond_1

    .line 3562
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mFocusedActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v5, v5, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3565
    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 3566
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    const/4 v6, 0x0

    invoke-interface {v5, v4, v6}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->prepareResizeAnim(Ljava/util/ArrayList;Z)V

    .line 3567
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 3545
    :cond_2
    return-void
.end method

.method private swapTasksForSnapWindowLocked()V
    .locals 19

    .prologue
    .line 5188
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 5189
    const/4 v3, 0x1

    .line 5188
    invoke-virtual {v1, v3}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v10

    .line 5190
    .local v10, "fullscreenStack":Lcom/android/server/am/ActivityStack;
    if-eqz v10, :cond_1

    invoke-virtual {v10}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v16

    .line 5192
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v9

    .line 5193
    .local v9, "dockedStack":Lcom/android/server/am/ActivityStack;
    if-eqz v9, :cond_2

    invoke-virtual {v9}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v17

    .line 5195
    :goto_1
    if-eqz v16, :cond_0

    if-nez v17, :cond_3

    .line 5196
    :cond_0
    const-string v1, "MultiWindowManagerService"

    .line 5197
    const-string v3, "Unable to swap tasks, either docked or fullscreen stack is empty."

    .line 5196
    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5198
    return-void

    .line 5191
    .end local v9    # "dockedStack":Lcom/android/server/am/ActivityStack;
    :cond_1
    const/16 v16, 0x0

    .local v16, "snapTargetTask":Lcom/android/server/am/TaskRecord;
    goto :goto_0

    .line 5194
    .end local v16    # "snapTargetTask":Lcom/android/server/am/TaskRecord;
    .restart local v9    # "dockedStack":Lcom/android/server/am/ActivityStack;
    :cond_2
    const/16 v17, 0x0

    .local v17, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    goto :goto_1

    .line 5195
    .end local v17    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    :cond_3
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 5200
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/MultiWindowManagerService;->mSplitResizeAnimTargets:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/server/am/MultiWindowManagerService;->updateSplitResizeAnimTargetsLocked(Ljava/util/ArrayList;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 5201
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MultiWindowManagerService;->mSplitResizeAnimTargets:Ljava/util/ArrayList;

    invoke-interface {v1, v3}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->prepareResizeAnim(Ljava/util/ArrayList;)V

    .line 5202
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    const/4 v3, -0x1

    invoke-interface {v1, v3}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->checkDrawnWindowsFitToScreenForSwapTasks(I)V

    .line 5203
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/MultiWindowManagerService;->mSplitResizeAnimTargets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 5206
    :cond_4
    move-object/from16 v0, v16

    iget v1, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    const/4 v3, 0x3

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v3, v4}, Lcom/android/server/am/MultiWindowManagerService;->moveTaskToStackWithSizeUnchangedLocked(IIZ)V

    .line 5207
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 5208
    .local v15, "size":I
    const/4 v11, 0x1

    .line 5209
    .local v11, "fullscreenToTop":Z
    add-int/lit8 v12, v15, -0x1

    .local v12, "i":I
    :goto_2
    if-ltz v12, :cond_7

    .line 5210
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/am/TaskRecord;

    .line 5211
    .local v18, "tr":Lcom/android/server/am/TaskRecord;
    move-object/from16 v0, v18

    iget v1, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move-object/from16 v0, v16

    iget v3, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v1, v3, :cond_6

    .line 5209
    :cond_5
    :goto_3
    add-int/lit8 v12, v12, -0x1

    goto :goto_2

    .line 5214
    :cond_6
    move-object/from16 v0, v18

    iget v1, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v3, v11}, Lcom/android/server/am/MultiWindowManagerService;->moveTaskToStackWithSizeUnchangedLocked(IIZ)V

    .line 5215
    if-eqz v11, :cond_5

    .line 5216
    const/4 v1, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    .line 5217
    const/4 v11, 0x0

    goto :goto_3

    .line 5221
    .end local v18    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_7
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 5222
    .local v2, "adjustDockStackBounds":Landroid/graphics/Rect;
    new-instance v7, Landroid/graphics/Rect;

    iget-object v1, v9, Lcom/android/server/am/ActivityStack;->mBounds:Landroid/graphics/Rect;

    invoke-direct {v7, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 5223
    .local v7, "currentDockStackBounds":Landroid/graphics/Rect;
    new-instance v8, Landroid/graphics/Rect;

    iget-object v1, v10, Lcom/android/server/am/ActivityStack;->mBounds:Landroid/graphics/Rect;

    invoke-direct {v8, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 5225
    .local v8, "currentFullscreenStackBounds":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 5226
    const v3, 0x112006b

    .line 5225
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v14

    .line 5227
    .local v14, "showNavigationBar":Z
    if-eqz v14, :cond_8

    .line 5228
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 5229
    const v3, 0x105001a

    .line 5228
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    .line 5230
    .local v13, "navigationBarHeight":I
    iget v1, v8, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v13

    iput v1, v8, Landroid/graphics/Rect;->bottom:I

    .line 5233
    .end local v13    # "navigationBarHeight":I
    :cond_8
    iget v1, v7, Landroid/graphics/Rect;->left:I

    .line 5234
    iget v3, v7, Landroid/graphics/Rect;->top:I

    iget v4, v7, Landroid/graphics/Rect;->right:I

    .line 5235
    iget v5, v7, Landroid/graphics/Rect;->top:I

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v6

    add-int/2addr v5, v6

    .line 5233
    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 5236
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActivityManagerService;->resizeDockedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 5186
    return-void
.end method

.method private unbindMinimizeContainerServiceIfNeeded(Ljava/lang/String;)V
    .locals 6
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 2631
    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_SUPPORT:Z

    if-eqz v0, :cond_0

    .line 2632
    iget-boolean v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mIsMinimizeContainerServiceRunning:Z

    if-eqz v0, :cond_0

    .line 2633
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mIsMinimizeContainerServiceRunning:Z

    .line 2634
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 2636
    sget-boolean v0, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2637
    const-string v0, "MultiWindowManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unbind MinimizeContainerService, reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2638
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mMinimizeContainerSerivceHistory:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UnbindService["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2639
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mSimpleDateFormat:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 2638
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2630
    :cond_0
    return-void
.end method

.method private unslideAllFreeformTasksLocked()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 2510
    sget-boolean v7, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v7, :cond_5

    .line 2511
    sget-boolean v7, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    if-eqz v7, :cond_0

    const-string v7, "MultiWindowManagerService"

    const-string v8, "unslideAllFreeformTasksLocked is calling"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2513
    :cond_0
    const/4 v0, 0x0

    .line 2515
    .local v0, "freeformStack":Lcom/android/server/am/ActivityStack;
    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityStackSupervisor;->getStacks()Ljava/util/ArrayList;

    move-result-object v3

    .line 2516
    .local v3, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "stack$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStack;

    .line 2517
    .local v1, "stack":Lcom/android/server/am/ActivityStack;
    iget v7, v1, Lcom/android/server/am/ActivityStack;->mStackId:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    .line 2518
    move-object v0, v1

    .line 2523
    .end local v0    # "freeformStack":Lcom/android/server/am/ActivityStack;
    .end local v1    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_2
    if-eqz v0, :cond_5

    .line 2524
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v4

    .line 2525
    .local v4, "targetTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "task$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/TaskRecord;

    .line 2526
    .local v5, "task":Lcom/android/server/am/TaskRecord;
    iget-boolean v7, v5, Lcom/android/server/am/TaskRecord;->mSlideMode:Z

    if-eqz v7, :cond_3

    .line 2527
    sget-boolean v7, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    if-eqz v7, :cond_4

    const-string v7, "MultiWindowManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "unslide, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2528
    :cond_4
    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    iget v8, v5, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-interface {v7, v8, v10, v10}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->slideFreeformTask(IZI)Z

    goto :goto_0

    .line 2509
    .end local v2    # "stack$iterator":Ljava/util/Iterator;
    .end local v3    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    .end local v4    # "targetTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    .end local v5    # "task":Lcom/android/server/am/TaskRecord;
    .end local v6    # "task$iterator":Ljava/util/Iterator;
    :cond_5
    return-void
.end method

.method private updateFreeformMaxCount()V
    .locals 2

    .prologue
    .line 2479
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2480
    .local v0, "res":Landroid/content/res/Resources;
    iget-boolean v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mIsDesktopModeEnabled:Z

    if-eqz v1, :cond_0

    .line 2481
    sget v1, Lcom/samsung/android/framework/res/R$integer;->multiwindow_desktop_freeform_max_count:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 2480
    :goto_0
    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mMaxFreeformDefaultCnt:I

    .line 2477
    return-void

    .line 2482
    :cond_0
    sget v1, Lcom/samsung/android/framework/res/R$integer;->multiwindow_freeform_max_count:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    goto :goto_0
.end method

.method private updateMultiWindowDynamicEnabledLocked(Ljava/lang/String;ZI)V
    .locals 9
    .param p1, "requester"    # Ljava/lang/String;
    .param p2, "enable"    # Z
    .param p3, "userId"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 3327
    if-eqz p2, :cond_5

    .line 3329
    if-ne p3, v2, :cond_2

    .line 3330
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->getRunningUserIds()[I

    move-result-object v2

    array-length v4, v2

    :goto_0
    if-ge v3, v4, :cond_4

    aget v0, v2, v3

    .line 3331
    .local v0, "runningUserId":I
    invoke-direct {p0, v0}, Lcom/android/server/am/MultiWindowManagerService;->isMultiWindowOffRequested(I)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-direct {p0, v0}, Lcom/android/server/am/MultiWindowManagerService;->isMultiWindowForceOnRequested(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3332
    :cond_0
    invoke-direct {p0, v8, v0}, Lcom/android/server/am/MultiWindowManagerService;->scheduleSetMultiWindowDynamicEnabled(ZI)V

    .line 3333
    const-string v5, "MultiWindowManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "turn on MW[#"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "], Requester : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3330
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3337
    .end local v0    # "runningUserId":I
    :cond_2
    invoke-direct {p0, p3}, Lcom/android/server/am/MultiWindowManagerService;->isMultiWindowOffRequested(I)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0, p3}, Lcom/android/server/am/MultiWindowManagerService;->isMultiWindowForceOnRequested(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3338
    :cond_3
    invoke-direct {p0, v8, p3}, Lcom/android/server/am/MultiWindowManagerService;->scheduleSetMultiWindowDynamicEnabled(ZI)V

    .line 3339
    const-string v2, "MultiWindowManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "turn on MW[#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "], Requester : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3326
    :cond_4
    :goto_1
    return-void

    .line 3344
    :cond_5
    if-ne p3, v2, :cond_9

    .line 3345
    const/4 v1, 0x0

    .line 3346
    .local v1, "showToast":Z
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->getRunningUserIds()[I

    move-result-object v4

    array-length v5, v4

    move v2, v3

    :goto_2
    if-ge v2, v5, :cond_8

    aget v0, v4, v2

    .line 3347
    .restart local v0    # "runningUserId":I
    invoke-direct {p0, v0}, Lcom/android/server/am/MultiWindowManagerService;->isMultiWindowForceOnRequested(I)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 3348
    const-string v6, "MultiWindowManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "force on now, turn off failed, MW[#"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "], Requester : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3346
    :cond_6
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 3349
    :cond_7
    invoke-direct {p0, v0}, Lcom/android/server/am/MultiWindowManagerService;->isMultiWindowOffRequested(I)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 3350
    invoke-direct {p0, v3, v0}, Lcom/android/server/am/MultiWindowManagerService;->scheduleSetMultiWindowDynamicEnabled(ZI)V

    .line 3351
    const/4 v1, 0x1

    .line 3352
    const-string v6, "MultiWindowManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "turn off MW[#"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "], Requester : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 3355
    .end local v0    # "runningUserId":I
    :cond_8
    if-eqz v1, :cond_4

    .line 3356
    invoke-direct {p0}, Lcom/android/server/am/MultiWindowManagerService;->showMultiWindowDisabledToastIfNeeded()V

    goto :goto_1

    .line 3359
    .end local v1    # "showToast":Z
    :cond_9
    invoke-direct {p0, p3}, Lcom/android/server/am/MultiWindowManagerService;->isMultiWindowForceOnRequested(I)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 3360
    const-string v2, "MultiWindowManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "force on now, turn off failed, MW[#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "], Requester : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3361
    :cond_a
    invoke-direct {p0, p3}, Lcom/android/server/am/MultiWindowManagerService;->isMultiWindowOffRequested(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3362
    invoke-direct {p0, v3, p3}, Lcom/android/server/am/MultiWindowManagerService;->scheduleSetMultiWindowDynamicEnabled(ZI)V

    .line 3363
    invoke-direct {p0}, Lcom/android/server/am/MultiWindowManagerService;->showMultiWindowDisabledToastIfNeeded()V

    .line 3364
    const-string v2, "MultiWindowManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "turn off MW[#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "], Requester : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private updateSplitResizeAnimTargetsLocked(Ljava/util/ArrayList;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/IBinder;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 4714
    .local p1, "targets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/android/server/am/MultiWindowManagerService;->updateSplitResizeAnimTargetsLocked(Ljava/util/ArrayList;I)Z

    move-result v0

    return v0
.end method

.method private updateSplitResizeAnimTargetsLocked(Ljava/util/ArrayList;I)Z
    .locals 11
    .param p2, "flag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/IBinder;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .local p1, "targets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    const/4 v9, 0x0

    .line 4718
    if-nez p1, :cond_0

    .line 4719
    return v9

    .line 4722
    :cond_0
    const/4 v4, 0x0

    .local v4, "stackId":I
    :goto_0
    const/4 v10, 0x3

    if-gt v4, v10, :cond_8

    .line 4723
    invoke-direct {p0, p2, v4}, Lcom/android/server/am/MultiWindowManagerService;->isAnimTargetStack(II)Z

    move-result v10

    if-nez v10, :cond_2

    .line 4722
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 4726
    :cond_2
    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v10, v4}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    .line 4727
    .local v3, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v3, :cond_1

    iget-boolean v10, v3, Lcom/android/server/am/ActivityStack;->mUpdateBoundsDeferred:Z

    if-nez v10, :cond_1

    .line 4728
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v8

    .line 4729
    .local v8, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mTasksBoundsUnchangedDuringResize:Ljava/util/ArrayList;

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 4730
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v6, v10, -0x1

    .local v6, "taskNdx":I
    :goto_1
    if-ltz v6, :cond_1

    .line 4731
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/TaskRecord;

    .line 4732
    .local v5, "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v5}, Lcom/android/server/am/TaskRecord;->isResizeable()Z

    move-result v10

    if-nez v10, :cond_4

    .line 4730
    :cond_3
    :goto_2
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 4735
    :cond_4
    iget-object v0, v5, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 4736
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    const/4 v7, 0x0

    .line 4737
    .local v7, "taskVisible":Z
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v1, v10, -0x1

    .local v1, "i":I
    :goto_3
    if-ltz v1, :cond_3

    .line 4738
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 4739
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v10

    if-nez v10, :cond_5

    iget-boolean v10, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v10, :cond_6

    .line 4737
    :cond_5
    :goto_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 4742
    :cond_6
    iget-boolean v10, v2, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v10, :cond_7

    .line 4743
    const/4 v7, 0x1

    .line 4744
    iget-object v10, v2, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {p1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 4745
    :cond_7
    if-eqz v7, :cond_5

    goto :goto_2

    .line 4752
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "i":I
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v3    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v5    # "task":Lcom/android/server/am/TaskRecord;
    .end local v6    # "taskNdx":I
    .end local v7    # "taskVisible":Z
    .end local v8    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    :cond_8
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_9

    :goto_5
    return v9

    :cond_9
    const/4 v9, 0x1

    goto :goto_5
.end method


# virtual methods
.method synthetic -com_android_server_am_MultiWindowManagerService_lambda$1()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 3375
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 3376
    sget v3, Lcom/samsung/android/framework/res/R$string;->multi_window_text_in_multi_window_disabled_toast:I

    .line 3375
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3377
    .local v0, "str":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 3378
    sget v4, Lcom/samsung/android/framework/res/R$string;->multi_window_disabled_toast_when_keyboard_cover_attached:I

    .line 3377
    new-array v5, v7, [Ljava/lang/Object;

    .line 3379
    aput-object v0, v5, v6

    .line 3377
    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 3380
    .local v1, "toast":Landroid/widget/Toast;
    const/16 v2, 0x11

    invoke-virtual {v1, v2, v6, v6}, Landroid/widget/Toast;->setGravity(III)V

    .line 3381
    invoke-virtual {v1}, Landroid/widget/Toast;->setShowForAllUsers()V

    .line 3382
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 0
    return-void
.end method

.method public addGrantPermissionComponent(Ljava/lang/String;)V
    .locals 1
    .param p1, "component"    # Ljava/lang/String;

    .prologue
    .line 2224
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    invoke-interface {v0, p1}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->addGrantPermissionComponent(Ljava/lang/String;)V

    .line 2223
    return-void
.end method

.method public addTaskBoundsUnchangedDuringResizeIfNeededLocked(Lcom/android/server/am/TaskRecord;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "prevTaskBounds"    # Landroid/graphics/Rect;
    .param p3, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 2101
    invoke-direct {p0, p2, p3}, Lcom/android/server/am/MultiWindowManagerService;->isSplitBoundsChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2102
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mTasksBoundsUnchangedDuringResize:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2099
    :cond_0
    return-void
.end method

.method public adjustForMaximumTaskDimensions(Lcom/android/server/am/TaskRecord;Landroid/graphics/Rect;)V
    .locals 13
    .param p1, "tr"    # Lcom/android/server/am/TaskRecord;
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .prologue
    const/4 v10, 0x1

    const/4 v12, -0x1

    .line 1652
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->isResizeable()Z

    move-result v9

    if-eqz v9, :cond_0

    if-nez p2, :cond_1

    .line 1653
    :cond_0
    return-void

    .line 1652
    :cond_1
    iget-object v9, p1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v9, :cond_0

    iget-object v9, p1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget v9, v9, Lcom/android/server/am/ActivityStack;->mStackId:I

    const/4 v11, 0x2

    if-ne v9, v11, :cond_0

    .line 1656
    iget v9, p1, Lcom/android/server/am/TaskRecord;->mMaxWidth:I

    if-ne v9, v12, :cond_2

    iget v9, p1, Lcom/android/server/am/TaskRecord;->mMaxHeight:I

    if-ne v9, v12, :cond_2

    .line 1659
    return-void

    .line 1662
    :cond_2
    iget v3, p1, Lcom/android/server/am/TaskRecord;->mMaxWidth:I

    .line 1663
    .local v3, "maxWidth":I
    iget v2, p1, Lcom/android/server/am/TaskRecord;->mMaxHeight:I

    .line 1664
    .local v2, "maxHeight":I
    iget v5, p1, Lcom/android/server/am/TaskRecord;->mMinWidth:I

    .line 1665
    .local v5, "minWidth":I
    iget v4, p1, Lcom/android/server/am/TaskRecord;->mMinHeight:I

    .line 1666
    .local v4, "minHeight":I
    if-ne v5, v12, :cond_3

    .line 1667
    iget-object v9, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v5, v9, Lcom/android/server/am/ActivityStackSupervisor;->mDefaultMinSizeOfResizeableTask:I

    .line 1669
    :cond_3
    if-ne v4, v12, :cond_4

    .line 1670
    iget-object v9, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v4, v9, Lcom/android/server/am/ActivityStackSupervisor;->mDefaultMinSizeOfResizeableTask:I

    .line 1674
    :cond_4
    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8}, Landroid/graphics/Point;-><init>()V

    .line 1675
    .local v8, "tempBaseSize":Landroid/graphics/Point;
    iget-object v9, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v11, p1, Lcom/android/server/am/TaskRecord;->displayId:I

    invoke-virtual {v9, v11, v8}, Lcom/android/server/wm/WindowManagerService;->getBaseDisplaySize(ILandroid/graphics/Point;)V

    .line 1676
    iget-object v9, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v9}, Lcom/android/server/wm/WindowManagerService;->getRotation()I

    move-result v7

    .line 1677
    .local v7, "rotation":I
    if-eq v7, v10, :cond_5

    const/4 v9, 0x3

    if-ne v7, v9, :cond_a

    :cond_5
    const/4 v6, 0x1

    .line 1678
    .local v6, "rotated":Z
    :goto_0
    iget-object v11, p0, Lcom/android/server/am/MultiWindowManagerService;->mDisplaySize:Landroid/graphics/Point;

    if-eqz v6, :cond_b

    iget v9, v8, Landroid/graphics/Point;->y:I

    :goto_1
    iput v9, v11, Landroid/graphics/Point;->x:I

    .line 1679
    iget-object v11, p0, Lcom/android/server/am/MultiWindowManagerService;->mDisplaySize:Landroid/graphics/Point;

    if-eqz v6, :cond_c

    iget v9, v8, Landroid/graphics/Point;->x:I

    :goto_2
    iput v9, v11, Landroid/graphics/Point;->y:I

    .line 1681
    if-eq v3, v12, :cond_6

    iget-object v9, p0, Lcom/android/server/am/MultiWindowManagerService;->mDisplaySize:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    if-le v3, v9, :cond_7

    .line 1682
    :cond_6
    iget-object v9, p0, Lcom/android/server/am/MultiWindowManagerService;->mDisplaySize:Landroid/graphics/Point;

    iget v3, v9, Landroid/graphics/Point;->x:I

    .line 1684
    :cond_7
    if-eq v2, v12, :cond_8

    iget-object v9, p0, Lcom/android/server/am/MultiWindowManagerService;->mDisplaySize:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->y:I

    if-le v2, v9, :cond_9

    .line 1685
    :cond_8
    iget-object v9, p0, Lcom/android/server/am/MultiWindowManagerService;->mDisplaySize:Landroid/graphics/Point;

    iget v2, v9, Landroid/graphics/Point;->y:I

    .line 1688
    :cond_9
    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1689
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1691
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v9

    if-ge v3, v9, :cond_d

    const/4 v1, 0x1

    .line 1692
    .local v1, "adjustWidth":Z
    :goto_3
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v9

    if-ge v2, v9, :cond_e

    const/4 v0, 0x1

    .line 1693
    .local v0, "adjustHeight":Z
    :goto_4
    if-nez v1, :cond_f

    move v9, v0

    :goto_5
    if-nez v9, :cond_10

    .line 1694
    return-void

    .line 1677
    .end local v0    # "adjustHeight":Z
    .end local v1    # "adjustWidth":Z
    .end local v6    # "rotated":Z
    :cond_a
    const/4 v6, 0x0

    .restart local v6    # "rotated":Z
    goto :goto_0

    .line 1678
    :cond_b
    iget v9, v8, Landroid/graphics/Point;->x:I

    goto :goto_1

    .line 1679
    :cond_c
    iget v9, v8, Landroid/graphics/Point;->y:I

    goto :goto_2

    .line 1691
    :cond_d
    const/4 v1, 0x0

    .restart local v1    # "adjustWidth":Z
    goto :goto_3

    .line 1692
    :cond_e
    const/4 v0, 0x0

    .restart local v0    # "adjustHeight":Z
    goto :goto_4

    :cond_f
    move v9, v10

    .line 1693
    goto :goto_5

    .line 1697
    :cond_10
    if-eqz v1, :cond_11

    .line 1698
    iget-object v9, p1, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    if-eqz v9, :cond_13

    iget v9, p2, Landroid/graphics/Rect;->right:I

    iget-object v10, p1, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    if-ne v9, v10, :cond_13

    .line 1699
    iget v9, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v9, v3

    iput v9, p2, Landroid/graphics/Rect;->left:I

    .line 1704
    :cond_11
    :goto_6
    if-eqz v0, :cond_12

    .line 1705
    iget-object v9, p1, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    if-eqz v9, :cond_14

    iget v9, p2, Landroid/graphics/Rect;->bottom:I

    iget-object v10, p1, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    if-ne v9, v10, :cond_14

    .line 1706
    iget v9, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v2

    iput v9, p2, Landroid/graphics/Rect;->top:I

    .line 1651
    :cond_12
    :goto_7
    return-void

    .line 1701
    :cond_13
    iget v9, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v9, v3

    iput v9, p2, Landroid/graphics/Rect;->right:I

    goto :goto_6

    .line 1708
    :cond_14
    iget v9, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v9, v2

    iput v9, p2, Landroid/graphics/Rect;->bottom:I

    goto :goto_7
.end method

.method public adjustStacksOrderLocked(IILcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityStack;)I
    .locals 10
    .param p1, "addIndex"    # I
    .param p2, "freeformIndex"    # I
    .param p3, "targetTask"    # Lcom/android/server/am/TaskRecord;
    .param p4, "targetStack"    # Lcom/android/server/am/ActivityStack;

    .prologue
    const/4 v4, 0x0

    .line 1593
    const/4 v0, 0x1

    .line 1594
    .local v0, "freeformStackVisible":Z
    sget-boolean v8, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_ADJUST_STACK_ORDER:Z

    if-eqz v8, :cond_0

    .line 1595
    invoke-virtual {p0}, Lcom/android/server/am/MultiWindowManagerService;->isFreeformStackVisibleLocked()Z

    move-result v0

    .line 1598
    .end local v0    # "freeformStackVisible":Z
    :cond_0
    if-eqz v0, :cond_8

    .line 1599
    if-nez p3, :cond_1

    .line 1600
    invoke-virtual {p4}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object p3

    .line 1603
    :cond_1
    iget-object v8, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v8, v8, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    iget-object v8, v8, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    add-int/lit8 v9, p1, -0x1

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityStack;

    .line 1604
    .local v5, "topStack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v5}, Lcom/android/server/am/ActivityStack;->getNextFocusableStackLocked()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 1606
    .local v1, "nextStack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v5}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v6

    .line 1607
    .local v6, "topTask":Lcom/android/server/am/TaskRecord;
    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v2

    .line 1609
    :goto_0
    const/4 v3, 0x0

    .line 1610
    .local v3, "nonFullScreen":Z
    iget v8, p4, Lcom/android/server/am/ActivityStack;->mStackId:I

    const/4 v9, 0x1

    if-eq v8, v9, :cond_2

    iget-boolean v8, p0, Lcom/android/server/am/MultiWindowManagerService;->mSwappingDockedAndFullscreen:Z

    if-eqz v8, :cond_b

    .line 1613
    :cond_2
    if-eqz p3, :cond_3

    invoke-virtual {p3}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    .line 1614
    .local v4, "topActivity":Lcom/android/server/am/ActivityRecord;
    :cond_3
    if-eqz v4, :cond_4

    invoke-virtual {p3}, Lcom/android/server/am/TaskRecord;->hasVisibleFullscreenActivityLocked()Z

    move-result v8

    if-eqz v8, :cond_c

    .line 1620
    .end local v4    # "topActivity":Lcom/android/server/am/ActivityRecord;
    :cond_4
    :goto_1
    if-eqz p3, :cond_5

    invoke-virtual {p3}, Lcom/android/server/am/TaskRecord;->isRecentsTask()Z

    move-result v8

    if-nez v8, :cond_7

    .line 1621
    :cond_5
    if-eqz v6, :cond_6

    invoke-virtual {v6}, Lcom/android/server/am/TaskRecord;->isRecentsTask()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1620
    if-nez v3, :cond_7

    .line 1622
    :cond_6
    if-eqz v2, :cond_e

    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->isRecentsTask()Z

    move-result v8

    if-eqz v8, :cond_e

    .line 1620
    if-eqz v3, :cond_e

    .line 1623
    :cond_7
    const/4 v0, 0x0

    .line 1624
    .restart local v0    # "freeformStackVisible":Z
    iget-object v8, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    invoke-interface {v8, v0}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->setFreeformStackTemporaryVisibilityLocked(Z)V

    .line 1631
    :goto_2
    if-eqz v0, :cond_8

    .line 1632
    move p1, p2

    .line 1636
    .end local v0    # "freeformStackVisible":Z
    .end local v1    # "nextStack":Lcom/android/server/am/ActivityStack;
    .end local v3    # "nonFullScreen":Z
    .end local v5    # "topStack":Lcom/android/server/am/ActivityStack;
    .end local v6    # "topTask":Lcom/android/server/am/TaskRecord;
    :cond_8
    sget-boolean v8, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_ADJUST_STACK_ORDER:Z

    if-eqz v8, :cond_9

    .line 1637
    iget-boolean v8, p0, Lcom/android/server/am/MultiWindowManagerService;->mRequestFreefomInvisible:Z

    if-eqz v8, :cond_9

    .line 1638
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/am/MultiWindowManagerService;->mRequestFreefomInvisible:Z

    .line 1639
    invoke-direct {p0, p3}, Lcom/android/server/am/MultiWindowManagerService;->prepareAppTransitionIfNeeded(Lcom/android/server/am/TaskRecord;)Z

    move-result v7

    .line 1640
    .local v7, "updateActivitiesVisibility":Z
    if-eqz v7, :cond_9

    .line 1641
    const/4 p1, -0x1

    .line 1646
    .end local v7    # "updateActivitiesVisibility":Z
    :cond_9
    return p1

    .line 1607
    .restart local v1    # "nextStack":Lcom/android/server/am/ActivityStack;
    .restart local v5    # "topStack":Lcom/android/server/am/ActivityStack;
    .restart local v6    # "topTask":Lcom/android/server/am/TaskRecord;
    :cond_a
    const/4 v2, 0x0

    .local v2, "nextTask":Lcom/android/server/am/TaskRecord;
    goto :goto_0

    .line 1611
    .end local v2    # "nextTask":Lcom/android/server/am/TaskRecord;
    .restart local v3    # "nonFullScreen":Z
    :cond_b
    const/4 v3, 0x1

    .line 1610
    goto :goto_1

    .line 1615
    .restart local v4    # "topActivity":Lcom/android/server/am/ActivityRecord;
    :cond_c
    if-eqz v2, :cond_d

    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->isRecentsTask()Z

    move-result v8

    if-nez v8, :cond_4

    .line 1616
    :cond_d
    const/4 v3, 0x1

    goto :goto_1

    .line 1626
    .end local v4    # "topActivity":Lcom/android/server/am/ActivityRecord;
    :cond_e
    const/4 v0, 0x1

    .line 1627
    .restart local v0    # "freeformStackVisible":Z
    iget-object v8, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    invoke-interface {v8, v0}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->setFreeformStackTemporaryVisibilityLocked(Z)V

    .line 1628
    invoke-direct {p0, p2, v5}, Lcom/android/server/am/MultiWindowManagerService;->moveFreeformStackToTopLocked(ILcom/android/server/am/ActivityStack;)I

    move-result p2

    goto :goto_2
.end method

.method public adjustedForImeStateChanged(Z)V
    .locals 1
    .param p1, "isAdjustedForIme"    # Z

    .prologue
    .line 4667
    iput-boolean p1, p0, Lcom/android/server/am/MultiWindowManagerService;->mIsAdjustedForIme:Z

    .line 4669
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/am/MultiWindowManagerService;->notifyDelayedAutoResizeIfNeeded(I)V

    .line 4666
    return-void
.end method

.method public alignTasksToStackBounds()V
    .locals 11

    .prologue
    .line 4649
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "android.permission.MANAGE_ACTIVITY_STACKS"

    .line 4650
    const-string v2, "alignTasksToStackBounds()"

    .line 4649
    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4651
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 4653
    .local v8, "ident":J
    :try_start_0
    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4654
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v7

    .line 4655
    .local v7, "dockStack":Lcom/android/server/am/ActivityStack;
    if-eqz v7, :cond_0

    iget-object v0, v7, Lcom/android/server/am/ActivityStack;->mBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    .line 4656
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v7, Lcom/android/server/am/ActivityStack;->mBounds:Landroid/graphics/Rect;

    const/4 v2, 0x0

    .line 4657
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 4656
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ActivityStackSupervisor;->resizeDockedStackLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :try_start_2
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4661
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4648
    return-void

    .line 4653
    .end local v7    # "dockStack":Lcom/android/server/am/ActivityStack;
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v10

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 4660
    :catchall_1
    move-exception v0

    .line 4661
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4660
    throw v0
.end method

.method public applyDexCompatConfigurationLocked(Lcom/android/server/am/ActivityRecord;Landroid/content/res/Configuration;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V
    .locals 12
    .param p1, "targetActivity"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "outConfig"    # Landroid/content/res/Configuration;
    .param p3, "processAppInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p4, "reason"    # Ljava/lang/String;

    .prologue
    .line 917
    iget-boolean v9, p0, Lcom/android/server/am/MultiWindowManagerService;->mIsDesktopModeEnabled:Z

    if-eqz v9, :cond_2

    if-eqz p3, :cond_2

    iget-object v9, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v9, :cond_2

    .line 918
    const/4 v3, 0x1

    .line 919
    .local v3, "orientation":I
    const/4 v1, 0x0

    .line 921
    .local v1, "hasDexCompatTaskConfig":Z
    if-eqz p1, :cond_3

    move-object v0, p1

    .line 924
    .local v0, "candidate":Lcom/android/server/am/ActivityRecord;
    :goto_0
    if-eqz v0, :cond_1

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v9, :cond_1

    .line 925
    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v9, v9, Lcom/android/server/am/TaskRecord;->mOverrideConfig:Landroid/content/res/Configuration;

    iget v9, v9, Landroid/content/res/Configuration;->dexCompatEnabled:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_0

    .line 926
    const/4 v1, 0x1

    .line 928
    :cond_0
    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v9, v9, Lcom/android/server/am/TaskRecord;->mOverrideConfig:Landroid/content/res/Configuration;

    iget v9, v9, Landroid/content/res/Configuration;->orientation:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_1

    .line 929
    const/4 v3, 0x2

    .line 933
    :cond_1
    if-eqz v1, :cond_4

    .line 934
    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v9, v9, Lcom/android/server/am/TaskRecord;->mOverrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {p2, v9}, Landroid/content/res/Configuration;->updateFromDexCompatTaskConfig(Landroid/content/res/Configuration;)I

    .line 950
    :goto_1
    const/4 v9, 0x2

    iput v9, p2, Landroid/content/res/Configuration;->dexCompatEnabled:I

    .line 916
    .end local v0    # "candidate":Lcom/android/server/am/ActivityRecord;
    .end local v1    # "hasDexCompatTaskConfig":Z
    .end local v3    # "orientation":I
    :cond_2
    return-void

    .line 922
    .restart local v1    # "hasDexCompatTaskConfig":Z
    .restart local v3    # "orientation":I
    :cond_3
    iget-object v9, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v10, 0x2

    const/4 v11, 0x1

    invoke-direct {p0, v10, v9, v11}, Lcom/android/server/am/MultiWindowManagerService;->getTopActivityByPackageLocked(ILjava/lang/String;Z)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    goto :goto_0

    .line 936
    .restart local v0    # "candidate":Lcom/android/server/am/ActivityRecord;
    :cond_4
    new-instance v8, Landroid/graphics/Point;

    const/4 v9, 0x1

    if-ne v3, v9, :cond_5

    iget-object v9, p0, Lcom/android/server/am/MultiWindowManagerService;->mDexCompatPortraitTaskSize:Landroid/graphics/Point;

    :goto_2
    invoke-direct {v8, v9}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    .line 938
    .local v8, "taskSize":Landroid/graphics/Point;
    iget v9, v8, Landroid/graphics/Point;->x:I

    iget v10, p2, Landroid/content/res/Configuration;->densityDpi:I

    mul-int/2addr v9, v10

    int-to-float v9, v9

    const v10, 0x3bcccccd    # 0.00625f

    mul-float/2addr v9, v10

    float-to-int v5, v9

    .line 939
    .local v5, "screenWidthDp":I
    iget v9, v8, Landroid/graphics/Point;->y:I

    iget v10, p2, Landroid/content/res/Configuration;->densityDpi:I

    mul-int/2addr v9, v10

    int-to-float v9, v9

    const v10, 0x3bcccccd    # 0.00625f

    mul-float/2addr v9, v10

    float-to-int v4, v9

    .line 940
    .local v4, "screenHeightDp":I
    iget v9, p2, Landroid/content/res/Configuration;->screenLayout:I

    invoke-static {v9}, Landroid/content/res/Configuration;->resetScreenLayout(I)I

    move-result v7

    .line 941
    .local v7, "sl":I
    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 942
    .local v2, "longSize":I
    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 944
    .local v6, "shortSize":I
    iput v5, p2, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 945
    iput v4, p2, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 946
    iput v6, p2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 947
    iput v3, p2, Landroid/content/res/Configuration;->orientation:I

    .line 948
    invoke-static {v7, v2, v6}, Landroid/content/res/Configuration;->reduceScreenLayout(III)I

    move-result v9

    iput v9, p2, Landroid/content/res/Configuration;->screenLayout:I

    goto :goto_1

    .line 936
    .end local v2    # "longSize":I
    .end local v4    # "screenHeightDp":I
    .end local v5    # "screenWidthDp":I
    .end local v6    # "shortSize":I
    .end local v7    # "sl":I
    .end local v8    # "taskSize":Landroid/graphics/Point;
    :cond_5
    iget-object v9, p0, Lcom/android/server/am/MultiWindowManagerService;->mDexCompatLandscapeTaskSize:Landroid/graphics/Point;

    goto :goto_2
.end method

.method public applyFreeformMinimizePolicyLocked(I)V
    .locals 1
    .param p1, "taskId"    # I

    .prologue
    .line 1365
    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v0, :cond_0

    .line 1366
    iget-boolean v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mCoolDownFreeformRequested:Z

    if-eqz v0, :cond_1

    .line 1367
    invoke-direct {p0, p1}, Lcom/android/server/am/MultiWindowManagerService;->minimizeOhterFreeformsLocked(I)Z

    .line 1364
    :cond_0
    :goto_0
    return-void

    .line 1369
    :cond_1
    invoke-direct {p0}, Lcom/android/server/am/MultiWindowManagerService;->minimizeMaxCountingFreeformLocked()V

    goto :goto_0
.end method

.method public changeFreeformMode()V
    .locals 9

    .prologue
    .line 3807
    sget-boolean v4, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v4, :cond_2

    .line 3808
    sget-boolean v4, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_ADJUST_STACK_ORDER:Z

    .line 3807
    if-eqz v4, :cond_2

    .line 3809
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 3810
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/am/MultiWindowManagerService;->getIndexOfFreeformStackLocked()I

    move-result v0

    .line 3811
    .local v0, "freeformIndex":I
    if-ltz v0, :cond_1

    .line 3812
    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, v4, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    iget-object v4, v4, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStack;

    .line 3813
    .local v1, "freeformStack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {p0}, Lcom/android/server/am/MultiWindowManagerService;->isFreeformStackVisibleLocked()Z

    move-result v4

    if-nez v4, :cond_3

    .line 3814
    sget-boolean v4, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "MultiWindowManagerService"

    const-string v6, "changeFreeformMode: Unminimize FreeformStack"

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3815
    :cond_0
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/server/am/MultiWindowManagerService;->setFreeformStackVisibilityLocked(Z)V

    .line 3816
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    .line 3817
    .local v3, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v3, :cond_1

    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    const-string v6, "changeFreeformMode_unminimize"

    invoke-virtual {v4, v3, v6}, Lcom/android/server/am/ActivityManagerService;->setFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3818
    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "freeformStack":Lcom/android/server/am/ActivityStack;
    .end local v3    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1
    :goto_0
    monitor-exit v5

    .line 3806
    .end local v0    # "freeformIndex":I
    :cond_2
    return-void

    .line 3821
    .restart local v0    # "freeformIndex":I
    .restart local v1    # "freeformStack":Lcom/android/server/am/ActivityStack;
    :cond_3
    :try_start_1
    sget-boolean v4, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    if-eqz v4, :cond_4

    const-string v4, "MultiWindowManagerService"

    const-string v6, "changeFreeformMode: Minimize FreeformStack"

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3822
    :cond_4
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/server/am/MultiWindowManagerService;->setFreeformStackVisibilityLocked(Z)V

    .line 3823
    invoke-direct {p0, v1}, Lcom/android/server/am/MultiWindowManagerService;->moveFreeformStackToBottomLocked(Lcom/android/server/am/ActivityStack;)V

    .line 3824
    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v4

    if-ne v4, v1, :cond_5

    .line 3825
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->getNextFocusableStackLocked()Lcom/android/server/am/ActivityStack;

    move-result-object v2

    .line 3826
    .local v2, "nextFocusableStack":Lcom/android/server/am/ActivityStack;
    if-eqz v2, :cond_6

    .line 3827
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    .line 3828
    .restart local v3    # "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v3, :cond_5

    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    const-string v6, "freeformModeChanged_minimize"

    invoke-virtual {v4, v3, v6}, Lcom/android/server/am/ActivityManagerService;->setFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 3829
    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    .line 3835
    .end local v2    # "nextFocusableStack":Lcom/android/server/am/ActivityStack;
    .end local v3    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_5
    :goto_1
    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v7, v8}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3809
    .end local v0    # "freeformIndex":I
    .end local v1    # "freeformStack":Lcom/android/server/am/ActivityStack;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 3832
    .restart local v0    # "freeformIndex":I
    .restart local v1    # "freeformStack":Lcom/android/server/am/ActivityStack;
    .restart local v2    # "nextFocusableStack":Lcom/android/server/am/ActivityStack;
    :cond_6
    :try_start_2
    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const-string v6, "changeFreeformMode_minimize"

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8, v6}, Lcom/android/server/am/ActivityStackSupervisor;->resumeHomeStackTask(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public checkLaunchPolicyLocked(Landroid/content/pm/ActivityInfo;)Z
    .locals 13
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 842
    iget-boolean v9, p0, Lcom/android/server/am/MultiWindowManagerService;->mIsDesktopModeEnabled:Z

    if-eqz v9, :cond_9

    .line 843
    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService$Lifecycle;->getService()Lcom/android/server/desktopmode/DesktopModeService;

    move-result-object v9

    .line 844
    iget-object v10, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 843
    invoke-virtual {v9, v10, p1}, Lcom/android/server/desktopmode/DesktopModeService;->getLaunchPolicyForPackage(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ActivityInfo;)I

    move-result v3

    .line 845
    .local v3, "launchPolicy":I
    and-int/lit8 v9, v3, 0x20

    if-eqz v9, :cond_2

    const/4 v6, 0x1

    .line 846
    .local v6, "notSupportListed":Z
    :goto_0
    and-int/lit8 v9, v3, 0x40

    if-eqz v9, :cond_3

    const/4 v5, 0x1

    .line 847
    .local v5, "notSupportDeclaredTouchscreen":Z
    :goto_1
    and-int/lit16 v9, v3, 0x80

    if-eqz v9, :cond_4

    const/4 v4, 0x1

    .line 848
    .local v4, "notSupportDeclaredCategoryHome":Z
    :goto_2
    const v9, 0x8000

    and-int/2addr v9, v3

    if-eqz v9, :cond_5

    const/4 v1, 0x1

    .line 850
    .local v1, "isGame":Z
    :goto_3
    if-nez v6, :cond_0

    if-nez v5, :cond_0

    if-eqz v4, :cond_8

    .line 851
    :cond_0
    iget-object v9, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {p1, v9}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 852
    .local v0, "charLabel":Ljava/lang/CharSequence;
    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 853
    .local v2, "label":Ljava/lang/String;
    :goto_4
    sget v8, Lcom/samsung/android/framework/res/R$string;->multiwindow_desktop_policy_text_cant_run_doesnt_support_multiwindow:I

    .line 854
    .local v8, "reasonTextResId":I
    if-eqz v5, :cond_7

    .line 855
    sget v8, Lcom/samsung/android/framework/res/R$string;->multiwindow_desktop_policy_text_cant_run_for_phone_touch_screen:I

    .line 859
    :cond_1
    :goto_5
    iget-object v9, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    new-array v10, v12, [Ljava/lang/Object;

    aput-object v2, v10, v11

    invoke-virtual {v9, v8, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 860
    .local v7, "reason":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    new-instance v10, Lcom/android/server/am/MultiWindowManagerService$4;

    invoke-direct {v10, p0, v7}, Lcom/android/server/am/MultiWindowManagerService$4;-><init>(Lcom/android/server/am/MultiWindowManagerService;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Lcom/android/server/am/MultiWindowManagerService$H;->post(Ljava/lang/Runnable;)Z

    .line 867
    return v12

    .line 845
    .end local v0    # "charLabel":Ljava/lang/CharSequence;
    .end local v1    # "isGame":Z
    .end local v2    # "label":Ljava/lang/String;
    .end local v4    # "notSupportDeclaredCategoryHome":Z
    .end local v5    # "notSupportDeclaredTouchscreen":Z
    .end local v6    # "notSupportListed":Z
    .end local v7    # "reason":Ljava/lang/String;
    .end local v8    # "reasonTextResId":I
    :cond_2
    const/4 v6, 0x0

    .restart local v6    # "notSupportListed":Z
    goto :goto_0

    .line 846
    :cond_3
    const/4 v5, 0x0

    .restart local v5    # "notSupportDeclaredTouchscreen":Z
    goto :goto_1

    .line 847
    :cond_4
    const/4 v4, 0x0

    .restart local v4    # "notSupportDeclaredCategoryHome":Z
    goto :goto_2

    .line 848
    :cond_5
    const/4 v1, 0x0

    .restart local v1    # "isGame":Z
    goto :goto_3

    .line 852
    .restart local v0    # "charLabel":Ljava/lang/CharSequence;
    :cond_6
    const-string v2, ""

    .restart local v2    # "label":Ljava/lang/String;
    goto :goto_4

    .line 856
    .restart local v8    # "reasonTextResId":I
    :cond_7
    if-eqz v4, :cond_1

    .line 857
    sget v8, Lcom/samsung/android/framework/res/R$string;->multiwindow_desktop_policy_text_cant_run_for_phone_home_screen:I

    goto :goto_5

    .line 868
    .end local v0    # "charLabel":Ljava/lang/CharSequence;
    .end local v2    # "label":Ljava/lang/String;
    .end local v8    # "reasonTextResId":I
    :cond_8
    if-eqz v1, :cond_9

    .line 869
    iget-object v9, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 870
    sget v10, Lcom/samsung/android/framework/res/R$string;->multiwindow_forced_resizable_samsung_dex_for_game:I

    .line 869
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 871
    .restart local v7    # "reason":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    new-instance v10, Lcom/android/server/am/MultiWindowManagerService$5;

    invoke-direct {v10, p0, v7}, Lcom/android/server/am/MultiWindowManagerService$5;-><init>(Lcom/android/server/am/MultiWindowManagerService;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Lcom/android/server/am/MultiWindowManagerService$H;->post(Ljava/lang/Runnable;)Z

    .line 878
    return v11

    .line 881
    .end local v1    # "isGame":Z
    .end local v3    # "launchPolicy":I
    .end local v4    # "notSupportDeclaredCategoryHome":Z
    .end local v5    # "notSupportDeclaredTouchscreen":Z
    .end local v6    # "notSupportListed":Z
    .end local v7    # "reason":Ljava/lang/String;
    :cond_9
    return v11
.end method

.method public checkRunningFreeformWithLoggingLocked(Lcom/android/server/am/TaskRecord;)V
    .locals 20
    .param p1, "startingTask"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 4464
    sget-boolean v18, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v18, :cond_e

    .line 4465
    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v18, v0

    if-nez v18, :cond_1

    .line 4466
    :cond_0
    return-void

    .line 4469
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v18, v0

    const/16 v19, 0x2

    invoke-virtual/range {v18 .. v19}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v6

    .line 4470
    .local v6, "freeformStack":Lcom/android/server/am/ActivityStack;
    if-eqz v6, :cond_e

    .line 4471
    const/16 v18, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Lcom/android/server/am/ActivityStack;->getStackVisibilityLocked(Lcom/android/server/am/ActivityRecord;)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_e

    .line 4472
    const/4 v8, 0x0

    .line 4473
    .local v8, "fullscreenActivity":Lcom/android/server/am/ActivityRecord;
    const/4 v2, 0x0

    .line 4474
    .local v2, "dockedActivity":Lcom/android/server/am/ActivityRecord;
    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v7

    .line 4475
    .local v7, "freeformTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    .line 4477
    .local v11, "packageList":Ljava/lang/StringBuffer;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mIsDesktopModeEnabled:Z

    move/from16 v18, v0

    if-nez v18, :cond_5

    .line 4478
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v9

    .line 4479
    .local v9, "fullscreenStack":Lcom/android/server/am/ActivityStack;
    if-eqz v9, :cond_2

    .line 4480
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/MultiWindowManagerService;->getStackBehindFreeformLocked()Lcom/android/server/am/ActivityStack;

    move-result-object v14

    .line 4481
    .local v14, "stackBehindFreeformStack":Lcom/android/server/am/ActivityStack;
    if-ne v9, v14, :cond_2

    .line 4482
    invoke-virtual {v9}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v8

    .line 4485
    .end local v8    # "fullscreenActivity":Lcom/android/server/am/ActivityRecord;
    .end local v14    # "stackBehindFreeformStack":Lcom/android/server/am/ActivityStack;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v18, v0

    const/16 v19, 0x3

    invoke-virtual/range {v18 .. v19}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    .line 4486
    .local v3, "dockedStack":Lcom/android/server/am/ActivityStack;
    if-eqz v3, :cond_3

    .line 4487
    const/16 v18, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/android/server/am/ActivityStack;->getStackVisibilityLocked(Lcom/android/server/am/ActivityRecord;)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    .line 4488
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 4491
    .end local v2    # "dockedActivity":Lcom/android/server/am/ActivityRecord;
    :cond_3
    if-eqz v8, :cond_a

    .line 4492
    iget-object v0, v8, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    const-string v19, "|"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4496
    :goto_0
    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mIsDockMinimized:Z

    move/from16 v18, v0

    if-eqz v18, :cond_b

    .line 4499
    :cond_4
    const-string v18, "null"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    const-string v19, "|"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4503
    .end local v3    # "dockedStack":Lcom/android/server/am/ActivityStack;
    .end local v9    # "fullscreenStack":Lcom/android/server/am/ActivityStack;
    :cond_5
    :goto_1
    const/16 v17, 0x0

    .line 4504
    .local v17, "visibleApps":I
    const/4 v13, 0x0

    .line 4505
    .local v13, "runningApps":I
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v18

    add-int/lit8 v10, v18, -0x1

    .local v10, "i":I
    :goto_2
    if-ltz v10, :cond_d

    .line 4506
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/am/TaskRecord;

    .line 4507
    .local v16, "tr":Lcom/android/server/am/TaskRecord;
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/am/TaskRecord;->mHiddenState:I

    move/from16 v18, v0

    if-nez v18, :cond_7

    .line 4508
    const/4 v12, 0x0

    .line 4509
    .local v12, "packageName":Ljava/lang/String;
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v18, v0

    if-eqz v18, :cond_c

    .line 4510
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .line 4518
    .end local v12    # "packageName":Ljava/lang/String;
    :cond_6
    :goto_3
    if-eqz v12, :cond_7

    .line 4519
    add-int/lit8 v17, v17, 0x1

    .line 4520
    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    const-string v19, "|"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4523
    :cond_7
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/am/TaskRecord;->mHiddenState:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_8

    .line 4524
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mIsDesktopModeEnabled:Z

    move/from16 v18, v0

    .line 4523
    if-eqz v18, :cond_9

    .line 4525
    :cond_8
    add-int/lit8 v13, v13, 0x1

    .line 4505
    :cond_9
    add-int/lit8 v10, v10, -0x1

    goto :goto_2

    .line 4494
    .end local v10    # "i":I
    .end local v13    # "runningApps":I
    .end local v16    # "tr":Lcom/android/server/am/TaskRecord;
    .end local v17    # "visibleApps":I
    .restart local v3    # "dockedStack":Lcom/android/server/am/ActivityStack;
    .restart local v9    # "fullscreenStack":Lcom/android/server/am/ActivityStack;
    :cond_a
    const-string v18, "null"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    const-string v19, "|"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 4497
    :cond_b
    iget-object v0, v2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    const-string v19, "|"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 4512
    .end local v3    # "dockedStack":Lcom/android/server/am/ActivityStack;
    .end local v9    # "fullscreenStack":Lcom/android/server/am/ActivityStack;
    .restart local v10    # "i":I
    .restart local v12    # "packageName":Ljava/lang/String;
    .restart local v13    # "runningApps":I
    .restart local v16    # "tr":Lcom/android/server/am/TaskRecord;
    .restart local v17    # "visibleApps":I
    :cond_c
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v15

    .line 4513
    .local v15, "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v15, :cond_6

    .line 4514
    iget-object v12, v15, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    .local v12, "packageName":Ljava/lang/String;
    goto :goto_3

    .line 4528
    .end local v12    # "packageName":Ljava/lang/String;
    .end local v15    # "top":Lcom/android/server/am/ActivityRecord;
    .end local v16    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_d
    if-lez v13, :cond_e

    .line 4529
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v5, v0, [Ljava/lang/String;

    .line 4530
    .local v5, "features":[Ljava/lang/String;
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v4, v0, [Ljava/lang/String;

    .line 4532
    .local v4, "extras":[Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 4533
    const-string v19, " | "

    .line 4532
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 4533
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    .line 4532
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    aput-object v18, v4, v19

    .line 4534
    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x1

    aput-object v18, v4, v19

    .line 4535
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mIsDesktopModeEnabled:Z

    move/from16 v18, v0

    if-eqz v18, :cond_f

    .line 4536
    const-string v18, "DFCO"

    const/16 v19, 0x0

    aput-object v18, v5, v19

    .line 4537
    const-string v18, "DFPA"

    const/16 v19, 0x1

    aput-object v18, v5, v19

    .line 4538
    const-string v18, "com.samsung.android.desktopmode"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v5, v4}, Lcom/android/server/am/MultiWindowManagerService;->logMultiWindowBehavior(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 4463
    .end local v4    # "extras":[Ljava/lang/String;
    .end local v5    # "features":[Ljava/lang/String;
    .end local v6    # "freeformStack":Lcom/android/server/am/ActivityStack;
    .end local v7    # "freeformTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    .end local v10    # "i":I
    .end local v11    # "packageList":Ljava/lang/StringBuffer;
    .end local v13    # "runningApps":I
    .end local v17    # "visibleApps":I
    :cond_e
    :goto_4
    return-void

    .line 4540
    .restart local v4    # "extras":[Ljava/lang/String;
    .restart local v5    # "features":[Ljava/lang/String;
    .restart local v6    # "freeformStack":Lcom/android/server/am/ActivityStack;
    .restart local v7    # "freeformTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    .restart local v10    # "i":I
    .restart local v11    # "packageList":Ljava/lang/StringBuffer;
    .restart local v13    # "runningApps":I
    .restart local v17    # "visibleApps":I
    :cond_f
    const-string v18, "FFCO"

    const/16 v19, 0x0

    aput-object v18, v5, v19

    .line 4541
    const-string v18, "FFPA"

    const/16 v19, 0x1

    aput-object v18, v5, v19

    .line 4542
    const-string v18, "com.samsung.android.multiwindow"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v5, v4}, Lcom/android/server/am/MultiWindowManagerService;->logMultiWindowBehavior(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_4
.end method

.method public cleanUpAssociatedTargetProcess(Lcom/android/server/am/ProcessRecord;Z)V
    .locals 8
    .param p1, "target"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "selfKill"    # Z

    .prologue
    .line 2648
    iget-boolean v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mIsDesktopModeEnabled:Z

    if-eqz v4, :cond_5

    if-eqz p1, :cond_5

    .line 2649
    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->waitingKillByClosingFreeform:Ljava/lang/String;

    if-eqz v4, :cond_5

    .line 2650
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 2651
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2652
    .local v3, "procsToKill":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    if-eqz p2, :cond_0

    .line 2653
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2655
    :cond_0
    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v4, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2656
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_1
    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 2657
    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 2658
    .local v1, "proc":Lcom/android/server/am/ProcessRecord;
    if-eq p1, v1, :cond_1

    .line 2659
    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->waitingKillByClosingFreeform:Ljava/lang/String;

    iget-object v7, v1, Lcom/android/server/am/ProcessRecord;->waitingKillByClosingFreeform:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 2658
    if-eqz v4, :cond_1

    .line 2660
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2656
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1    # "proc":Lcom/android/server/am/ProcessRecord;
    :cond_2
    :try_start_2
    monitor-exit v6

    .line 2665
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "proc$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 2666
    .restart local v1    # "proc":Lcom/android/server/am/ProcessRecord;
    const/4 v4, 0x0

    iput-object v4, v1, Lcom/android/server/am/ProcessRecord;->waitingKillByClosingFreeform:Ljava/lang/String;

    .line 2667
    iget v4, v1, Lcom/android/server/am/ProcessRecord;->setSchedGroup:I

    if-gtz v4, :cond_3

    iget-object v4, v1, Lcom/android/server/am/ProcessRecord;->curReceiver:Lcom/android/server/am/BroadcastRecord;

    if-nez v4, :cond_3

    .line 2668
    const-string v4, "closing-freeformTask"

    const/4 v6, 0x1

    invoke-virtual {v1, v4, v6}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 2650
    .end local v0    # "i":I
    .end local v1    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v2    # "proc$iterator":Ljava/util/Iterator;
    .end local v3    # "procsToKill":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 2655
    .restart local v0    # "i":I
    .restart local v3    # "procsToKill":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    :catchall_1
    move-exception v4

    :try_start_3
    monitor-exit v6

    throw v4

    .line 2670
    .restart local v1    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v2    # "proc$iterator":Ljava/util/Iterator;
    :cond_3
    const-string v4, "closing-freeformTask-byWaiting"

    iput-object v4, v1, Lcom/android/server/am/ProcessRecord;->waitingToKill:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .end local v1    # "proc":Lcom/android/server/am/ProcessRecord;
    :cond_4
    monitor-exit v5

    .line 2647
    .end local v0    # "i":I
    .end local v2    # "proc$iterator":Ljava/util/Iterator;
    .end local v3    # "procsToKill":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    :cond_5
    return-void
.end method

.method public clearAutoResize(Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 4371
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mAutoResizeHandlerFired:Z

    .line 4372
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mAutoResizeController:Lcom/android/server/am/MultiWindowAutoResizeController;

    invoke-virtual {v0, p1}, Lcom/android/server/am/MultiWindowAutoResizeController;->clearAutoResizeState(Ljava/lang/String;)V

    .line 4370
    return-void
.end method

.method public completeToggleSplitScreen()V
    .locals 1

    .prologue
    .line 4352
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    invoke-interface {v0}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->completeToggleSplitScreen()V

    .line 4351
    return-void
.end method

.method public deferDetachDockStackLocked()V
    .locals 1

    .prologue
    .line 2110
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mDeferredDetachDockStack:Z

    .line 2108
    return-void
.end method

.method public detachStackIfNoActivitiesLocked(Lcom/android/server/am/ActivityStack;)V
    .locals 4
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;

    .prologue
    .line 5745
    if-eqz p1, :cond_2

    .line 5746
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v1

    .line 5747
    .local v1, "taskHistory":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "taskNdx":I
    :goto_0
    if-ltz v2, :cond_1

    .line 5748
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    iget-object v0, v3, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 5749
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 5750
    return-void

    .line 5747
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 5754
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    :cond_1
    iget-object v3, p1, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->onTaskListEmptyLocked()V

    .line 5744
    .end local v1    # "taskHistory":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    .end local v2    # "taskNdx":I
    :cond_2
    return-void
.end method

.method public dumpLocked(Ljava/io/PrintWriter;Z)V
    .locals 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "dumpAll"    # Z

    .prologue
    const/4 v3, 0x0

    .line 2125
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2126
    if-eqz p2, :cond_0

    .line 2127
    const-string v5, "-------------------------------------------------------------------------------"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2129
    :cond_0
    const-string v5, "MULTI WINDOW MANAGER SERVICE"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2130
    sget-boolean v5, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_SUPPORT:Z

    if-eqz v5, :cond_4

    .line 2131
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    mIsMinimizeContainerServiceRunning="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mIsMinimizeContainerServiceRunning:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2132
    const-string v5, "    * History"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2133
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mMinimizeContainerSerivceHistory:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2134
    .local v2, "numHistory":I
    sget-boolean v5, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    if-eqz v5, :cond_2

    const/16 v1, 0x64

    .line 2135
    .local v1, "lines":I
    :goto_0
    if-lt v2, v1, :cond_1

    sub-int v3, v2, v1

    .line 2136
    .local v3, "startNdx":I
    :cond_1
    move v0, v3

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_3

    .line 2137
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "      #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v0, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mMinimizeContainerSerivceHistory:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2136
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2134
    .end local v0    # "i":I
    .end local v1    # "lines":I
    .end local v3    # "startNdx":I
    :cond_2
    const/4 v1, 0x5

    goto :goto_0

    .line 2139
    .restart local v0    # "i":I
    .restart local v1    # "lines":I
    .restart local v3    # "startNdx":I
    :cond_3
    iget-boolean v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mIsOverWrittenFreeformCnt:Z

    if-eqz v5, :cond_4

    .line 2140
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2141
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    mMaxFreeformOverWrittenCnt="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mMaxFreeformOverWrittenCnt:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2144
    .end local v0    # "i":I
    .end local v1    # "lines":I
    .end local v2    # "numHistory":I
    .end local v3    # "startNdx":I
    :cond_4
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2145
    invoke-static {}, Landroid/app/ActivityManager;->supportsMultiWindow()Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v5, "    MultiWindowEnabled"

    :goto_2
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2147
    iget-boolean v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mIsDesktopModeEnabled:Z

    if-eqz v5, :cond_5

    .line 2148
    const-string v5, "    DesktopModeEnabled"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2149
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    DexCompat: port="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mDexCompatPortraitTaskSize:Landroid/graphics/Point;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2150
    const-string v6, ": land="

    .line 2149
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2150
    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mDexCompatLandscapeTaskSize:Landroid/graphics/Point;

    .line 2149
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2150
    const-string v6, ": captionHeight="

    .line 2149
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2150
    iget v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mDecorCaptionWindowHeight:I

    .line 2149
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2155
    :cond_5
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mMWOffRequesters:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v0, v5, :cond_7

    .line 2156
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MWOffRequester[u"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mMWOffRequesters:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2157
    .local v4, "title":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mMWOffRequesters:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-direct {p0, p1, v5, v4}, Lcom/android/server/am/MultiWindowManagerService;->dumpMWRequesterLocked(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 2155
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 2145
    .end local v0    # "i":I
    .end local v4    # "title":Ljava/lang/String;
    :cond_6
    const-string v5, "    MultiWindowDisabled"

    goto :goto_2

    .line 2159
    .restart local v0    # "i":I
    :cond_7
    const/4 v0, 0x0

    :goto_4
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mMWOffRequestersLog:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v0, v5, :cond_8

    .line 2160
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MWOffRequesterLog[u"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mMWOffRequestersLog:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2161
    .restart local v4    # "title":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mMWOffRequestersLog:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-direct {p0, p1, v5, v4}, Lcom/android/server/am/MultiWindowManagerService;->dumpMWRequesterLocked(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 2159
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 2163
    .end local v4    # "title":Ljava/lang/String;
    :cond_8
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mMWOffRequestersForAllUsers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_9

    .line 2164
    const-string v4, "MWOffRequestersForAllUsers : "

    .line 2165
    .restart local v4    # "title":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mMWOffRequestersForAllUsers:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v5, v4}, Lcom/android/server/am/MultiWindowManagerService;->dumpMWRequesterLocked(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 2167
    .end local v4    # "title":Ljava/lang/String;
    :cond_9
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mMWOffRequestersLogForAllUsers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_a

    .line 2168
    const-string v4, "MWOffRequestersLogForAllUsers : "

    .line 2169
    .restart local v4    # "title":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mMWOffRequestersLogForAllUsers:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v5, v4}, Lcom/android/server/am/MultiWindowManagerService;->dumpMWRequesterLocked(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 2171
    .end local v4    # "title":Ljava/lang/String;
    :cond_a
    const/4 v0, 0x0

    :goto_5
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mMWForceOnRequesters:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v0, v5, :cond_b

    .line 2172
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MWForceOnRequester[u"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mMWForceOnRequesters:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2173
    .restart local v4    # "title":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mMWForceOnRequesters:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-direct {p0, p1, v5, v4}, Lcom/android/server/am/MultiWindowManagerService;->dumpMWRequesterLocked(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 2171
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 2175
    .end local v4    # "title":Ljava/lang/String;
    :cond_b
    const/4 v0, 0x0

    :goto_6
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mMWForceOnRequestersLog:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v0, v5, :cond_c

    .line 2176
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MWForceOnRequesterLog[u"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mMWForceOnRequestersLog:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2177
    .restart local v4    # "title":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mMWForceOnRequestersLog:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-direct {p0, p1, v5, v4}, Lcom/android/server/am/MultiWindowManagerService;->dumpMWRequesterLocked(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 2175
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 2179
    .end local v4    # "title":Ljava/lang/String;
    :cond_c
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mMWForceOnRequestersForAllUsers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_d

    .line 2180
    const-string v4, "MWForceOnRequestersForAllUsers : "

    .line 2181
    .restart local v4    # "title":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mMWForceOnRequestersForAllUsers:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v5, v4}, Lcom/android/server/am/MultiWindowManagerService;->dumpMWRequesterLocked(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 2183
    .end local v4    # "title":Ljava/lang/String;
    :cond_d
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mMWForceOnRequestersLogForAllUsers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_e

    .line 2184
    const-string v4, "MWForceOnRequestersLogForAllUsers : "

    .line 2185
    .restart local v4    # "title":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mMWForceOnRequestersLogForAllUsers:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v5, v4}, Lcom/android/server/am/MultiWindowManagerService;->dumpMWRequesterLocked(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 2187
    .end local v4    # "title":Ljava/lang/String;
    :cond_e
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2123
    return-void
.end method

.method public ensureDockedResize(Landroid/graphics/Rect;Z)V
    .locals 8
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "adjustForIme"    # Z

    .prologue
    .line 4275
    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->ENSURE_DOCKED_VIEW_SUPPORT:Z

    if-eqz v0, :cond_3

    .line 4276
    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7

    .line 4277
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 4278
    sget-boolean v0, Lcom/android/server/am/MultiWindowManagerService;->DEBUG_ENSURE_DOCKEDVIEW:Z

    if-eqz v0, :cond_0

    .line 4279
    const-string v0, "MultiWindowManagerService_EnsureDockedView"

    const-string v1, "ensureDockedResize called, but orientation is changed to landscape"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_0
    monitor-exit v7

    .line 4281
    return-void

    .line 4283
    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mEnsureDockedMode:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4285
    :try_start_2
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ActivityStackSupervisor;->resizeDockedStackLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    .line 4286
    sget-boolean v0, Lcom/android/server/am/MultiWindowManagerService;->DEBUG_ENSURE_DOCKEDVIEW:Z

    if-eqz v0, :cond_2

    .line 4287
    const-string v0, "MultiWindowManagerService_EnsureDockedView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adjustForIme : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ensureBounds : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4290
    :cond_2
    const/4 v0, 0x0

    :try_start_3
    iput-boolean v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mEnsureDockedMode:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v7

    .line 4274
    :cond_3
    return-void

    .line 4289
    :catchall_0
    move-exception v0

    .line 4290
    const/4 v1, 0x0

    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mEnsureDockedMode:Z

    .line 4289
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 4276
    :catchall_1
    move-exception v0

    monitor-exit v7

    throw v0
.end method

.method public ensureDockedStackVisible()V
    .locals 5

    .prologue
    .line 4299
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    .line 4300
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 4297
    return-void

    .line 4299
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public enterFreeformTask(I)V
    .locals 6
    .param p1, "fromStackId"    # I

    .prologue
    const/4 v3, 0x1

    .line 4379
    sget-boolean v2, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_SUPPORT:Z

    if-eqz v2, :cond_2

    sget-boolean v2, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v2, :cond_2

    .line 4380
    if-eq p1, v3, :cond_0

    .line 4381
    const/4 v2, 0x3

    if-ne p1, v2, :cond_2

    .line 4383
    :cond_0
    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 4384
    const/4 v1, 0x0

    .line 4385
    .local v1, "topTask":Lcom/android/server/am/TaskRecord;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 4386
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    .local v1, "topTask":Lcom/android/server/am/TaskRecord;
    if-eqz v1, :cond_1

    .line 4388
    new-instance v0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector$ResizeInfo;

    .line 4389
    iget v2, v1, Lcom/android/server/am/TaskRecord;->taskId:I

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    const/4 v5, 0x0

    .line 4388
    invoke-direct {v0, v5, v2, v4}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector$ResizeInfo;-><init>(IILandroid/graphics/Rect;)V

    .line 4390
    .local v0, "resizeInfo":Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector$ResizeInfo;
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    invoke-interface {v2}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 4392
    const/4 v4, 0x1

    .line 4390
    invoke-virtual {v2, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "resizeInfo":Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector$ResizeInfo;
    .end local v1    # "topTask":Lcom/android/server/am/TaskRecord;
    :cond_1
    monitor-exit v3

    .line 4377
    :cond_2
    return-void

    .line 4383
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public exitDockedMode()Z
    .locals 8

    .prologue
    .line 5243
    const/4 v2, 0x0

    .line 5244
    .local v2, "result":Z
    sget-boolean v3, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v3, :cond_0

    .line 5245
    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    const-string v4, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v5, "exitDockedMode"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5246
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5248
    .local v0, "ident":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5249
    :try_start_1
    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 5250
    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v5}, Lcom/android/server/am/MultiWindowManagerService;->moveDockedTasksToFullscreenStack(ZZ)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5251
    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const-string v5, "exitDockedMode"

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7, v5}, Lcom/android/server/am/ActivityStackSupervisor;->resumeHomeStackTask(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5252
    const/4 v2, 0x1

    :goto_0
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 5259
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5262
    .end local v0    # "ident":J
    :cond_0
    return v2

    .line 5255
    .restart local v0    # "ident":J
    :cond_1
    :try_start_3
    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 5248
    :catchall_0
    move-exception v3

    :try_start_4
    monitor-exit v4

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 5258
    :catchall_1
    move-exception v3

    .line 5259
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5258
    throw v3
.end method

.method public exitMultiWindow(Landroid/os/IBinder;)Z
    .locals 10
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 3849
    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    const-string v7, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v8, "exitMultiWindow"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3850
    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6

    .line 3851
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3852
    .local v2, "ident":J
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 3853
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_7

    iget-object v7, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v7, :cond_7

    iget-object v7, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v7, v7, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v7, :cond_7

    .line 3855
    :try_start_1
    iget-object v7, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-boolean v7, v7, Lcom/android/server/am/TaskRecord;->mFullscreen:Z

    if-eqz v7, :cond_0

    iget-boolean v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mIsDesktopModeEnabled:Z

    if-eqz v7, :cond_2

    .line 3860
    :cond_0
    iget-object v7, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v7, v7, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget v7, v7, Lcom/android/server/am/ActivityStack;->mStackId:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_4

    .line 3861
    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4, p1}, Lcom/android/server/am/ActivityManagerService;->exitFreeformMode(Landroid/os/IBinder;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3871
    :cond_1
    :goto_0
    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3873
    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-boolean v4, v4, Lcom/android/server/am/TaskRecord;->mFullscreen:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v6

    return v4

    .line 3856
    :cond_2
    :try_start_3
    sget-boolean v5, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    if-eqz v5, :cond_3

    const-string v5, "MultiWindowManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "exitMultiWindow :: It is already fullscreen, r="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3871
    :cond_3
    :try_start_4
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit v6

    .line 3857
    return v4

    .line 3862
    :cond_4
    :try_start_5
    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 3863
    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 3864
    .local v0, "fullStack":Lcom/android/server/am/ActivityStack;
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_6

    .line 3865
    iget-object v7, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v7, v7, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v7

    if-ne v7, v9, :cond_5

    :goto_1
    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/android/server/am/MultiWindowManagerService;->moveDockedTasksToFullscreenStack(ZZ)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 3870
    .end local v0    # "fullStack":Lcom/android/server/am/ActivityStack;
    :catchall_0
    move-exception v4

    .line 3871
    :try_start_6
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3870
    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 3850
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v2    # "ident":J
    :catchall_1
    move-exception v4

    monitor-exit v6

    throw v4

    .restart local v0    # "fullStack":Lcom/android/server/am/ActivityStack;
    .restart local v1    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v2    # "ident":J
    :cond_5
    move v4, v5

    .line 3865
    goto :goto_1

    .line 3867
    :cond_6
    :try_start_7
    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v5, 0x3

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-virtual {v4, v5, v7, v8}, Lcom/android/server/am/ActivityStackSupervisor;->moveTasksToFullscreenStackLocked(IZZ)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    .end local v0    # "fullStack":Lcom/android/server/am/ActivityStack;
    :cond_7
    monitor-exit v6

    .line 3877
    return v5
.end method

.method public getBoundsInDeXFromRecentTasks(Lcom/android/server/am/TaskRecord;)Landroid/graphics/Rect;
    .locals 10
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    .prologue
    const/4 v9, 0x0

    .line 407
    iget-boolean v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mIsDesktopModeEnabled:Z

    if-eqz v6, :cond_5

    .line 408
    iget-object v6, p1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v6, :cond_5

    iget-object v6, p1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget v6, v6, Lcom/android/server/am/ActivityStack;->mStackId:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_5

    .line 409
    iget-boolean v6, p1, Lcom/android/server/am/TaskRecord;->mIsLaunchingDexFullscreenFreeform:Z

    if-eqz v6, :cond_0

    .line 410
    const-string v6, "MultiWindowManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getBoundsInDeXFromRecentTasks: return null, reason=launchFullscreen tid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    return-object v9

    .line 413
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 414
    .local v2, "packageName":Ljava/lang/String;
    iget-object v6, p1, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    invoke-virtual {v6}, Lcom/android/server/am/RecentTasks;->size()I

    move-result v1

    .line 415
    .local v1, "numRecentTasks":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_5

    .line 416
    iget-object v6, p1, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    invoke-virtual {v6, v0}, Lcom/android/server/am/RecentTasks;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/TaskRecord;

    .line 417
    .local v5, "tr":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v5}, Lcom/android/server/am/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 418
    .local v4, "taskPackageName":Ljava/lang/String;
    if-eqz v4, :cond_1

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 421
    iget v6, v5, Lcom/android/server/am/TaskRecord;->userId:I

    iget v7, p1, Lcom/android/server/am/TaskRecord;->userId:I

    if-eq v6, v7, :cond_2

    .line 415
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 424
    :cond_2
    iget-object v6, v5, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v6, :cond_3

    iget-object v6, v5, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v6

    if-nez v6, :cond_1

    .line 427
    :cond_3
    iget-boolean v6, v5, Lcom/android/server/am/TaskRecord;->mIsDexModeTask:Z

    if-eqz v6, :cond_1

    invoke-virtual {v5}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v6

    if-nez v6, :cond_1

    .line 430
    iget-boolean v6, v5, Lcom/android/server/am/TaskRecord;->mFullscreen:Z

    iput-boolean v6, p1, Lcom/android/server/am/TaskRecord;->mFullscreen:Z

    .line 431
    const/4 v3, 0x0

    .line 432
    .local v3, "targetBounds":Landroid/graphics/Rect;
    iget-boolean v6, p1, Lcom/android/server/am/TaskRecord;->mIsDexCompatEnabled:Z

    if-eqz v6, :cond_4

    iget-object v6, v5, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    if-eqz v6, :cond_4

    .line 433
    new-instance v3, Landroid/graphics/Rect;

    .end local v3    # "targetBounds":Landroid/graphics/Rect;
    iget-object v6, p1, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    invoke-direct {v3, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 434
    .local v3, "targetBounds":Landroid/graphics/Rect;
    iget-object v6, v5, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v7, v5, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v6, v7}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 438
    :goto_1
    invoke-static {v3}, Lcom/android/server/am/TaskRecord;->validateBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v6

    return-object v6

    .line 436
    .local v3, "targetBounds":Landroid/graphics/Rect;
    :cond_4
    iget-object v3, v5, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    .local v3, "targetBounds":Landroid/graphics/Rect;
    goto :goto_1

    .line 441
    .end local v0    # "i":I
    .end local v1    # "numRecentTasks":I
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "targetBounds":Landroid/graphics/Rect;
    .end local v4    # "taskPackageName":Ljava/lang/String;
    .end local v5    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_5
    return-object v9
.end method

.method public getDecorCaptionWindowHeight()I
    .locals 1

    .prologue
    .line 744
    iget v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mDecorCaptionWindowHeight:I

    return v0
.end method

.method public getFreeformTasks(I)Ljava/util/List;
    .locals 5
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4059
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    const-string v3, "android.permission.REAL_GET_TASKS"

    const-string v4, "getFreeformTasks()"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4061
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4063
    .local v1, "freeformTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 4064
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 4065
    .local v0, "freeformStack":Lcom/android/server/am/ActivityStack;
    if-eqz v0, :cond_0

    .line 4066
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v4, p1}, Lcom/android/server/am/ActivityStack;->getTasksLocked(Ljava/util/List;IZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v3

    .line 4070
    return-object v1

    .line 4063
    .end local v0    # "freeformStack":Lcom/android/server/am/ActivityStack;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public getImeTargetFreeformTaskId()I
    .locals 1

    .prologue
    .line 4426
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    invoke-interface {v0}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->getImeTargetFreeformTaskId()I

    move-result v0

    return v0
.end method

.method public getIndexOfFreeformStackLocked()I
    .locals 6

    .prologue
    .line 1194
    const/4 v1, -0x1

    .line 1195
    .local v1, "idxFreeform":I
    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, v4, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    iget-object v3, v4, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    .line 1196
    .local v3, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1197
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    .line 1198
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    iget v4, v2, Lcom/android/server/am/ActivityStack;->mStackId:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 1199
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1200
    move v1, v0

    .line 1205
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_0
    return v1

    .line 1196
    .restart local v2    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public getMaxMultiInstanceCnt()I
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 1081
    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->MULTIINSTANCE_SUPPORT:Z

    if-eqz v0, :cond_1

    .line 1082
    iget v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mMaxMultiInstanceCnt:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mMaxMultiInstanceCnt:I

    goto :goto_0

    .line 1084
    :cond_1
    return v1
.end method

.method public getMultiInstanceCntLocked(Lcom/android/server/am/ActivityRecord;)I
    .locals 21
    .param p1, "target"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 1097
    if-nez p1, :cond_0

    .line 1098
    const/16 v19, 0x0

    return v19

    .line 1101
    :cond_0
    const/4 v8, 0x0

    .line 1102
    .local v8, "nInstance":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/am/ActivityStackSupervisor;->getStacks()Ljava/util/ArrayList;

    move-result-object v12

    .line 1103
    .local v12, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "stack$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_c

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/ActivityStack;

    .line 1104
    .local v10, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->isApplicationActivity()Z

    move-result v19

    if-eqz v19, :cond_1

    invoke-virtual {v10}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v19

    if-nez v19, :cond_1

    .line 1109
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    .line 1110
    .local v6, "intent":Landroid/content/Intent;
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 1111
    .local v5, "info":Landroid/content/pm/ActivityInfo;
    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    .line 1112
    .local v3, "cls":Landroid/content/ComponentName;
    iget-object v0, v5, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_2

    .line 1113
    new-instance v3, Landroid/content/ComponentName;

    .end local v3    # "cls":Landroid/content/ComponentName;
    iget-object v0, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    iget-object v0, v5, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v3, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1115
    .restart local v3    # "cls":Landroid/content/ComponentName;
    :cond_2
    iget-object v0, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v18

    .line 1116
    .local v18, "userId":I
    if-eqz v6, :cond_4

    const/16 v19, 0x1

    :goto_0
    invoke-virtual {v6}, Landroid/content/Intent;->isDocument()Z

    move-result v20

    and-int v7, v19, v20

    .line 1118
    .local v7, "isDocument":Z
    if-eqz v7, :cond_5

    invoke-virtual {v6}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    .line 1121
    :goto_1
    invoke-virtual {v10}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    add-int/lit8 v17, v19, -0x1

    .local v17, "taskNdx":I
    :goto_2
    if-ltz v17, :cond_1

    .line 1122
    invoke-virtual {v10}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/TaskRecord;

    .line 1123
    .local v13, "task":Lcom/android/server/am/TaskRecord;
    iget-object v0, v13, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    move-object/from16 v19, v0

    if-eqz v19, :cond_6

    .line 1121
    :cond_3
    :goto_3
    add-int/lit8 v17, v17, -0x1

    goto :goto_2

    .line 1116
    .end local v7    # "isDocument":Z
    .end local v13    # "task":Lcom/android/server/am/TaskRecord;
    .end local v17    # "taskNdx":I
    :cond_4
    const/16 v19, 0x0

    goto :goto_0

    .line 1118
    .restart local v7    # "isDocument":Z
    :cond_5
    const/4 v4, 0x0

    .local v4, "documentData":Landroid/net/Uri;
    goto :goto_1

    .line 1128
    .end local v4    # "documentData":Landroid/net/Uri;
    .restart local v13    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v17    # "taskNdx":I
    :cond_6
    iget v0, v13, Lcom/android/server/am/TaskRecord;->userId:I

    move/from16 v19, v0

    move/from16 v0, v19

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    .line 1133
    invoke-virtual {v13}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v9

    .line 1134
    .local v9, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v9, :cond_3

    iget-boolean v0, v9, Lcom/android/server/am/ActivityRecord;->finishing:Z

    move/from16 v19, v0

    if-nez v19, :cond_3

    iget v0, v9, Lcom/android/server/am/ActivityRecord;->userId:I

    move/from16 v19, v0

    move/from16 v0, v19

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    .line 1135
    iget v0, v9, Lcom/android/server/am/ActivityRecord;->launchMode:I

    move/from16 v19, v0

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_3

    .line 1139
    iget v0, v9, Lcom/android/server/am/ActivityRecord;->mActivityType:I

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->mActivityType:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_3

    .line 1144
    iget-object v15, v13, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    .line 1145
    .local v15, "taskIntent":Landroid/content/Intent;
    iget-object v2, v13, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    .line 1148
    .local v2, "affinityIntent":Landroid/content/Intent;
    if-eqz v15, :cond_8

    invoke-virtual {v15}, Landroid/content/Intent;->isDocument()Z

    move-result v19

    if-eqz v19, :cond_8

    .line 1149
    const/16 v16, 0x1

    .line 1150
    .local v16, "taskIsDocument":Z
    invoke-virtual {v15}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v14

    .line 1159
    :goto_4
    if-nez v7, :cond_7

    if-eqz v16, :cond_a

    .line 1167
    :cond_7
    if-eqz v15, :cond_b

    invoke-virtual {v15}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v19

    if-eqz v19, :cond_b

    .line 1168
    invoke-virtual {v15}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/content/ComponentName;->compareTo(Landroid/content/ComponentName;)I

    move-result v19

    if-nez v19, :cond_b

    .line 1169
    invoke-static {v4, v14}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v19

    .line 1167
    if-eqz v19, :cond_b

    .line 1174
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 1151
    .end local v16    # "taskIsDocument":Z
    :cond_8
    if-eqz v2, :cond_9

    invoke-virtual {v2}, Landroid/content/Intent;->isDocument()Z

    move-result v19

    if-eqz v19, :cond_9

    .line 1152
    const/16 v16, 0x1

    .line 1153
    .restart local v16    # "taskIsDocument":Z
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v14

    .local v14, "taskDocumentData":Landroid/net/Uri;
    goto :goto_4

    .line 1155
    .end local v14    # "taskDocumentData":Landroid/net/Uri;
    .end local v16    # "taskIsDocument":Z
    :cond_9
    const/16 v16, 0x0

    .line 1156
    .restart local v16    # "taskIsDocument":Z
    const/4 v14, 0x0

    .local v14, "taskDocumentData":Landroid/net/Uri;
    goto :goto_4

    .line 1159
    .end local v14    # "taskDocumentData":Landroid/net/Uri;
    :cond_a
    invoke-virtual {v13}, Lcom/android/server/am/TaskRecord;->canMatchRootAffinity()Z

    move-result v19

    if-eqz v19, :cond_7

    .line 1160
    iget-object v0, v13, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 1165
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_3

    .line 1175
    :cond_b
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v19

    if-eqz v19, :cond_3

    .line 1176
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/content/ComponentName;->compareTo(Landroid/content/ComponentName;)I

    move-result v19

    if-nez v19, :cond_3

    .line 1177
    invoke-static {v4, v14}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v19

    .line 1175
    if-eqz v19, :cond_3

    .line 1182
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_3

    .line 1189
    .end local v2    # "affinityIntent":Landroid/content/Intent;
    .end local v3    # "cls":Landroid/content/ComponentName;
    .end local v5    # "info":Landroid/content/pm/ActivityInfo;
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v7    # "isDocument":Z
    .end local v9    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v10    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v13    # "task":Lcom/android/server/am/TaskRecord;
    .end local v15    # "taskIntent":Landroid/content/Intent;
    .end local v16    # "taskIsDocument":Z
    .end local v17    # "taskNdx":I
    .end local v18    # "userId":I
    :cond_c
    return v8
.end method

.method public getMultiWindowModeStates(I)I
    .locals 6
    .param p1, "displayId"    # I

    .prologue
    .line 4433
    const/4 v1, 0x0

    .line 4435
    .local v1, "multiWindowModeStates":I
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 4436
    const/4 v3, 0x4

    .local v3, "stackId":I
    :goto_0
    const/4 v4, 0x2

    if-lt v3, v4, :cond_1

    .line 4437
    move v0, v3

    .line 4439
    .local v0, "adjustedStackId":I
    :try_start_0
    invoke-static {v3, p1}, Lcom/samsung/android/bridge/multiscreen/MultiScreenManagerBridge;->getStackIdAdjustedToDisplayId(II)I

    move-result v0

    .line 4441
    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    .line 4442
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    if-eqz v4, :cond_0

    .line 4443
    packed-switch v3, :pswitch_data_0

    .line 4436
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 4445
    :pswitch_0
    or-int/lit8 v1, v1, 0x1

    .line 4446
    goto :goto_1

    .line 4448
    :pswitch_1
    or-int/lit8 v1, v1, 0x2

    .line 4449
    goto :goto_1

    .line 4451
    :pswitch_2
    or-int/lit8 v1, v1, 0x4

    .line 4452
    goto :goto_1

    .end local v0    # "adjustedStackId":I
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_1
    monitor-exit v5

    .line 4459
    return v1

    .line 4435
    .restart local v0    # "adjustedStackId":I
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 4443
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getMultiWindowSettingsLocked(I)Landroid/os/Bundle;
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 1716
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mMultiWindowSettingsObserver:Lcom/android/server/am/MultiWindowSettingsObserver;

    invoke-virtual {v0, p1}, Lcom/android/server/am/MultiWindowSettingsObserver;->getMultiWindowSettingsLocked(I)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getOppositeMultiWindowStackId(I)I
    .locals 7
    .param p1, "baseStackId"    # I

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1931
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2, v5}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1932
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-boolean v2, v2, Lcom/android/server/am/ActivityStackSupervisor;->mIsDockMinimized:Z

    if-eqz v2, :cond_1

    .line 1951
    :cond_0
    return v6

    .line 1933
    :cond_1
    if-eq p1, v5, :cond_2

    if-eq p1, v4, :cond_2

    .line 1934
    if-eqz p1, :cond_2

    .line 1935
    return v6

    .line 1938
    :cond_2
    if-ne p1, v5, :cond_4

    .line 1939
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2, v4}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 1940
    .local v0, "fullscreenStack":Lcom/android/server/am/ActivityStack;
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 1941
    .local v1, "homeStack":Lcom/android/server/am/ActivityStack;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1942
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    .line 1941
    if-eqz v2, :cond_3

    .line 1943
    return v4

    .line 1944
    :cond_3
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1945
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    .line 1944
    if-eqz v2, :cond_0

    .line 1945
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->isRecentsTask()Z

    move-result v2

    .line 1944
    if-eqz v2, :cond_0

    .line 1946
    return v3

    .line 1947
    .end local v0    # "fullscreenStack":Lcom/android/server/am/ActivityStack;
    .end local v1    # "homeStack":Lcom/android/server/am/ActivityStack;
    :cond_4
    if-eq p1, v4, :cond_5

    if-nez p1, :cond_0

    .line 1948
    :cond_5
    return v5
.end method

.method public getPairActivityUserId(Landroid/content/Intent;)I
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 5622
    if-eqz p1, :cond_0

    .line 5623
    invoke-virtual {p1}, Landroid/content/Intent;->getPairActivityUserId()I

    move-result v0

    return v0

    .line 5624
    :cond_0
    const-string v0, "MultiWindowManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getPairActivityUserId] intent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5625
    const/4 v0, 0x0

    return v0
.end method

.method public getRunningTasksInfo(II)Ljava/util/List;
    .locals 8
    .param p1, "stackId"    # I
    .param p2, "maxNum"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4107
    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    const-string v4, "android.permission.REAL_GET_TASKS"

    const-string v5, "getRunningTasksInfo()"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4111
    .local v0, "refinedRunningTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 4112
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4113
    .local v1, "runningTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    .line 4114
    .local v2, "targetStack":Lcom/android/server/am/ActivityStack;
    if-eqz v2, :cond_0

    .line 4115
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 4116
    const/4 v5, 0x1

    const/4 v6, 0x1

    .line 4115
    invoke-virtual {v2, v1, v3, v5, v6}, Lcom/android/server/am/ActivityStack;->getTasksLocked(Ljava/util/List;IZI)V

    .line 4117
    invoke-virtual {v1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    .line 4118
    int-to-long v6, p2

    .line 4117
    invoke-interface {v3, v6, v7}, Ljava/util/stream/Stream;->limit(J)Ljava/util/stream/Stream;

    move-result-object v3

    .line 4119
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v5

    .line 4117
    invoke-interface {v3, v5}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "refinedRunningTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    check-cast v0, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .restart local v0    # "refinedRunningTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_0
    monitor-exit v4

    .line 4124
    return-object v0

    .line 4111
    .end local v0    # "refinedRunningTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v1    # "runningTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v2    # "targetStack":Lcom/android/server/am/ActivityStack;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public getSnapTargetAspectRatioRect()Landroid/graphics/Rect;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 4788
    sget-boolean v5, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_WINDOW_SUPPORT:Z

    if-eqz v5, :cond_3

    .line 4789
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 4791
    .local v2, "ident":J
    :try_start_0
    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4792
    :try_start_1
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 4793
    .local v0, "full":Lcom/android/server/am/ActivityStack;
    if-nez v0, :cond_0

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4802
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4793
    return-object v8

    .line 4794
    :cond_0
    :try_start_3
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v1

    .line 4795
    .local v1, "fullT":Lcom/android/server/am/TaskRecord;
    if-nez v1, :cond_1

    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 4802
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4795
    return-object v8

    .line 4796
    :cond_1
    :try_start_5
    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v4

    .line 4797
    .local v4, "topAr":Lcom/android/server/am/ActivityRecord;
    if-nez v4, :cond_2

    :try_start_6
    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 4802
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4797
    return-object v8

    .line 4799
    :cond_2
    :try_start_7
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    iget-object v7, v4, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v5, v7}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->getSnapTargetAspectRatioRect(Landroid/os/IBinder;)Landroid/graphics/Rect;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v5

    :try_start_8
    monitor-exit v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 4802
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4799
    return-object v5

    .line 4791
    .end local v0    # "full":Lcom/android/server/am/ActivityStack;
    .end local v1    # "fullT":Lcom/android/server/am/TaskRecord;
    .end local v4    # "topAr":Lcom/android/server/am/ActivityRecord;
    :catchall_0
    move-exception v5

    :try_start_9
    monitor-exit v6

    throw v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 4801
    :catchall_1
    move-exception v5

    .line 4802
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4801
    throw v5

    .line 4805
    .end local v2    # "ident":J
    :cond_3
    return-object v8
.end method

.method public getStackBehindFreeformLocked()Lcom/android/server/am/ActivityStack;
    .locals 5

    .prologue
    .line 1210
    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    iget-object v2, v3, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    .line 1211
    .local v2, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    const/4 v1, -0x1

    .line 1212
    .local v1, "idxFreeform":I
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1213
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityStack;

    iget v3, v3, Lcom/android/server/am/ActivityStack;->mStackId:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 1214
    move v1, v0

    .line 1219
    :cond_0
    if-lez v1, :cond_2

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityStack;

    :goto_1
    return-object v3

    .line 1212
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1219
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getStackIdsShowWhenLocked()I
    .locals 1

    .prologue
    .line 1974
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    invoke-interface {v0}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->getStackIdsShowWhenLocked()I

    move-result v0

    return v0
.end method

.method public getSupportScreenBounds(Lcom/android/server/am/TaskRecord;)Landroid/graphics/Rect;
    .locals 4
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    .prologue
    const/4 v3, 0x0

    .line 629
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->isResizeable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 642
    return-object v3

    .line 630
    :cond_0
    const/4 v0, -0x1

    .line 631
    .local v0, "appScreenOrientation":I
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 632
    .local v1, "topActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_1

    .line 633
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    iget-object v3, v1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v2, v3}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->isValidAppToken(Landroid/view/IApplicationToken;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 634
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService;->getAppOrientation(Landroid/view/IApplicationToken;)I

    move-result v0

    .line 640
    :cond_1
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/android/server/am/MultiWindowManagerService;->getSupportScreenBounds(Lcom/android/server/am/TaskRecord;I)Landroid/graphics/Rect;

    move-result-object v2

    return-object v2

    .line 635
    :cond_2
    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_1

    .line 637
    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v2, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    goto :goto_0
.end method

.method public getTargetStackRect(I)Landroid/graphics/Rect;
    .locals 4
    .param p1, "stackId"    # I

    .prologue
    const/4 v3, 0x0

    .line 4811
    sget-boolean v1, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_WINDOW_SUPPORT:Z

    if-eqz v1, :cond_1

    .line 4812
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    .line 4813
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 4814
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/server/am/ActivityStack;->mBounds:Landroid/graphics/Rect;

    if-eqz v1, :cond_0

    .line 4815
    new-instance v1, Landroid/graphics/Rect;

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mBounds:Landroid/graphics/Rect;

    invoke-direct {v1, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v1

    :cond_0
    monitor-exit v2

    .line 4819
    .end local v0    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_1
    return-object v3

    .line 4812
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getTaskMaxDimensions(Landroid/graphics/Point;Landroid/content/pm/ActivityInfo;)V
    .locals 7
    .param p1, "maxTaskDimensions"    # Landroid/graphics/Point;
    .param p2, "info"    # Landroid/content/pm/ActivityInfo;

    .prologue
    const v6, 0x3bcccccd    # 0.00625f

    const/4 v3, -0x1

    .line 1847
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v4, p2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v4, :cond_0

    .line 1849
    iget-object v4, p2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "com.samsung.android.sdk.multiwindow.maxWidth"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 1850
    .local v2, "maxWidth":I
    iget-object v4, p2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "com.samsung.android.sdk.multiwindow.maxHeight"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1851
    .local v1, "maxHeight":I
    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iget v0, v4, Landroid/content/res/Configuration;->densityDpi:I

    .line 1852
    .local v0, "currentDensityDpi":I
    if-gez v2, :cond_1

    const/4 v2, -0x1

    .line 1853
    :goto_0
    if-gez v1, :cond_2

    move v1, v3

    .line 1854
    :goto_1
    invoke-virtual {p1, v2, v1}, Landroid/graphics/Point;->set(II)V

    .line 1846
    .end local v0    # "currentDensityDpi":I
    .end local v1    # "maxHeight":I
    .end local v2    # "maxWidth":I
    :cond_0
    return-void

    .line 1852
    .restart local v0    # "currentDensityDpi":I
    .restart local v1    # "maxHeight":I
    .restart local v2    # "maxWidth":I
    :cond_1
    mul-int v4, v2, v0

    int-to-float v4, v4

    mul-float/2addr v4, v6

    float-to-int v2, v4

    goto :goto_0

    .line 1853
    :cond_2
    mul-int v3, v1, v0

    int-to-float v3, v3

    mul-float/2addr v3, v6

    float-to-int v1, v3

    goto :goto_1
.end method

.method public getTaskMinDimensions(Landroid/graphics/Point;Landroid/content/pm/ActivityInfo;)V
    .locals 7
    .param p1, "minTaskDimensions"    # Landroid/graphics/Point;
    .param p2, "info"    # Landroid/content/pm/ActivityInfo;

    .prologue
    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v5, 0x0

    .line 1830
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    iget-object v4, p2, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    if-eqz v4, :cond_1

    .line 1831
    iget-object v4, p2, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iget v3, v4, Landroid/content/pm/ActivityInfo$WindowLayout;->minWidth:I

    .line 1832
    .local v3, "minWidth":I
    iget-object v4, p2, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iget v2, v4, Landroid/content/pm/ActivityInfo$WindowLayout;->minHeight:I

    .line 1833
    .local v2, "minHeight":I
    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iget v4, v4, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v0, v4

    .line 1834
    .local v0, "currentDensityDpi":F
    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowManagerService;->getInitialDisplayDensity(I)I

    move-result v4

    int-to-float v1, v4

    .line 1835
    .local v1, "deviceDensity":F
    const/4 v4, 0x0

    cmpl-float v4, v1, v4

    if-lez v4, :cond_0

    .line 1836
    if-gez v3, :cond_2

    const/4 v3, -0x1

    .line 1838
    :goto_0
    if-gez v2, :cond_3

    const/4 v2, -0x1

    .line 1841
    :cond_0
    :goto_1
    invoke-virtual {p1, v3, v2}, Landroid/graphics/Point;->set(II)V

    .line 1829
    .end local v0    # "currentDensityDpi":F
    .end local v1    # "deviceDensity":F
    .end local v2    # "minHeight":I
    .end local v3    # "minWidth":I
    :cond_1
    return-void

    .line 1837
    .restart local v0    # "currentDensityDpi":F
    .restart local v1    # "deviceDensity":F
    .restart local v2    # "minHeight":I
    .restart local v3    # "minWidth":I
    :cond_2
    int-to-float v4, v3

    mul-float/2addr v4, v0

    div-float/2addr v4, v1

    add-float/2addr v4, v6

    float-to-int v3, v4

    goto :goto_0

    .line 1839
    :cond_3
    int-to-float v4, v2

    mul-float/2addr v4, v0

    div-float/2addr v4, v1

    add-float/2addr v4, v6

    float-to-int v2, v4

    goto :goto_1
.end method

.method public getTopRunningTaskInfo(I)Ljava/util/List;
    .locals 7
    .param p1, "stackId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4129
    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    const-string v4, "android.permission.REAL_GET_TASKS"

    const-string v5, "getTopRunningTaskInfo()"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4131
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4133
    .local v2, "topRunningTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 4134
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4135
    .local v0, "runningTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 4136
    .local v1, "targetStack":Lcom/android/server/am/ActivityStack;
    if-eqz v1, :cond_0

    .line 4137
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 4138
    const/4 v5, 0x1

    const/4 v6, 0x1

    .line 4137
    invoke-virtual {v1, v0, v3, v5, v6}, Lcom/android/server/am/ActivityStack;->getTasksLocked(Ljava/util/List;IZI)V

    .line 4139
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 4140
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v4

    .line 4146
    return-object v2

    .line 4133
    .end local v0    # "runningTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v1    # "targetStack":Lcom/android/server/am/ActivityStack;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public hasDockedStack()Z
    .locals 1

    .prologue
    .line 4031
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    invoke-interface {v0}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->hasDockedStack()Z

    move-result v0

    return v0
.end method

.method public init()V
    .locals 5

    .prologue
    .line 364
    invoke-direct {p0}, Lcom/android/server/am/MultiWindowManagerService;->loadResources()V

    .line 365
    invoke-direct {p0}, Lcom/android/server/am/MultiWindowManagerService;->readGrantPermissionComponents()V

    .line 366
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mMinimizeContainerService:Landroid/content/Intent;

    new-instance v2, Landroid/content/ComponentName;

    .line 367
    const-string v3, "com.samsung.android.app.multiwindow"

    .line 368
    const-string v4, "com.samsung.android.app.multiwindow.minimizecontainer.MinimizeContainerService"

    .line 366
    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 370
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 371
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.COOLDOWN_FREEFORM"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 372
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mCoolDownFreeformReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 363
    return-void
.end method

.method initMultiWindowDynamicEnable(I)V
    .locals 7
    .param p1, "userId"    # I

    .prologue
    const/4 v6, 0x0

    .line 3227
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v4

    if-nez v4, :cond_2

    .line 3228
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    .line 3229
    const v5, 0x11200b3

    .line 3228
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    .line 3231
    :goto_0
    if-eqz v3, :cond_3

    .line 3236
    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 3237
    .local v2, "resolver":Landroid/content/ContentResolver;
    const-string v4, "mobile_keyboard"

    invoke-static {v2, v4, v6, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-eqz v4, :cond_4

    const/4 v0, 0x1

    .line 3238
    .local v0, "mobileKeyboardEnabled":Z
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MultiPhoneWindowManager : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " reason : mobile_keyboard"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3239
    .local v1, "requester":Ljava/lang/String;
    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mMWOffRequestersForAllUsers:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 3245
    :cond_0
    :goto_2
    invoke-direct {p0, p1}, Lcom/android/server/am/MultiWindowManagerService;->isMultiWindowForceOnRequested(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 3246
    const/4 v3, 0x1

    .line 3251
    :cond_1
    :goto_3
    invoke-direct {p0, v3, p1}, Lcom/android/server/am/MultiWindowManagerService;->setMultiWindowDynamicEnabled(ZI)V

    .line 3226
    return-void

    .line 3227
    .end local v0    # "mobileKeyboardEnabled":Z
    .end local v1    # "requester":Ljava/lang/String;
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    :cond_2
    const/4 v3, 0x0

    .local v3, "supportsMultiWindow":Z
    goto :goto_0

    .line 3232
    .end local v3    # "supportsMultiWindow":Z
    :cond_3
    return-void

    .line 3237
    .restart local v2    # "resolver":Landroid/content/ContentResolver;
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "mobileKeyboardEnabled":Z
    goto :goto_1

    .line 3240
    .restart local v1    # "requester":Ljava/lang/String;
    :cond_5
    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mMWOffRequestersForAllUsers:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 3247
    :cond_6
    invoke-direct {p0, p1}, Lcom/android/server/am/MultiWindowManagerService;->isMultiWindowOffRequested(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3248
    const/4 v3, 0x0

    .restart local v3    # "supportsMultiWindow":Z
    goto :goto_3
.end method

.method initMultiWindowSettings(I)V
    .locals 11
    .param p1, "userId"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v10, -0x1

    .line 2356
    iget-object v8, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 2357
    .local v5, "resolver":Landroid/content/ContentResolver;
    iget-object v8, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const-string v9, "android.software.freeform_window_management"

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    .line 2358
    .local v3, "freeformWindowManagement":Z
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v8

    if-nez v8, :cond_2

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x11200b3

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    .line 2360
    .local v6, "supportsMultiWindow":Z
    :goto_0
    if-eqz v6, :cond_1

    .line 2361
    const-string v8, "set_multiwindow_feature_list"

    invoke-static {v5, v8, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 2362
    .local v1, "currentValue":Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->parseSettingDB(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 2365
    .local v2, "feautreList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v8, "multiwindow_enabled"

    invoke-static {v8, v2}, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->addSettingDB(Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v0

    .line 2366
    .local v0, "changed":Z
    const-string v8, "multiinstance_support"

    invoke-static {v8, v2}, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->addSettingDB(Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v8

    or-int/2addr v0, v8

    .line 2368
    if-eqz v3, :cond_3

    .line 2369
    const-string v8, "freeform_support"

    invoke-static {v8, v2}, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->addSettingDB(Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v8

    or-int/2addr v0, v8

    .line 2370
    const-string v8, "freeform_guide_resize"

    invoke-static {v8, v2}, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->addSettingDB(Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v8

    or-int/2addr v0, v8

    .line 2371
    const-string v8, "freeform_density_change"

    invoke-static {v8, v2}, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->addSettingDB(Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v8

    or-int/2addr v0, v8

    .line 2372
    const-string v8, "freeform_focused_frame"

    invoke-static {v8, v2}, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->addSettingDB(Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v8

    or-int/2addr v0, v8

    .line 2373
    const-string v8, "db_popup_view_shortcut"

    invoke-static {v5, v8, v10, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    if-ne v8, v10, :cond_0

    .line 2374
    const-string v8, "db_popup_view_shortcut"

    invoke-static {v5, v8, v7, p1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 2383
    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    .line 2384
    invoke-static {v2}, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->makeSettingDB(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v4

    .line 2385
    .local v4, "nextValue":Ljava/lang/String;
    const-string v7, "set_multiwindow_feature_list"

    invoke-static {v5, v7, v4, p1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 2386
    sget-boolean v7, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    if-eqz v7, :cond_1

    const-string v7, "MultiWindowManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "initMultiWindowSettings: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2355
    .end local v0    # "changed":Z
    .end local v1    # "currentValue":Ljava/lang/String;
    .end local v2    # "feautreList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "nextValue":Ljava/lang/String;
    :cond_1
    return-void

    .end local v6    # "supportsMultiWindow":Z
    :cond_2
    move v6, v7

    .line 2358
    goto :goto_0

    .line 2377
    .restart local v0    # "changed":Z
    .restart local v1    # "currentValue":Ljava/lang/String;
    .restart local v2    # "feautreList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v6    # "supportsMultiWindow":Z
    :cond_3
    const-string v7, "freeform_support"

    invoke-static {v7, v2}, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->removeSettingDB(Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v7

    or-int/2addr v0, v7

    .line 2378
    const-string v7, "freeform_guide_resize"

    invoke-static {v7, v2}, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->removeSettingDB(Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v7

    or-int/2addr v0, v7

    .line 2379
    const-string v7, "freeform_density_change"

    invoke-static {v7, v2}, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->removeSettingDB(Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v7

    or-int/2addr v0, v7

    .line 2380
    const-string v7, "freeform_focused_frame"

    invoke-static {v7, v2}, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->removeSettingDB(Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v7

    or-int/2addr v0, v7

    goto :goto_1
.end method

.method public initializePairActivityModeLocked(Lcom/android/server/am/TaskRecord;Z)V
    .locals 5
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "initLaunchedPairApp"    # Z

    .prologue
    const/4 v3, 0x0

    .line 5602
    if-eqz p2, :cond_0

    .line 5603
    iput-boolean v3, p1, Lcom/android/server/am/TaskRecord;->isLaunchedPairApp:Z

    .line 5605
    :cond_0
    iget-object v0, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 5606
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "activityNdx":I
    :goto_0
    if-ltz v1, :cond_3

    .line 5607
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 5609
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v2, :cond_1

    iget-boolean v3, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v3, :cond_2

    .line 5606
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 5613
    :cond_2
    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    if-eqz v3, :cond_1

    .line 5614
    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    .line 5615
    const/4 v4, -0x1

    .line 5614
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPairActivity(I)V

    goto :goto_1

    .line 5601
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_3
    return-void
.end method

.method public isAllTaskHiddenLocked(Lcom/android/server/am/ActivityStack;Z)Z
    .locals 5
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;
    .param p2, "checkNoMinimizedTarget"    # Z

    .prologue
    const/4 v4, 0x0

    .line 1507
    if-eqz p1, :cond_3

    .line 1508
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v0

    .line 1509
    .local v0, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "tr$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    .line 1510
    .local v1, "tr":Lcom/android/server/am/TaskRecord;
    if-eqz p2, :cond_1

    .line 1511
    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mNoMinimizedTarget:Lcom/android/server/am/TaskRecord;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mNoMinimizedTarget:Lcom/android/server/am/TaskRecord;

    if-eq v1, v3, :cond_0

    .line 1516
    :cond_1
    iget v3, v1, Lcom/android/server/am/TaskRecord;->mHiddenState:I

    if-nez v3, :cond_0

    .line 1517
    return v4

    .line 1520
    .end local v1    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_2
    const/4 v3, 0x1

    return v3

    .line 1523
    .end local v0    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    .end local v2    # "tr$iterator":Ljava/util/Iterator;
    :cond_3
    return v4
.end method

.method public isAppToBlockFloatingMultiWindows(Ljava/lang/String;)Z
    .locals 1
    .param p1, "component"    # Ljava/lang/String;

    .prologue
    .line 2228
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mAppsToBlockFloatingMultiWindows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2229
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mAppsToBlockFloatingMultiWindows:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 2231
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isAutoResizingEnabled()Z
    .locals 1

    .prologue
    .line 1090
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mAutoResizeController:Lcom/android/server/am/MultiWindowAutoResizeController;

    invoke-virtual {v0}, Lcom/android/server/am/MultiWindowAutoResizeController;->isAutoResized()Z

    move-result v0

    return v0
.end method

.method public isDeferResumeTopActivityLocked()Z
    .locals 1

    .prologue
    .line 1334
    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v0, :cond_0

    .line 1335
    iget-boolean v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mDeferResume:Z

    return v0

    .line 1337
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isDexCompatConfigurationTargetLocked(Landroid/content/pm/ApplicationInfo;Lcom/android/server/am/ActivityRecord;)Z
    .locals 5
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 886
    iget-boolean v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mIsDesktopModeEnabled:Z

    if-eqz v3, :cond_5

    if-eqz p1, :cond_5

    .line 887
    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService$Lifecycle;->getService()Lcom/android/server/desktopmode/DesktopModeService;

    move-result-object v0

    .line 888
    .local v0, "dexService":Lcom/android/server/desktopmode/DesktopModeService;
    if-eqz v0, :cond_5

    .line 889
    const/4 v1, 0x0

    .line 890
    .local v1, "launchPolicy":I
    if-nez p2, :cond_2

    .line 891
    invoke-virtual {v0, p1, v4}, Lcom/android/server/desktopmode/DesktopModeService;->getLaunchPolicyForPackage(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ActivityInfo;)I

    move-result v1

    .line 909
    :cond_0
    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2

    .line 893
    :cond_2
    iget v3, p2, Lcom/android/server/am/ActivityRecord;->processAppLaunchPolicy:I

    if-nez v3, :cond_3

    .line 894
    invoke-virtual {v0, p1, v4}, Lcom/android/server/desktopmode/DesktopModeService;->getLaunchPolicyForPackage(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ActivityInfo;)I

    move-result v3

    iput v3, p2, Lcom/android/server/am/ActivityRecord;->processAppLaunchPolicy:I

    .line 896
    :cond_3
    iget v1, p2, Lcom/android/server/am/ActivityRecord;->processAppLaunchPolicy:I

    .line 898
    iget-object v3, p2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v3, :cond_0

    iget-object v3, p2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v3, v3, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v3, :cond_0

    iget-object v3, p2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    if-eqz v3, :cond_0

    .line 899
    iget-object v3, p2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v3, v3, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget v3, v3, Lcom/android/server/am/ActivityStack;->mStackId:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 900
    iget v3, p2, Lcom/android/server/am/ActivityRecord;->processAppLaunchPolicy:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_0

    .line 902
    iget-object v3, p2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-boolean v3, v3, Lcom/android/server/am/TaskRecord;->mIsDexCompatEnabled:Z

    if-nez v3, :cond_4

    .line 903
    return v2

    .line 906
    :cond_4
    iget-object v3, p2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0, p1, v3}, Lcom/android/server/desktopmode/DesktopModeService;->getLaunchPolicyForPackage(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ActivityInfo;)I

    move-result v1

    goto :goto_0

    .line 912
    .end local v0    # "dexService":Lcom/android/server/desktopmode/DesktopModeService;
    .end local v1    # "launchPolicy":I
    :cond_5
    return v2
.end method

.method public isDockedPairActivity(Lcom/android/server/am/ActivityRecord;)Z
    .locals 2
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 5642
    if-eqz p1, :cond_1

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_1

    .line 5643
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getPairActivity()I

    move-result v0

    .line 5644
    .local v0, "pairActivtyMode":I
    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 5645
    const/16 v1, 0xb

    if-ne v0, v1, :cond_1

    .line 5646
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 5649
    .end local v0    # "pairActivtyMode":I
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public isEnsureDockedMode()Z
    .locals 1

    .prologue
    .line 4267
    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->ENSURE_DOCKED_VIEW_SUPPORT:Z

    if-eqz v0, :cond_0

    .line 4268
    iget-boolean v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mEnsureDockedMode:Z

    return v0

    .line 4270
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isExpandedDockedStack()Z
    .locals 1

    .prologue
    .line 4007
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    invoke-interface {v0}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->isExpandedDockedStack()Z

    move-result v0

    return v0
.end method

.method public isForceResizable(Landroid/content/pm/ActivityInfo;)Z
    .locals 5
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 2194
    const/4 v2, 0x1

    return v2

    const/4 v2, 0x0

    .line 2195
    .local v2, "resizable":Z
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 2197
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v3, :cond_1

    .line 2198
    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.samsung.android.sdk.multiwindow.enable"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2199
    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.sec.android.support.multiwindow"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 2200
    :goto_0
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x18

    if-ge v3, v4, :cond_3

    .line 2201
    if-nez v1, :cond_2

    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mMultiwindowSupportList:Ljava/util/ArrayList;

    iget-object v4, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 2202
    .local v2, "resizable":Z
    :goto_1
    return v2

    .line 2198
    .local v2, "resizable":Z
    :cond_0
    const/4 v1, 0x1

    .local v1, "hasMetaData":Z
    goto :goto_0

    .line 2197
    .end local v1    # "hasMetaData":Z
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "hasMetaData":Z
    goto :goto_0

    .line 2201
    .end local v1    # "hasMetaData":Z
    :cond_2
    const/4 v2, 0x1

    goto :goto_1

    .line 2200
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public isFreeformStackVisibleLocked()Z
    .locals 1

    .prologue
    .line 1582
    iget-boolean v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mFreeformAlwaysVisible:Z

    return v0
.end method

.method public isFullScreenPairActivity(Lcom/android/server/am/ActivityRecord;)Z
    .locals 3
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v2, 0x1

    .line 5630
    if-eqz p1, :cond_1

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_1

    .line 5631
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getPairActivity()I

    move-result v0

    .line 5632
    .local v0, "pairActivtyMode":I
    if-eq v0, v2, :cond_0

    .line 5633
    const/16 v1, 0xb

    if-ne v0, v1, :cond_1

    .line 5634
    :cond_0
    return v2

    .line 5637
    .end local v0    # "pairActivtyMode":I
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public isGamePackage(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 989
    const/4 v1, 0x0

    .line 990
    .local v1, "result":I
    sget-boolean v3, Lcom/android/server/am/ActivityManagerService;->GAME_TUNER_ENABLED:Z

    if-eqz v3, :cond_1

    .line 991
    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mGameManagerService:Lcom/samsung/android/game/IGameManagerService;

    if-nez v3, :cond_0

    .line 992
    invoke-direct {p0}, Lcom/android/server/am/MultiWindowManagerService;->initGameManagerService()V

    .line 995
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mGameManagerService:Lcom/samsung/android/game/IGameManagerService;

    if-eqz v3, :cond_1

    .line 996
    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mGameManagerService:Lcom/samsung/android/game/IGameManagerService;

    invoke-interface {v3, p1}, Lcom/samsung/android/game/IGameManagerService;->identifyGamePackage(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1002
    :cond_1
    :goto_0
    if-ne v1, v2, :cond_2

    :goto_1
    return v2

    .line 998
    :catch_0
    move-exception v0

    .line 999
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1002
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public isLaunchableForMultiInstance(Landroid/content/pm/ActivityInfo;)Z
    .locals 8
    .param p1, "ai"    # Landroid/content/pm/ActivityInfo;

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 1053
    sget-boolean v2, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->MULTIINSTANCE_SUPPORT:Z

    if-eqz v2, :cond_7

    .line 1054
    if-nez p1, :cond_0

    return v4

    .line 1056
    :cond_0
    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_2

    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 1057
    :goto_0
    iget v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mMaxMultiInstanceCnt:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 1058
    invoke-direct {p0}, Lcom/android/server/am/MultiWindowManagerService;->initMultiInstanceSettings()V

    .line 1061
    :cond_1
    if-eqz v0, :cond_7

    const-string v2, "com.samsung.android.sdk.multiwindow.multiinstance.enable"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1062
    iget v2, p1, Landroid/content/pm/ActivityInfo;->launchMode:I

    if-eq v2, v6, :cond_3

    iget v2, p1, Landroid/content/pm/ActivityInfo;->launchMode:I

    if-eq v2, v7, :cond_3

    .line 1063
    return v5

    .line 1056
    :cond_2
    const/4 v0, 0x0

    .local v0, "applicationMetaData":Landroid/os/Bundle;
    goto :goto_0

    .line 1065
    .end local v0    # "applicationMetaData":Landroid/os/Bundle;
    :cond_3
    if-eqz v0, :cond_4

    .line 1066
    const-string v2, "com.samsung.android.sdk.multiwindow.multiinstance.launchmode"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1067
    .local v1, "metaDataLaunchMode":Ljava/lang/String;
    :cond_4
    if-eqz v1, :cond_7

    .line 1068
    iget v2, p1, Landroid/content/pm/ActivityInfo;->launchMode:I

    if-ne v2, v6, :cond_5

    const-string v2, "singleTask"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1069
    :cond_5
    iget v2, p1, Landroid/content/pm/ActivityInfo;->launchMode:I

    if-ne v2, v7, :cond_7

    const-string v2, "singleInstance"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    .line 1068
    if-eqz v2, :cond_7

    .line 1070
    :cond_6
    return v5

    .line 1076
    .end local v1    # "metaDataLaunchMode":Ljava/lang/String;
    :cond_7
    return v4
.end method

.method public isLaunchingPairActivitiesLocked()Z
    .locals 1

    .prologue
    .line 2115
    iget-boolean v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mLaunchingPairActivities:Z

    return v0
.end method

.method public isMaximizeButtonVisibility(Landroid/os/IBinder;)Z
    .locals 13
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 5556
    iget-object v9, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    const-string v10, "isMaximizeButtonVisibility"

    invoke-virtual {v9, v10}, Lcom/android/server/am/ActivityManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 5557
    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v10

    .line 5558
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v6

    .line 5560
    .local v6, "origId":J
    :try_start_1
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    .line 5561
    .local v5, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v5, :cond_3

    iget-object v9, v5, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v9, :cond_3

    .line 5562
    iget-object v9, v5, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v9}, Lcom/android/server/am/TaskRecord;->getRootActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v8

    .line 5563
    .local v8, "rootActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v8, :cond_1

    iget-object v9, v8, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    if-eqz v9, :cond_1

    iget-object v2, v8, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 5564
    :goto_0
    if-eqz v2, :cond_3

    .line 5565
    iget-object v9, v2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v9, :cond_2

    .line 5566
    const/4 v0, -0x1

    .line 5567
    .local v0, "defaultValue":I
    iget-object v9, v2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v11, "com.samsung.android.sdk.multiwindow.maxWidth"

    const/4 v12, -0x1

    invoke-virtual {v9, v11, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 5568
    .local v4, "maxWidth":I
    iget-object v9, v2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v11, "com.samsung.android.sdk.multiwindow.maxHeight"

    const/4 v12, -0x1

    invoke-virtual {v9, v11, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v3

    .line 5569
    .local v3, "maxHeight":I
    const/4 v9, -0x1

    if-gt v4, v9, :cond_0

    const/4 v9, -0x1

    if-le v3, v9, :cond_3

    .line 5581
    :cond_0
    :try_start_2
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5570
    const/4 v9, 0x0

    monitor-exit v10

    return v9

    .line 5563
    .end local v0    # "defaultValue":I
    .end local v3    # "maxHeight":I
    .end local v4    # "maxWidth":I
    :cond_1
    const/4 v2, 0x0

    .local v2, "info":Landroid/content/pm/ActivityInfo;
    goto :goto_0

    .line 5572
    .end local v2    # "info":Landroid/content/pm/ActivityInfo;
    :cond_2
    :try_start_3
    iget v9, v2, Landroid/content/pm/ActivityInfo;->resizeMode:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez v9, :cond_3

    .line 5581
    :try_start_4
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 5573
    const/4 v9, 0x0

    monitor-exit v10

    return v9

    .line 5581
    .end local v8    # "rootActivity":Lcom/android/server/am/ActivityRecord;
    :cond_3
    :try_start_5
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .end local v5    # "r":Lcom/android/server/am/ActivityRecord;
    :goto_1
    monitor-exit v10

    .line 5585
    const/4 v9, 0x1

    return v9

    .line 5577
    :catch_0
    move-exception v1

    .line 5578
    .local v1, "e":Ljava/lang/Exception;
    :try_start_6
    const-string v9, "MultiWindowManagerService"

    const-string v11, "Can\'t know button visibility."

    invoke-static {v9, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5579
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 5581
    :try_start_7
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    .line 5557
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v6    # "origId":J
    :catchall_0
    move-exception v9

    monitor-exit v10

    throw v9

    .line 5580
    .restart local v6    # "origId":J
    :catchall_1
    move-exception v9

    .line 5581
    :try_start_8
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5580
    throw v9
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
.end method

.method public isMinTaskDimensionsChangedLocked(Lcom/android/server/am/ActivityRecord;)Z
    .locals 8
    .param p1, "activity"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 1755
    if-eqz p1, :cond_4

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v1, :cond_4

    .line 1756
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v4

    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v1, v4, v5}, Lcom/android/server/wm/WindowManagerService;->getBaseDisplaySize(ILandroid/graphics/Point;)V

    .line 1757
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v7, v7}, Landroid/graphics/Point;-><init>(II)V

    .line 1758
    .local v0, "minTaskDimensions":Landroid/graphics/Point;
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-direct {p0, v1, v0, v6}, Lcom/android/server/am/MultiWindowManagerService;->getTaskDimensions(Landroid/content/pm/ActivityInfo;Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 1759
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v1, v4}, Lcom/android/server/am/ActivityStack;->getDisplaySize(Landroid/graphics/Point;)V

    .line 1760
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mDisplaySize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    if-le v1, v4, :cond_1

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mDisplaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    :goto_0
    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 1761
    iget v1, v0, Landroid/graphics/Point;->y:I

    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mDisplaySize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    if-le v1, v4, :cond_2

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mDisplaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    :goto_1
    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 1762
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v4, v4, Lcom/android/server/am/TaskRecord;->mMinWidth:I

    if-ne v1, v4, :cond_0

    iget v1, v0, Landroid/graphics/Point;->y:I

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v4, v4, Lcom/android/server/am/TaskRecord;->mMinHeight:I

    if-eq v1, v4, :cond_3

    :cond_0
    move v1, v2

    :goto_2
    return v1

    .line 1760
    :cond_1
    iget v1, v0, Landroid/graphics/Point;->x:I

    goto :goto_0

    .line 1761
    :cond_2
    iget v1, v0, Landroid/graphics/Point;->y:I

    goto :goto_1

    :cond_3
    move v1, v3

    .line 1762
    goto :goto_2

    .line 1764
    .end local v0    # "minTaskDimensions":Landroid/graphics/Point;
    :cond_4
    return v3
.end method

.method public isMovingMultiWindowTasksToFullScreenLocked()Z
    .locals 1

    .prologue
    .line 1749
    iget-boolean v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mMovingMultiWindowTasksToFullScreen:Z

    return v0
.end method

.method public isPairActivity(Lcom/android/server/am/ActivityRecord;)Z
    .locals 2
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 5654
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    .line 5655
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getPairActivity()I

    move-result v0

    .line 5656
    .local v0, "pairActivtyMode":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 5657
    const/4 v1, 0x1

    return v1

    .line 5660
    .end local v0    # "pairActivtyMode":I
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public isResizable(Landroid/content/pm/ResolveInfo;)Z
    .locals 3
    .param p1, "rInfo"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 2210
    if-nez p1, :cond_0

    .line 2211
    const/4 v2, 0x0

    return v2

    .line 2213
    :cond_0
    const/4 v1, 0x0

    .line 2214
    .local v1, "resizable":Z
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 2215
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_2

    iget v2, v0, Landroid/content/pm/ActivityInfo;->resizeMode:I

    invoke-static {v2}, Landroid/content/pm/ActivityInfo;->isResizeableMode(I)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/server/am/MultiWindowManagerService;->isForceResizable(Landroid/content/pm/ActivityInfo;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2216
    :cond_1
    const/4 v1, 0x1

    .line 2218
    :cond_2
    return v1
.end method

.method public isSnapTargetHideStatusbar()Z
    .locals 1

    .prologue
    .line 4898
    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_WINDOW_SUPPORT:Z

    if-eqz v0, :cond_0

    .line 4899
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    invoke-interface {v0}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->isSnapTargetHideStatusbar()Z

    move-result v0

    return v0

    .line 4901
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSnapTargetTranslucentNavigationBar()Z
    .locals 1

    .prologue
    .line 4907
    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_WINDOW_SUPPORT:Z

    if-eqz v0, :cond_0

    .line 4908
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    invoke-interface {v0}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->isSnapTargetTranslucentNavigationBar()Z

    move-result v0

    return v0

    .line 4910
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSnapWindowResizing()Z
    .locals 1

    .prologue
    .line 4889
    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_WINDOW_SUPPORT:Z

    if-eqz v0, :cond_0

    .line 4890
    iget-boolean v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mSnapWindowResizing:Z

    return v0

    .line 4892
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSnapWindowRunning()Z
    .locals 2

    .prologue
    .line 4878
    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_WINDOW_SUPPORT:Z

    if-eqz v0, :cond_0

    .line 4879
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    .line 4880
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mSnapWindowRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    .line 4879
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 4883
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSnapWindowTarget(I)Z
    .locals 3
    .param p1, "taskId"    # I

    .prologue
    .line 4916
    sget-boolean v1, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_WINDOW_SUPPORT:Z

    if-eqz v1, :cond_1

    .line 4917
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    .line 4918
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v0

    .line 4919
    .local v0, "task":Lcom/android/server/am/TaskRecord;
    if-eqz v0, :cond_0

    .line 4920
    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->isSnapWindowTarget()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v2

    return v1

    :cond_0
    monitor-exit v2

    .line 4924
    .end local v0    # "task":Lcom/android/server/am/TaskRecord;
    :cond_1
    const/4 v1, 0x0

    return v1

    .line 4917
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public isStatusBarVisible()Z
    .locals 1

    .prologue
    .line 4019
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    invoke-interface {v0}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->isStatusBarVisible()Z

    move-result v0

    return v0
.end method

.method public isTaskOrientationChangedLocked(Lcom/android/server/am/ActivityRecord;)Z
    .locals 10
    .param p1, "activity"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v5, 0x1

    const/4 v9, 0x0

    .line 588
    if-eqz p1, :cond_5

    .line 589
    const/4 v2, -0x1

    .line 590
    .local v2, "screenOrientation":I
    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v6, v7}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->isValidAppToken(Landroid/view/IApplicationToken;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 591
    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v6, v7}, Lcom/android/server/wm/WindowManagerService;->getAppOrientation(Landroid/view/IApplicationToken;)I

    move-result v2

    .line 597
    :cond_0
    :goto_0
    invoke-static {v2}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$Utils;->convertToConfigurationOrientation(I)I

    move-result v0

    .line 598
    .local v0, "appOrientation":I
    if-nez v0, :cond_2

    .line 599
    return v9

    .line 592
    .end local v0    # "appOrientation":I
    :cond_1
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    if-eqz v6, :cond_0

    .line 594
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v6, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    goto :goto_0

    .line 601
    .restart local v0    # "appOrientation":I
    :cond_2
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 602
    .local v3, "task":Lcom/android/server/am/TaskRecord;
    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->setEmpty()V

    .line 604
    iget-boolean v6, v3, Lcom/android/server/am/TaskRecord;->mFullscreen:Z

    if-eqz v6, :cond_3

    .line 605
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 606
    .local v1, "displaySize":Landroid/graphics/Point;
    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v6, v6, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v6, v1}, Lcom/android/server/am/ActivityStack;->getRealDisplaySize(Landroid/graphics/Point;)V

    .line 607
    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mTmpRect:Landroid/graphics/Rect;

    iget v7, v1, Landroid/graphics/Point;->x:I

    iget v8, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v6, v9, v9, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 612
    .end local v1    # "displaySize":Landroid/graphics/Point;
    :goto_1
    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-le v6, v7, :cond_4

    .line 613
    const/4 v4, 0x2

    .line 614
    .local v4, "taskOrientation":I
    :goto_2
    if-eq v4, v0, :cond_5

    .line 615
    return v5

    .line 609
    .end local v4    # "taskOrientation":I
    :cond_3
    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mTmpRect:Landroid/graphics/Rect;

    iget-object v7, v3, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_1

    :cond_4
    move v4, v5

    .line 613
    goto :goto_2

    .line 619
    .end local v0    # "appOrientation":I
    .end local v2    # "screenOrientation":I
    .end local v3    # "task":Lcom/android/server/am/TaskRecord;
    :cond_5
    return v9
.end method

.method public isVisibleStackBehindFreeformLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;)Z
    .locals 13
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;
    .param p2, "starting"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 1224
    sget-boolean v11, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v11, :cond_e

    .line 1225
    if-eqz p1, :cond_0

    iget v11, p1, Lcom/android/server/am/ActivityStack;->mStackId:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_1

    .line 1226
    :cond_0
    const/4 v11, 0x0

    return v11

    .line 1230
    :cond_1
    iget-boolean v11, p0, Lcom/android/server/am/MultiWindowManagerService;->mIsDesktopModeEnabled:Z

    if-eqz v11, :cond_3

    .line 1231
    iget-object v11, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 1232
    .local v0, "freeformStack":Lcom/android/server/am/ActivityStack;
    if-eqz v0, :cond_3

    .line 1233
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v9

    .line 1234
    .local v9, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "task$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/TaskRecord;

    .line 1235
    .local v7, "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v7}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v10

    .line 1236
    .local v10, "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v10, :cond_2

    iget-boolean v11, v7, Lcom/android/server/am/TaskRecord;->mFullscreen:Z

    if-eqz v11, :cond_2

    .line 1237
    invoke-virtual {v7}, Lcom/android/server/am/TaskRecord;->hasVisibleFullscreenActivityLocked()Z

    move-result v11

    .line 1236
    if-eqz v11, :cond_2

    .line 1238
    iget v11, v7, Lcom/android/server/am/TaskRecord;->mHiddenState:I

    if-nez v11, :cond_2

    .line 1239
    const/4 v11, 0x0

    return v11

    .line 1246
    .end local v0    # "freeformStack":Lcom/android/server/am/ActivityStack;
    .end local v7    # "task":Lcom/android/server/am/TaskRecord;
    .end local v8    # "task$iterator":Ljava/util/Iterator;
    .end local v9    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    .end local v10    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_3
    sget-boolean v11, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_ADJUST_STACK_ORDER:Z

    if-eqz v11, :cond_4

    .line 1247
    invoke-virtual {p0}, Lcom/android/server/am/MultiWindowManagerService;->isFreeformStackVisibleLocked()Z

    move-result v11

    if-nez v11, :cond_4

    .line 1248
    const/4 v11, 0x0

    return v11

    .line 1252
    :cond_4
    iget-object v11, p1, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    iget-object v5, v11, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mParentActivity:Lcom/android/server/am/ActivityRecord;

    .line 1253
    .local v5, "parent":Lcom/android/server/am/ActivityRecord;
    if-eqz v5, :cond_5

    .line 1254
    iget-object v11, v5, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object p1, v11, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 1257
    :cond_5
    iget-object v11, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v11, v11, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    iget-object v6, v11, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    .line 1258
    .local v6, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    const/4 v3, -0x1

    .line 1260
    .local v3, "idxFreeform":I
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v2, v11, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_6

    .line 1261
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/ActivityStack;

    iget v11, v11, Lcom/android/server/am/ActivityStack;->mStackId:I

    if-nez v11, :cond_7

    .line 1269
    :cond_6
    :goto_1
    if-lez v3, :cond_e

    .line 1270
    add-int/lit8 v11, v3, -0x1

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStack;

    .line 1271
    .local v1, "frontStack":Lcom/android/server/am/ActivityStack;
    const/4 v4, 0x0

    .line 1272
    .local v4, "pairedStack":Lcom/android/server/am/ActivityStack;
    if-nez v1, :cond_9

    .line 1273
    const/4 v11, 0x0

    return v11

    .line 1264
    .end local v1    # "frontStack":Lcom/android/server/am/ActivityStack;
    .end local v4    # "pairedStack":Lcom/android/server/am/ActivityStack;
    :cond_7
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/ActivityStack;

    iget v11, v11, Lcom/android/server/am/ActivityStack;->mStackId:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_8

    .line 1265
    move v3, v2

    .line 1266
    goto :goto_1

    .line 1260
    :cond_8
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1276
    .restart local v1    # "frontStack":Lcom/android/server/am/ActivityStack;
    .restart local v4    # "pairedStack":Lcom/android/server/am/ActivityStack;
    :cond_9
    add-int/lit8 v11, v3, -0x1

    if-lez v11, :cond_b

    .line 1277
    iget v11, v1, Lcom/android/server/am/ActivityStack;->mStackId:I

    const/4 v12, 0x3

    if-eq v11, v12, :cond_a

    invoke-direct {p0, v1, p2}, Lcom/android/server/am/MultiWindowManagerService;->isStackTranslucent(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 1281
    :cond_a
    add-int/lit8 v11, v3, -0x2

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "pairedStack":Lcom/android/server/am/ActivityStack;
    check-cast v4, Lcom/android/server/am/ActivityStack;

    .line 1289
    :cond_b
    if-eq p1, v1, :cond_c

    if-ne p1, v4, :cond_d

    :cond_c
    const/4 v11, 0x1

    :goto_2
    return v11

    :cond_d
    const/4 v11, 0x0

    goto :goto_2

    .line 1292
    .end local v1    # "frontStack":Lcom/android/server/am/ActivityStack;
    .end local v2    # "i":I
    .end local v3    # "idxFreeform":I
    .end local v5    # "parent":Lcom/android/server/am/ActivityRecord;
    .end local v6    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_e
    const/4 v11, 0x0

    return v11
.end method

.method public logMultiWindowBehavior(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "extra"    # Ljava/lang/String;

    .prologue
    .line 4605
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    invoke-interface {v0, p1, p2}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->logMultiWindowBehavior(Ljava/lang/String;Ljava/lang/String;)V

    .line 4604
    return-void
.end method

.method public logMultiWindowBehavior(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "feature"    # Ljava/lang/String;
    .param p3, "extra"    # Ljava/lang/String;

    .prologue
    .line 4610
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->logMultiWindowBehavior(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4609
    return-void
.end method

.method public logMultiWindowBehavior(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "features"    # [Ljava/lang/String;
    .param p3, "extras"    # [Ljava/lang/String;

    .prologue
    .line 4620
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->logMultiWindowBehavior(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 4619
    return-void
.end method

.method public logMultiWindowBehavior([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p1, "features"    # [Ljava/lang/String;
    .param p2, "extras"    # [Ljava/lang/String;

    .prologue
    .line 4615
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    invoke-interface {v0, p1, p2}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->logMultiWindowBehavior([Ljava/lang/String;[Ljava/lang/String;)V

    .line 4614
    return-void
.end method

.method public logSnapWindowComplete(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "snapBy"    # Ljava/lang/String;
    .param p2, "SnapPackageName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4588
    sget-boolean v2, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v2, :cond_0

    .line 4590
    new-array v1, v5, [Ljava/lang/String;

    .line 4591
    .local v1, "features":[Ljava/lang/String;
    new-array v0, v5, [Ljava/lang/String;

    .line 4593
    .local v0, "extra":[Ljava/lang/String;
    const-string v2, "SNBY"

    aput-object v2, v1, v3

    .line 4594
    aput-object p1, v0, v3

    .line 4596
    const-string v2, "SNPK"

    aput-object v2, v1, v4

    .line 4597
    aput-object p2, v0, v4

    .line 4598
    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/MultiWindowManagerService;->logMultiWindowBehavior([Ljava/lang/String;[Ljava/lang/String;)V

    .line 4585
    .end local v0    # "extra":[Ljava/lang/String;
    .end local v1    # "features":[Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public logSplitWindowComplete(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "splitBy"    # Ljava/lang/String;
    .param p2, "fullStackPackageName"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 4553
    sget-boolean v6, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v6, :cond_1

    .line 4555
    new-array v2, v9, [Ljava/lang/String;

    .line 4556
    .local v2, "features":[Ljava/lang/String;
    new-array v1, v9, [Ljava/lang/String;

    .line 4558
    .local v1, "extra":[Ljava/lang/String;
    const-string v6, "SPBY"

    aput-object v6, v2, v7

    .line 4559
    aput-object p1, v1, v7

    .line 4561
    const-string v6, "SPPA"

    aput-object v6, v2, v8

    .line 4563
    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 4564
    .local v0, "dockedStack":Lcom/android/server/am/ActivityStack;
    if-eqz v0, :cond_2

    .line 4565
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    .line 4567
    .local v4, "topActivity":Lcom/android/server/am/ActivityRecord;
    :goto_0
    if-eqz v4, :cond_3

    .line 4568
    iget-object v6, v4, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    aput-object v6, v1, v8

    .line 4573
    :goto_1
    if-nez p2, :cond_5

    .line 4574
    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v6, v8}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    .line 4575
    .local v3, "fullStack":Lcom/android/server/am/ActivityStack;
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    .line 4576
    .end local v4    # "topActivity":Lcom/android/server/am/ActivityRecord;
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v7, v1, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "|"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v4, :cond_0

    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    :cond_0
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v8

    .line 4581
    .end local v3    # "fullStack":Lcom/android/server/am/ActivityStack;
    :goto_3
    invoke-virtual {p0, v2, v1}, Lcom/android/server/am/MultiWindowManagerService;->logMultiWindowBehavior([Ljava/lang/String;[Ljava/lang/String;)V

    .line 4550
    .end local v0    # "dockedStack":Lcom/android/server/am/ActivityStack;
    .end local v1    # "extra":[Ljava/lang/String;
    .end local v2    # "features":[Ljava/lang/String;
    :cond_1
    return-void

    .restart local v0    # "dockedStack":Lcom/android/server/am/ActivityStack;
    .restart local v1    # "extra":[Ljava/lang/String;
    .restart local v2    # "features":[Ljava/lang/String;
    :cond_2
    move-object v4, v5

    .line 4565
    goto :goto_0

    .line 4570
    .restart local v4    # "topActivity":Lcom/android/server/am/ActivityRecord;
    :cond_3
    aput-object v5, v1, v8

    goto :goto_1

    .line 4575
    .restart local v3    # "fullStack":Lcom/android/server/am/ActivityStack;
    :cond_4
    const/4 v4, 0x0

    .local v4, "topActivity":Lcom/android/server/am/ActivityRecord;
    goto :goto_2

    .line 4578
    .end local v3    # "fullStack":Lcom/android/server/am/ActivityStack;
    .local v4, "topActivity":Lcom/android/server/am/ActivityRecord;
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v1, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v8

    goto :goto_3
.end method

.method public makeGhostFreeform(Landroid/os/IBinder;I)V
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "captionHeight"    # I

    .prologue
    .line 3642
    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v0, :cond_0

    .line 3643
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    invoke-interface {v0, p1, p2}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->makeGhostFreeformLocked(Landroid/os/IBinder;I)V

    .line 3641
    :cond_0
    return-void
.end method

.method public maximizeStackByDivider(Z)V
    .locals 2
    .param p1, "toTop"    # Z

    .prologue
    .line 3929
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/MultiWindowManagerService;->moveDockedTasksToFullscreenStack(ZZ)Z

    .line 3932
    const-string v0, "DOOF"

    .line 3933
    const-string v1, "DividerCloseButton"

    .line 3932
    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/MultiWindowManagerService;->logMultiWindowBehavior(Ljava/lang/String;Ljava/lang/String;)V

    .line 3928
    return-void
.end method

.method public maximizeTopTask()Z
    .locals 5

    .prologue
    .line 5396
    sget-boolean v2, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v2, :cond_1

    .line 5398
    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 5399
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .local v1, "topActivity":Lcom/android/server/am/ActivityRecord;
    monitor-exit v3

    .line 5401
    if-eqz v1, :cond_1

    .line 5402
    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget v2, v2, Lcom/android/server/am/ActivityStack;->mStackId:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 5403
    sget-boolean v2, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "MultiWindowManagerService_Bixby"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "maximizeTopTask, taskId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v4, v4, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", topActivity="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5405
    :cond_0
    :try_start_1
    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {p0, v2}, Lcom/android/server/am/MultiWindowManagerService;->exitMultiWindow(Landroid/os/IBinder;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 5409
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 5398
    .end local v1    # "topActivity":Lcom/android/server/am/ActivityRecord;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 5406
    .restart local v1    # "topActivity":Lcom/android/server/am/ActivityRecord;
    :catch_0
    move-exception v0

    .line 5407
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 5413
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "topActivity":Lcom/android/server/am/ActivityRecord;
    :cond_1
    sget-boolean v2, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "MultiWindowManagerService_Bixby"

    const-string v3, "maximizeTopTask, unable to maximize app."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5414
    :cond_2
    const/4 v2, 0x0

    return v2
.end method

.method public minimizeAllFreeform(I)Z
    .locals 3
    .param p1, "excludeTaskId"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3607
    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v0, :cond_2

    .line 3608
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    .line 3609
    :try_start_0
    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_ADJUST_STACK_ORDER:Z

    if-eqz v0, :cond_0

    .line 3610
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mRequestFreefomInvisible:Z

    .line 3611
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/am/MultiWindowManagerService;->setFreeformStackVisibilityLocked(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 3612
    return v2

    .line 3615
    :cond_0
    if-lez p1, :cond_1

    .line 3616
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/am/MultiWindowManagerService;->minimizeOhterFreeformsLocked(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 3618
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/am/MultiWindowManagerService;->minimizeAllTasksInFreeformLocked()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 3608
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 3623
    :cond_2
    return v1
.end method

.method public minimizeAllTasksInFreeformLocked()Z
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 1376
    const/4 v3, 0x0

    .line 1377
    .local v3, "result":Z
    sget-boolean v7, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v7, :cond_0

    .line 1378
    sget-boolean v7, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_ADJUST_STACK_ORDER:Z

    if-eqz v7, :cond_1

    .line 1419
    .end local v3    # "result":Z
    :cond_0
    :goto_0
    return v3

    .line 1379
    .restart local v3    # "result":Z
    :cond_1
    sget-boolean v7, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    if-eqz v7, :cond_2

    const-string v7, "MultiWindowManagerService"

    const-string v8, "minimizeAllTasksInFreeform is calling"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1382
    :cond_2
    iget-boolean v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mIsDesktopModeEnabled:Z

    if-eqz v7, :cond_6

    const/4 v1, 0x0

    .line 1385
    .local v1, "minimize":Z
    :goto_1
    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 1386
    .local v0, "freeformStack":Lcom/android/server/am/ActivityStack;
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v7

    if-eqz v7, :cond_b

    .line 1387
    move v2, v1

    .line 1388
    .local v2, "needToLog":Z
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v6

    .line 1390
    .local v6, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    iget-boolean v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mIsDesktopModeEnabled:Z

    if-eqz v7, :cond_3

    .line 1391
    invoke-static {v6}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 1394
    :cond_3
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .end local v2    # "needToLog":Z
    .end local v3    # "result":Z
    .local v5, "task$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    .line 1395
    .local v4, "task":Lcom/android/server/am/TaskRecord;
    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mNoMinimizedTarget:Lcom/android/server/am/TaskRecord;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mNoMinimizedTarget:Lcom/android/server/am/TaskRecord;

    if-eq v4, v7, :cond_4

    .line 1396
    :cond_5
    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 1400
    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v7, v4}, Lcom/android/server/am/ActivityStackSupervisor;->isLockedTask(Lcom/android/server/am/TaskRecord;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1401
    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityStackSupervisor;->showLockTaskToast()V

    goto :goto_2

    .line 1382
    .end local v0    # "freeformStack":Lcom/android/server/am/ActivityStack;
    .end local v1    # "minimize":Z
    .end local v4    # "task":Lcom/android/server/am/TaskRecord;
    .end local v5    # "task$iterator":Ljava/util/Iterator;
    .end local v6    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    .restart local v3    # "result":Z
    :cond_6
    const/4 v1, 0x1

    .restart local v1    # "minimize":Z
    goto :goto_1

    .line 1405
    .end local v3    # "result":Z
    .restart local v0    # "freeformStack":Lcom/android/server/am/ActivityStack;
    .restart local v4    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v5    # "task$iterator":Ljava/util/Iterator;
    .restart local v6    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    :cond_7
    iget v7, v4, Lcom/android/server/am/TaskRecord;->mHiddenState:I

    if-eqz v7, :cond_8

    iget-boolean v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mIsDesktopModeEnabled:Z

    if-eqz v7, :cond_4

    .line 1406
    :cond_8
    sget-boolean v7, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    if-eqz v7, :cond_9

    const-string v8, "MultiWindowManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v1, :cond_a

    const-string v7, "minimize, "

    :goto_3
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1407
    :cond_9
    iget v7, v4, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v0, v7, v1}, Lcom/android/server/am/ActivityStack;->moveTaskToBackLocked(IZ)Z

    move-result v7

    or-int/2addr v3, v7

    .line 1408
    .local v3, "result":Z
    if-eqz v2, :cond_4

    .line 1409
    const-string v7, "FFAC"

    .line 1410
    const-string v8, "Minimize"

    .line 1409
    invoke-virtual {p0, v7, v8}, Lcom/android/server/am/MultiWindowManagerService;->logMultiWindowBehavior(Ljava/lang/String;Ljava/lang/String;)V

    .line 1411
    const/4 v2, 0x0

    .local v2, "needToLog":Z
    goto :goto_2

    .line 1406
    .end local v2    # "needToLog":Z
    .end local v3    # "result":Z
    :cond_a
    const-string v7, "moveback, "

    goto :goto_3

    .line 1417
    .end local v4    # "task":Lcom/android/server/am/TaskRecord;
    .end local v5    # "task$iterator":Ljava/util/Iterator;
    .end local v6    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    :cond_b
    iput-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mNoMinimizedTarget:Lcom/android/server/am/TaskRecord;

    goto/16 :goto_0
.end method

.method public minimizeOhterFreeforms(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 3629
    sget-boolean v3, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v3, :cond_0

    .line 3630
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3631
    .local v0, "origId":J
    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 3632
    const/4 v3, 0x0

    :try_start_0
    invoke-static {p1, v3}, Lcom/android/server/am/ActivityRecord;->getTaskForActivityLocked(Landroid/os/IBinder;Z)I

    move-result v2

    .line 3633
    .local v2, "taskId":I
    invoke-direct {p0, v2}, Lcom/android/server/am/MultiWindowManagerService;->minimizeOhterFreeformsLocked(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    .line 3635
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3628
    .end local v0    # "origId":J
    .end local v2    # "taskId":I
    :cond_0
    return-void

    .line 3631
    .restart local v0    # "origId":J
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public minimizeSearchedTask(Ljava/lang/String;)I
    .locals 12
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x1

    const/4 v9, 0x2

    .line 5323
    sget-boolean v6, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v6, :cond_9

    .line 5324
    sget-boolean v6, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    if-eqz v6, :cond_0

    const-string v6, "MultiWindowManagerService_Bixby"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "minimizeSearchedTask, packageName="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", caller="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x5

    invoke-static {v8}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5325
    :cond_0
    const/4 v2, 0x0

    .line 5326
    .local v2, "result":Z
    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7

    .line 5327
    :try_start_0
    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v8, 0x2

    invoke-virtual {v6, v8}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 5328
    .local v0, "freeformStack":Lcom/android/server/am/ActivityStack;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v6

    if-nez v6, :cond_3

    .line 5329
    :cond_1
    sget-boolean v6, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    if-eqz v6, :cond_2

    const-string v6, "MultiWindowManagerService_Bixby"

    const-string v8, "minimizeSearchedTask, a freeform stack is null or doesn\'t have tasks"

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_2
    monitor-exit v7

    .line 5330
    return v9

    .line 5333
    :cond_3
    :try_start_1
    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 5335
    :try_start_2
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v1

    .line 5336
    .local v1, "freeformTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v3, v6, -0x1

    .end local v2    # "result":Z
    .local v3, "taskNdx":I
    :goto_0
    if-ltz v3, :cond_6

    .line 5337
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/TaskRecord;

    .line 5339
    .local v5, "tr":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v5}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    .line 5340
    .local v4, "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v4, :cond_5

    iget-object v6, v4, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 5341
    iget v6, v5, Lcom/android/server/am/TaskRecord;->mHiddenState:I

    if-nez v6, :cond_5

    .line 5342
    sget-boolean v6, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    if-eqz v6, :cond_4

    .line 5343
    const-string v6, "MultiWindowManagerService_Bixby"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "minimizeSearchedTask, calling moveTaskToBack.. task="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5345
    :cond_4
    iget v6, v5, Lcom/android/server/am/TaskRecord;->taskId:I

    const/4 v8, 0x1

    invoke-direct {p0, v6, v8}, Lcom/android/server/am/MultiWindowManagerService;->moveActivityTaskToBackLocked(IZ)Z

    move-result v6

    or-int/2addr v2, v6

    .line 5336
    :cond_5
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 5348
    .end local v4    # "top":Lcom/android/server/am/ActivityRecord;
    .end local v5    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_6
    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v6, v8, v9, v10}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5350
    :try_start_3
    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v7

    .line 5354
    if-eqz v2, :cond_7

    .line 5355
    return v11

    .line 5349
    .end local v1    # "freeformTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    .end local v3    # "taskNdx":I
    :catchall_0
    move-exception v6

    .line 5350
    :try_start_4
    iget-object v8, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v8}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 5349
    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 5326
    .end local v0    # "freeformStack":Lcom/android/server/am/ActivityStack;
    :catchall_1
    move-exception v6

    monitor-exit v7

    throw v6

    .line 5357
    .restart local v0    # "freeformStack":Lcom/android/server/am/ActivityStack;
    .restart local v1    # "freeformTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    .restart local v3    # "taskNdx":I
    :cond_7
    sget-boolean v6, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    if-eqz v6, :cond_8

    .line 5358
    const-string v6, "MultiWindowManagerService_Bixby"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "minimizeSearchedTask, Unable to minimize app, packageName="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5360
    :cond_8
    const/4 v6, 0x3

    return v6

    .line 5364
    .end local v0    # "freeformStack":Lcom/android/server/am/ActivityStack;
    .end local v1    # "freeformTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    .end local v3    # "taskNdx":I
    :cond_9
    return v9
.end method

.method public minimizeTask(I)V
    .locals 4
    .param p1, "taskId"    # I

    .prologue
    .line 3650
    sget-boolean v2, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v2, :cond_0

    .line 3651
    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 3652
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v0

    .line 3654
    .local v0, "origId":J
    const/4 v2, 0x1

    :try_start_1
    invoke-direct {p0, p1, v2}, Lcom/android/server/am/MultiWindowManagerService;->moveActivityTaskToBackLocked(IZ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3656
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v3

    .line 3649
    .end local v0    # "origId":J
    :cond_0
    return-void

    .line 3655
    .restart local v0    # "origId":J
    :catchall_0
    move-exception v2

    .line 3656
    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3655
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3651
    .end local v0    # "origId":J
    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public minimizeTopTask()Z
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 5369
    sget-boolean v5, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v5, :cond_4

    .line 5370
    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6

    .line 5371
    :try_start_0
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v7, 0x2

    invoke-virtual {v5, v7}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 5372
    .local v0, "freeformStack":Lcom/android/server/am/ActivityStack;
    if-eqz v0, :cond_3

    .line 5373
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v1

    .line 5375
    .local v1, "freeformTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .local v2, "taskNdx":I
    :goto_0
    if-ltz v2, :cond_3

    .line 5376
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    .line 5377
    .local v4, "tr":Lcom/android/server/am/TaskRecord;
    sget-boolean v5, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "MultiWindowManagerService_Bixby"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "minimizeTopTask, tr="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5379
    :cond_0
    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    .line 5380
    .local v3, "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v3, :cond_2

    iget v5, v4, Lcom/android/server/am/TaskRecord;->mHiddenState:I

    if-nez v5, :cond_2

    .line 5381
    sget-boolean v5, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    if-eqz v5, :cond_1

    const-string v5, "MultiWindowManagerService_Bixby"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "minimizeTopTask, taskId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v4, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", topActivity="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5383
    :cond_1
    iget-object v5, v3, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v5, v5, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {p0, v5}, Lcom/android/server/am/MultiWindowManagerService;->minimizeTask(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5384
    const/4 v5, 0x1

    monitor-exit v6

    return v5

    .line 5375
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .end local v1    # "freeformTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    .end local v2    # "taskNdx":I
    .end local v3    # "top":Lcom/android/server/am/ActivityRecord;
    .end local v4    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_3
    monitor-exit v6

    .line 5390
    .end local v0    # "freeformStack":Lcom/android/server/am/ActivityStack;
    :cond_4
    sget-boolean v5, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    if-eqz v5, :cond_5

    const-string v5, "MultiWindowManagerService_Bixby"

    const-string v6, "minimizeTopTask, Unable to minimize top task."

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5391
    :cond_5
    return v9

    .line 5370
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method public moveActivityTaskToBack(Landroid/os/IBinder;ZZ)Z
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "nonRoot"    # Z
    .param p3, "minimize"    # Z

    .prologue
    const/4 v3, 0x0

    .line 3665
    sget-boolean v4, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v4, :cond_1

    .line 3666
    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    const-string v5, "moveActivityTaskToBack"

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 3667
    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 3668
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v0

    .line 3670
    .local v0, "origId":J
    if-eqz p2, :cond_0

    :goto_0
    :try_start_1
    invoke-static {p1, v3}, Lcom/android/server/am/ActivityRecord;->getTaskForActivityLocked(Landroid/os/IBinder;Z)I

    move-result v2

    .line 3671
    .local v2, "taskId":I
    invoke-direct {p0, v2, p3}, Lcom/android/server/am/MultiWindowManagerService;->moveActivityTaskToBackLocked(IZ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    .line 3673
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v4

    .line 3671
    return v3

    .line 3670
    .end local v2    # "taskId":I
    :cond_0
    const/4 v3, 0x1

    goto :goto_0

    .line 3672
    :catchall_0
    move-exception v3

    .line 3673
    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3672
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3667
    .end local v0    # "origId":J
    :catchall_1
    move-exception v3

    monitor-exit v4

    throw v3

    .line 3677
    :cond_1
    return v3
.end method

.method public moveDockedTasksToFullscreenStack(ZZ)Z
    .locals 14
    .param p1, "toTop"    # Z
    .param p2, "removeTargetTask"    # Z

    .prologue
    .line 3946
    iget-object v9, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    const-string v10, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v11, "moveDockedTasksToFullscreenStack"

    invoke-virtual {v9, v10, v11}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3947
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 3948
    .local v6, "ident":J
    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v10

    .line 3950
    :try_start_0
    iget-object v9, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v11, 0x3

    invoke-virtual {v9, v11}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    .line 3951
    .local v2, "docked":Lcom/android/server/am/ActivityStack;
    iget-object v9, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v11, 0x3

    invoke-virtual {v9, v11}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v9

    if-nez v9, :cond_0

    .line 3952
    const-string v9, "MultiWindowManagerService"

    const-string v11, "moveDockedTasksToFullscreenStack / DockedStack is null."

    invoke-static {v9, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3980
    :try_start_1
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3953
    const/4 v9, 0x0

    monitor-exit v10

    return v9

    .line 3955
    :cond_0
    :try_start_2
    iget-object v9, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v11, 0x1

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-virtual {v9, v11, v12, v13}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(IZZ)Lcom/android/server/am/ActivityStack;

    move-result-object v5

    .line 3956
    .local v5, "full":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v1

    .line 3957
    .local v1, "dTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {v5}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v4

    .line 3958
    .local v4, "fTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-direct {p0, v1}, Lcom/android/server/am/MultiWindowManagerService;->findFirstReturnToHomeTask(Ljava/util/ArrayList;)Lcom/android/server/am/TaskRecord;

    move-result-object v0

    .line 3959
    .local v0, "dReturnToHomeTask":Lcom/android/server/am/TaskRecord;
    if-nez v0, :cond_1

    .line 3960
    const-string v9, "MultiWindowManagerService"

    const-string v11, "moveDockedTasksToFullscreenStack / DockedTasks has 0 tasks."

    invoke-static {v9, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3980
    :try_start_3
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3961
    const/4 v9, 0x0

    monitor-exit v10

    return v9

    .line 3963
    :cond_1
    :try_start_4
    invoke-direct {p0, v4}, Lcom/android/server/am/MultiWindowManagerService;->findFirstReturnToHomeTask(Ljava/util/ArrayList;)Lcom/android/server/am/TaskRecord;

    move-result-object v3

    .line 3964
    .local v3, "fReturnToHomeTask":Lcom/android/server/am/TaskRecord;
    if-eqz p1, :cond_4

    .end local v5    # "full":Lcom/android/server/am/ActivityStack;
    :goto_0
    invoke-virtual {v5}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v8

    .line 3967
    .local v8, "removeTarget":Lcom/android/server/am/ActivityRecord;
    iget-object v9, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v11, 0x3

    .line 3968
    const/4 v12, 0x1

    .line 3967
    invoke-virtual {v9, v11, p1, v12}, Lcom/android/server/am/ActivityStackSupervisor;->moveTasksToFullscreenStackLocked(IZZ)V

    .line 3970
    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    .line 3971
    if-eqz v3, :cond_2

    .line 3972
    const/4 v9, 0x1

    invoke-virtual {v3, v9}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    .line 3974
    :cond_2
    if-eqz p2, :cond_3

    if-eqz v8, :cond_3

    iget-object v9, v8, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v9, :cond_3

    .line 3975
    iget-object v9, p0, Lcom/android/server/am/MultiWindowManagerService;->mPendingRemoveTasks:Ljava/util/ArrayList;

    iget-object v11, v8, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v11, v11, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 3976
    iget-object v9, p0, Lcom/android/server/am/MultiWindowManagerService;->mPendingRemoveTasks:Ljava/util/ArrayList;

    iget-object v11, v8, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v11, v11, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3980
    :cond_3
    :try_start_5
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 3982
    const/4 v9, 0x1

    monitor-exit v10

    return v9

    .end local v8    # "removeTarget":Lcom/android/server/am/ActivityRecord;
    .restart local v5    # "full":Lcom/android/server/am/ActivityStack;
    :cond_4
    move-object v5, v2

    .line 3964
    goto :goto_0

    .line 3979
    .end local v0    # "dReturnToHomeTask":Lcom/android/server/am/TaskRecord;
    .end local v1    # "dTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    .end local v2    # "docked":Lcom/android/server/am/ActivityStack;
    .end local v3    # "fReturnToHomeTask":Lcom/android/server/am/TaskRecord;
    .end local v4    # "fTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    .end local v5    # "full":Lcom/android/server/am/ActivityStack;
    :catchall_0
    move-exception v9

    .line 3980
    :try_start_6
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3979
    throw v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 3948
    :catchall_1
    move-exception v9

    monitor-exit v10

    throw v9
.end method

.method public moveMultiWindowTasksToFullScreen()V
    .locals 12

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 4216
    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    const-string v9, "android.permission.MANAGE_ACTIVITY_STACKS"

    .line 4217
    const-string v10, "moveMultiWindowTasksToFullScreen()"

    .line 4216
    invoke-virtual {v6, v9, v10}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4218
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 4220
    .local v4, "ident":J
    iget-object v9, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v9

    .line 4221
    const/4 v6, 0x1

    :try_start_0
    iput-boolean v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mMovingMultiWindowTasksToFullScreen:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 4224
    :try_start_1
    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4226
    :try_start_2
    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v6, v6, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    if-eqz v6, :cond_0

    .line 4227
    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v6, v6, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    iget v0, v6, Lcom/android/server/am/ActivityStack;->mStackId:I

    .line 4228
    .local v0, "focusedStackId":I
    :goto_0
    const/4 v2, 0x4

    .local v2, "i":I
    :goto_1
    const/4 v6, 0x3

    if-lt v2, v6, :cond_2

    .line 4229
    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    if-ne v2, v0, :cond_1

    move v6, v7

    :goto_2
    const/4 v11, 0x1

    invoke-virtual {v10, v2, v6, v11}, Lcom/android/server/am/ActivityStackSupervisor;->moveTasksToFullscreenStackLocked(IZZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4228
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 4227
    .end local v0    # "focusedStackId":I
    .end local v2    # "i":I
    :cond_0
    const/4 v0, -0x1

    .restart local v0    # "focusedStackId":I
    goto :goto_0

    .restart local v2    # "i":I
    :cond_1
    move v6, v8

    .line 4229
    goto :goto_2

    .line 4232
    :cond_2
    :try_start_3
    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 4236
    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 4237
    const/4 v7, 0x2

    .line 4236
    invoke-virtual {v6, v7}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 4238
    .local v1, "freeformStack":Lcom/android/server/am/ActivityStack;
    if-eqz v1, :cond_4

    .line 4239
    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v6, v1}, Lcom/android/server/am/ActivityStackSupervisor;->isFocusedStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 4241
    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStackSupervisor;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    .line 4242
    .local v3, "topActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v3, :cond_3

    .line 4243
    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 4244
    iget-object v7, v3, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v8, 0x0

    .line 4243
    invoke-virtual {v6, v7, v8}, Lcom/android/server/wm/WindowManagerService;->scheduleClearReplacingWindowIfNeeded(Landroid/os/IBinder;Z)V

    .line 4246
    :cond_3
    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 4247
    const/4 v7, 0x2

    const/4 v8, 0x1

    .line 4246
    invoke-virtual {v6, v7, v8}, Lcom/android/server/am/ActivityStackSupervisor;->moveTasksToFullscreenStackLocked(IZ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 4257
    .end local v3    # "topActivity":Lcom/android/server/am/ActivityRecord;
    :cond_4
    :goto_3
    const/4 v6, 0x0

    :try_start_4
    iput-boolean v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mMovingMultiWindowTasksToFullScreen:Z

    .line 4258
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    monitor-exit v9

    .line 4214
    return-void

    .line 4231
    .end local v0    # "focusedStackId":I
    .end local v1    # "freeformStack":Lcom/android/server/am/ActivityStack;
    .end local v2    # "i":I
    :catchall_0
    move-exception v6

    .line 4232
    :try_start_5
    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 4231
    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 4256
    :catchall_1
    move-exception v6

    .line 4257
    const/4 v7, 0x0

    :try_start_6
    iput-boolean v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mMovingMultiWindowTasksToFullScreen:Z

    .line 4258
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4256
    throw v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 4220
    :catchall_2
    move-exception v6

    monitor-exit v9

    throw v6

    .line 4249
    .restart local v0    # "focusedStackId":I
    .restart local v1    # "freeformStack":Lcom/android/server/am/ActivityStack;
    .restart local v2    # "i":I
    :cond_5
    :try_start_7
    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/16 v7, 0xb

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 4250
    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    .line 4251
    const/4 v7, 0x2

    .line 4250
    invoke-interface {v6, v7}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->prepareAppTransitionIfNeeded(I)V

    .line 4252
    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 4253
    const/4 v7, 0x2

    const/4 v8, 0x0

    .line 4252
    invoke-virtual {v6, v7, v8}, Lcom/android/server/am/ActivityStackSupervisor;->moveTasksToFullscreenStackLocked(IZ)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_3
.end method

.method public moveProfileTasksToBackLocked(I)V
    .locals 9
    .param p1, "userId"    # I

    .prologue
    .line 1027
    iget-boolean v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mIsDesktopModeEnabled:Z

    if-eqz v6, :cond_5

    .line 1028
    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    .line 1029
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    if-nez v2, :cond_0

    .line 1030
    return-void

    .line 1033
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1034
    .local v1, "profileTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v3

    .line 1035
    .local v3, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v0, v6, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 1036
    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/TaskRecord;

    invoke-virtual {v7, v6, p1}, Lcom/android/server/am/ActivityStackSupervisor;->taskContainsActivityFromUser(Lcom/android/server/am/TaskRecord;I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1037
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/TaskRecord;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1035
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1041
    :cond_2
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "tr$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    .line 1042
    .local v4, "tr":Lcom/android/server/am/TaskRecord;
    iget v6, v4, Lcom/android/server/am/TaskRecord;->mHiddenState:I

    if-nez v6, :cond_3

    .line 1043
    sget-boolean v6, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    if-eqz v6, :cond_4

    const-string v6, "MultiWindowManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "moveProfileTasksBack, tr="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    :cond_4
    iget v6, v4, Lcom/android/server/am/TaskRecord;->taskId:I

    const/4 v7, 0x1

    invoke-virtual {v2, v6, v7}, Lcom/android/server/am/ActivityStack;->moveTaskToBackLocked(IZ)Z

    goto :goto_1

    .line 1026
    .end local v0    # "i":I
    .end local v1    # "profileTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v3    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    .end local v4    # "tr":Lcom/android/server/am/TaskRecord;
    .end local v5    # "tr$iterator":Ljava/util/Iterator;
    :cond_5
    return-void
.end method

.method public moveTasksToFullscreenStackExceptTopTaskLocked(IZZ)V
    .locals 13
    .param p1, "fromStackId"    # I
    .param p2, "onTop"    # Z
    .param p3, "splitResizeAnimate"    # Z

    .prologue
    .line 5666
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v11

    .line 5667
    .local v11, "stack":Lcom/android/server/am/ActivityStack;
    if-nez v11, :cond_0

    .line 5668
    return-void

    .line 5671
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    .line 5673
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 5678
    :try_start_0
    invoke-virtual {v11}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 5679
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 5680
    const/4 v1, 0x1

    const/4 v2, 0x1

    .line 5681
    const/4 v3, 0x0

    .line 5679
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(IZZ)Lcom/android/server/am/ActivityStack;

    move-result-object v8

    .line 5682
    .local v8, "fullScreenStack":Lcom/android/server/am/ActivityStack;
    if-nez v8, :cond_1

    .line 5683
    const-string v0, "MultiWindowManagerService"

    .line 5684
    const-string v1, "Unable to create FullScreen Stack before moveTasksToFullScreenStack"

    .line 5683
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5691
    .end local v8    # "fullScreenStack":Lcom/android/server/am/ActivityStack;
    :cond_1
    invoke-virtual {v11}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v12

    .line 5692
    .local v12, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 5693
    .local v10, "size":I
    const/4 v0, 0x2

    if-lt v10, v0, :cond_4

    .line 5694
    if-eqz p2, :cond_5

    .line 5695
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    add-int/lit8 v0, v10, -0x1

    if-ge v9, v0, :cond_2

    .line 5696
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    iget v1, v1, Lcom/android/server/am/TaskRecord;->taskId:I

    .line 5698
    const-string v5, "moveTasksToFullscreenStack"

    .line 5697
    const/4 v2, 0x1

    .line 5698
    const/4 v6, 0x1

    .line 5699
    const/4 v7, 0x1

    move v3, p2

    move v4, p2

    .line 5696
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/ActivityStackSupervisor;->moveTaskToStackLocked(IIZZLjava/lang/String;ZZ)Z

    .line 5695
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 5702
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 5703
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    .line 5717
    :cond_3
    :goto_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    if-eqz p3, :cond_4

    .line 5719
    iget-object v0, v11, Lcom/android/server/am/ActivityStack;->mBounds:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/MultiWindowManagerService;->startSplitResizeAnimIfNeededLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5724
    .end local v9    # "i":I
    :cond_4
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 5665
    return-void

    .line 5705
    :cond_5
    add-int/lit8 v9, v10, -0x2

    .restart local v9    # "i":I
    :goto_2
    if-ltz v9, :cond_6

    .line 5706
    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    .line 5707
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 5706
    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->positionTaskInStackLocked(III)V

    .line 5705
    add-int/lit8 v9, v9, -0x1

    goto :goto_2

    .line 5711
    :cond_6
    if-nez v10, :cond_3

    .line 5712
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 5723
    .end local v9    # "i":I
    .end local v10    # "size":I
    .end local v12    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    :catchall_0
    move-exception v0

    .line 5724
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 5723
    throw v0
.end method

.method public nofitySwappingDockedAndFullscreenLocked(Z)V
    .locals 0
    .param p1, "swapping"    # Z

    .prologue
    .line 5730
    iput-boolean p1, p0, Lcom/android/server/am/MultiWindowManagerService;->mSwappingDockedAndFullscreen:Z

    .line 5729
    return-void
.end method

.method public notifyActivityStackAttachedLocked(II)V
    .locals 3
    .param p1, "stackId"    # I
    .param p2, "displayId"    # I

    .prologue
    .line 2050
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Lcom/android/server/am/MultiWindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2051
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 2052
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 2053
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    invoke-virtual {v1, v0}, Lcom/android/server/am/MultiWindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 2048
    return-void
.end method

.method public notifyActivityStackDetachedLocked(II)V
    .locals 3
    .param p1, "stackId"    # I
    .param p2, "displayId"    # I

    .prologue
    .line 2060
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Lcom/android/server/am/MultiWindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2061
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 2062
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 2063
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    invoke-virtual {v1, v0}, Lcom/android/server/am/MultiWindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 2058
    return-void
.end method

.method public notifyApplyFreeformMinimizePolicy(I)V
    .locals 4
    .param p1, "taskId"    # I

    .prologue
    .line 2037
    sget-boolean v1, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v1, :cond_1

    .line 2038
    sget-boolean v1, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 2039
    const-string v1, "MultiWindowManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyApplyFreeformMinimizePolicy ::  taskId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", caller="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x5

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2041
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Lcom/android/server/am/MultiWindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2042
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 2043
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    invoke-virtual {v1, v0}, Lcom/android/server/am/MultiWindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 2036
    .end local v0    # "msg":Landroid/os/Message;
    :cond_1
    return-void
.end method

.method public notifyCompleteResumeLocked()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 5735
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->allResumedActivitiesComplete()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5736
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mPendingRemoveTasks:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "taskId$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 5737
    .local v0, "taskId":I
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, v0, v3, v3}, Lcom/android/server/am/ActivityManagerService;->removeTaskByIdLocked(IZZ)Z

    goto :goto_0

    .line 5739
    .end local v0    # "taskId":I
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mPendingRemoveTasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 5734
    .end local v1    # "taskId$iterator":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public notifyDockedStackMinimizedChange(Z)V
    .locals 3
    .param p1, "minimized"    # Z

    .prologue
    .line 2025
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mAutoResizeController:Lcom/android/server/am/MultiWindowAutoResizeController;

    if-eqz v1, :cond_0

    .line 2026
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mAutoResizeController:Lcom/android/server/am/MultiWindowAutoResizeController;

    const-string v2, "notifyDockedStackMinimizedChange"

    invoke-virtual {v1, v2}, Lcom/android/server/am/MultiWindowAutoResizeController;->clearAutoResizeState(Ljava/lang/String;)V

    .line 2029
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/android/server/am/MultiWindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2030
    .local v0, "msg":Landroid/os/Message;
    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 2031
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    invoke-virtual {v1, v0}, Lcom/android/server/am/MultiWindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 2022
    return-void

    .line 2030
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public notifyFreeformMinimizeStateChanged(Landroid/graphics/Rect;ILandroid/content/ComponentName;II)V
    .locals 4
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "taskId"    # I
    .param p3, "realActivity"    # Landroid/content/ComponentName;
    .param p4, "userId"    # I
    .param p5, "reason"    # I

    .prologue
    .line 1455
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 1456
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput p2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 1457
    iput p4, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 1458
    iput p5, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 1459
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1460
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 1461
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0}, Lcom/android/server/am/MultiWindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/MultiWindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 1453
    return-void
.end method

.method public notifyFreefromWindowAnimationEnd(IILandroid/graphics/Rect;)V
    .locals 4
    .param p1, "taskId"    # I
    .param p2, "transit"    # I
    .param p3, "taskBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 1468
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 1469
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput p1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 1470
    iput p2, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 1471
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1472
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v0}, Lcom/android/server/am/MultiWindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/MultiWindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 1466
    return-void
.end method

.method public notifyLastDockTaskToBackTransitionFinishedLocked(Landroid/os/IBinder;)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 1967
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/android/server/am/MultiWindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/MultiWindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 1965
    return-void
.end method

.method public notifyMultiWindowAppTransitionFinishedLocked()V
    .locals 3

    .prologue
    .line 1958
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/server/am/MultiWindowManagerService;->notifyDelayedAutoResizeIfNeeded(I)V

    .line 1960
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/android/server/am/MultiWindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/MultiWindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 1955
    return-void
.end method

.method public notifyMultiWindowFocusedChangeLocked(Ljava/lang/String;)V
    .locals 12
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1861
    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v2

    .line 1862
    .local v2, "focusedStack":Lcom/android/server/am/ActivityStack;
    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mFocusedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v7, :cond_1

    .line 1863
    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mFocusedActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v3, v7, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 1865
    :goto_0
    if-eqz v2, :cond_0

    if-nez v3, :cond_2

    .line 1867
    :cond_0
    return-void

    .line 1863
    :cond_1
    const/4 v3, 0x0

    .local v3, "focusedTask":Lcom/android/server/am/TaskRecord;
    goto :goto_0

    .line 1866
    .end local v3    # "focusedTask":Lcom/android/server/am/TaskRecord;
    :cond_2
    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mLastFocusedStack:Lcom/android/server/am/ActivityStack;

    if-ne v7, v2, :cond_3

    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mLastFocusedTr:Lcom/android/server/am/TaskRecord;

    if-eq v7, v3, :cond_0

    .line 1871
    :cond_3
    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mLastFocusedStack:Lcom/android/server/am/ActivityStack;

    if-eqz v7, :cond_c

    .line 1872
    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mLastFocusedStack:Lcom/android/server/am/ActivityStack;

    iget v7, v7, Lcom/android/server/am/ActivityStack;->mStackId:I

    if-nez v7, :cond_a

    iget v7, v2, Lcom/android/server/am/ActivityStack;->mStackId:I

    if-ne v7, v8, :cond_a

    const/4 v4, 0x1

    .line 1874
    .local v4, "isAppTransitAtSameDockSide":Z
    :goto_1
    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    invoke-interface {v7}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->getAppWindowAnimatingState()Z

    move-result v5

    .line 1875
    .local v5, "isAppWindowAnimating":Z
    iget-boolean v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mIsAdjustedForIme:Z

    .line 1876
    .local v6, "isImeShowing":Z
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->isRecentsTask()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1877
    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mAutoResizeController:Lcom/android/server/am/MultiWindowAutoResizeController;

    const-string v10, "notifyMultiWindowFocusedChangeLocked_Recents gained focus"

    invoke-virtual {v7, v10}, Lcom/android/server/am/MultiWindowAutoResizeController;->clearAutoResizeState(Ljava/lang/String;)V

    .line 1881
    :cond_4
    iput-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mLastFocusedStack:Lcom/android/server/am/ActivityStack;

    .line 1882
    iput-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mLastFocusedTr:Lcom/android/server/am/TaskRecord;

    .line 1884
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 1885
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget v7, v2, Lcom/android/server/am/ActivityStack;->mStackId:I

    iput v7, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 1886
    iget v7, v3, Lcom/android/server/am/TaskRecord;->taskId:I

    iput v7, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 1887
    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    const/4 v11, 0x4

    invoke-virtual {v10, v11, v0}, Lcom/android/server/am/MultiWindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/android/server/am/MultiWindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 1890
    iput-boolean v9, p0, Lcom/android/server/am/MultiWindowManagerService;->mAutoResizeHandlerFired:Z

    .line 1891
    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mAutoResizeController:Lcom/android/server/am/MultiWindowAutoResizeController;

    invoke-virtual {v7, v2, v3, p1}, Lcom/android/server/am/MultiWindowAutoResizeController;->getAutoResizePositionLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/TaskRecord;Ljava/lang/String;)I

    move-result v1

    .line 1892
    .local v1, "autoResizePos":I
    const/16 v7, -0x63

    if-eq v1, v7, :cond_9

    .line 1893
    iput-boolean v8, p0, Lcom/android/server/am/MultiWindowManagerService;->mAutoResizeHandlerFired:Z

    .line 1894
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mArgs_AutoResize:Lcom/android/internal/os/SomeArgs;

    .line 1895
    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mArgs_AutoResize:Lcom/android/internal/os/SomeArgs;

    iput v1, v7, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 1896
    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mArgs_AutoResize:Lcom/android/internal/os/SomeArgs;

    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mAutoResizeController:Lcom/android/server/am/MultiWindowAutoResizeController;

    invoke-virtual {v7}, Lcom/android/server/am/MultiWindowAutoResizeController;->shouldFitTaskToStackSize()Z

    move-result v7

    if-eqz v7, :cond_d

    move v7, v8

    :goto_2
    iput v7, v10, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 1897
    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mAutoResizeController:Lcom/android/server/am/MultiWindowAutoResizeController;

    invoke-virtual {v7}, Lcom/android/server/am/MultiWindowAutoResizeController;->hasTargetPosChanged()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1898
    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mArgs_AutoResize:Lcom/android/internal/os/SomeArgs;

    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mAutoResizeController:Lcom/android/server/am/MultiWindowAutoResizeController;

    const/4 v11, 0x3

    invoke-virtual {v10, v11}, Lcom/android/server/am/MultiWindowAutoResizeController;->getTaskRectForAutoResize(I)Landroid/graphics/Rect;

    move-result-object v10

    iput-object v10, v7, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1899
    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mArgs_AutoResize:Lcom/android/internal/os/SomeArgs;

    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mAutoResizeController:Lcom/android/server/am/MultiWindowAutoResizeController;

    invoke-virtual {v10, v8}, Lcom/android/server/am/MultiWindowAutoResizeController;->getTaskRectForAutoResize(I)Landroid/graphics/Rect;

    move-result-object v8

    iput-object v8, v7, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 1902
    :cond_5
    iput v9, p0, Lcom/android/server/am/MultiWindowManagerService;->mAutoResizeFlag:I

    .line 1903
    if-nez v4, :cond_6

    if-eqz v5, :cond_7

    .line 1904
    :cond_6
    iget v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mAutoResizeFlag:I

    or-int/lit8 v7, v7, 0x2

    iput v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mAutoResizeFlag:I

    .line 1906
    :cond_7
    if-eqz v6, :cond_8

    .line 1907
    iget v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mAutoResizeFlag:I

    or-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mAutoResizeFlag:I

    .line 1910
    :cond_8
    iget v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mAutoResizeFlag:I

    if-nez v7, :cond_9

    .line 1911
    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    iget-object v8, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    iget-object v9, p0, Lcom/android/server/am/MultiWindowManagerService;->mArgs_AutoResize:Lcom/android/internal/os/SomeArgs;

    const/16 v10, 0x10

    invoke-virtual {v8, v10, v9}, Lcom/android/server/am/MultiWindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/server/am/MultiWindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 1859
    :cond_9
    return-void

    .line 1873
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1    # "autoResizePos":I
    .end local v4    # "isAppTransitAtSameDockSide":Z
    .end local v5    # "isAppWindowAnimating":Z
    .end local v6    # "isImeShowing":Z
    :cond_a
    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mLastFocusedStack:Lcom/android/server/am/ActivityStack;

    if-ne v7, v2, :cond_b

    const/4 v4, 0x1

    .restart local v4    # "isAppTransitAtSameDockSide":Z
    goto/16 :goto_1

    .end local v4    # "isAppTransitAtSameDockSide":Z
    :cond_b
    const/4 v4, 0x0

    .restart local v4    # "isAppTransitAtSameDockSide":Z
    goto/16 :goto_1

    .line 1871
    .end local v4    # "isAppTransitAtSameDockSide":Z
    :cond_c
    const/4 v4, 0x0

    .restart local v4    # "isAppTransitAtSameDockSide":Z
    goto/16 :goto_1

    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .restart local v1    # "autoResizePos":I
    .restart local v5    # "isAppWindowAnimating":Z
    .restart local v6    # "isImeShowing":Z
    :cond_d
    move v7, v9

    .line 1896
    goto :goto_2
.end method

.method public notifyProcessKillByClosingFreeform(I)V
    .locals 3
    .param p1, "pid"    # I

    .prologue
    .line 2069
    sget-boolean v1, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v1, :cond_0

    .line 2070
    iget-boolean v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mIsDesktopModeEnabled:Z

    if-eqz v1, :cond_0

    .line 2071
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Lcom/android/server/am/MultiWindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2072
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 2073
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    invoke-virtual {v1, v0}, Lcom/android/server/am/MultiWindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 2068
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public notifyScreenFreezeAnimationFinished()V
    .locals 3

    .prologue
    .line 2017
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lcom/android/server/am/MultiWindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/MultiWindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 2015
    return-void
.end method

.method public onConfigurationChangedCompleteLocked(I)V
    .locals 1
    .param p1, "configChanges"    # I

    .prologue
    .line 579
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mAutoResizeController:Lcom/android/server/am/MultiWindowAutoResizeController;

    if-eqz v0, :cond_0

    .line 580
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mAutoResizeController:Lcom/android/server/am/MultiWindowAutoResizeController;

    invoke-virtual {v0, p1}, Lcom/android/server/am/MultiWindowAutoResizeController;->onConfigurationChangedLocked(I)V

    .line 577
    :cond_0
    return-void
.end method

.method public onConfigurationChangedLocked(I)V
    .locals 17
    .param p1, "conifgChanges"    # I

    .prologue
    .line 478
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->isDesktopModeLocked()Z

    move-result v9

    .line 479
    .local v9, "isDesktopMode":Z
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/am/MultiWindowManagerService;->mIsDesktopModeEnabled:Z

    if-eq v1, v9, :cond_2

    .line 480
    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/android/server/am/MultiWindowManagerService;->mIsDesktopModeEnabled:Z

    .line 481
    sget-boolean v1, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "MultiWindowManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onConfigurationChanged, DesktopMode enabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/MultiWindowManagerService;->mIsDesktopModeEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/MultiWindowManagerService;->initMultiInstanceSettings()V

    .line 483
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/am/MultiWindowManagerService;->mIsDesktopModeEnabled:Z

    if-eqz v1, :cond_4

    .line 484
    const-string v1, "desktop_on"

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/server/am/MultiWindowManagerService;->unbindMinimizeContainerServiceIfNeeded(Ljava/lang/String;)V

    .line 485
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/server/am/MultiWindowManagerService;->changeIsDexModeTask(Z)V

    .line 491
    :goto_0
    sget-boolean v1, Lcom/android/server/am/ActivityManagerService;->GAME_TUNER_ENABLED:Z

    if-eqz v1, :cond_1

    .line 492
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/MultiWindowManagerService;->initGameManagerService()V

    .line 495
    :cond_1
    const-string v2, "MultiWindowManager"

    .line 496
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/am/MultiWindowManagerService;->mIsDesktopModeEnabled:Z

    if-eqz v1, :cond_5

    const-string v1, "Desktop On"

    .line 497
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/MultiWindowManagerService;->mIsDesktopModeEnabled:Z

    const/4 v4, -0x1

    .line 495
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v1, v3, v4}, Lcom/android/server/am/MultiWindowManagerService;->setMultiWindowForceEnabledForUser(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 499
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/MultiWindowManagerService;->updateFreeformMaxCount()V

    .line 504
    :cond_2
    move/from16 v0, p1

    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_d

    .line 505
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/MultiWindowManagerService;->loadResources()V

    .line 507
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 508
    .local v7, "bounds":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iget v1, v1, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/am/MultiWindowManagerService;->mLastGlobalDensity:I

    int-to-float v2, v2

    div-float v10, v1, v2

    .line 510
    .local v10, "scale":F
    const/4 v12, 0x4

    .local v12, "stackId":I
    :goto_2
    const/4 v1, 0x1

    if-lt v12, v1, :cond_c

    .line 511
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, v12}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v11

    .line 512
    .local v11, "stack":Lcom/android/server/am/ActivityStack;
    if-nez v11, :cond_6

    .line 510
    :cond_3
    add-int/lit8 v12, v12, -0x1

    goto :goto_2

    .line 487
    .end local v7    # "bounds":Landroid/graphics/Rect;
    .end local v10    # "scale":F
    .end local v11    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v12    # "stackId":I
    :cond_4
    const-string v1, "desktop_off"

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/server/am/MultiWindowManagerService;->bindMinimizeContainerServiceIfNeeded(Ljava/lang/String;)V

    .line 488
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/server/am/MultiWindowManagerService;->changeIsDexModeTask(Z)V

    .line 489
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/MultiWindowManagerService;->setLatestDexBounds()V

    goto :goto_0

    .line 496
    :cond_5
    const-string v1, "Desktop Off"

    goto :goto_1

    .line 516
    .restart local v7    # "bounds":Landroid/graphics/Rect;
    .restart local v10    # "scale":F
    .restart local v11    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v12    # "stackId":I
    :cond_6
    invoke-virtual {v11}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v16

    .line 517
    .local v16, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "task$iterator":Ljava/util/Iterator;
    :cond_7
    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/TaskRecord;

    .line 518
    .local v13, "task":Lcom/android/server/am/TaskRecord;
    sget-boolean v1, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->MULTIWINDOW_ENSURE_DIMENSIONS_BASED_ON_TOP:Z

    if-eqz v1, :cond_8

    .line 519
    invoke-virtual {v13}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/server/am/MultiWindowManagerService;->setTaskDimensions(Lcom/android/server/am/ActivityRecord;)V

    .line 523
    :goto_4
    const/4 v1, 0x2

    if-ne v12, v1, :cond_7

    .line 524
    iget-object v1, v13, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    if-nez v1, :cond_9

    .line 525
    const-string v1, "MultiWindowManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Last non fullscreenBounds is null, skip scale bounds by density change, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 521
    :cond_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/am/MultiWindowManagerService;->setTaskDimensions(Lcom/android/server/am/TaskRecord;)V

    goto :goto_4

    .line 529
    :cond_9
    invoke-virtual {v13}, Lcom/android/server/am/TaskRecord;->isFullscreenFreeformLocked()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 530
    iget-object v1, v13, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v10}, Landroid/graphics/Rect;->scale(F)V

    goto :goto_3

    .line 535
    :cond_a
    iget-object v1, v13, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    invoke-virtual {v7, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 536
    invoke-virtual {v7, v10}, Landroid/graphics/Rect;->scale(F)V

    .line 537
    const/4 v1, 0x0

    invoke-virtual {v13, v7, v1}, Lcom/android/server/am/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/content/res/Configuration;

    .line 538
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v2, v13, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->isValidTaskId(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 539
    sget-object v1, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    iget-object v2, v13, Lcom/android/server/am/TaskRecord;->mOverrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 540
    const-string v1, "MultiWindowManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "override config is empty, skip scale bounds by density change, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 543
    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v2, v13, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-object v3, v13, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    iget-object v4, v13, Lcom/android/server/am/TaskRecord;->mOverrideConfig:Landroid/content/res/Configuration;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/WindowManagerService;->resizeTask(ILandroid/graphics/Rect;Landroid/content/res/Configuration;ZZ)V

    goto/16 :goto_3

    .line 549
    .end local v11    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v13    # "task":Lcom/android/server/am/TaskRecord;
    .end local v14    # "task$iterator":Ljava/util/Iterator;
    .end local v16    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    :cond_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iget v1, v1, Landroid/content/res/Configuration;->densityDpi:I

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/am/MultiWindowManagerService;->mLastGlobalDensity:I

    .line 552
    .end local v7    # "bounds":Landroid/graphics/Rect;
    .end local v10    # "scale":F
    .end local v12    # "stackId":I
    :cond_d
    move/from16 v0, p1

    and-int/lit16 v1, v0, 0x1880

    if-eqz v1, :cond_f

    .line 554
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MultiWindowManagerService;->mDisplaySize:Landroid/graphics/Point;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Lcom/android/server/wm/WindowManagerService;->getBaseDisplaySize(ILandroid/graphics/Point;)V

    .line 556
    move/from16 v0, p1

    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_e

    .line 557
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentOrientation:I

    .line 560
    :cond_e
    sget-boolean v1, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_SUPPORT:Z

    if-eqz v1, :cond_f

    sget-boolean v1, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v1, :cond_f

    .line 561
    const/4 v1, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/server/am/MultiWindowManagerService;->getDisplayByStackId(I)Landroid/view/Display;

    move-result-object v8

    .line 562
    .local v8, "display":Landroid/view/Display;
    const/4 v1, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/server/am/MultiWindowManagerService;->getTaskPositionerByStackId(I)Lcom/android/server/am/LaunchingTaskPositioner;

    move-result-object v15

    .line 563
    .local v15, "taskPositioner":Lcom/android/server/am/LaunchingTaskPositioner;
    if-eqz v15, :cond_f

    if-eqz v8, :cond_f

    .line 564
    invoke-virtual {v15, v8}, Lcom/android/server/am/LaunchingTaskPositioner;->setDisplay(Landroid/view/Display;)V

    .line 565
    const/4 v1, 0x0

    invoke-virtual {v15, v1}, Lcom/android/server/am/LaunchingTaskPositioner;->configure(Landroid/graphics/Rect;)V

    .line 475
    .end local v8    # "display":Landroid/view/Display;
    .end local v15    # "taskPositioner":Lcom/android/server/am/LaunchingTaskPositioner;
    :cond_f
    return-void
.end method

.method protected onMultiWindowSettingsChange(Landroid/os/Bundle;I)V
    .locals 7
    .param p1, "mwSettings"    # Landroid/os/Bundle;
    .param p2, "userId"    # I

    .prologue
    const/4 v2, 0x0

    .line 3178
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    if-ne p2, v5, :cond_0

    const/4 v2, 0x1

    .line 3180
    .local v2, "isCurrentUser":Z
    :cond_0
    if-eqz v2, :cond_1

    .line 3181
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mSystemThread:Landroid/app/ActivityThread;

    invoke-virtual {v5, p1}, Landroid/app/ActivityThread;->onMultiWindowSettingsChange(Landroid/os/Bundle;)I

    move-result v0

    .line 3182
    .local v0, "changes":I
    const/high16 v5, 0x20000

    and-int/2addr v5, v0

    if-eqz v5, :cond_1

    .line 3183
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v5, v5, Lcom/android/server/am/ActivityManagerService;->mSystemReady:Z

    if-eqz v5, :cond_1

    .line 3184
    invoke-direct {p0}, Lcom/android/server/am/MultiWindowManagerService;->retrieveMultiWindowSettings()V

    .line 3185
    sget-boolean v5, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->MULTIWINDOW_DYNAMIC_ENABLED:Z

    invoke-direct {p0, v5}, Lcom/android/server/am/MultiWindowManagerService;->notifyMultiWindowSettingChanged(Z)V

    .line 3187
    sget-boolean v5, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v5, :cond_5

    .line 3188
    const-string v5, "mw_on"

    invoke-direct {p0, v5}, Lcom/android/server/am/MultiWindowManagerService;->bindMinimizeContainerServiceIfNeeded(Ljava/lang/String;)V

    .line 3196
    .end local v0    # "changes":I
    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_6

    .line 3197
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    .line 3198
    .local v3, "processRecord":Lcom/android/server/am/ProcessRecord;
    iget v5, v3, Lcom/android/server/am/ProcessRecord;->pid:I

    sget v6, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v5, v6, :cond_2

    iget v5, v3, Lcom/android/server/am/ProcessRecord;->userId:I

    if-eq v5, p2, :cond_3

    .line 3199
    :cond_2
    if-eqz v2, :cond_4

    .line 3200
    iget v5, v3, Lcom/android/server/am/ProcessRecord;->userId:I

    if-nez v5, :cond_4

    .line 3201
    const-string v5, "com.android.systemui"

    iget-object v6, v3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 3199
    if-eqz v5, :cond_4

    .line 3208
    :cond_3
    :try_start_0
    iget-object v5, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v5, :cond_4

    .line 3210
    iget-object v5, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v5, p1}, Landroid/app/IApplicationThread;->setMultiWindowSettings(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3196
    :cond_4
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 3190
    .end local v1    # "i":I
    .end local v3    # "processRecord":Lcom/android/server/am/ProcessRecord;
    .restart local v0    # "changes":I
    :cond_5
    const-string v5, "mw_off"

    invoke-direct {p0, v5}, Lcom/android/server/am/MultiWindowManagerService;->unbindMinimizeContainerServiceIfNeeded(Ljava/lang/String;)V

    goto :goto_0

    .line 3172
    .end local v0    # "changes":I
    .restart local v1    # "i":I
    :cond_6
    return-void

    .line 3212
    .restart local v3    # "processRecord":Lcom/android/server/am/ProcessRecord;
    :catch_0
    move-exception v4

    .local v4, "re":Landroid/os/RemoteException;
    goto :goto_2
.end method

.method public postMoveTaskToStackLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityStack;Lcom/android/server/am/TaskRecord;)V
    .locals 0
    .param p1, "prevStack"    # Lcom/android/server/am/ActivityStack;
    .param p2, "targetStack"    # Lcom/android/server/am/ActivityStack;
    .param p3, "task"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 4408
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/MultiWindowManagerService;->movePausingActivityIfNeededLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityStack;Lcom/android/server/am/TaskRecord;)V

    .line 4409
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/MultiWindowManagerService;->moveLruActivitiesLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityStack;Lcom/android/server/am/TaskRecord;)V

    .line 4406
    return-void
.end method

.method public postStartPairActivities(Ljava/lang/String;)V
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 2254
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    .line 2255
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/am/MultiWindowManagerService;->overridePairActivitiesScreenFreezeAnimationLocked()V

    .line 2257
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mAutoResizeController:Lcom/android/server/am/MultiWindowAutoResizeController;

    if-eqz v1, :cond_0

    .line 2258
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mAutoResizeController:Lcom/android/server/am/MultiWindowAutoResizeController;

    invoke-virtual {v1}, Lcom/android/server/am/MultiWindowAutoResizeController;->dismissAutoResizeLocked()V

    .line 2259
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mAutoResizeController:Lcom/android/server/am/MultiWindowAutoResizeController;

    invoke-virtual {v1}, Lcom/android/server/am/MultiWindowAutoResizeController;->continueAutoResizeLocked()V

    .line 2260
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mEnsureDockedMode:Z

    .line 2262
    :cond_0
    invoke-direct {p0}, Lcom/android/server/am/MultiWindowManagerService;->detachDockStackIfNeededLocked()V

    .line 2263
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 2264
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mLaunchingPairActivities:Z

    .line 2266
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    const/16 v3, 0x11

    invoke-virtual {v1, v3}, Lcom/android/server/am/MultiWindowManagerService$H;->removeMessages(I)V

    .line 2267
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    .line 2268
    const-wide/16 v4, 0x7d0

    .line 2267
    const/16 v3, 0x11

    invoke-virtual {v1, v3, v4, v5}, Lcom/android/server/am/MultiWindowManagerService$H;->sendEmptyMessageDelayed(IJ)Z

    .line 2270
    const/4 v0, 0x0

    .line 2271
    .local v0, "splitBy":Ljava/lang/String;
    const-string v1, "com.samsung.android.app.appsedge"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2272
    const-string v0, "EdgePair"

    .line 2275
    .end local v0    # "splitBy":Ljava/lang/String;
    :cond_1
    if-eqz v0, :cond_2

    .line 2276
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/MultiWindowManagerService;->logSplitWindowComplete(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v2

    .line 2252
    return-void

    .line 2254
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public preStartPairActivities()V
    .locals 2

    .prologue
    .line 2237
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    .line 2238
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mLaunchingPairActivities:Z

    .line 2239
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    .line 2240
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mAutoResizeController:Lcom/android/server/am/MultiWindowAutoResizeController;

    if-eqz v0, :cond_0

    .line 2241
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mAutoResizeController:Lcom/android/server/am/MultiWindowAutoResizeController;

    invoke-virtual {v0}, Lcom/android/server/am/MultiWindowAutoResizeController;->deferAutoResizeLocked()V

    .line 2242
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    invoke-interface {v0}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->isEnsureDockedResizing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2243
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mEnsureDockedMode:Z

    .line 2247
    :cond_0
    invoke-direct {p0}, Lcom/android/server/am/MultiWindowManagerService;->startPairActivitiesScreenFreezeAnimationLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 2235
    return-void

    .line 2237
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public registerMultiWindowEventListener(Lcom/samsung/android/multiwindow/IMultiWindowEventListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/samsung/android/multiwindow/IMultiWindowEventListener;

    .prologue
    .line 3761
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mMultiWindowEventListeners:Landroid/os/RemoteCallbackList;

    monitor-enter v1

    .line 3762
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mMultiWindowEventListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 3759
    return-void

    .line 3761
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public registerMultiWindowServiceCallback(Lcom/samsung/android/multiwindow/IMultiWindowCallback;)V
    .locals 2
    .param p1, "observer"    # Lcom/samsung/android/multiwindow/IMultiWindowCallback;

    .prologue
    .line 3771
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v1

    .line 3772
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 3769
    return-void

    .line 3771
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public removeFocusedTask()Z
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 5447
    sget-boolean v5, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v5, :cond_8

    .line 5448
    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6

    .line 5449
    const/4 v0, 0x0

    .line 5450
    .local v0, "focusedAr":Lcom/android/server/am/ActivityRecord;
    const/4 v2, 0x0

    .line 5451
    .local v2, "focusedTask":Lcom/android/server/am/TaskRecord;
    :try_start_0
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v5, Lcom/android/server/am/ActivityManagerService;->mFocusedActivity:Lcom/android/server/am/ActivityRecord;

    .line 5452
    .local v0, "focusedAr":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_3

    .line 5453
    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 5463
    .end local v2    # "focusedTask":Lcom/android/server/am/TaskRecord;
    :cond_0
    :goto_0
    if-eqz v2, :cond_6

    .line 5464
    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->isHomeTask()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 5465
    const/4 v4, 0x0

    .line 5466
    .local v4, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v7, 0x2

    invoke-virtual {v5, v7}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    .line 5467
    .local v3, "freeformStack":Lcom/android/server/am/ActivityStack;
    sget-boolean v5, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    if-eqz v5, :cond_1

    const-string v5, "MultiWindowManagerService_Bixby"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "removeFocusedTask, freeformStack="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5469
    :cond_1
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 5470
    sget-boolean v5, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    if-eqz v5, :cond_2

    const-string v5, "MultiWindowManagerService_Bixby"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "removeFocusedTask, topTask="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5471
    :cond_2
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v7

    iget v7, v7, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v5, v7}, Lcom/android/server/am/ActivityManagerService;->removeTask(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    .line 5472
    return v9

    .line 5455
    .end local v3    # "freeformStack":Lcom/android/server/am/ActivityStack;
    .end local v4    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    .restart local v2    # "focusedTask":Lcom/android/server/am/TaskRecord;
    :cond_3
    :try_start_1
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 5456
    .local v1, "focusedStack":Lcom/android/server/am/ActivityStack;
    if-eqz v1, :cond_0

    .line 5457
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 5458
    if-eqz v0, :cond_0

    .line 5459
    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .local v2, "focusedTask":Lcom/android/server/am/TaskRecord;
    goto :goto_0

    .line 5475
    .end local v1    # "focusedStack":Lcom/android/server/am/ActivityStack;
    .end local v2    # "focusedTask":Lcom/android/server/am/TaskRecord;
    :cond_4
    sget-boolean v5, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    if-eqz v5, :cond_5

    const-string v5, "MultiWindowManagerService_Bixby"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "removeFocusedTask, focusedTask="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5476
    :cond_5
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget v7, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v5, v7}, Lcom/android/server/am/ActivityManagerService;->removeTask(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v6

    .line 5477
    return v9

    .line 5480
    :cond_6
    :try_start_2
    sget-boolean v5, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    if-eqz v5, :cond_7

    const-string v5, "MultiWindowManagerService_Bixby"

    const-string v7, "removeFocusedTask, There is no FocesedTask!! "

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_7
    monitor-exit v6

    .line 5484
    .end local v0    # "focusedAr":Lcom/android/server/am/ActivityRecord;
    :cond_8
    const/4 v5, 0x0

    return v5

    .line 5448
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method public removeFreeformTasks(I)Z
    .locals 13
    .param p1, "flags"    # I

    .prologue
    const/4 v12, 0x1

    .line 4075
    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    const-string v8, "android.permission.REMOVE_TASKS"

    const-string v9, "removeFreeformTasks()"

    invoke-virtual {v7, v8, v9}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4077
    const/4 v4, 0x0

    .line 4079
    .local v4, "result":Z
    iget-object v8, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v8

    .line 4080
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v2

    .line 4082
    .local v2, "ident":J
    :try_start_1
    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v9, 0x2

    invoke-virtual {v7, v9}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 4083
    .local v0, "freeformStack":Lcom/android/server/am/ActivityStack;
    if-eqz v0, :cond_3

    .line 4084
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v1

    .line 4085
    .local v1, "freeformTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .end local v4    # "result":Z
    .local v6, "task$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/TaskRecord;

    .line 4086
    .local v5, "task":Lcom/android/server/am/TaskRecord;
    and-int/lit8 v7, p1, 0x2

    if-eqz v7, :cond_1

    .line 4087
    iget v7, v5, Lcom/android/server/am/TaskRecord;->mHiddenState:I

    if-ne v7, v12, :cond_0

    .line 4090
    :cond_1
    and-int/lit8 v7, p1, 0x1

    if-eqz v7, :cond_2

    .line 4091
    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v9, v5, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {v7, v9}, Lcom/android/server/am/ActivityStackSupervisor;->isCurrentProfileLocked(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 4094
    :cond_2
    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget v9, v5, Lcom/android/server/am/TaskRecord;->taskId:I

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual {v7, v9, v10, v11}, Lcom/android/server/am/ActivityManagerService;->removeTaskByIdLocked(IZZ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v7

    or-int/2addr v4, v7

    .local v4, "result":Z
    goto :goto_0

    .line 4098
    .end local v1    # "freeformTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    .end local v4    # "result":Z
    .end local v5    # "task":Lcom/android/server/am/TaskRecord;
    .end local v6    # "task$iterator":Ljava/util/Iterator;
    :cond_3
    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v8

    .line 4102
    return v4

    .line 4097
    .end local v0    # "freeformStack":Lcom/android/server/am/ActivityStack;
    :catchall_0
    move-exception v7

    .line 4098
    :try_start_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4097
    throw v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 4079
    .end local v2    # "ident":J
    :catchall_1
    move-exception v7

    monitor-exit v8

    throw v7
.end method

.method public removeSearchedTask(Ljava/lang/String;)Z
    .locals 14
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v13, 0x0

    .line 5419
    sget-boolean v9, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v9, :cond_6

    .line 5420
    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v10

    .line 5421
    :try_start_0
    sget-boolean v9, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    if-eqz v9, :cond_0

    const-string v9, "MultiWindowManagerService_Bixby"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "removeSearchedTask, packageName="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 5422
    const-string v12, ", caller="

    .line 5421
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 5422
    const/4 v12, 0x5

    invoke-static {v12}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v12

    .line 5421
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5424
    :cond_0
    iget-object v9, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v9}, Lcom/android/server/am/ActivityStackSupervisor;->getStacks()Ljava/util/ArrayList;

    move-result-object v5

    .line 5425
    .local v5, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "stack$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityStack;

    .line 5426
    .local v3, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v8

    .line 5427
    .local v8, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "task$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/TaskRecord;

    .line 5428
    .local v6, "task":Lcom/android/server/am/TaskRecord;
    iget-object v0, v6, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 5429
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v1, v9, -0x1

    .local v1, "activityNdx":I
    :goto_0
    if-ltz v1, :cond_2

    .line 5430
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 5431
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v2, :cond_4

    iget-object v9, v2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    if-eqz v9, :cond_4

    .line 5432
    iget-object v9, v2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 5431
    if-eqz v9, :cond_4

    .line 5433
    sget-boolean v9, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    if-eqz v9, :cond_3

    const-string v9, "MultiWindowManagerService_Bixby"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "removeSearchedTask, task="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5434
    :cond_3
    iget-object v9, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget v11, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v9, v11}, Lcom/android/server/am/ActivityManagerService;->removeTask(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5435
    const/4 v9, 0x1

    monitor-exit v10

    return v9

    .line 5429
    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v3    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v6    # "task":Lcom/android/server/am/TaskRecord;
    .end local v7    # "task$iterator":Ljava/util/Iterator;
    .end local v8    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    :cond_5
    monitor-exit v10

    .line 5442
    .end local v4    # "stack$iterator":Ljava/util/Iterator;
    .end local v5    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_6
    return v13

    .line 5420
    :catchall_0
    move-exception v9

    monitor-exit v10

    throw v9
.end method

.method public removeTaskIfNeeded(Z)Z
    .locals 14
    .param p1, "topLeft"    # Z

    .prologue
    const/4 v10, 0x1

    const/4 v13, 0x0

    .line 3888
    iget-object v9, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    const-string v11, "android.permission.REMOVE_TASKS"

    const-string v12, "removeTaskIfNeeded()"

    invoke-virtual {v9, v11, v12}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3889
    iget-object v11, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v11

    .line 3890
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v4

    .line 3892
    .local v4, "ident":J
    :try_start_1
    iget-object v9, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v9}, Lcom/android/server/wm/WindowManagerService;->getDockedStackSide()I

    move-result v1

    .line 3893
    .local v1, "dockSide":I
    iget-object v12, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 3894
    invoke-static {v1}, Lcom/android/server/am/MultiWindowManagerService;->dockSideTopLeft(I)Z

    move-result v9

    if-ne v9, p1, :cond_0

    .line 3895
    const/4 v9, 0x3

    .line 3893
    :goto_0
    invoke-virtual {v12, v9}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    .line 3897
    .local v6, "target":Lcom/android/server/am/ActivityStack;
    if-nez v6, :cond_1

    .line 3915
    :try_start_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v11

    .line 3897
    return v13

    .end local v6    # "target":Lcom/android/server/am/ActivityStack;
    :cond_0
    move v9, v10

    .line 3895
    goto :goto_0

    .line 3899
    .restart local v6    # "target":Lcom/android/server/am/ActivityStack;
    :cond_1
    :try_start_3
    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v7

    .line 3900
    .local v7, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 3901
    .local v3, "size":I
    const/4 v0, 0x0

    .line 3903
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_3

    .line 3904
    iget-object v12, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/TaskRecord;

    invoke-virtual {v9}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v9

    invoke-virtual {v12, v9}, Lcom/android/server/am/ActivityStackSupervisor;->okToShowLocked(Lcom/android/server/am/ActivityRecord;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 3905
    add-int/lit8 v0, v0, 0x1

    .line 3903
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3909
    :cond_3
    add-int/lit8 v9, v3, -0x1

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/TaskRecord;

    .line 3910
    .local v8, "topTask":Lcom/android/server/am/TaskRecord;
    if-le v0, v10, :cond_4

    invoke-virtual {v8}, Lcom/android/server/am/TaskRecord;->getTaskToReturnTo()I

    move-result v9

    if-nez v9, :cond_4

    .line 3911
    iget-object v9, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget v12, v8, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v9, v12}, Lcom/android/server/am/ActivityManagerService;->removeTask(I)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3915
    :try_start_4
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit v11

    .line 3912
    return v10

    .line 3915
    :cond_4
    :try_start_5
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    monitor-exit v11

    .line 3919
    return v13

    .line 3914
    .end local v0    # "count":I
    .end local v1    # "dockSide":I
    .end local v2    # "i":I
    .end local v3    # "size":I
    .end local v6    # "target":Lcom/android/server/am/ActivityStack;
    .end local v7    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    .end local v8    # "topTask":Lcom/android/server/am/TaskRecord;
    :catchall_0
    move-exception v9

    .line 3915
    :try_start_6
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3914
    throw v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 3889
    .end local v4    # "ident":J
    :catchall_1
    move-exception v9

    monitor-exit v11

    throw v9
.end method

.method public reportMinimizeContainerBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 4402
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    invoke-interface {v0, p1}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->reportMinimizeContainerBounds(Landroid/graphics/Rect;)V

    .line 4401
    return-void
.end method

.method public requestAutoResizingIfNeeded(Landroid/graphics/Rect;)Z
    .locals 1
    .param p1, "orig"    # Landroid/graphics/Rect;

    .prologue
    .line 2119
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mAutoResizeController:Lcom/android/server/am/MultiWindowAutoResizeController;

    invoke-virtual {v0, p1}, Lcom/android/server/am/MultiWindowAutoResizeController;->autoResizingIfNeeded(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public resizeDockedStack(I)V
    .locals 7
    .param p1, "type"    # I

    .prologue
    .line 4334
    if-ltz p1, :cond_0

    .line 4335
    const/4 v0, 0x2

    if-le p1, v0, :cond_1

    .line 4336
    :cond_0
    return-void

    .line 4338
    :cond_1
    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6

    .line 4339
    :try_start_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 4340
    .local v1, "bounds":Landroid/graphics/Rect;
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    invoke-interface {v0, p1, v1}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->getSpecificTargetDockedBounds(ILandroid/graphics/Rect;)V

    .line 4341
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    monitor-exit v6

    .line 4342
    return-void

    .line 4343
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityManagerService;->resizeDockedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v6

    .line 4332
    return-void

    .line 4338
    .end local v1    # "bounds":Landroid/graphics/Rect;
    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method public restoreFullscreenStateLocked(Ljava/lang/String;Lcom/android/server/am/TaskRecord;)V
    .locals 8
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "task"    # Lcom/android/server/am/TaskRecord;

    .prologue
    const/4 v7, 0x1

    .line 1301
    const/4 v1, 0x0

    .line 1302
    .local v1, "moveHomeStackToFront":Z
    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "tr$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    .line 1303
    .local v2, "tr":Lcom/android/server/am/TaskRecord;
    if-eq v2, p2, :cond_0

    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->isRecentsTask()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1304
    iget-object v4, v2, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v4, :cond_0

    .line 1305
    iget-object v4, v2, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget v4, v4, Lcom/android/server/am/ActivityStack;->mStackId:I

    const/4 v5, 0x4

    if-eq v4, v5, :cond_0

    .line 1306
    iget-object v4, v2, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget v4, v4, Lcom/android/server/am/ActivityStack;->mStackId:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    .line 1307
    iget-object v4, v2, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget v4, v4, Lcom/android/server/am/ActivityStack;->mStackId:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    .line 1311
    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->isHomeTask()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1312
    const/4 v1, 0x1

    .line 1320
    .end local v2    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_1
    :goto_0
    sget-boolean v4, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    if-eqz v4, :cond_2

    const-string v4, "MultiWindowManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "restoreFullscreenState: task="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " moveHomeStackToFront="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1322
    :cond_2
    if-eqz v1, :cond_5

    .line 1323
    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "restoreFullscreenState("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v7, v5}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStackTaskToTop(ILjava/lang/String;)Z

    .line 1299
    :goto_1
    return-void

    .line 1313
    .restart local v2    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_3
    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->isResizeable()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-direct {p0}, Lcom/android/server/am/MultiWindowManagerService;->isDockedStackVisibleLocked()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1314
    sget-boolean v4, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    if-eqz v4, :cond_4

    const-string v4, "MultiWindowManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "restoreFullscreenState: docked visible, full task is unresizable, tr="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1315
    :cond_4
    const/4 v1, 0x1

    goto :goto_0

    .line 1325
    .end local v2    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_5
    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4, v7}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 1326
    .local v0, "fullScreenStack":Lcom/android/server/am/ActivityStack;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "restoreFullscreenState("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 1327
    const/4 v4, 0x0

    invoke-virtual {p2, v4}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    goto :goto_1
.end method

.method public rotateFreeformTask(Landroid/os/IBinder;)V
    .locals 14
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 5493
    iget-boolean v9, p0, Lcom/android/server/am/MultiWindowManagerService;->mIsDesktopModeEnabled:Z

    .line 5492
    if-eqz v9, :cond_7

    .line 5494
    iget-object v9, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    const-string v10, "rotateFreeformTask"

    invoke-virtual {v9, v10}, Lcom/android/server/am/ActivityManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 5495
    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v10

    .line 5496
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v4

    .line 5498
    .local v4, "origId":J
    :try_start_1
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v8

    .line 5499
    .local v8, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v8, :cond_6

    iget-object v9, v8, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v9, :cond_6

    iget-object v9, v8, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-boolean v9, v9, Lcom/android/server/am/TaskRecord;->mIsDexCompatEnabled:Z

    if-eqz v9, :cond_6

    .line 5501
    const/4 v3, 0x0

    .line 5502
    .local v3, "nextTaskOrientation":I
    iget-object v9, v8, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v9, v9, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    if-eqz v9, :cond_0

    iget-object v9, v8, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v9, v9, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    iget-object v11, v8, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v11, v11, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v11

    if-le v9, v11, :cond_1

    .line 5503
    :cond_0
    const/4 v3, 0x1

    .line 5506
    :cond_1
    iget-object v9, v8, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-direct {p0, v9, v3}, Lcom/android/server/am/MultiWindowManagerService;->getSupportScreenBounds(Lcom/android/server/am/TaskRecord;I)Landroid/graphics/Rect;

    move-result-object v0

    .line 5508
    .local v0, "bounds":Landroid/graphics/Rect;
    if-eqz v0, :cond_5

    .line 5509
    iget-object v9, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v11, v8, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v11, v11, Lcom/android/server/am/TaskRecord;->displayId:I

    iget-object v12, p0, Lcom/android/server/am/MultiWindowManagerService;->mDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v9, v11, v12}, Lcom/android/server/wm/WindowManagerService;->getBaseDisplaySize(ILandroid/graphics/Point;)V

    .line 5511
    iget-object v9, p0, Lcom/android/server/am/MultiWindowManagerService;->mDisplaySize:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v11

    sub-int/2addr v9, v11

    div-int/lit8 v6, v9, 0x2

    .line 5512
    .local v6, "positionX":I
    const/4 v7, 0x0

    .line 5513
    .local v7, "positionY":I
    iget-object v9, v8, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v9, v9, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    if-eqz v9, :cond_2

    .line 5514
    iget-object v9, v8, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v9, v9, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    iget v6, v9, Landroid/graphics/Rect;->left:I

    .line 5515
    iget-object v9, v8, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v9, v9, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    iget v7, v9, Landroid/graphics/Rect;->top:I

    .line 5517
    :cond_2
    invoke-virtual {v0, v6, v7}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 5519
    const/4 v1, 0x0

    .line 5520
    .local v1, "dx":I
    const/4 v2, 0x0

    .line 5521
    .local v2, "dy":I
    iget v9, v0, Landroid/graphics/Rect;->left:I

    if-gez v9, :cond_8

    .line 5522
    iget v9, v0, Landroid/graphics/Rect;->left:I

    neg-int v1, v9

    .line 5526
    :cond_3
    :goto_0
    iget v9, v0, Landroid/graphics/Rect;->top:I

    if-gez v9, :cond_9

    .line 5527
    iget v9, v0, Landroid/graphics/Rect;->top:I

    neg-int v2, v9

    .line 5531
    :cond_4
    :goto_1
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 5539
    .end local v1    # "dx":I
    .end local v2    # "dy":I
    .end local v6    # "positionX":I
    .end local v7    # "positionY":I
    :cond_5
    iget-object v9, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/16 v11, 0x12

    const/4 v12, 0x0

    invoke-virtual {v9, v11, v12}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 5541
    iget-object v9, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    .line 5542
    const-string v11, "rotate_freeform"

    .line 5541
    const/4 v12, 0x0

    .line 5542
    const/4 v13, 0x2

    .line 5541
    invoke-interface {v9, v12, v13, v11}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->setFreeformRelaunchAnimState(Ljava/util/ArrayList;ILjava/lang/String;)V

    .line 5543
    iget-object v9, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    iget-object v11, v8, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v9, v11, v0}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->resizeTaskWithRelaunchAnim(Landroid/view/IApplicationToken;Landroid/graphics/Rect;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5546
    .end local v0    # "bounds":Landroid/graphics/Rect;
    .end local v3    # "nextTaskOrientation":I
    :cond_6
    :try_start_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v10

    .line 5491
    .end local v4    # "origId":J
    .end local v8    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_7
    return-void

    .line 5523
    .restart local v0    # "bounds":Landroid/graphics/Rect;
    .restart local v1    # "dx":I
    .restart local v2    # "dy":I
    .restart local v3    # "nextTaskOrientation":I
    .restart local v4    # "origId":J
    .restart local v6    # "positionX":I
    .restart local v7    # "positionY":I
    .restart local v8    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_8
    :try_start_3
    iget v9, v0, Landroid/graphics/Rect;->right:I

    iget-object v11, p0, Lcom/android/server/am/MultiWindowManagerService;->mDisplaySize:Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->x:I

    if-le v9, v11, :cond_3

    .line 5524
    iget-object v9, p0, Lcom/android/server/am/MultiWindowManagerService;->mDisplaySize:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    iget v11, v0, Landroid/graphics/Rect;->right:I

    sub-int v1, v9, v11

    goto :goto_0

    .line 5528
    :cond_9
    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v11, p0, Lcom/android/server/am/MultiWindowManagerService;->mDisplaySize:Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->y:I

    if-le v9, v11, :cond_4

    .line 5529
    iget-object v9, p0, Lcom/android/server/am/MultiWindowManagerService;->mDisplaySize:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->y:I

    iget v11, v0, Landroid/graphics/Rect;->bottom:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    sub-int v2, v9, v11

    goto :goto_1

    .line 5545
    .end local v0    # "bounds":Landroid/graphics/Rect;
    .end local v1    # "dx":I
    .end local v2    # "dy":I
    .end local v3    # "nextTaskOrientation":I
    .end local v6    # "positionX":I
    .end local v7    # "positionY":I
    .end local v8    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_0
    move-exception v9

    .line 5546
    :try_start_4
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5545
    throw v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 5495
    .end local v4    # "origId":J
    :catchall_1
    move-exception v9

    monitor-exit v10

    throw v9
.end method

.method public rotationAnimationStateChangedLocked(Z)V
    .locals 1
    .param p1, "isAnimating"    # Z

    .prologue
    .line 1920
    iget-boolean v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mIsRotationAnimating:Z

    if-eq v0, p1, :cond_1

    .line 1921
    if-nez p1, :cond_0

    .line 1922
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mBoundsForNewconfig:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1925
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/am/MultiWindowManagerService;->mIsRotationAnimating:Z

    .line 1919
    :cond_1
    return-void
.end method

.method public setAutoResizeAnimating(Z)V
    .locals 1
    .param p1, "isAnimating"    # Z

    .prologue
    .line 4052
    iput-boolean p1, p0, Lcom/android/server/am/MultiWindowManagerService;->mAutoResizeAnimating:Z

    .line 4053
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    invoke-interface {v0, p1}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->setAutoResizeAnimating(Z)V

    .line 4050
    return-void
.end method

.method public setBoundsForNewConfig(ILandroid/graphics/Rect;)V
    .locals 2
    .param p1, "stackId"    # I
    .param p2, "newBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 4644
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mBoundsForNewconfig:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4643
    return-void
.end method

.method public setDividerButtonsDimLayer(ZFI)V
    .locals 1
    .param p1, "visible"    # Z
    .param p2, "alpha"    # F
    .param p3, "type"    # I

    .prologue
    .line 3995
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->setDividerButtonsDimLayer(ZFI)V

    .line 3993
    return-void
.end method

.method public setDockedStackDividerButtonsTouchRegion(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 4042
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    invoke-interface {v0, p1}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->setDockedStackDividerButtonsTouchRegion(Landroid/graphics/Rect;)V

    .line 4040
    return-void
.end method

.method public setFreeformStackVisibilityLocked(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 1587
    iput-boolean p1, p0, Lcom/android/server/am/MultiWindowManagerService;->mFreeformAlwaysVisible:Z

    .line 1588
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    invoke-interface {v0, p1}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->setFreeformStackVisibilityLocked(Z)V

    .line 1586
    return-void
.end method

.method public setHiddenTaskLocked(Lcom/android/server/am/TaskRecord;I)V
    .locals 10
    .param p1, "tr"    # Lcom/android/server/am/TaskRecord;
    .param p2, "hidden"    # I

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x1

    .line 1530
    if-eqz p1, :cond_0

    iget v0, p1, Lcom/android/server/am/TaskRecord;->mHiddenState:I

    if-ne v0, p2, :cond_1

    .line 1534
    :cond_0
    return-void

    .line 1531
    :cond_1
    if-ne p2, v5, :cond_2

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1537
    :cond_2
    iget v0, p1, Lcom/android/server/am/TaskRecord;->mHiddenState:I

    if-nez v0, :cond_6

    if-ne p2, v5, :cond_6

    .line 1538
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v1, p1, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->isCurrentProfileLocked(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1539
    iget-object v1, p1, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    iget v2, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-object v3, p1, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    iget v4, p1, Lcom/android/server/am/TaskRecord;->userId:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/MultiWindowManagerService;->notifyFreeformMinimizeStateChanged(Landroid/graphics/Rect;ILandroid/content/ComponentName;II)V

    .line 1540
    iget-object v0, p1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0, v8}, Lcom/android/server/am/ActivityStack;->getStackVisibilityLocked(Lcom/android/server/am/ActivityRecord;)I

    move-result v0

    if-nez v0, :cond_3

    .line 1544
    iget-object v0, p1, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_5

    new-instance v6, Landroid/graphics/Rect;

    iget-object v0, p1, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    invoke-direct {v6, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1545
    .local v6, "taskBounds":Landroid/graphics/Rect;
    :goto_0
    iget v0, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {p0, v0, v5, v6}, Lcom/android/server/am/MultiWindowManagerService;->notifyFreefromWindowAnimationEnd(IILandroid/graphics/Rect;)V

    .line 1548
    .end local v6    # "taskBounds":Landroid/graphics/Rect;
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/server/am/MultiWindowManagerService;->forceClearMinimizeIfNeededLocked(Lcom/android/server/am/TaskRecord;)V

    .line 1555
    :cond_4
    :goto_1
    iput p2, p1, Lcom/android/server/am/TaskRecord;->mHiddenState:I

    .line 1556
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    iget v1, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-interface {v0, v1, p2}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->setHidden(II)V

    .line 1528
    return-void

    .line 1544
    :cond_5
    new-instance v6, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mDisplaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mDisplaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-direct {v6, v7, v7, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    .line 1549
    :cond_6
    iget v0, p1, Lcom/android/server/am/TaskRecord;->mHiddenState:I

    if-ne v0, v5, :cond_7

    if-nez p2, :cond_7

    .line 1550
    iget-object v1, p1, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    iget v2, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-object v3, p1, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    iget v4, p1, Lcom/android/server/am/TaskRecord;->userId:I

    move-object v0, p0

    move v5, v9

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/MultiWindowManagerService;->notifyFreeformMinimizeStateChanged(Landroid/graphics/Rect;ILandroid/content/ComponentName;II)V

    goto :goto_1

    .line 1551
    :cond_7
    iget v0, p1, Lcom/android/server/am/TaskRecord;->mHiddenState:I

    if-ne v0, v5, :cond_4

    if-ne p2, v9, :cond_4

    .line 1552
    iget-object v1, p1, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    iget v2, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-object v3, p1, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    iget v4, p1, Lcom/android/server/am/TaskRecord;->userId:I

    const/4 v5, 0x3

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/MultiWindowManagerService;->notifyFreeformMinimizeStateChanged(Landroid/graphics/Rect;ILandroid/content/ComponentName;II)V

    goto :goto_1
.end method

.method public setLaunchBounds(ILandroid/graphics/Rect;)V
    .locals 2
    .param p1, "taskId"    # I
    .param p2, "launchBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 3694
    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v0, :cond_0

    .line 3695
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    .line 3696
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/MultiWindowManagerService;->setLaunchBoundsLocked(ILandroid/graphics/Rect;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 3693
    :cond_0
    return-void

    .line 3695
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public setMaxVisibleFreeformCount(I)V
    .locals 4
    .param p1, "maxCount"    # I

    .prologue
    .line 1342
    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v0, :cond_1

    .line 1343
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v2, "setMaxVisibleFreeformCount"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1344
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    .line 1345
    if-lez p1, :cond_2

    .line 1346
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mIsOverWrittenFreeformCnt:Z

    .line 1347
    iput p1, p0, Lcom/android/server/am/MultiWindowManagerService;->mMaxFreeformOverWrittenCnt:I

    .line 1353
    :goto_0
    sget-boolean v0, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1354
    const-string v0, "MultiWindowManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMaxVisibleFreeformCount, mIsOverWrittenFreeformCnt="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mIsOverWrittenFreeformCnt:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1355
    const-string v3, ", mMaxFreeformOverWrittenCnt="

    .line 1354
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1355
    iget v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mMaxFreeformOverWrittenCnt:I

    .line 1354
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1356
    const-string v3, ", caller="

    .line 1354
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1356
    const/4 v3, 0x5

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    .line 1354
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1358
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/server/am/MultiWindowManagerService;->applyFreeformMinimizePolicyLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1341
    :cond_1
    return-void

    .line 1349
    :cond_2
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mIsOverWrittenFreeformCnt:Z

    .line 1350
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mMaxFreeformOverWrittenCnt:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1344
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setMultiWindowEnabledForUser(Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 14
    .param p1, "requester"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "enable"    # Z
    .param p4, "userId"    # I

    .prologue
    .line 4162
    iget-object v9, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v9

    .line 4163
    :try_start_0
    iget-object v8, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    const-string v10, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v11, "setMultiWindowEnabled"

    invoke-virtual {v8, v10, v11}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4165
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v8

    move/from16 v0, p4

    if-eq v0, v8, :cond_0

    .line 4166
    iget-object v8, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    const-string v10, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const-string v11, "setMultiWindowEnabled"

    invoke-virtual {v8, v10, v11}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4169
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 4170
    .local v4, "origId":J
    const/4 v8, -0x1

    move/from16 v0, p4

    if-ne v0, v8, :cond_5

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mMWOffRequestersForAllUsers:Ljava/util/ArrayList;

    .line 4171
    .local v2, "offRequester":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    const/4 v8, -0x1

    move/from16 v0, p4

    if-ne v0, v8, :cond_6

    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mMWOffRequestersLogForAllUsers:Ljava/util/ArrayList;

    .line 4173
    .local v3, "offRequesterLog":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    if-nez v2, :cond_1

    .line 4174
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "offRequester":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4175
    .restart local v2    # "offRequester":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/android/server/am/MultiWindowManagerService;->mMWOffRequesters:Landroid/util/SparseArray;

    move/from16 v0, p4

    invoke-virtual {v8, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4177
    :cond_1
    if-nez v3, :cond_2

    .line 4178
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "offRequesterLog":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 4179
    .restart local v3    # "offRequesterLog":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/android/server/am/MultiWindowManagerService;->mMWOffRequestersLog:Landroid/util/SparseArray;

    move/from16 v0, p4

    invoke-virtual {v8, v0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4183
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "("

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p3

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ", "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p2

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ", "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mSimpleDateFormat:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ")"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4184
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/16 v10, 0x64

    if-le v8, v10, :cond_3

    .line 4185
    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4187
    :cond_3
    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mLastReason:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4189
    if-eqz p3, :cond_7

    .line 4190
    :try_start_1
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4191
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 4192
    const/4 v8, 0x1

    move/from16 v0, p4

    invoke-direct {p0, p1, v8, v0}, Lcom/android/server/am/MultiWindowManagerService;->updateMultiWindowDynamicEnabledLocked(Ljava/lang/String;ZI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4201
    :cond_4
    :goto_2
    :try_start_2
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "str$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 4202
    .local v6, "str":Ljava/lang/String;
    const-string v8, "MultiWindowManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateMultiWindowSetting prev requester : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 4162
    .end local v2    # "offRequester":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "offRequesterLog":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "origId":J
    .end local v6    # "str":Ljava/lang/String;
    .end local v7    # "str$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v8

    monitor-exit v9

    throw v8

    .line 4170
    .restart local v4    # "origId":J
    :cond_5
    :try_start_3
    iget-object v8, p0, Lcom/android/server/am/MultiWindowManagerService;->mMWOffRequesters:Landroid/util/SparseArray;

    move/from16 v0, p4

    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .restart local v2    # "offRequester":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto/16 :goto_0

    .line 4171
    :cond_6
    iget-object v8, p0, Lcom/android/server/am/MultiWindowManagerService;->mMWOffRequestersLog:Landroid/util/SparseArray;

    move/from16 v0, p4

    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .restart local v3    # "offRequesterLog":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto/16 :goto_1

    .line 4195
    :cond_7
    :try_start_4
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 4196
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4197
    const/4 v8, 0x0

    move/from16 v0, p4

    invoke-direct {p0, p1, v8, v0}, Lcom/android/server/am/MultiWindowManagerService;->updateMultiWindowDynamicEnabledLocked(Ljava/lang/String;ZI)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    .line 4200
    :catchall_1
    move-exception v8

    .line 4201
    :try_start_5
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7    # "str$iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 4202
    .restart local v6    # "str":Ljava/lang/String;
    const-string v10, "MultiWindowManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updateMultiWindowSetting prev requester : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 4204
    .end local v6    # "str":Ljava/lang/String;
    :cond_8
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit v9

    .line 4160
    return-void

    .line 4204
    :cond_9
    :try_start_6
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4200
    throw v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public setProcessKillAfterRemovingTaskLocked(Lcom/android/server/am/TaskRecord;)V
    .locals 2
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 1495
    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v0, :cond_0

    .line 1496
    iget-boolean v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mIsDesktopModeEnabled:Z

    if-eqz v0, :cond_0

    .line 1497
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/am/TaskRecord;->mProcessKillAfterRemovingTask:Z

    .line 1498
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    iget v1, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-interface {v0, v1}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->setProcessKillAfterRemovingTaskLocked(I)V

    .line 1494
    :cond_0
    return-void
.end method

.method public setSlideMode(IZ)V
    .locals 2
    .param p1, "taskId"    # I
    .param p2, "slide"    # Z

    .prologue
    .line 3683
    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v0, :cond_0

    .line 3684
    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_SLIDE_MODE:Z

    .line 3683
    if-eqz v0, :cond_0

    .line 3685
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    .line 3686
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/MultiWindowManagerService;->setSlideModeLocked(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 3682
    :cond_0
    return-void

    .line 3685
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public setSlideModeLocked(IZ)V
    .locals 4
    .param p1, "taskId"    # I
    .param p2, "slide"    # Z

    .prologue
    .line 1478
    sget-boolean v1, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v1, :cond_1

    .line 1479
    sget-boolean v1, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_SLIDE_MODE:Z

    .line 1478
    if-eqz v1, :cond_1

    .line 1480
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v0

    .line 1481
    .local v0, "task":Lcom/android/server/am/TaskRecord;
    if-nez v0, :cond_0

    .line 1482
    const-string v1, "MultiWindowManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSlideModeLocked: cannot find task, id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1483
    return-void

    .line 1486
    :cond_0
    iget-boolean v1, v0, Lcom/android/server/am/TaskRecord;->mSlideMode:Z

    if-eq v1, p2, :cond_1

    .line 1487
    iput-boolean p2, v0, Lcom/android/server/am/TaskRecord;->mSlideMode:Z

    .line 1488
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    invoke-interface {v1, p1, p2}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->setSlideMode(IZ)V

    .line 1477
    .end local v0    # "task":Lcom/android/server/am/TaskRecord;
    :cond_1
    return-void
.end method

.method public setSnapWindow(ZLandroid/graphics/Rect;ILjava/lang/String;)V
    .locals 10
    .param p1, "enable"    # Z
    .param p2, "region"    # Landroid/graphics/Rect;
    .param p3, "target"    # I
    .param p4, "snapCaller"    # Ljava/lang/String;

    .prologue
    .line 4772
    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_WINDOW_SUPPORT:Z

    if-eqz v0, :cond_0

    .line 4773
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 4774
    .local v8, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 4776
    .local v6, "ident":J
    :try_start_0
    iget-object v9, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4777
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "called by "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/MultiWindowManagerService;->setSnapWindowLocked(ZLandroid/graphics/Rect;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4780
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4771
    .end local v6    # "ident":J
    .end local v8    # "uid":I
    :cond_0
    return-void

    .line 4776
    .restart local v6    # "ident":J
    .restart local v8    # "uid":I
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v9

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 4779
    :catchall_1
    move-exception v0

    .line 4780
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4779
    throw v0
.end method

.method public setSnapWindowLocked(ZLandroid/graphics/Rect;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "enable"    # Z
    .param p2, "region"    # Landroid/graphics/Rect;
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "snapCaller"    # Ljava/lang/String;

    .prologue
    .line 4930
    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/MultiWindowManagerService;->setSnapWindowLocked(ZLandroid/graphics/Rect;ILjava/lang/String;Ljava/lang/String;)V

    .line 4929
    return-void
.end method

.method public setSystemService(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/wm/WindowManagerService;)V
    .locals 4
    .param p1, "am"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "wm"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    .line 350
    iput-object p1, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    .line 351
    iput-object p2, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 353
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 354
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    invoke-interface {v0, p0}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->setMultiWindowManagerService(Lcom/android/server/am/IMultiWindowManagerServiceBridge;)V

    .line 355
    invoke-direct {p0}, Lcom/android/server/am/MultiWindowManagerService;->installSystemProviders()V

    .line 357
    new-instance v0, Lcom/android/server/am/MultiWindowAutoResizeController;

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 358
    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 357
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/MultiWindowAutoResizeController;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/wm/WindowManagerService;)V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mAutoResizeController:Lcom/android/server/am/MultiWindowAutoResizeController;

    .line 349
    return-void
.end method

.method public setTaskDimensions(Lcom/android/server/am/ActivityRecord;)V
    .locals 8
    .param p1, "activity"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v1, -0x1

    .line 1805
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v0, :cond_0

    .line 1806
    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 1807
    .local v7, "minTaskDimensions":Landroid/graphics/Point;
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 1808
    .local v6, "maxTaskDimensions":Landroid/graphics/Point;
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-direct {p0, v0, v7, v6}, Lcom/android/server/am/MultiWindowManagerService;->getTaskDimensions(Landroid/content/pm/ActivityInfo;Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 1809
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v1, v7, Landroid/graphics/Point;->x:I

    iget v2, v7, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/TaskRecord;->setMinTaskDimensions(II)V

    .line 1810
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v1, v6, Landroid/graphics/Point;->x:I

    iget v2, v6, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/TaskRecord;->setMaxTaskDimensions(II)V

    .line 1811
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v1, v1, Lcom/android/server/am/TaskRecord;->taskId:I

    .line 1812
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v2, v2, Lcom/android/server/am/TaskRecord;->mMinWidth:I

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v3, v3, Lcom/android/server/am/TaskRecord;->mMinHeight:I

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v4, v4, Lcom/android/server/am/TaskRecord;->mMaxWidth:I

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v5, v5, Lcom/android/server/am/TaskRecord;->mMaxHeight:I

    .line 1811
    invoke-interface/range {v0 .. v5}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->setTaskDimensions(IIIII)V

    .line 1804
    .end local v6    # "maxTaskDimensions":Landroid/graphics/Point;
    .end local v7    # "minTaskDimensions":Landroid/graphics/Point;
    :cond_0
    return-void
.end method

.method public setTaskDimensions(Lcom/android/server/am/TaskRecord;)V
    .locals 11
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    .prologue
    const/4 v10, 0x0

    const/4 v9, -0x1

    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v7, 0x0

    .line 1769
    if-eqz p1, :cond_5

    .line 1770
    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iget v6, v6, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v0, v6

    .line 1771
    .local v0, "currentDensityDpi":F
    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v6, v7}, Lcom/android/server/wm/WindowManagerService;->getInitialDisplayDensity(I)I

    move-result v6

    int-to-float v1, v6

    .line 1772
    .local v1, "deviceDensity":F
    iget-object v6, p1, Lcom/android/server/am/TaskRecord;->mMinDimensions:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    if-ne v6, v9, :cond_0

    .line 1773
    iget-object v6, p1, Lcom/android/server/am/TaskRecord;->mMinDimensions:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    if-eq v6, v9, :cond_2

    .line 1774
    :cond_0
    iget-object v6, p1, Lcom/android/server/am/TaskRecord;->mMinDimensions:Landroid/graphics/Point;

    iget v5, v6, Landroid/graphics/Point;->x:I

    .line 1775
    .local v5, "minWidth":I
    iget-object v6, p1, Lcom/android/server/am/TaskRecord;->mMinDimensions:Landroid/graphics/Point;

    iget v4, v6, Landroid/graphics/Point;->y:I

    .line 1776
    .local v4, "minHeight":I
    cmpl-float v6, v1, v10

    if-lez v6, :cond_1

    .line 1777
    if-gez v5, :cond_6

    const/4 v5, -0x1

    .line 1779
    :goto_0
    if-gez v4, :cond_7

    const/4 v4, -0x1

    .line 1782
    :cond_1
    :goto_1
    iput v5, p1, Lcom/android/server/am/TaskRecord;->mMinWidth:I

    .line 1783
    iput v4, p1, Lcom/android/server/am/TaskRecord;->mMinHeight:I

    .line 1784
    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    iget v7, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-interface {v6, v7, v5, v4}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->setTaskMinDimensions(III)V

    .line 1786
    .end local v4    # "minHeight":I
    .end local v5    # "minWidth":I
    :cond_2
    iget-object v6, p1, Lcom/android/server/am/TaskRecord;->mMaxDimensions:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    if-ne v6, v9, :cond_3

    .line 1787
    iget-object v6, p1, Lcom/android/server/am/TaskRecord;->mMaxDimensions:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    if-eq v6, v9, :cond_5

    .line 1788
    :cond_3
    iget-object v6, p1, Lcom/android/server/am/TaskRecord;->mMaxDimensions:Landroid/graphics/Point;

    iget v3, v6, Landroid/graphics/Point;->x:I

    .line 1789
    .local v3, "maxWidth":I
    iget-object v6, p1, Lcom/android/server/am/TaskRecord;->mMaxDimensions:Landroid/graphics/Point;

    iget v2, v6, Landroid/graphics/Point;->y:I

    .line 1790
    .local v2, "maxHeight":I
    cmpl-float v6, v1, v10

    if-lez v6, :cond_4

    .line 1791
    if-gez v3, :cond_8

    const/4 v3, -0x1

    .line 1793
    :goto_2
    if-gez v2, :cond_9

    const/4 v2, -0x1

    .line 1796
    :cond_4
    :goto_3
    iput v3, p1, Lcom/android/server/am/TaskRecord;->mMaxWidth:I

    .line 1797
    iput v2, p1, Lcom/android/server/am/TaskRecord;->mMaxHeight:I

    .line 1798
    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    iget v7, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-interface {v6, v7, v3, v2}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->setTaskMaxDimensions(III)V

    .line 1768
    .end local v0    # "currentDensityDpi":F
    .end local v1    # "deviceDensity":F
    .end local v2    # "maxHeight":I
    .end local v3    # "maxWidth":I
    :cond_5
    return-void

    .line 1778
    .restart local v0    # "currentDensityDpi":F
    .restart local v1    # "deviceDensity":F
    .restart local v4    # "minHeight":I
    .restart local v5    # "minWidth":I
    :cond_6
    int-to-float v6, v5

    mul-float/2addr v6, v0

    div-float/2addr v6, v1

    add-float/2addr v6, v8

    float-to-int v5, v6

    goto :goto_0

    .line 1780
    :cond_7
    int-to-float v6, v4

    mul-float/2addr v6, v0

    div-float/2addr v6, v1

    add-float/2addr v6, v8

    float-to-int v4, v6

    goto :goto_1

    .line 1792
    .end local v4    # "minHeight":I
    .end local v5    # "minWidth":I
    .restart local v2    # "maxHeight":I
    .restart local v3    # "maxWidth":I
    :cond_8
    int-to-float v6, v3

    mul-float/2addr v6, v0

    div-float/2addr v6, v1

    add-float/2addr v6, v8

    float-to-int v3, v6

    goto :goto_2

    .line 1794
    :cond_9
    int-to-float v6, v2

    mul-float/2addr v6, v0

    div-float/2addr v6, v1

    add-float/2addr v6, v8

    float-to-int v2, v6

    goto :goto_3
.end method

.method public showRecentApps()V
    .locals 3

    .prologue
    .line 4416
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v2, "showRecentApps()"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4417
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    .line 4418
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowManagerService;->showRecentApps(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 4414
    return-void

    .line 4417
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public showSnapWindowGuideView(I)V
    .locals 14
    .param p1, "type"    # I

    .prologue
    const/high16 v12, 0x41100000    # 9.0f

    .line 4825
    sget-boolean v9, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_WINDOW_SUPPORT:Z

    if-eqz v9, :cond_6

    .line 4826
    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v10

    .line 4827
    :try_start_0
    iget-object v9, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v11, 0x1

    invoke-virtual {v9, v11}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 4828
    .local v1, "full":Lcom/android/server/am/ActivityStack;
    if-nez v1, :cond_0

    monitor-exit v10

    return-void

    .line 4830
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 4831
    .local v2, "fullT":Lcom/android/server/am/TaskRecord;
    if-nez v2, :cond_1

    monitor-exit v10

    return-void

    .line 4833
    :cond_1
    :try_start_2
    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v7

    .line 4834
    .local v7, "topAr":Lcom/android/server/am/ActivityRecord;
    if-nez v7, :cond_2

    monitor-exit v10

    return-void

    .line 4836
    :cond_2
    :try_start_3
    iget-object v9, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    iget-object v11, v7, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v9, v11}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->getFullScreenStackTopTaskBounds(Landroid/os/IBinder;)Landroid/graphics/Rect;

    move-result-object v0

    .line 4837
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v9

    if-eqz v9, :cond_3

    monitor-exit v10

    return-void

    .line 4839
    :cond_3
    :try_start_4
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v8

    .line 4840
    .local v8, "width":I
    const/high16 v3, -0x40800000    # -1.0f

    .line 4842
    .local v3, "size":F
    packed-switch p1, :pswitch_data_0

    .line 4857
    const/high16 v3, -0x40800000    # -1.0f

    .line 4860
    :goto_0
    const/4 v9, 0x0

    cmpg-float v9, v3, v9

    if-gez v9, :cond_4

    monitor-exit v10

    return-void

    .line 4844
    :pswitch_0
    const/4 v3, 0x0

    .line 4845
    goto :goto_0

    .line 4847
    :pswitch_1
    const/high16 v9, 0x42400000    # 48.0f

    .line 4848
    :try_start_5
    iget-object v11, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    .line 4847
    const/4 v12, 0x1

    invoke-static {v12, v9, v11}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v9

    float-to-int v9, v9

    int-to-float v3, v9

    .line 4849
    goto :goto_0

    .line 4851
    :pswitch_2
    int-to-float v9, v8

    mul-float/2addr v9, v12

    const/high16 v11, 0x41800000    # 16.0f

    div-float v3, v9, v11

    .line 4852
    goto :goto_0

    .line 4854
    :pswitch_3
    int-to-float v9, v8

    mul-float/2addr v9, v12

    const/high16 v11, 0x41a80000    # 21.0f

    div-float v3, v9, v11

    .line 4855
    goto :goto_0

    .line 4862
    :cond_4
    float-to-double v12, v3

    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    move-result-wide v12

    double-to-int v4, v12

    .line 4864
    .local v4, "sizeInt":I
    const-class v9, Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-static {v9}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 4866
    .local v6, "statusBarManagerInternal":Lcom/android/server/statusbar/StatusBarManagerInternal;
    if-eqz v6, :cond_5

    .line 4867
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "appRequest"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 4868
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    .line 4867
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4869
    .local v5, "snapCaller":Ljava/lang/String;
    invoke-interface {v6, v4, v5}, Lcom/android/server/statusbar/StatusBarManagerInternal;->showSnapWindowGuideView(ILjava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .end local v5    # "snapCaller":Ljava/lang/String;
    :cond_5
    monitor-exit v10

    .line 4824
    .end local v0    # "bounds":Landroid/graphics/Rect;
    .end local v1    # "full":Lcom/android/server/am/ActivityStack;
    .end local v2    # "fullT":Lcom/android/server/am/TaskRecord;
    .end local v3    # "size":F
    .end local v4    # "sizeInt":I
    .end local v6    # "statusBarManagerInternal":Lcom/android/server/statusbar/StatusBarManagerInternal;
    .end local v7    # "topAr":Lcom/android/server/am/ActivityRecord;
    .end local v8    # "width":I
    :cond_6
    return-void

    .line 4826
    :catchall_0
    move-exception v9

    monitor-exit v10

    throw v9

    nop

    .line 4842
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public slideFreeform(Landroid/os/IBinder;)V
    .locals 8
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 3704
    sget-boolean v3, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v3, :cond_1

    .line 3705
    sget-boolean v3, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_SLIDE_MODE:Z

    .line 3704
    if-eqz v3, :cond_1

    .line 3706
    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 3707
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v0

    .line 3709
    .local v0, "origId":J
    :try_start_1
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 3710
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v2, :cond_0

    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-boolean v3, v3, Lcom/android/server/am/TaskRecord;->mSlideMode:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_2

    .line 3714
    :cond_0
    :goto_0
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v4

    .line 3703
    .end local v0    # "origId":J
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1
    return-void

    .line 3711
    .restart local v0    # "origId":J
    .restart local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_2
    :try_start_3
    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    iget-object v5, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v5, v5, Lcom/android/server/am/TaskRecord;->taskId:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-interface {v3, v5, v6, v7}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->slideFreeformTask(IZI)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 3713
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_0
    move-exception v3

    .line 3714
    :try_start_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3713
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 3706
    .end local v0    # "origId":J
    :catchall_1
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public slideOrUnslideAllFreeform(Z)V
    .locals 2
    .param p1, "forceSlide"    # Z

    .prologue
    .line 3723
    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v0, :cond_0

    .line 3724
    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_SLIDE_MODE:Z

    .line 3723
    if-eqz v0, :cond_0

    .line 3725
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    .line 3726
    if-nez p1, :cond_1

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/am/MultiWindowManagerService;->isAllTaskSlidedLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3729
    invoke-direct {p0}, Lcom/android/server/am/MultiWindowManagerService;->unslideAllFreeformTasksLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    .line 3722
    :cond_0
    return-void

    .line 3727
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/am/MultiWindowManagerService;->slideAllFreeformTasksLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3725
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public startDividerDragging()V
    .locals 2

    .prologue
    .line 4357
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    invoke-interface {v0}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->startDividerDragging()V

    .line 4359
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mAutoResizeController:Lcom/android/server/am/MultiWindowAutoResizeController;

    const-string v1, "startDividerDragging"

    invoke-virtual {v0, v1}, Lcom/android/server/am/MultiWindowAutoResizeController;->clearAutoResizeState(Ljava/lang/String;)V

    .line 4356
    return-void
.end method

.method public startFreeform()I
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    .line 5267
    sget-boolean v4, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v4, :cond_c

    .line 5268
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 5269
    :try_start_0
    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 5271
    .local v2, "topActivity":Lcom/android/server/am/ActivityRecord;
    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 5272
    .local v1, "fullscreenStack":Lcom/android/server/am/ActivityStack;
    if-eqz v1, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/android/server/am/ActivityStack;->getStackVisibilityLocked(Lcom/android/server/am/ActivityRecord;)I

    move-result v4

    if-eq v4, v8, :cond_0

    .line 5273
    const/4 v1, 0x0

    .line 5276
    .end local v1    # "fullscreenStack":Lcom/android/server/am/ActivityStack;
    :cond_0
    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v6, 0x3

    invoke-virtual {v4, v6}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 5277
    .local v0, "dockedStack":Lcom/android/server/am/ActivityStack;
    if-eqz v0, :cond_1

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/android/server/am/ActivityStack;->getStackVisibilityLocked(Lcom/android/server/am/ActivityRecord;)I

    move-result v4

    if-eq v4, v8, :cond_1

    .line 5278
    const/4 v0, 0x0

    .line 5281
    .end local v0    # "dockedStack":Lcom/android/server/am/ActivityStack;
    :cond_1
    if-eqz v2, :cond_3

    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget v4, v4, Lcom/android/server/am/ActivityStack;->mStackId:I

    if-ne v4, v7, :cond_3

    .line 5283
    sget-boolean v4, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    if-eqz v4, :cond_2

    .line 5284
    const-string v4, "MultiWindowManagerService_Bixby"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "startFreeform, Unable to start freeform, because it is already freeform, task="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5286
    :cond_2
    const/4 v4, 0x5

    monitor-exit v5

    return v4

    .line 5287
    :cond_3
    if-eqz v2, :cond_4

    if-nez v1, :cond_6

    if-nez v0, :cond_6

    .line 5289
    :cond_4
    :try_start_1
    sget-boolean v4, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    if-eqz v4, :cond_5

    .line 5290
    const-string v4, "MultiWindowManagerService_Bixby"

    const-string v6, "startFreeform, topActivity is null!"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    monitor-exit v5

    .line 5292
    return v7

    .line 5295
    :cond_6
    :try_start_2
    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 5296
    .local v3, "topTask":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->isResizeable()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->isRecentsTask()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 5298
    :cond_7
    sget-boolean v4, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    if-eqz v4, :cond_8

    .line 5299
    const-string v4, "MultiWindowManagerService_Bixby"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "startFreeform, Unable to start freeform, because it isn\'t resizeable, task="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5301
    :cond_8
    const/4 v4, 0x4

    monitor-exit v5

    return v4

    .line 5304
    :cond_9
    :try_start_3
    sget-boolean v4, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    if-eqz v4, :cond_a

    .line 5305
    const-string v4, "MultiWindowManagerService_Bixby"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "startFreeform, taskId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", topActivity = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5308
    :cond_a
    iget-object v4, v3, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget v4, v4, Lcom/android/server/am/ActivityStack;->mStackId:I

    if-ne v4, v9, :cond_b

    .line 5309
    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, v4, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/android/server/am/ActivityStack;->getStackVisibilityLocked(Lcom/android/server/am/ActivityRecord;)I

    move-result v4

    if-ne v4, v8, :cond_b

    .line 5310
    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, v4, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/android/server/am/ActivityStack;->moveHomeStackTaskToTop(I)V

    .line 5312
    :cond_b
    iget-object v4, v3, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget v4, v4, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-virtual {p0, v4}, Lcom/android/server/am/MultiWindowManagerService;->enterFreeformTask(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v5

    .line 5314
    return v8

    .line 5268
    .end local v2    # "topActivity":Lcom/android/server/am/ActivityRecord;
    .end local v3    # "topTask":Lcom/android/server/am/TaskRecord;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 5317
    :cond_c
    sget-boolean v4, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    if-eqz v4, :cond_d

    const-string v4, "MultiWindowManagerService_Bixby"

    const-string v5, "startFreeform, Unable to start freeform."

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5318
    :cond_d
    return v7
.end method

.method public startResizingFreeformTask(Landroid/os/IBinder;II)V
    .locals 7
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 3738
    sget-boolean v3, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v3, :cond_2

    .line 3739
    sget-boolean v3, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_SUPPORT:Z

    .line 3738
    if-eqz v3, :cond_2

    .line 3740
    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 3741
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v0

    .line 3743
    .local v0, "origId":J
    :try_start_1
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 3744
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v2, :cond_1

    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v3, :cond_1

    .line 3745
    sget-boolean v3, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 3746
    const-string v3, "MultiWindowManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startResizingFreeformTask task="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", x="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", y="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3748
    :cond_0
    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    iget-object v5, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v5, v5, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-interface {v3, v5, p2, p3}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->startResizingFreeformTask(III)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3751
    :cond_1
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v4

    .line 3737
    .end local v0    # "origId":J
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_2
    return-void

    .line 3750
    .restart local v0    # "origId":J
    :catchall_0
    move-exception v3

    .line 3751
    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3750
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3740
    .end local v0    # "origId":J
    :catchall_1
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public startSplitResizeAnimIfNeededLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "prevBounds"    # Landroid/graphics/Rect;
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 2081
    iget-boolean v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mSkipScreenFreezeAnimation:Z

    if-eqz v0, :cond_1

    .line 2082
    sget-boolean v0, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MultiWindowManagerService"

    const-string v1, "Skip ScreenFreezeAnimation"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2083
    :cond_0
    return-void

    .line 2085
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/MultiWindowManagerService;->isSplitBoundsChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/am/MultiWindowManagerService;->isEnsureDockedMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2094
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mTasksBoundsUnchangedDuringResize:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2079
    return-void

    .line 2086
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mSplitResizeAnimTargets:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/server/am/MultiWindowManagerService;->updateSplitResizeAnimTargetsLocked(Ljava/util/ArrayList;)Z

    move-result v0

    .line 2085
    if-eqz v0, :cond_2

    .line 2087
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mSplitResizeAnimTargets:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->prepareResizeAnim(Ljava/util/ArrayList;)V

    .line 2088
    if-nez p2, :cond_5

    .line 2089
    sget-boolean v0, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    if-eqz v0, :cond_4

    const-string v0, "MultiWindowManagerService"

    const-string v1, "set SkipScreenFreezeAnimation"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2090
    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mSkipScreenFreezeAnimation:Z

    .line 2092
    :cond_5
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mSplitResizeAnimTargets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method public startUserLocked(IZZ)V
    .locals 1
    .param p1, "userId"    # I
    .param p2, "foreground"    # Z
    .param p3, "needStart"    # Z

    .prologue
    .line 1724
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mMultiWindowSettingsObserver:Lcom/android/server/am/MultiWindowSettingsObserver;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/am/MultiWindowSettingsObserver;->startUserLocked(IZZ)V

    .line 1722
    return-void
.end method

.method public stopDividerDragging()V
    .locals 1

    .prologue
    .line 4365
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    invoke-interface {v0}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->stopDividerDragging()V

    .line 4364
    return-void
.end method

.method public stopUserLocked(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 1731
    const/4 v1, 0x0

    .line 1732
    .local v1, "willBeRemoved":Z
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v2, p1}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 1733
    .local v0, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1737
    :goto_0
    if-eqz v1, :cond_0

    .line 1738
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mMWOffRequesters:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1739
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mMWOffRequestersLog:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1742
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mMultiWindowSettingsObserver:Lcom/android/server/am/MultiWindowSettingsObserver;

    invoke-virtual {v2, p1, v1}, Lcom/android/server/am/MultiWindowSettingsObserver;->stopUserLocked(IZ)V

    .line 1729
    return-void

    .line 1734
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public suspendResize(ILandroid/graphics/Rect;)Z
    .locals 7
    .param p1, "stackId"    # I
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .prologue
    const/4 v6, 0x3

    const/4 v3, 0x1

    .line 4625
    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    invoke-interface {v4}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->isOrientationChanging()Z

    move-result v2

    .line 4626
    .local v2, "isRotating":Z
    if-eqz p2, :cond_0

    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mBoundsForNewconfig:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_0
    const/4 v0, 0x0

    .line 4629
    :goto_0
    if-eqz p2, :cond_5

    .line 4630
    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    invoke-interface {v4, v6}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->isStackAdjustedForIme(I)Z

    move-result v4

    .line 4629
    if-eqz v4, :cond_5

    .line 4631
    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v3, :cond_4

    const/4 v1, 0x1

    .line 4636
    .local v1, "isDockedAdjustedForIme":Z
    :goto_1
    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4, v6}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 4637
    if-eqz v2, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    move v3, v1

    .line 4639
    .local v3, "suspendResize":Z
    :cond_2
    :goto_2
    return v3

    .line 4627
    .end local v1    # "isDockedAdjustedForIme":Z
    .end local v3    # "suspendResize":Z
    :cond_3
    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mBoundsForNewconfig:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    .local v0, "isBoundsForNewConfig":Z
    goto :goto_0

    .line 4631
    .end local v0    # "isBoundsForNewConfig":Z
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "isDockedAdjustedForIme":Z
    goto :goto_1

    .line 4629
    .end local v1    # "isDockedAdjustedForIme":Z
    :cond_5
    const/4 v1, 0x0

    .restart local v1    # "isDockedAdjustedForIme":Z
    goto :goto_1

    .line 4636
    :cond_6
    const/4 v3, 0x0

    goto :goto_2
.end method

.method public systemBooted()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 377
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 379
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 380
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.samsung.android.multiwindow.MINIMIZE_ALL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 381
    const-string v1, "com.samsung.android.multiwindow.MINIMIZE_ALL_BY_SYSTEM"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 382
    new-instance v1, Lcom/android/server/am/MultiWindowManagerService$3;

    invoke-direct {v1, p0}, Lcom/android/server/am/MultiWindowManagerService$3;-><init>(Lcom/android/server/am/MultiWindowManagerService;)V

    iput-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 397
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const-string v3, "android.permission.MANAGE_ACTIVITY_STACKS"

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 401
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iget v1, v1, Landroid/content/res/Configuration;->densityDpi:I

    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mLastGlobalDensity:I

    .line 376
    return-void
.end method

.method public unminimizeAllTasksInFreeformLocked()V
    .locals 14

    .prologue
    const/4 v13, 0x2

    const/4 v3, 0x0

    .line 1424
    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v0, :cond_0

    .line 1425
    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_ADJUST_STACK_ORDER:Z

    if-eqz v0, :cond_1

    .line 1423
    :cond_0
    return-void

    .line 1426
    :cond_1
    sget-boolean v0, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "MultiWindowManagerService"

    const-string v2, "unminimizeAllTasksInFreeform is calling."

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1428
    :cond_2
    const/4 v6, 0x0

    .line 1430
    .local v6, "freeformStack":Lcom/android/server/am/ActivityStack;
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->getStacks()Ljava/util/ArrayList;

    move-result-object v10

    .line 1431
    .local v10, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "stack$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ActivityStack;

    .line 1432
    .local v8, "stack":Lcom/android/server/am/ActivityStack;
    iget v0, v8, Lcom/android/server/am/ActivityStack;->mStackId:I

    if-ne v0, v13, :cond_3

    .line 1433
    move-object v6, v8

    .line 1438
    .end local v6    # "freeformStack":Lcom/android/server/am/ActivityStack;
    .end local v8    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_4
    if-eqz v6, :cond_0

    .line 1439
    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v11

    .line 1440
    .local v11, "targetTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "task$iterator":Ljava/util/Iterator;
    :cond_5
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    .line 1441
    .local v1, "task":Lcom/android/server/am/TaskRecord;
    iget-object v0, v1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v0, :cond_5

    iget-object v0, v1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget v0, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    if-ne v0, v13, :cond_5

    .line 1442
    sget-boolean v0, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    if-eqz v0, :cond_6

    const-string v0, "MultiWindowManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unminimize, "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1443
    :cond_6
    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v7

    .line 1444
    .local v7, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v0, v1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 1445
    if-eqz v7, :cond_7

    iget-object v4, v7, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    :goto_1
    const-string v5, "unminimizeAllTasksInFreeform"

    .line 1444
    const/4 v2, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    move-object v4, v3

    .line 1445
    goto :goto_1
.end method

.method public unregisterMultiWindowServiceCallback(Lcom/samsung/android/multiwindow/IMultiWindowCallback;)V
    .locals 2
    .param p1, "observer"    # Lcom/samsung/android/multiwindow/IMultiWindowCallback;

    .prologue
    .line 3781
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v1

    .line 3782
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 3779
    return-void

    .line 3781
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public updateDexCompatLaunchPolicy(Lcom/android/server/am/TaskRecord;Landroid/content/pm/ActivityInfo;)V
    .locals 4
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "info"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 749
    iget-boolean v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mIsDesktopModeEnabled:Z

    if-eqz v1, :cond_2

    .line 750
    if-nez p2, :cond_0

    .line 751
    const-string v1, "MultiWindowManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[DexCompat] DexCompatLaunchPolicy: task="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 752
    const-string v3, ", ActivityInfo is null"

    .line 751
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 753
    const-string v3, ""

    .line 751
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    return-void

    .line 756
    :cond_0
    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService$Lifecycle;->getService()Lcom/android/server/desktopmode/DesktopModeService;

    move-result-object v0

    .line 757
    .local v0, "dexService":Lcom/android/server/desktopmode/DesktopModeService;
    if-nez v0, :cond_1

    .line 758
    const-string v1, "MultiWindowManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[DexCompat] DexCompatLaunchPolicy: task="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 759
    const-string v3, ", DesktopModeService is null"

    .line 758
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 760
    const-string v3, ""

    .line 758
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    return-void

    .line 763
    :cond_1
    iget-object v1, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v1, p2}, Lcom/android/server/desktopmode/DesktopModeService;->getLaunchPolicyForPackage(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ActivityInfo;)I

    move-result v1

    iput v1, p1, Lcom/android/server/am/TaskRecord;->mDexCompatLaunchPolicy:I

    .line 764
    const-string v1, "MultiWindowManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[DexCompat] DexCompatLaunchPolicy: task="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 765
    const-string v3, " LaunchPolicy=0x"

    .line 764
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 765
    iget v3, p1, Lcom/android/server/am/TaskRecord;->mDexCompatLaunchPolicy:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 764
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 766
    const-string v3, " ResizeableMode="

    .line 764
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 766
    iget v3, p1, Lcom/android/server/am/TaskRecord;->mResizeMode:I

    .line 764
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 766
    const-string v3, ""

    .line 764
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    .end local v0    # "dexService":Lcom/android/server/desktopmode/DesktopModeService;
    :cond_2
    return-void
.end method

.method public updateDexCompatModeLocked(Lcom/android/server/am/TaskRecord;)V
    .locals 1
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    .prologue
    const/4 v0, 0x0

    .line 772
    invoke-virtual {p0, p1, v0, v0}, Lcom/android/server/am/MultiWindowManagerService;->updateDexCompatModeLocked(Lcom/android/server/am/TaskRecord;Landroid/content/pm/ActivityInfo;Landroid/app/ActivityOptions;)V

    .line 771
    return-void
.end method

.method public updateDexCompatModeLocked(Lcom/android/server/am/TaskRecord;Landroid/content/pm/ActivityInfo;Landroid/app/ActivityOptions;)V
    .locals 12
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "info"    # Landroid/content/pm/ActivityInfo;
    .param p3, "options"    # Landroid/app/ActivityOptions;

    .prologue
    const/4 v11, 0x1

    const v10, 0x3bcccccd    # 0.00625f

    const/4 v9, -0x1

    const/4 v8, 0x0

    .line 777
    iget-boolean v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mIsDesktopModeEnabled:Z

    if-eqz v6, :cond_6

    .line 778
    iget-object v6, p1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v6, :cond_6

    iget-object v6, p1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget v6, v6, Lcom/android/server/am/ActivityStack;->mStackId:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_6

    .line 780
    if-nez p2, :cond_0

    .line 781
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getRootActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    .line 782
    .local v5, "rootActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v5, :cond_7

    iget-object v6, v5, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    if-eqz v6, :cond_7

    iget-object p2, v5, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 785
    .end local v5    # "rootActivity":Lcom/android/server/am/ActivityRecord;
    .end local p2    # "info":Landroid/content/pm/ActivityInfo;
    :cond_0
    :goto_0
    const/4 v1, 0x0

    .line 786
    .local v1, "isDexCompatEnabled":Z
    const/4 v0, -0x1

    .line 789
    .local v0, "dexCompatUiMode":I
    iget v6, p1, Lcom/android/server/am/TaskRecord;->mDexCompatLaunchPolicy:I

    if-nez v6, :cond_1

    .line 790
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/MultiWindowManagerService;->updateDexCompatLaunchPolicy(Lcom/android/server/am/TaskRecord;Landroid/content/pm/ActivityInfo;)V

    .line 792
    :cond_1
    iget v6, p1, Lcom/android/server/am/TaskRecord;->mDexCompatLaunchPolicy:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_8

    const/4 v1, 0x1

    .line 793
    :goto_1
    iget-boolean v6, p1, Lcom/android/server/am/TaskRecord;->mIsDexCompatEnabled:Z

    if-eq v6, v1, :cond_2

    .line 794
    iput-boolean v1, p1, Lcom/android/server/am/TaskRecord;->mIsDexCompatEnabled:Z

    .line 795
    iput-boolean v11, p1, Lcom/android/server/am/TaskRecord;->mDexCompatModeUpdated:Z

    .line 799
    :cond_2
    iget-boolean v6, p1, Lcom/android/server/am/TaskRecord;->mIsDexCompatEnabled:Z

    if-eqz v6, :cond_3

    if-eqz p2, :cond_3

    iget-object v6, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v6, :cond_3

    iget-object v6, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v6, :cond_3

    .line 800
    iget-object v6, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v7, "com.samsung.android.sdk.multiwindow.dex.launchwidth"

    invoke-virtual {v6, v7, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 801
    .local v4, "launchWidth":I
    iget-object v6, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v7, "com.samsung.android.sdk.multiwindow.dex.launchheight"

    invoke-virtual {v6, v7, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 802
    .local v3, "launchHeight":I
    if-nez v4, :cond_9

    if-nez v3, :cond_9

    .line 803
    const/4 v0, 0x3

    .line 812
    .end local v3    # "launchHeight":I
    .end local v4    # "launchWidth":I
    :cond_3
    :goto_2
    if-ne v0, v9, :cond_4

    if-eqz p3, :cond_4

    invoke-virtual {p3}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 813
    invoke-virtual {p3}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 815
    .local v2, "launchBounds":Landroid/graphics/Rect;
    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v8, v8, v8, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 816
    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_a

    .line 817
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6}, Landroid/graphics/Point;-><init>()V

    iput-object v6, p1, Lcom/android/server/am/TaskRecord;->mDexCompatCustomSize:Landroid/graphics/Point;

    .line 818
    iget-object v6, p1, Lcom/android/server/am/TaskRecord;->mDexCompatCustomSize:Landroid/graphics/Point;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v7

    iput v7, v6, Landroid/graphics/Point;->x:I

    .line 819
    iget-object v6, p1, Lcom/android/server/am/TaskRecord;->mDexCompatCustomSize:Landroid/graphics/Point;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v7

    iput v7, v6, Landroid/graphics/Point;->y:I

    .line 820
    const/4 v0, 0x2

    .line 826
    .end local v2    # "launchBounds":Landroid/graphics/Rect;
    :cond_4
    :goto_3
    iget v6, p1, Lcom/android/server/am/TaskRecord;->mDexCompatUiMode:I

    if-eq v6, v0, :cond_5

    if-eq v0, v9, :cond_5

    .line 827
    iput v0, p1, Lcom/android/server/am/TaskRecord;->mDexCompatUiMode:I

    .line 828
    iput-boolean v11, p1, Lcom/android/server/am/TaskRecord;->mDexCompatModeUpdated:Z

    .line 832
    :cond_5
    iget-boolean v6, p1, Lcom/android/server/am/TaskRecord;->mDexCompatModeUpdated:Z

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v7, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v6, v7}, Lcom/android/server/wm/WindowManagerService;->isValidTaskId(I)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 833
    iput-boolean v8, p1, Lcom/android/server/am/TaskRecord;->mDexCompatModeUpdated:Z

    .line 834
    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    iget v7, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-boolean v8, p1, Lcom/android/server/am/TaskRecord;->mIsDexCompatEnabled:Z

    iget v9, p1, Lcom/android/server/am/TaskRecord;->mDexCompatUiMode:I

    invoke-interface {v6, v7, v8, v9}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->setDexCompatMode(IZI)V

    .line 776
    .end local v0    # "dexCompatUiMode":I
    .end local v1    # "isDexCompatEnabled":Z
    :cond_6
    return-void

    .line 782
    .restart local v5    # "rootActivity":Lcom/android/server/am/ActivityRecord;
    .restart local p2    # "info":Landroid/content/pm/ActivityInfo;
    :cond_7
    const/4 p2, 0x0

    .local p2, "info":Landroid/content/pm/ActivityInfo;
    goto/16 :goto_0

    .line 792
    .end local v5    # "rootActivity":Lcom/android/server/am/ActivityRecord;
    .end local p2    # "info":Landroid/content/pm/ActivityInfo;
    .restart local v0    # "dexCompatUiMode":I
    .restart local v1    # "isDexCompatEnabled":Z
    :cond_8
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 804
    .restart local v3    # "launchHeight":I
    .restart local v4    # "launchWidth":I
    :cond_9
    if-lez v4, :cond_3

    if-lez v3, :cond_3

    .line 805
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6}, Landroid/graphics/Point;-><init>()V

    iput-object v6, p1, Lcom/android/server/am/TaskRecord;->mDexCompatCustomSize:Landroid/graphics/Point;

    .line 806
    iget-object v6, p1, Lcom/android/server/am/TaskRecord;->mDexCompatCustomSize:Landroid/graphics/Point;

    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iget v7, v7, Landroid/content/res/Configuration;->densityDpi:I

    mul-int/2addr v7, v4

    int-to-float v7, v7

    mul-float/2addr v7, v10

    float-to-int v7, v7

    iput v7, v6, Landroid/graphics/Point;->x:I

    .line 807
    iget-object v6, p1, Lcom/android/server/am/TaskRecord;->mDexCompatCustomSize:Landroid/graphics/Point;

    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iget v7, v7, Landroid/content/res/Configuration;->densityDpi:I

    mul-int/2addr v7, v3

    int-to-float v7, v7

    mul-float/2addr v7, v10

    float-to-int v7, v7

    iput v7, v6, Landroid/graphics/Point;->y:I

    .line 808
    const/4 v0, 0x2

    goto/16 :goto_2

    .line 821
    .end local v3    # "launchHeight":I
    .end local v4    # "launchWidth":I
    .restart local v2    # "launchBounds":Landroid/graphics/Rect;
    :cond_a
    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v6}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 822
    const/4 v0, 0x3

    goto :goto_3
.end method

.method public updateNonFocusedVisibleActivityLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;ZZLjava/lang/String;)Z
    .locals 7
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;
    .param p2, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "endTask"    # Z
    .param p4, "oomAdj"    # Z
    .param p5, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 1985
    invoke-direct {p0, p1, p2, p5}, Lcom/android/server/am/MultiWindowManagerService;->getNextVisibleActivityLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 1986
    .local v1, "nextVisible":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mFocusedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v2, v1, :cond_3

    .line 1987
    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v2, v5, :cond_3

    .line 1988
    iget-object v2, p1, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-nez v2, :cond_0

    .line 1991
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iput-boolean v3, v2, Lcom/android/server/am/ActivityStackSupervisor;->mAppVisibilitiesChangedSinceLastPause:Z

    .line 1992
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2, v4, v6, v4}, Lcom/android/server/am/ActivityStackSupervisor;->pauseBackStacks(ZLcom/android/server/am/ActivityRecord;Z)Z

    .line 1995
    :cond_0
    if-eqz p3, :cond_1

    .line 1996
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v5, p2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v2, v5}, Lcom/android/server/am/ActivityStackSupervisor;->removeLockedTaskLocked(Lcom/android/server/am/TaskRecord;)V

    .line 2006
    :cond_1
    :goto_0
    if-eqz v1, :cond_6

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mFocusedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v2, v1, :cond_6

    .line 2007
    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v2, v5, :cond_6

    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-nez v2, :cond_5

    iget-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    .line 2009
    :goto_1
    if-eqz v1, :cond_2

    if-eqz v0, :cond_7

    :cond_2
    move v2, v4

    :goto_2
    invoke-virtual {p1, p2, v2, p4, v1}, Lcom/android/server/am/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;IZLcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    if-nez v2, :cond_a

    :goto_3
    return v3

    .line 1999
    :cond_3
    if-eqz v1, :cond_4

    .line 2000
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2, v6, v4, v4}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 2002
    :cond_4
    iget-boolean v2, p2, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v2, :cond_1

    .line 2003
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    goto :goto_0

    .line 2007
    :cond_5
    const/4 v0, 0x1

    .local v0, "isNextAlreadyVisible":Z
    goto :goto_1

    .line 2006
    .end local v0    # "isNextAlreadyVisible":Z
    :cond_6
    const/4 v0, 0x0

    .restart local v0    # "isNextAlreadyVisible":Z
    goto :goto_1

    .line 2010
    .end local v0    # "isNextAlreadyVisible":Z
    :cond_7
    iget-boolean v2, p2, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-nez v2, :cond_8

    iget-boolean v2, p2, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-eqz v2, :cond_9

    :cond_8
    const/4 v2, 0x2

    goto :goto_2

    :cond_9
    move v2, v3

    .line 2011
    goto :goto_2

    :cond_a
    move v3, v4

    .line 2009
    goto :goto_3
.end method

.method public updateSupportFreeformDensityLocked(Lcom/android/server/am/TaskRecord;)Z
    .locals 6
    .param p1, "tr"    # Lcom/android/server/am/TaskRecord;

    .prologue
    const/4 v5, 0x1

    .line 1562
    if-eqz p1, :cond_2

    .line 1564
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getRootActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 1565
    .local v0, "rootActivity":Lcom/android/server/am/ActivityRecord;
    const/4 v1, 0x1

    .line 1566
    .local v1, "supportFreeformDensity":Z
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    .line 1567
    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "com.samsung.android.sdk.multiwindow.freeform.densitychange"

    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1570
    .end local v1    # "supportFreeformDensity":Z
    :cond_0
    iget-boolean v2, p1, Lcom/android/server/am/TaskRecord;->mSupportFreefromDensity:Z

    if-eq v2, v1, :cond_2

    .line 1571
    iput-boolean v1, p1, Lcom/android/server/am/TaskRecord;->mSupportFreefromDensity:Z

    .line 1572
    sget-boolean v2, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "MultiWindowManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setSupportFreeformDensityLocked: tr="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1573
    const-string v4, ", supportFreeformDensity="

    .line 1572
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1573
    const-string v4, ", root="

    .line 1572
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1574
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    iget v3, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-interface {v2, v3, v1}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->setSupportFreeformDensity(IZ)V

    .line 1575
    return v5

    .line 1578
    .end local v0    # "rootActivity":Lcom/android/server/am/ActivityRecord;
    :cond_2
    const/4 v2, 0x0

    return v2
.end method

.method public updateTaskPositionInTaskBar(Ljava/util/Map;)V
    .locals 5
    .param p1, "taskPositions"    # Ljava/util/Map;

    .prologue
    .line 3790
    sget-boolean v2, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v2, :cond_0

    .line 3792
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    const-string v3, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v4, "updateTaskPositionInTaskBar"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3793
    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 3794
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v0

    .line 3796
    .local v0, "ident":J
    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    check-cast p1, Ljava/util/HashMap;

    .end local p1    # "taskPositions":Ljava/util/Map;
    invoke-interface {v2, p1}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->updateTaskPositionInTaskBar(Ljava/util/HashMap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3798
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v3

    .line 3789
    .end local v0    # "ident":J
    :cond_0
    return-void

    .line 3797
    .restart local v0    # "ident":J
    :catchall_0
    move-exception v2

    .line 3798
    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3797
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3793
    .end local v0    # "ident":J
    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2
.end method
