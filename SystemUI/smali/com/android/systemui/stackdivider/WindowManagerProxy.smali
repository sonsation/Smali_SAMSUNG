.class public Lcom/android/systemui/stackdivider/WindowManagerProxy;
.super Ljava/lang/Object;
.source "WindowManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/stackdivider/WindowManagerProxy$10;,
        Lcom/android/systemui/stackdivider/WindowManagerProxy$11;,
        Lcom/android/systemui/stackdivider/WindowManagerProxy$12;,
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
.field private final mAutoResizingChangedRunnable:Ljava/lang/Runnable;

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

.field private mIsAutoResizingEnabled:Z

.field private final mMaximizeRunnable:Ljava/lang/Runnable;

.field private final mMaximizeStackRunnable:Ljava/lang/Runnable;

.field private final mMultiWindowManager:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;

.field private final mResizeRunnable:Ljava/lang/Runnable;

.field private final mSetTouchableRegionRunnable:Ljava/lang/Runnable;

.field private mShouldRemove:Z

.field private mSnapTarget:I

.field private mSnapViewCropRect:Landroid/graphics/Rect;

.field private final mStartDraggingRunnable:Ljava/lang/Runnable;

.field private mStartSnapMode:Z

.field private final mStartSnapModeRunnable:Ljava/lang/Runnable;

.field private final mStopDraggingRunnable:Ljava/lang/Runnable;

.field private final mSwapRunnable:Ljava/lang/Runnable;

.field private final mSwapSnapTaskRunnable:Ljava/lang/Runnable;

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

    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mTempDockedInsetRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/systemui/stackdivider/WindowManagerProxy;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mTempDockedTaskRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/systemui/stackdivider/WindowManagerProxy;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mTempOtherInsetRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/systemui/stackdivider/WindowManagerProxy;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mTempOtherTaskRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic -get14(Lcom/android/systemui/stackdivider/WindowManagerProxy;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mTmpRect1:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic -get15(Lcom/android/systemui/stackdivider/WindowManagerProxy;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mTmpRect2:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic -get16(Lcom/android/systemui/stackdivider/WindowManagerProxy;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mTmpRect3:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic -get17(Lcom/android/systemui/stackdivider/WindowManagerProxy;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mTmpRect4:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic -get18(Lcom/android/systemui/stackdivider/WindowManagerProxy;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mTmpRect5:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic -get19(Lcom/android/systemui/stackdivider/WindowManagerProxy;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mTouchableRegion:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/stackdivider/WindowManagerProxy;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mDimLayerVisible:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/systemui/stackdivider/WindowManagerProxy;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mDockedRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/stackdivider/WindowManagerProxy;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mIsAutoResizingEnabled:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/systemui/stackdivider/WindowManagerProxy;)Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mMultiWindowManager:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/stackdivider/WindowManagerProxy;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mShouldRemove:Z

    return v0
.end method

.method static synthetic -get7(Lcom/android/systemui/stackdivider/WindowManagerProxy;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mSnapTarget:I

    return v0
.end method

.method static synthetic -get8(Lcom/android/systemui/stackdivider/WindowManagerProxy;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mSnapViewCropRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/systemui/stackdivider/WindowManagerProxy;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mStartSnapMode:Z

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-direct {v0}, Lcom/android/systemui/stackdivider/WindowManagerProxy;-><init>()V

    sput-object v0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->sInstance:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    .line 42
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;

    invoke-direct {v0}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mMultiWindowManager:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;

    .line 62
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mDockedRect:Landroid/graphics/Rect;

    .line 63
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mTempDockedTaskRect:Landroid/graphics/Rect;

    .line 64
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mTempDockedInsetRect:Landroid/graphics/Rect;

    .line 65
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mTempOtherTaskRect:Landroid/graphics/Rect;

    .line 66
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mTempOtherInsetRect:Landroid/graphics/Rect;

    .line 68
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mTmpRect1:Landroid/graphics/Rect;

    .line 69
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mTmpRect2:Landroid/graphics/Rect;

    .line 70
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mTmpRect3:Landroid/graphics/Rect;

    .line 71
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mTmpRect4:Landroid/graphics/Rect;

    .line 72
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mTmpRect5:Landroid/graphics/Rect;

    .line 75
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mTouchableRegion:Landroid/graphics/Rect;

    .line 81
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 83
    new-instance v0, Lcom/android/systemui/stackdivider/WindowManagerProxy$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/WindowManagerProxy$1;-><init>(Lcom/android/systemui/stackdivider/WindowManagerProxy;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mResizeRunnable:Ljava/lang/Runnable;

    .line 121
    new-instance v0, Lcom/android/systemui/stackdivider/WindowManagerProxy$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/WindowManagerProxy$2;-><init>(Lcom/android/systemui/stackdivider/WindowManagerProxy;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mDismissRunnable:Ljava/lang/Runnable;

    .line 133
    new-instance v0, Lcom/android/systemui/stackdivider/WindowManagerProxy$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/WindowManagerProxy$3;-><init>(Lcom/android/systemui/stackdivider/WindowManagerProxy;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mMaximizeRunnable:Ljava/lang/Runnable;

    .line 145
    new-instance v0, Lcom/android/systemui/stackdivider/WindowManagerProxy$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/WindowManagerProxy$4;-><init>(Lcom/android/systemui/stackdivider/WindowManagerProxy;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mDimLayerRunnable:Ljava/lang/Runnable;

    .line 157
    new-instance v0, Lcom/android/systemui/stackdivider/WindowManagerProxy$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/WindowManagerProxy$5;-><init>(Lcom/android/systemui/stackdivider/WindowManagerProxy;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mSwapRunnable:Ljava/lang/Runnable;

    .line 168
    new-instance v0, Lcom/android/systemui/stackdivider/WindowManagerProxy$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/WindowManagerProxy$6;-><init>(Lcom/android/systemui/stackdivider/WindowManagerProxy;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mSetTouchableRegionRunnable:Ljava/lang/Runnable;

    .line 184
    new-instance v0, Lcom/android/systemui/stackdivider/WindowManagerProxy$7;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/WindowManagerProxy$7;-><init>(Lcom/android/systemui/stackdivider/WindowManagerProxy;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mStartSnapModeRunnable:Ljava/lang/Runnable;

    .line 195
    new-instance v0, Lcom/android/systemui/stackdivider/WindowManagerProxy$8;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/WindowManagerProxy$8;-><init>(Lcom/android/systemui/stackdivider/WindowManagerProxy;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mSwapSnapTaskRunnable:Ljava/lang/Runnable;

    .line 206
    new-instance v0, Lcom/android/systemui/stackdivider/WindowManagerProxy$9;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/WindowManagerProxy$9;-><init>(Lcom/android/systemui/stackdivider/WindowManagerProxy;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mMaximizeStackRunnable:Ljava/lang/Runnable;

    .line 217
    new-instance v0, Lcom/android/systemui/stackdivider/WindowManagerProxy$10;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/WindowManagerProxy$10;-><init>(Lcom/android/systemui/stackdivider/WindowManagerProxy;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mAutoResizingChangedRunnable:Ljava/lang/Runnable;

    .line 228
    new-instance v0, Lcom/android/systemui/stackdivider/WindowManagerProxy$11;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/WindowManagerProxy$11;-><init>(Lcom/android/systemui/stackdivider/WindowManagerProxy;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mStartDraggingRunnable:Ljava/lang/Runnable;

    .line 239
    new-instance v0, Lcom/android/systemui/stackdivider/WindowManagerProxy$12;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/WindowManagerProxy$12;-><init>(Lcom/android/systemui/stackdivider/WindowManagerProxy;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mStopDraggingRunnable:Ljava/lang/Runnable;

    .line 251
    return-void
.end method

.method public static getInstance()Lcom/android/systemui/stackdivider/WindowManagerProxy;
    .locals 1

    .prologue
    .line 255
    sget-object v0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->sInstance:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    return-object v0
.end method

.method private swapSnapTasks()V
    .locals 2

    .prologue
    .line 336
    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mExecutor:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mSwapSnapTaskRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 335
    return-void
.end method


# virtual methods
.method public completeToggleSplitScreen()V
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mMultiWindowManager:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;

    invoke-virtual {v0}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->completeToggleSplitScreen()V

    .line 379
    return-void
.end method

.method public dismissDockedStack()V
    .locals 2

    .prologue
    .line 287
    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mExecutor:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mDismissRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 286
    return-void
.end method

.method public getDockSide()I
    .locals 4

    .prologue
    .line 309
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/IWindowManager;->getDockedStackSide()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 310
    :catch_0
    move-exception v0

    .line 311
    .local v0, "e":Landroid/os/RemoteException;
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

    .line 313
    const/4 v1, -0x1

    return v1
.end method

.method public getFocusedStackId()I
    .locals 2

    .prologue
    .line 366
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getFocusedStackId()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 367
    :catch_0
    move-exception v0

    .line 368
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, -0x1

    return v1
.end method

.method public getLastDimLayerTargetStack()I
    .locals 1

    .prologue
    .line 399
    iget v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mDimLayerTargetStack:I

    return v0
.end method

.method public maximizeDockedStack()V
    .locals 2

    .prologue
    .line 291
    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mExecutor:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mMaximizeRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 290
    return-void
.end method

.method public maximizeFocusedStackByDivider(Z)V
    .locals 2
    .param p1, "shouldRemove"    # Z

    .prologue
    .line 355
    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mShouldRemove:Z

    .line 356
    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mExecutor:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mMaximizeStackRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 353
    return-void
.end method

.method public moveMultiWindowTasksToFullScreen()V
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mMultiWindowManager:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;

    invoke-virtual {v0}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->moveMultiWindowTasksToFullScreen()V

    .line 360
    return-void
.end method

.method public resetTmpRects()V
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mTmpRect1:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 406
    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 407
    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mTmpRect3:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 408
    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mTmpRect4:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 409
    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mTmpRect5:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 404
    return-void
.end method

.method public resizeDockedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "docked"    # Landroid/graphics/Rect;
    .param p2, "tempDockedTaskRect"    # Landroid/graphics/Rect;
    .param p3, "tempDockedInsetRect"    # Landroid/graphics/Rect;
    .param p4, "tempOtherTaskRect"    # Landroid/graphics/Rect;
    .param p5, "tempOtherInsetRect"    # Landroid/graphics/Rect;

    .prologue
    .line 260
    iget-object v1, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mDockedRect:Landroid/graphics/Rect;

    monitor-enter v1

    .line 261
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mDockedRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 262
    if-eqz p2, :cond_0

    .line 263
    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mTempDockedTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 267
    :goto_0
    if-eqz p3, :cond_1

    .line 268
    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mTempDockedInsetRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 272
    :goto_1
    if-eqz p4, :cond_2

    .line 273
    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mTempOtherTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 277
    :goto_2
    if-eqz p5, :cond_3

    .line 278
    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mTempOtherInsetRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_3
    monitor-exit v1

    .line 283
    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mExecutor:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mResizeRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 259
    return-void

    .line 265
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mTempDockedTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 260
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 270
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mTempDockedInsetRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_1

    .line 275
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mTempOtherTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_2

    .line 280
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mTempOtherInsetRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3
.end method

.method public setAutoResizingEnabled(Z)V
    .locals 2
    .param p1, "hasHiddenSnapTarget"    # Z

    .prologue
    .line 374
    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mIsAutoResizingEnabled:Z

    .line 375
    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mExecutor:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mAutoResizingChangedRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 372
    return-void
.end method

.method public setResizeDimLayer(ZIF)V
    .locals 2
    .param p1, "visible"    # Z
    .param p2, "targetStackId"    # I
    .param p3, "alpha"    # F

    .prologue
    .line 317
    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mDimLayerVisible:Z

    .line 318
    iput p2, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mDimLayerTargetStack:I

    .line 319
    iput p3, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mDimLayerAlpha:F

    .line 320
    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mExecutor:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mDimLayerRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 316
    return-void
.end method

.method public setResizing(Z)V
    .locals 2
    .param p1, "resizing"    # Z

    .prologue
    .line 295
    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/systemui/stackdivider/WindowManagerProxy$13;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/stackdivider/WindowManagerProxy$13;-><init>(Lcom/android/systemui/stackdivider/WindowManagerProxy;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 294
    return-void
.end method

.method public setTouchRegion(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "region"    # Landroid/graphics/Rect;

    .prologue
    .line 328
    iget-object v1, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mDockedRect:Landroid/graphics/Rect;

    monitor-enter v1

    .line 329
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mTouchableRegion:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 331
    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mExecutor:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mSetTouchableRegionRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 327
    return-void

    .line 328
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public startDividerDragging()V
    .locals 2

    .prologue
    .line 387
    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mExecutor:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mStartDraggingRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 385
    return-void
.end method

.method public startSnapMode(ZZILandroid/graphics/Rect;)V
    .locals 2
    .param p1, "isStart"    # Z
    .param p2, "sendToSerivce"    # Z
    .param p3, "snapTarget"    # I
    .param p4, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 341
    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mStartSnapMode:Z

    .line 342
    iput-object p4, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mSnapViewCropRect:Landroid/graphics/Rect;

    .line 343
    iput p3, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mSnapTarget:I

    .line 344
    if-eqz p2, :cond_1

    .line 345
    if-eqz p1, :cond_0

    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    .line 346
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->swapSnapTasks()V

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mExecutor:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mStartSnapModeRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 339
    :cond_1
    return-void
.end method

.method public stopDividerDragging()V
    .locals 2

    .prologue
    .line 393
    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mExecutor:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mStopDraggingRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 391
    return-void
.end method

.method public swapTasks()V
    .locals 2

    .prologue
    .line 324
    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mExecutor:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mSwapRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 323
    return-void
.end method
