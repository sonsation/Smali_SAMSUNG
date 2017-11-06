.class Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;
.super Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$AbsPositionScroller;
.source "SeslAbsHorizontalListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PositionScroller"
.end annotation


# static fields
.field private static final MOVE_DOWN_BOUND:I = 0x3

.field private static final MOVE_DOWN_POS:I = 0x1

.field private static final MOVE_OFFSET:I = 0x5

.field private static final MOVE_UP_BOUND:I = 0x4

.field private static final MOVE_UP_POS:I = 0x2

.field private static final SCROLL_DURATION:I = 0xc8


# instance fields
.field private mBoundPos:I

.field private final mExtraScroll:I

.field private mLastSeenPos:I

.field private mMode:I

.field private mOffsetFromLeft:I

.field private mScrollDuration:I

.field private mTargetPos:I

.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;)V
    .locals 1
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    .prologue
    .line 9205
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$AbsPositionScroller;-><init>()V

    .line 9206
    invoke-static {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->access$4400(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledFadingEdgeLength()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->mExtraScroll:I

    .line 9207
    return-void
.end method


# virtual methods
.method public run()V
    .locals 35

    .prologue
    .line 9480
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getWidth()I

    move-result v18

    .line 9481
    .local v18, "listWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v8, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFirstPosition:I

    .line 9483
    .local v8, "firstPos":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->mMode:I

    move/from16 v31, v0

    packed-switch v31, :pswitch_data_0

    .line 9658
    :cond_0
    :goto_0
    return-void

    .line 9485
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildCount()I

    move-result v31

    add-int/lit8 v13, v31, -0x1

    .line 9486
    .local v13, "lastViewIndex":I
    add-int v11, v8, v13

    .line 9488
    .local v11, "lastPos":I
    if-ltz v13, :cond_0

    .line 9492
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->mLastSeenPos:I

    move/from16 v31, v0

    move/from16 v0, v31

    if-ne v11, v0, :cond_1

    .line 9494
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 9498
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v13}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 9499
    .local v12, "lastView":Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getWidth()I

    move-result v17

    .line 9500
    .local v17, "lastViewWidth":I
    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    move-result v14

    .line 9501
    .local v14, "lastViewLeft":I
    sub-int v15, v18, v14

    .line 9502
    .local v15, "lastViewPixelsShowing":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mItemCount:I

    move/from16 v31, v0

    add-int/lit8 v31, v31, -0x1

    move/from16 v0, v31

    if-ge v11, v0, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->mExtraScroll:I

    move/from16 v32, v0

    .line 9503
    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 9505
    .local v7, "extraScroll":I
    :goto_1
    sub-int v31, v17, v15

    add-int v28, v31, v7

    .line 9506
    .local v28, "scrollBy":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->mScrollDuration:I

    move/from16 v32, v0

    const/16 v33, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v28

    move/from16 v2, v32

    move/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->smoothScrollBy(IIZ)V

    .line 9508
    move-object/from16 v0, p0

    iput v11, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->mLastSeenPos:I

    .line 9509
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->mTargetPos:I

    move/from16 v31, v0

    move/from16 v0, v31

    if-ge v11, v0, :cond_0

    .line 9510
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 9503
    .end local v7    # "extraScroll":I
    .end local v28    # "scrollBy":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v7, v0, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 9516
    .end local v11    # "lastPos":I
    .end local v12    # "lastView":Landroid/view/View;
    .end local v13    # "lastViewIndex":I
    .end local v14    # "lastViewLeft":I
    .end local v15    # "lastViewPixelsShowing":I
    .end local v17    # "lastViewWidth":I
    :pswitch_1
    const/16 v22, 0x1

    .line 9517
    .local v22, "nextViewIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildCount()I

    move-result v4

    .line 9519
    .local v4, "childCount":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->mBoundPos:I

    move/from16 v31, v0

    move/from16 v0, v31

    if-eq v8, v0, :cond_0

    const/16 v31, 0x1

    move/from16 v0, v31

    if-le v4, v0, :cond_0

    add-int v31, v8, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mItemCount:I

    move/from16 v32, v0

    move/from16 v0, v31

    move/from16 v1, v32

    if-ge v0, v1, :cond_0

    .line 9523
    add-int/lit8 v20, v8, 0x1

    .line 9525
    .local v20, "nextPos":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->mLastSeenPos:I

    move/from16 v31, v0

    move/from16 v0, v20

    move/from16 v1, v31

    if-ne v0, v1, :cond_3

    .line 9527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 9531
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    invoke-virtual/range {v31 .. v32}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    .line 9532
    .local v21, "nextView":Landroid/view/View;
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getWidth()I

    move-result v24

    .line 9533
    .local v24, "nextViewWidth":I
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getLeft()I

    move-result v23

    .line 9534
    .local v23, "nextViewLeft":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->mExtraScroll:I

    move/from16 v32, v0

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 9535
    .restart local v7    # "extraScroll":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->mBoundPos:I

    move/from16 v31, v0

    move/from16 v0, v20

    move/from16 v1, v31

    if-ge v0, v1, :cond_4

    .line 9536
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    add-int v33, v24, v23

    sub-int v33, v33, v7

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->max(II)I

    move-result v32

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->mScrollDuration:I

    move/from16 v33, v0

    const/16 v34, 0x1

    invoke-virtual/range {v31 .. v34}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->smoothScrollBy(IIZ)V

    .line 9539
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->mLastSeenPos:I

    .line 9541
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 9543
    :cond_4
    move/from16 v0, v23

    if-le v0, v7, :cond_0

    .line 9544
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    move-object/from16 v31, v0

    sub-int v32, v23, v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->mScrollDuration:I

    move/from16 v33, v0

    const/16 v34, 0x1

    invoke-virtual/range {v31 .. v34}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->smoothScrollBy(IIZ)V

    goto/16 :goto_0

    .line 9551
    .end local v4    # "childCount":I
    .end local v7    # "extraScroll":I
    .end local v20    # "nextPos":I
    .end local v21    # "nextView":Landroid/view/View;
    .end local v22    # "nextViewIndex":I
    .end local v23    # "nextViewLeft":I
    .end local v24    # "nextViewWidth":I
    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->mLastSeenPos:I

    move/from16 v31, v0

    move/from16 v0, v31

    if-ne v8, v0, :cond_5

    .line 9553
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 9557
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-virtual/range {v31 .. v32}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 9558
    .local v9, "firstView":Landroid/view/View;
    if-eqz v9, :cond_0

    .line 9561
    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v10

    .line 9562
    .local v10, "firstViewLeft":I
    if-lez v8, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->mExtraScroll:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v32, v0

    .line 9563
    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 9565
    .restart local v7    # "extraScroll":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    move-object/from16 v31, v0

    sub-int v32, v10, v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->mScrollDuration:I

    move/from16 v33, v0

    const/16 v34, 0x1

    invoke-virtual/range {v31 .. v34}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->smoothScrollBy(IIZ)V

    .line 9567
    move-object/from16 v0, p0

    iput v8, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->mLastSeenPos:I

    .line 9569
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->mTargetPos:I

    move/from16 v31, v0

    move/from16 v0, v31

    if-le v8, v0, :cond_7

    .line 9570
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 9563
    .end local v7    # "extraScroll":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v7, v0, Landroid/graphics/Rect;->left:I

    goto :goto_2

    .line 9571
    .restart local v7    # "extraScroll":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->access$2800(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;)I

    move-result v31

    invoke-static {}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->access$4500()I

    move-result v32

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_0

    .line 9572
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    move-object/from16 v31, v0

    invoke-static {}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->access$2900()I

    move-result v32

    invoke-static/range {v31 .. v32}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->access$2802(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;I)I

    goto/16 :goto_0

    .line 9578
    .end local v7    # "extraScroll":I
    .end local v9    # "firstView":Landroid/view/View;
    .end local v10    # "firstViewLeft":I
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildCount()I

    move-result v31

    add-int/lit8 v13, v31, -0x2

    .line 9579
    .restart local v13    # "lastViewIndex":I
    if-ltz v13, :cond_0

    .line 9582
    add-int v11, v8, v13

    .line 9584
    .restart local v11    # "lastPos":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->mLastSeenPos:I

    move/from16 v31, v0

    move/from16 v0, v31

    if-ne v11, v0, :cond_8

    .line 9586
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 9590
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v13}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 9591
    .restart local v12    # "lastView":Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getWidth()I

    move-result v17

    .line 9592
    .restart local v17    # "lastViewWidth":I
    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    move-result v14

    .line 9593
    .restart local v14    # "lastViewLeft":I
    sub-int v15, v18, v14

    .line 9594
    .restart local v15    # "lastViewPixelsShowing":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->mExtraScroll:I

    move/from16 v32, v0

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 9595
    .restart local v7    # "extraScroll":I
    move-object/from16 v0, p0

    iput v11, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->mLastSeenPos:I

    .line 9596
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->mBoundPos:I

    move/from16 v31, v0

    move/from16 v0, v31

    if-le v11, v0, :cond_9

    .line 9597
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    move-object/from16 v31, v0

    sub-int v32, v15, v7

    move/from16 v0, v32

    neg-int v0, v0

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->mScrollDuration:I

    move/from16 v33, v0

    const/16 v34, 0x1

    invoke-virtual/range {v31 .. v34}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->smoothScrollBy(IIZ)V

    .line 9598
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 9600
    :cond_9
    sub-int v26, v18, v7

    .line 9601
    .local v26, "right":I
    add-int v16, v14, v17

    .line 9602
    .local v16, "lastViewRight":I
    move/from16 v0, v26

    move/from16 v1, v16

    if-le v0, v1, :cond_0

    .line 9603
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    move-object/from16 v31, v0

    sub-int v32, v26, v16

    move/from16 v0, v32

    neg-int v0, v0

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->mScrollDuration:I

    move/from16 v33, v0

    const/16 v34, 0x1

    invoke-virtual/range {v31 .. v34}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->smoothScrollBy(IIZ)V

    goto/16 :goto_0

    .line 9610
    .end local v7    # "extraScroll":I
    .end local v11    # "lastPos":I
    .end local v12    # "lastView":Landroid/view/View;
    .end local v13    # "lastViewIndex":I
    .end local v14    # "lastViewLeft":I
    .end local v15    # "lastViewPixelsShowing":I
    .end local v16    # "lastViewRight":I
    .end local v17    # "lastViewWidth":I
    .end local v26    # "right":I
    :pswitch_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->mLastSeenPos:I

    move/from16 v31, v0

    move/from16 v0, v31

    if-ne v0, v8, :cond_a

    .line 9617
    :cond_a
    move-object/from16 v0, p0

    iput v8, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->mLastSeenPos:I

    .line 9619
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildCount()I

    move-result v4

    .line 9620
    .restart local v4    # "childCount":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->mTargetPos:I

    move/from16 v25, v0

    .line 9621
    .local v25, "position":I
    add-int v31, v8, v4

    add-int/lit8 v11, v31, -0x1

    .line 9623
    .restart local v11    # "lastPos":I
    const/16 v30, 0x0

    .line 9624
    .local v30, "viewTravelCount":I
    move/from16 v0, v25

    if-ge v0, v8, :cond_c

    .line 9625
    sub-int v31, v8, v25

    add-int/lit8 v30, v31, 0x1

    .line 9631
    :cond_b
    :goto_3
    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v31, v0

    int-to-float v0, v4

    move/from16 v32, v0

    div-float v27, v31, v32

    .line 9633
    .local v27, "screenTravelCount":F
    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->abs(F)F

    move-result v31

    const/high16 v32, 0x3f800000    # 1.0f

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->min(FF)F

    move-result v19

    .line 9634
    .local v19, "modifier":F
    move/from16 v0, v25

    if-ge v0, v8, :cond_e

    .line 9635
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsRTL:Z

    move/from16 v31, v0

    if-eqz v31, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getWidth()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    mul-float v31, v31, v19

    :goto_4
    move/from16 v0, v31

    float-to-int v5, v0

    .line 9636
    .local v5, "distance":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->mScrollDuration:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    mul-float v31, v31, v19

    move/from16 v0, v31

    float-to-int v6, v0

    .line 9637
    .local v6, "duration":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v0, v5, v6, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->smoothScrollBy(IIZ)V

    .line 9638
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 9626
    .end local v5    # "distance":I
    .end local v6    # "duration":I
    .end local v19    # "modifier":F
    .end local v27    # "screenTravelCount":F
    :cond_c
    move/from16 v0, v25

    if-le v0, v11, :cond_b

    .line 9627
    sub-int v30, v25, v11

    goto :goto_3

    .line 9635
    .restart local v19    # "modifier":F
    .restart local v27    # "screenTravelCount":F
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getWidth()I

    move-result v31

    move/from16 v0, v31

    neg-int v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    mul-float v31, v31, v19

    goto :goto_4

    .line 9639
    :cond_e
    move/from16 v0, v25

    if-le v0, v11, :cond_10

    .line 9640
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsRTL:Z

    move/from16 v31, v0

    if-eqz v31, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getWidth()I

    move-result v31

    move/from16 v0, v31

    neg-int v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    mul-float v31, v31, v19

    :goto_5
    move/from16 v0, v31

    float-to-int v5, v0

    .line 9641
    .restart local v5    # "distance":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->mScrollDuration:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    mul-float v31, v31, v19

    move/from16 v0, v31

    float-to-int v6, v0

    .line 9642
    .restart local v6    # "duration":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v0, v5, v6, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->smoothScrollBy(IIZ)V

    .line 9643
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 9640
    .end local v5    # "distance":I
    .end local v6    # "duration":I
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getWidth()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    mul-float v31, v31, v19

    goto :goto_5

    .line 9646
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    move-object/from16 v31, v0

    sub-int v32, v25, v8

    invoke-virtual/range {v31 .. v32}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getLeft()I

    move-result v29

    .line 9647
    .local v29, "targetLeft":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->mOffsetFromLeft:I

    move/from16 v31, v0

    sub-int v5, v29, v31

    .line 9648
    .restart local v5    # "distance":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->mScrollDuration:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    .line 9649
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getWidth()I

    move-result v33

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    div-float v32, v32, v33

    mul-float v31, v31, v32

    move/from16 v0, v31

    float-to-int v6, v0

    .line 9650
    .restart local v6    # "duration":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v0, v5, v6, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->smoothScrollBy(IIZ)V

    goto/16 :goto_0

    .line 9483
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method scrollToVisible(III)V
    .locals 17
    .param p1, "targetPos"    # I
    .param p2, "boundPos"    # I
    .param p3, "duration"    # I

    .prologue
    .line 9414
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    iget v6, v14, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFirstPosition:I

    .line 9415
    .local v6, "firstPos":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-virtual {v14}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildCount()I

    move-result v5

    .line 9416
    .local v5, "childCount":I
    add-int v14, v6, v5

    add-int/lit8 v7, v14, -0x1

    .line 9417
    .local v7, "lastPos":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    iget-object v14, v14, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v14, Landroid/graphics/Rect;->left:I

    .line 9418
    .local v8, "paddedLeft":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-virtual {v14}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getWidth()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    iget-object v15, v15, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->right:I

    sub-int v9, v14, v15

    .line 9420
    .local v9, "paddedRight":I
    move/from16 v0, p1

    if-lt v0, v6, :cond_0

    move/from16 v0, p1

    if-le v0, v7, :cond_1

    .line 9421
    :cond_0
    const-string v14, "SeslHorizAbsListView"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "scrollToVisible called with targetPos "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " not visible ["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "]"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9424
    :cond_1
    move/from16 v0, p2

    if-lt v0, v6, :cond_2

    move/from16 v0, p2

    if-le v0, v7, :cond_3

    .line 9426
    :cond_2
    const/16 p2, -0x1

    .line 9429
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    sub-int v15, p1, v6

    invoke-virtual {v14, v15}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 9430
    .local v11, "targetChild":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v12

    .line 9431
    .local v12, "targetLeft":I
    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v13

    .line 9432
    .local v13, "targetRight":I
    const/4 v10, 0x0

    .line 9434
    .local v10, "scrollBy":I
    if-le v13, v9, :cond_4

    .line 9435
    sub-int v10, v13, v9

    .line 9437
    :cond_4
    if-ge v12, v8, :cond_5

    .line 9438
    sub-int v10, v12, v8

    .line 9441
    :cond_5
    if-nez v10, :cond_7

    .line 9442
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-static {v14}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->access$2800(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;)I

    move-result v14

    invoke-static {}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->access$2900()I

    move-result v15

    if-ne v14, v15, :cond_6

    .line 9443
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-static {}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->access$3000()I

    move-result v15

    invoke-static {v14, v15}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->access$2802(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;I)I

    .line 9444
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-static {v14}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->access$3100(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;)V

    .line 9465
    :cond_6
    :goto_0
    return-void

    .line 9449
    :cond_7
    if-ltz p2, :cond_8

    .line 9450
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    sub-int v15, p2, v6

    invoke-virtual {v14, v15}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 9451
    .local v2, "boundChild":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 9452
    .local v3, "boundLeft":I
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v4

    .line 9453
    .local v4, "boundRight":I
    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 9455
    .local v1, "absScroll":I
    if-gez v10, :cond_9

    add-int v14, v4, v1

    if-le v14, v9, :cond_9

    .line 9457
    const/4 v14, 0x0

    sub-int v15, v4, v9

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 9464
    .end local v1    # "absScroll":I
    .end local v2    # "boundChild":Landroid/view/View;
    .end local v3    # "boundLeft":I
    .end local v4    # "boundRight":I
    :cond_8
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    move/from16 v0, p3

    invoke-virtual {v14, v10, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->smoothScrollBy(II)V

    goto :goto_0

    .line 9458
    .restart local v1    # "absScroll":I
    .restart local v2    # "boundChild":Landroid/view/View;
    .restart local v3    # "boundLeft":I
    .restart local v4    # "boundRight":I
    :cond_9
    if-lez v10, :cond_8

    sub-int v14, v3, v1

    if-ge v14, v8, :cond_8

    .line 9460
    const/4 v14, 0x0

    sub-int v15, v3, v8

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v10

    goto :goto_1
.end method

.method public start(I)V
    .locals 9
    .param p1, "position"    # I

    .prologue
    const/16 v8, 0xc8

    const/4 v7, -0x1

    .line 9214
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->stop()V

    .line 9216
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    iget-boolean v5, v5, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDataChanged:Z

    if-eqz v5, :cond_1

    .line 9218
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    new-instance v6, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller$1;

    invoke-direct {v6, p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller$1;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;I)V

    iput-object v6, v5, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    .line 9261
    :cond_0
    :goto_0
    return-void

    .line 9226
    :cond_1
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildCount()I

    move-result v0

    .line 9227
    .local v0, "childCount":I
    if-eqz v0, :cond_0

    .line 9232
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    iget v2, v5, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFirstPosition:I

    .line 9233
    .local v2, "firstPos":I
    add-int v5, v2, v0

    add-int/lit8 v3, v5, -0x1

    .line 9236
    .local v3, "lastPos":I
    const/4 v5, 0x0

    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-virtual {v6}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-static {v6, p1}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 9237
    .local v1, "clampedPosition":I
    if-ge v1, v2, :cond_2

    .line 9238
    sub-int v5, v2, v1

    add-int/lit8 v4, v5, 0x1

    .line 9239
    .local v4, "viewTravelCount":I
    const/4 v5, 0x2

    iput v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->mMode:I

    .line 9251
    :goto_1
    if-lez v4, :cond_5

    .line 9252
    div-int v5, v8, v4

    iput v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->mScrollDuration:I

    .line 9256
    :goto_2
    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->mTargetPos:I

    .line 9257
    iput v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->mBoundPos:I

    .line 9258
    iput v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->mLastSeenPos:I

    .line 9260
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-virtual {v5, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 9240
    .end local v4    # "viewTravelCount":I
    :cond_2
    if-le v1, v3, :cond_3

    .line 9241
    sub-int v5, v1, v3

    add-int/lit8 v4, v5, 0x1

    .line 9242
    .restart local v4    # "viewTravelCount":I
    const/4 v5, 0x1

    iput v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->mMode:I

    goto :goto_1

    .line 9244
    .end local v4    # "viewTravelCount":I
    :cond_3
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-static {v5}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->access$2800(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;)I

    move-result v5

    invoke-static {}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->access$4500()I

    move-result v6

    if-ne v5, v6, :cond_4

    .line 9245
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-static {}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->access$2900()I

    move-result v6

    invoke-static {v5, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->access$2802(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;I)I

    .line 9247
    :cond_4
    invoke-virtual {p0, v1, v7, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->scrollToVisible(III)V

    goto :goto_0

    .line 9254
    .restart local v4    # "viewTravelCount":I
    :cond_5
    iput v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->mScrollDuration:I

    goto :goto_2
.end method

.method public start(II)V
    .locals 11
    .param p1, "position"    # I
    .param p2, "boundPosition"    # I

    .prologue
    .line 9268
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->stop()V

    .line 9270
    const/4 v9, -0x1

    if-ne p2, v9, :cond_1

    .line 9271
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->start(I)V

    .line 9343
    :cond_0
    :goto_0
    return-void

    .line 9275
    :cond_1
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    iget-boolean v9, v9, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDataChanged:Z

    if-eqz v9, :cond_2

    .line 9277
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    new-instance v10, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller$2;

    invoke-direct {v10, p0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller$2;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;II)V

    iput-object v10, v9, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    goto :goto_0

    .line 9285
    :cond_2
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-virtual {v9}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildCount()I

    move-result v3

    .line 9286
    .local v3, "childCount":I
    if-eqz v3, :cond_0

    .line 9291
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    iget v5, v9, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFirstPosition:I

    .line 9292
    .local v5, "firstPos":I
    add-int v9, v5, v3

    add-int/lit8 v6, v9, -0x1

    .line 9295
    .local v6, "lastPos":I
    const/4 v9, 0x0

    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-virtual {v10}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getCount()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-static {v10, p1}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 9296
    .local v4, "clampedPosition":I
    if-ge v4, v5, :cond_4

    .line 9297
    sub-int v1, v6, p2

    .line 9298
    .local v1, "boundPosFromLast":I
    const/4 v9, 0x1

    if-lt v1, v9, :cond_0

    .line 9303
    sub-int v9, v5, v4

    add-int/lit8 v7, v9, 0x1

    .line 9304
    .local v7, "posTravel":I
    add-int/lit8 v2, v1, -0x1

    .line 9305
    .local v2, "boundTravel":I
    if-ge v2, v7, :cond_3

    .line 9306
    move v8, v2

    .line 9307
    .local v8, "viewTravelCount":I
    const/4 v9, 0x4

    iput v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->mMode:I

    .line 9333
    .end local v1    # "boundPosFromLast":I
    :goto_1
    if-lez v8, :cond_7

    .line 9334
    const/16 v9, 0xc8

    div-int/2addr v9, v8

    iput v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->mScrollDuration:I

    .line 9338
    :goto_2
    iput v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->mTargetPos:I

    .line 9339
    iput p2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->mBoundPos:I

    .line 9340
    const/4 v9, -0x1

    iput v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->mLastSeenPos:I

    .line 9342
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-virtual {v9, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 9309
    .end local v8    # "viewTravelCount":I
    .restart local v1    # "boundPosFromLast":I
    :cond_3
    move v8, v7

    .line 9310
    .restart local v8    # "viewTravelCount":I
    const/4 v9, 0x2

    iput v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->mMode:I

    goto :goto_1

    .line 9312
    .end local v1    # "boundPosFromLast":I
    .end local v2    # "boundTravel":I
    .end local v7    # "posTravel":I
    .end local v8    # "viewTravelCount":I
    :cond_4
    if-le v4, v6, :cond_6

    .line 9313
    sub-int v0, p2, v5

    .line 9314
    .local v0, "boundPosFromFirst":I
    const/4 v9, 0x1

    if-lt v0, v9, :cond_0

    .line 9319
    sub-int v9, v4, v6

    add-int/lit8 v7, v9, 0x1

    .line 9320
    .restart local v7    # "posTravel":I
    add-int/lit8 v2, v0, -0x1

    .line 9321
    .restart local v2    # "boundTravel":I
    if-ge v2, v7, :cond_5

    .line 9322
    move v8, v2

    .line 9323
    .restart local v8    # "viewTravelCount":I
    const/4 v9, 0x3

    iput v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->mMode:I

    goto :goto_1

    .line 9325
    .end local v8    # "viewTravelCount":I
    :cond_5
    move v8, v7

    .line 9326
    .restart local v8    # "viewTravelCount":I
    const/4 v9, 0x1

    iput v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->mMode:I

    goto :goto_1

    .line 9329
    .end local v0    # "boundPosFromFirst":I
    .end local v2    # "boundTravel":I
    .end local v7    # "posTravel":I
    .end local v8    # "viewTravelCount":I
    :cond_6
    const/16 v9, 0xc8

    invoke-virtual {p0, v4, p2, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->scrollToVisible(III)V

    goto :goto_0

    .line 9336
    .restart local v2    # "boundTravel":I
    .restart local v7    # "posTravel":I
    .restart local v8    # "viewTravelCount":I
    :cond_7
    const/16 v9, 0xc8

    iput v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->mScrollDuration:I

    goto :goto_2
.end method

.method public startWithOffset(II)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "offset"    # I

    .prologue
    .line 9350
    const/16 v0, 0xc8

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->startWithOffset(III)V

    .line 9351
    return-void
.end method

.method public startWithOffset(III)V
    .locals 10
    .param p1, "position"    # I
    .param p2, "offset"    # I
    .param p3, "duration"    # I

    .prologue
    const/4 v9, -0x1

    .line 9358
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->stop()V

    .line 9360
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    iget-boolean v7, v7, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDataChanged:Z

    if-eqz v7, :cond_1

    .line 9362
    move v3, p2

    .line 9363
    .local v3, "postOffset":I
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    new-instance v8, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller$3;

    invoke-direct {v8, p0, p1, v3, p3}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller$3;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;III)V

    iput-object v8, v7, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    .line 9407
    .end local v3    # "postOffset":I
    .end local p3    # "duration":I
    :cond_0
    :goto_0
    return-void

    .line 9371
    .restart local p3    # "duration":I
    :cond_1
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-virtual {v7}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildCount()I

    move-result v0

    .line 9372
    .local v0, "childCount":I
    if-eqz v0, :cond_0

    .line 9377
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-virtual {v7}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getPaddingLeft()I

    move-result v7

    add-int/2addr p2, v7

    .line 9379
    const/4 v7, 0x0

    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-virtual {v8}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-static {v8, p1}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    iput v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->mTargetPos:I

    .line 9380
    iput p2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->mOffsetFromLeft:I

    .line 9381
    iput v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->mBoundPos:I

    .line 9382
    iput v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->mLastSeenPos:I

    .line 9383
    const/4 v7, 0x5

    iput v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->mMode:I

    .line 9385
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    iget v1, v7, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFirstPosition:I

    .line 9386
    .local v1, "firstPos":I
    add-int v7, v1, v0

    add-int/lit8 v2, v7, -0x1

    .line 9389
    .local v2, "lastPos":I
    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->mTargetPos:I

    if-ge v7, v1, :cond_2

    .line 9390
    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->mTargetPos:I

    sub-int v6, v1, v7

    .line 9401
    .local v6, "viewTravelCount":I
    :goto_1
    int-to-float v7, v6

    int-to-float v8, v0

    div-float v4, v7, v8

    .line 9402
    .local v4, "screenTravelCount":F
    const/high16 v7, 0x3f800000    # 1.0f

    cmpg-float v7, v4, v7

    if-gez v7, :cond_4

    .end local p3    # "duration":I
    :goto_2
    iput p3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->mScrollDuration:I

    .line 9404
    iput v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->mLastSeenPos:I

    .line 9406
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-virtual {v7, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 9391
    .end local v4    # "screenTravelCount":F
    .end local v6    # "viewTravelCount":I
    .restart local p3    # "duration":I
    :cond_2
    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->mTargetPos:I

    if-le v7, v2, :cond_3

    .line 9392
    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->mTargetPos:I

    sub-int v6, v7, v2

    .restart local v6    # "viewTravelCount":I
    goto :goto_1

    .line 9395
    .end local v6    # "viewTravelCount":I
    :cond_3
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    iget v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->mTargetPos:I

    sub-int/2addr v8, v1

    invoke-virtual {v7, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v5

    .line 9396
    .local v5, "targetLeft":I
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    sub-int v8, v5, p2

    const/4 v9, 0x1

    invoke-virtual {v7, v8, p3, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->smoothScrollBy(IIZ)V

    goto :goto_0

    .line 9402
    .end local v5    # "targetLeft":I
    .restart local v4    # "screenTravelCount":F
    .restart local v6    # "viewTravelCount":I
    :cond_4
    int-to-float v7, p3

    div-float/2addr v7, v4

    float-to-int p3, v7

    goto :goto_2
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 9472
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 9473
    return-void
.end method
