.class public Lcom/android/systemui/stackdivider/WindowManagerProxy;
.super Ljava/lang/Object;
.source "WindowManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/stackdivider/WindowManagerProxy$10;,
        Lcom/android/systemui/stackdivider/WindowManagerProxy$11;,
        Lcom/android/systemui/stackdivider/WindowManagerProxy$12;,
        Lcom/android/systemui/stackdivider/WindowManagerProxy$13;,
        Lcom/android/systemui/stackdivider/WindowManagerProxy$1;,
        Lcom/android/systemui/stackdivider/WindowManagerProxy$2;,
        Lcom/android/systemui/stackdivider/WindowManagerProxy$3;,
        Lcom/android/systemui/stackdivider/WindowManagerProxy$4;,
        Lcom/android/systemui/stackdivider/WindowManagerProxy$5;,
        Lcom/android/systemui/stackdivider/WindowManagerProxy$6;,
        Lcom/android/systemui/stackdivider/WindowManagerProxy$7;,
        Lcom/android/systemui/stackdivider/WindowManagerProxy$8;,
        Lcom/android/systemui/stackdivider/WindowManagerProxy$9;
    }
.end annotation


# static fields
.field private static final sInstance:Lcom/android/systemui/stackdivider/WindowManagerProxy;


# instance fields
.field private final mAlignTasksToStackBounds:Ljava/lang/Runnable;

.field private final mAutoResizeAnimatingRunnable:Ljava/lang/Runnable;

.field private mDimLayerAlpha:F

.field private final mDimLayerRunnable:Ljava/lang/Runnable;

.field private mDimLayerTargetStack:I

.field private mDimLayerVisible:Z

.field private final mDismissRunnable:Ljava/lang/Runnable;

.field private final mDockedRect:Landroid/graphics/Rect;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mDockedRect"
    .end annotation
.end field

.field private final mExecutor:Ljava/util/concurrent/ExecutorService;

.field private mForceResizeDockedRect:Landroid/graphics/Rect;

.field private mIsAutoResizeAnimating:Z

.field private final mMaximizeRunnable:Ljava/lang/Runnable;

.field private final mMaximizeStackRunnable:Ljava/lang/Runnable;

.field private mMoveToTop:Z

.field private final mMultiWindowManager:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;

.field private final mResizeDockedRectRunnable:Ljava/lang/Runnable;

.field private final mResizeRunnable:Ljava/lang/Runnable;

.field private final mSetTouchableRegionRunnable:Ljava/lang/Runnable;

.field private mSnapCaller:Ljava/lang/String;

.field private mSnapTarget:I

.field private mSnapViewCropRect:Landroid/graphics/Rect;

.field private final mStartDraggingRunnable:Ljava/lang/Runnable;

.field private mStartSnapMode:Z

.field private final mStartSnapModeRunnable:Ljava/lang/Runnable;

.field private final mStopDraggingRunnable:Ljava/lang/Runnable;

.field private final mSwapRunnable:Ljava/lang/Runnable;

.field private final mTempDockedInsetRect:Landroid/graphics/Rect;

.field private final mTempDockedTaskRect:Landroid/graphics/Rect;

.field private final mTempOtherInsetRect:Landroid/graphics/Rect;

.field private final mTempOtherTaskRect:Landroid/graphics/Rect;

.field private final mTmpRect1:Landroid/graphics/Rect;

.field private final mTmpRect2:Landroid/graphics/Rect;

.field private final mTmpRect3:Landroid/graphics/Rect;

.field private final mTmpRect4:Landroid/graphics/Rect;

.field private final mTmpRect5:Landroid/graphics/Rect;

.field private final mTouchableRegion:Landroid/graphics/Rect;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mDockedRect"
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/systemui/stackdivider/WindowManagerProxy;)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mDimLayerAlpha:F

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/stackdivider/WindowManagerProxy;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mDimLayerTargetStack:I

    return v0
.end method

.method static synthetic -get10(Lcom/android/systemui/stackdivider/WindowManagerProxy;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mSnapViewCropRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/systemui/stackdivider/WindowManagerProxy;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mStartSnapMode:Z

    return v0
.end method

.method static synthetic -get12(Lcom/android/systemui/stackdivider/WindowManagerProxy;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mTempDockedInsetRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/systemui/stackdivider/WindowManagerProxy;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mTempDockedTaskRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic -get14(Lcom/android/systemui/stackdivider/WindowManagerProxy;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mTempOtherInsetRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic -get15(Lcom/android/systemui/stackdivider/WindowManagerProxy;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mTempOtherTaskRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic -get16(Lcom/android/systemui/stackdivider/WindowManagerProxy;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mTmpRect1:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic -get17(Lcom/android/systemui/stackdivider/WindowManagerProxy;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mTmpRect2:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic -get18(Lcom/android/systemui/stackdivider/WindowManagerProxy;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mTmpRect3:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic -get19(Lcom/android/systemui/stackdivider/WindowManagerProxy;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mTmpRect4:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/stackdivider/WindowManagerProxy;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mDimLayerVisible:Z

    return v0
.end method

.method static synthetic -get20(Lcom/android/systemui/stackdivider/WindowManagerProxy;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mTmpRect5:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic -get21(Lcom/android/systemui/stackdivider/WindowManagerProxy;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mTouchableRegion:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/stackdivider/WindowManagerProxy;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mDockedRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/stackdivider/WindowManagerProxy;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mForceResizeDockedRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/stackdivider/WindowManagerProxy;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mIsAutoResizeAnimating:Z

    return v0
.end method

.method static synthetic -get6(Lcom/android/systemui/stackdivider/WindowManagerProxy;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mMoveToTop:Z

    return v0
.end method

.method static synthetic -get7(Lcom/android/systemui/stackdivider/WindowManagerProxy;)Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mMultiWindowManager:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/systemui/stackdivider/WindowManagerProxy;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mSnapCaller:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/systemui/stackdivider/WindowManagerProxy;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mSnapTarget:I

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-direct {v0}, Lcom/android/systemui/stackdivider/WindowManagerProxy;-><init>()V

    sput-object v0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->sInstance:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;

    invoke-direct {v0}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mMultiWindowManager:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mIsAutoResizeAnimating:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mForceResizeDockedRect:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mSnapCaller:Ljava/lang/String;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mDockedRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mTempDockedTaskRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mTempDockedInsetRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mTempOtherTaskRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mTempOtherInsetRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mTmpRect1:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mTmpRect2:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mTmpRect3:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mTmpRect4:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mTmpRect5:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mTouchableRegion:Landroid/graphics/Rect;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/android/systemui/stackdivider/WindowManagerProxy$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/WindowManagerProxy$1;-><init>(Lcom/android/systemui/stackdivider/WindowManagerProxy;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mResizeRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/systemui/stackdivider/WindowManagerProxy$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/WindowManagerProxy$2;-><init>(Lcom/android/systemui/stackdivider/WindowManagerProxy;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mDismissRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/systemui/stackdivider/WindowManagerProxy$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/WindowManagerProxy$3;-><init>(Lcom/android/systemui/stackdivider/WindowManagerProxy;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mMaximizeRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/systemui/stackdivider/WindowManagerProxy$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/WindowManagerProxy$4;-><init>(Lcom/android/systemui/stackdivider/WindowManagerProxy;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mDimLayerRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/systemui/stackdivider/WindowManagerProxy$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/WindowManagerProxy$5;-><init>(Lcom/android/systemui/stackdivider/WindowManagerProxy;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mSwapRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/systemui/stackdivider/WindowManagerProxy$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/WindowManagerProxy$6;-><init>(Lcom/android/systemui/stackdivider/WindowManagerProxy;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mSetTouchableRegionRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/systemui/stackdivider/WindowManagerProxy$7;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/WindowManagerProxy$7;-><init>(Lcom/android/systemui/stackdivider/WindowManagerProxy;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mStartSnapModeRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/systemui/stackdivider/WindowManagerProxy$8;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/WindowManagerProxy$8;-><init>(Lcom/android/systemui/stackdivider/WindowManagerProxy;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mMaximizeStackRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/systemui/stackdivider/WindowManagerProxy$9;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/WindowManagerProxy$9;-><init>(Lcom/android/systemui/stackdivider/WindowManagerProxy;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mAutoResizeAnimatingRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/systemui/stackdivider/WindowManagerProxy$10;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/WindowManagerProxy$10;-><init>(Lcom/android/systemui/stackdivider/WindowManagerProxy;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mStartDraggingRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/systemui/stackdivider/WindowManagerProxy$11;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/WindowManagerProxy$11;-><init>(Lcom/android/systemui/stackdivider/WindowManagerProxy;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mStopDraggingRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/systemui/stackdivider/WindowManagerProxy$12;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/WindowManagerProxy$12;-><init>(Lcom/android/systemui/stackdivider/WindowManagerProxy;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mResizeDockedRectRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/systemui/stackdivider/WindowManagerProxy$13;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/WindowManagerProxy$13;-><init>(Lcom/android/systemui/stackdivider/WindowManagerProxy;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mAlignTasksToStackBounds:Ljava/lang/Runnable;

    return-void
.end method

.method public static getInstance()Lcom/android/systemui/stackdivider/WindowManagerProxy;
    .locals 1

    sget-object v0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->sInstance:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    return-object v0
.end method


# virtual methods
.method public alignTasksToStackBounds()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mExecutor:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mAlignTasksToStackBounds:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public completeToggleSplitScreen()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mMultiWindowManager:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;

    invoke-virtual {v0}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->completeToggleSplitScreen()V

    return-void
.end method

.method public dismissDockedStack()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mExecutor:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mDismissRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getDockSide()I
    .locals 4

    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/IWindowManager;->getDockedStackSide()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "WindowManagerProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to get dock side: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    return v1
.end method

.method public getFocusedStackId()I
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getFocusedStackId()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    const/4 v1, -0x1

    return v1
.end method

.method public getLastDimLayerTargetStack()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mDimLayerTargetStack:I

    return v0
.end method

.method public getSnapTargetAspectRatioRect()Landroid/graphics/Rect;
    .locals 1

    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_WINDOW_SUPPORT:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mMultiWindowManager:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;

    invoke-virtual {v0}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->getSnapTargetAspectRatioRect()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTargetStackRect(ILandroid/graphics/Rect;)V
    .locals 2

    sget-boolean v1, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_WINDOW_SUPPORT:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mMultiWindowManager:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;

    invoke-virtual {v1, p1}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->getTargetStackRect(I)Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public isSnapTargetHideStatusbar()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mMultiWindowManager:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;

    invoke-virtual {v0}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->isSnapTargetHideStatusbar()Z

    move-result v0

    return v0
.end method

.method public isSnapTargetTranslucentNavigationBar()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mMultiWindowManager:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;

    invoke-virtual {v0}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->isSnapTargetTranslucentNavigationBar()Z

    move-result v0

    return v0
.end method

.method public maximizeDockedStack()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mExecutor:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mMaximizeRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public maximizeFocusedStackByDivider(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mMoveToTop:Z

    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mExecutor:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mMaximizeStackRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public moveMultiWindowTasksToFullScreen()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mMultiWindowManager:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;

    invoke-virtual {v0}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->moveMultiWindowTasksToFullScreen()V

    return-void
.end method

.method public resetTmpRects()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mTmpRect1:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mTmpRect3:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mTmpRect4:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mTmpRect5:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    return-void
.end method

.method public resizeDockedStack(Landroid/graphics/Rect;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mForceResizeDockedRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mExecutor:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mResizeDockedRectRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public resizeDockedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mDockedRect:Landroid/graphics/Rect;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mDockedRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mTempDockedTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_0
    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mTempDockedInsetRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_1
    if-eqz p4, :cond_2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mTempOtherTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_2
    if-eqz p5, :cond_3

    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mTempOtherInsetRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_3
    monitor-exit v1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mExecutor:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mResizeRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mTempDockedTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mTempDockedInsetRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mTempOtherTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mTempOtherInsetRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3
.end method

.method public setAutoResizeAnimating(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mIsAutoResizeAnimating:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mIsAutoResizeAnimating:Z

    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mExecutor:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mAutoResizeAnimatingRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public setResizeDimLayer(ZIF)V
    .locals 2

    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mDimLayerVisible:Z

    iput p2, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mDimLayerTargetStack:I

    iput p3, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mDimLayerAlpha:F

    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mExecutor:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mDimLayerRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setResizing(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/systemui/stackdivider/WindowManagerProxy$14;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/stackdivider/WindowManagerProxy$14;-><init>(Lcom/android/systemui/stackdivider/WindowManagerProxy;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setTouchRegion(Landroid/graphics/Rect;)V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mDockedRect:Landroid/graphics/Rect;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mTouchableRegion:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mTouchableRegion:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mExecutor:Ljava/util/concurrent/ExecutorService;

    iget-object v2, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mSetTouchableRegionRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :cond_0
    monitor-exit v1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mExecutor:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mSetTouchableRegionRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public startDividerDragging()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mExecutor:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mStartDraggingRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public startSnapMode(ZZILandroid/graphics/Rect;Ljava/lang/String;)V
    .locals 2

    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mStartSnapMode:Z

    iput-object p4, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mSnapViewCropRect:Landroid/graphics/Rect;

    iput p3, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mSnapTarget:I

    iput-object p5, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mSnapCaller:Ljava/lang/String;

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mExecutor:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mStartSnapModeRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public stopDividerDragging()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mExecutor:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mStopDraggingRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public swapTasks()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mExecutor:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mSwapRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
