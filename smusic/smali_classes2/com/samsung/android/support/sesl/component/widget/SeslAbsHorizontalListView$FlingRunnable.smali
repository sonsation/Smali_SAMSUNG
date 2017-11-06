.class Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;
.super Ljava/lang/Object;
.source "SeslAbsHorizontalListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlingRunnable"
.end annotation


# static fields
.field private static final FLYWHEEL_TIMEOUT:I = 0x28


# instance fields
.field private final mCheckFlywheel:Ljava/lang/Runnable;

.field private mLastFlingX:I

.field private final mScroller:Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;

.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;)V
    .locals 2

    .prologue
    .line 6326
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6300
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable$1;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;->mCheckFlywheel:Ljava/lang/Runnable;

    .line 6327
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;

    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;->mScroller:Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;

    .line 6328
    return-void
.end method

.method static synthetic access$2000(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;)Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;

    .prologue
    .line 6289
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;->mScroller:Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;

    return-object v0
.end method


# virtual methods
.method edgeReached(I)V
    .locals 6
    .param p1, "delta"    # I

    .prologue
    .line 6368
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;->mScroller:Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getScrollX()I

    move-result v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    iget v5, v5, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mOverflingDistance:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;->notifyHorizontalEdgeReached(III)V

    .line 6369
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getOverScrollMode()I

    move-result v0

    .line 6370
    .local v0, "overscrollMode":I
    if-eqz v0, :cond_0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    .line 6371
    invoke-static {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->access$2300(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 6372
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    const/4 v3, 0x6

    iput v3, v2, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mTouchMode:I

    .line 6373
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;->mScroller:Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;->getCurrVelocity()F

    move-result v2

    float-to-int v1, v2

    .line 6374
    .local v1, "vel":I
    if-lez p1, :cond_2

    .line 6375
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-static {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->access$2400(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;)Landroid/widget/EdgeEffect;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 6385
    .end local v1    # "vel":I
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->invalidate()V

    .line 6386
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-virtual {v2, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 6387
    return-void

    .line 6377
    .restart local v1    # "vel":I
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-static {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->access$2500(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;)Landroid/widget/EdgeEffect;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_0

    .line 6380
    .end local v1    # "vel":I
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    const/4 v3, -0x1

    iput v3, v2, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mTouchMode:I

    .line 6381
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    iget-object v2, v2, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mPositionScroller:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$AbsPositionScroller;

    if-eqz v2, :cond_1

    .line 6382
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    iget-object v2, v2, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mPositionScroller:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$AbsPositionScroller;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$AbsPositionScroller;->stop()V

    goto :goto_0
.end method

.method endFling()V
    .locals 2

    .prologue
    .line 6399
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    const/4 v1, -0x1

    iput v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mTouchMode:I

    .line 6401
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6402
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;->mCheckFlywheel:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6404
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->reportScrollStateChange(I)V

    .line 6405
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-static {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->access$2600(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;)V

    .line 6406
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;->mScroller:Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;->abortAnimation()V

    .line 6407
    return-void
.end method

.method flywheelTouch()V
    .locals 4

    .prologue
    .line 6410
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;->mCheckFlywheel:Ljava/lang/Runnable;

    const-wide/16 v2, 0x28

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 6411
    return-void
.end method

.method public run()V
    .locals 29

    .prologue
    .line 6415
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    iget v2, v2, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mTouchMode:I

    packed-switch v2, :pswitch_data_0

    .line 6417
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;->endFling()V

    .line 6542
    :cond_0
    :goto_0
    return-void

    .line 6421
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;->mScroller:Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_0

    .line 6426
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    iget-boolean v2, v2, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDataChanged:Z

    if-eqz v2, :cond_1

    .line 6427
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->layoutChildren()V

    .line 6430
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    iget v2, v2, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mItemCount:I

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildCount()I

    move-result v2

    if-nez v2, :cond_3

    .line 6431
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;->endFling()V

    goto :goto_0

    .line 6435
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;->mScroller:Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;

    move-object/from16 v26, v0

    .line 6436
    .local v26, "scroller":Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;
    invoke-virtual/range {v26 .. v26}, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;->computeScrollOffset()Z

    move-result v22

    .line 6437
    .local v22, "more":Z
    invoke-virtual/range {v26 .. v26}, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;->getCurrX()I

    move-result v28

    .line 6441
    .local v28, "x":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;->mLastFlingX:I

    sub-int v19, v2, v28

    .line 6444
    .local v19, "delta":I
    if-lez v19, :cond_6

    .line 6446
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    iget v4, v4, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFirstPosition:I

    iput v4, v2, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mMotionPosition:I

    .line 6447
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    .line 6448
    .local v20, "firstView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLeft()I

    move-result v4

    iput v4, v2, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mMotionViewOriginalLeft:I

    .line 6451
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getWidth()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v2, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v2, v4

    add-int/lit8 v2, v2, -0x1

    move/from16 v0, v19

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v19

    .line 6465
    .end local v20    # "firstView":Landroid/view/View;
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    iget v4, v4, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mMotionPosition:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    iget v6, v6, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFirstPosition:I

    sub-int/2addr v4, v6

    invoke-virtual {v2, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v23

    .line 6466
    .local v23, "motionView":Landroid/view/View;
    const/16 v25, 0x0

    .line 6467
    .local v25, "oldLeft":I
    if-eqz v23, :cond_4

    .line 6468
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getLeft()I

    move-result v25

    .line 6472
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    move/from16 v0, v19

    move/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->trackMotionScroll(II)Z

    move-result v14

    .line 6473
    .local v14, "atEdge":Z
    if-eqz v14, :cond_7

    if-eqz v19, :cond_7

    const/4 v15, 0x1

    .line 6475
    .local v15, "atEnd":Z
    :goto_2
    if-eqz v15, :cond_8

    .line 6476
    if-eqz v23, :cond_5

    .line 6478
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int v2, v2, v25

    sub-int v2, v19, v2

    neg-int v3, v2

    .line 6479
    .local v3, "overshoot":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-virtual {v6}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getScrollX()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    iget v9, v9, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mOverflingDistance:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v2 .. v11}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->access$2700(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;IIIIIIIIZ)Z

    .line 6482
    .end local v3    # "overshoot":I
    :cond_5
    if-eqz v22, :cond_0

    .line 6483
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;->edgeReached(I)V

    goto/16 :goto_0

    .line 6454
    .end local v14    # "atEdge":Z
    .end local v15    # "atEnd":Z
    .end local v23    # "motionView":Landroid/view/View;
    .end local v25    # "oldLeft":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildCount()I

    move-result v2

    add-int/lit8 v24, v2, -0x1

    .line 6455
    .local v24, "offsetToLast":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    iget v4, v4, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFirstPosition:I

    add-int v4, v4, v24

    iput v4, v2, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mMotionPosition:I

    .line 6457
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    move/from16 v0, v24

    invoke-virtual {v2, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    .line 6458
    .local v21, "lastView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getLeft()I

    move-result v4

    iput v4, v2, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mMotionViewOriginalLeft:I

    .line 6461
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getWidth()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v2, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v2, v4

    add-int/lit8 v2, v2, -0x1

    neg-int v2, v2

    move/from16 v0, v19

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v19

    goto/16 :goto_1

    .line 6473
    .end local v21    # "lastView":Landroid/view/View;
    .end local v24    # "offsetToLast":I
    .restart local v14    # "atEdge":Z
    .restart local v23    # "motionView":Landroid/view/View;
    .restart local v25    # "oldLeft":I
    :cond_7
    const/4 v15, 0x0

    goto/16 :goto_2

    .line 6488
    .restart local v15    # "atEnd":Z
    :cond_8
    if-eqz v22, :cond_a

    if-nez v15, :cond_a

    .line 6489
    if-eqz v14, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->invalidate()V

    .line 6490
    :cond_9
    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;->mLastFlingX:I

    .line 6491
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 6502
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-static {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->access$2800(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;)I

    move-result v2

    invoke-static {}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->access$2900()I

    move-result v4

    if-ne v2, v4, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    iget v2, v2, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFirstPosition:I

    if-nez v2, :cond_0

    if-nez v19, :cond_0

    if-nez v22, :cond_0

    .line 6505
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-static {}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->access$3000()I

    move-result v4

    invoke-static {v2, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->access$2802(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;I)I

    .line 6506
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-static {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->access$3100(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;)V

    goto/16 :goto_0

    .line 6493
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;->endFling()V

    goto :goto_3

    .line 6513
    .end local v14    # "atEdge":Z
    .end local v15    # "atEnd":Z
    .end local v19    # "delta":I
    .end local v22    # "more":Z
    .end local v23    # "motionView":Landroid/view/View;
    .end local v25    # "oldLeft":I
    .end local v26    # "scroller":Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;
    .end local v28    # "x":I
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;->mScroller:Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;

    move-object/from16 v26, v0

    .line 6514
    .restart local v26    # "scroller":Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;
    invoke-virtual/range {v26 .. v26}, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;->computeScrollOffset()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 6515
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getScrollX()I

    move-result v7

    .line 6516
    .local v7, "scrollX":I
    invoke-virtual/range {v26 .. v26}, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;->getCurrX()I

    move-result v18

    .line 6517
    .local v18, "currX":I
    sub-int v5, v18, v7

    .line 6518
    .local v5, "deltaX":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    iget v11, v2, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mOverflingDistance:I

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v4 .. v13}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->access$3200(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;IIIIIIIIZ)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 6520
    if-gtz v7, :cond_d

    if-lez v18, :cond_d

    const/16 v17, 0x1

    .line 6521
    .local v17, "crossRight":Z
    :goto_4
    if-ltz v7, :cond_e

    if-gez v18, :cond_e

    const/16 v16, 0x1

    .line 6522
    .local v16, "crossLeft":Z
    :goto_5
    if-nez v17, :cond_b

    if-eqz v16, :cond_f

    .line 6523
    :cond_b
    invoke-virtual/range {v26 .. v26}, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;->getCurrVelocity()F

    move-result v2

    float-to-int v0, v2

    move/from16 v27, v0

    .line 6524
    .local v27, "velocity":I
    if-eqz v16, :cond_c

    move/from16 v0, v27

    neg-int v0, v0

    move/from16 v27, v0

    .line 6527
    :cond_c
    invoke-virtual/range {v26 .. v26}, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;->abortAnimation()V

    .line 6528
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;->start(I)V

    goto/16 :goto_0

    .line 6520
    .end local v16    # "crossLeft":Z
    .end local v17    # "crossRight":Z
    .end local v27    # "velocity":I
    :cond_d
    const/16 v17, 0x0

    goto :goto_4

    .line 6521
    .restart local v17    # "crossRight":Z
    :cond_e
    const/16 v16, 0x0

    goto :goto_5

    .line 6530
    .restart local v16    # "crossLeft":Z
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;->startSpringback()V

    goto/16 :goto_0

    .line 6533
    .end local v16    # "crossLeft":Z
    .end local v17    # "crossRight":Z
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->invalidate()V

    .line 6534
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 6537
    .end local v5    # "deltaX":I
    .end local v7    # "scrollX":I
    .end local v18    # "currX":I
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;->endFling()V

    goto/16 :goto_0

    .line 6415
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method start(I)V
    .locals 9
    .param p1, "initialVelocity"    # I

    .prologue
    const v6, 0x7fffffff

    const/4 v2, 0x0

    .line 6331
    if-gez p1, :cond_0

    move v1, v6

    .line 6332
    .local v1, "initialX":I
    :goto_0
    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;->mLastFlingX:I

    .line 6333
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;->mScroller:Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 6334
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;->mScroller:Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;

    move v3, p1

    move v4, v2

    move v5, v2

    move v7, v2

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;->fling(IIIIIIII)V

    .line 6336
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    const/4 v2, 0x4

    iput v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mTouchMode:I

    .line 6337
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 6345
    return-void

    .end local v1    # "initialX":I
    :cond_0
    move v1, v2

    .line 6331
    goto :goto_0
.end method

.method startOverfling(I)V
    .locals 11
    .param p1, "initialVelocity"    # I

    .prologue
    const/4 v2, 0x0

    .line 6359
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;->mScroller:Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 6360
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;->mScroller:Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getScrollX()I

    move-result v1

    const/high16 v5, -0x80000000

    const v6, 0x7fffffff

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    .line 6361
    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getWidth()I

    move-result v9

    move v3, p1

    move v4, v2

    move v7, v2

    move v8, v2

    move v10, v2

    .line 6360
    invoke-virtual/range {v0 .. v10}, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;->fling(IIIIIIIIII)V

    .line 6362
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    const/4 v1, 0x6

    iput v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mTouchMode:I

    .line 6363
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->invalidate()V

    .line 6364
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 6365
    return-void
.end method

.method startScroll(IIZ)V
    .locals 6
    .param p1, "distance"    # I
    .param p2, "duration"    # I
    .param p3, "linear"    # Z

    .prologue
    const/4 v2, 0x0

    .line 6390
    if-gez p1, :cond_0

    const v1, 0x7fffffff

    .line 6391
    .local v1, "initialX":I
    :goto_0
    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;->mLastFlingX:I

    .line 6392
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;->mScroller:Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;

    if-eqz p3, :cond_1

    sget-object v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->sLinearInterpolator:Landroid/view/animation/Interpolator;

    :goto_1
    invoke-virtual {v3, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 6393
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;->mScroller:Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;

    move v3, p1

    move v4, v2

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;->startScroll(IIIII)V

    .line 6394
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    const/4 v2, 0x4

    iput v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mTouchMode:I

    .line 6395
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 6396
    return-void

    .end local v1    # "initialX":I
    :cond_0
    move v1, v2

    .line 6390
    goto :goto_0

    .line 6392
    .restart local v1    # "initialX":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method startSpringback()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 6348
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;->mScroller:Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getScrollX()I

    move-result v1

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6349
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    const/4 v1, 0x6

    iput v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mTouchMode:I

    .line 6350
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->invalidate()V

    .line 6351
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 6356
    :goto_0
    return-void

    .line 6353
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    const/4 v1, -0x1

    iput v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mTouchMode:I

    .line 6354
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->reportScrollStateChange(I)V

    goto :goto_0
.end method
