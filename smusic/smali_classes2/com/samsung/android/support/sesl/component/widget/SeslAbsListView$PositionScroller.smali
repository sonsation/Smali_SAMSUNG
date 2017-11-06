.class Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;
.super Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$AbsPositionScroller;
.source "SeslAbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;
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

.field private mOffsetFromTop:I

.field private mScrollDuration:I

.field private mStoredFirstPosition:I

.field private mTargetPos:I

.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)V
    .locals 1
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    .prologue
    .line 10140
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$AbsPositionScroller;-><init>()V

    .line 10141
    invoke-static {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->access$6900(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledFadingEdgeLength()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->mExtraScroll:I

    .line 10142
    return-void
.end method

.method private scrollToVisible(III)V
    .locals 17
    .param p1, "targetPos"    # I
    .param p2, "boundPos"    # I
    .param p3, "duration"    # I

    .prologue
    .line 10334
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    iget v6, v14, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFirstPosition:I

    .line 10335
    .local v6, "firstPos":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-virtual {v14}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildCount()I

    move-result v5

    .line 10336
    .local v5, "childCount":I
    add-int v14, v6, v5

    add-int/lit8 v7, v14, -0x1

    .line 10337
    .local v7, "lastPos":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    iget-object v14, v14, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v14, Landroid/graphics/Rect;->top:I

    .line 10338
    .local v9, "paddedTop":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-virtual {v14}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getHeight()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    iget-object v15, v15, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->bottom:I

    sub-int v8, v14, v15

    .line 10340
    .local v8, "paddedBottom":I
    move/from16 v0, p1

    if-lt v0, v6, :cond_0

    move/from16 v0, p1

    if-le v0, v7, :cond_1

    .line 10341
    :cond_0
    const-string v14, "SeslAbsListView"

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

    .line 10344
    :cond_1
    move/from16 v0, p2

    if-lt v0, v6, :cond_2

    move/from16 v0, p2

    if-le v0, v7, :cond_3

    .line 10346
    :cond_2
    const/16 p2, -0x1

    .line 10349
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    sub-int v15, p1, v6

    invoke-virtual {v14, v15}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 10350
    .local v12, "targetChild":Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v13

    .line 10351
    .local v13, "targetTop":I
    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    move-result v11

    .line 10352
    .local v11, "targetBottom":I
    const/4 v10, 0x0

    .line 10354
    .local v10, "scrollBy":I
    if-le v11, v8, :cond_4

    .line 10355
    sub-int v10, v11, v8

    .line 10357
    :cond_4
    if-ge v13, v9, :cond_5

    .line 10358
    sub-int v10, v13, v9

    .line 10361
    :cond_5
    if-nez v10, :cond_6

    .line 10381
    :goto_0
    return-void

    .line 10365
    :cond_6
    if-ltz p2, :cond_7

    .line 10366
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    sub-int v15, p2, v6

    invoke-virtual {v14, v15}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 10367
    .local v3, "boundChild":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v4

    .line 10368
    .local v4, "boundTop":I
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 10369
    .local v2, "boundBottom":I
    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 10371
    .local v1, "absScroll":I
    if-gez v10, :cond_8

    add-int v14, v2, v1

    if-le v14, v8, :cond_8

    .line 10373
    const/4 v14, 0x0

    sub-int v15, v2, v8

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 10380
    .end local v1    # "absScroll":I
    .end local v2    # "boundBottom":I
    .end local v3    # "boundChild":Landroid/view/View;
    .end local v4    # "boundTop":I
    :cond_7
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    move/from16 v0, p3

    invoke-virtual {v14, v10, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->smoothScrollBy(II)V

    goto :goto_0

    .line 10374
    .restart local v1    # "absScroll":I
    .restart local v2    # "boundBottom":I
    .restart local v3    # "boundChild":Landroid/view/View;
    .restart local v4    # "boundTop":I
    :cond_8
    if-lez v10, :cond_7

    sub-int v14, v4, v1

    if-ge v14, v9, :cond_7

    .line 10376
    const/4 v14, 0x0

    sub-int v15, v4, v9

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v10

    goto :goto_1
.end method


# virtual methods
.method public run()V
    .locals 35

    .prologue
    .line 10390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getHeight()I

    move-result v19

    .line 10391
    .local v19, "listHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v9, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFirstPosition:I

    .line 10393
    .local v9, "firstPos":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->mMode:I

    move/from16 v31, v0

    packed-switch v31, :pswitch_data_0

    .line 10576
    :cond_0
    :goto_0
    return-void

    .line 10395
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildCount()I

    move-result v31

    add-int/lit8 v16, v31, -0x1

    .line 10396
    .local v16, "lastViewIndex":I
    add-int v12, v9, v16

    .line 10398
    .local v12, "lastPos":I
    if-ltz v16, :cond_0

    .line 10402
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->mLastSeenPos:I

    move/from16 v31, v0

    move/from16 v0, v31

    if-ne v12, v0, :cond_1

    .line 10404
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 10408
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 10409
    .local v13, "lastView":Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    move-result v15

    .line 10410
    .local v15, "lastViewHeight":I
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v18

    .line 10411
    .local v18, "lastViewTop":I
    sub-int v17, v19, v18

    .line 10412
    .local v17, "lastViewPixelsShowing":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mItemCount:I

    move/from16 v31, v0

    add-int/lit8 v31, v31, -0x1

    move/from16 v0, v31

    if-ge v12, v0, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->mExtraScroll:I

    move/from16 v32, v0

    .line 10413
    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 10415
    .local v8, "extraScroll":I
    :goto_1
    sub-int v31, v15, v17

    add-int v28, v31, v8

    .line 10416
    .local v28, "scrollBy":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v32, v0

    const/16 v33, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v28

    move/from16 v2, v32

    move/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->smoothScrollBy(IIZ)V

    .line 10418
    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->mLastSeenPos:I

    .line 10419
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->mTargetPos:I

    move/from16 v31, v0

    move/from16 v0, v31

    if-ge v12, v0, :cond_0

    .line 10420
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 10413
    .end local v8    # "extraScroll":I
    .end local v28    # "scrollBy":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    .line 10426
    .end local v12    # "lastPos":I
    .end local v13    # "lastView":Landroid/view/View;
    .end local v15    # "lastViewHeight":I
    .end local v16    # "lastViewIndex":I
    .end local v17    # "lastViewPixelsShowing":I
    .end local v18    # "lastViewTop":I
    :pswitch_1
    const/16 v24, 0x1

    .line 10427
    .local v24, "nextViewIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildCount()I

    move-result v5

    .line 10429
    .local v5, "childCount":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->mBoundPos:I

    move/from16 v31, v0

    move/from16 v0, v31

    if-eq v9, v0, :cond_0

    const/16 v31, 0x1

    move/from16 v0, v31

    if-le v5, v0, :cond_0

    add-int v31, v9, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mItemCount:I

    move/from16 v32, v0

    move/from16 v0, v31

    move/from16 v1, v32

    if-ge v0, v1, :cond_0

    .line 10433
    add-int/lit8 v21, v9, 0x1

    .line 10435
    .local v21, "nextPos":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->mLastSeenPos:I

    move/from16 v31, v0

    move/from16 v0, v21

    move/from16 v1, v31

    if-ne v0, v1, :cond_3

    .line 10437
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 10441
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    invoke-virtual/range {v31 .. v32}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    .line 10442
    .local v22, "nextView":Landroid/view/View;
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getHeight()I

    move-result v23

    .line 10443
    .local v23, "nextViewHeight":I
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getTop()I

    move-result v25

    .line 10444
    .local v25, "nextViewTop":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->mExtraScroll:I

    move/from16 v32, v0

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 10445
    .restart local v8    # "extraScroll":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->mBoundPos:I

    move/from16 v31, v0

    move/from16 v0, v21

    move/from16 v1, v31

    if-ge v0, v1, :cond_4

    .line 10446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    add-int v33, v23, v25

    sub-int v33, v33, v8

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->max(II)I

    move-result v32

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v33, v0

    const/16 v34, 0x1

    invoke-virtual/range {v31 .. v34}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->smoothScrollBy(IIZ)V

    .line 10449
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->mLastSeenPos:I

    .line 10451
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 10453
    :cond_4
    move/from16 v0, v25

    if-le v0, v8, :cond_0

    .line 10454
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    move-object/from16 v31, v0

    sub-int v32, v25, v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v33, v0

    const/16 v34, 0x1

    invoke-virtual/range {v31 .. v34}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->smoothScrollBy(IIZ)V

    goto/16 :goto_0

    .line 10461
    .end local v5    # "childCount":I
    .end local v8    # "extraScroll":I
    .end local v21    # "nextPos":I
    .end local v22    # "nextView":Landroid/view/View;
    .end local v23    # "nextViewHeight":I
    .end local v24    # "nextViewIndex":I
    .end local v25    # "nextViewTop":I
    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->mLastSeenPos:I

    move/from16 v31, v0

    move/from16 v0, v31

    if-ne v9, v0, :cond_6

    .line 10463
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->access$7000(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)Z

    move-result v31

    if-eqz v31, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->access$7100(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)Z

    move-result v31

    if-eqz v31, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFirstPosition:I

    move/from16 v31, v0

    if-lez v31, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->mStoredFirstPosition:I

    move/from16 v31, v0

    move/from16 v0, v31

    if-ne v0, v9, :cond_5

    .line 10465
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    invoke-virtual/range {v31 .. v34}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->smoothScrollToPositionFromTop(III)V

    .line 10467
    :cond_5
    move-object/from16 v0, p0

    iput v9, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->mStoredFirstPosition:I

    .line 10469
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 10473
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-virtual/range {v31 .. v32}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 10474
    .local v10, "firstView":Landroid/view/View;
    if-eqz v10, :cond_0

    .line 10477
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v11

    .line 10478
    .local v11, "firstViewTop":I
    if-lez v9, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->mExtraScroll:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v32, v0

    .line 10479
    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 10481
    .restart local v8    # "extraScroll":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    move-object/from16 v31, v0

    sub-int v32, v11, v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v33, v0

    const/16 v34, 0x1

    invoke-virtual/range {v31 .. v34}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->smoothScrollBy(IIZ)V

    .line 10483
    move-object/from16 v0, p0

    iput v9, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->mLastSeenPos:I

    .line 10485
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->mTargetPos:I

    move/from16 v31, v0

    move/from16 v0, v31

    if-le v9, v0, :cond_0

    .line 10486
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 10479
    .end local v8    # "extraScroll":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v8, v0, Landroid/graphics/Rect;->top:I

    goto :goto_2

    .line 10492
    .end local v10    # "firstView":Landroid/view/View;
    .end local v11    # "firstViewTop":I
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildCount()I

    move-result v31

    add-int/lit8 v16, v31, -0x2

    .line 10493
    .restart local v16    # "lastViewIndex":I
    if-ltz v16, :cond_0

    .line 10496
    add-int v12, v9, v16

    .line 10498
    .restart local v12    # "lastPos":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->mLastSeenPos:I

    move/from16 v31, v0

    move/from16 v0, v31

    if-ne v12, v0, :cond_8

    .line 10500
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 10504
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 10505
    .restart local v13    # "lastView":Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    move-result v15

    .line 10506
    .restart local v15    # "lastViewHeight":I
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v18

    .line 10507
    .restart local v18    # "lastViewTop":I
    sub-int v17, v19, v18

    .line 10508
    .restart local v17    # "lastViewPixelsShowing":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->mExtraScroll:I

    move/from16 v32, v0

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 10509
    .restart local v8    # "extraScroll":I
    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->mLastSeenPos:I

    .line 10510
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->mBoundPos:I

    move/from16 v31, v0

    move/from16 v0, v31

    if-le v12, v0, :cond_9

    .line 10511
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    move-object/from16 v31, v0

    sub-int v32, v17, v8

    move/from16 v0, v32

    neg-int v0, v0

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v33, v0

    const/16 v34, 0x1

    invoke-virtual/range {v31 .. v34}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->smoothScrollBy(IIZ)V

    .line 10512
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 10514
    :cond_9
    sub-int v4, v19, v8

    .line 10515
    .local v4, "bottom":I
    add-int v14, v18, v15

    .line 10516
    .local v14, "lastViewBottom":I
    if-le v4, v14, :cond_0

    .line 10517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    move-object/from16 v31, v0

    sub-int v32, v4, v14

    move/from16 v0, v32

    neg-int v0, v0

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v33, v0

    const/16 v34, 0x1

    invoke-virtual/range {v31 .. v34}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->smoothScrollBy(IIZ)V

    goto/16 :goto_0

    .line 10524
    .end local v4    # "bottom":I
    .end local v8    # "extraScroll":I
    .end local v12    # "lastPos":I
    .end local v13    # "lastView":Landroid/view/View;
    .end local v14    # "lastViewBottom":I
    .end local v15    # "lastViewHeight":I
    .end local v16    # "lastViewIndex":I
    .end local v17    # "lastViewPixelsShowing":I
    .end local v18    # "lastViewTop":I
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->access$7000(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)Z

    move-result v31

    if-eqz v31, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->access$7100(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)Z

    move-result v31

    if-eqz v31, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFirstPosition:I

    move/from16 v31, v0

    if-nez v31, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->access$7200(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)Z

    move-result v31

    if-nez v31, :cond_a

    .line 10525
    const-string v31, "SeslAbsListView"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, " re calculate done3 mFirstPosition = "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFirstPosition:I

    move/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10526
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-static/range {v31 .. v32}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->access$7102(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;Z)Z

    goto/16 :goto_0

    .line 10529
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->mLastSeenPos:I

    move/from16 v31, v0

    move/from16 v0, v31

    if-ne v0, v9, :cond_b

    .line 10531
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 10535
    :cond_b
    move-object/from16 v0, p0

    iput v9, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->mLastSeenPos:I

    .line 10537
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildCount()I

    move-result v5

    .line 10538
    .restart local v5    # "childCount":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->mTargetPos:I

    move/from16 v26, v0

    .line 10539
    .local v26, "position":I
    add-int v31, v9, v5

    add-int/lit8 v12, v31, -0x1

    .line 10541
    .restart local v12    # "lastPos":I
    const/16 v30, 0x0

    .line 10542
    .local v30, "viewTravelCount":I
    move/from16 v0, v26

    if-ge v0, v9, :cond_d

    .line 10543
    sub-int v31, v9, v26

    add-int/lit8 v30, v31, 0x1

    .line 10549
    :cond_c
    :goto_3
    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v31, v0

    int-to-float v0, v5

    move/from16 v32, v0

    div-float v27, v31, v32

    .line 10551
    .local v27, "screenTravelCount":F
    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->abs(F)F

    move-result v31

    const/high16 v32, 0x3f800000    # 1.0f

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->min(FF)F

    move-result v20

    .line 10552
    .local v20, "modifier":F
    move/from16 v0, v26

    if-ge v0, v9, :cond_e

    .line 10553
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getHeight()I

    move-result v31

    move/from16 v0, v31

    neg-int v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    mul-float v31, v31, v20

    move/from16 v0, v31

    float-to-int v6, v0

    .line 10554
    .local v6, "distance":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    mul-float v31, v31, v20

    move/from16 v0, v31

    float-to-int v7, v0

    .line 10555
    .local v7, "duration":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v0, v6, v7, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->smoothScrollBy(IIZ)V

    .line 10556
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 10544
    .end local v6    # "distance":I
    .end local v7    # "duration":I
    .end local v20    # "modifier":F
    .end local v27    # "screenTravelCount":F
    :cond_d
    move/from16 v0, v26

    if-le v0, v12, :cond_c

    .line 10545
    sub-int v30, v26, v12

    goto :goto_3

    .line 10557
    .restart local v20    # "modifier":F
    .restart local v27    # "screenTravelCount":F
    :cond_e
    move/from16 v0, v26

    if-le v0, v12, :cond_f

    .line 10558
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getHeight()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    mul-float v31, v31, v20

    move/from16 v0, v31

    float-to-int v6, v0

    .line 10559
    .restart local v6    # "distance":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    mul-float v31, v31, v20

    move/from16 v0, v31

    float-to-int v7, v0

    .line 10560
    .restart local v7    # "duration":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v0, v6, v7, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->smoothScrollBy(IIZ)V

    .line 10561
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 10564
    .end local v6    # "distance":I
    .end local v7    # "duration":I
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    move-object/from16 v31, v0

    sub-int v32, v26, v9

    invoke-virtual/range {v31 .. v32}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getTop()I

    move-result v29

    .line 10565
    .local v29, "targetTop":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->mOffsetFromTop:I

    move/from16 v31, v0

    sub-int v6, v29, v31

    .line 10566
    .restart local v6    # "distance":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    .line 10567
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getHeight()I

    move-result v33

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    div-float v32, v32, v33

    mul-float v31, v31, v32

    move/from16 v0, v31

    float-to-int v7, v0

    .line 10568
    .restart local v7    # "duration":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v0, v6, v7, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->smoothScrollBy(IIZ)V

    goto/16 :goto_0

    .line 10393
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

.method public start(I)V
    .locals 9
    .param p1, "position"    # I

    .prologue
    const/16 v8, 0xc8

    const/4 v7, -0x1

    .line 10146
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->stop()V

    .line 10148
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    iget-boolean v5, v5, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDataChanged:Z

    if-eqz v5, :cond_1

    .line 10150
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    new-instance v6, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller$1;

    invoke-direct {v6, p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller$1;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;I)V

    iput-object v6, v5, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    .line 10190
    :cond_0
    :goto_0
    return-void

    .line 10158
    :cond_1
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildCount()I

    move-result v0

    .line 10159
    .local v0, "childCount":I
    if-eqz v0, :cond_0

    .line 10164
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    iget v2, v5, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFirstPosition:I

    .line 10165
    .local v2, "firstPos":I
    add-int v5, v2, v0

    add-int/lit8 v3, v5, -0x1

    .line 10168
    .local v3, "lastPos":I
    const/4 v5, 0x0

    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-virtual {v6}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-static {v6, p1}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 10169
    .local v1, "clampedPosition":I
    if-ge v1, v2, :cond_2

    .line 10170
    sub-int v5, v2, v1

    add-int/lit8 v4, v5, 0x1

    .line 10171
    .local v4, "viewTravelCount":I
    const/4 v5, 0x2

    iput v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->mMode:I

    .line 10180
    :goto_1
    if-lez v4, :cond_4

    .line 10181
    div-int v5, v8, v4

    iput v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->mScrollDuration:I

    .line 10185
    :goto_2
    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->mTargetPos:I

    .line 10186
    iput v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->mBoundPos:I

    .line 10187
    iput v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->mLastSeenPos:I

    .line 10189
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-virtual {v5, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 10172
    .end local v4    # "viewTravelCount":I
    :cond_2
    if-le v1, v3, :cond_3

    .line 10173
    sub-int v5, v1, v3

    add-int/lit8 v4, v5, 0x1

    .line 10174
    .restart local v4    # "viewTravelCount":I
    const/4 v5, 0x1

    iput v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->mMode:I

    goto :goto_1

    .line 10176
    .end local v4    # "viewTravelCount":I
    :cond_3
    invoke-direct {p0, v1, v7, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->scrollToVisible(III)V

    goto :goto_0

    .line 10183
    .restart local v4    # "viewTravelCount":I
    :cond_4
    iput v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->mScrollDuration:I

    goto :goto_2
.end method

.method public start(II)V
    .locals 11
    .param p1, "position"    # I
    .param p2, "boundPosition"    # I

    .prologue
    .line 10194
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->stop()V

    .line 10196
    const/4 v9, -0x1

    if-ne p2, v9, :cond_1

    .line 10197
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->start(I)V

    .line 10269
    :cond_0
    :goto_0
    return-void

    .line 10201
    :cond_1
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    iget-boolean v9, v9, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDataChanged:Z

    if-eqz v9, :cond_2

    .line 10203
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    new-instance v10, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller$2;

    invoke-direct {v10, p0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller$2;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;II)V

    iput-object v10, v9, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    goto :goto_0

    .line 10211
    :cond_2
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-virtual {v9}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildCount()I

    move-result v3

    .line 10212
    .local v3, "childCount":I
    if-eqz v3, :cond_0

    .line 10217
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    iget v5, v9, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFirstPosition:I

    .line 10218
    .local v5, "firstPos":I
    add-int v9, v5, v3

    add-int/lit8 v6, v9, -0x1

    .line 10221
    .local v6, "lastPos":I
    const/4 v9, 0x0

    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-virtual {v10}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getCount()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-static {v10, p1}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 10222
    .local v4, "clampedPosition":I
    if-ge v4, v5, :cond_4

    .line 10223
    sub-int v1, v6, p2

    .line 10224
    .local v1, "boundPosFromLast":I
    const/4 v9, 0x1

    if-lt v1, v9, :cond_0

    .line 10229
    sub-int v9, v5, v4

    add-int/lit8 v7, v9, 0x1

    .line 10230
    .local v7, "posTravel":I
    add-int/lit8 v2, v1, -0x1

    .line 10231
    .local v2, "boundTravel":I
    if-ge v2, v7, :cond_3

    .line 10232
    move v8, v2

    .line 10233
    .local v8, "viewTravelCount":I
    const/4 v9, 0x4

    iput v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->mMode:I

    .line 10259
    .end local v1    # "boundPosFromLast":I
    :goto_1
    if-lez v8, :cond_7

    .line 10260
    const/16 v9, 0xc8

    div-int/2addr v9, v8

    iput v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->mScrollDuration:I

    .line 10264
    :goto_2
    iput v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->mTargetPos:I

    .line 10265
    iput p2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->mBoundPos:I

    .line 10266
    const/4 v9, -0x1

    iput v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->mLastSeenPos:I

    .line 10268
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-virtual {v9, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 10235
    .end local v8    # "viewTravelCount":I
    .restart local v1    # "boundPosFromLast":I
    :cond_3
    move v8, v7

    .line 10236
    .restart local v8    # "viewTravelCount":I
    const/4 v9, 0x2

    iput v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->mMode:I

    goto :goto_1

    .line 10238
    .end local v1    # "boundPosFromLast":I
    .end local v2    # "boundTravel":I
    .end local v7    # "posTravel":I
    .end local v8    # "viewTravelCount":I
    :cond_4
    if-le v4, v6, :cond_6

    .line 10239
    sub-int v0, p2, v5

    .line 10240
    .local v0, "boundPosFromFirst":I
    const/4 v9, 0x1

    if-lt v0, v9, :cond_0

    .line 10245
    sub-int v9, v4, v6

    add-int/lit8 v7, v9, 0x1

    .line 10246
    .restart local v7    # "posTravel":I
    add-int/lit8 v2, v0, -0x1

    .line 10247
    .restart local v2    # "boundTravel":I
    if-ge v2, v7, :cond_5

    .line 10248
    move v8, v2

    .line 10249
    .restart local v8    # "viewTravelCount":I
    const/4 v9, 0x3

    iput v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->mMode:I

    goto :goto_1

    .line 10251
    .end local v8    # "viewTravelCount":I
    :cond_5
    move v8, v7

    .line 10252
    .restart local v8    # "viewTravelCount":I
    const/4 v9, 0x1

    iput v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->mMode:I

    goto :goto_1

    .line 10255
    .end local v0    # "boundPosFromFirst":I
    .end local v2    # "boundTravel":I
    .end local v7    # "posTravel":I
    .end local v8    # "viewTravelCount":I
    :cond_6
    const/16 v9, 0xc8

    invoke-direct {p0, v4, p2, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->scrollToVisible(III)V

    goto :goto_0

    .line 10262
    .restart local v2    # "boundTravel":I
    .restart local v7    # "posTravel":I
    .restart local v8    # "viewTravelCount":I
    :cond_7
    const/16 v9, 0xc8

    iput v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->mScrollDuration:I

    goto :goto_2
.end method

.method public startWithOffset(II)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "offset"    # I

    .prologue
    .line 10273
    const/16 v0, 0xc8

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->startWithOffset(III)V

    .line 10274
    return-void
.end method

.method public startWithOffset(III)V
    .locals 10
    .param p1, "position"    # I
    .param p2, "offset"    # I
    .param p3, "duration"    # I

    .prologue
    const/4 v9, -0x1

    .line 10278
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->stop()V

    .line 10280
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    iget-boolean v7, v7, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDataChanged:Z

    if-eqz v7, :cond_1

    .line 10282
    move v3, p2

    .line 10283
    .local v3, "postOffset":I
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    new-instance v8, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller$3;

    invoke-direct {v8, p0, p1, v3, p3}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller$3;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;III)V

    iput-object v8, v7, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    .line 10327
    .end local v3    # "postOffset":I
    .end local p3    # "duration":I
    :cond_0
    :goto_0
    return-void

    .line 10291
    .restart local p3    # "duration":I
    :cond_1
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-virtual {v7}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildCount()I

    move-result v0

    .line 10292
    .local v0, "childCount":I
    if-eqz v0, :cond_0

    .line 10297
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-virtual {v7}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getPaddingTop()I

    move-result v7

    add-int/2addr p2, v7

    .line 10299
    const/4 v7, 0x0

    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-virtual {v8}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-static {v8, p1}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    iput v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->mTargetPos:I

    .line 10300
    iput p2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->mOffsetFromTop:I

    .line 10301
    iput v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->mBoundPos:I

    .line 10302
    iput v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->mLastSeenPos:I

    .line 10303
    const/4 v7, 0x5

    iput v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->mMode:I

    .line 10305
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    iget v1, v7, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFirstPosition:I

    .line 10306
    .local v1, "firstPos":I
    add-int v7, v1, v0

    add-int/lit8 v2, v7, -0x1

    .line 10309
    .local v2, "lastPos":I
    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->mTargetPos:I

    if-ge v7, v1, :cond_2

    .line 10310
    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->mTargetPos:I

    sub-int v6, v1, v7

    .line 10321
    .local v6, "viewTravelCount":I
    :goto_1
    int-to-float v7, v6

    int-to-float v8, v0

    div-float v4, v7, v8

    .line 10322
    .local v4, "screenTravelCount":F
    const/high16 v7, 0x3f800000    # 1.0f

    cmpg-float v7, v4, v7

    if-gez v7, :cond_4

    .end local p3    # "duration":I
    :goto_2
    iput p3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->mScrollDuration:I

    .line 10324
    iput v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->mLastSeenPos:I

    .line 10326
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-virtual {v7, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 10311
    .end local v4    # "screenTravelCount":F
    .end local v6    # "viewTravelCount":I
    .restart local p3    # "duration":I
    :cond_2
    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->mTargetPos:I

    if-le v7, v2, :cond_3

    .line 10312
    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->mTargetPos:I

    sub-int v6, v7, v2

    .restart local v6    # "viewTravelCount":I
    goto :goto_1

    .line 10315
    .end local v6    # "viewTravelCount":I
    :cond_3
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    iget v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->mTargetPos:I

    sub-int/2addr v8, v1

    invoke-virtual {v7, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v5

    .line 10316
    .local v5, "targetTop":I
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    sub-int v8, v5, p2

    const/4 v9, 0x1

    invoke-virtual {v7, v8, p3, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->smoothScrollBy(IIZ)V

    goto :goto_0

    .line 10322
    .end local v5    # "targetTop":I
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
    .line 10385
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 10386
    return-void
.end method
