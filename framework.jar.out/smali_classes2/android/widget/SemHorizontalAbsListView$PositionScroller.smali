.class Landroid/widget/SemHorizontalAbsListView$PositionScroller;
.super Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;
.source "SemHorizontalAbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SemHorizontalAbsListView;
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

.field final synthetic this$0:Landroid/widget/SemHorizontalAbsListView;


# direct methods
.method constructor <init>(Landroid/widget/SemHorizontalAbsListView;)V
    .locals 1
    .param p1, "this$0"    # Landroid/widget/SemHorizontalAbsListView;

    .prologue
    .line 10021
    iput-object p1, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;-><init>()V

    .line 10022
    invoke-static {p1}, Landroid/widget/SemHorizontalAbsListView;->-get4(Landroid/widget/SemHorizontalAbsListView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledFadingEdgeLength()I

    move-result v0

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->mExtraScroll:I

    .line 10021
    return-void
.end method


# virtual methods
.method public run()V
    .locals 35

    .prologue
    .line 10296
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getWidth()I

    move-result v18

    .line 10297
    .local v18, "listWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v8, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 10299
    .local v8, "firstPos":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->mMode:I

    move/from16 v31, v0

    packed-switch v31, :pswitch_data_0

    .line 10295
    :cond_0
    :goto_0
    return-void

    .line 10301
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v31

    add-int/lit8 v13, v31, -0x1

    .line 10302
    .local v13, "lastViewIndex":I
    add-int v11, v8, v13

    .line 10304
    .local v11, "lastPos":I
    if-gez v13, :cond_1

    .line 10305
    return-void

    .line 10308
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->mLastSeenPos:I

    move/from16 v31, v0

    move/from16 v0, v31

    if-ne v11, v0, :cond_2

    .line 10310
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 10311
    return-void

    .line 10314
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 10315
    .local v12, "lastView":Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getWidth()I

    move-result v17

    .line 10316
    .local v17, "lastViewWidth":I
    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    move-result v14

    .line 10317
    .local v14, "lastViewLeft":I
    sub-int v15, v18, v14

    .line 10318
    .local v15, "lastViewPixelsShowing":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v31, v0

    add-int/lit8 v31, v31, -0x1

    move/from16 v0, v31

    if-ge v11, v0, :cond_3

    .line 10319
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->mExtraScroll:I

    move/from16 v32, v0

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 10321
    .local v7, "extraScroll":I
    :goto_1
    sub-int v31, v17, v15

    add-int v28, v31, v7

    .line 10322
    .local v28, "scrollBy":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v32, v0

    const/16 v33, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v28

    move/from16 v2, v32

    move/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/SemHorizontalAbsListView;->smoothScrollBy(IIZ)V

    .line 10324
    move-object/from16 v0, p0

    iput v11, v0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->mLastSeenPos:I

    .line 10325
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->mTargetPos:I

    move/from16 v31, v0

    move/from16 v0, v31

    if-ge v11, v0, :cond_0

    .line 10326
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 10319
    .end local v7    # "extraScroll":I
    .end local v28    # "scrollBy":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v7, v0, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 10332
    .end local v11    # "lastPos":I
    .end local v12    # "lastView":Landroid/view/View;
    .end local v13    # "lastViewIndex":I
    .end local v14    # "lastViewLeft":I
    .end local v15    # "lastViewPixelsShowing":I
    .end local v17    # "lastViewWidth":I
    :pswitch_1
    const/16 v22, 0x1

    .line 10333
    .local v22, "nextViewIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    .line 10335
    .local v4, "childCount":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->mBoundPos:I

    move/from16 v31, v0

    move/from16 v0, v31

    if-eq v8, v0, :cond_4

    const/16 v31, 0x1

    move/from16 v0, v31

    if-gt v4, v0, :cond_5

    .line 10337
    :cond_4
    return-void

    .line 10336
    :cond_5
    add-int v31, v8, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v32, v0

    move/from16 v0, v31

    move/from16 v1, v32

    if-ge v0, v1, :cond_4

    .line 10339
    add-int/lit8 v20, v8, 0x1

    .line 10341
    .local v20, "nextPos":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->mLastSeenPos:I

    move/from16 v31, v0

    move/from16 v0, v20

    move/from16 v1, v31

    if-ne v0, v1, :cond_6

    .line 10343
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 10344
    return-void

    .line 10347
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    invoke-virtual/range {v31 .. v32}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    .line 10348
    .local v21, "nextView":Landroid/view/View;
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getWidth()I

    move-result v24

    .line 10349
    .local v24, "nextViewWidth":I
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getLeft()I

    move-result v23

    .line 10350
    .local v23, "nextViewLeft":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->mExtraScroll:I

    move/from16 v32, v0

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 10351
    .restart local v7    # "extraScroll":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->mBoundPos:I

    move/from16 v31, v0

    move/from16 v0, v20

    move/from16 v1, v31

    if-ge v0, v1, :cond_7

    .line 10352
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    move-object/from16 v31, v0

    add-int v32, v24, v23

    sub-int v32, v32, v7

    const/16 v33, 0x0

    move/from16 v0, v33

    move/from16 v1, v32

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v32

    .line 10353
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v33, v0

    const/16 v34, 0x1

    .line 10352
    invoke-virtual/range {v31 .. v34}, Landroid/widget/SemHorizontalAbsListView;->smoothScrollBy(IIZ)V

    .line 10355
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->mLastSeenPos:I

    .line 10357
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 10359
    :cond_7
    move/from16 v0, v23

    if-le v0, v7, :cond_0

    .line 10360
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    move-object/from16 v31, v0

    sub-int v32, v23, v7

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v33, v0

    const/16 v34, 0x1

    invoke-virtual/range {v31 .. v34}, Landroid/widget/SemHorizontalAbsListView;->smoothScrollBy(IIZ)V

    goto/16 :goto_0

    .line 10367
    .end local v4    # "childCount":I
    .end local v7    # "extraScroll":I
    .end local v20    # "nextPos":I
    .end local v21    # "nextView":Landroid/view/View;
    .end local v22    # "nextViewIndex":I
    .end local v23    # "nextViewLeft":I
    .end local v24    # "nextViewWidth":I
    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->mLastSeenPos:I

    move/from16 v31, v0

    move/from16 v0, v31

    if-ne v8, v0, :cond_8

    .line 10369
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 10370
    return-void

    .line 10373
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-virtual/range {v31 .. v32}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 10374
    .local v9, "firstView":Landroid/view/View;
    if-nez v9, :cond_9

    .line 10375
    return-void

    .line 10377
    :cond_9
    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v10

    .line 10378
    .local v10, "firstViewLeft":I
    if-lez v8, :cond_a

    .line 10379
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->mExtraScroll:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v32, v0

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 10381
    .restart local v7    # "extraScroll":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    move-object/from16 v31, v0

    sub-int v32, v10, v7

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v33, v0

    const/16 v34, 0x1

    invoke-virtual/range {v31 .. v34}, Landroid/widget/SemHorizontalAbsListView;->smoothScrollBy(IIZ)V

    .line 10383
    move-object/from16 v0, p0

    iput v8, v0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->mLastSeenPos:I

    .line 10385
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->mTargetPos:I

    move/from16 v31, v0

    move/from16 v0, v31

    if-le v8, v0, :cond_b

    .line 10386
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 10379
    .end local v7    # "extraScroll":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v7, v0, Landroid/graphics/Rect;->left:I

    .restart local v7    # "extraScroll":I
    goto :goto_2

    .line 10387
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Landroid/widget/SemHorizontalAbsListView;->-get16(Landroid/widget/SemHorizontalAbsListView;)I

    move-result v31

    invoke-static {}, Landroid/widget/SemHorizontalAbsListView;->-get2()I

    move-result v32

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_0

    .line 10388
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    move-object/from16 v31, v0

    invoke-static {}, Landroid/widget/SemHorizontalAbsListView;->-get0()I

    move-result v32

    invoke-static/range {v31 .. v32}, Landroid/widget/SemHorizontalAbsListView;->-set3(Landroid/widget/SemHorizontalAbsListView;I)I

    goto/16 :goto_0

    .line 10394
    .end local v7    # "extraScroll":I
    .end local v9    # "firstView":Landroid/view/View;
    .end local v10    # "firstViewLeft":I
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v31

    add-int/lit8 v13, v31, -0x2

    .line 10395
    .restart local v13    # "lastViewIndex":I
    if-gez v13, :cond_c

    .line 10396
    return-void

    .line 10398
    :cond_c
    add-int v11, v8, v13

    .line 10400
    .restart local v11    # "lastPos":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->mLastSeenPos:I

    move/from16 v31, v0

    move/from16 v0, v31

    if-ne v11, v0, :cond_d

    .line 10402
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 10403
    return-void

    .line 10406
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 10407
    .restart local v12    # "lastView":Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getWidth()I

    move-result v17

    .line 10408
    .restart local v17    # "lastViewWidth":I
    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    move-result v14

    .line 10409
    .restart local v14    # "lastViewLeft":I
    sub-int v15, v18, v14

    .line 10410
    .restart local v15    # "lastViewPixelsShowing":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->mExtraScroll:I

    move/from16 v32, v0

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 10411
    .restart local v7    # "extraScroll":I
    move-object/from16 v0, p0

    iput v11, v0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->mLastSeenPos:I

    .line 10412
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->mBoundPos:I

    move/from16 v31, v0

    move/from16 v0, v31

    if-le v11, v0, :cond_e

    .line 10413
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    move-object/from16 v31, v0

    sub-int v32, v15, v7

    move/from16 v0, v32

    neg-int v0, v0

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v33, v0

    const/16 v34, 0x1

    invoke-virtual/range {v31 .. v34}, Landroid/widget/SemHorizontalAbsListView;->smoothScrollBy(IIZ)V

    .line 10414
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 10416
    :cond_e
    sub-int v26, v18, v7

    .line 10417
    .local v26, "right":I
    add-int v16, v14, v17

    .line 10418
    .local v16, "lastViewRight":I
    move/from16 v0, v26

    move/from16 v1, v16

    if-le v0, v1, :cond_0

    .line 10419
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    move-object/from16 v31, v0

    sub-int v32, v26, v16

    move/from16 v0, v32

    neg-int v0, v0

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v33, v0

    const/16 v34, 0x1

    invoke-virtual/range {v31 .. v34}, Landroid/widget/SemHorizontalAbsListView;->smoothScrollBy(IIZ)V

    goto/16 :goto_0

    .line 10426
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

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->mLastSeenPos:I

    move/from16 v31, v0

    move/from16 v0, v31

    if-ne v0, v8, :cond_f

    .line 10433
    :cond_f
    move-object/from16 v0, p0

    iput v8, v0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->mLastSeenPos:I

    .line 10435
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    .line 10436
    .restart local v4    # "childCount":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->mTargetPos:I

    move/from16 v25, v0

    .line 10437
    .local v25, "position":I
    add-int v31, v8, v4

    add-int/lit8 v11, v31, -0x1

    .line 10439
    .restart local v11    # "lastPos":I
    const/16 v30, 0x0

    .line 10440
    .local v30, "viewTravelCount":I
    move/from16 v0, v25

    if-ge v0, v8, :cond_11

    .line 10441
    sub-int v31, v8, v25

    add-int/lit8 v30, v31, 0x1

    .line 10447
    :cond_10
    :goto_3
    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v31, v0

    int-to-float v0, v4

    move/from16 v32, v0

    div-float v27, v31, v32

    .line 10449
    .local v27, "screenTravelCount":F
    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->abs(F)F

    move-result v31

    const/high16 v32, 0x3f800000    # 1.0f

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->min(FF)F

    move-result v19

    .line 10450
    .local v19, "modifier":F
    move/from16 v0, v25

    if-ge v0, v8, :cond_13

    .line 10451
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    move/from16 v31, v0

    if-eqz v31, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getWidth()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    mul-float v31, v31, v19

    :goto_4
    move/from16 v0, v31

    float-to-int v5, v0

    .line 10452
    .local v5, "distance":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    mul-float v31, v31, v19

    move/from16 v0, v31

    float-to-int v6, v0

    .line 10453
    .local v6, "duration":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v0, v5, v6, v1}, Landroid/widget/SemHorizontalAbsListView;->smoothScrollBy(IIZ)V

    .line 10454
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 10442
    .end local v5    # "distance":I
    .end local v6    # "duration":I
    .end local v19    # "modifier":F
    .end local v27    # "screenTravelCount":F
    :cond_11
    move/from16 v0, v25

    if-le v0, v11, :cond_10

    .line 10443
    sub-int v30, v25, v11

    goto :goto_3

    .line 10451
    .restart local v19    # "modifier":F
    .restart local v27    # "screenTravelCount":F
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getWidth()I

    move-result v31

    move/from16 v0, v31

    neg-int v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    mul-float v31, v31, v19

    goto :goto_4

    .line 10455
    :cond_13
    move/from16 v0, v25

    if-le v0, v11, :cond_15

    .line 10456
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    move/from16 v31, v0

    if-eqz v31, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getWidth()I

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

    .line 10457
    .restart local v5    # "distance":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    mul-float v31, v31, v19

    move/from16 v0, v31

    float-to-int v6, v0

    .line 10458
    .restart local v6    # "duration":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v0, v5, v6, v1}, Landroid/widget/SemHorizontalAbsListView;->smoothScrollBy(IIZ)V

    .line 10459
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 10456
    .end local v5    # "distance":I
    .end local v6    # "duration":I
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getWidth()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    mul-float v31, v31, v19

    goto :goto_5

    .line 10462
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    move-object/from16 v31, v0

    sub-int v32, v25, v8

    invoke-virtual/range {v31 .. v32}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getLeft()I

    move-result v29

    .line 10463
    .local v29, "targetLeft":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->mOffsetFromLeft:I

    move/from16 v31, v0

    sub-int v5, v29, v31

    .line 10464
    .restart local v5    # "distance":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    .line 10465
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/view/View;->getWidth()I

    move-result v33

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    div-float v32, v32, v33

    .line 10464
    mul-float v31, v31, v32

    move/from16 v0, v31

    float-to-int v6, v0

    .line 10466
    .restart local v6    # "duration":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v0, v5, v6, v1}, Landroid/widget/SemHorizontalAbsListView;->smoothScrollBy(IIZ)V

    goto/16 :goto_0

    .line 10299
    nop

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
    .line 10230
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget v6, v14, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 10231
    .local v6, "firstPos":I
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v14}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    .line 10232
    .local v5, "childCount":I
    add-int v14, v6, v5

    add-int/lit8 v7, v14, -0x1

    .line 10233
    .local v7, "lastPos":I
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget-object v14, v14, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v14, Landroid/graphics/Rect;->left:I

    .line 10234
    .local v8, "paddedLeft":I
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget-object v15, v15, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->right:I

    sub-int v9, v14, v15

    .line 10236
    .local v9, "paddedRight":I
    move/from16 v0, p1

    if-lt v0, v6, :cond_0

    move/from16 v0, p1

    if-le v0, v7, :cond_1

    .line 10237
    :cond_0
    const-string/jumbo v14, "SemHorizontalAbsListView"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "scrollToVisible called with targetPos "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 10238
    const-string/jumbo v16, " not visible ["

    .line 10237
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 10238
    const-string/jumbo v16, ", "

    .line 10237
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 10238
    const-string/jumbo v16, "]"

    .line 10237
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10240
    :cond_1
    move/from16 v0, p2

    if-lt v0, v6, :cond_2

    move/from16 v0, p2

    if-le v0, v7, :cond_3

    .line 10242
    :cond_2
    const/16 p2, -0x1

    .line 10245
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    sub-int v15, p1, v6

    invoke-virtual {v14, v15}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 10246
    .local v11, "targetChild":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v12

    .line 10247
    .local v12, "targetLeft":I
    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v13

    .line 10248
    .local v13, "targetRight":I
    const/4 v10, 0x0

    .line 10250
    .local v10, "scrollBy":I
    if-le v13, v9, :cond_4

    .line 10251
    sub-int v10, v13, v9

    .line 10253
    :cond_4
    if-ge v12, v8, :cond_5

    .line 10254
    sub-int v10, v12, v8

    .line 10257
    :cond_5
    if-nez v10, :cond_7

    .line 10258
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v14}, Landroid/widget/SemHorizontalAbsListView;->-get16(Landroid/widget/SemHorizontalAbsListView;)I

    move-result v14

    invoke-static {}, Landroid/widget/SemHorizontalAbsListView;->-get0()I

    move-result v15

    if-ne v14, v15, :cond_6

    .line 10259
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {}, Landroid/widget/SemHorizontalAbsListView;->-get1()I

    move-result v15

    invoke-static {v14, v15}, Landroid/widget/SemHorizontalAbsListView;->-set3(Landroid/widget/SemHorizontalAbsListView;I)I

    .line 10260
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v14}, Landroid/widget/SemHorizontalAbsListView;->-wrap7(Landroid/widget/SemHorizontalAbsListView;)V

    .line 10262
    :cond_6
    return-void

    .line 10265
    :cond_7
    if-ltz p2, :cond_8

    .line 10266
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    sub-int v15, p2, v6

    invoke-virtual {v14, v15}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 10267
    .local v2, "boundChild":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 10268
    .local v3, "boundLeft":I
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v4

    .line 10269
    .local v4, "boundRight":I
    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 10271
    .local v1, "absScroll":I
    if-gez v10, :cond_9

    add-int v14, v4, v1

    if-le v14, v9, :cond_9

    .line 10273
    sub-int v14, v4, v9

    const/4 v15, 0x0

    invoke-static {v15, v14}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 10280
    .end local v1    # "absScroll":I
    .end local v2    # "boundChild":Landroid/view/View;
    .end local v3    # "boundLeft":I
    .end local v4    # "boundRight":I
    :cond_8
    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    move/from16 v0, p3

    invoke-virtual {v14, v10, v0}, Landroid/widget/SemHorizontalAbsListView;->smoothScrollBy(II)V

    .line 10229
    return-void

    .line 10274
    .restart local v1    # "absScroll":I
    .restart local v2    # "boundChild":Landroid/view/View;
    .restart local v3    # "boundLeft":I
    .restart local v4    # "boundRight":I
    :cond_9
    if-lez v10, :cond_8

    sub-int v14, v3, v1

    if-ge v14, v8, :cond_8

    .line 10276
    sub-int v14, v3, v8

    const/4 v15, 0x0

    invoke-static {v15, v14}, Ljava/lang/Math;->min(II)I

    move-result v10

    goto :goto_0
.end method

.method public start(I)V
    .locals 9
    .param p1, "position"    # I

    .prologue
    const/16 v8, 0xc8

    const/4 v6, 0x0

    const/4 v7, -0x1

    .line 10030
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->stop()V

    .line 10032
    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget-boolean v5, v5, Landroid/widget/AdapterView;->mDataChanged:Z

    if-eqz v5, :cond_0

    .line 10034
    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    new-instance v6, Landroid/widget/SemHorizontalAbsListView$PositionScroller$1;

    invoke-direct {v6, p0, p1}, Landroid/widget/SemHorizontalAbsListView$PositionScroller$1;-><init>(Landroid/widget/SemHorizontalAbsListView$PositionScroller;I)V

    iput-object v6, v5, Landroid/widget/SemHorizontalAbsListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    .line 10039
    return-void

    .line 10042
    :cond_0
    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 10043
    .local v0, "childCount":I
    if-nez v0, :cond_1

    .line 10045
    return-void

    .line 10048
    :cond_1
    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget v2, v5, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 10049
    .local v2, "firstPos":I
    add-int v5, v2, v0

    add-int/lit8 v3, v5, -0x1

    .line 10052
    .local v3, "lastPos":I
    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v5}, Landroid/widget/AdapterView;->getCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-static {v5, p1}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 10053
    .local v1, "clampedPosition":I
    if-ge v1, v2, :cond_2

    .line 10054
    sub-int v5, v2, v1

    add-int/lit8 v4, v5, 0x1

    .line 10055
    .local v4, "viewTravelCount":I
    const/4 v5, 0x2

    iput v5, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->mMode:I

    .line 10067
    :goto_0
    if-lez v4, :cond_5

    .line 10068
    div-int v5, v8, v4

    iput v5, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->mScrollDuration:I

    .line 10072
    :goto_1
    iput v1, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->mTargetPos:I

    .line 10073
    iput v7, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->mBoundPos:I

    .line 10074
    iput v7, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->mLastSeenPos:I

    .line 10076
    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v5, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 10029
    return-void

    .line 10056
    .end local v4    # "viewTravelCount":I
    :cond_2
    if-le v1, v3, :cond_3

    .line 10057
    sub-int v5, v1, v3

    add-int/lit8 v4, v5, 0x1

    .line 10058
    .restart local v4    # "viewTravelCount":I
    const/4 v5, 0x1

    iput v5, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->mMode:I

    goto :goto_0

    .line 10060
    .end local v4    # "viewTravelCount":I
    :cond_3
    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v5}, Landroid/widget/SemHorizontalAbsListView;->-get16(Landroid/widget/SemHorizontalAbsListView;)I

    move-result v5

    invoke-static {}, Landroid/widget/SemHorizontalAbsListView;->-get2()I

    move-result v6

    if-ne v5, v6, :cond_4

    .line 10061
    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {}, Landroid/widget/SemHorizontalAbsListView;->-get0()I

    move-result v6

    invoke-static {v5, v6}, Landroid/widget/SemHorizontalAbsListView;->-set3(Landroid/widget/SemHorizontalAbsListView;I)I

    .line 10063
    :cond_4
    invoke-virtual {p0, v1, v7, v8}, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->scrollToVisible(III)V

    .line 10064
    return-void

    .line 10070
    .restart local v4    # "viewTravelCount":I
    :cond_5
    iput v8, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->mScrollDuration:I

    goto :goto_1
.end method

.method public start(II)V
    .locals 11
    .param p1, "position"    # I
    .param p2, "boundPosition"    # I

    .prologue
    .line 10084
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->stop()V

    .line 10086
    const/4 v9, -0x1

    if-ne p2, v9, :cond_0

    .line 10087
    invoke-virtual {p0, p1}, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->start(I)V

    .line 10088
    return-void

    .line 10091
    :cond_0
    iget-object v9, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget-boolean v9, v9, Landroid/widget/AdapterView;->mDataChanged:Z

    if-eqz v9, :cond_1

    .line 10093
    iget-object v9, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    new-instance v10, Landroid/widget/SemHorizontalAbsListView$PositionScroller$2;

    invoke-direct {v10, p0, p1, p2}, Landroid/widget/SemHorizontalAbsListView$PositionScroller$2;-><init>(Landroid/widget/SemHorizontalAbsListView$PositionScroller;II)V

    iput-object v10, v9, Landroid/widget/SemHorizontalAbsListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    .line 10098
    return-void

    .line 10101
    :cond_1
    iget-object v9, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 10102
    .local v3, "childCount":I
    if-nez v3, :cond_2

    .line 10104
    return-void

    .line 10107
    :cond_2
    iget-object v9, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget v5, v9, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 10108
    .local v5, "firstPos":I
    add-int v9, v5, v3

    add-int/lit8 v6, v9, -0x1

    .line 10111
    .local v6, "lastPos":I
    iget-object v9, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v9}, Landroid/widget/AdapterView;->getCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-static {v9, p1}, Ljava/lang/Math;->min(II)I

    move-result v9

    const/4 v10, 0x0

    invoke-static {v10, v9}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 10112
    .local v4, "clampedPosition":I
    if-ge v4, v5, :cond_5

    .line 10113
    sub-int v1, v6, p2

    .line 10114
    .local v1, "boundPosFromLast":I
    const/4 v9, 0x1

    if-ge v1, v9, :cond_3

    .line 10116
    return-void

    .line 10119
    :cond_3
    sub-int v9, v5, v4

    add-int/lit8 v7, v9, 0x1

    .line 10120
    .local v7, "posTravel":I
    add-int/lit8 v2, v1, -0x1

    .line 10121
    .local v2, "boundTravel":I
    if-ge v2, v7, :cond_4

    .line 10122
    move v8, v2

    .line 10123
    .local v8, "viewTravelCount":I
    const/4 v9, 0x4

    iput v9, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->mMode:I

    .line 10149
    .end local v1    # "boundPosFromLast":I
    :goto_0
    if-lez v8, :cond_9

    .line 10150
    const/16 v9, 0xc8

    div-int/2addr v9, v8

    iput v9, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->mScrollDuration:I

    .line 10154
    :goto_1
    iput v4, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->mTargetPos:I

    .line 10155
    iput p2, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->mBoundPos:I

    .line 10156
    const/4 v9, -0x1

    iput v9, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->mLastSeenPos:I

    .line 10158
    iget-object v9, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v9, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 10083
    return-void

    .line 10125
    .end local v8    # "viewTravelCount":I
    .restart local v1    # "boundPosFromLast":I
    :cond_4
    move v8, v7

    .line 10126
    .restart local v8    # "viewTravelCount":I
    const/4 v9, 0x2

    iput v9, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->mMode:I

    goto :goto_0

    .line 10128
    .end local v1    # "boundPosFromLast":I
    .end local v2    # "boundTravel":I
    .end local v7    # "posTravel":I
    .end local v8    # "viewTravelCount":I
    :cond_5
    if-le v4, v6, :cond_8

    .line 10129
    sub-int v0, p2, v5

    .line 10130
    .local v0, "boundPosFromFirst":I
    const/4 v9, 0x1

    if-ge v0, v9, :cond_6

    .line 10132
    return-void

    .line 10135
    :cond_6
    sub-int v9, v4, v6

    add-int/lit8 v7, v9, 0x1

    .line 10136
    .restart local v7    # "posTravel":I
    add-int/lit8 v2, v0, -0x1

    .line 10137
    .restart local v2    # "boundTravel":I
    if-ge v2, v7, :cond_7

    .line 10138
    move v8, v2

    .line 10139
    .restart local v8    # "viewTravelCount":I
    const/4 v9, 0x3

    iput v9, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->mMode:I

    goto :goto_0

    .line 10141
    .end local v8    # "viewTravelCount":I
    :cond_7
    move v8, v7

    .line 10142
    .restart local v8    # "viewTravelCount":I
    const/4 v9, 0x1

    iput v9, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->mMode:I

    goto :goto_0

    .line 10145
    .end local v0    # "boundPosFromFirst":I
    .end local v2    # "boundTravel":I
    .end local v7    # "posTravel":I
    .end local v8    # "viewTravelCount":I
    :cond_8
    const/16 v9, 0xc8

    invoke-virtual {p0, v4, p2, v9}, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->scrollToVisible(III)V

    .line 10146
    return-void

    .line 10152
    .restart local v2    # "boundTravel":I
    .restart local v7    # "posTravel":I
    .restart local v8    # "viewTravelCount":I
    :cond_9
    const/16 v9, 0xc8

    iput v9, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->mScrollDuration:I

    goto :goto_1
.end method

.method public startWithOffset(II)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "offset"    # I

    .prologue
    .line 10166
    const/16 v0, 0xc8

    invoke-virtual {p0, p1, p2, v0}, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->startWithOffset(III)V

    .line 10165
    return-void
.end method

.method public startWithOffset(III)V
    .locals 10
    .param p1, "position"    # I
    .param p2, "offset"    # I
    .param p3, "duration"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v9, -0x1

    .line 10174
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->stop()V

    .line 10176
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget-boolean v7, v7, Landroid/widget/AdapterView;->mDataChanged:Z

    if-eqz v7, :cond_0

    .line 10178
    move v3, p2

    .line 10179
    .local v3, "postOffset":I
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    new-instance v8, Landroid/widget/SemHorizontalAbsListView$PositionScroller$3;

    invoke-direct {v8, p0, p1, p2, p3}, Landroid/widget/SemHorizontalAbsListView$PositionScroller$3;-><init>(Landroid/widget/SemHorizontalAbsListView$PositionScroller;III)V

    iput-object v8, v7, Landroid/widget/SemHorizontalAbsListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    .line 10184
    return-void

    .line 10187
    .end local v3    # "postOffset":I
    :cond_0
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 10188
    .local v0, "childCount":I
    if-nez v0, :cond_1

    .line 10190
    return-void

    .line 10193
    :cond_1
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v7}, Landroid/view/View;->getPaddingLeft()I

    move-result v7

    add-int/2addr p2, v7

    .line 10195
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v7}, Landroid/widget/AdapterView;->getCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-static {v7, p1}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    iput v7, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->mTargetPos:I

    .line 10196
    iput p2, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->mOffsetFromLeft:I

    .line 10197
    iput v9, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->mBoundPos:I

    .line 10198
    iput v9, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->mLastSeenPos:I

    .line 10199
    const/4 v7, 0x5

    iput v7, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->mMode:I

    .line 10201
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget v1, v7, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 10202
    .local v1, "firstPos":I
    add-int v7, v1, v0

    add-int/lit8 v2, v7, -0x1

    .line 10205
    .local v2, "lastPos":I
    iget v7, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->mTargetPos:I

    if-ge v7, v1, :cond_2

    .line 10206
    iget v7, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->mTargetPos:I

    sub-int v6, v1, v7

    .line 10217
    .local v6, "viewTravelCount":I
    :goto_0
    int-to-float v7, v6

    int-to-float v8, v0

    div-float v4, v7, v8

    .line 10218
    .local v4, "screenTravelCount":F
    const/high16 v7, 0x3f800000    # 1.0f

    cmpg-float v7, v4, v7

    if-gez v7, :cond_4

    .end local p3    # "duration":I
    :goto_1
    iput p3, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->mScrollDuration:I

    .line 10220
    iput v9, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->mLastSeenPos:I

    .line 10222
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v7, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 10173
    return-void

    .line 10207
    .end local v4    # "screenTravelCount":F
    .end local v6    # "viewTravelCount":I
    .restart local p3    # "duration":I
    :cond_2
    iget v7, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->mTargetPos:I

    if-le v7, v2, :cond_3

    .line 10208
    iget v7, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->mTargetPos:I

    sub-int v6, v7, v2

    .restart local v6    # "viewTravelCount":I
    goto :goto_0

    .line 10211
    .end local v6    # "viewTravelCount":I
    :cond_3
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget v8, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->mTargetPos:I

    sub-int/2addr v8, v1

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v5

    .line 10212
    .local v5, "targetLeft":I
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    sub-int v8, v5, p2

    const/4 v9, 0x1

    invoke-virtual {v7, v8, p3, v9}, Landroid/widget/SemHorizontalAbsListView;->smoothScrollBy(IIZ)V

    .line 10213
    return-void

    .line 10219
    .end local v5    # "targetLeft":I
    .restart local v4    # "screenTravelCount":F
    .restart local v6    # "viewTravelCount":I
    :cond_4
    int-to-float v7, p3

    div-float/2addr v7, v4

    float-to-int p3, v7

    goto :goto_1
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 10288
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 10287
    return-void
.end method
