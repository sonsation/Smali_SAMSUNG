.class final Lcom/android/server/wm/InputMonitor;
.super Ljava/lang/Object;
.source "InputMonitor.java"

# interfaces
.implements Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;


# instance fields
.field private mImeWindowHandleIndex:I

.field private mInputDevicesReady:Z

.field private final mInputDevicesReadyMonitor:Ljava/lang/Object;

.field private mInputDispatchEnabled:Z

.field private mInputDispatchFrozen:Z

.field private mInputFocus:Lcom/android/server/wm/WindowState;

.field private mInputFreezeReason:Ljava/lang/String;

.field private mInputWindowHandleCount:I

.field private mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

.field private mIsImeShowing:Z

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private mUpdateInputWindowsNeeded:Z


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputFreezeReason:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsNeeded:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReadyMonitor:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mIsImeShowing:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/InputMonitor;->mImeWindowHandleIndex:I

    iput-object p1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    return-void
.end method

.method private addInputWindowHandleLw(Lcom/android/server/input/InputWindowHandle;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    if-nez v0, :cond_0

    const/16 v0, 0x10

    new-array v0, v0, [Lcom/android/server/input/InputWindowHandle;

    iput-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    :cond_0
    iget v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandleCount:I

    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    iget v1, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandleCount:I

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/input/InputWindowHandle;

    iput-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    iget v1, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandleCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandleCount:I

    aput-object p1, v0, v1

    return-void
.end method

.method private addInputWindowHandleLw(Lcom/android/server/input/InputWindowHandle;Lcom/android/server/wm/WindowState;IIZZZ)V
    .locals 7

    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/android/server/input/InputWindowHandle;->name:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/server/input/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    iget-object v5, p1, Lcom/android/server/input/InputWindowHandle;->pointerTouchableRegion:Landroid/graphics/Region;

    invoke-virtual {p2, v4, p3, v5}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;ILandroid/graphics/Region;)I

    move-result p3

    iput p3, p1, Lcom/android/server/input/InputWindowHandle;->layoutParamsFlags:I

    iget-object v4, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    iput v4, p1, Lcom/android/server/input/InputWindowHandle;->layoutParamsSamsungFlags:I

    iput p4, p1, Lcom/android/server/input/InputWindowHandle;->layoutParamsType:I

    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getInputDispatchingTimeoutNanos()J

    move-result-wide v4

    iput-wide v4, p1, Lcom/android/server/input/InputWindowHandle;->dispatchingTimeoutNanos:J

    iput-boolean p5, p1, Lcom/android/server/input/InputWindowHandle;->visible:Z

    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->canReceiveKeys()Z

    move-result v4

    iput-boolean v4, p1, Lcom/android/server/input/InputWindowHandle;->canReceiveKeys:Z

    iput-boolean p6, p1, Lcom/android/server/input/InputWindowHandle;->hasFocus:Z

    iput-boolean p7, p1, Lcom/android/server/input/InputWindowHandle;->hasWallpaper:Z

    iget-object v4, p2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v4, :cond_9

    iget-object v4, p2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v4, v4, Lcom/android/server/wm/AppWindowToken;->paused:Z

    :goto_0
    iput-boolean v4, p1, Lcom/android/server/input/InputWindowHandle;->paused:Z

    iget v4, p2, Lcom/android/server/wm/WindowState;->mLayer:I

    iput v4, p1, Lcom/android/server/input/InputWindowHandle;->layer:I

    iget-object v4, p2, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v4, v4, Lcom/android/server/wm/Session;->mPid:I

    iput v4, p1, Lcom/android/server/input/InputWindowHandle;->ownerPid:I

    iget-object v4, p2, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v4, v4, Lcom/android/server/wm/Session;->mUid:I

    iput v4, p1, Lcom/android/server/input/InputWindowHandle;->ownerUid:I

    iget-object v4, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    iput v4, p1, Lcom/android/server/input/InputWindowHandle;->inputFeatures:I

    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    iput v4, p1, Lcom/android/server/input/InputWindowHandle;->frameLeft:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    iput v4, p1, Lcom/android/server/input/InputWindowHandle;->frameTop:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iput v4, p1, Lcom/android/server/input/InputWindowHandle;->frameRight:I

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    iput v4, p1, Lcom/android/server/input/InputWindowHandle;->frameBottom:I

    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getBridge()Lcom/samsung/android/view/IWindowStateBridge;

    move-result-object v4

    invoke-interface {v4}, Lcom/samsung/android/view/IWindowStateBridge;->getAspectRatioFrame()Landroid/graphics/Rect;

    move-result-object v3

    if-eqz v3, :cond_0

    iget v4, p1, Lcom/android/server/input/InputWindowHandle;->frameLeft:I

    iget v5, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v5

    iput v4, p1, Lcom/android/server/input/InputWindowHandle;->frameLeft:I

    iget v4, p1, Lcom/android/server/input/InputWindowHandle;->frameTop:I

    iget v5, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v5

    iput v4, p1, Lcom/android/server/input/InputWindowHandle;->frameTop:I

    iget v4, p1, Lcom/android/server/input/InputWindowHandle;->frameRight:I

    iget v5, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v5

    iput v4, p1, Lcom/android/server/input/InputWindowHandle;->frameRight:I

    iget v4, p1, Lcom/android/server/input/InputWindowHandle;->frameBottom:I

    iget v5, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v5

    iput v4, p1, Lcom/android/server/input/InputWindowHandle;->frameBottom:I

    :cond_0
    sget-boolean v4, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_WINDOW_SUPPORT:Z

    if-eqz v4, :cond_b

    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->isDockedInEffect()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->isSnapWindowTarget()Z

    move-result v4

    if-eqz v4, :cond_a

    :cond_1
    :goto_1
    iget v4, p2, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_c

    iget v4, p2, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    const/high16 v5, 0x3f800000    # 1.0f

    div-float v4, v5, v4

    iput v4, p1, Lcom/android/server/input/InputWindowHandle;->scaleFactor:F

    :goto_2
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getBridge()Lcom/samsung/android/view/IWindowStateBridge;

    move-result-object v4

    invoke-interface {v4}, Lcom/samsung/android/view/IWindowStateBridge;->getReducedScreenScaleSpecLocked()Landroid/view/MagnificationSpec;

    move-result-object v1

    if-eqz v1, :cond_2

    iget v4, v1, Landroid/view/MagnificationSpec;->scale:F

    iget v5, v1, Landroid/view/MagnificationSpec;->offsetX:F

    iget v6, v1, Landroid/view/MagnificationSpec;->offsetY:F

    invoke-static {p1, v4, v5, v6}, Lcom/android/server/PackageConfigurationController$Tools;->applyReducedScreenParamsToInputWindowHandle(Lcom/android/server/input/InputWindowHandle;FFF)V

    :cond_2
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getBridge()Lcom/samsung/android/view/IWindowStateBridge;

    move-result-object v4

    invoke-interface {v4}, Lcom/samsung/android/view/IWindowStateBridge;->getReducedSideTouchArea()I

    move-result v2

    if-lez v2, :cond_3

    iget-object v4, p2, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v4, v4, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    iget-object v5, p2, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v5, v5, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    invoke-static {p1, v4, v5, v2}, Lcom/android/server/PackageConfigurationController$Tools;->applyReducedSideTouchAreaToInputWindowHandle(Lcom/android/server/input/InputWindowHandle;III)V

    :cond_3
    if-nez v1, :cond_4

    if-lez v2, :cond_5

    :cond_4
    iget-object v4, p1, Lcom/android/server/input/InputWindowHandle;->pointerTouchableRegion:Landroid/graphics/Region;

    invoke-virtual {v4}, Landroid/graphics/Region;->setEmpty()V

    :cond_5
    iget v4, p1, Lcom/android/server/input/InputWindowHandle;->layoutParamsSamsungFlags:I

    and-int/lit16 v4, v4, 0x100

    if-eqz v4, :cond_6

    iget v4, p1, Lcom/android/server/input/InputWindowHandle;->frameTop:I

    iget-object v5, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    invoke-interface {v5}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->getDecorCaptionWindowHeight()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p1, Lcom/android/server/input/InputWindowHandle;->frameBottom:I

    :cond_6
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_INPUT:Z

    if-eqz v4, :cond_7

    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addInputWindowHandle: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-object v4, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x7db

    if-ne v4, v5, :cond_8

    iget v4, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandleCount:I

    iput v4, p0, Lcom/android/server/wm/InputMonitor;->mImeWindowHandleIndex:I

    :cond_8
    invoke-direct {p0, p2}, Lcom/android/server/wm/InputMonitor;->adjustForImeIfNeeded(Lcom/android/server/wm/WindowState;)Z

    move-result v4

    if-eqz v4, :cond_e

    iget v4, p0, Lcom/android/server/wm/InputMonitor;->mImeWindowHandleIndex:I

    invoke-direct {p0, p1, v4}, Lcom/android/server/wm/InputMonitor;->insertInputWindowHandleLw(Lcom/android/server/input/InputWindowHandle;I)V

    :goto_3
    return-void

    :cond_9
    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_a
    iget v4, p1, Lcom/android/server/input/InputWindowHandle;->frameLeft:I

    iget v5, p2, Lcom/android/server/wm/WindowState;->mXOffset:I

    add-int/2addr v4, v5

    iput v4, p1, Lcom/android/server/input/InputWindowHandle;->frameLeft:I

    iget v4, p1, Lcom/android/server/input/InputWindowHandle;->frameTop:I

    iget v5, p2, Lcom/android/server/wm/WindowState;->mYOffset:I

    add-int/2addr v4, v5

    iput v4, p1, Lcom/android/server/input/InputWindowHandle;->frameTop:I

    iget v4, p1, Lcom/android/server/input/InputWindowHandle;->frameRight:I

    iget v5, p2, Lcom/android/server/wm/WindowState;->mXOffset:I

    add-int/2addr v4, v5

    iput v4, p1, Lcom/android/server/input/InputWindowHandle;->frameRight:I

    iget v4, p1, Lcom/android/server/input/InputWindowHandle;->frameBottom:I

    iget v5, p2, Lcom/android/server/wm/WindowState;->mYOffset:I

    add-int/2addr v4, v5

    iput v4, p1, Lcom/android/server/input/InputWindowHandle;->frameBottom:I

    goto/16 :goto_1

    :cond_b
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->isDockedInEffect()Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, p1, Lcom/android/server/input/InputWindowHandle;->frameLeft:I

    iget v5, p2, Lcom/android/server/wm/WindowState;->mXOffset:I

    add-int/2addr v4, v5

    iput v4, p1, Lcom/android/server/input/InputWindowHandle;->frameLeft:I

    iget v4, p1, Lcom/android/server/input/InputWindowHandle;->frameTop:I

    iget v5, p2, Lcom/android/server/wm/WindowState;->mYOffset:I

    add-int/2addr v4, v5

    iput v4, p1, Lcom/android/server/input/InputWindowHandle;->frameTop:I

    iget v4, p1, Lcom/android/server/input/InputWindowHandle;->frameRight:I

    iget v5, p2, Lcom/android/server/wm/WindowState;->mXOffset:I

    add-int/2addr v4, v5

    iput v4, p1, Lcom/android/server/input/InputWindowHandle;->frameRight:I

    iget v4, p1, Lcom/android/server/input/InputWindowHandle;->frameBottom:I

    iget v5, p2, Lcom/android/server/wm/WindowState;->mYOffset:I

    add-int/2addr v4, v5

    iput v4, p1, Lcom/android/server/input/InputWindowHandle;->frameBottom:I

    goto/16 :goto_1

    :cond_c
    iget-boolean v4, p2, Lcom/android/server/wm/WindowState;->mDssEnabled:Z

    if-eqz v4, :cond_d

    iget v4, p2, Lcom/android/server/wm/WindowState;->mDssScale:F

    iput v4, p1, Lcom/android/server/input/InputWindowHandle;->scaleFactor:F

    goto/16 :goto_2

    :cond_d
    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, p1, Lcom/android/server/input/InputWindowHandle;->scaleFactor:F

    goto/16 :goto_2

    :cond_e
    invoke-direct {p0, p1}, Lcom/android/server/wm/InputMonitor;->addInputWindowHandleLw(Lcom/android/server/input/InputWindowHandle;)V

    goto :goto_3
.end method

.method private adjustForImeIfNeeded(Lcom/android/server/wm/WindowState;)Z
    .locals 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-boolean v5, p0, Lcom/android/server/wm/InputMonitor;->mIsImeShowing:Z

    if-nez v5, :cond_0

    return v3

    :cond_0
    iget-object v5, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x3ea

    if-ne v5, v6, :cond_4

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getDockedStackLocked()Lcom/android/server/wm/TaskStack;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getStackId()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getStackId()I

    move-result v5

    if-ne v5, v4, :cond_2

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/DockedStackDividerController;->isMinimizedDock()Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_2
    const/4 v2, 0x0

    :goto_1
    iget-object v5, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_7

    iget-object v5, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy;->getInputMethodWindowVisibleHeightLw()I

    move-result v5

    if-nez v5, :cond_6

    const/4 v0, 0x1

    :goto_2
    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    if-eqz v0, :cond_8

    :cond_3
    :goto_3
    return v3

    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisibleOrAdding()Z

    move-result v2

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    goto :goto_2

    :cond_7
    const/4 v0, 0x0

    goto :goto_2

    :cond_8
    move v3, v4

    goto :goto_3
.end method

.method private clearInputWindowHandlesLw()V
    .locals 3

    :goto_0
    iget v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandleCount:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    iget v1, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandleCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandleCount:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private insertInputWindowHandleLw(Lcom/android/server/input/InputWindowHandle;I)V
    .locals 4

    if-ltz p2, :cond_0

    iget v1, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandleCount:I

    if-le p2, v1, :cond_1

    :cond_0
    const-string v1, "WindowManager"

    const-string/jumbo v2, "insertInputWindowHandleLw: Invalid Index! Adding InputWindowHandle to last index"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/server/wm/InputMonitor;->addInputWindowHandleLw(Lcom/android/server/input/InputWindowHandle;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    if-nez v1, :cond_2

    const/16 v1, 0x10

    new-array v1, v1, [Lcom/android/server/input/InputWindowHandle;

    iput-object v1, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    :cond_2
    iget v1, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandleCount:I

    iget-object v2, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    array-length v2, v2

    if-lt v1, v2, :cond_3

    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    iget v2, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandleCount:I

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/server/input/InputWindowHandle;

    iput-object v1, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    :cond_3
    iget v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandleCount:I

    :goto_0
    if-le v0, p2, :cond_4

    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    iget-object v2, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    add-int/lit8 v3, v0, -0x1

    aget-object v2, v2, v3

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    add-int/lit8 v2, p2, 0x1

    aget-object v1, v1, v2

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    add-int/lit8 v2, p2, 0x1

    aget-object v1, v1, v2

    iget v1, v1, Lcom/android/server/input/InputWindowHandle;->layer:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p1, Lcom/android/server/input/InputWindowHandle;->layer:I

    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    aput-object p1, v1, p2

    iget v1, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandleCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandleCount:I

    return-void

    :cond_6
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->SAFE_DEBUG:Z

    if-eqz v1, :cond_5

    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "insertInputWindowHandleLw: null InputWindowHandle for index = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, p2, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private updateInputDispatchModeLw()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-boolean v1, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchEnabled:Z

    iget-boolean v2, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchFrozen:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/server/input/InputManagerService;->setInputDispatchMode(ZZ)V

    return-void
.end method


# virtual methods
.method public dispatchUnhandledKey(Lcom/android/server/input/InputWindowHandle;Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/server/input/InputWindowHandle;->windowState:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wm/WindowState;

    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v1, v0, p2, p3}, Landroid/view/WindowManagerPolicy;->dispatchUnhandledKey(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputFreezeReason:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mInputFreezeReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mInputFreezeReason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public freezeInputDispatchingLw()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchFrozen:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_INPUT:Z

    if-eqz v0, :cond_0

    const-string v0, "WindowManager"

    const-string v1, "Freezing input dispatching"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchFrozen:Z

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_INPUT:Z

    if-nez v0, :cond_1

    :cond_1
    const/4 v0, 0x6

    invoke-static {v0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputFreezeReason:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/server/wm/InputMonitor;->updateInputDispatchModeLw()V

    :cond_2
    return-void
.end method

.method public getKeycodeOnNavigationBar(II)I
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    check-cast v0, Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->getSamsungPolicy()Lcom/android/server/policy/SamsungWindowManagerPolicy;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->getKeycodeOnNavigationBar(II)I

    move-result v0

    return v0
.end method

.method public getPointerLayer()I
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    const/16 v1, 0x7e2

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy;->windowTypeToLayerLw(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x2710

    add-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method public interceptKeyBeforeDispatching(Lcom/android/server/input/InputWindowHandle;Landroid/view/KeyEvent;I)J
    .locals 4

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/server/input/InputWindowHandle;->windowState:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wm/WindowState;

    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v1, v0, p2, p3}, Landroid/view/WindowManagerPolicy;->interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J

    move-result-wide v2

    return-wide v2

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, p1, p2}, Landroid/view/WindowManagerPolicy;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I

    move-result v0

    return v0
.end method

.method public interceptKeyBeforeQuickAccess(IFF)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    check-cast v0, Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->getSamsungPolicy()Lcom/android/server/policy/SamsungWindowManagerPolicy;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->notifyBeforeQuickAccess(IFF)V

    return-void
.end method

.method public interceptMotionBeforeQueueingNonInteractive(JI)I
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/WindowManagerPolicy;->interceptMotionBeforeQueueingNonInteractive(JI)I

    move-result v0

    return v0
.end method

.method public notifyANR(Lcom/android/server/input/InputApplicationHandle;Lcom/android/server/input/InputWindowHandle;Ljava/lang/String;)J
    .locals 14

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    iget-object v10, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v11, v10, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v11

    if-eqz p2, :cond_0

    :try_start_0
    move-object/from16 v0, p2

    iget-object v10, v0, Lcom/android/server/input/InputWindowHandle;->windowState:Ljava/lang/Object;

    move-object v0, v10

    check-cast v0, Lcom/android/server/wm/WindowState;

    move-object v7, v0

    if-eqz v7, :cond_0

    iget-object v4, v7, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    :cond_0
    if-nez v4, :cond_1

    if-eqz p1, :cond_1

    iget-object v10, p1, Lcom/android/server/input/InputApplicationHandle;->appWindowToken:Ljava/lang/Object;

    move-object v0, v10

    check-cast v0, Lcom/android/server/wm/AppWindowToken;

    move-object v4, v0

    :cond_1
    if-eqz v7, :cond_3

    const-string v10, "WindowManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Input event dispatching timed out sending to "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v7, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v13}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".  Reason: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v10, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    const/16 v12, 0x7d3

    invoke-interface {v10, v12}, Landroid/view/WindowManagerPolicy;->windowTypeToLayerLw(I)I

    move-result v6

    iget v10, v7, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    if-le v10, v6, :cond_2

    const/4 v3, 0x1

    :goto_0
    iget-object v10, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p3

    invoke-virtual {v10, v4, v7, v0}, Lcom/android/server/wm/WindowManagerService;->saveANRStateLocked(Lcom/android/server/wm/AppWindowToken;Lcom/android/server/wm/WindowState;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v11

    if-eqz v4, :cond_5

    iget-object v10, v4, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    if-eqz v10, :cond_5

    :try_start_1
    iget-object v10, v4, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    move-object/from16 v0, p3

    invoke-interface {v10, v0}, Landroid/view/IApplicationToken;->keyDispatchingTimedOut(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-wide v10, v4, Lcom/android/server/wm/AppWindowToken;->inputDispatchingTimeoutNanos:J
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return-wide v10

    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    :cond_3
    if-eqz v4, :cond_4

    :try_start_2
    const-string v10, "WindowManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Input event dispatching timed out sending to application "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v4, Lcom/android/server/wm/AppWindowToken;->stringName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".  Reason: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v10

    monitor-exit v11

    throw v10

    :cond_4
    :try_start_3
    const-string v10, "WindowManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Input event dispatching timed out .  Reason: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :cond_5
    if-eqz v7, :cond_6

    :try_start_4
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v10

    iget-object v11, v7, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v11, v11, Lcom/android/server/wm/Session;->mPid:I

    move-object/from16 v0, p3

    invoke-interface {v10, v11, v3, v0}, Landroid/app/IActivityManager;->inputDispatchingTimedOut(IZLjava/lang/String;)J
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-ltz v10, :cond_6

    const-wide/32 v10, 0xf4240

    mul-long/2addr v10, v8

    return-wide v10

    :catch_0
    move-exception v5

    :cond_6
    :goto_1
    const-wide/16 v10, 0x0

    return-wide v10

    :catch_1
    move-exception v5

    goto :goto_1
.end method

.method public notifyCameraLensCoverSwitchChanged(JZ)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/WindowManagerPolicy;->notifyCameraLensCoverSwitchChanged(JZ)V

    return-void
.end method

.method public notifyConfigurationChanged()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->sendNewConfiguration()V

    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReadyMonitor:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReady:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReady:Z

    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReadyMonitor:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public notifyCoverSwitchStateChanged(JZ)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    check-cast v0, Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->getSamsungPolicy()Lcom/android/server/policy/SamsungWindowManagerPolicy;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->notifyCoverSwitchStateChanged(JZ)V

    return-void
.end method

.method public notifyFoldingSwitchStateChanged(JI)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/WindowManagerPolicy;->notifyFoldingSwitchStateChanged(JI)V

    return-void
.end method

.method public notifyInputChannelBroken(Lcom/android/server/input/InputWindowHandle;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    iget-object v0, p1, Lcom/android/server/input/InputWindowHandle;->windowState:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_1

    const-string v1, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WINDOW DIED "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowManagerService;->removeWindowLocked(Lcom/android/server/wm/WindowState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public notifyLidSwitchChanged(JZ)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/WindowManagerPolicy;->notifyLidSwitchChanged(JZ)V

    return-void
.end method

.method public notifyPenSwitchChanged(JZ)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    check-cast v0, Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->getSamsungPolicy()Lcom/android/server/policy/SamsungWindowManagerPolicy;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->notifyPenSwitchChanged(JZ)V

    return-void
.end method

.method public pauseDispatchingLw(Lcom/android/server/wm/WindowToken;)V
    .locals 4

    const/4 v3, 0x1

    iget-boolean v0, p1, Lcom/android/server/wm/WindowToken;->paused:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_INPUT:Z

    if-eqz v0, :cond_0

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pausing WindowToken "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-boolean v3, p1, Lcom/android/server/wm/WindowToken;->paused:Z

    invoke-virtual {p0, v3}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    :cond_1
    return-void
.end method

.method public resumeDispatchingLw(Lcom/android/server/wm/WindowToken;)V
    .locals 3

    iget-boolean v0, p1, Lcom/android/server/wm/WindowToken;->paused:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_INPUT:Z

    if-eqz v0, :cond_0

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resuming WindowToken "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/wm/WindowToken;->paused:Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    :cond_1
    return-void
.end method

.method public setEventDispatchingLw(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchEnabled:Z

    if-eq v0, p1, :cond_1

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_INPUT:Z

    if-eqz v0, :cond_0

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting event dispatching to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-boolean p1, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchEnabled:Z

    invoke-direct {p0}, Lcom/android/server/wm/InputMonitor;->updateInputDispatchModeLw()V

    :cond_1
    return-void
.end method

.method public setFocusedAppLw(Lcom/android/server/wm/AppWindowToken;)V
    .locals 4

    const/4 v2, 0x0

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v1, v2}, Lcom/android/server/input/InputManagerService;->setFocusedApplication(Lcom/android/server/input/InputApplicationHandle;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lcom/android/server/wm/AppWindowToken;->mInputApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/input/InputApplicationHandle;->name:Ljava/lang/String;

    iget-wide v2, p1, Lcom/android/server/wm/AppWindowToken;->inputDispatchingTimeoutNanos:J

    iput-wide v2, v0, Lcom/android/server/input/InputApplicationHandle;->dispatchingTimeoutNanos:J

    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/input/InputManagerService;->setFocusedApplication(Lcom/android/server/input/InputApplicationHandle;)V

    goto :goto_0
.end method

.method public setInputFocusLw(Lcom/android/server/wm/WindowState;Z)V
    .locals 4

    const/4 v3, 0x0

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_FOCUS_LIGHT:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_INPUT:Z

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Input focus has changed to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputFocus:Lcom/android/server/wm/WindowState;

    if-eq p1, v0, :cond_3

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->canReceiveKeys()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iput-boolean v3, v0, Lcom/android/server/wm/WindowToken;->paused:Z

    :cond_2
    iput-object p1, p0, Lcom/android/server/wm/InputMonitor;->mInputFocus:Lcom/android/server/wm/WindowState;

    invoke-virtual {p0}, Lcom/android/server/wm/InputMonitor;->setUpdateInputWindowsNeededLw()V

    if-eqz p2, :cond_3

    invoke-virtual {p0, v3}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    :cond_3
    return-void
.end method

.method public setUpdateInputWindowsNeededLw()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsNeeded:Z

    return-void
.end method

.method public thawInputDispatchingLw()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchFrozen:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_INPUT:Z

    if-eqz v0, :cond_0

    const-string v0, "WindowManager"

    const-string v1, "Thawing input dispatching"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchFrozen:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputFreezeReason:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/server/wm/InputMonitor;->updateInputDispatchModeLw()V

    :cond_1
    return-void
.end method

.method public updateInputWindowsLw(Z)V
    .locals 27

    if-nez p1, :cond_0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsNeeded:Z

    if-eqz v2, :cond_8

    :cond_0
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsNeeded:Z

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v2, :cond_9

    const/16 v17, 0x1

    :goto_0
    if-eqz v17, :cond_2

    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DRAG:Z

    if-eqz v2, :cond_1

    const-string v2, "WindowManager"

    const-string v26, "Inserting drag window"

    move-object/from16 v0, v26

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    iget-object v15, v2, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    if-eqz v15, :cond_a

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/wm/InputMonitor;->addInputWindowHandleLw(Lcom/android/server/input/InputWindowHandle;)V

    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mTaskPositioner:Lcom/android/server/wm/TaskPositioner;

    if-eqz v2, :cond_b

    const/16 v18, 0x1

    :goto_2
    if-eqz v18, :cond_4

    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_POSITIONING:Z

    if-eqz v2, :cond_3

    const-string v2, "WindowManager"

    const-string v26, "Inserting window handle for repositioning"

    move-object/from16 v0, v26

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mTaskPositioner:Lcom/android/server/wm/TaskPositioner;

    iget-object v15, v2, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    if-eqz v15, :cond_c

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/wm/InputMonitor;->addInputWindowHandleLw(Lcom/android/server/input/InputWindowHandle;)V

    :cond_4
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    if-eqz v2, :cond_d

    const/4 v10, 0x1

    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWallpaperInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    if-eqz v2, :cond_e

    const/4 v11, 0x1

    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v2, Lcom/android/server/wm/WindowManagerService;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v2, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v16, v0

    if-eqz v16, :cond_f

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/WindowState;->isDisplayedLw()Z

    move-result v2

    :goto_6
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/InputMonitor;->mIsImeShowing:Z

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/InputMonitor;->mIsImeShowing:Z

    if-nez v2, :cond_5

    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wm/InputMonitor;->mImeWindowHandleIndex:I

    :cond_5
    const/4 v14, 0x0

    :goto_7
    move/from16 v0, v20

    if-ge v14, v0, :cond_1b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    invoke-virtual {v2, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/wm/DisplayContent;

    iget-object v2, v13, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    invoke-virtual {v2}, Lcom/android/server/wm/DockedStackDividerController;->isImeHideRequested()Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/InputMonitor;->mIsImeShowing:Z

    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wm/InputMonitor;->mImeWindowHandleIndex:I

    :cond_6
    invoke-virtual {v13}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v24, v2, -0x1

    :goto_8
    if-ltz v24, :cond_1a

    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    iget-object v0, v4, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    move-object/from16 v19, v0

    iget-object v3, v4, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/input/InputWindowHandle;

    if-eqz v19, :cond_7

    if-nez v3, :cond_10

    :cond_7
    :goto_9
    add-int/lit8 v24, v24, -0x1

    goto :goto_8

    :cond_8
    return-void

    :cond_9
    const/16 v17, 0x0

    goto/16 :goto_0

    :cond_a
    const-string v2, "WindowManager"

    const-string v26, "Drag is in progress but there is no drag window handle."

    move-object/from16 v0, v26

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_b
    const/16 v18, 0x0

    goto/16 :goto_2

    :cond_c
    const-string v2, "WindowManager"

    const-string v26, "Repositioning is in progress but there is no drag window handle."

    move-object/from16 v0, v26

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_d
    const/4 v10, 0x0

    goto/16 :goto_4

    :cond_e
    const/4 v11, 0x0

    goto/16 :goto_5

    :cond_f
    const/4 v2, 0x0

    goto :goto_6

    :cond_10
    iget-boolean v2, v4, Lcom/android/server/wm/WindowState;->mRemoved:Z

    if-nez v2, :cond_7

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->isAdjustedForMinimizedDock()Z

    move-result v2

    if-nez v2, :cond_7

    if-eqz v10, :cond_11

    iget v2, v3, Lcom/android/server/input/InputWindowHandle;->layer:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/server/input/InputWindowHandle;->layer:I

    move/from16 v26, v0

    move/from16 v0, v26

    if-gt v2, v0, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    iget-object v2, v2, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/wm/InputMonitor;->addInputWindowHandleLw(Lcom/android/server/input/InputWindowHandle;)V

    const/4 v10, 0x0

    :cond_11
    if-eqz v11, :cond_12

    iget-object v2, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v26, 0x7dd

    move/from16 v0, v26

    if-ne v2, v0, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWallpaperInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    iget-object v2, v2, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/wm/InputMonitor;->addInputWindowHandleLw(Lcom/android/server/input/InputWindowHandle;)V

    const/4 v11, 0x0

    :cond_12
    iget-object v2, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v2, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    move/from16 v22, v0

    iget-object v2, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mInputFocus:Lcom/android/server/wm/WindowState;

    if-ne v4, v2, :cond_15

    const/4 v8, 0x1

    :goto_a
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->inFreeformWorkspace()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v7

    :goto_b
    move/from16 v0, v22

    and-int/lit16 v2, v0, 0x800

    if-eqz v2, :cond_13

    const/4 v12, 0x1

    :cond_13
    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lcom/android/server/wm/WallpaperController;->isWallpaperTarget(Lcom/android/server/wm/WindowState;)Z

    move-result v2

    if-eqz v2, :cond_18

    move/from16 v0, v22

    and-int/lit16 v2, v0, 0x400

    if-nez v2, :cond_18

    if-eqz v12, :cond_17

    const/4 v9, 0x0

    :goto_c
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v2

    if-nez v2, :cond_19

    const/16 v21, 0x1

    :goto_d
    if-eqz v17, :cond_14

    if-eqz v7, :cond_14

    if-eqz v21, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v2, v4}, Lcom/android/server/wm/DragState;->sendDragStartedIfNeededLw(Lcom/android/server/wm/WindowState;)V

    :cond_14
    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/server/wm/InputMonitor;->addInputWindowHandleLw(Lcom/android/server/input/InputWindowHandle;Lcom/android/server/wm/WindowState;IIZZZ)V

    goto/16 :goto_9

    :cond_15
    const/4 v8, 0x0

    goto :goto_a

    :cond_16
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v7

    goto :goto_b

    :cond_17
    const/4 v9, 0x1

    goto :goto_c

    :cond_18
    const/4 v9, 0x0

    goto :goto_c

    :cond_19
    const/16 v21, 0x0

    goto :goto_d

    :cond_1a
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_7

    :cond_1b
    if-eqz v11, :cond_1c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWallpaperInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    iget-object v2, v2, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/wm/InputMonitor;->addInputWindowHandleLw(Lcom/android/server/input/InputWindowHandle;)V

    :cond_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Lcom/android/server/input/InputManagerService;->setInputWindows([Lcom/android/server/input/InputWindowHandle;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/InputMonitor;->clearInputWindowHandlesLw()V

    return-void
.end method

.method public waitForInputDevicesReady(J)Z
    .locals 3

    iget-object v2, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReadyMonitor:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReady:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReadyMonitor:Ljava/lang/Object;

    invoke-virtual {v1, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    iget-boolean v1, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReady:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v2

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    :catch_0
    move-exception v0

    goto :goto_0
.end method
