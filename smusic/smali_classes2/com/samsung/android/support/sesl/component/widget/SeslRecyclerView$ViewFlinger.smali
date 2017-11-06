.class Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewFlinger;
.super Ljava/lang/Object;
.source "SeslRecyclerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewFlinger"
.end annotation


# instance fields
.field private mEatRunOnAnimationRequest:Z

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mLastFlingX:I

.field private mLastFlingY:I

.field private mReSchedulePostAnimationCallback:Z

.field private mScroller:Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;

.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 6062
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewFlinger;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6053
    sget-object v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewFlinger;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 6057
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    .line 6060
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    .line 6063
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;

    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewFlinger;->mScroller:Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;

    .line 6064
    return-void
.end method

.method static synthetic access$6300(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewFlinger;)Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewFlinger;

    .prologue
    .line 6049
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewFlinger;->mScroller:Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;

    return-object v0
.end method

.method private computeScrollDuration(IIII)I
    .locals 14
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "vx"    # I
    .param p4, "vy"    # I

    .prologue
    .line 6234
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 6235
    .local v1, "absDx":I
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 6236
    .local v2, "absDy":I
    if-le v1, v2, :cond_0

    const/4 v9, 0x1

    .line 6237
    .local v9, "horizontal":Z
    :goto_0
    mul-int v11, p3, p3

    mul-int v12, p4, p4

    add-int/2addr v11, v12

    int-to-double v12, v11

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    double-to-int v10, v12

    .line 6238
    .local v10, "velocity":I
    mul-int v11, p1, p1

    mul-int v12, p2, p2

    add-int/2addr v11, v12

    int-to-double v12, v11

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    double-to-int v4, v12

    .line 6239
    .local v4, "delta":I
    if-eqz v9, :cond_1

    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewFlinger;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v11}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getWidth()I

    move-result v3

    .line 6240
    .local v3, "containerSize":I
    :goto_1
    div-int/lit8 v8, v3, 0x2

    .line 6241
    .local v8, "halfContainerSize":I
    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    int-to-float v13, v4

    mul-float/2addr v12, v13

    int-to-float v13, v3

    div-float/2addr v12, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 6242
    .local v6, "distanceRatio":F
    int-to-float v11, v8

    int-to-float v12, v8

    .line 6243
    invoke-direct {p0, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewFlinger;->distanceInfluenceForSnapDuration(F)F

    move-result v13

    mul-float/2addr v12, v13

    add-float v5, v11, v12

    .line 6246
    .local v5, "distance":F
    if-lez v10, :cond_2

    .line 6247
    const/high16 v11, 0x447a0000    # 1000.0f

    int-to-float v12, v10

    div-float v12, v5, v12

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    mul-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    mul-int/lit8 v7, v11, 0x4

    .line 6252
    .end local v1    # "absDx":I
    .local v7, "duration":I
    :goto_2
    const/16 v11, 0x7d0

    invoke-static {v7, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    return v11

    .line 6236
    .end local v3    # "containerSize":I
    .end local v4    # "delta":I
    .end local v5    # "distance":F
    .end local v6    # "distanceRatio":F
    .end local v7    # "duration":I
    .end local v8    # "halfContainerSize":I
    .end local v9    # "horizontal":Z
    .end local v10    # "velocity":I
    .restart local v1    # "absDx":I
    :cond_0
    const/4 v9, 0x0

    goto :goto_0

    .line 6239
    .restart local v4    # "delta":I
    .restart local v9    # "horizontal":Z
    .restart local v10    # "velocity":I
    :cond_1
    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewFlinger;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v11}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getHeight()I

    move-result v3

    goto :goto_1

    .line 6249
    .restart local v3    # "containerSize":I
    .restart local v5    # "distance":F
    .restart local v6    # "distanceRatio":F
    .restart local v8    # "halfContainerSize":I
    :cond_2
    if-eqz v9, :cond_3

    .end local v1    # "absDx":I
    :goto_3
    int-to-float v0, v1

    .line 6250
    .local v0, "absDelta":F
    int-to-float v11, v3

    div-float v11, v0, v11

    const/high16 v12, 0x3f800000    # 1.0f

    add-float/2addr v11, v12

    const/high16 v12, 0x43960000    # 300.0f

    mul-float/2addr v11, v12

    float-to-int v7, v11

    .restart local v7    # "duration":I
    goto :goto_2

    .end local v0    # "absDelta":F
    .end local v7    # "duration":I
    .restart local v1    # "absDx":I
    :cond_3
    move v1, v2

    .line 6249
    goto :goto_3
.end method

.method private disableRunOnAnimationRequests()V
    .locals 1

    .prologue
    .line 6191
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    .line 6192
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    .line 6193
    return-void
.end method

.method private distanceInfluenceForSnapDuration(F)F
    .locals 4
    .param p1, "f"    # F

    .prologue
    .line 6228
    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    .line 6229
    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v0, v2

    double-to-float p1, v0

    .line 6230
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private enableRunOnAnimationRequests()V
    .locals 1

    .prologue
    .line 6196
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    .line 6197
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    if-eqz v0, :cond_0

    .line 6198
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewFlinger;->postOnAnimation()V

    .line 6200
    :cond_0
    return-void
.end method


# virtual methods
.method public fling(II)V
    .locals 9
    .param p1, "velocityX"    # I
    .param p2, "velocityY"    # I

    .prologue
    const v6, 0x7fffffff

    const/high16 v5, -0x80000000

    const/4 v1, 0x0

    .line 6212
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewFlinger;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->setScrollState(I)V

    .line 6213
    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewFlinger;->mLastFlingY:I

    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewFlinger;->mLastFlingX:I

    .line 6214
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewFlinger;->mScroller:Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;

    move v2, v1

    move v3, p1

    move v4, p2

    move v7, v5

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;->fling(IIIIIIII)V

    .line 6216
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewFlinger;->postOnAnimation()V

    .line 6217
    return-void
.end method

.method postOnAnimation()V
    .locals 1

    .prologue
    .line 6203
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    if-eqz v0, :cond_0

    .line 6204
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    .line 6209
    :goto_0
    return-void

    .line 6206
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewFlinger;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6207
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewFlinger;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public run()V
    .locals 23

    .prologue
    .line 6068
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewFlinger;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    move-object/from16 v20, v0

    if-nez v20, :cond_1

    .line 6069
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewFlinger;->stop()V

    .line 6188
    :cond_0
    :goto_0
    return-void

    .line 6072
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewFlinger;->disableRunOnAnimationRequests()V

    .line 6073
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewFlinger;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->consumePendingUpdateOperations()V

    .line 6076
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewFlinger;->mScroller:Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;

    .line 6077
    .local v12, "scroller":Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewFlinger;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v13, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->mSmoothScroller:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller;

    .line 6078
    .local v13, "smoothScroller":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller;
    invoke-virtual {v12}, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;->computeScrollOffset()Z

    move-result v20

    if-eqz v20, :cond_14

    .line 6079
    invoke-virtual {v12}, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;->getCurrX()I

    move-result v18

    .line 6080
    .local v18, "x":I
    invoke-virtual {v12}, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;->getCurrY()I

    move-result v19

    .line 6081
    .local v19, "y":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewFlinger;->mLastFlingX:I

    move/from16 v20, v0

    sub-int v4, v18, v20

    .line 6082
    .local v4, "dx":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewFlinger;->mLastFlingY:I

    move/from16 v20, v0

    sub-int v5, v19, v20

    .line 6083
    .local v5, "dy":I
    const/4 v9, 0x0

    .line 6084
    .local v9, "hresult":I
    const/16 v17, 0x0

    .line 6085
    .local v17, "vresult":I
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewFlinger;->mLastFlingX:I

    .line 6086
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewFlinger;->mLastFlingY:I

    .line 6087
    const/4 v10, 0x0

    .local v10, "overscrollX":I
    const/4 v11, 0x0

    .line 6088
    .local v11, "overscrollY":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewFlinger;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    move-object/from16 v20, v0

    if-eqz v20, :cond_4

    .line 6089
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewFlinger;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->eatRequestLayout()V

    .line 6090
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewFlinger;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->onEnterLayoutOrScroll()V

    .line 6091
    const-string v20, "RV Scroll"

    invoke-static/range {v20 .. v20}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 6092
    if-eqz v4, :cond_2

    .line 6093
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewFlinger;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewFlinger;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mRecycler:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewFlinger;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mState:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    move-object/from16 v22, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v4, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->scrollHorizontallyBy(ILcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;)I

    move-result v9

    .line 6094
    sub-int v10, v4, v9

    .line 6096
    :cond_2
    if-eqz v5, :cond_3

    .line 6097
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewFlinger;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewFlinger;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mRecycler:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewFlinger;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mState:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    move-object/from16 v22, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v5, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->scrollVerticallyBy(ILcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;)I

    move-result v17

    .line 6098
    sub-int v11, v5, v17

    .line 6100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewFlinger;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->access$4800(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)I

    move-result v20

    if-nez v20, :cond_3

    .line 6101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewFlinger;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-static/range {v20 .. v21}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->access$3700(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;I)V

    .line 6102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewFlinger;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-static/range {v20 .. v21}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->access$3800(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;I)V

    .line 6105
    :cond_3
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 6106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewFlinger;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->repositionShadowingViews()V

    .line 6108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewFlinger;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->onExitLayoutOrScroll()V

    .line 6109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewFlinger;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->resumeRequestLayout(Z)V

    .line 6111
    if-eqz v13, :cond_4

    invoke-virtual {v13}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller;->isPendingInitialRun()Z

    move-result v20

    if-nez v20, :cond_4

    .line 6112
    invoke-virtual {v13}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller;->isRunning()Z

    move-result v20

    if-eqz v20, :cond_4

    .line 6113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewFlinger;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mState:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->getItemCount()I

    move-result v3

    .line 6114
    .local v3, "adapterSize":I
    if-nez v3, :cond_17

    .line 6115
    invoke-virtual {v13}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller;->stop()V

    .line 6124
    .end local v3    # "adapterSize":I
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewFlinger;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_5

    .line 6125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewFlinger;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->invalidate()V

    .line 6127
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewFlinger;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getOverScrollMode()I

    move-result v20

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_6

    .line 6128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewFlinger;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->considerReleasingGlowsOnScroll(II)V

    .line 6130
    :cond_6
    if-nez v10, :cond_7

    if-eqz v11, :cond_d

    .line 6131
    :cond_7
    invoke-virtual {v12}, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;->getCurrVelocity()F

    move-result v20

    move/from16 v0, v20

    float-to-int v14, v0

    .line 6133
    .local v14, "vel":I
    const/4 v15, 0x0

    .line 6134
    .local v15, "velX":I
    move/from16 v0, v18

    if-eq v10, v0, :cond_8

    .line 6135
    if-gez v10, :cond_19

    neg-int v15, v14

    .line 6138
    :cond_8
    :goto_2
    const/16 v16, 0x0

    .line 6139
    .local v16, "velY":I
    move/from16 v0, v19

    if-eq v11, v0, :cond_9

    .line 6140
    if-gez v11, :cond_1b

    neg-int v0, v14

    move/from16 v16, v0

    .line 6143
    :cond_9
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewFlinger;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getOverScrollMode()I

    move-result v20

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_a

    .line 6144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewFlinger;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->absorbGlows(II)V

    .line 6146
    :cond_a
    if-nez v15, :cond_b

    move/from16 v0, v18

    if-eq v10, v0, :cond_b

    invoke-virtual {v12}, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;->getFinalX()I

    move-result v20

    if-nez v20, :cond_d

    :cond_b
    if-nez v16, :cond_c

    move/from16 v0, v19

    if-eq v11, v0, :cond_c

    .line 6147
    invoke-virtual {v12}, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;->getFinalY()I

    move-result v20

    if-nez v20, :cond_d

    .line 6148
    :cond_c
    invoke-virtual {v12}, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;->abortAnimation()V

    .line 6151
    .end local v14    # "vel":I
    .end local v15    # "velX":I
    .end local v16    # "velY":I
    :cond_d
    if-nez v9, :cond_e

    if-eqz v17, :cond_f

    .line 6152
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewFlinger;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v9, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->dispatchOnScrolled(II)V

    .line 6155
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewFlinger;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->access$5000(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)Z

    move-result v20

    if-nez v20, :cond_10

    .line 6156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewFlinger;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->invalidate()V

    .line 6159
    :cond_10
    if-eqz v5, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewFlinger;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v20

    if-eqz v20, :cond_1d

    move/from16 v0, v17

    if-ne v0, v5, :cond_1d

    const/4 v8, 0x1

    .line 6161
    .local v8, "fullyConsumedVertical":Z
    :goto_4
    if-eqz v4, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewFlinger;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v20

    if-eqz v20, :cond_1e

    if-ne v9, v4, :cond_1e

    const/4 v7, 0x1

    .line 6163
    .local v7, "fullyConsumedHorizontal":Z
    :goto_5
    if-nez v4, :cond_11

    if-eqz v5, :cond_12

    :cond_11
    if-nez v7, :cond_12

    if-eqz v8, :cond_1f

    :cond_12
    const/4 v6, 0x1

    .line 6166
    .local v6, "fullyConsumedAny":Z
    :goto_6
    invoke-virtual {v12}, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;->isFinished()Z

    move-result v20

    if-nez v20, :cond_13

    if-nez v6, :cond_20

    .line 6167
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewFlinger;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->setScrollState(I)V

    .line 6168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewFlinger;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mViewPrefetcher:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewPrefetcher;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewPrefetcher;->clearPrefetchPositions()V

    .line 6175
    .end local v4    # "dx":I
    .end local v5    # "dy":I
    .end local v6    # "fullyConsumedAny":Z
    .end local v7    # "fullyConsumedHorizontal":Z
    .end local v8    # "fullyConsumedVertical":Z
    .end local v9    # "hresult":I
    .end local v10    # "overscrollX":I
    .end local v11    # "overscrollY":I
    .end local v17    # "vresult":I
    .end local v18    # "x":I
    .end local v19    # "y":I
    :cond_14
    :goto_7
    if-eqz v13, :cond_16

    .line 6176
    invoke-virtual {v13}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller;->isPendingInitialRun()Z

    move-result v20

    if-eqz v20, :cond_15

    .line 6177
    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v13, v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller;->access$4900(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller;II)V

    .line 6179
    :cond_15
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    move/from16 v20, v0

    if-nez v20, :cond_16

    .line 6180
    invoke-virtual {v13}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller;->stop()V

    .line 6183
    :cond_16
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewFlinger;->enableRunOnAnimationRequests()V

    .line 6184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewFlinger;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->access$5100(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)Z

    move-result v20

    if-eqz v20, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewFlinger;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->access$1100(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)I

    move-result v20

    if-nez v20, :cond_0

    .line 6185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewFlinger;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->access$5200(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)V

    .line 6186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewFlinger;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->access$5102(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Z)Z

    goto/16 :goto_0

    .line 6116
    .restart local v3    # "adapterSize":I
    .restart local v4    # "dx":I
    .restart local v5    # "dy":I
    .restart local v9    # "hresult":I
    .restart local v10    # "overscrollX":I
    .restart local v11    # "overscrollY":I
    .restart local v17    # "vresult":I
    .restart local v18    # "x":I
    .restart local v19    # "y":I
    :cond_17
    invoke-virtual {v13}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller;->getTargetPosition()I

    move-result v20

    move/from16 v0, v20

    if-lt v0, v3, :cond_18

    .line 6117
    add-int/lit8 v20, v3, -0x1

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller;->setTargetPosition(I)V

    .line 6118
    sub-int v20, v4, v10

    sub-int v21, v5, v11

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v13, v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller;->access$4900(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller;II)V

    goto/16 :goto_1

    .line 6120
    :cond_18
    sub-int v20, v4, v10

    sub-int v21, v5, v11

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v13, v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller;->access$4900(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller;II)V

    goto/16 :goto_1

    .line 6135
    .end local v3    # "adapterSize":I
    .restart local v14    # "vel":I
    .restart local v15    # "velX":I
    :cond_19
    if-lez v10, :cond_1a

    move v15, v14

    goto/16 :goto_2

    :cond_1a
    const/4 v15, 0x0

    goto/16 :goto_2

    .line 6140
    .restart local v16    # "velY":I
    :cond_1b
    if-lez v11, :cond_1c

    move/from16 v16, v14

    goto/16 :goto_3

    :cond_1c
    const/16 v16, 0x0

    goto/16 :goto_3

    .line 6159
    .end local v14    # "vel":I
    .end local v15    # "velX":I
    .end local v16    # "velY":I
    :cond_1d
    const/4 v8, 0x0

    goto/16 :goto_4

    .line 6161
    .restart local v8    # "fullyConsumedVertical":Z
    :cond_1e
    const/4 v7, 0x0

    goto/16 :goto_5

    .line 6163
    .restart local v7    # "fullyConsumedHorizontal":Z
    :cond_1f
    const/4 v6, 0x0

    goto/16 :goto_6

    .line 6170
    .restart local v6    # "fullyConsumedAny":Z
    :cond_20
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewFlinger;->postOnAnimation()V

    .line 6171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewFlinger;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mViewPrefetcher:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewPrefetcher;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewPrefetcher;->postFromTraversal(II)V

    goto/16 :goto_7
.end method

.method public smoothScrollBy(II)V
    .locals 1
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    const/4 v0, 0x0

    .line 6220
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewFlinger;->smoothScrollBy(IIII)V

    .line 6221
    return-void
.end method

.method public smoothScrollBy(III)V
    .locals 1
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "duration"    # I

    .prologue
    .line 6256
    sget-object v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewFlinger;->smoothScrollBy(IIILandroid/view/animation/Interpolator;)V

    .line 6257
    return-void
.end method

.method public smoothScrollBy(IIII)V
    .locals 1
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "vx"    # I
    .param p4, "vy"    # I

    .prologue
    .line 6224
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewFlinger;->computeScrollDuration(IIII)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewFlinger;->smoothScrollBy(III)V

    .line 6225
    return-void
.end method

.method public smoothScrollBy(IIILandroid/view/animation/Interpolator;)V
    .locals 6
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "duration"    # I
    .param p4, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    const/4 v1, 0x0

    .line 6260
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewFlinger;->mInterpolator:Landroid/view/animation/Interpolator;

    if-eq v0, p4, :cond_0

    .line 6261
    iput-object p4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewFlinger;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 6262
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewFlinger;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, p4}, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewFlinger;->mScroller:Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;

    .line 6264
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewFlinger;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->setScrollState(I)V

    .line 6265
    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewFlinger;->mLastFlingY:I

    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewFlinger;->mLastFlingX:I

    .line 6266
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewFlinger;->mScroller:Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;

    move v2, v1

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;->startScroll(IIIII)V

    .line 6267
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewFlinger;->postOnAnimation()V

    .line 6268
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 6271
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewFlinger;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6272
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewFlinger;->mScroller:Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;->abortAnimation()V

    .line 6273
    return-void
.end method
