.class public Lcom/android/server/wm/WindowLayersController;
.super Ljava/lang/Object;
.source "WindowLayersController.java"


# instance fields
.field private mDividerPanel:Lcom/android/server/wm/WindowState;

.field private mDividerPanelWindows:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private mDividerSnapView:Lcom/android/server/wm/WindowState;

.field private mDockDivider:Lcom/android/server/wm/WindowState;

.field private mDockedPopupWindows:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private mDockedStackColorLayer:I

.field private mDockedWindows:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private mFreeformReplacingWindows:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private mFreeformWindows:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private mHighestApplicationLayer:I

.field private mInputMethodAnimLayerAdjustment:I

.field private mInputMethodWindows:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private mPinnedWindows:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private mReplacingWindows:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/WindowLayersController;->mHighestApplicationLayer:I

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mPinnedWindows:Ljava/util/ArrayDeque;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mDockedWindows:Ljava/util/ArrayDeque;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mInputMethodWindows:Ljava/util/ArrayDeque;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mFreeformWindows:Ljava/util/ArrayDeque;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mFreeformReplacingWindows:Ljava/util/ArrayDeque;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mDockedPopupWindows:Ljava/util/ArrayDeque;

    iput-object v1, p0, Lcom/android/server/wm/WindowLayersController;->mDockDivider:Lcom/android/server/wm/WindowState;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mReplacingWindows:Ljava/util/ArrayDeque;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mDividerPanelWindows:Ljava/util/ArrayDeque;

    iput-object v1, p0, Lcom/android/server/wm/WindowLayersController;->mDividerPanel:Lcom/android/server/wm/WindowState;

    iput-object v1, p0, Lcom/android/server/wm/WindowLayersController;->mDividerSnapView:Lcom/android/server/wm/WindowState;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/WindowLayersController;->mDockedStackColorLayer:I

    iput-object p1, p0, Lcom/android/server/wm/WindowLayersController;->mService:Lcom/android/server/wm/WindowManagerService;

    return-void
.end method

.method private adjustSpecialWindows()V
    .locals 12

    iget v10, p0, Lcom/android/server/wm/WindowLayersController;->mHighestApplicationLayer:I

    add-int/lit8 v4, v10, 0x5

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    iget-object v10, p0, Lcom/android/server/wm/WindowLayersController;->mDockedWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v10}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_1

    :goto_0
    const/4 v1, 0x0

    :goto_1
    iget-object v10, p0, Lcom/android/server/wm/WindowLayersController;->mDockedWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v10}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_2

    iget-object v10, p0, Lcom/android/server/wm/WindowLayersController;->mDockedWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v10}, Ljava/util/ArrayDeque;->getFirst()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowState;

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->getAnimLayerAdjustment()I

    move-result v10

    if-le v10, v0, :cond_0

    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->getAnimLayerAdjustment()I

    move-result v0

    :cond_0
    iget-object v10, p0, Lcom/android/server/wm/WindowLayersController;->mDockedWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v10}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/WindowState;

    invoke-direct {p0, v10, v4}, Lcom/android/server/wm/WindowLayersController;->assignAndIncreaseLayerIfNeeded(Lcom/android/server/wm/WindowState;I)I

    move-result v4

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    iget-object v10, p0, Lcom/android/server/wm/WindowLayersController;->mDockedWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v10}, Ljava/util/ArrayDeque;->getLast()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowState;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v2

    goto :goto_0

    :cond_2
    iget-object v10, p0, Lcom/android/server/wm/WindowLayersController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v10, v10, Lcom/android/server/wm/WindowManagerService;->mCoverDockedDivider:Z

    if-nez v10, :cond_3

    add-int/2addr v4, v0

    :cond_3
    iget-object v10, p0, Lcom/android/server/wm/WindowLayersController;->mDockDivider:Lcom/android/server/wm/WindowState;

    add-int/lit8 v11, v4, 0x5

    invoke-direct {p0, v10, v11}, Lcom/android/server/wm/WindowLayersController;->assignAndIncreaseLayerIfNeeded(Lcom/android/server/wm/WindowState;I)I

    move-result v4

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    if-eqz v5, :cond_4

    invoke-virtual {v2}, Lcom/android/server/wm/TaskStack;->getColorLayerSurface()Lcom/android/server/wm/IMultiWindowStackColorLayer;

    move-result-object v10

    if-eqz v10, :cond_4

    invoke-virtual {v2}, Lcom/android/server/wm/TaskStack;->getColorLayerSurface()Lcom/android/server/wm/IMultiWindowStackColorLayer;

    move-result-object v10

    iget v11, p0, Lcom/android/server/wm/WindowLayersController;->mDockedStackColorLayer:I

    invoke-interface {v10, v11}, Lcom/android/server/wm/IMultiWindowStackColorLayer;->setLayer(I)V

    :cond_4
    sget-boolean v10, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_WINDOW_SUPPORT:Z

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/android/server/wm/WindowLayersController;->mDividerSnapView:Lcom/android/server/wm/WindowState;

    invoke-direct {p0, v10, v4}, Lcom/android/server/wm/WindowLayersController;->assignAndIncreaseLayerIfNeeded(Lcom/android/server/wm/WindowState;I)I

    move-result v4

    :cond_5
    iget-object v10, p0, Lcom/android/server/wm/WindowLayersController;->mDividerPanel:Lcom/android/server/wm/WindowState;

    invoke-direct {p0, v10, v4}, Lcom/android/server/wm/WindowLayersController;->assignAndIncreaseLayerIfNeeded(Lcom/android/server/wm/WindowState;I)I

    move-result v4

    iget-object v10, p0, Lcom/android/server/wm/WindowLayersController;->mDividerPanelWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v10}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_6

    iget-object v10, p0, Lcom/android/server/wm/WindowLayersController;->mDividerPanelWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v10}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/WindowState;

    invoke-direct {p0, v10, v4}, Lcom/android/server/wm/WindowLayersController;->assignAndIncreaseLayerIfNeeded(Lcom/android/server/wm/WindowState;I)I

    move-result v4

    :cond_6
    sget-boolean v10, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_SUPPORT:Z

    if-eqz v10, :cond_7

    iget-object v10, p0, Lcom/android/server/wm/WindowLayersController;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Lcom/android/server/wm/WindowManagerService;->isStackVisibleLocked(I)Z

    move-result v10

    if-nez v10, :cond_9

    iget-object v10, p0, Lcom/android/server/wm/WindowLayersController;->mFreeformWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v10}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_9

    iget-object v10, p0, Lcom/android/server/wm/WindowLayersController;->mFreeformReplacingWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v10}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_9

    :cond_7
    :goto_2
    if-nez v3, :cond_b

    iget-object v10, p0, Lcom/android/server/wm/WindowLayersController;->mDockDivider:Lcom/android/server/wm/WindowState;

    if-eqz v10, :cond_b

    iget-object v10, p0, Lcom/android/server/wm/WindowLayersController;->mDockDivider:Lcom/android/server/wm/WindowState;

    invoke-virtual {v10}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v10

    if-nez v10, :cond_8

    iget-object v10, p0, Lcom/android/server/wm/WindowLayersController;->mDockDivider:Lcom/android/server/wm/WindowState;

    invoke-virtual {v10}, Lcom/android/server/wm/WindowState;->isVisibleOrAdding()Z

    move-result v10

    if-nez v10, :cond_8

    if-eqz v1, :cond_b

    :cond_8
    :goto_3
    iget-object v10, p0, Lcom/android/server/wm/WindowLayersController;->mInputMethodWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v10}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_b

    iget-object v10, p0, Lcom/android/server/wm/WindowLayersController;->mInputMethodWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v10}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowState;

    iget v10, v6, Lcom/android/server/wm/WindowState;->mLayer:I

    if-le v4, v10, :cond_8

    invoke-direct {p0, v6, v4}, Lcom/android/server/wm/WindowLayersController;->assignAndIncreaseLayerIfNeeded(Lcom/android/server/wm/WindowState;I)I

    move-result v4

    goto :goto_3

    :cond_9
    new-instance v7, Ljava/util/ArrayDeque;

    invoke-direct {v7}, Ljava/util/ArrayDeque;-><init>()V

    iget-object v10, p0, Lcom/android/server/wm/WindowLayersController;->mFreeformWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v7, v10}, Ljava/util/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    iget-object v10, p0, Lcom/android/server/wm/WindowLayersController;->mFreeformReplacingWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v7, v10}, Ljava/util/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_a
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/WindowState;

    invoke-virtual {v8}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v10

    if-eqz v10, :cond_a

    invoke-virtual {v8}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v10

    iget v10, v10, Lcom/android/server/wm/Task;->mHiddenState:I

    if-nez v10, :cond_a

    const/4 v3, 0x1

    goto :goto_2

    :cond_b
    :goto_4
    iget-object v10, p0, Lcom/android/server/wm/WindowLayersController;->mReplacingWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v10}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_c

    iget-object v10, p0, Lcom/android/server/wm/WindowLayersController;->mReplacingWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v10}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/WindowState;

    invoke-direct {p0, v10, v4}, Lcom/android/server/wm/WindowLayersController;->assignAndIncreaseLayerIfNeeded(Lcom/android/server/wm/WindowState;I)I

    move-result v4

    goto :goto_4

    :cond_c
    sget-boolean v10, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v10, :cond_12

    :cond_d
    iget-object v10, p0, Lcom/android/server/wm/WindowLayersController;->mFreeformWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v10}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_f

    iget-object v10, p0, Lcom/android/server/wm/WindowLayersController;->mFreeformWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v10}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowState;

    invoke-direct {p0, v6, v4}, Lcom/android/server/wm/WindowLayersController;->assignAndIncreaseLayerIfNeeded(Lcom/android/server/wm/WindowState;I)I

    move-result v4

    iget-object v10, p0, Lcom/android/server/wm/WindowLayersController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v10, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    if-ne v6, v10, :cond_d

    iget-object v10, v6, Lcom/android/server/wm/WindowState;->mDecorCaptionWindow:Lcom/android/server/wm/WindowState;

    if-eqz v10, :cond_e

    iget-object v10, p0, Lcom/android/server/wm/WindowLayersController;->mFreeformWindows:Ljava/util/ArrayDeque;

    iget-object v11, v6, Lcom/android/server/wm/WindowState;->mDecorCaptionWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v10, v11}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    iget-object v10, v6, Lcom/android/server/wm/WindowState;->mDecorCaptionWindow:Lcom/android/server/wm/WindowState;

    invoke-direct {p0, v10, v4}, Lcom/android/server/wm/WindowLayersController;->assignAndIncreaseLayerIfNeeded(Lcom/android/server/wm/WindowState;I)I

    move-result v4

    :cond_e
    iget-object v10, p0, Lcom/android/server/wm/WindowLayersController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v10}, Lcom/android/server/wm/WindowManagerService;->isDesktopModeLocked()Z

    move-result v10

    if-nez v10, :cond_d

    :goto_5
    iget-object v10, p0, Lcom/android/server/wm/WindowLayersController;->mInputMethodWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v10}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_d

    iget-object v10, p0, Lcom/android/server/wm/WindowLayersController;->mInputMethodWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v10}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/WindowState;

    invoke-direct {p0, v10, v4}, Lcom/android/server/wm/WindowLayersController;->assignAndIncreaseLayerIfNeeded(Lcom/android/server/wm/WindowState;I)I

    move-result v4

    goto :goto_5

    :cond_f
    :goto_6
    iget-object v10, p0, Lcom/android/server/wm/WindowLayersController;->mFreeformReplacingWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v10}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_10

    iget-object v10, p0, Lcom/android/server/wm/WindowLayersController;->mFreeformReplacingWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v10}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/WindowState;

    invoke-direct {p0, v10, v4}, Lcom/android/server/wm/WindowLayersController;->assignAndIncreaseLayerIfNeeded(Lcom/android/server/wm/WindowState;I)I

    move-result v4

    goto :goto_6

    :cond_10
    sget-boolean v10, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_SUPPORT:Z

    if-eqz v10, :cond_12

    if-eqz v3, :cond_12

    :cond_11
    :goto_7
    iget-object v10, p0, Lcom/android/server/wm/WindowLayersController;->mInputMethodWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v10}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_12

    iget-object v10, p0, Lcom/android/server/wm/WindowLayersController;->mInputMethodWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v10}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowState;

    iget v10, v6, Lcom/android/server/wm/WindowState;->mLayer:I

    if-le v4, v10, :cond_11

    invoke-direct {p0, v6, v4}, Lcom/android/server/wm/WindowLayersController;->assignAndIncreaseLayerIfNeeded(Lcom/android/server/wm/WindowState;I)I

    move-result v4

    goto :goto_7

    :cond_12
    iget-object v10, p0, Lcom/android/server/wm/WindowLayersController;->mDockDivider:Lcom/android/server/wm/WindowState;

    if-eqz v10, :cond_14

    iget-object v10, p0, Lcom/android/server/wm/WindowLayersController;->mDockDivider:Lcom/android/server/wm/WindowState;

    invoke-virtual {v10}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v10

    if-nez v10, :cond_13

    iget-object v10, p0, Lcom/android/server/wm/WindowLayersController;->mDockDivider:Lcom/android/server/wm/WindowState;

    invoke-virtual {v10}, Lcom/android/server/wm/WindowState;->isVisibleOrAdding()Z

    move-result v10

    if-eqz v10, :cond_14

    :cond_13
    :goto_8
    iget-object v10, p0, Lcom/android/server/wm/WindowLayersController;->mDockedPopupWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v10}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_14

    iget-object v10, p0, Lcom/android/server/wm/WindowLayersController;->mDockedPopupWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v10}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowState;

    iget v10, v6, Lcom/android/server/wm/WindowState;->mLayer:I

    if-le v4, v10, :cond_13

    invoke-direct {p0, v6, v4}, Lcom/android/server/wm/WindowLayersController;->assignAndIncreaseLayerIfNeeded(Lcom/android/server/wm/WindowState;I)I

    move-result v4

    goto :goto_8

    :cond_14
    :goto_9
    iget-object v10, p0, Lcom/android/server/wm/WindowLayersController;->mPinnedWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v10}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_15

    iget-object v10, p0, Lcom/android/server/wm/WindowLayersController;->mPinnedWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v10}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/WindowState;

    invoke-direct {p0, v10, v4}, Lcom/android/server/wm/WindowLayersController;->assignAndIncreaseLayerIfNeeded(Lcom/android/server/wm/WindowState;I)I

    move-result v4

    goto :goto_9

    :cond_15
    return-void
.end method

.method private assignAndIncreaseLayerIfNeeded(Lcom/android/server/wm/WindowState;I)I
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/WindowLayersController;->assignAnimLayer(Lcom/android/server/wm/WindowState;I)V

    add-int/lit8 p2, p2, 0x5

    :cond_0
    return p2
.end method

.method private assignAnimLayer(Lcom/android/server/wm/WindowState;I)V
    .locals 3

    iput p2, p1, Lcom/android/server/wm/WindowState;->mLayer:I

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v1, p1, Lcom/android/server/wm/WindowState;->mLayer:I

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAnimLayerAdjustment()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowLayersController;->getSpecialWindowAnimLayerAdjustment(Lcom/android/server/wm/WindowState;)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getStackId()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/server/wm/WindowLayersController;->mDockedStackColorLayer:I

    :cond_0
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget v0, v0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailForceAboveLayer:I

    if-lez v0, :cond_1

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v1, v1, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget v1, v1, Lcom/android/server/wm/AppWindowAnimator;->thumbnailForceAboveLayer:I

    if-le v0, v1, :cond_1

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    iput v1, v0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailForceAboveLayer:I

    :cond_1
    return-void
.end method

.method private clear()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/WindowLayersController;->mHighestApplicationLayer:I

    iget-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mPinnedWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    iget-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mInputMethodWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    iget-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mDockedWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    iget-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mReplacingWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    iget-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mDividerPanelWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    iget-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mFreeformWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    iget-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mFreeformReplacingWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    iget-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mDockedPopupWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mDockDivider:Lcom/android/server/wm/WindowState;

    return-void
.end method

.method private collectSpecialWindows(Lcom/android/server/wm/WindowState;)V
    .locals 4

    const/16 v3, 0x8fe

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x7f2

    if-ne v1, v2, :cond_0

    iput-object p1, p0, Lcom/android/server/wm/WindowLayersController;->mDockDivider:Lcom/android/server/wm/WindowState;

    return-void

    :cond_0
    sget-boolean v1, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_WINDOW_SUPPORT:Z

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x900

    if-ne v1, v2, :cond_1

    iput-object p1, p0, Lcom/android/server/wm/WindowLayersController;->mDividerSnapView:Lcom/android/server/wm/WindowState;

    return-void

    :cond_1
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v1, v3, :cond_2

    iput-object p1, p0, Lcom/android/server/wm/WindowLayersController;->mDividerPanel:Lcom/android/server/wm/WindowState;

    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/WindowLayersController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    invoke-interface {v1, p1}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->moveDockedPopupWindowIfNeededLocked(Lcom/android/server/wm/WindowState;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/wm/WindowLayersController;->mDockedPopupWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-boolean v1, p1, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    if-eqz v1, :cond_4

    sget-boolean v1, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v1, :cond_6

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->inFreeformWorkspace()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/server/wm/WindowLayersController;->mFreeformReplacingWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_0
    iget-boolean v1, p1, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/server/wm/WindowLayersController;->mInputMethodWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    return-void

    :cond_5
    iget-object v1, p0, Lcom/android/server/wm/WindowLayersController;->mReplacingWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lcom/android/server/wm/WindowLayersController;->mReplacingWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_7
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    if-nez v0, :cond_8

    return-void

    :cond_8
    iget v1, v0, Lcom/android/server/wm/TaskStack;->mStackId:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_c

    iget-object v1, p0, Lcom/android/server/wm/WindowLayersController;->mPinnedWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    :cond_9
    :goto_1
    sget-boolean v1, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v1, :cond_a

    iget v1, v0, Lcom/android/server/wm/TaskStack;->mStackId:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_a

    iget-object v1, p0, Lcom/android/server/wm/WindowLayersController;->mFreeformWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    :cond_a
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_b

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v1, v3, :cond_b

    iget-object v1, p0, Lcom/android/server/wm/WindowLayersController;->mDividerPanelWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    :cond_b
    return-void

    :cond_c
    iget v1, v0, Lcom/android/server/wm/TaskStack;->mStackId:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_9

    iget-object v1, p0, Lcom/android/server/wm/WindowLayersController;->mDockedWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private logDebugLayers(Lcom/android/server/wm/WindowList;)V
    .locals 8

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const-string v5, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Assign layer "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ": "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "mBase="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, v2, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " mLayer="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, v2, Lcom/android/server/wm/WindowState;->mLayer:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-nez v4, :cond_0

    const-string v4, ""

    :goto_1
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " =mAnimLayer="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, v3, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " mAppLayer="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v7, v7, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget v7, v7, Lcom/android/server/wm/AppWindowAnimator;->animLayerAdjustment:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method final assignLayersLocked(Lcom/android/server/wm/WindowList;)V
    .locals 12

    sget-boolean v8, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYERS:Z

    if-eqz v8, :cond_0

    const-string v8, "WindowManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Assigning layers based on windows="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/RuntimeException;

    const-string/jumbo v11, "here"

    invoke-direct {v10, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v10

    invoke-static {v8, v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/server/wm/WindowLayersController;->clear()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v7

    :goto_0
    if-ge v3, v7, :cond_7

    invoke-virtual {p1, v3}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowState;

    const/4 v4, 0x0

    iget v5, v6, Lcom/android/server/wm/WindowState;->mLayer:I

    iget v8, v6, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    if-eq v8, v1, :cond_1

    iget-boolean v8, v6, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-nez v8, :cond_1

    if-lez v3, :cond_6

    iget-boolean v8, v6, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-eqz v8, :cond_6

    :cond_1
    add-int/lit8 v2, v2, 0x5

    :goto_1
    invoke-static {}, Lcom/android/server/SamsungCoreServices;->getMultiScreenService()Lcom/android/server/am/IMultiScreenManagerServiceBridge;

    move-result-object v8

    iget-object v9, v6, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v9, v9, Lcom/android/server/wm/Session;->mPid:I

    invoke-interface {v8, v9, v2}, Lcom/android/server/am/IMultiScreenManagerServiceBridge;->assignLayer(II)V

    invoke-static {}, Lcom/android/server/SamsungCoreServices;->getMultiScreenService()Lcom/android/server/am/IMultiScreenManagerServiceBridge;

    move-result-object v8

    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v9

    invoke-interface {v8, v9, v2}, Lcom/android/server/am/IMultiScreenManagerServiceBridge;->getLayer(II)I

    move-result v2

    invoke-direct {p0, v6, v2}, Lcom/android/server/wm/WindowLayersController;->assignAnimLayer(Lcom/android/server/wm/WindowState;I)V

    iget v8, v6, Lcom/android/server/wm/WindowState;->mLayer:I

    if-ne v8, v5, :cond_2

    iget-object v8, v6, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v8, v8, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    if-eq v8, v5, :cond_3

    :cond_2
    const/4 v4, 0x1

    const/4 v0, 0x1

    :cond_3
    iget-object v8, v6, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v8, :cond_4

    iget v8, p0, Lcom/android/server/wm/WindowLayersController;->mHighestApplicationLayer:I

    iget-object v9, v6, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v9, v9, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, p0, Lcom/android/server/wm/WindowLayersController;->mHighestApplicationLayer:I

    :cond_4
    invoke-direct {p0, v6}, Lcom/android/server/wm/WindowLayersController;->collectSpecialWindows(Lcom/android/server/wm/WindowState;)V

    if-eqz v4, :cond_5

    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->scheduleAnimationIfDimming()V

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    iget v2, v6, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    move v1, v2

    goto :goto_1

    :cond_7
    invoke-direct {p0}, Lcom/android/server/wm/WindowLayersController;->adjustSpecialWindows()V

    iget-object v8, p0, Lcom/android/server/wm/WindowLayersController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    if-eqz v8, :cond_8

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {p1, v8}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/WindowState;

    invoke-virtual {v8}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v8

    if-nez v8, :cond_8

    iget-object v8, p0, Lcom/android/server/wm/WindowLayersController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {v8}, Lcom/android/server/wm/AccessibilityController;->onWindowLayersChangedLocked()V

    :cond_8
    sget-boolean v8, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYERS:Z

    if-eqz v8, :cond_9

    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowLayersController;->logDebugLayers(Lcom/android/server/wm/WindowList;)V

    :cond_9
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lcom/android/server/wm/WindowLayersController;->mInputMethodAnimLayerAdjustment:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v0}, Lcom/android/server/wm/WallpaperController;->getAnimLayerAdjustment()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "  mInputMethodAnimLayerAdjustment="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowLayersController;->mInputMethodAnimLayerAdjustment:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, "  mWallpaperAnimLayerAdjustment="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v0}, Lcom/android/server/wm/WallpaperController;->getAnimLayerAdjustment()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    :cond_1
    return-void
.end method

.method getResizeDimLayer()I
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/wm/WindowLayersController;->mDockDivider:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/WindowLayersController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/WindowLayersController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/WindowLayersController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isDisplayedLw()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/WindowLayersController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/WindowLayersController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/WindowLayersController;->mDockDivider:Lcom/android/server/wm/WindowState;

    iget v1, v1, Lcom/android/server/wm/WindowState;->mLayer:I

    iget-object v2, p0, Lcom/android/server/wm/WindowLayersController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowSurfaceController;->getLayer()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/WindowLayersController;->mDockDivider:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/WindowLayersController;->mDockDivider:Lcom/android/server/wm/WindowState;

    iget v1, v1, Lcom/android/server/wm/WindowState;->mLayer:I

    add-int/lit8 v0, v1, -0x1

    goto :goto_0
.end method

.method getSpecialWindowAnimLayerAdjustment(Lcom/android/server/wm/WindowState;)I
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/wm/WindowLayersController;->mInputMethodAnimLayerAdjustment:I

    return v0

    :cond_0
    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v0}, Lcom/android/server/wm/WallpaperController;->getAnimLayerAdjustment()I

    move-result v0

    return v0

    :cond_1
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget v0, v0, Lcom/android/server/wm/AppWindowAnimator;->startingAnimLayerAdjustment:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-ne v0, v1, :cond_2

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/AppWindowAnimator;->updateStartingAnimAdjustment(Lcom/android/server/wm/WindowState;)V

    :cond_2
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget v0, v0, Lcom/android/server/wm/AppWindowAnimator;->startingAnimLayerAdjustment:I

    return v0

    :cond_3
    return v2
.end method

.method setInputMethodAnimLayerAdjustment(I)V
    .locals 7

    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYERS:Z

    if-eqz v4, :cond_0

    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Setting im layer adj to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput p1, p0, Lcom/android/server/wm/WindowLayersController;->mInputMethodAnimLayerAdjustment:I

    iget-object v4, p0, Lcom/android/server/wm/WindowLayersController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v4, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eqz v3, :cond_3

    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v5, v3, Lcom/android/server/wm/WindowState;->mLayer:I

    add-int/2addr v5, p1

    iput v5, v4, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYERS:Z

    if-eqz v4, :cond_1

    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IM win "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " anim layer: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v6, v6, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    :goto_0
    if-ltz v2, :cond_3

    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v5, v0, Lcom/android/server/wm/WindowState;->mLayer:I

    add-int/2addr v5, p1

    iput v5, v4, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYERS:Z

    if-eqz v4, :cond_2

    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IM win "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " anim layer: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v6, v6, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/android/server/wm/WindowLayersController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mInputMethodDialogs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    :goto_1
    if-ltz v2, :cond_5

    iget-object v4, p0, Lcom/android/server/wm/WindowLayersController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mInputMethodDialogs:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    iget-object v4, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v5, v1, Lcom/android/server/wm/WindowState;->mLayer:I

    add-int/2addr v5, p1

    iput v5, v4, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYERS:Z

    if-eqz v4, :cond_4

    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IM win "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " anim layer: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v6, v6, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_5
    return-void
.end method
