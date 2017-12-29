.class public Lcom/android/server/am/MultiWindowAutoResizeController;
.super Ljava/lang/Object;
.source "MultiWindowAutoResizeController.java"


# static fields
.field private static final DEBUG:Z

.field private static final INVALID_POSITION:I = 0x7fffffff

.field private static final TAG:Ljava/lang/String; = "MultiWindowAutoResizeController"

.field private static final TARGET_SIZE_DONT_EXISTS:I = -0x2


# instance fields
.field private mDeferred:Z

.field private mDisplayHeight:I

.field private mDisplaySize:I

.field private mDisplaySizePoint:Landroid/graphics/Point;

.field private mDisplayWidth:I

.field private mDividerSize:I

.field private mDockStackSide:I

.field private mDockedStackBounds:Landroid/graphics/Rect;

.field private mDockedTask:Lcom/android/server/am/TaskRecord;

.field private mDockedTaskAutoResizePosition:I

.field private mDockedTaskAutoResizeRect:Landroid/graphics/Rect;

.field private mDockedTaskBounds:Landroid/graphics/Rect;

.field private mFitTaskToStackSize:Z

.field private mFocusedTask:Lcom/android/server/am/TaskRecord;

.field private mFullScreenStackBounds:Landroid/graphics/Rect;

.field private mFullScreenTask:Lcom/android/server/am/TaskRecord;

.field private mFullScreenTaskAutoResizePosition:I

.field private mFullScreenTaskBounds:Landroid/graphics/Rect;

.field private mFullscreenTaskAutoResizeRect:Landroid/graphics/Rect;

.field private mHasTargetPosChanged:Z

.field private mInitialize:Z

.field private mIsAutoResized:Z

.field private mIsDockFocused:Z

.field private mIsLandScape:Z

.field private mMaxPos:I

.field private mMinPos:I

.field private mRotation:I

.field private mService:Lcom/android/server/am/ActivityManagerService;

.field private final mStableInsets:Landroid/graphics/Rect;

.field private mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

.field private mWindowManager:Lcom/android/server/wm/WindowManagerService;

.field private shouldWorkForEnsureDock:Z

.field private tmpRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/MultiWindowAutoResizeController;->DEBUG:Z

    .line 27
    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/wm/WindowManagerService;)V
    .locals 3
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "supervisor"    # Lcom/android/server/am/ActivityStackSupervisor;
    .param p3, "windowService"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mStableInsets:Landroid/graphics/Rect;

    .line 39
    iput-boolean v1, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mInitialize:Z

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDockStackSide:I

    .line 41
    iput-boolean v1, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mIsLandScape:Z

    .line 42
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mMinPos:I

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mMaxPos:I

    .line 44
    iput-boolean v1, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mIsAutoResized:Z

    .line 45
    iput-boolean v1, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mHasTargetPosChanged:Z

    .line 46
    iput-object v2, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDockedTask:Lcom/android/server/am/TaskRecord;

    .line 47
    iput-object v2, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mFullScreenTask:Lcom/android/server/am/TaskRecord;

    .line 48
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDockedTaskBounds:Landroid/graphics/Rect;

    .line 49
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mFullScreenTaskBounds:Landroid/graphics/Rect;

    .line 50
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDockedStackBounds:Landroid/graphics/Rect;

    .line 51
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mFullScreenStackBounds:Landroid/graphics/Rect;

    .line 52
    iput-boolean v1, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mFitTaskToStackSize:Z

    .line 53
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDisplaySizePoint:Landroid/graphics/Point;

    .line 60
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->tmpRect:Landroid/graphics/Rect;

    .line 63
    iput-boolean v1, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDeferred:Z

    .line 67
    iput-object p1, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 68
    iput-object p2, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 69
    iput-object p3, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 70
    const-string v0, "MultiWindowAutoResizeController Initialization"

    invoke-virtual {p0, v0}, Lcom/android/server/am/MultiWindowAutoResizeController;->clearAutoResizeState(Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method private areTasksOverlappedOrExpanded()Z
    .locals 4

    .prologue
    .line 274
    iget-boolean v2, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mIsLandScape:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDockedTaskBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 275
    .local v0, "dockedTaskSize":I
    :goto_0
    iget-boolean v2, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mIsLandScape:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mFullScreenTaskBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 277
    .local v1, "fullscreenTaskSize":I
    :goto_1
    add-int v2, v0, v1

    iget v3, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDisplaySize:I

    if-le v2, v3, :cond_2

    const/4 v2, 0x1

    :goto_2
    return v2

    .line 274
    .end local v0    # "dockedTaskSize":I
    .end local v1    # "fullscreenTaskSize":I
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDockedTaskBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v0

    .restart local v0    # "dockedTaskSize":I
    goto :goto_0

    .line 275
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mFullScreenTaskBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v1

    goto :goto_1

    .line 277
    .restart local v1    # "fullscreenTaskSize":I
    :cond_2
    const/4 v2, 0x0

    goto :goto_2
.end method

.method private calculateAutoResizeMinMaxPosition()V
    .locals 7

    .prologue
    .line 96
    new-instance v0, Lcom/android/internal/policy/DividerSnapAlgorithm;

    .line 97
    iget-object v1, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDisplayWidth:I

    iget v3, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDisplayHeight:I

    .line 98
    iget v4, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDividerSize:I

    iget-boolean v5, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mIsLandScape:Z

    if-eqz v5, :cond_0

    const/4 v5, 0x0

    :goto_0
    iget-object v6, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mStableInsets:Landroid/graphics/Rect;

    .line 96
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/policy/DividerSnapAlgorithm;-><init>(Landroid/content/res/Resources;IIIZLandroid/graphics/Rect;)V

    .line 100
    .local v0, "snapAlgorithm":Lcom/android/internal/policy/DividerSnapAlgorithm;
    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getFirstSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v1

    iget v1, v1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    iput v1, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mMinPos:I

    .line 101
    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getLastSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v1

    iget v1, v1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    iput v1, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mMaxPos:I

    .line 95
    return-void

    .line 98
    .end local v0    # "snapAlgorithm":Lcom/android/internal/policy/DividerSnapAlgorithm;
    :cond_0
    const/4 v5, 0x1

    goto :goto_0
.end method

.method private calculateRectForPosition(ZI)Landroid/graphics/Rect;
    .locals 6
    .param p1, "isDockFocused"    # Z
    .param p2, "targetPos"    # I

    .prologue
    .line 327
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 328
    .local v2, "tmp":Landroid/graphics/Rect;
    if-eqz p1, :cond_0

    .line 329
    iget v1, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDockStackSide:I

    .line 330
    iget v3, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDisplayWidth:I

    iget v4, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDisplayHeight:I

    iget v5, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDividerSize:I

    move v0, p2

    .line 329
    invoke-static/range {v0 .. v5}, Lcom/android/internal/policy/DockedDividerUtils;->calculateBoundsForPosition(IILandroid/graphics/Rect;III)V

    .line 336
    :goto_0
    return-object v2

    .line 333
    :cond_0
    iget v0, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDockStackSide:I

    invoke-static {v0}, Lcom/android/internal/policy/DockedDividerUtils;->invertDockSide(I)I

    move-result v1

    .line 334
    iget v3, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDisplayWidth:I

    iget v4, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDisplayHeight:I

    iget v5, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDividerSize:I

    move v0, p2

    .line 332
    invoke-static/range {v0 .. v5}, Lcom/android/internal/policy/DockedDividerUtils;->calculateBoundsForPosition(IILandroid/graphics/Rect;III)V

    goto :goto_0
.end method

.method private static dockSideTopLeft(I)Z
    .locals 2
    .param p0, "dockSide"    # I

    .prologue
    const/4 v0, 0x1

    .line 319
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

.method private getAutoResizingTaskPosition(Z)I
    .locals 1
    .param p1, "isDockFocused"    # Z

    .prologue
    .line 266
    if-eqz p1, :cond_0

    .line 267
    iget v0, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDockedTaskAutoResizePosition:I

    return v0

    .line 269
    :cond_0
    iget v0, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mFullScreenTaskAutoResizePosition:I

    return v0
.end method

.method private getCurrentDividerPosition()I
    .locals 3

    .prologue
    .line 323
    iget-object v0, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDockedStackBounds:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDockStackSide:I

    iget v2, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDividerSize:I

    invoke-static {v0, v1, v2}, Lcom/android/internal/policy/DockedDividerUtils;->calculatePositionForBounds(Landroid/graphics/Rect;II)I

    move-result v0

    return v0
.end method

.method private initValues()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 82
    iget-object v0, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mIsLandScape:Z

    .line 83
    iget-object v0, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDisplaySizePoint:Landroid/graphics/Point;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->getBaseDisplaySize(ILandroid/graphics/Point;)V

    .line 84
    iget-object v0, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getRotation()I

    move-result v0

    iput v0, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mRotation:I

    .line 85
    iget-boolean v0, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mIsLandScape:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDisplaySizePoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    :goto_1
    iput v0, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDisplayWidth:I

    .line 86
    iget-boolean v0, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mIsLandScape:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDisplaySizePoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    :goto_2
    iput v0, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDisplayHeight:I

    .line 87
    iget-boolean v0, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mIsLandScape:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDisplayWidth:I

    :goto_3
    iput v0, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDisplaySize:I

    .line 88
    iget-object v0, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDockedStackSide()I

    move-result v0

    iput v0, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDockStackSide:I

    .line 89
    iget-object v0, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    invoke-interface {v0}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->getDividerSize()I

    move-result v0

    iput v0, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDividerSize:I

    .line 90
    iget-object v0, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    iget v1, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mRotation:I

    iget v2, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDisplayWidth:I

    iget v3, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDisplayHeight:I

    iget-object v4, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mStableInsets:Landroid/graphics/Rect;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->getStableInsets(IIILandroid/graphics/Rect;)V

    .line 91
    invoke-direct {p0}, Lcom/android/server/am/MultiWindowAutoResizeController;->calculateAutoResizeMinMaxPosition()V

    .line 92
    const-string v0, "MultiWindowAutoResizeController Initialization"

    invoke-virtual {p0, v0}, Lcom/android/server/am/MultiWindowAutoResizeController;->clearAutoResizeState(Ljava/lang/String;)V

    .line 81
    return-void

    :cond_0
    move v0, v1

    .line 82
    goto :goto_0

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDisplaySizePoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    goto :goto_1

    .line 86
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDisplaySizePoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    goto :goto_2

    .line 87
    :cond_3
    iget v0, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDisplayHeight:I

    goto :goto_3
.end method

.method private isGapCreatedForPosition(II)Z
    .locals 5
    .param p1, "stackId"    # I
    .param p2, "newPosition"    # I

    .prologue
    .line 282
    iget-boolean v3, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mIsLandScape:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDockedTaskBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 283
    .local v0, "dockedTaskSize":I
    :goto_0
    iget-boolean v3, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mIsLandScape:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mFullScreenTaskBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 284
    .local v2, "fullScreentaskSize":I
    :goto_1
    const/4 v3, 0x3

    if-ne p1, v3, :cond_3

    .line 285
    add-int v3, p2, v2

    iget v4, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDividerSize:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDisplaySize:I

    if-ge v3, v4, :cond_2

    const/4 v1, 0x1

    .line 289
    .local v1, "doesGapExist":Z
    :goto_2
    return v1

    .line 282
    .end local v0    # "dockedTaskSize":I
    .end local v1    # "doesGapExist":Z
    .end local v2    # "fullScreentaskSize":I
    :cond_0
    iget-object v3, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDockedTaskBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v0

    .restart local v0    # "dockedTaskSize":I
    goto :goto_0

    .line 283
    :cond_1
    iget-object v3, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mFullScreenTaskBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v2

    .restart local v2    # "fullScreentaskSize":I
    goto :goto_1

    .line 285
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "doesGapExist":Z
    goto :goto_2

    .line 287
    .end local v1    # "doesGapExist":Z
    :cond_3
    iget v3, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDisplaySize:I

    sub-int/2addr v3, p2

    add-int/2addr v3, v0

    iget v4, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDisplaySize:I

    if-ge v3, v4, :cond_4

    const/4 v1, 0x1

    .restart local v1    # "doesGapExist":Z
    goto :goto_2

    .end local v1    # "doesGapExist":Z
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "doesGapExist":Z
    goto :goto_2
.end method

.method private setAutoResizingTaskPosition(II)V
    .locals 0
    .param p1, "stackId"    # I
    .param p2, "position"    # I

    .prologue
    .line 255
    packed-switch p1, :pswitch_data_0

    .line 254
    :goto_0
    :pswitch_0
    return-void

    .line 257
    :pswitch_1
    iput p2, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDockedTaskAutoResizePosition:I

    goto :goto_0

    .line 260
    :pswitch_2
    iput p2, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mFullScreenTaskAutoResizePosition:I

    goto :goto_0

    .line 255
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setTaskRectForAutoResize(ILandroid/graphics/Rect;)V
    .locals 0
    .param p1, "stackId"    # I
    .param p2, "targetRect"    # Landroid/graphics/Rect;

    .prologue
    .line 293
    if-eqz p2, :cond_0

    .line 294
    packed-switch p1, :pswitch_data_0

    .line 292
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 296
    :pswitch_1
    iput-object p2, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDockedTaskAutoResizeRect:Landroid/graphics/Rect;

    goto :goto_0

    .line 299
    :pswitch_2
    iput-object p2, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mFullscreenTaskAutoResizeRect:Landroid/graphics/Rect;

    goto :goto_0

    .line 294
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private shouldExpand(Z)Z
    .locals 6
    .param p1, "isDockFocused"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 220
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDockedTaskBounds:Landroid/graphics/Rect;

    .line 221
    .local v1, "taskRect":Landroid/graphics/Rect;
    :goto_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDockedStackBounds:Landroid/graphics/Rect;

    .line 223
    .local v0, "stackRect":Landroid/graphics/Rect;
    :goto_1
    iget-boolean v4, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mIsLandScape:Z

    if-eqz v4, :cond_3

    .line 224
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    if-le v4, v5, :cond_2

    :goto_2
    return v2

    .line 220
    .end local v0    # "stackRect":Landroid/graphics/Rect;
    .end local v1    # "taskRect":Landroid/graphics/Rect;
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mFullScreenTaskBounds:Landroid/graphics/Rect;

    .restart local v1    # "taskRect":Landroid/graphics/Rect;
    goto :goto_0

    .line 221
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mFullScreenStackBounds:Landroid/graphics/Rect;

    .restart local v0    # "stackRect":Landroid/graphics/Rect;
    goto :goto_1

    :cond_2
    move v2, v3

    .line 224
    goto :goto_2

    .line 226
    :cond_3
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-le v4, v5, :cond_4

    :goto_3
    return v2

    :cond_4
    move v2, v3

    goto :goto_3
.end method


# virtual methods
.method autoResizingIfNeeded(Landroid/graphics/Rect;)Z
    .locals 7
    .param p1, "orig"    # Landroid/graphics/Rect;

    .prologue
    const/4 v6, 0x0

    .line 408
    iget-boolean v1, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->shouldWorkForEnsureDock:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mFocusedTask:Lcom/android/server/am/TaskRecord;

    iget-object v1, v1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget v1, v1, Lcom/android/server/am/ActivityStack;->mStackId:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    .line 409
    :cond_0
    iput-boolean v6, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->shouldWorkForEnsureDock:Z

    .line 410
    return v6

    .line 412
    :cond_1
    iput-boolean v6, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->shouldWorkForEnsureDock:Z

    .line 413
    invoke-virtual {p0}, Lcom/android/server/am/MultiWindowAutoResizeController;->calculateAutoResizeTargetPos()I

    move-result v0

    .line 414
    .local v0, "pos":I
    const/4 v1, -0x2

    if-ne v0, v1, :cond_2

    .line 415
    return v6

    .line 417
    :cond_2
    iget v1, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDockStackSide:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    .line 418
    return v6

    .line 420
    :cond_3
    iget v1, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDockStackSide:I

    iget-object v2, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->tmpRect:Landroid/graphics/Rect;

    .line 421
    iget v3, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDisplayWidth:I

    iget v4, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDisplayHeight:I

    iget v5, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDividerSize:I

    .line 420
    invoke-static/range {v0 .. v5}, Lcom/android/internal/policy/DockedDividerUtils;->calculateBoundsForPosition(IILandroid/graphics/Rect;III)V

    .line 422
    iget-object v1, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->tmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-le v1, v2, :cond_4

    .line 423
    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->tmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 424
    const/4 v1, 0x1

    return v1

    .line 426
    :cond_4
    return v6
.end method

.method calculateAutoResizeTargetPos()I
    .locals 4

    .prologue
    .line 231
    iget-boolean v2, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mInitialize:Z

    if-nez v2, :cond_0

    .line 232
    invoke-direct {p0}, Lcom/android/server/am/MultiWindowAutoResizeController;->initValues()V

    .line 233
    iget-boolean v2, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mInitialize:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mInitialize:Z

    .line 236
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mIsLandScape:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mFocusedTask:Lcom/android/server/am/TaskRecord;

    iget v0, v2, Lcom/android/server/am/TaskRecord;->mMinWidth:I

    .line 237
    .local v0, "minSize":I
    :goto_1
    const/4 v2, -0x1

    if-ne v0, v2, :cond_3

    .line 238
    const/4 v2, -0x2

    return v2

    .line 233
    .end local v0    # "minSize":I
    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    .line 236
    :cond_2
    iget-object v2, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mFocusedTask:Lcom/android/server/am/TaskRecord;

    iget v0, v2, Lcom/android/server/am/TaskRecord;->mMinHeight:I

    goto :goto_1

    .line 241
    .restart local v0    # "minSize":I
    :cond_3
    iget-boolean v2, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mIsDockFocused:Z

    iget v3, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDockStackSide:I

    invoke-static {v3}, Lcom/android/server/am/MultiWindowAutoResizeController;->dockSideTopLeft(I)Z

    move-result v3

    xor-int/2addr v2, v3

    if-eqz v2, :cond_5

    .line 242
    iget v2, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDisplaySize:I

    sub-int/2addr v2, v0

    iget v3, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDividerSize:I

    sub-int v1, v2, v3

    .line 245
    .local v1, "targetPos":I
    :goto_2
    iget v2, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mMinPos:I

    if-ge v1, v2, :cond_6

    .line 246
    iget v1, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mMinPos:I

    .line 251
    :cond_4
    :goto_3
    return v1

    .line 242
    .end local v1    # "targetPos":I
    :cond_5
    move v1, v0

    .restart local v1    # "targetPos":I
    goto :goto_2

    .line 247
    :cond_6
    iget v2, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mMaxPos:I

    if-le v1, v2, :cond_4

    .line 248
    iget v1, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mMaxPos:I

    goto :goto_3
.end method

.method public clearAutoResizeState(Ljava/lang/String;)V
    .locals 4
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    const v3, 0x7fffffff

    .line 352
    sget-boolean v0, Lcom/android/server/am/MultiWindowAutoResizeController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MultiWindowAutoResizeController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearAutoResizeState(), reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mIsAutoResized:Z

    .line 354
    iput v3, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDockedTaskAutoResizePosition:I

    .line 355
    iput v3, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mFullScreenTaskAutoResizePosition:I

    .line 351
    return-void
.end method

.method continueAutoResizeLocked()V
    .locals 1

    .prologue
    .line 398
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDeferred:Z

    .line 397
    return-void
.end method

.method deferAutoResizeLocked()V
    .locals 1

    .prologue
    .line 394
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDeferred:Z

    .line 393
    return-void
.end method

.method dismissAutoResizeLocked()V
    .locals 11

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 363
    iget-object v0, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v7

    .line 364
    .local v7, "dockedStack":Lcom/android/server/am/ActivityStack;
    iget-object v0, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v10

    .line 366
    .local v10, "fullscreenStack":Lcom/android/server/am/ActivityStack;
    if-eqz v7, :cond_0

    if-nez v10, :cond_1

    .line 367
    :cond_0
    return-void

    .line 370
    :cond_1
    invoke-virtual {v7, v2}, Lcom/android/server/am/ActivityStack;->getStackVisibilityLocked(Lcom/android/server/am/ActivityRecord;)I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 371
    invoke-virtual {v10, v2}, Lcom/android/server/am/ActivityStack;->getStackVisibilityLocked(Lcom/android/server/am/ActivityRecord;)I

    move-result v0

    if-eq v0, v3, :cond_3

    .line 372
    :cond_2
    return-void

    .line 375
    :cond_3
    invoke-virtual {v7}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v8

    .line 376
    .local v8, "dockedTopTask":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v10}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v9

    .line 378
    .local v9, "fullTopTask":Lcom/android/server/am/TaskRecord;
    if-eqz v8, :cond_4

    if-nez v9, :cond_5

    .line 380
    :cond_4
    return-void

    .line 379
    :cond_5
    iget-object v0, v8, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_4

    iget-object v0, v9, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_4

    .line 383
    const-string v0, "dismissAutoResize"

    invoke-virtual {p0, v0}, Lcom/android/server/am/MultiWindowAutoResizeController;->clearAutoResizeState(Ljava/lang/String;)V

    .line 385
    iget-object v0, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMultiWindowManager:Lcom/android/server/am/IMultiWindowManagerServiceBridge;

    invoke-interface {v0}, Lcom/android/server/am/IMultiWindowManagerServiceBridge;->isEnsureDockedMode()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 386
    return-void

    .line 389
    :cond_6
    iget-object v0, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v7, Lcom/android/server/am/ActivityStack;->mBounds:Landroid/graphics/Rect;

    .line 390
    const/4 v6, 0x0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 389
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ActivityStackSupervisor;->resizeDockedStackLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    .line 362
    return-void
.end method

.method public getAutoResizePositionLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/TaskRecord;Ljava/lang/String;)I
    .locals 10
    .param p1, "focusedStack"    # Lcom/android/server/am/ActivityStack;
    .param p2, "focusedTask"    # Lcom/android/server/am/TaskRecord;
    .param p3, "reason"    # Ljava/lang/String;

    .prologue
    .line 109
    iget-boolean v1, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDeferred:Z

    if-eqz v1, :cond_1

    .line 110
    sget-boolean v1, Lcom/android/server/am/MultiWindowAutoResizeController;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "MultiWindowAutoResizeController"

    const-string v2, "Auto-resize deferred"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_0
    const/16 v1, -0x63

    return v1

    .line 114
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v9

    .line 115
    .local v9, "stackId":I
    const/4 v1, 0x3

    if-eq v9, v1, :cond_3

    const/4 v1, 0x1

    if-eq v9, v1, :cond_3

    .line 117
    :cond_2
    const/16 v1, -0x63

    return v1

    .line 116
    :cond_3
    const-string v1, "swapDockedAndFullscreenStack"

    invoke-virtual {p3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 115
    if-nez v1, :cond_2

    .line 119
    iget-object v1, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v6

    .line 120
    .local v6, "dockedStack":Lcom/android/server/am/ActivityStack;
    iget-object v1, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v7

    .line 122
    .local v7, "fullScreenStack":Lcom/android/server/am/ActivityStack;
    if-eqz v6, :cond_4

    if-eqz v7, :cond_4

    .line 124
    if-ne p1, v6, :cond_6

    move-object v1, p2

    :goto_0
    iput-object v1, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDockedTask:Lcom/android/server/am/TaskRecord;

    .line 125
    if-ne p1, v7, :cond_7

    move-object v1, p2

    :goto_1
    iput-object v1, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mFullScreenTask:Lcom/android/server/am/TaskRecord;

    .line 127
    :cond_4
    if-eqz v6, :cond_5

    if-nez v7, :cond_8

    .line 131
    :cond_5
    const/16 v1, -0x63

    return v1

    .line 124
    :cond_6
    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    goto :goto_0

    .line 125
    :cond_7
    invoke-virtual {v7}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    goto :goto_1

    .line 128
    :cond_8
    iget-object v1, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDockedTask:Lcom/android/server/am/TaskRecord;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mFullScreenTask:Lcom/android/server/am/TaskRecord;

    if-eqz v1, :cond_5

    .line 129
    iget-object v1, v6, Lcom/android/server/am/ActivityStack;->mBounds:Landroid/graphics/Rect;

    if-eqz v1, :cond_5

    iget-object v1, v7, Lcom/android/server/am/ActivityStack;->mBounds:Landroid/graphics/Rect;

    if-eqz v1, :cond_5

    .line 130
    iget-object v1, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDockedTask:Lcom/android/server/am/TaskRecord;

    iget-object v1, v1, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mFullScreenTask:Lcom/android/server/am/TaskRecord;

    iget-object v1, v1, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    if-eqz v1, :cond_5

    .line 134
    iget-object v1, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getDockedStackSide()I

    move-result v1

    iput v1, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDockStackSide:I

    .line 135
    iget v1, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDockStackSide:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_a

    .line 136
    sget-boolean v1, Lcom/android/server/am/MultiWindowAutoResizeController;->DEBUG:Z

    if-eqz v1, :cond_9

    const-string v1, "MultiWindowAutoResizeController"

    const-string v2, "dockStackside is invalid"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_9
    const/16 v1, -0x63

    return v1

    .line 140
    :cond_a
    iput-object p2, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mFocusedTask:Lcom/android/server/am/TaskRecord;

    .line 141
    const/4 v1, 0x3

    if-ne v9, v1, :cond_b

    const/4 v1, 0x1

    :goto_2
    iput-boolean v1, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mIsDockFocused:Z

    .line 142
    sget-boolean v1, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->ENSURE_DOCKED_VIEW_SUPPORT:Z

    if-eqz v1, :cond_c

    .line 143
    iget-object v1, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    invoke-interface {v1}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->isEnsureDockedResizing()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 144
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->shouldWorkForEnsureDock:Z

    .line 145
    const/16 v1, -0x63

    return v1

    .line 141
    :cond_b
    const/4 v1, 0x0

    goto :goto_2

    .line 148
    :cond_c
    iget-object v1, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDockedStackBounds:Landroid/graphics/Rect;

    iget-object v2, v6, Lcom/android/server/am/ActivityStack;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 149
    iget-object v1, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mFullScreenStackBounds:Landroid/graphics/Rect;

    iget-object v2, v7, Lcom/android/server/am/ActivityStack;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 150
    iget-object v1, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDockedTaskBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDockedTask:Lcom/android/server/am/TaskRecord;

    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 151
    iget-object v1, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mFullScreenTaskBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mFullScreenTask:Lcom/android/server/am/TaskRecord;

    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 155
    const-string v1, "moveTaskToStack"

    invoke-virtual {p3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 156
    const-string v1, "moveTaskToStack"

    invoke-virtual {p0, v1}, Lcom/android/server/am/MultiWindowAutoResizeController;->clearAutoResizeState(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p0}, Lcom/android/server/am/MultiWindowAutoResizeController;->calculateAutoResizeTargetPos()I

    move-result v0

    .line 158
    .local v0, "pos":I
    const/4 v1, -0x2

    if-ne v0, v1, :cond_d

    .line 159
    invoke-direct {p0}, Lcom/android/server/am/MultiWindowAutoResizeController;->getCurrentDividerPosition()I

    move-result v0

    .line 161
    :cond_d
    iget v1, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDockStackSide:I

    iget-object v2, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDockedTaskBounds:Landroid/graphics/Rect;

    .line 162
    iget v3, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDisplayWidth:I

    iget v4, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDisplayHeight:I

    iget v5, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDividerSize:I

    .line 161
    invoke-static/range {v0 .. v5}, Lcom/android/internal/policy/DockedDividerUtils;->calculateBoundsForPosition(IILandroid/graphics/Rect;III)V

    .line 163
    iget v1, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDockStackSide:I

    invoke-static {v1}, Lcom/android/internal/policy/DockedDividerUtils;->invertDockSide(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mFullScreenTaskBounds:Landroid/graphics/Rect;

    .line 164
    iget v3, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDisplayWidth:I

    iget v4, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDisplayHeight:I

    iget v5, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDividerSize:I

    .line 163
    invoke-static/range {v0 .. v5}, Lcom/android/internal/policy/DockedDividerUtils;->calculateBoundsForPosition(IILandroid/graphics/Rect;III)V

    .line 167
    .end local v0    # "pos":I
    :cond_e
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mFitTaskToStackSize:Z

    .line 168
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mHasTargetPosChanged:Z

    .line 169
    const/16 v8, -0x63

    .line 170
    .local v8, "result":I
    iget-boolean v1, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mIsDockFocused:Z

    invoke-direct {p0, v1}, Lcom/android/server/am/MultiWindowAutoResizeController;->shouldExpand(Z)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 171
    iget-boolean v1, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mIsAutoResized:Z

    if-nez v1, :cond_12

    .line 172
    invoke-virtual {p0}, Lcom/android/server/am/MultiWindowAutoResizeController;->calculateAutoResizeTargetPos()I

    move-result v0

    .line 173
    .restart local v0    # "pos":I
    const/4 v1, -0x2

    if-ne v0, v1, :cond_f

    .line 174
    const-string v1, "MultiWindowAutoResizeController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAutoResizePositionLocked(), discarded Auto-Resize(expand) for (stackId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 175
    const-string v3, ") reason: TARGET_SIZE_DONT_EXISTS"

    .line 174
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    const/16 v1, -0x63

    return v1

    .line 178
    :cond_f
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mIsAutoResized:Z

    .line 179
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mHasTargetPosChanged:Z

    .line 180
    iget-object v1, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDockedTaskBounds:Landroid/graphics/Rect;

    const/4 v2, 0x3

    invoke-direct {p0, v2, v1}, Lcom/android/server/am/MultiWindowAutoResizeController;->setTaskRectForAutoResize(ILandroid/graphics/Rect;)V

    .line 181
    iget-object v1, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mFullScreenTaskBounds:Landroid/graphics/Rect;

    const/4 v2, 0x1

    invoke-direct {p0, v2, v1}, Lcom/android/server/am/MultiWindowAutoResizeController;->setTaskRectForAutoResize(ILandroid/graphics/Rect;)V

    .line 183
    invoke-direct {p0, v9, v0}, Lcom/android/server/am/MultiWindowAutoResizeController;->setAutoResizingTaskPosition(II)V

    .line 184
    const/4 v1, 0x3

    if-ne v9, v1, :cond_11

    const/4 v1, 0x1

    .line 185
    :goto_3
    invoke-direct {p0}, Lcom/android/server/am/MultiWindowAutoResizeController;->getCurrentDividerPosition()I

    move-result v2

    .line 184
    invoke-direct {p0, v1, v2}, Lcom/android/server/am/MultiWindowAutoResizeController;->setAutoResizingTaskPosition(II)V

    .line 186
    move v8, v0

    .line 191
    .end local v0    # "pos":I
    :goto_4
    sget-boolean v1, Lcom/android/server/am/MultiWindowAutoResizeController;->DEBUG:Z

    if-eqz v1, :cond_10

    const-string v1, "MultiWindowAutoResizeController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAutoResizePositionLocked(), should Auto-Resize(expand) for (stackId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 192
    const-string v3, ") to position = "

    .line 191
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :cond_10
    :goto_5
    return v8

    .line 185
    .restart local v0    # "pos":I
    :cond_11
    const/4 v1, 0x3

    goto :goto_3

    .line 188
    .end local v0    # "pos":I
    :cond_12
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mIsAutoResized:Z

    .line 189
    iget-boolean v1, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mIsDockFocused:Z

    invoke-direct {p0, v1}, Lcom/android/server/am/MultiWindowAutoResizeController;->getAutoResizingTaskPosition(Z)I

    move-result v8

    goto :goto_4

    .line 193
    :cond_13
    iget-boolean v1, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mIsAutoResized:Z

    if-eqz v1, :cond_10

    invoke-direct {p0}, Lcom/android/server/am/MultiWindowAutoResizeController;->areTasksOverlappedOrExpanded()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 194
    invoke-virtual {p0}, Lcom/android/server/am/MultiWindowAutoResizeController;->calculateAutoResizeTargetPos()I

    move-result v0

    .line 195
    .restart local v0    # "pos":I
    const/4 v1, -0x2

    if-eq v0, v1, :cond_14

    .line 196
    invoke-direct {p0, v9, v0}, Lcom/android/server/am/MultiWindowAutoResizeController;->isGapCreatedForPosition(II)Z

    move-result v1

    .line 195
    if-nez v1, :cond_14

    .line 197
    iget-boolean v1, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mIsDockFocused:Z

    invoke-direct {p0, v1}, Lcom/android/server/am/MultiWindowAutoResizeController;->getAutoResizingTaskPosition(Z)I

    move-result v1

    if-ne v0, v1, :cond_16

    .line 199
    :cond_14
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mIsAutoResized:Z

    .line 200
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mFitTaskToStackSize:Z

    .line 201
    iget-boolean v1, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mIsDockFocused:Z

    invoke-direct {p0, v1}, Lcom/android/server/am/MultiWindowAutoResizeController;->getAutoResizingTaskPosition(Z)I

    move-result v8

    .line 210
    :cond_15
    :goto_6
    sget-boolean v1, Lcom/android/server/am/MultiWindowAutoResizeController;->DEBUG:Z

    if-eqz v1, :cond_10

    const-string v1, "MultiWindowAutoResizeController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAutoResizePositionLocked(), should Auto-Resize(shrink) for (stackId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 211
    const-string v3, ") to position = "

    .line 210
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 202
    :cond_16
    const v1, 0x7fffffff

    if-eq v0, v1, :cond_15

    iget-boolean v1, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mIsDockFocused:Z

    invoke-direct {p0, v1}, Lcom/android/server/am/MultiWindowAutoResizeController;->getAutoResizingTaskPosition(Z)I

    move-result v1

    if-eq v0, v1, :cond_15

    .line 204
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mIsAutoResized:Z

    .line 205
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mHasTargetPosChanged:Z

    .line 206
    iget-boolean v1, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mIsDockFocused:Z

    invoke-direct {p0, v1, v0}, Lcom/android/server/am/MultiWindowAutoResizeController;->calculateRectForPosition(ZI)Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {p0, v9, v1}, Lcom/android/server/am/MultiWindowAutoResizeController;->setTaskRectForAutoResize(ILandroid/graphics/Rect;)V

    .line 207
    invoke-direct {p0, v9, v0}, Lcom/android/server/am/MultiWindowAutoResizeController;->setAutoResizingTaskPosition(II)V

    .line 208
    move v8, v0

    goto :goto_6
.end method

.method getTaskRectForAutoResize(I)Landroid/graphics/Rect;
    .locals 2
    .param p1, "stackId"    # I

    .prologue
    .line 306
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 307
    .local v0, "tmp":Landroid/graphics/Rect;
    packed-switch p1, :pswitch_data_0

    .line 315
    :goto_0
    :pswitch_0
    return-object v0

    .line 309
    :pswitch_1
    iget-object v1, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mDockedTaskAutoResizeRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 312
    :pswitch_2
    iget-object v1, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mFullscreenTaskAutoResizeRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 307
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public hasTargetPosChanged()Z
    .locals 1

    .prologue
    .line 344
    iget-boolean v0, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mHasTargetPosChanged:Z

    return v0
.end method

.method public isAutoResized()Z
    .locals 1

    .prologue
    .line 340
    iget-boolean v0, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mIsAutoResized:Z

    return v0
.end method

.method onConfigurationChangedLocked(I)V
    .locals 1
    .param p1, "conifgChanges"    # I

    .prologue
    .line 74
    and-int/lit16 v0, p1, 0x1480

    if-eqz v0, :cond_0

    .line 76
    invoke-direct {p0}, Lcom/android/server/am/MultiWindowAutoResizeController;->initValues()V

    .line 77
    const-string v0, "onConfigurationChangedLocked"

    invoke-virtual {p0, v0}, Lcom/android/server/am/MultiWindowAutoResizeController;->clearAutoResizeState(Ljava/lang/String;)V

    .line 73
    :cond_0
    return-void
.end method

.method public shouldFitTaskToStackSize()Z
    .locals 1

    .prologue
    .line 359
    iget-boolean v0, p0, Lcom/android/server/am/MultiWindowAutoResizeController;->mFitTaskToStackSize:Z

    return v0
.end method
