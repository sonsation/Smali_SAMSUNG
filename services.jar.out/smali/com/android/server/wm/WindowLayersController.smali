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

.field private mMultiWindowFocusedTaskFrame:Lcom/android/server/wm/WindowState;

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
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/WindowLayersController;->mHighestApplicationLayer:I

    .line 85
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mPinnedWindows:Ljava/util/ArrayDeque;

    .line 86
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mDockedWindows:Ljava/util/ArrayDeque;

    .line 87
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mInputMethodWindows:Ljava/util/ArrayDeque;

    .line 89
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mFreeformWindows:Ljava/util/ArrayDeque;

    .line 90
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mFreeformReplacingWindows:Ljava/util/ArrayDeque;

    .line 92
    iput-object v1, p0, Lcom/android/server/wm/WindowLayersController;->mDockDivider:Lcom/android/server/wm/WindowState;

    .line 93
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mReplacingWindows:Ljava/util/ArrayDeque;

    .line 94
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mDividerPanelWindows:Ljava/util/ArrayDeque;

    .line 97
    iput-object v1, p0, Lcom/android/server/wm/WindowLayersController;->mMultiWindowFocusedTaskFrame:Lcom/android/server/wm/WindowState;

    .line 98
    iput-object v1, p0, Lcom/android/server/wm/WindowLayersController;->mDividerPanel:Lcom/android/server/wm/WindowState;

    .line 99
    iput-object v1, p0, Lcom/android/server/wm/WindowLayersController;->mDividerSnapView:Lcom/android/server/wm/WindowState;

    .line 100
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/WindowLayersController;->mDockedStackColorLayer:I

    .line 81
    iput-object p1, p0, Lcom/android/server/wm/WindowLayersController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 80
    return-void
.end method

.method private adjustSpecialWindows()V
    .locals 11

    .prologue
    .line 312
    iget v9, p0, Lcom/android/server/wm/WindowLayersController;->mHighestApplicationLayer:I

    add-int/lit8 v3, v9, 0x5

    .line 315
    .local v3, "layer":I
    const/4 v1, 0x0

    .line 316
    .local v1, "dockedStack":Lcom/android/server/wm/TaskStack;
    const/4 v4, 0x0

    .line 317
    .local v4, "topDockedWindow":Lcom/android/server/wm/WindowState;
    iget-object v9, p0, Lcom/android/server/wm/WindowLayersController;->mDockedWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v9}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 325
    .end local v1    # "dockedStack":Lcom/android/server/wm/TaskStack;
    .end local v4    # "topDockedWindow":Lcom/android/server/wm/WindowState;
    :goto_0
    const/4 v0, 0x0

    .line 326
    .local v0, "adjustDockedWindowsLayer":Z
    :goto_1
    iget-object v9, p0, Lcom/android/server/wm/WindowLayersController;->mDockedWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v9}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_1

    .line 327
    iget-object v9, p0, Lcom/android/server/wm/WindowLayersController;->mDockedWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v9}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/WindowState;

    invoke-direct {p0, v9, v3}, Lcom/android/server/wm/WindowLayersController;->assignAndIncreaseLayerIfNeeded(Lcom/android/server/wm/WindowState;I)I

    move-result v3

    .line 328
    const/4 v0, 0x1

    goto :goto_1

    .line 318
    .end local v0    # "adjustDockedWindowsLayer":Z
    .restart local v1    # "dockedStack":Lcom/android/server/wm/TaskStack;
    .restart local v4    # "topDockedWindow":Lcom/android/server/wm/WindowState;
    :cond_0
    iget-object v9, p0, Lcom/android/server/wm/WindowLayersController;->mDockedWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v9}, Ljava/util/ArrayDeque;->getLast()Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "topDockedWindow":Lcom/android/server/wm/WindowState;
    check-cast v4, Lcom/android/server/wm/WindowState;

    .line 319
    .local v4, "topDockedWindow":Lcom/android/server/wm/WindowState;
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v1

    .local v1, "dockedStack":Lcom/android/server/wm/TaskStack;
    goto :goto_0

    .line 331
    .end local v1    # "dockedStack":Lcom/android/server/wm/TaskStack;
    .end local v4    # "topDockedWindow":Lcom/android/server/wm/WindowState;
    .restart local v0    # "adjustDockedWindowsLayer":Z
    :cond_1
    iget-object v9, p0, Lcom/android/server/wm/WindowLayersController;->mDockDivider:Lcom/android/server/wm/WindowState;

    add-int/lit8 v10, v3, 0x5

    invoke-direct {p0, v9, v10}, Lcom/android/server/wm/WindowLayersController;->assignAndIncreaseLayerIfNeeded(Lcom/android/server/wm/WindowState;I)I

    move-result v3

    .line 335
    const/4 v2, 0x0

    .line 337
    .local v2, "isFreeformVisible":Z
    if-eqz v1, :cond_2

    if-eqz v4, :cond_2

    .line 338
    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->getColorLayerSurface()Lcom/android/server/wm/IMultiWindowStackColorLayer;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 339
    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->getColorLayerSurface()Lcom/android/server/wm/IMultiWindowStackColorLayer;

    move-result-object v9

    iget v10, p0, Lcom/android/server/wm/WindowLayersController;->mDockedStackColorLayer:I

    invoke-interface {v9, v10}, Lcom/android/server/wm/IMultiWindowStackColorLayer;->setLayer(I)V

    .line 341
    :cond_2
    iget-object v9, p0, Lcom/android/server/wm/WindowLayersController;->mMultiWindowFocusedTaskFrame:Lcom/android/server/wm/WindowState;

    invoke-direct {p0, v9, v3}, Lcom/android/server/wm/WindowLayersController;->assignAndIncreaseLayerIfNeeded(Lcom/android/server/wm/WindowState;I)I

    move-result v3

    .line 342
    sget-boolean v9, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_VIEW_SUPPORT:Z

    if-eqz v9, :cond_3

    .line 343
    iget-object v9, p0, Lcom/android/server/wm/WindowLayersController;->mDividerSnapView:Lcom/android/server/wm/WindowState;

    invoke-direct {p0, v9, v3}, Lcom/android/server/wm/WindowLayersController;->assignAndIncreaseLayerIfNeeded(Lcom/android/server/wm/WindowState;I)I

    move-result v3

    .line 345
    :cond_3
    iget-object v9, p0, Lcom/android/server/wm/WindowLayersController;->mDividerPanel:Lcom/android/server/wm/WindowState;

    invoke-direct {p0, v9, v3}, Lcom/android/server/wm/WindowLayersController;->assignAndIncreaseLayerIfNeeded(Lcom/android/server/wm/WindowState;I)I

    move-result v3

    .line 346
    iget-object v9, p0, Lcom/android/server/wm/WindowLayersController;->mDividerPanelWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v9}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_4

    .line 347
    iget-object v9, p0, Lcom/android/server/wm/WindowLayersController;->mDividerPanelWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v9}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/WindowState;

    invoke-direct {p0, v9, v3}, Lcom/android/server/wm/WindowLayersController;->assignAndIncreaseLayerIfNeeded(Lcom/android/server/wm/WindowState;I)I

    move-result v3

    .line 349
    :cond_4
    sget-boolean v9, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_SUPPORT:Z

    if-eqz v9, :cond_5

    .line 350
    iget-object v9, p0, Lcom/android/server/wm/WindowLayersController;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Lcom/android/server/wm/WindowManagerService;->isStackVisibleLocked(I)Z

    move-result v9

    if-nez v9, :cond_7

    iget-object v9, p0, Lcom/android/server/wm/WindowLayersController;->mFreeformWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v9}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_7

    iget-object v9, p0, Lcom/android/server/wm/WindowLayersController;->mFreeformReplacingWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v9}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 363
    :cond_5
    :goto_2
    if-nez v2, :cond_9

    .line 365
    iget-object v9, p0, Lcom/android/server/wm/WindowLayersController;->mDockDivider:Lcom/android/server/wm/WindowState;

    if-eqz v9, :cond_9

    iget-object v9, p0, Lcom/android/server/wm/WindowLayersController;->mDockDivider:Lcom/android/server/wm/WindowState;

    invoke-virtual {v9}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v9

    if-nez v9, :cond_6

    .line 367
    iget-object v9, p0, Lcom/android/server/wm/WindowLayersController;->mDockDivider:Lcom/android/server/wm/WindowState;

    invoke-virtual {v9}, Lcom/android/server/wm/WindowState;->isVisibleOrAdding()Z

    move-result v9

    if-nez v9, :cond_6

    .line 365
    if-eqz v0, :cond_9

    .line 368
    :cond_6
    :goto_3
    iget-object v9, p0, Lcom/android/server/wm/WindowLayersController;->mInputMethodWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v9}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_9

    .line 369
    iget-object v9, p0, Lcom/android/server/wm/WindowLayersController;->mInputMethodWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v9}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowState;

    .line 371
    .local v5, "w":Lcom/android/server/wm/WindowState;
    iget v9, v5, Lcom/android/server/wm/WindowState;->mLayer:I

    if-le v3, v9, :cond_6

    .line 372
    invoke-direct {p0, v5, v3}, Lcom/android/server/wm/WindowLayersController;->assignAndIncreaseLayerIfNeeded(Lcom/android/server/wm/WindowState;I)I

    move-result v3

    goto :goto_3

    .line 351
    .end local v5    # "w":Lcom/android/server/wm/WindowState;
    :cond_7
    new-instance v6, Ljava/util/ArrayDeque;

    invoke-direct {v6}, Ljava/util/ArrayDeque;-><init>()V

    .line 352
    .local v6, "windows":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Lcom/android/server/wm/WindowState;>;"
    iget-object v9, p0, Lcom/android/server/wm/WindowLayersController;->mFreeformWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v6, v9}, Ljava/util/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    .line 353
    iget-object v9, p0, Lcom/android/server/wm/WindowLayersController;->mFreeformReplacingWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v6, v9}, Ljava/util/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    .line 354
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "ws$iterator":Ljava/util/Iterator;
    :cond_8
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/WindowState;

    .line 355
    .local v7, "ws":Lcom/android/server/wm/WindowState;
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v9

    if-eqz v9, :cond_8

    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v9

    iget v9, v9, Lcom/android/server/wm/Task;->mHiddenState:I

    if-nez v9, :cond_8

    .line 356
    const/4 v2, 0x1

    .line 357
    goto :goto_2

    .line 381
    .end local v6    # "windows":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Lcom/android/server/wm/WindowState;>;"
    .end local v7    # "ws":Lcom/android/server/wm/WindowState;
    .end local v8    # "ws$iterator":Ljava/util/Iterator;
    :cond_9
    :goto_4
    iget-object v9, p0, Lcom/android/server/wm/WindowLayersController;->mReplacingWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v9}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_a

    .line 382
    iget-object v9, p0, Lcom/android/server/wm/WindowLayersController;->mReplacingWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v9}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/WindowState;

    invoke-direct {p0, v9, v3}, Lcom/android/server/wm/WindowLayersController;->assignAndIncreaseLayerIfNeeded(Lcom/android/server/wm/WindowState;I)I

    move-result v3

    goto :goto_4

    .line 386
    :cond_a
    sget-boolean v9, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v9, :cond_e

    .line 387
    :goto_5
    iget-object v9, p0, Lcom/android/server/wm/WindowLayersController;->mFreeformWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v9}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_b

    .line 388
    iget-object v9, p0, Lcom/android/server/wm/WindowLayersController;->mFreeformWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v9}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/WindowState;

    invoke-direct {p0, v9, v3}, Lcom/android/server/wm/WindowLayersController;->assignAndIncreaseLayerIfNeeded(Lcom/android/server/wm/WindowState;I)I

    move-result v3

    goto :goto_5

    .line 390
    :cond_b
    :goto_6
    iget-object v9, p0, Lcom/android/server/wm/WindowLayersController;->mFreeformReplacingWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v9}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_c

    .line 391
    iget-object v9, p0, Lcom/android/server/wm/WindowLayersController;->mFreeformReplacingWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v9}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/WindowState;

    invoke-direct {p0, v9, v3}, Lcom/android/server/wm/WindowLayersController;->assignAndIncreaseLayerIfNeeded(Lcom/android/server/wm/WindowState;I)I

    move-result v3

    goto :goto_6

    .line 393
    :cond_c
    sget-boolean v9, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_SUPPORT:Z

    if-eqz v9, :cond_e

    if-eqz v2, :cond_e

    .line 394
    :cond_d
    :goto_7
    iget-object v9, p0, Lcom/android/server/wm/WindowLayersController;->mInputMethodWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v9}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_e

    .line 395
    iget-object v9, p0, Lcom/android/server/wm/WindowLayersController;->mInputMethodWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v9}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowState;

    .line 397
    .restart local v5    # "w":Lcom/android/server/wm/WindowState;
    iget v9, v5, Lcom/android/server/wm/WindowState;->mLayer:I

    if-le v3, v9, :cond_d

    .line 398
    invoke-direct {p0, v5, v3}, Lcom/android/server/wm/WindowLayersController;->assignAndIncreaseLayerIfNeeded(Lcom/android/server/wm/WindowState;I)I

    move-result v3

    goto :goto_7

    .line 405
    .end local v5    # "w":Lcom/android/server/wm/WindowState;
    :cond_e
    :goto_8
    iget-object v9, p0, Lcom/android/server/wm/WindowLayersController;->mPinnedWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v9}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_f

    .line 406
    iget-object v9, p0, Lcom/android/server/wm/WindowLayersController;->mPinnedWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v9}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/WindowState;

    invoke-direct {p0, v9, v3}, Lcom/android/server/wm/WindowLayersController;->assignAndIncreaseLayerIfNeeded(Lcom/android/server/wm/WindowState;I)I

    move-result v3

    goto :goto_8

    .line 311
    :cond_f
    return-void
.end method

.method private assignAndIncreaseLayerIfNeeded(Lcom/android/server/wm/WindowState;I)I
    .locals 0
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "layer"    # I

    .prologue
    .line 411
    if-eqz p1, :cond_0

    .line 412
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/WindowLayersController;->assignAnimLayer(Lcom/android/server/wm/WindowState;I)V

    .line 414
    add-int/lit8 p2, p2, 0x5

    .line 416
    :cond_0
    return p2
.end method

.method private assignAnimLayer(Lcom/android/server/wm/WindowState;I)V
    .locals 3
    .param p1, "w"    # Lcom/android/server/wm/WindowState;
    .param p2, "layer"    # I

    .prologue
    .line 420
    iput p2, p1, Lcom/android/server/wm/WindowState;->mLayer:I

    .line 421
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v1, p1, Lcom/android/server/wm/WindowState;->mLayer:I

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAnimLayerAdjustment()I

    move-result v2

    add-int/2addr v1, v2

    .line 422
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowLayersController;->getSpecialWindowAnimLayerAdjustment(Lcom/android/server/wm/WindowState;)I

    move-result v2

    .line 421
    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    .line 424
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getStackId()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 425
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/server/wm/WindowLayersController;->mDockedStackColorLayer:I

    .line 428
    :cond_0
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget v0, v0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailForceAboveLayer:I

    if-lez v0, :cond_1

    .line 429
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v1, v1, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget v1, v1, Lcom/android/server/wm/AppWindowAnimator;->thumbnailForceAboveLayer:I

    if-le v0, v1, :cond_1

    .line 430
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    iput v1, v0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailForceAboveLayer:I

    .line 419
    :cond_1
    return-void
.end method

.method private clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 237
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/WindowLayersController;->mHighestApplicationLayer:I

    .line 238
    iget-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mPinnedWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 239
    iget-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mInputMethodWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 240
    iget-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mDockedWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 241
    iget-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mReplacingWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 244
    iget-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mDividerPanelWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 245
    iget-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mFreeformWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 246
    iget-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mFreeformReplacingWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 247
    iput-object v1, p0, Lcom/android/server/wm/WindowLayersController;->mMultiWindowFocusedTaskFrame:Lcom/android/server/wm/WindowState;

    .line 250
    iput-object v1, p0, Lcom/android/server/wm/WindowLayersController;->mDockDivider:Lcom/android/server/wm/WindowState;

    .line 236
    return-void
.end method

.method private collectSpecialWindows(Lcom/android/server/wm/WindowState;)V
    .locals 4
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .prologue
    const/16 v3, 0x8fe

    .line 254
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x7f2

    if-ne v1, v2, :cond_0

    .line 255
    iput-object p1, p0, Lcom/android/server/wm/WindowLayersController;->mDockDivider:Lcom/android/server/wm/WindowState;

    .line 256
    return-void

    .line 259
    :cond_0
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x8fc

    if-ne v1, v2, :cond_1

    .line 260
    iput-object p1, p0, Lcom/android/server/wm/WindowLayersController;->mMultiWindowFocusedTaskFrame:Lcom/android/server/wm/WindowState;

    .line 261
    return-void

    .line 263
    :cond_1
    sget-boolean v1, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_VIEW_SUPPORT:Z

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x900

    if-ne v1, v2, :cond_2

    .line 264
    iput-object p1, p0, Lcom/android/server/wm/WindowLayersController;->mDividerSnapView:Lcom/android/server/wm/WindowState;

    .line 265
    return-void

    .line 267
    :cond_2
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v1, v3, :cond_3

    .line 268
    iput-object p1, p0, Lcom/android/server/wm/WindowLayersController;->mDividerPanel:Lcom/android/server/wm/WindowState;

    .line 269
    return-void

    .line 272
    :cond_3
    iget-boolean v1, p1, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    if-eqz v1, :cond_4

    .line 274
    sget-boolean v1, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v1, :cond_6

    .line 275
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->inFreeformWorkspace()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 276
    iget-object v1, p0, Lcom/android/server/wm/WindowLayersController;->mFreeformReplacingWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 285
    :cond_4
    :goto_0
    iget-boolean v1, p1, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-eqz v1, :cond_7

    .line 286
    iget-object v1, p0, Lcom/android/server/wm/WindowLayersController;->mInputMethodWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 287
    return-void

    .line 278
    :cond_5
    iget-object v1, p0, Lcom/android/server/wm/WindowLayersController;->mReplacingWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 282
    :cond_6
    iget-object v1, p0, Lcom/android/server/wm/WindowLayersController;->mReplacingWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 289
    :cond_7
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    .line 290
    .local v0, "stack":Lcom/android/server/wm/TaskStack;
    if-nez v0, :cond_8

    .line 291
    return-void

    .line 293
    :cond_8
    iget v1, v0, Lcom/android/server/wm/TaskStack;->mStackId:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_c

    .line 294
    iget-object v1, p0, Lcom/android/server/wm/WindowLayersController;->mPinnedWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 300
    :cond_9
    :goto_1
    sget-boolean v1, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v1, :cond_a

    .line 301
    iget v1, v0, Lcom/android/server/wm/TaskStack;->mStackId:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_a

    .line 302
    iget-object v1, p0, Lcom/android/server/wm/WindowLayersController;->mFreeformWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 305
    :cond_a
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_b

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v1, v3, :cond_b

    .line 306
    iget-object v1, p0, Lcom/android/server/wm/WindowLayersController;->mDividerPanelWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 253
    :cond_b
    return-void

    .line 295
    :cond_c
    iget v1, v0, Lcom/android/server/wm/TaskStack;->mStackId:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_9

    .line 296
    iget-object v1, p0, Lcom/android/server/wm/WindowLayersController;->mDockedWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private logDebugLayers(Lcom/android/server/wm/WindowList;)V
    .locals 8
    .param p1, "windows"    # Lcom/android/server/wm/WindowList;

    .prologue
    .line 226
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 227
    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 228
    .local v2, "w":Lcom/android/server/wm/WindowState;
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 229
    .local v3, "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    const-string/jumbo v5, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Assign layer "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ": "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "mBase="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, v2, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 230
    const-string/jumbo v6, " mLayer="

    .line 229
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 230
    iget v6, v2, Lcom/android/server/wm/WindowState;->mLayer:I

    .line 229
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 230
    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-nez v4, :cond_0

    .line 231
    const-string/jumbo v4, ""

    .line 229
    :goto_1
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 232
    const-string/jumbo v6, " =mAnimLayer="

    .line 229
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 232
    iget v6, v3, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    .line 229
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 231
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, " mAppLayer="

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

    .line 225
    .end local v2    # "w":Lcom/android/server/wm/WindowState;
    .end local v3    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    :cond_1
    return-void
.end method


# virtual methods
.method final assignLayersLocked(Lcom/android/server/wm/WindowList;)V
    .locals 12
    .param p1, "windows"    # Lcom/android/server/wm/WindowList;

    .prologue
    .line 104
    sget-boolean v8, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYERS:Z

    if-eqz v8, :cond_0

    const-string/jumbo v8, "WindowManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Assigning layers based on windows="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 105
    new-instance v10, Ljava/lang/RuntimeException;

    const-string/jumbo v11, "here"

    invoke-direct {v10, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v10

    .line 104
    invoke-static {v8, v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 107
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wm/WindowLayersController;->clear()V

    .line 108
    const/4 v1, 0x0

    .line 109
    .local v1, "curBaseLayer":I
    const/4 v2, 0x0

    .line 110
    .local v2, "curLayer":I
    const/4 v0, 0x0

    .line 111
    .local v0, "anyLayerChanged":Z
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-virtual {p1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v7

    .local v7, "windowCount":I
    :goto_0
    if-ge v3, v7, :cond_7

    .line 112
    invoke-virtual {p1, v3}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowState;

    .line 113
    .local v6, "w":Lcom/android/server/wm/WindowState;
    const/4 v4, 0x0

    .line 115
    .local v4, "layerChanged":Z
    iget v5, v6, Lcom/android/server/wm/WindowState;->mLayer:I

    .line 116
    .local v5, "oldLayer":I
    iget v8, v6, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    if-eq v8, v1, :cond_1

    iget-boolean v8, v6, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-nez v8, :cond_1

    if-lez v3, :cond_6

    iget-boolean v8, v6, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-eqz v8, :cond_6

    .line 117
    :cond_1
    add-int/lit8 v2, v2, 0x5

    .line 123
    :goto_1
    invoke-static {}, Lcom/android/server/SamsungCoreServices;->getMultiScreenService()Lcom/android/server/am/IMultiScreenManagerServiceBridge;

    move-result-object v8

    iget-object v9, v6, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v9, v9, Lcom/android/server/wm/Session;->mPid:I

    invoke-interface {v8, v9, v2}, Lcom/android/server/am/IMultiScreenManagerServiceBridge;->assignLayer(II)V

    .line 124
    invoke-static {}, Lcom/android/server/SamsungCoreServices;->getMultiScreenService()Lcom/android/server/am/IMultiScreenManagerServiceBridge;

    move-result-object v8

    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v9

    invoke-interface {v8, v9, v2}, Lcom/android/server/am/IMultiScreenManagerServiceBridge;->getLayer(II)I

    move-result v2

    .line 127
    invoke-direct {p0, v6, v2}, Lcom/android/server/wm/WindowLayersController;->assignAnimLayer(Lcom/android/server/wm/WindowState;I)V

    .line 132
    iget v8, v6, Lcom/android/server/wm/WindowState;->mLayer:I

    if-ne v8, v5, :cond_2

    iget-object v8, v6, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v8, v8, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    if-eq v8, v5, :cond_3

    .line 133
    :cond_2
    const/4 v4, 0x1

    .line 134
    const/4 v0, 0x1

    .line 137
    :cond_3
    iget-object v8, v6, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v8, :cond_4

    .line 138
    iget v8, p0, Lcom/android/server/wm/WindowLayersController;->mHighestApplicationLayer:I

    .line 139
    iget-object v9, v6, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v9, v9, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    .line 138
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, p0, Lcom/android/server/wm/WindowLayersController;->mHighestApplicationLayer:I

    .line 141
    :cond_4
    invoke-direct {p0, v6}, Lcom/android/server/wm/WindowLayersController;->collectSpecialWindows(Lcom/android/server/wm/WindowState;)V

    .line 143
    if-eqz v4, :cond_5

    .line 144
    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->scheduleAnimationIfDimming()V

    .line 111
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 119
    :cond_6
    iget v2, v6, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    move v1, v2

    goto :goto_1

    .line 148
    .end local v4    # "layerChanged":Z
    .end local v5    # "oldLayer":I
    .end local v6    # "w":Lcom/android/server/wm/WindowState;
    :cond_7
    invoke-direct {p0}, Lcom/android/server/wm/WindowLayersController;->adjustSpecialWindows()V

    .line 151
    iget-object v8, p0, Lcom/android/server/wm/WindowLayersController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    if-eqz v8, :cond_8

    if-eqz v0, :cond_8

    .line 152
    invoke-virtual {p1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {p1, v8}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/WindowState;

    invoke-virtual {v8}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v8

    if-nez v8, :cond_8

    .line 153
    iget-object v8, p0, Lcom/android/server/wm/WindowLayersController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {v8}, Lcom/android/server/wm/AccessibilityController;->onWindowLayersChangedLocked()V

    .line 156
    :cond_8
    sget-boolean v8, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYERS:Z

    if-eqz v8, :cond_9

    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowLayersController;->logDebugLayers(Lcom/android/server/wm/WindowList;)V

    .line 103
    :cond_9
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "s"    # Ljava/lang/String;

    .prologue
    .line 435
    iget v0, p0, Lcom/android/server/wm/WindowLayersController;->mInputMethodAnimLayerAdjustment:I

    if-nez v0, :cond_0

    .line 436
    iget-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v0}, Lcom/android/server/wm/WallpaperController;->getAnimLayerAdjustment()I

    move-result v0

    if-eqz v0, :cond_1

    .line 437
    :cond_0
    const-string/jumbo v0, "  mInputMethodAnimLayerAdjustment="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 438
    iget v0, p0, Lcom/android/server/wm/WindowLayersController;->mInputMethodAnimLayerAdjustment:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 439
    const-string/jumbo v0, "  mWallpaperAnimLayerAdjustment="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 440
    iget-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v0}, Lcom/android/server/wm/WallpaperController;->getAnimLayerAdjustment()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 434
    :cond_1
    return-void
.end method

.method getResizeDimLayer()I
    .locals 3

    .prologue
    .line 207
    const/4 v0, 0x1

    .line 208
    .local v0, "DimLayer":I
    iget-object v1, p0, Lcom/android/server/wm/WindowLayersController;->mDockDivider:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/WindowLayersController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_1

    .line 209
    iget-object v1, p0, Lcom/android/server/wm/WindowLayersController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v1

    .line 208
    if-eqz v1, :cond_1

    .line 210
    iget-object v1, p0, Lcom/android/server/wm/WindowLayersController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isDisplayedLw()Z

    move-result v1

    .line 208
    if-eqz v1, :cond_1

    .line 211
    iget-object v1, p0, Lcom/android/server/wm/WindowLayersController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v1, :cond_1

    .line 212
    iget-object v1, p0, Lcom/android/server/wm/WindowLayersController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v1, :cond_1

    .line 213
    iget-object v1, p0, Lcom/android/server/wm/WindowLayersController;->mDockDivider:Lcom/android/server/wm/WindowState;

    iget v1, v1, Lcom/android/server/wm/WindowState;->mLayer:I

    .line 214
    iget-object v2, p0, Lcom/android/server/wm/WindowLayersController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowSurfaceController;->getLayer()I

    move-result v2

    .line 213
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 218
    :cond_0
    :goto_0
    return v0

    .line 215
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/WindowLayersController;->mDockDivider:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_0

    .line 216
    iget-object v1, p0, Lcom/android/server/wm/WindowLayersController;->mDockDivider:Lcom/android/server/wm/WindowState;

    iget v1, v1, Lcom/android/server/wm/WindowState;->mLayer:I

    add-int/lit8 v0, v1, -0x1

    goto :goto_0
.end method

.method getSpecialWindowAnimLayerAdjustment(Lcom/android/server/wm/WindowState;)I
    .locals 3
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .prologue
    const/4 v2, 0x0

    .line 183
    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-eqz v0, :cond_0

    .line 184
    iget v0, p0, Lcom/android/server/wm/WindowLayersController;->mInputMethodAnimLayerAdjustment:I

    return v0

    .line 185
    :cond_0
    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-eqz v0, :cond_1

    .line 186
    iget-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v0}, Lcom/android/server/wm/WallpaperController;->getAnimLayerAdjustment()I

    move-result v0

    return v0

    .line 188
    :cond_1
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 189
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget v0, v0, Lcom/android/server/wm/AppWindowAnimator;->startingAnimLayerAdjustment:I

    if-eqz v0, :cond_2

    .line 190
    iget-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-ne v0, v1, :cond_2

    .line 191
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/AppWindowAnimator;->updateStartingAnimAdjustment(Lcom/android/server/wm/WindowState;)V

    .line 193
    :cond_2
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget v0, v0, Lcom/android/server/wm/AppWindowAnimator;->startingAnimLayerAdjustment:I

    return v0

    .line 196
    :cond_3
    return v2
.end method

.method setInputMethodAnimLayerAdjustment(I)V
    .locals 7
    .param p1, "adj"    # I

    .prologue
    .line 160
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYERS:Z

    if-eqz v4, :cond_0

    const-string/jumbo v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Setting im layer adj to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_0
    iput p1, p0, Lcom/android/server/wm/WindowLayersController;->mInputMethodAnimLayerAdjustment:I

    .line 162
    iget-object v4, p0, Lcom/android/server/wm/WindowLayersController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v4, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    .line 163
    .local v3, "imw":Lcom/android/server/wm/WindowState;
    if-eqz v3, :cond_3

    .line 164
    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v5, v3, Lcom/android/server/wm/WindowState;->mLayer:I

    add-int/2addr v5, p1

    iput v5, v4, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    .line 165
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYERS:Z

    if-eqz v4, :cond_1

    const-string/jumbo v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "IM win "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 166
    const-string/jumbo v6, " anim layer: "

    .line 165
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 166
    iget-object v6, v3, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v6, v6, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    .line 165
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_1
    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_3

    .line 168
    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    .line 169
    .local v0, "childWindow":Lcom/android/server/wm/WindowState;
    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v5, v0, Lcom/android/server/wm/WindowState;->mLayer:I

    add-int/2addr v5, p1

    iput v5, v4, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    .line 170
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYERS:Z

    if-eqz v4, :cond_2

    const-string/jumbo v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "IM win "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 171
    const-string/jumbo v6, " anim layer: "

    .line 170
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 171
    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v6, v6, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    .line 170
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 174
    .end local v0    # "childWindow":Lcom/android/server/wm/WindowState;
    .end local v2    # "i":I
    :cond_3
    iget-object v4, p0, Lcom/android/server/wm/WindowLayersController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mInputMethodDialogs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .restart local v2    # "i":I
    :goto_1
    if-ltz v2, :cond_5

    .line 175
    iget-object v4, p0, Lcom/android/server/wm/WindowLayersController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mInputMethodDialogs:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 176
    .local v1, "dialog":Lcom/android/server/wm/WindowState;
    iget-object v4, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v5, v1, Lcom/android/server/wm/WindowState;->mLayer:I

    add-int/2addr v5, p1

    iput v5, v4, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    .line 177
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYERS:Z

    if-eqz v4, :cond_4

    const-string/jumbo v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "IM win "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 178
    const-string/jumbo v6, " anim layer: "

    .line 177
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 178
    iget-object v6, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v6, v6, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    .line 177
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 159
    .end local v1    # "dialog":Lcom/android/server/wm/WindowState;
    :cond_5
    return-void
.end method
