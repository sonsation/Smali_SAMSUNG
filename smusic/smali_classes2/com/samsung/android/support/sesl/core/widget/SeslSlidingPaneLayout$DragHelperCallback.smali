.class Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$DragHelperCallback;
.super Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper$Callback;
.source "SeslSlidingPaneLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DragHelperCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;)V
    .locals 0

    .prologue
    .line 1270
    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$DragHelperCallback;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper$Callback;-><init>()V

    .line 1271
    return-void
.end method


# virtual methods
.method public clampViewPositionHorizontal(Landroid/view/View;II)I
    .locals 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "dx"    # I

    .prologue
    .line 1337
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$DragHelperCallback;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;

    iget-object v4, v4, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;

    .line 1340
    .local v1, "lp":Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$DragHelperCallback;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1341
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$DragHelperCallback;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$DragHelperCallback;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;

    .line 1342
    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->getPaddingRight()I

    move-result v5

    iget v6, v1, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;->rightMargin:I

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$DragHelperCallback;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;

    iget-object v6, v6, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v5, v6

    sub-int v3, v4, v5

    .line 1343
    .local v3, "startBound":I
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$DragHelperCallback;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;

    iget v4, v4, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mSlideRange:I

    sub-int v0, v3, v4

    .line 1344
    .local v0, "endBound":I
    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1350
    .local v2, "newLeft":I
    :goto_0
    return v2

    .line 1346
    .end local v0    # "endBound":I
    .end local v2    # "newLeft":I
    .end local v3    # "startBound":I
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$DragHelperCallback;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->getPaddingLeft()I

    move-result v4

    iget v5, v1, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;->leftMargin:I

    add-int v3, v4, v5

    .line 1347
    .restart local v3    # "startBound":I
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$DragHelperCallback;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;

    iget v4, v4, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mSlideRange:I

    add-int v0, v3, v4

    .line 1348
    .restart local v0    # "endBound":I
    invoke-static {p2, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .restart local v2    # "newLeft":I
    goto :goto_0
.end method

.method public clampViewPositionVertical(Landroid/view/View;II)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "top"    # I
    .param p3, "dy"    # I

    .prologue
    .line 1357
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    return v0
.end method

.method public getViewHorizontalDragRange(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 1332
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$DragHelperCallback;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mSlideRange:I

    return v0
.end method

.method public onEdgeDragStarted(II)V
    .locals 2
    .param p1, "edgeFlags"    # I
    .param p2, "pointerId"    # I

    .prologue
    .line 1362
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$DragHelperCallback;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mDragHelper:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$DragHelperCallback;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v0, v1, p2}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->captureChildView(Landroid/view/View;I)V

    .line 1363
    return-void
.end method

.method public onViewCaptured(Landroid/view/View;I)V
    .locals 1
    .param p1, "capturedChild"    # Landroid/view/View;
    .param p2, "activePointerId"    # I

    .prologue
    .line 1299
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$DragHelperCallback;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->setAllChildrenVisible()V

    .line 1300
    return-void
.end method

.method public onViewDragStateChanged(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 1284
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$DragHelperCallback;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mDragHelper:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->getViewDragState()I

    move-result v0

    if-nez v0, :cond_0

    .line 1285
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$DragHelperCallback;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mSlideOffset:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 1286
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$DragHelperCallback;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$DragHelperCallback;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->updateObscuredViewsVisibility(Landroid/view/View;)V

    .line 1287
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$DragHelperCallback;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$DragHelperCallback;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->dispatchOnPanelClosed(Landroid/view/View;)V

    .line 1288
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$DragHelperCallback;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mPreservedOpenState:Z

    .line 1294
    :cond_0
    :goto_0
    return-void

    .line 1290
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$DragHelperCallback;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$DragHelperCallback;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->dispatchOnPanelOpened(Landroid/view/View;)V

    .line 1291
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$DragHelperCallback;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mPreservedOpenState:Z

    goto :goto_0
.end method

.method public onViewPositionChanged(Landroid/view/View;IIII)V
    .locals 1
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "dx"    # I
    .param p5, "dy"    # I

    .prologue
    .line 1304
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$DragHelperCallback;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;

    invoke-virtual {v0, p2}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->onPanelDragged(I)V

    .line 1305
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$DragHelperCallback;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->invalidate()V

    .line 1306
    return-void
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .locals 8
    .param p1, "releasedChild"    # Landroid/view/View;
    .param p2, "xvel"    # F
    .param p3, "yvel"    # F

    .prologue
    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v6, 0x0

    .line 1310
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;

    .line 1313
    .local v2, "lp":Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$DragHelperCallback;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1314
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$DragHelperCallback;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->getPaddingRight()I

    move-result v4

    iget v5, v2, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;->rightMargin:I

    add-int v3, v4, v5

    .line 1315
    .local v3, "startToRight":I
    cmpg-float v4, p2, v6

    if-ltz v4, :cond_0

    cmpl-float v4, p2, v6

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$DragHelperCallback;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;

    iget v4, v4, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mSlideOffset:F

    cmpl-float v4, v4, v7

    if-lez v4, :cond_1

    .line 1316
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$DragHelperCallback;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;

    iget v4, v4, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mSlideRange:I

    add-int/2addr v3, v4

    .line 1318
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$DragHelperCallback;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;

    iget-object v4, v4, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 1319
    .local v0, "childWidth":I
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$DragHelperCallback;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->getWidth()I

    move-result v4

    sub-int/2addr v4, v3

    sub-int v1, v4, v0

    .line 1326
    .end local v0    # "childWidth":I
    .end local v3    # "startToRight":I
    .local v1, "left":I
    :cond_2
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$DragHelperCallback;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;

    iget-object v4, v4, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mDragHelper:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v4, v1, v5}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->settleCapturedViewAt(II)Z

    .line 1327
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$DragHelperCallback;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->invalidate()V

    .line 1328
    return-void

    .line 1321
    .end local v1    # "left":I
    :cond_3
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$DragHelperCallback;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->getPaddingLeft()I

    move-result v4

    iget v5, v2, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;->leftMargin:I

    add-int v1, v4, v5

    .line 1322
    .restart local v1    # "left":I
    cmpl-float v4, p2, v6

    if-gtz v4, :cond_4

    cmpl-float v4, p2, v6

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$DragHelperCallback;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;

    iget v4, v4, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mSlideOffset:F

    cmpl-float v4, v4, v7

    if-lez v4, :cond_2

    .line 1323
    :cond_4
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$DragHelperCallback;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;

    iget v4, v4, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mSlideRange:I

    add-int/2addr v1, v4

    goto :goto_0
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "pointerId"    # I

    .prologue
    .line 1275
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$DragHelperCallback;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mIsUnableToDrag:Z

    if-eqz v0, :cond_0

    .line 1276
    const/4 v0, 0x0

    .line 1279
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;->slideable:Z

    goto :goto_0
.end method
