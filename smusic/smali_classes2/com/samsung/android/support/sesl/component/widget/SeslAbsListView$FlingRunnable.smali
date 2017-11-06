.class Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;
.super Ljava/lang/Object;
.source "SeslAbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlingRunnable"
.end annotation


# static fields
.field private static final FLYWHEEL_TIMEOUT:I = 0x28


# instance fields
.field private final mCheckFlywheel:Ljava/lang/Runnable;

.field private mLastFlingY:I

.field private final mScroller:Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;

.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)V
    .locals 2

    .prologue
    .line 6541
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6515
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable$1;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;->mCheckFlywheel:Ljava/lang/Runnable;

    .line 6542
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;

    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;->mScroller:Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;

    .line 6543
    return-void
.end method

.method static synthetic access$2900(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;)Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;

    .prologue
    .line 6504
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;->mScroller:Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;

    return-object v0
.end method


# virtual methods
.method edgeReached(I)V
    .locals 6
    .param p1, "delta"    # I

    .prologue
    .line 6602
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;->mScroller:Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getScrollY()I

    move-result v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    iget v5, v5, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mOverflingDistance:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;->notifyVerticalEdgeReached(III)V

    .line 6603
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getOverScrollMode()I

    move-result v0

    .line 6604
    .local v0, "overscrollMode":I
    if-eqz v0, :cond_0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    .line 6605
    invoke-static {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->access$3200(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 6606
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    const/4 v3, 0x6

    iput v3, v2, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mTouchMode:I

    .line 6607
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;->mScroller:Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;->getCurrVelocity()F

    move-result v2

    float-to-int v1, v2

    .line 6608
    .local v1, "vel":I
    if-lez p1, :cond_2

    .line 6609
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-static {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->access$3300(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)Landroid/widget/EdgeEffect;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 6619
    .end local v1    # "vel":I
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->invalidate()V

    .line 6620
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-virtual {v2, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 6621
    return-void

    .line 6611
    .restart local v1    # "vel":I
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-static {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->access$3400(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)Landroid/widget/EdgeEffect;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_0

    .line 6614
    .end local v1    # "vel":I
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    const/4 v3, -0x1

    iput v3, v2, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mTouchMode:I

    .line 6615
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    iget-object v2, v2, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPositionScroller:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$AbsPositionScroller;

    if-eqz v2, :cond_1

    .line 6616
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    iget-object v2, v2, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPositionScroller:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$AbsPositionScroller;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$AbsPositionScroller;->stop()V

    goto :goto_0
.end method

.method endFling()V
    .locals 2

    .prologue
    .line 6633
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    const/4 v1, -0x1

    iput v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mTouchMode:I

    .line 6635
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6636
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;->mCheckFlywheel:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6638
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->reportScrollStateChange(I)V

    .line 6639
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-static {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->access$3500(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)V

    .line 6640
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;->mScroller:Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;->abortAnimation()V

    .line 6641
    return-void
.end method

.method flywheelTouch()V
    .locals 4

    .prologue
    .line 6644
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;->mCheckFlywheel:Ljava/lang/Runnable;

    const-wide/16 v2, 0x28

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 6645
    return-void
.end method

.method public run()V
    .locals 29

    .prologue
    .line 6649
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    iget v2, v2, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mTouchMode:I

    packed-switch v2, :pswitch_data_0

    .line 6651
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;->endFling()V

    .line 6776
    :cond_0
    :goto_0
    return-void

    .line 6655
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;->mScroller:Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_0

    .line 6660
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    iget-boolean v2, v2, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDataChanged:Z

    if-eqz v2, :cond_1

    .line 6661
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->layoutChildren()V

    .line 6664
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    iget v2, v2, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mItemCount:I

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildCount()I

    move-result v2

    if-nez v2, :cond_3

    .line 6665
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;->endFling()V

    goto :goto_0

    .line 6669
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;->mScroller:Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;

    move-object/from16 v27, v0

    .line 6670
    .local v27, "scroller":Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;
    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;->computeScrollOffset()Z

    move-result v23

    .line 6671
    .local v23, "more":Z
    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;->getCurrY()I

    move-result v28

    .line 6675
    .local v28, "y":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;->mLastFlingY:I

    sub-int v20, v2, v28

    .line 6678
    .local v20, "delta":I
    if-lez v20, :cond_6

    .line 6680
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    iget v3, v3, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFirstPosition:I

    iput v3, v2, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mMotionPosition:I

    .line 6681
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    .line 6682
    .local v21, "firstView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getTop()I

    move-result v3

    iput v3, v2, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mMotionViewOriginalTop:I

    .line 6685
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getHeight()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    move/from16 v0, v20

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v20

    .line 6699
    .end local v21    # "firstView":Landroid/view/View;
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    iget v3, v3, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mMotionPosition:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    iget v5, v5, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFirstPosition:I

    sub-int/2addr v3, v5

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v24

    .line 6700
    .local v24, "motionView":Landroid/view/View;
    const/16 v26, 0x0

    .line 6701
    .local v26, "oldTop":I
    if-eqz v24, :cond_4

    .line 6702
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getTop()I

    move-result v26

    .line 6706
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    move/from16 v0, v20

    move/from16 v1, v20

    invoke-virtual {v2, v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->trackMotionScroll(II)Z

    move-result v15

    .line 6707
    .local v15, "atEdge":Z
    if-eqz v15, :cond_7

    if-eqz v20, :cond_7

    const/16 v16, 0x1

    .line 6708
    .local v16, "atEnd":Z
    :goto_2
    if-eqz v16, :cond_8

    .line 6709
    if-eqz v24, :cond_5

    .line 6711
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int v2, v2, v26

    sub-int v2, v20, v2

    neg-int v4, v2

    .line 6712
    .local v4, "overshoot":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-virtual {v6}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getScrollY()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    iget v10, v10, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mOverflingDistance:I

    const/4 v11, 0x0

    invoke-static/range {v2 .. v11}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->access$3600(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;IIIIIIIIZ)Z

    .line 6715
    .end local v4    # "overshoot":I
    :cond_5
    if-eqz v23, :cond_0

    .line 6716
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;->edgeReached(I)V

    goto/16 :goto_0

    .line 6688
    .end local v15    # "atEdge":Z
    .end local v16    # "atEnd":Z
    .end local v24    # "motionView":Landroid/view/View;
    .end local v26    # "oldTop":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildCount()I

    move-result v2

    add-int/lit8 v25, v2, -0x1

    .line 6689
    .local v25, "offsetToLast":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    iget v3, v3, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFirstPosition:I

    add-int v3, v3, v25

    iput v3, v2, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mMotionPosition:I

    .line 6691
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    move/from16 v0, v25

    invoke-virtual {v2, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    .line 6692
    .local v22, "lastView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getTop()I

    move-result v3

    iput v3, v2, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mMotionViewOriginalTop:I

    .line 6695
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getHeight()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    neg-int v2, v2

    move/from16 v0, v20

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v20

    goto/16 :goto_1

    .line 6707
    .end local v22    # "lastView":Landroid/view/View;
    .end local v25    # "offsetToLast":I
    .restart local v15    # "atEdge":Z
    .restart local v24    # "motionView":Landroid/view/View;
    .restart local v26    # "oldTop":I
    :cond_7
    const/16 v16, 0x0

    goto/16 :goto_2

    .line 6721
    .restart local v16    # "atEnd":Z
    :cond_8
    if-eqz v23, :cond_a

    if-nez v16, :cond_a

    .line 6722
    if-eqz v15, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->invalidate()V

    .line 6723
    :cond_9
    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;->mLastFlingY:I

    .line 6724
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 6735
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-static {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->access$3700(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)I

    move-result v2

    invoke-static {}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->access$3800()I

    move-result v3

    if-ne v2, v3, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    iget v2, v2, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFirstPosition:I

    if-nez v2, :cond_0

    if-nez v20, :cond_0

    if-nez v23, :cond_0

    .line 6738
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-static {}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->access$3900()I

    move-result v3

    invoke-static {v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->access$3702(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;I)I

    .line 6739
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-static {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->access$4000(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)V

    goto/16 :goto_0

    .line 6726
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;->endFling()V

    goto :goto_3

    .line 6745
    .end local v15    # "atEdge":Z
    .end local v16    # "atEnd":Z
    .end local v20    # "delta":I
    .end local v23    # "more":Z
    .end local v24    # "motionView":Landroid/view/View;
    .end local v26    # "oldTop":I
    .end local v27    # "scroller":Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;
    .end local v28    # "y":I
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;->mScroller:Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;

    move-object/from16 v27, v0

    .line 6746
    .restart local v27    # "scroller":Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;
    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;->computeScrollOffset()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 6747
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getScrollY()I

    move-result v9

    .line 6748
    .local v9, "scrollY":I
    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;->getCurrY()I

    move-result v19

    .line 6749
    .local v19, "currY":I
    sub-int v7, v19, v9

    .line 6750
    .local v7, "deltaY":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    iget v13, v2, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mOverflingDistance:I

    const/4 v14, 0x0

    invoke-static/range {v5 .. v14}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->access$4100(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;IIIIIIIIZ)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 6752
    if-gtz v9, :cond_b

    if-lez v19, :cond_b

    const/16 v17, 0x1

    .line 6753
    .local v17, "crossDown":Z
    :goto_4
    if-ltz v9, :cond_c

    if-gez v19, :cond_c

    const/16 v18, 0x1

    .line 6754
    .local v18, "crossUp":Z
    :goto_5
    if-nez v17, :cond_0

    if-nez v18, :cond_0

    .line 6764
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;->startSpringback()V

    goto/16 :goto_0

    .line 6752
    .end local v17    # "crossDown":Z
    .end local v18    # "crossUp":Z
    :cond_b
    const/16 v17, 0x0

    goto :goto_4

    .line 6753
    .restart local v17    # "crossDown":Z
    :cond_c
    const/16 v18, 0x0

    goto :goto_5

    .line 6767
    .end local v17    # "crossDown":Z
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->invalidate()V

    .line 6768
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 6771
    .end local v7    # "deltaY":I
    .end local v9    # "scrollY":I
    .end local v19    # "currY":I
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;->endFling()V

    goto/16 :goto_0

    .line 6649
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

    const/4 v1, 0x0

    .line 6546
    if-gez p1, :cond_0

    move v2, v6

    .line 6547
    .local v2, "initialY":I
    :goto_0
    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;->mLastFlingY:I

    .line 6548
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;->mScroller:Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 6549
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;->mScroller:Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;

    move v3, v1

    move v4, p1

    move v5, v1

    move v7, v1

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;->fling(IIIIIIII)V

    .line 6551
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    const/4 v1, 0x4

    iput v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mTouchMode:I

    .line 6552
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->invalidate()V

    .line 6553
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 6561
    return-void

    .end local v2    # "initialY":I
    :cond_0
    move v2, v1

    .line 6546
    goto :goto_0
.end method

.method start(IZ)V
    .locals 10
    .param p1, "initialVelocity"    # I
    .param p2, "accDisabled"    # Z

    .prologue
    const v6, 0x7fffffff

    const/4 v1, 0x0

    .line 6564
    if-gez p1, :cond_0

    move v2, v6

    .line 6565
    .local v2, "initialY":I
    :goto_0
    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;->mLastFlingY:I

    .line 6566
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;->mScroller:Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 6567
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;->mScroller:Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;

    move v3, v1

    move v4, p1

    move v5, v1

    move v7, v1

    move v8, v6

    move v9, p2

    invoke-virtual/range {v0 .. v9}, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;->fling(IIIIIIIIZ)V

    .line 6569
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    const/4 v1, 0x4

    iput v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mTouchMode:I

    .line 6570
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->invalidate()V

    .line 6571
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 6579
    return-void

    .end local v2    # "initialY":I
    :cond_0
    move v2, v1

    .line 6564
    goto :goto_0
.end method

.method startOverfling(I)V
    .locals 11
    .param p1, "initialVelocity"    # I

    .prologue
    const/4 v1, 0x0

    .line 6593
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;->mScroller:Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 6594
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;->mScroller:Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getScrollY()I

    move-result v2

    const/high16 v7, -0x80000000

    const v8, 0x7fffffff

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    .line 6595
    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getHeight()I

    move-result v10

    move v3, v1

    move v4, p1

    move v5, v1

    move v6, v1

    move v9, v1

    .line 6594
    invoke-virtual/range {v0 .. v10}, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;->fling(IIIIIIIIII)V

    .line 6596
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    const/4 v1, 0x6

    iput v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mTouchMode:I

    .line 6597
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->invalidate()V

    .line 6598
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 6599
    return-void
.end method

.method startScroll(IIZ)V
    .locals 6
    .param p1, "distance"    # I
    .param p2, "duration"    # I
    .param p3, "linear"    # Z

    .prologue
    const/4 v1, 0x0

    .line 6624
    if-gez p1, :cond_0

    const v2, 0x7fffffff

    .line 6625
    .local v2, "initialY":I
    :goto_0
    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;->mLastFlingY:I

    .line 6626
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;->mScroller:Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;

    if-eqz p3, :cond_1

    sget-object v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->sLinearInterpolator:Landroid/view/animation/Interpolator;

    :goto_1
    invoke-virtual {v3, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 6627
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;->mScroller:Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;

    move v3, v1

    move v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;->startScroll(IIIII)V

    .line 6628
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    const/4 v1, 0x4

    iput v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mTouchMode:I

    .line 6629
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 6630
    return-void

    .end local v2    # "initialY":I
    :cond_0
    move v2, v1

    .line 6624
    goto :goto_0

    .line 6626
    .restart local v2    # "initialY":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method startSpringback()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 6582
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;->mScroller:Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getScrollY()I

    move-result v2

    move v3, v1

    move v4, v1

    move v5, v1

    move v6, v1

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6583
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    const/4 v1, 0x6

    iput v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mTouchMode:I

    .line 6584
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->invalidate()V

    .line 6585
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 6590
    :goto_0
    return-void

    .line 6587
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    const/4 v2, -0x1

    iput v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mTouchMode:I

    .line 6588
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->reportScrollStateChange(I)V

    goto :goto_0
.end method
