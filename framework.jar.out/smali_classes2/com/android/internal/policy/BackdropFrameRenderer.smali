.class public Lcom/android/internal/policy/BackdropFrameRenderer;
.super Ljava/lang/Thread;
.source "BackdropFrameRenderer.java"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field private mCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mChoreographer:Landroid/view/Choreographer;

.field private mDecorView:Lcom/android/internal/policy/DecorView;

.field private mFrameAndBackdropNode:Landroid/view/RenderNode;

.field private mFullscreen:Z

.field private mLastCaptionHeight:I

.field private mLastContentHeight:I

.field private mLastContentWidth:I

.field private mLastXOffset:I

.field private mLastYOffset:I

.field private mNavigationBarColor:Landroid/graphics/drawable/ColorDrawable;

.field private final mNewTargetRect:Landroid/graphics/Rect;

.field private mOldFullscreen:Z

.field private final mOldStableInsets:Landroid/graphics/Rect;

.field private final mOldSystemInsets:Landroid/graphics/Rect;

.field private final mOldTargetRect:Landroid/graphics/Rect;

.field private mRenderer:Landroid/view/ThreadedRenderer;

.field private mReportNextDraw:Z

.field private final mResizeMode:I

.field private mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private final mStableInsets:Landroid/graphics/Rect;

.field private mStatusBarColor:Landroid/graphics/drawable/ColorDrawable;

.field private mSystemBarBackgroundNode:Landroid/view/RenderNode;

.field private final mSystemInsets:Landroid/graphics/Rect;

.field private final mTargetRect:Landroid/graphics/Rect;

.field private mUserCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/DecorView;Landroid/view/ThreadedRenderer;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;IIZLandroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .locals 8
    .param p1, "decorView"    # Lcom/android/internal/policy/DecorView;
    .param p2, "renderer"    # Landroid/view/ThreadedRenderer;
    .param p3, "initialBounds"    # Landroid/graphics/Rect;
    .param p4, "resizingBackgroundDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p5, "captionBackgroundDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p6, "userCaptionBackgroundDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p7, "statusBarColor"    # I
    .param p8, "navigationBarColor"    # I
    .param p9, "fullscreen"    # Z
    .param p10, "systemInsets"    # Landroid/graphics/Rect;
    .param p11, "stableInsets"    # Landroid/graphics/Rect;
    .param p12, "resizeMode"    # I

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 53
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mTargetRect:Landroid/graphics/Rect;

    .line 60
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mOldTargetRect:Landroid/graphics/Rect;

    .line 61
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mNewTargetRect:Landroid/graphics/Rect;

    .line 84
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mOldSystemInsets:Landroid/graphics/Rect;

    .line 85
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mOldStableInsets:Landroid/graphics/Rect;

    .line 86
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mSystemInsets:Landroid/graphics/Rect;

    .line 87
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mStableInsets:Landroid/graphics/Rect;

    .line 93
    const-string/jumbo v1, "ResizeFrame"

    invoke-virtual {p0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 95
    iput-object p2, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mRenderer:Landroid/view/ThreadedRenderer;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move v6, p7

    move/from16 v7, p8

    .line 96
    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/policy/BackdropFrameRenderer;->onResourcesLoaded(Lcom/android/internal/policy/DecorView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V

    .line 101
    const-string/jumbo v1, "FrameAndBackdropNode"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/view/RenderNode;->create(Ljava/lang/String;Landroid/view/View;)Landroid/view/RenderNode;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mFrameAndBackdropNode:Landroid/view/RenderNode;

    .line 103
    iget-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mRenderer:Landroid/view/ThreadedRenderer;

    iget-object v2, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mFrameAndBackdropNode:Landroid/view/RenderNode;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/view/ThreadedRenderer;->addRenderNode(Landroid/view/RenderNode;Z)V

    .line 107
    sget-boolean v1, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    .line 106
    if-eqz v1, :cond_0

    .line 108
    sget-boolean v1, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_FOCUSED_FRAME:Z

    .line 106
    if-eqz v1, :cond_0

    .line 109
    iget-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mDecorView:Lcom/android/internal/policy/DecorView;

    iget v1, v1, Lcom/android/internal/policy/DecorView;->mStackId:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 110
    iget-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mDecorView:Lcom/android/internal/policy/DecorView;

    iget-object v1, v1, Lcom/android/internal/policy/DecorView;->mMultiWindowDecorSupportBridge:Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;

    iget-object v2, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v1, v2}, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;->createResizingFrameRenderNode(Landroid/view/ThreadedRenderer;)V

    .line 116
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mTargetRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 117
    move/from16 v0, p9

    iput-boolean v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mFullscreen:Z

    .line 118
    move/from16 v0, p9

    iput-boolean v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mOldFullscreen:Z

    .line 119
    iget-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mSystemInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p10

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 120
    iget-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mStableInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p11

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 121
    iget-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mOldSystemInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p10

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 122
    iget-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mOldStableInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p11

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 123
    move/from16 v0, p12

    iput v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mResizeMode:I

    .line 126
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    .line 92
    return-void
.end method

.method private addSystemBarNodeIfNeeded()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 173
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mSystemBarBackgroundNode:Landroid/view/RenderNode;

    if-eqz v0, :cond_0

    .line 174
    return-void

    .line 176
    :cond_0
    const-string/jumbo v0, "SystemBarBackgroundNode"

    invoke-static {v0, v1}, Landroid/view/RenderNode;->create(Ljava/lang/String;Landroid/view/View;)Landroid/view/RenderNode;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mSystemBarBackgroundNode:Landroid/view/RenderNode;

    .line 177
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mRenderer:Landroid/view/ThreadedRenderer;

    iget-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mSystemBarBackgroundNode:Landroid/view/RenderNode;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/ThreadedRenderer;->addRenderNode(Landroid/view/RenderNode;Z)V

    .line 172
    return-void
.end method

.method private doFrameUncheckedLocked()V
    .locals 4

    .prologue
    .line 281
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mNewTargetRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mTargetRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 282
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mNewTargetRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mOldTargetRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    iget-boolean v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mOldFullscreen:Z

    iget-boolean v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mFullscreen:Z

    if-eq v0, v1, :cond_2

    .line 287
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mFullscreen:Z

    iput-boolean v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mOldFullscreen:Z

    .line 288
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mOldTargetRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mNewTargetRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 289
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mOldSystemInsets:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mSystemInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 290
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mOldStableInsets:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 291
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mNewTargetRect:Landroid/graphics/Rect;

    iget-boolean v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mFullscreen:Z

    iget-object v2, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mSystemInsets:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mStableInsets:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/internal/policy/BackdropFrameRenderer;->redrawLocked(Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 280
    :cond_1
    return-void

    .line 284
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mStableInsets:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mOldStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mSystemInsets:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mOldSystemInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    iget-boolean v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mReportNextDraw:Z

    .line 282
    if-eqz v0, :cond_1

    goto :goto_0
.end method

.method private drawColorViews(IIIIZLandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 11
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "fullscreen"    # Z
    .param p6, "systemInsets"    # Landroid/graphics/Rect;
    .param p7, "stableInsets"    # Landroid/graphics/Rect;

    .prologue
    .line 431
    iget-object v7, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mSystemBarBackgroundNode:Landroid/view/RenderNode;

    if-nez v7, :cond_0

    .line 432
    return-void

    .line 434
    :cond_0
    iget-object v7, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mSystemBarBackgroundNode:Landroid/view/RenderNode;

    invoke-virtual {v7, p3, p4}, Landroid/view/RenderNode;->start(II)Landroid/view/DisplayListCanvas;

    move-result-object v2

    .line 435
    .local v2, "canvas":Landroid/view/DisplayListCanvas;
    iget-object v7, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mSystemBarBackgroundNode:Landroid/view/RenderNode;

    add-int v8, p1, p3

    add-int v9, p2, p4

    invoke-virtual {v7, p1, p2, v8, v9}, Landroid/view/RenderNode;->setLeftTopRightBottom(IIII)Z

    .line 436
    iget-object v7, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mStableInsets:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget-object v8, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mSystemInsets:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    invoke-static {v7, v8}, Lcom/android/internal/policy/DecorView;->getColorViewTopInset(II)I

    move-result v6

    .line 437
    .local v6, "topInset":I
    move-object/from16 v0, p7

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    .line 438
    move-object/from16 v0, p6

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    .line 437
    invoke-static {v7, v8}, Lcom/android/internal/policy/DecorView;->getColorViewBottomInset(II)I

    move-result v1

    .line 439
    .local v1, "bottomInset":I
    move-object/from16 v0, p7

    iget v7, v0, Landroid/graphics/Rect;->right:I

    .line 440
    move-object/from16 v0, p6

    iget v8, v0, Landroid/graphics/Rect;->right:I

    .line 439
    invoke-static {v7, v8}, Lcom/android/internal/policy/DecorView;->getColorViewRightInset(II)I

    move-result v4

    .line 441
    .local v4, "rightInset":I
    move-object/from16 v0, p7

    iget v7, v0, Landroid/graphics/Rect;->left:I

    .line 442
    move-object/from16 v0, p6

    iget v8, v0, Landroid/graphics/Rect;->left:I

    .line 441
    invoke-static {v7, v8}, Lcom/android/internal/policy/DecorView;->getColorViewLeftInset(II)I

    move-result v3

    .line 443
    .local v3, "leftInset":I
    iget-object v7, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mStatusBarColor:Landroid/graphics/drawable/ColorDrawable;

    if-eqz v7, :cond_1

    .line 444
    iget-object v7, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mStatusBarColor:Landroid/graphics/drawable/ColorDrawable;

    add-int v8, p1, p3

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v9, v10, v8, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 445
    iget-object v7, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mStatusBarColor:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v7, v2}, Landroid/graphics/drawable/ColorDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 451
    :cond_1
    iget-object v7, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mNavigationBarColor:Landroid/graphics/drawable/ColorDrawable;

    if-eqz v7, :cond_2

    if-eqz p5, :cond_2

    .line 452
    invoke-static {v1, v4, v3}, Lcom/android/internal/policy/DecorView;->getNavBarSize(III)I

    move-result v5

    .line 453
    .local v5, "size":I
    invoke-static {v1, v4}, Lcom/android/internal/policy/DecorView;->isNavBarToRightEdge(II)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 454
    iget-object v7, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mNavigationBarColor:Landroid/graphics/drawable/ColorDrawable;

    sub-int v8, p3, v5

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 460
    :goto_0
    iget-object v7, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mNavigationBarColor:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v7, v2}, Landroid/graphics/drawable/ColorDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 462
    .end local v5    # "size":I
    :cond_2
    iget-object v7, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mSystemBarBackgroundNode:Landroid/view/RenderNode;

    invoke-virtual {v7, v2}, Landroid/view/RenderNode;->end(Landroid/view/DisplayListCanvas;)V

    .line 463
    iget-object v7, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mRenderer:Landroid/view/ThreadedRenderer;

    iget-object v8, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mSystemBarBackgroundNode:Landroid/view/RenderNode;

    invoke-virtual {v7, v8}, Landroid/view/ThreadedRenderer;->drawRenderNode(Landroid/view/RenderNode;)V

    .line 430
    return-void

    .line 455
    .restart local v5    # "size":I
    :cond_3
    invoke-static {v1, v3}, Lcom/android/internal/policy/DecorView;->isNavBarToLeftEdge(II)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 456
    iget-object v7, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mNavigationBarColor:Landroid/graphics/drawable/ColorDrawable;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9, v5, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    .line 458
    :cond_4
    iget-object v7, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mNavigationBarColor:Landroid/graphics/drawable/ColorDrawable;

    sub-int v8, p4, v5

    const/4 v9, 0x0

    invoke-virtual {v7, v9, v8, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0
.end method

.method private pingRenderLocked(Z)V
    .locals 1
    .param p1, "drawImmediate"    # Z

    .prologue
    .line 484
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mChoreographer:Landroid/view/Choreographer;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    .line 487
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/BackdropFrameRenderer;->doFrameUncheckedLocked()V

    .line 483
    :goto_0
    return-void

    .line 485
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    goto :goto_0
.end method

.method private redrawLocked(Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 16
    .param p1, "newBounds"    # Landroid/graphics/Rect;
    .param p2, "fullscreen"    # Z
    .param p3, "systemInsets"    # Landroid/graphics/Rect;
    .param p4, "stableInsets"    # Landroid/graphics/Rect;

    .prologue
    .line 350
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/BackdropFrameRenderer;->mDecorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v1}, Lcom/android/internal/policy/DecorView;->getCaptionHeight()I

    move-result v14

    .line 354
    .local v14, "captionHeight":I
    if-eqz v14, :cond_0

    .line 356
    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastCaptionHeight:I

    .line 361
    :cond_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastCaptionHeight:I

    if-nez v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/BackdropFrameRenderer;->mDecorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v1}, Lcom/android/internal/policy/DecorView;->isShowingCaption()Z

    move-result v1

    if-nez v1, :cond_2

    .line 362
    :cond_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastContentWidth:I

    if-nez v1, :cond_3

    .line 365
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/BackdropFrameRenderer;->reportDrawIfNeeded()V

    .line 368
    return-void

    .line 362
    :cond_3
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastContentHeight:I

    if-eqz v1, :cond_2

    .line 373
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastXOffset:I

    move-object/from16 v0, p1

    iget v6, v0, Landroid/graphics/Rect;->left:I

    add-int v2, v1, v6

    .line 374
    .local v2, "left":I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastYOffset:I

    move-object/from16 v0, p1

    iget v6, v0, Landroid/graphics/Rect;->top:I

    add-int v3, v1, v6

    .line 375
    .local v3, "top":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 376
    .local v4, "width":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    .line 378
    .local v5, "height":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/BackdropFrameRenderer;->mFrameAndBackdropNode:Landroid/view/RenderNode;

    add-int v6, v2, v4

    add-int v7, v3, v5

    invoke-virtual {v1, v2, v3, v6, v7}, Landroid/view/RenderNode;->setLeftTopRightBottom(IIII)Z

    .line 381
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/BackdropFrameRenderer;->mFrameAndBackdropNode:Landroid/view/RenderNode;

    invoke-virtual {v1, v4, v5}, Landroid/view/RenderNode;->start(II)Landroid/view/DisplayListCanvas;

    move-result-object v13

    .line 382
    .local v13, "canvas":Landroid/view/DisplayListCanvas;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/BackdropFrameRenderer;->mUserCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_7

    .line 383
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/BackdropFrameRenderer;->mUserCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 385
    .local v15, "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    if-eqz v15, :cond_4

    .line 387
    if-gez v2, :cond_8

    .line 389
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastCaptionHeight:I

    add-int/2addr v1, v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v15, v6, v7, v4, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 394
    :goto_1
    invoke-virtual {v15, v13}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 398
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/BackdropFrameRenderer;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_5

    .line 400
    if-gez v2, :cond_9

    .line 402
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/BackdropFrameRenderer;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastCaptionHeight:I

    add-int v7, v3, v5

    const/4 v8, 0x0

    invoke-virtual {v1, v8, v6, v4, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 407
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/BackdropFrameRenderer;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v13}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 409
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/BackdropFrameRenderer;->mFrameAndBackdropNode:Landroid/view/RenderNode;

    invoke-virtual {v1, v13}, Landroid/view/RenderNode;->end(Landroid/view/DisplayListCanvas;)V

    move-object/from16 v1, p0

    move/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    .line 411
    invoke-direct/range {v1 .. v8}, Lcom/android/internal/policy/BackdropFrameRenderer;->drawColorViews(IIIIZLandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 414
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/BackdropFrameRenderer;->mRenderer:Landroid/view/ThreadedRenderer;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/BackdropFrameRenderer;->mFrameAndBackdropNode:Landroid/view/RenderNode;

    invoke-virtual {v1, v6}, Landroid/view/ThreadedRenderer;->drawRenderNode(Landroid/view/RenderNode;)V

    .line 418
    sget-boolean v1, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    .line 417
    if-eqz v1, :cond_6

    .line 419
    sget-boolean v1, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_FOCUSED_FRAME:Z

    .line 417
    if-eqz v1, :cond_6

    .line 420
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/BackdropFrameRenderer;->mDecorView:Lcom/android/internal/policy/DecorView;

    iget v1, v1, Lcom/android/internal/policy/DecorView;->mStackId:I

    const/4 v6, 0x2

    if-ne v1, v6, :cond_6

    .line 421
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/BackdropFrameRenderer;->mDecorView:Lcom/android/internal/policy/DecorView;

    iget-object v6, v1, Lcom/android/internal/policy/DecorView;->mMultiWindowDecorSupportBridge:Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/policy/BackdropFrameRenderer;->mRenderer:Landroid/view/ThreadedRenderer;

    move v8, v2

    move v9, v3

    move v10, v4

    move v11, v5

    move-object/from16 v12, p1

    invoke-virtual/range {v6 .. v12}, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;->drawResizingFrameRenderNode(Landroid/view/ThreadedRenderer;IIIILandroid/graphics/Rect;)V

    .line 426
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/BackdropFrameRenderer;->reportDrawIfNeeded()V

    .line 345
    return-void

    .line 383
    .end local v15    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/BackdropFrameRenderer;->mCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 392
    .restart local v15    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_8
    add-int v1, v2, v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastCaptionHeight:I

    add-int/2addr v6, v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v15, v7, v8, v1, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_1

    .line 405
    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/BackdropFrameRenderer;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastCaptionHeight:I

    add-int v7, v2, v4

    add-int v8, v3, v5

    const/4 v9, 0x0

    invoke-virtual {v1, v9, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_2
.end method

.method private reportDrawIfNeeded()V
    .locals 1

    .prologue
    .line 468
    iget-boolean v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mReportNextDraw:Z

    if-eqz v0, :cond_1

    .line 469
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mDecorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mDecorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->reportDrawFinish()V

    .line 472
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mReportNextDraw:Z

    .line 467
    :cond_1
    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 1
    .param p1, "frameTimeNanos"    # J

    .prologue
    .line 269
    monitor-enter p0

    .line 270
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mRenderer:Landroid/view/ThreadedRenderer;

    if-nez v0, :cond_0

    .line 271
    invoke-direct {p0}, Lcom/android/internal/policy/BackdropFrameRenderer;->reportDrawIfNeeded()V

    .line 273
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 274
    return-void

    .line 276
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/internal/policy/BackdropFrameRenderer;->doFrameUncheckedLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 268
    return-void

    .line 269
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onConfigurationChange()V
    .locals 5

    .prologue
    .line 206
    monitor-enter p0

    .line 207
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mOldTargetRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 210
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/BackdropFrameRenderer;->pingRenderLocked(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 205
    return-void

    .line 206
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onContentDrawn(IIII)Z
    .locals 9
    .param p1, "xOffset"    # I
    .param p2, "yOffset"    # I
    .param p3, "xSize"    # I
    .param p4, "ySize"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 306
    monitor-enter p0

    .line 307
    :try_start_0
    iget v3, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastContentWidth:I

    if-nez v3, :cond_1

    const/4 v0, 0x1

    .line 309
    .local v0, "firstCall":Z
    :goto_0
    iput p3, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastContentWidth:I

    .line 310
    iget v3, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastCaptionHeight:I

    sub-int v3, p4, v3

    iput v3, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastContentHeight:I

    .line 311
    iput p1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastXOffset:I

    .line 312
    iput p2, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastYOffset:I

    .line 315
    iget-object v3, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mRenderer:Landroid/view/ThreadedRenderer;

    .line 316
    iget v4, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastXOffset:I

    .line 317
    iget v5, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastYOffset:I

    .line 318
    iget v6, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastXOffset:I

    iget v7, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastContentWidth:I

    add-int/2addr v6, v7

    .line 319
    iget v7, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastYOffset:I

    iget v8, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastCaptionHeight:I

    add-int/2addr v7, v8

    iget v8, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastContentHeight:I

    add-int/2addr v7, v8

    .line 315
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/view/ThreadedRenderer;->setContentDrawBounds(IIII)V

    .line 323
    if-eqz v0, :cond_2

    .line 324
    iget v3, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastCaptionHeight:I

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mDecorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v3}, Lcom/android/internal/policy/DecorView;->isShowingCaption()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    :cond_0
    :goto_1
    monitor-exit p0

    .line 323
    return v1

    .line 307
    .end local v0    # "firstCall":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "firstCall":Z
    goto :goto_0

    :cond_2
    move v1, v2

    .line 323
    goto :goto_1

    .line 306
    .end local v0    # "firstCall":Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public onRequestDraw(Z)V
    .locals 5
    .param p1, "reportNextDraw"    # Z

    .prologue
    .line 329
    monitor-enter p0

    .line 330
    :try_start_0
    iput-boolean p1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mReportNextDraw:Z

    .line 331
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mOldTargetRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 332
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/policy/BackdropFrameRenderer;->pingRenderLocked(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 328
    return-void

    .line 329
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method onResourcesLoaded(Lcom/android/internal/policy/DecorView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V
    .locals 4
    .param p1, "decorView"    # Lcom/android/internal/policy/DecorView;
    .param p2, "resizingBackgroundDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "captionBackgroundDrawableDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p4, "userCaptionBackgroundDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p5, "statusBarColor"    # I
    .param p6, "navigationBarColor"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 132
    iput-object p1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mDecorView:Lcom/android/internal/policy/DecorView;

    .line 133
    if-eqz p2, :cond_1

    .line 134
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 133
    :goto_0
    iput-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 136
    if-eqz p3, :cond_2

    .line 137
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 136
    :goto_1
    iput-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 139
    if-eqz p4, :cond_3

    .line 140
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 139
    :goto_2
    iput-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mUserCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 142
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 145
    :cond_0
    if-eqz p5, :cond_4

    .line 146
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mStatusBarColor:Landroid/graphics/drawable/ColorDrawable;

    .line 147
    invoke-direct {p0}, Lcom/android/internal/policy/BackdropFrameRenderer;->addSystemBarNodeIfNeeded()V

    .line 164
    :goto_3
    if-eqz p6, :cond_7

    .line 165
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mNavigationBarColor:Landroid/graphics/drawable/ColorDrawable;

    .line 166
    invoke-direct {p0}, Lcom/android/internal/policy/BackdropFrameRenderer;->addSystemBarNodeIfNeeded()V

    .line 131
    :goto_4
    return-void

    :cond_1
    move-object v0, v1

    .line 135
    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 138
    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 141
    goto :goto_2

    .line 151
    :cond_4
    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    .line 150
    if-eqz v0, :cond_6

    .line 152
    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_FOCUSED_FRAME:Z

    .line 150
    if-eqz v0, :cond_6

    .line 153
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mDecorView:Lcom/android/internal/policy/DecorView;

    iget v0, v0, Lcom/android/internal/policy/DecorView;->mStackId:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_6

    .line 155
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mStatusBarColor:Landroid/graphics/drawable/ColorDrawable;

    if-nez v0, :cond_5

    .line 156
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mStatusBarColor:Landroid/graphics/drawable/ColorDrawable;

    .line 158
    :cond_5
    invoke-direct {p0}, Lcom/android/internal/policy/BackdropFrameRenderer;->addSystemBarNodeIfNeeded()V

    goto :goto_3

    .line 161
    :cond_6
    iput-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mStatusBarColor:Landroid/graphics/drawable/ColorDrawable;

    goto :goto_3

    .line 168
    :cond_7
    iput-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mNavigationBarColor:Landroid/graphics/drawable/ColorDrawable;

    goto :goto_4
.end method

.method public releaseRenderer()V
    .locals 5

    .prologue
    .line 220
    monitor-enter p0

    .line 221
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v0, :cond_1

    .line 223
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mRenderer:Landroid/view/ThreadedRenderer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ThreadedRenderer;->setContentDrawBounds(IIII)V

    .line 227
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mRenderer:Landroid/view/ThreadedRenderer;

    iget-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mFrameAndBackdropNode:Landroid/view/RenderNode;

    invoke-virtual {v0, v1}, Landroid/view/ThreadedRenderer;->removeRenderNode(Landroid/view/RenderNode;)V

    .line 228
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mSystemBarBackgroundNode:Landroid/view/RenderNode;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mRenderer:Landroid/view/ThreadedRenderer;

    iget-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mSystemBarBackgroundNode:Landroid/view/RenderNode;

    invoke-virtual {v0, v1}, Landroid/view/ThreadedRenderer;->removeRenderNode(Landroid/view/RenderNode;)V

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mDecorView:Lcom/android/internal/policy/DecorView;

    iget-object v0, v0, Lcom/android/internal/policy/DecorView;->mMultiWindowDecorSupportBridge:Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;

    iget-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v0, v1}, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;->removeResizingFrameRenderNode(Landroid/view/ThreadedRenderer;)V

    .line 236
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mRenderer:Landroid/view/ThreadedRenderer;

    .line 239
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/BackdropFrameRenderer;->pingRenderLocked(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    .line 219
    return-void

    .line 220
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 1

    .prologue
    .line 247
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 248
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 249
    :try_start_1
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mChoreographer:Landroid/view/Choreographer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p0

    .line 251
    invoke-static {}, Landroid/os/Looper;->loop()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 253
    invoke-virtual {p0}, Lcom/android/internal/policy/BackdropFrameRenderer;->releaseRenderer()V

    .line 255
    monitor-enter p0

    .line 257
    const/4 v0, 0x0

    :try_start_3
    iput-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mChoreographer:Landroid/view/Choreographer;

    .line 258
    invoke-static {}, Landroid/view/Choreographer;->releaseInstance()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    monitor-exit p0

    .line 245
    return-void

    .line 248
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit p0

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 252
    :catchall_1
    move-exception v0

    .line 253
    invoke-virtual {p0}, Lcom/android/internal/policy/BackdropFrameRenderer;->releaseRenderer()V

    .line 252
    throw v0

    .line 255
    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setTargetRect(Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "newTargetBounds"    # Landroid/graphics/Rect;
    .param p2, "fullscreen"    # Z
    .param p3, "systemInsets"    # Landroid/graphics/Rect;
    .param p4, "stableInsets"    # Landroid/graphics/Rect;

    .prologue
    .line 192
    monitor-enter p0

    .line 193
    :try_start_0
    iput-boolean p2, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mFullscreen:Z

    .line 194
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mTargetRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 195
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mSystemInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 196
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 198
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/BackdropFrameRenderer;->pingRenderLocked(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 191
    return-void

    .line 192
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method setUserCaptionBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "userCaptionBackgroundDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 492
    iput-object p1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mUserCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 491
    return-void
.end method
