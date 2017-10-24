.class public Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;
.super Ljava/lang/Object;
.source "StackScrollAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;
    }
.end annotation


# instance fields
.field private mBottomStackIndentationFunctor:Lcom/android/systemui/statusbar/stack/StackIndentationFunctor;

.field private mBottomStackPeekSize:I

.field private mBottomStackSlowDownLength:I

.field private mCollapsedSize:I

.field private mIncreasedPaddingBetweenElements:I

.field private mIsExpanded:Z

.field private mPaddingBetweenElements:I

.field private mTempAlgorithmState:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;

.field private mZBasicHeight:I

.field private mZDistanceBetweenElements:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;-><init>(Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mTempAlgorithmState:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;

    .line 61
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->initView(Landroid/content/Context;)V

    .line 60
    return-void
.end method

.method public static canChildBeDismissed(Landroid/view/View;)Z
    .locals 5
    .param p0, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 184
    instance-of v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v3, :cond_0

    move-object v0, p0

    .line 185
    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 186
    .local v0, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->areGutsExposed()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 187
    return v2

    .line 190
    .end local v0    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_0
    const v3, 0x7f130411

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 191
    .local v1, "veto":Landroid/view/View;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method private clampHunToMaxTranslation(Lcom/android/systemui/statusbar/stack/AmbientState;Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/statusbar/stack/StackViewState;)V
    .locals 4
    .param p1, "ambientState"    # Lcom/android/systemui/statusbar/stack/AmbientState;
    .param p2, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .param p3, "childState"    # Lcom/android/systemui/statusbar/stack/StackViewState;

    .prologue
    .line 468
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->getMaxHeadsUpTranslation()F

    move-result v2

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getCollapsedHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float v0, v2, v3

    .line 469
    .local v0, "bottomPosition":F
    iget v2, p3, Lcom/android/systemui/statusbar/stack/StackViewState;->yTranslation:F

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 470
    .local v1, "newTranslation":F
    iget v2, p3, Lcom/android/systemui/statusbar/stack/StackViewState;->height:I

    int-to-float v2, v2

    .line 471
    iget v3, p3, Lcom/android/systemui/statusbar/stack/StackViewState;->yTranslation:F

    sub-float/2addr v3, v1

    .line 470
    sub-float/2addr v2, v3

    .line 471
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getCollapsedHeight()I

    move-result v3

    int-to-float v3, v3

    .line 470
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    float-to-int v2, v2

    iput v2, p3, Lcom/android/systemui/statusbar/stack/StackViewState;->height:I

    .line 472
    iput v1, p3, Lcom/android/systemui/statusbar/stack/StackViewState;->yTranslation:F

    .line 466
    return-void
.end method

.method private clampHunToTop(Lcom/android/systemui/statusbar/stack/AmbientState;Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/statusbar/stack/StackViewState;)V
    .locals 3
    .param p1, "ambientState"    # Lcom/android/systemui/statusbar/stack/AmbientState;
    .param p2, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .param p3, "childState"    # Lcom/android/systemui/statusbar/stack/StackViewState;

    .prologue
    .line 458
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->getTopPadding()F

    move-result v1

    .line 459
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->getStackTranslation()F

    move-result v2

    .line 458
    add-float/2addr v1, v2

    .line 459
    iget v2, p3, Lcom/android/systemui/statusbar/stack/StackViewState;->yTranslation:F

    .line 458
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 460
    .local v0, "newTranslation":F
    iget v1, p3, Lcom/android/systemui/statusbar/stack/StackViewState;->height:I

    int-to-float v1, v1

    .line 461
    iget v2, p3, Lcom/android/systemui/statusbar/stack/StackViewState;->yTranslation:F

    .line 460
    sub-float v2, v0, v2

    sub-float/2addr v1, v2

    .line 461
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getCollapsedHeight()I

    move-result v2

    int-to-float v2, v2

    .line 460
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p3, Lcom/android/systemui/statusbar/stack/StackViewState;->height:I

    .line 462
    iput v0, p3, Lcom/android/systemui/statusbar/stack/StackViewState;->yTranslation:F

    .line 457
    return-void
.end method

.method private clampPositionToBottomStackStart(Lcom/android/systemui/statusbar/stack/StackViewState;IILcom/android/systemui/statusbar/stack/AmbientState;)V
    .locals 5
    .param p1, "childViewState"    # Lcom/android/systemui/statusbar/stack/StackViewState;
    .param p2, "childHeight"    # I
    .param p3, "minHeight"    # I
    .param p4, "ambientState"    # Lcom/android/systemui/statusbar/stack/AmbientState;

    .prologue
    .line 486
    invoke-virtual {p4}, Lcom/android/systemui/statusbar/stack/AmbientState;->getInnerHeight()I

    move-result v3

    .line 487
    iget v4, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mBottomStackPeekSize:I

    .line 486
    sub-int/2addr v3, v4

    .line 487
    iget v4, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mBottomStackSlowDownLength:I

    .line 486
    sub-int v0, v3, v4

    .line 488
    .local v0, "bottomStackStart":I
    sub-int v1, v0, p2

    .line 489
    .local v1, "childStart":I
    int-to-float v3, v1

    iget v4, p1, Lcom/android/systemui/statusbar/stack/StackViewState;->yTranslation:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    .line 490
    int-to-float v3, v0

    iget v4, p1, Lcom/android/systemui/statusbar/stack/StackViewState;->yTranslation:F

    sub-float v2, v3, v4

    .line 491
    .local v2, "newHeight":F
    int-to-float v3, p3

    cmpg-float v3, v2, v3

    if-gez v3, :cond_0

    .line 492
    int-to-float v2, p3

    .line 493
    sub-int v3, v0, p3

    int-to-float v3, v3

    iput v3, p1, Lcom/android/systemui/statusbar/stack/StackViewState;->yTranslation:F

    .line 495
    :cond_0
    float-to-int v3, v2

    iput v3, p1, Lcom/android/systemui/statusbar/stack/StackViewState;->height:I

    .line 484
    .end local v2    # "newHeight":F
    :cond_1
    return-void
.end method

.method private getMaxAllowedChildHeight(Landroid/view/View;)I
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 500
    instance-of v1, p1, Lcom/android/systemui/statusbar/ExpandableView;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 501
    check-cast v0, Lcom/android/systemui/statusbar/ExpandableView;

    .line 502
    .local v0, "expandableView":Lcom/android/systemui/statusbar/ExpandableView;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableView;->getIntrinsicHeight()I

    move-result v1

    return v1

    .line 504
    .end local v0    # "expandableView":Lcom/android/systemui/statusbar/ExpandableView;
    :cond_0
    if-nez p1, :cond_1

    iget v1, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mCollapsedSize:I

    :goto_0
    return v1

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    goto :goto_0
.end method

.method private getNotificationChildrenStates(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;)V
    .locals 5
    .param p1, "resultState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;
    .param p2, "algorithmState"    # Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;

    .prologue
    .line 118
    iget-object v4, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 119
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 120
    iget-object v4, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/ExpandableView;

    .line 121
    .local v3, "v":Lcom/android/systemui/statusbar/ExpandableView;
    instance-of v4, v3, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v4, :cond_0

    move-object v2, v3

    .line 122
    check-cast v2, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 123
    .local v2, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getChildrenStates(Lcom/android/systemui/statusbar/stack/StackScrollState;)V

    .line 119
    .end local v2    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 117
    .end local v3    # "v":Lcom/android/systemui/statusbar/ExpandableView;
    :cond_1
    return-void
.end method

.method private getPaddingAfterChild(Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/ExpandableView;)I
    .locals 4
    .param p1, "algorithmState"    # Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;
    .param p2, "child"    # Lcom/android/systemui/statusbar/ExpandableView;

    .prologue
    .line 407
    iget-object v1, p1, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->increasedPaddingMap:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 408
    .local v0, "paddingValue":Ljava/lang/Float;
    if-nez v0, :cond_0

    .line 409
    iget v1, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mPaddingBetweenElements:I

    .line 408
    :goto_0
    return v1

    .line 410
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mPaddingBetweenElements:I

    int-to-float v1, v1

    .line 411
    iget v2, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mIncreasedPaddingBetweenElements:I

    int-to-float v2, v2

    .line 412
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 410
    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v1

    float-to-int v1, v1

    goto :goto_0
.end method

.method private handleDraggedViews(Lcom/android/systemui/statusbar/stack/AmbientState;Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;)V
    .locals 9
    .param p1, "ambientState"    # Lcom/android/systemui/statusbar/stack/AmbientState;
    .param p2, "resultState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;
    .param p3, "algorithmState"    # Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;

    .prologue
    const/4 v8, 0x0

    .line 222
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->getDraggedViews()Ljava/util/ArrayList;

    move-result-object v3

    .line 223
    .local v3, "draggedViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "draggedView$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 224
    .local v1, "draggedView":Landroid/view/View;
    iget-object v6, p3, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 225
    .local v0, "childIndex":I
    if-ltz v0, :cond_0

    iget-object v6, p3, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v0, v6, :cond_0

    .line 226
    iget-object v6, p3, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    add-int/lit8 v7, v0, 0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 227
    .local v4, "nextChild":Landroid/view/View;
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 230
    invoke-virtual {p2, v4}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/StackViewState;

    move-result-object v5

    .line 233
    .local v5, "viewState":Lcom/android/systemui/statusbar/stack/StackViewState;
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->isShadeExpanded()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 234
    const/high16 v6, 0x3f800000    # 1.0f

    iput v6, v5, Lcom/android/systemui/statusbar/stack/StackViewState;->shadowAlpha:F

    .line 235
    iput-boolean v8, v5, Lcom/android/systemui/statusbar/stack/StackViewState;->hidden:Z

    .line 240
    .end local v5    # "viewState":Lcom/android/systemui/statusbar/stack/StackViewState;
    :cond_1
    invoke-virtual {p2, v1}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/StackViewState;

    move-result-object v5

    .line 242
    .restart local v5    # "viewState":Lcom/android/systemui/statusbar/stack/StackViewState;
    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v6

    iput v6, v5, Lcom/android/systemui/statusbar/stack/StackViewState;->alpha:F

    goto :goto_0

    .line 221
    .end local v0    # "childIndex":I
    .end local v1    # "draggedView":Landroid/view/View;
    .end local v4    # "nextChild":Landroid/view/View;
    .end local v5    # "viewState":Lcom/android/systemui/statusbar/stack/StackViewState;
    :cond_2
    return-void
.end method

.method private initAlgorithmState(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/stack/AmbientState;)V
    .locals 22
    .param p1, "resultState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;
    .param p2, "state"    # Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;
    .param p3, "ambientState"    # Lcom/android/systemui/statusbar/stack/AmbientState;

    .prologue
    .line 252
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p2

    iput v0, v1, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->itemsInBottomStack:F

    .line 253
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p2

    iput v0, v1, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->partialInBottom:F

    .line 254
    const/16 v20, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/AmbientState;->getOverScrollAmount(Z)F

    move-result v4

    .line 256
    .local v4, "bottomOverScroll":F
    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/statusbar/stack/AmbientState;->getScrollY()I

    move-result v18

    .line 260
    .local v18, "scrollY":I
    const/16 v20, 0x0

    move/from16 v0, v20

    move/from16 v1, v18

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v18

    .line 261
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v20, v0

    add-float v20, v20, v4

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p2

    iput v0, v1, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->scrollY:I

    .line 264
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getHostView()Landroid/view/ViewGroup;

    move-result-object v10

    .line 265
    .local v10, "hostView":Landroid/view/ViewGroup;
    invoke-virtual {v10}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    .line 266
    .local v5, "childCount":I
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->clear()V

    .line 267
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 268
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->increasedPaddingMap:Ljava/util/HashMap;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/HashMap;->clear()V

    .line 269
    const/4 v15, 0x0

    .line 270
    .local v15, "notGoneIndex":I
    const/4 v13, 0x0

    .line 271
    .local v13, "lastView":Lcom/android/systemui/statusbar/ExpandableView;
    const/4 v11, 0x0

    .end local v13    # "lastView":Lcom/android/systemui/statusbar/ExpandableView;
    .local v11, "i":I
    :goto_0
    if-ge v11, v5, :cond_5

    .line 272
    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Lcom/android/systemui/statusbar/ExpandableView;

    .line 273
    .local v19, "v":Lcom/android/systemui/statusbar/ExpandableView;
    invoke-virtual/range {v19 .. v19}, Lcom/android/systemui/statusbar/ExpandableView;->getVisibility()I

    move-result v20

    const/16 v21, 0x8

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_4

    .line 274
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v15, v3}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updateNotGoneIndex(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;ILcom/android/systemui/statusbar/ExpandableView;)I

    move-result v15

    .line 275
    invoke-virtual/range {v19 .. v19}, Lcom/android/systemui/statusbar/ExpandableView;->getIncreasedPaddingAmount()F

    move-result v12

    .line 276
    .local v12, "increasedPadding":F
    const/16 v20, 0x0

    cmpl-float v20, v12, v20

    if-eqz v20, :cond_0

    .line 277
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->increasedPaddingMap:Ljava/util/HashMap;

    move-object/from16 v20, v0

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    if-eqz v13, :cond_0

    .line 279
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->increasedPaddingMap:Ljava/util/HashMap;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Float;

    .line 280
    .local v16, "prevValue":Ljava/lang/Float;
    if-eqz v16, :cond_2

    .line 281
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Float;->floatValue()F

    move-result v20

    move/from16 v0, v20

    invoke-static {v0, v12}, Ljava/lang/Math;->max(FF)F

    move-result v14

    .line 283
    .local v14, "newValue":F
    :goto_1
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->increasedPaddingMap:Ljava/util/HashMap;

    move-object/from16 v20, v0

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v13, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    .end local v14    # "newValue":F
    .end local v16    # "prevValue":Ljava/lang/Float;
    :cond_0
    move-object/from16 v0, v19

    instance-of v0, v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move/from16 v20, v0

    if-eqz v20, :cond_3

    move-object/from16 v17, v19

    .line 287
    check-cast v17, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 291
    .local v17, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getNotificationChildren()Ljava/util/List;

    move-result-object v9

    .line 292
    .local v9, "children":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isSummaryWithChildren()Z

    move-result v20

    if-eqz v20, :cond_3

    if-eqz v9, :cond_3

    .line 293
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "childRow$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 294
    .local v6, "childRow":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getVisibility()I

    move-result v20

    const/16 v21, 0x8

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_1

    .line 296
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/StackViewState;

    move-result-object v8

    .line 297
    .local v8, "childState":Lcom/android/systemui/statusbar/stack/StackViewState;
    iput v15, v8, Lcom/android/systemui/statusbar/stack/StackViewState;->notGoneIndex:I

    .line 298
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 282
    .end local v6    # "childRow":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v7    # "childRow$iterator":Ljava/util/Iterator;
    .end local v8    # "childState":Lcom/android/systemui/statusbar/stack/StackViewState;
    .end local v9    # "children":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    .end local v17    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .restart local v16    # "prevValue":Ljava/lang/Float;
    :cond_2
    move v14, v12

    .restart local v14    # "newValue":F
    goto :goto_1

    .line 303
    .end local v14    # "newValue":F
    .end local v16    # "prevValue":Ljava/lang/Float;
    :cond_3
    move-object/from16 v13, v19

    .line 271
    .end local v12    # "increasedPadding":F
    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 251
    .end local v19    # "v":Lcom/android/systemui/statusbar/ExpandableView;
    :cond_5
    return-void
.end method

.method private initConstants(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 74
    const v1, 0x7f0d02a9

    .line 73
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mPaddingBetweenElements:I

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 76
    const v1, 0x7f0d02ab

    .line 75
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mIncreasedPaddingBetweenElements:I

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 78
    const v1, 0x7f0d01de

    .line 77
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mCollapsedSize:I

    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 80
    const v1, 0x7f0d02a5

    .line 79
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mBottomStackPeekSize:I

    .line 81
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 82
    const v1, 0x7f0d02a8

    .line 81
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mZDistanceBetweenElements:I

    .line 83
    iget v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mZDistanceBetweenElements:I

    mul-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mZBasicHeight:I

    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 85
    const v1, 0x7f0d02a7

    .line 84
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mBottomStackSlowDownLength:I

    .line 86
    new-instance v0, Lcom/android/systemui/statusbar/stack/PiecewiseLinearIndentationFunctor;

    .line 88
    iget v1, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mBottomStackPeekSize:I

    .line 89
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->getBottomStackSlowDownLength()I

    move-result v2

    .line 87
    const/4 v3, 0x3

    .line 90
    const/high16 v4, 0x3f000000    # 0.5f

    .line 86
    invoke-direct {v0, v3, v1, v2, v4}, Lcom/android/systemui/statusbar/stack/PiecewiseLinearIndentationFunctor;-><init>(IIIF)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mBottomStackIndentationFunctor:Lcom/android/systemui/statusbar/stack/StackIndentationFunctor;

    .line 72
    return-void
.end method

.method private updateClipping(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/stack/AmbientState;)V
    .locals 15
    .param p1, "resultState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;
    .param p2, "algorithmState"    # Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;
    .param p3, "ambientState"    # Lcom/android/systemui/statusbar/stack/AmbientState;

    .prologue
    .line 143
    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/statusbar/stack/AmbientState;->getTopPadding()F

    move-result v13

    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/statusbar/stack/AmbientState;->getStackTranslation()F

    move-result v14

    add-float v3, v13, v14

    .line 144
    .local v3, "drawStart":F
    const/4 v10, 0x0

    .line 145
    .local v10, "previousNotificationEnd":F
    const/4 v11, 0x0

    .line 146
    .local v11, "previousNotificationStart":F
    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 147
    .local v2, "childCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_6

    .line 148
    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/ExpandableView;

    .line 149
    .local v1, "child":Lcom/android/systemui/statusbar/ExpandableView;
    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/StackViewState;

    move-result-object v12

    .line 150
    .local v12, "state":Lcom/android/systemui/statusbar/stack/StackViewState;
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableView;->mustStayOnScreen()Z

    move-result v13

    if-nez v13, :cond_0

    .line 151
    invoke-static {v3, v10}, Ljava/lang/Math;->max(FF)F

    move-result v10

    .line 152
    invoke-static {v3, v11}, Ljava/lang/Math;->max(FF)F

    move-result v11

    .line 154
    :cond_0
    iget v8, v12, Lcom/android/systemui/statusbar/stack/StackViewState;->yTranslation:F

    .line 155
    .local v8, "newYTranslation":F
    iget v13, v12, Lcom/android/systemui/statusbar/stack/StackViewState;->height:I

    int-to-float v6, v13

    .line 156
    .local v6, "newHeight":F
    add-float v7, v8, v6

    .line 157
    .local v7, "newNotificationEnd":F
    instance-of v13, v1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v13, :cond_4

    move-object v13, v1

    .line 158
    check-cast v13, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v13}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isPinned()Z

    move-result v5

    .line 159
    :goto_1
    cmpg-float v13, v8, v10

    if-gez v13, :cond_5

    .line 160
    if-eqz v5, :cond_1

    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/statusbar/stack/AmbientState;->isShadeExpanded()Z

    move-result v13

    .line 159
    if-eqz v13, :cond_5

    .line 162
    :cond_1
    sub-float v9, v10, v8

    .line 163
    .local v9, "overlapAmount":F
    float-to-int v13, v9

    iput v13, v12, Lcom/android/systemui/statusbar/stack/StackViewState;->clipTopAmount:I

    .line 169
    .end local v9    # "overlapAmount":F
    :goto_2
    iget-boolean v13, v12, Lcom/android/systemui/statusbar/stack/StackViewState;->isBottomBar:Z

    if-eqz v13, :cond_2

    .line 170
    const/4 v13, 0x0

    iput v13, v12, Lcom/android/systemui/statusbar/stack/StackViewState;->clipTopAmount:I

    .line 174
    :cond_2
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableView;->isTransparent()Z

    move-result v13

    if-nez v13, :cond_3

    .line 177
    move v10, v7

    .line 178
    move v11, v8

    .line 147
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 157
    :cond_4
    const/4 v5, 0x0

    .local v5, "isHeadsUp":Z
    goto :goto_1

    .line 165
    .end local v5    # "isHeadsUp":Z
    :cond_5
    const/4 v13, 0x0

    iput v13, v12, Lcom/android/systemui/statusbar/stack/StackViewState;->clipTopAmount:I

    goto :goto_2

    .line 142
    .end local v1    # "child":Lcom/android/systemui/statusbar/ExpandableView;
    .end local v6    # "newHeight":F
    .end local v7    # "newNotificationEnd":F
    .end local v8    # "newYTranslation":F
    .end local v12    # "state":Lcom/android/systemui/statusbar/stack/StackViewState;
    :cond_6
    return-void
.end method

.method private updateDimmedActivatedHideSensitive(Lcom/android/systemui/statusbar/stack/AmbientState;Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;)V
    .locals 12
    .param p1, "ambientState"    # Lcom/android/systemui/statusbar/stack/AmbientState;
    .param p2, "resultState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;
    .param p3, "algorithmState"    # Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;

    .prologue
    .line 199
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->isDimmed()Z

    move-result v5

    .line 200
    .local v5, "dimmed":Z
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->isDark()Z

    move-result v4

    .line 201
    .local v4, "dark":Z
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->isHideSensitive()Z

    move-result v6

    .line 202
    .local v6, "hideSensitive":Z
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->getActivatedChild()Lcom/android/systemui/statusbar/ActivatableNotificationView;

    move-result-object v0

    .line 203
    .local v0, "activatedChild":Landroid/view/View;
    iget-object v9, p3, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 204
    .local v2, "childCount":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v2, :cond_2

    .line 205
    iget-object v9, p3, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 206
    .local v1, "child":Landroid/view/View;
    invoke-virtual {p2, v1}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/StackViewState;

    move-result-object v3

    .line 207
    .local v3, "childViewState":Lcom/android/systemui/statusbar/stack/StackViewState;
    iput-boolean v5, v3, Lcom/android/systemui/statusbar/stack/StackViewState;->dimmed:Z

    .line 208
    iput-boolean v4, v3, Lcom/android/systemui/statusbar/stack/StackViewState;->dark:Z

    .line 209
    iput-boolean v6, v3, Lcom/android/systemui/statusbar/stack/StackViewState;->hideSensitive:Z

    .line 210
    if-ne v0, v1, :cond_1

    const/4 v8, 0x1

    .line 211
    .local v8, "isActivatedChild":Z
    :goto_1
    if-eqz v5, :cond_0

    if-eqz v8, :cond_0

    .line 212
    iget v9, v3, Lcom/android/systemui/statusbar/stack/StackViewState;->zTranslation:F

    iget v10, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mZDistanceBetweenElements:I

    int-to-float v10, v10

    const/high16 v11, 0x40000000    # 2.0f

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    iput v9, v3, Lcom/android/systemui/statusbar/stack/StackViewState;->zTranslation:F

    .line 204
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 210
    .end local v8    # "isActivatedChild":Z
    :cond_1
    const/4 v8, 0x0

    .restart local v8    # "isActivatedChild":Z
    goto :goto_1

    .line 198
    .end local v1    # "child":Landroid/view/View;
    .end local v3    # "childViewState":Lcom/android/systemui/statusbar/stack/StackViewState;
    .end local v8    # "isActivatedChild":Z
    :cond_2
    return-void
.end method

.method private updateFirstChildHeight(Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/StackViewState;ILcom/android/systemui/statusbar/stack/AmbientState;)V
    .locals 3
    .param p1, "child"    # Lcom/android/systemui/statusbar/ExpandableView;
    .param p2, "childViewState"    # Lcom/android/systemui/statusbar/stack/StackViewState;
    .param p3, "childHeight"    # I
    .param p4, "ambientState"    # Lcom/android/systemui/statusbar/stack/AmbientState;

    .prologue
    .line 575
    invoke-virtual {p4}, Lcom/android/systemui/statusbar/stack/AmbientState;->getInnerHeight()I

    move-result v1

    iget v2, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mBottomStackPeekSize:I

    sub-int/2addr v1, v2

    .line 576
    iget v2, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mBottomStackSlowDownLength:I

    .line 575
    sub-int/2addr v1, v2

    .line 576
    invoke-virtual {p4}, Lcom/android/systemui/statusbar/stack/AmbientState;->getScrollY()I

    move-result v2

    .line 575
    add-int v0, v1, v2

    .line 578
    .local v0, "bottomPeekStart":I
    int-to-float v1, v0

    int-to-float v2, p3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 579
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableView;->getCollapsedHeight()I

    move-result v2

    int-to-float v2, v2

    .line 578
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p2, Lcom/android/systemui/statusbar/stack/StackViewState;->height:I

    .line 572
    return-void
.end method

.method private updateHeadsUpStates(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/stack/AmbientState;)V
    .locals 11
    .param p1, "resultState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;
    .param p2, "algorithmState"    # Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;
    .param p3, "ambientState"    # Lcom/android/systemui/statusbar/stack/AmbientState;

    .prologue
    .line 417
    iget-object v9, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 418
    .local v1, "childCount":I
    const/4 v6, 0x0

    .line 419
    .local v6, "topHeadsUpEntry":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    const/4 v3, 0x0

    .end local v6    # "topHeadsUpEntry":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 420
    iget-object v9, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 421
    .local v0, "child":Landroid/view/View;
    instance-of v9, v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-nez v9, :cond_1

    .line 416
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    return-void

    .restart local v0    # "child":Landroid/view/View;
    :cond_1
    move-object v5, v0

    .line 424
    check-cast v5, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 425
    .local v5, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isHeadsUp()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 428
    invoke-virtual {p1, v5}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/StackViewState;

    move-result-object v2

    .line 429
    .local v2, "childState":Lcom/android/systemui/statusbar/stack/StackViewState;
    if-nez v6, :cond_2

    .line 430
    move-object v6, v5

    .line 431
    .local v6, "topHeadsUpEntry":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    const/4 v9, 0x1

    iput v9, v2, Lcom/android/systemui/statusbar/stack/StackViewState;->location:I

    .line 433
    .end local v6    # "topHeadsUpEntry":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_2
    if-ne v6, v5, :cond_6

    const/4 v4, 0x1

    .line 434
    .local v4, "isTopEntry":Z
    :goto_1
    iget v9, v2, Lcom/android/systemui/statusbar/stack/StackViewState;->yTranslation:F

    iget v10, v2, Lcom/android/systemui/statusbar/stack/StackViewState;->height:I

    int-to-float v10, v10

    add-float v8, v9, v10

    .line 435
    .local v8, "unmodifiedEndLocation":F
    iget-boolean v9, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mIsExpanded:Z

    if-eqz v9, :cond_3

    .line 437
    invoke-direct {p0, p3, v5, v2}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->clampHunToTop(Lcom/android/systemui/statusbar/stack/AmbientState;Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/statusbar/stack/StackViewState;)V

    .line 438
    invoke-direct {p0, p3, v5, v2}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->clampHunToMaxTranslation(Lcom/android/systemui/statusbar/stack/AmbientState;Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/statusbar/stack/StackViewState;)V

    .line 440
    :cond_3
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isPinned()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 441
    iget v9, v2, Lcom/android/systemui/statusbar/stack/StackViewState;->yTranslation:F

    const/4 v10, 0x0

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v9

    iput v9, v2, Lcom/android/systemui/statusbar/stack/StackViewState;->yTranslation:F

    .line 442
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v9

    iget v10, v2, Lcom/android/systemui/statusbar/stack/StackViewState;->height:I

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, v2, Lcom/android/systemui/statusbar/stack/StackViewState;->height:I

    .line 443
    invoke-virtual {p1, v6}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/StackViewState;

    move-result-object v7

    .line 444
    .local v7, "topState":Lcom/android/systemui/statusbar/stack/StackViewState;
    if-nez v4, :cond_5

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mIsExpanded:Z

    if-eqz v9, :cond_4

    .line 445
    iget v9, v7, Lcom/android/systemui/statusbar/stack/StackViewState;->yTranslation:F

    iget v10, v7, Lcom/android/systemui/statusbar/stack/StackViewState;->height:I

    int-to-float v10, v10

    add-float/2addr v9, v10

    cmpg-float v9, v8, v9

    if-gez v9, :cond_5

    .line 448
    :cond_4
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v9

    iput v9, v2, Lcom/android/systemui/statusbar/stack/StackViewState;->height:I

    .line 449
    iget v9, v7, Lcom/android/systemui/statusbar/stack/StackViewState;->yTranslation:F

    iget v10, v7, Lcom/android/systemui/statusbar/stack/StackViewState;->height:I

    int-to-float v10, v10

    add-float/2addr v9, v10

    .line 450
    iget v10, v2, Lcom/android/systemui/statusbar/stack/StackViewState;->height:I

    int-to-float v10, v10

    .line 449
    sub-float/2addr v9, v10

    iput v9, v2, Lcom/android/systemui/statusbar/stack/StackViewState;->yTranslation:F

    .line 419
    .end local v7    # "topState":Lcom/android/systemui/statusbar/stack/StackViewState;
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 433
    .end local v4    # "isTopEntry":Z
    .end local v8    # "unmodifiedEndLocation":F
    :cond_6
    const/4 v4, 0x0

    .restart local v4    # "isTopEntry":Z
    goto :goto_1
.end method

.method private updateNotGoneIndex(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;ILcom/android/systemui/statusbar/ExpandableView;)I
    .locals 2
    .param p1, "resultState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;
    .param p2, "state"    # Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;
    .param p3, "notGoneIndex"    # I
    .param p4, "v"    # Lcom/android/systemui/statusbar/ExpandableView;

    .prologue
    .line 311
    invoke-virtual {p1, p4}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/StackViewState;

    move-result-object v0

    .line 312
    .local v0, "viewState":Lcom/android/systemui/statusbar/stack/StackViewState;
    iput p3, v0, Lcom/android/systemui/statusbar/stack/StackViewState;->notGoneIndex:I

    .line 313
    iget-object v1, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    add-int/lit8 p3, p3, 0x1

    .line 315
    return p3
.end method

.method private updatePositionsForState(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/stack/AmbientState;)V
    .locals 23
    .param p1, "resultState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;
    .param p2, "algorithmState"    # Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;
    .param p3, "ambientState"    # Lcom/android/systemui/statusbar/stack/AmbientState;

    .prologue
    .line 329
    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/statusbar/stack/AmbientState;->getInnerHeight()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mBottomStackPeekSize:I

    sub-int/2addr v2, v3

    int-to-float v0, v2

    move/from16 v16, v0

    .line 332
    .local v16, "bottomPeekStart":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mBottomStackSlowDownLength:I

    int-to-float v2, v2

    sub-float v4, v16, v2

    .line 335
    .local v4, "bottomStackStart":F
    move-object/from16 v0, p2

    iget v2, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->scrollY:I

    neg-int v2, v2

    int-to-float v13, v2

    .line 337
    .local v13, "currentYPosition":F
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 339
    .local v17, "childCount":I
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_0
    move/from16 v0, v18

    move/from16 v1, v17

    if-ge v0, v1, :cond_7

    .line 340
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/ExpandableView;

    .line 341
    .local v8, "child":Lcom/android/systemui/statusbar/ExpandableView;
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/StackViewState;

    move-result-object v5

    .line 342
    .local v5, "childViewState":Lcom/android/systemui/statusbar/stack/StackViewState;
    const/4 v2, 0x0

    iput v2, v5, Lcom/android/systemui/statusbar/stack/StackViewState;->location:I

    .line 343
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v8}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->getPaddingAfterChild(Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/ExpandableView;)I

    move-result v22

    .line 345
    .local v22, "paddingAfterChild":I
    add-int/lit8 v2, v17, -0x1

    move/from16 v0, v18

    if-ge v0, v2, :cond_0

    .line 346
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    add-int/lit8 v3, v18, 0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/systemui/statusbar/ExpandableView;

    .line 347
    .local v19, "nextChild":Lcom/android/systemui/statusbar/ExpandableView;
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/StackViewState;

    move-result-object v20

    .line 348
    .local v20, "nextChildViewState":Lcom/android/systemui/statusbar/stack/StackViewState;
    move-object/from16 v0, v20

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/stack/StackViewState;->isBottomBar:Z

    if-eqz v2, :cond_0

    .line 349
    const/16 v22, 0x0

    .line 353
    .end local v19    # "nextChild":Lcom/android/systemui/statusbar/ExpandableView;
    .end local v20    # "nextChildViewState":Lcom/android/systemui/statusbar/stack/StackViewState;
    :cond_0
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->getMaxAllowedChildHeight(Landroid/view/View;)I

    move-result v15

    .line 354
    .local v15, "childHeight":I
    invoke-virtual {v8}, Lcom/android/systemui/statusbar/ExpandableView;->getCollapsedHeight()I

    move-result v6

    .line 355
    .local v6, "collapsedHeight":I
    iput v13, v5, Lcom/android/systemui/statusbar/stack/StackViewState;->yTranslation:F

    .line 356
    if-nez v18, :cond_1

    .line 357
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v8, v5, v15, v1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updateFirstChildHeight(Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/StackViewState;ILcom/android/systemui/statusbar/stack/AmbientState;)V

    .line 361
    :cond_1
    int-to-float v2, v15

    add-float/2addr v2, v13

    .line 362
    move/from16 v0, v22

    int-to-float v3, v0

    .line 361
    add-float v21, v2, v3

    .line 363
    .local v21, "nextYPosition":F
    cmpl-float v2, v21, v4

    if-ltz v2, :cond_6

    .line 366
    cmpl-float v2, v13, v4

    if-ltz v2, :cond_5

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move-object/from16 v7, p3

    .line 369
    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updateStateForChildFullyInBottomStack(Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;FLcom/android/systemui/statusbar/stack/StackViewState;ILcom/android/systemui/statusbar/stack/AmbientState;Lcom/android/systemui/statusbar/ExpandableView;)V

    .line 386
    :goto_1
    if-nez v18, :cond_2

    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/statusbar/stack/AmbientState;->getScrollY()I

    move-result v2

    if-gtz v2, :cond_2

    .line 390
    const/4 v2, 0x0

    iget v3, v5, Lcom/android/systemui/statusbar/stack/StackViewState;->yTranslation:F

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, v5, Lcom/android/systemui/statusbar/stack/StackViewState;->yTranslation:F

    .line 392
    :cond_2
    iget v2, v5, Lcom/android/systemui/statusbar/stack/StackViewState;->yTranslation:F

    int-to-float v3, v15

    add-float/2addr v2, v3

    move/from16 v0, v22

    int-to-float v3, v0

    add-float v13, v2, v3

    .line 393
    const/4 v2, 0x0

    cmpg-float v2, v13, v2

    if-gtz v2, :cond_3

    .line 394
    const/4 v2, 0x2

    iput v2, v5, Lcom/android/systemui/statusbar/stack/StackViewState;->location:I

    .line 396
    :cond_3
    iget v2, v5, Lcom/android/systemui/statusbar/stack/StackViewState;->location:I

    if-nez v2, :cond_4

    .line 397
    const-string/jumbo v2, "StackScrollAlgorithm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Failed to assign location for child "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    :cond_4
    iget v2, v5, Lcom/android/systemui/statusbar/stack/StackViewState;->yTranslation:F

    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/statusbar/stack/AmbientState;->getTopPadding()F

    move-result v3

    .line 401
    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/statusbar/stack/AmbientState;->getStackTranslation()F

    move-result v7

    .line 400
    add-float/2addr v3, v7

    add-float/2addr v2, v3

    iput v2, v5, Lcom/android/systemui/statusbar/stack/StackViewState;->yTranslation:F

    .line 339
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_0

    :cond_5
    move-object/from16 v9, p0

    move-object/from16 v10, p2

    move v11, v4

    move-object v12, v8

    move-object v14, v5

    .line 374
    invoke-direct/range {v9 .. v15}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updateStateForChildTransitioningInBottom(Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;FLcom/android/systemui/statusbar/ExpandableView;FLcom/android/systemui/statusbar/stack/StackViewState;I)V

    goto :goto_1

    .line 381
    :cond_6
    const/4 v2, 0x4

    iput v2, v5, Lcom/android/systemui/statusbar/stack/StackViewState;->location:I

    .line 382
    iget v2, v5, Lcom/android/systemui/statusbar/stack/StackViewState;->height:I

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v5, v2, v15, v1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->clampPositionToBottomStackStart(Lcom/android/systemui/statusbar/stack/StackViewState;IILcom/android/systemui/statusbar/stack/AmbientState;)V

    goto :goto_1

    .line 326
    .end local v5    # "childViewState":Lcom/android/systemui/statusbar/stack/StackViewState;
    .end local v6    # "collapsedHeight":I
    .end local v8    # "child":Lcom/android/systemui/statusbar/ExpandableView;
    .end local v15    # "childHeight":I
    .end local v21    # "nextYPosition":F
    .end local v22    # "paddingAfterChild":I
    :cond_7
    return-void
.end method

.method private updateSpeedBumpState(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;I)V
    .locals 6
    .param p1, "resultState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;
    .param p2, "algorithmState"    # Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;
    .param p3, "speedBumpIndex"    # I

    .prologue
    const/4 v5, 0x0

    .line 130
    iget-object v4, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 131
    .local v1, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 132
    iget-object v4, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 133
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/StackViewState;

    move-result-object v2

    .line 137
    .local v2, "childViewState":Lcom/android/systemui/statusbar/stack/StackViewState;
    const/4 v4, -0x1

    if-eq p3, v4, :cond_0

    if-lt v3, p3, :cond_0

    const/4 v4, 0x1

    :goto_1
    iput-boolean v4, v2, Lcom/android/systemui/statusbar/stack/StackViewState;->belowSpeedBump:Z

    .line 131
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    move v4, v5

    .line 137
    goto :goto_1

    .line 129
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "childViewState":Lcom/android/systemui/statusbar/stack/StackViewState;
    :cond_1
    return-void
.end method

.method private updateStateForChildFullyInBottomStack(Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;FLcom/android/systemui/statusbar/stack/StackViewState;ILcom/android/systemui/statusbar/stack/AmbientState;Lcom/android/systemui/statusbar/ExpandableView;)V
    .locals 4
    .param p1, "algorithmState"    # Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;
    .param p2, "transitioningPositionStart"    # F
    .param p3, "childViewState"    # Lcom/android/systemui/statusbar/stack/StackViewState;
    .param p4, "collapsedHeight"    # I
    .param p5, "ambientState"    # Lcom/android/systemui/statusbar/stack/AmbientState;
    .param p6, "child"    # Lcom/android/systemui/statusbar/ExpandableView;

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 535
    iget v1, p1, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->itemsInBottomStack:F

    add-float/2addr v1, v3

    iput v1, p1, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->itemsInBottomStack:F

    .line 536
    iget v1, p1, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->itemsInBottomStack:F

    const/high16 v2, 0x40400000    # 3.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 539
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mBottomStackIndentationFunctor:Lcom/android/systemui/statusbar/stack/StackIndentationFunctor;

    iget v2, p1, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->itemsInBottomStack:F

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/stack/StackIndentationFunctor;->getValue(F)F

    move-result v1

    .line 538
    add-float/2addr v1, p2

    .line 540
    invoke-direct {p0, p1, p6}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->getPaddingAfterChild(Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/ExpandableView;)I

    move-result v2

    int-to-float v2, v2

    .line 538
    sub-float v0, v1, v2

    .line 541
    .local v0, "currentYPosition":F
    const/16 v1, 0x8

    iput v1, p3, Lcom/android/systemui/statusbar/stack/StackViewState;->location:I

    .line 558
    :goto_0
    iput p4, p3, Lcom/android/systemui/statusbar/stack/StackViewState;->height:I

    .line 559
    int-to-float v1, p4

    sub-float v1, v0, v1

    iput v1, p3, Lcom/android/systemui/statusbar/stack/StackViewState;->yTranslation:F

    .line 533
    return-void

    .line 544
    .end local v0    # "currentYPosition":F
    :cond_0
    iget v1, p1, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->itemsInBottomStack:F

    const/high16 v2, 0x40a00000    # 5.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 546
    iget-boolean v1, p3, Lcom/android/systemui/statusbar/stack/StackViewState;->isBottomBar:Z

    if-nez v1, :cond_1

    .line 547
    const/4 v1, 0x1

    iput-boolean v1, p3, Lcom/android/systemui/statusbar/stack/StackViewState;->hidden:Z

    .line 548
    const/4 v1, 0x0

    iput v1, p3, Lcom/android/systemui/statusbar/stack/StackViewState;->shadowAlpha:F

    .line 555
    :cond_1
    :goto_1
    const/16 v1, 0x10

    iput v1, p3, Lcom/android/systemui/statusbar/stack/StackViewState;->location:I

    .line 556
    invoke-virtual {p5}, Lcom/android/systemui/statusbar/stack/AmbientState;->getInnerHeight()I

    move-result v1

    int-to-float v0, v1

    .restart local v0    # "currentYPosition":F
    goto :goto_0

    .line 551
    .end local v0    # "currentYPosition":F
    :cond_2
    iget v1, p1, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->itemsInBottomStack:F

    .line 552
    const/high16 v2, 0x40800000    # 4.0f

    .line 551
    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 553
    iget v1, p1, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->partialInBottom:F

    sub-float v1, v3, v1

    iput v1, p3, Lcom/android/systemui/statusbar/stack/StackViewState;->shadowAlpha:F

    goto :goto_1
.end method

.method private updateStateForChildTransitioningInBottom(Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;FLcom/android/systemui/statusbar/ExpandableView;FLcom/android/systemui/statusbar/stack/StackViewState;I)V
    .locals 4
    .param p1, "algorithmState"    # Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;
    .param p2, "transitioningPositionStart"    # F
    .param p3, "child"    # Lcom/android/systemui/statusbar/ExpandableView;
    .param p4, "currentYPosition"    # F
    .param p5, "childViewState"    # Lcom/android/systemui/statusbar/stack/StackViewState;
    .param p6, "childHeight"    # I

    .prologue
    .line 513
    sub-float v2, p2, p4

    .line 514
    invoke-direct {p0, p1, p3}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->getPaddingAfterChild(Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/ExpandableView;)I

    move-result v3

    .line 513
    add-int/2addr v3, p6

    int-to-float v3, v3

    .line 512
    div-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v2, v3, v2

    iput v2, p1, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->partialInBottom:F

    .line 517
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mBottomStackIndentationFunctor:Lcom/android/systemui/statusbar/stack/StackIndentationFunctor;

    iget v3, p1, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->partialInBottom:F

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/stack/StackIndentationFunctor;->getValue(F)F

    move-result v1

    .line 518
    .local v1, "offset":F
    iget v2, p1, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->itemsInBottomStack:F

    iget v3, p1, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->partialInBottom:F

    add-float/2addr v2, v3

    iput v2, p1, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->itemsInBottomStack:F

    .line 519
    move v0, p6

    .line 520
    .local v0, "newHeight":I
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/ExpandableView;->getCollapsedHeight()I

    move-result v2

    if-le p6, v2, :cond_0

    .line 521
    add-float v2, p2, v1

    .line 522
    invoke-direct {p0, p1, p3}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->getPaddingAfterChild(Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/ExpandableView;)I

    move-result v3

    int-to-float v3, v3

    .line 521
    sub-float/2addr v2, v3

    sub-float/2addr v2, p4

    .line 522
    int-to-float v3, p6

    .line 521
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 523
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/ExpandableView;->getCollapsedHeight()I

    move-result v3

    int-to-float v3, v3

    .line 521
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    float-to-int v0, v2

    .line 524
    iput v0, p5, Lcom/android/systemui/statusbar/stack/StackViewState;->height:I

    .line 526
    :cond_0
    add-float v2, p2, v1

    int-to-float v3, v0

    sub-float/2addr v2, v3

    .line 527
    invoke-direct {p0, p1, p3}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->getPaddingAfterChild(Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/ExpandableView;)I

    move-result v3

    int-to-float v3, v3

    .line 526
    sub-float/2addr v2, v3

    iput v2, p5, Lcom/android/systemui/statusbar/stack/StackViewState;->yTranslation:F

    .line 528
    const/4 v2, 0x4

    iput v2, p5, Lcom/android/systemui/statusbar/stack/StackViewState;->location:I

    .line 509
    return-void
.end method

.method private updateZValuesForState(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/stack/AmbientState;)V
    .locals 11
    .param p1, "resultState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;
    .param p2, "algorithmState"    # Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;
    .param p3, "ambientState"    # Lcom/android/systemui/statusbar/stack/AmbientState;

    .prologue
    .line 591
    iget-object v8, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 592
    .local v1, "childCount":I
    const/4 v3, 0x0

    .line 593
    .local v3, "childrenOnTop":F
    add-int/lit8 v4, v1, -0x1

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_7

    .line 594
    iget-object v8, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableView;

    .line 595
    .local v0, "child":Lcom/android/systemui/statusbar/ExpandableView;
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/StackViewState;

    move-result-object v2

    .line 596
    .local v2, "childViewState":Lcom/android/systemui/statusbar/stack/StackViewState;
    int-to-float v8, v4

    add-int/lit8 v9, v1, -0x1

    int-to-float v9, v9

    iget v10, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->itemsInBottomStack:F

    sub-float/2addr v9, v10

    cmpl-float v8, v8, v9

    if-lez v8, :cond_4

    .line 598
    int-to-float v8, v4

    add-int/lit8 v9, v1, -0x1

    int-to-float v9, v9

    iget v10, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->itemsInBottomStack:F

    sub-float/2addr v9, v10

    sub-float v5, v8, v9

    .line 600
    .local v5, "numItemsAbove":F
    const/high16 v8, 0x3f800000    # 1.0f

    cmpg-float v8, v5, v8

    if-gtz v8, :cond_3

    .line 601
    const v8, 0x3e4ccccd    # 0.2f

    .line 603
    cmpg-float v8, v5, v8

    if-gtz v8, :cond_2

    .line 604
    const v8, 0x3dcccccd    # 0.1f

    mul-float/2addr v8, v5

    .line 605
    const/high16 v9, 0x40a00000    # 5.0f

    .line 604
    mul-float v7, v8, v9

    .line 615
    .local v7, "zSubtraction":F
    :goto_1
    iget v8, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mZBasicHeight:I

    int-to-float v8, v8

    sub-float/2addr v8, v7

    iput v8, v2, Lcom/android/systemui/statusbar/stack/StackViewState;->zTranslation:F

    .line 618
    iget-boolean v8, v2, Lcom/android/systemui/statusbar/stack/StackViewState;->isBottomBar:Z

    if-eqz v8, :cond_0

    .line 619
    iget v8, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mZBasicHeight:I

    int-to-float v8, v8

    iput v8, v2, Lcom/android/systemui/statusbar/stack/StackViewState;->zTranslation:F

    .line 638
    .end local v5    # "numItemsAbove":F
    .end local v7    # "zSubtraction":F
    :cond_0
    :goto_2
    instance-of v8, v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v8, :cond_1

    .line 639
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/stack/AmbientState;->isDimmed()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 640
    const/4 v8, 0x0

    iput v8, v2, Lcom/android/systemui/statusbar/stack/StackViewState;->zTranslation:F

    .line 593
    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 601
    .restart local v5    # "numItemsAbove":F
    :cond_2
    const v8, 0x3e4ccccd    # 0.2f

    .line 608
    sub-float v8, v5, v8

    const v9, 0x3f4ccccd    # 0.8f

    const/high16 v10, 0x3f800000    # 1.0f

    div-float v9, v10, v9

    mul-float/2addr v8, v9

    .line 609
    iget v9, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mZDistanceBetweenElements:I

    int-to-float v9, v9

    .line 610
    const v10, 0x3dcccccd    # 0.1f

    .line 609
    sub-float/2addr v9, v10

    .line 608
    mul-float/2addr v8, v9

    .line 607
    const v9, 0x3dcccccd    # 0.1f

    add-float v7, v9, v8

    .restart local v7    # "zSubtraction":F
    goto :goto_1

    .line 613
    .end local v7    # "zSubtraction":F
    :cond_3
    iget v8, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mZDistanceBetweenElements:I

    int-to-float v8, v8

    mul-float v7, v5, v8

    .restart local v7    # "zSubtraction":F
    goto :goto_1

    .line 623
    .end local v5    # "numItemsAbove":F
    .end local v7    # "zSubtraction":F
    :cond_4
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableView;->mustStayOnScreen()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 624
    iget v8, v2, Lcom/android/systemui/statusbar/stack/StackViewState;->yTranslation:F

    invoke-virtual {p3}, Lcom/android/systemui/statusbar/stack/AmbientState;->getTopPadding()F

    move-result v9

    .line 625
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/stack/AmbientState;->getStackTranslation()F

    move-result v10

    .line 624
    add-float/2addr v9, v10

    cmpg-float v8, v8, v9

    if-gez v8, :cond_6

    .line 626
    const/4 v8, 0x0

    cmpl-float v8, v3, v8

    if-eqz v8, :cond_5

    .line 627
    const/high16 v8, 0x3f800000    # 1.0f

    add-float/2addr v3, v8

    .line 633
    :goto_3
    iget v8, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mZBasicHeight:I

    int-to-float v8, v8

    .line 634
    iget v9, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mZDistanceBetweenElements:I

    int-to-float v9, v9

    mul-float/2addr v9, v3

    .line 633
    add-float/2addr v8, v9

    iput v8, v2, Lcom/android/systemui/statusbar/stack/StackViewState;->zTranslation:F

    goto :goto_2

    .line 629
    :cond_5
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/stack/AmbientState;->getTopPadding()F

    move-result v8

    .line 630
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/stack/AmbientState;->getStackTranslation()F

    move-result v9

    .line 629
    add-float/2addr v8, v9

    .line 630
    iget v9, v2, Lcom/android/systemui/statusbar/stack/StackViewState;->yTranslation:F

    .line 629
    sub-float v6, v8, v9

    .line 631
    .local v6, "overlap":F
    iget v8, v2, Lcom/android/systemui/statusbar/stack/StackViewState;->height:I

    int-to-float v8, v8

    div-float v8, v6, v8

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-static {v9, v8}, Ljava/lang/Math;->min(FF)F

    move-result v8

    add-float/2addr v3, v8

    goto :goto_3

    .line 636
    .end local v6    # "overlap":F
    :cond_6
    iget v8, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mZBasicHeight:I

    int-to-float v8, v8

    iput v8, v2, Lcom/android/systemui/statusbar/stack/StackViewState;->zTranslation:F

    goto :goto_2

    .line 590
    .end local v0    # "child":Lcom/android/systemui/statusbar/ExpandableView;
    .end local v2    # "childViewState":Lcom/android/systemui/statusbar/stack/StackViewState;
    :cond_7
    return-void
.end method


# virtual methods
.method public getBottomStackSlowDownLength()I
    .locals 2

    .prologue
    .line 69
    iget v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mBottomStackSlowDownLength:I

    iget v1, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mPaddingBetweenElements:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getStackScrollState(Lcom/android/systemui/statusbar/stack/AmbientState;Lcom/android/systemui/statusbar/stack/StackScrollState;)V
    .locals 2
    .param p1, "ambientState"    # Lcom/android/systemui/statusbar/stack/AmbientState;
    .param p2, "resultState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mTempAlgorithmState:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;

    .line 99
    .local v0, "algorithmState":Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/stack/StackScrollState;->resetViewStates()V

    .line 101
    invoke-direct {p0, p2, v0, p1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->initAlgorithmState(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/stack/AmbientState;)V

    .line 103
    invoke-direct {p0, p2, v0, p1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updatePositionsForState(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/stack/AmbientState;)V

    .line 105
    invoke-direct {p0, p2, v0, p1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updateZValuesForState(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/stack/AmbientState;)V

    .line 107
    invoke-direct {p0, p2, v0, p1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updateHeadsUpStates(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/stack/AmbientState;)V

    .line 109
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->handleDraggedViews(Lcom/android/systemui/statusbar/stack/AmbientState;Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;)V

    .line 110
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updateDimmedActivatedHideSensitive(Lcom/android/systemui/statusbar/stack/AmbientState;Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;)V

    .line 111
    invoke-direct {p0, p2, v0, p1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updateClipping(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/stack/AmbientState;)V

    .line 112
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->getSpeedBumpIndex()I

    move-result v1

    invoke-direct {p0, p2, v0, v1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updateSpeedBumpState(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;I)V

    .line 113
    invoke-direct {p0, p2, v0}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->getNotificationChildrenStates(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;)V

    .line 93
    return-void
.end method

.method public initView(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->initConstants(Landroid/content/Context;)V

    .line 64
    return-void
.end method

.method public setIsExpanded(Z)V
    .locals 0
    .param p1, "isExpanded"    # Z

    .prologue
    .line 666
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mIsExpanded:Z

    .line 665
    return-void
.end method
