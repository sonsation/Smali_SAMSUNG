.class Landroid/widget/Editor$InsertionHandleView;
.super Landroid/widget/Editor$HandleView;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InsertionHandleView"
.end annotation


# static fields
.field private static final DELAY_BEFORE_HANDLE_FADES_OUT:I = 0xfa0

.field private static final RECENT_CUT_COPY_DURATION:I = 0x3a98


# instance fields
.field private mDownPositionX:F

.field private mDownPositionY:F

.field private mHider:Ljava/lang/Runnable;

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method public constructor <init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;)V
    .locals 6
    .param p1, "this$0"    # Landroid/widget/Editor;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 5474
    iput-object p1, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    .line 5475
    const v4, 0x102005a

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/Editor$HandleView;-><init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;ILandroid/widget/Editor$HandleView;)V

    .line 5476
    const/4 v0, 0x3

    iput v0, p0, Landroid/widget/Editor$InsertionHandleView;->mHandleType:I

    .line 5474
    return-void
.end method


# virtual methods
.method public getCurrentCursorOffset()I
    .locals 1

    .prologue
    .line 5632
    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    return v0
.end method

.method getCursorHorizontalPosition(Landroid/text/Layout;I)I
    .locals 4
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "offset"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 5566
    iget-object v2, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    iget v2, v2, Landroid/widget/Editor;->mCursorCount:I

    if-lez v2, :cond_0

    iget-object v2, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v2, v3

    .line 5567
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    if-eqz v0, :cond_1

    .line 5568
    invoke-virtual {p0, p1, p2}, Landroid/widget/Editor$InsertionHandleView;->getHorizontal(Landroid/text/Layout;I)F

    move-result v1

    .line 5569
    .local v1, "horizontal":F
    iget-object v2, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v2, v0, v1}, Landroid/widget/Editor;->-wrap15(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;F)I

    move-result v2

    iget-object v3, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-get13(Landroid/widget/Editor;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    return v2

    .line 5571
    .end local v1    # "horizontal":F
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/Editor$HandleView;->getCursorHorizontalPosition(Landroid/text/Layout;I)I

    move-result v2

    return v2
.end method

.method protected getCursorOffset()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 5555
    invoke-super {p0}, Landroid/widget/Editor$HandleView;->getCursorOffset()I

    move-result v1

    .line 5556
    .local v1, "offset":I
    iget-object v2, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    iget v2, v2, Landroid/widget/Editor;->mCursorCount:I

    if-lez v2, :cond_0

    iget-object v2, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v2, v3

    .line 5557
    .local v0, "cursor":Landroid/graphics/drawable/Drawable;
    :cond_0
    if-eqz v0, :cond_1

    .line 5558
    iget-object v2, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get13(Landroid/widget/Editor;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 5559
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-get13(Landroid/widget/Editor;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-get13(Landroid/widget/Editor;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 5561
    :cond_1
    return v1
.end method

.method protected getHorizontalGravity(Z)I
    .locals 1
    .param p1, "isRtlRun"    # Z

    .prologue
    .line 5550
    const/4 v0, 0x1

    return v0
.end method

.method protected getHotspotX(Landroid/graphics/drawable/Drawable;Z)I
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "isRtlRun"    # Z

    .prologue
    .line 5545
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method protected hideAfterDelay()V
    .locals 4

    .prologue
    .line 5522
    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->mHider:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 5523
    new-instance v0, Landroid/widget/Editor$InsertionHandleView$2;

    invoke-direct {v0, p0}, Landroid/widget/Editor$InsertionHandleView$2;-><init>(Landroid/widget/Editor$InsertionHandleView;)V

    iput-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->mHider:Ljava/lang/Runnable;

    .line 5534
    :goto_0
    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$InsertionHandleView;->mHider:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5521
    return-void

    .line 5532
    :cond_0
    invoke-virtual {p0}, Landroid/widget/Editor$InsertionHandleView;->removeHiderCallback()V

    goto :goto_0
.end method

.method protected isHandleViewScreenOut()Z
    .locals 1

    .prologue
    .line 5482
    const/4 v0, 0x0

    return v0
.end method

.method public onDetached()V
    .locals 0

    .prologue
    .line 5692
    invoke-super {p0}, Landroid/widget/Editor$HandleView;->onDetached()V

    .line 5693
    invoke-virtual {p0}, Landroid/widget/Editor$InsertionHandleView;->removeHiderCallback()V

    .line 5691
    return-void
.end method

.method onHandleMoved()V
    .locals 0

    .prologue
    .line 5686
    invoke-super {p0}, Landroid/widget/Editor$HandleView;->onHandleMoved()V

    .line 5687
    invoke-virtual {p0}, Landroid/widget/Editor$InsertionHandleView;->removeHiderCallback()V

    .line 5685
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 5576
    invoke-super {p0, p1}, Landroid/widget/Editor$HandleView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    .line 5578
    .local v3, "result":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 5627
    :cond_0
    :goto_0
    :pswitch_0
    return v3

    .line 5580
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    iput v6, p0, Landroid/widget/Editor$InsertionHandleView;->mDownPositionX:F

    .line 5581
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    iput v6, p0, Landroid/widget/Editor$InsertionHandleView;->mDownPositionY:F

    .line 5583
    iget-object v6, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v6}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 5584
    invoke-virtual {p0}, Landroid/widget/Editor$InsertionHandleView;->removeHiderCallback()V

    goto :goto_0

    .line 5589
    :pswitch_2
    invoke-virtual {p0}, Landroid/widget/Editor$InsertionHandleView;->offsetHasBeenChanged()Z

    move-result v6

    if-nez v6, :cond_3

    .line 5590
    iget v6, p0, Landroid/widget/Editor$InsertionHandleView;->mDownPositionX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    sub-float v0, v6, v7

    .line 5591
    .local v0, "deltaX":F
    iget v6, p0, Landroid/widget/Editor$InsertionHandleView;->mDownPositionY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    sub-float v1, v6, v7

    .line 5592
    .local v1, "deltaY":F
    mul-float v6, v0, v0

    mul-float v7, v1, v1

    add-float v2, v6, v7

    .line 5595
    .local v2, "distanceSquared":F
    iget-object v6, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v6}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 5594
    invoke-static {v6}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v5

    .line 5596
    .local v5, "viewConfiguration":Landroid/view/ViewConfiguration;
    invoke-virtual {v5}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v4

    .line 5598
    .local v4, "touchSlop":I
    mul-int v6, v4, v4

    int-to-float v6, v6

    cmpg-float v6, v2, v6

    if-gez v6, :cond_1

    .line 5600
    iget-object v6, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    iget-object v6, v6, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v6, :cond_2

    .line 5601
    iget-object v6, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v6}, Landroid/widget/Editor;->stopTextActionMode()V

    .line 5612
    .end local v0    # "deltaX":F
    .end local v1    # "deltaY":F
    .end local v2    # "distanceSquared":F
    .end local v4    # "touchSlop":I
    .end local v5    # "viewConfiguration":Landroid/view/ViewConfiguration;
    :cond_1
    :goto_1
    iget-object v6, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v6}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    iget-object v6, v6, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v6, :cond_4

    .line 5613
    invoke-virtual {p0}, Landroid/widget/Editor$InsertionHandleView;->removeHiderCallback()V

    goto :goto_0

    .line 5603
    .restart local v0    # "deltaX":F
    .restart local v1    # "deltaY":F
    .restart local v2    # "distanceSquared":F
    .restart local v4    # "touchSlop":I
    .restart local v5    # "viewConfiguration":Landroid/view/ViewConfiguration;
    :cond_2
    iget-object v6, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v6}, Landroid/widget/Editor;->startInsertionActionMode()V

    goto :goto_1

    .line 5607
    .end local v0    # "deltaX":F
    .end local v1    # "deltaY":F
    .end local v2    # "distanceSquared":F
    .end local v4    # "touchSlop":I
    .end local v5    # "viewConfiguration":Landroid/view/ViewConfiguration;
    :cond_3
    iget-object v6, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    iget-object v6, v6, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v6, :cond_1

    .line 5608
    iget-object v6, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    iget-object v6, v6, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    invoke-virtual {v6}, Landroid/view/ActionMode;->invalidateContentRect()V

    goto :goto_1

    .line 5615
    :cond_4
    invoke-virtual {p0}, Landroid/widget/Editor$InsertionHandleView;->hideAfterDelay()V

    goto/16 :goto_0

    .line 5620
    :pswitch_3
    invoke-virtual {p0}, Landroid/widget/Editor$InsertionHandleView;->hideAfterDelay()V

    goto/16 :goto_0

    .line 5578
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected removeHiderCallback()V
    .locals 2

    .prologue
    .line 5538
    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->mHider:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 5539
    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$InsertionHandleView;->mHider:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5537
    :cond_0
    return-void
.end method

.method public show()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    .line 5486
    invoke-super {p0}, Landroid/widget/Editor$HandleView;->show()V

    .line 5489
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sget-wide v4, Landroid/widget/TextView;->sLastCutCopyOrTextChangedTime:J

    sub-long v0, v2, v4

    .line 5492
    .local v0, "durationSinceCutOrCopy":J
    iget-object v2, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get2(Landroid/widget/Editor;)Ljava/lang/Runnable;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 5493
    iget-object v2, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get12(Landroid/widget/Editor;)I

    move-result v2

    if-eq v2, v6, :cond_0

    .line 5494
    iget-object v2, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get12(Landroid/widget/Editor;)I

    move-result v2

    if-ne v2, v7, :cond_3

    .line 5496
    :cond_0
    :goto_0
    iget-object v2, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-get2(Landroid/widget/Editor;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5501
    :cond_1
    iget-object v2, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get12(Landroid/widget/Editor;)I

    move-result v2

    if-eq v2, v6, :cond_2

    iget-object v2, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get12(Landroid/widget/Editor;)I

    move-result v2

    if-eq v2, v7, :cond_2

    .line 5502
    iget-object v2, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-wrap5(Landroid/widget/Editor;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 5485
    :cond_2
    :goto_1
    return-void

    .line 5495
    :cond_3
    iget-object v2, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-wrap5(Landroid/widget/Editor;)Z

    move-result v2

    .line 5492
    if-eqz v2, :cond_1

    goto :goto_0

    .line 5503
    :cond_4
    const-wide/16 v2, 0x3a98

    cmp-long v2, v0, v2

    if-gez v2, :cond_2

    .line 5504
    iget-object v2, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-nez v2, :cond_2

    .line 5505
    iget-object v2, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get2(Landroid/widget/Editor;)Ljava/lang/Runnable;

    move-result-object v2

    if-nez v2, :cond_5

    .line 5506
    iget-object v2, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    new-instance v3, Landroid/widget/Editor$InsertionHandleView$1;

    invoke-direct {v3, p0}, Landroid/widget/Editor$InsertionHandleView$1;-><init>(Landroid/widget/Editor$InsertionHandleView;)V

    invoke-static {v2, v3}, Landroid/widget/Editor;->-set0(Landroid/widget/Editor;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 5513
    :cond_5
    iget-object v2, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    .line 5514
    iget-object v3, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-get2(Landroid/widget/Editor;)Ljava/lang/Runnable;

    move-result-object v3

    .line 5515
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    int-to-long v4, v4

    .line 5513
    invoke-virtual {v2, v3, v4, v5}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method

.method public updatePosition(FF)V
    .locals 11
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 5642
    iget-object v9, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v9}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v5

    .line 5644
    .local v5, "layout":Landroid/text/Layout;
    if-eqz v5, :cond_3

    .line 5645
    iget v9, p0, Landroid/widget/Editor$InsertionHandleView;->mPreviousLineTouched:I

    const/4 v10, -0x1

    if-ne v9, v10, :cond_0

    .line 5646
    iget-object v9, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v9}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v9, p2}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result v9

    iput v9, p0, Landroid/widget/Editor$InsertionHandleView;->mPreviousLineTouched:I

    .line 5648
    :cond_0
    iget-object v9, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    iget v10, p0, Landroid/widget/Editor$InsertionHandleView;->mPreviousLineTouched:I

    invoke-static {v9, v5, v10, p2}, Landroid/widget/Editor;->-wrap16(Landroid/widget/Editor;Landroid/text/Layout;IF)I

    move-result v0

    .line 5649
    .local v0, "currLine":I
    invoke-virtual {p0, v5, v0, p1}, Landroid/widget/Editor$InsertionHandleView;->getOffsetAtCoordinate(Landroid/text/Layout;IF)I

    move-result v6

    .line 5651
    .local v6, "offset":I
    invoke-virtual {v5, v0}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v1

    .line 5652
    .local v1, "currentLineBottom":I
    iget v9, p0, Landroid/widget/Editor$InsertionHandleView;->mPreviousLineTouched:I

    invoke-virtual {v5, v9}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v7

    .line 5653
    .local v7, "previousLineBottom":I
    iget-object v9, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v9}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v9

    iget-object v10, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v10}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v10

    add-int v8, v9, v10

    .line 5654
    .local v8, "verticalOffset":I
    sub-int v9, v1, v7

    sub-int v2, v9, v8

    .line 5662
    .local v2, "diff":I
    iput v0, p0, Landroid/widget/Editor$InsertionHandleView;->mPreviousLineTouched:I

    .line 5664
    iget v9, p0, Landroid/widget/Editor$InsertionHandleView;->mTouchToWindowOffsetX:F

    add-float/2addr v9, p1

    iget v10, p0, Landroid/widget/Editor$InsertionHandleView;->mHotspotX:I

    int-to-float v10, v10

    sub-float/2addr v9, v10

    invoke-virtual {p0}, Landroid/widget/Editor$InsertionHandleView;->getHorizontalOffset()I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v9, v10

    iget v10, p0, Landroid/widget/Editor$InsertionHandleView;->mHorizontalOffset:F

    sub-float/2addr v9, v10

    float-to-int v3, v9

    .line 5665
    .local v3, "handlePositionX":I
    const/4 v4, 0x0

    .line 5667
    .local v4, "handlePositionY":I
    iget-boolean v9, p0, Landroid/widget/Editor$InsertionHandleView;->mIsVerticalScrolled:Z

    if-eqz v9, :cond_2

    .line 5668
    sub-int v4, v1, v2

    .line 5674
    :goto_0
    invoke-virtual {p0, v3, v4}, Landroid/widget/Editor$InsertionHandleView;->updatePositionImmediately(II)V

    .line 5678
    .end local v0    # "currLine":I
    .end local v1    # "currentLineBottom":I
    .end local v2    # "diff":I
    .end local v3    # "handlePositionX":I
    .end local v4    # "handlePositionY":I
    .end local v7    # "previousLineBottom":I
    .end local v8    # "verticalOffset":I
    :goto_1
    const/4 v9, 0x0

    invoke-virtual {p0, v6, v9}, Landroid/widget/Editor$InsertionHandleView;->positionAtCursorOffset(IZ)V

    .line 5679
    iget-object v9, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    iget-object v9, v9, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v9, :cond_1

    .line 5680
    iget-object v9, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    iget-object v9, v9, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    invoke-virtual {v9}, Landroid/view/ActionMode;->invalidate()V

    .line 5641
    :cond_1
    return-void

    .line 5670
    .restart local v0    # "currLine":I
    .restart local v1    # "currentLineBottom":I
    .restart local v2    # "diff":I
    .restart local v3    # "handlePositionX":I
    .restart local v4    # "handlePositionY":I
    .restart local v7    # "previousLineBottom":I
    .restart local v8    # "verticalOffset":I
    :cond_2
    iget v9, p0, Landroid/widget/Editor$InsertionHandleView;->mTouchToWindowOffsetY:F

    add-float/2addr v9, p2

    iget v10, p0, Landroid/widget/Editor$InsertionHandleView;->mTouchOffsetY:F

    sub-float/2addr v9, v10

    iget v10, p0, Landroid/widget/Editor$InsertionHandleView;->mVerticalScroll:F

    sub-float/2addr v9, v10

    iget v10, p0, Landroid/widget/Editor$InsertionHandleView;->mVerticalOffset:F

    sub-float/2addr v9, v10

    float-to-int v4, v9

    goto :goto_0

    .line 5676
    .end local v0    # "currLine":I
    .end local v1    # "currentLineBottom":I
    .end local v2    # "diff":I
    .end local v3    # "handlePositionX":I
    .end local v4    # "handlePositionY":I
    .end local v6    # "offset":I
    .end local v7    # "previousLineBottom":I
    .end local v8    # "verticalOffset":I
    :cond_3
    const/4 v6, -0x1

    .restart local v6    # "offset":I
    goto :goto_1
.end method

.method public updateSelection(I)V
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 5637
    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    invoke-static {v0, p1}, Landroid/widget/TextView;->semSetSelection(Landroid/text/Spannable;I)V

    .line 5636
    return-void
.end method
