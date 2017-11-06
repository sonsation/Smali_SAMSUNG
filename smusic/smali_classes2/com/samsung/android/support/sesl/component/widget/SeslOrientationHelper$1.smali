.class final Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper$1;
.super Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;
.source "SeslOrientationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->createHorizontalHelper(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;)Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;)V
    .locals 1
    .param p1, "layoutManager"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    .prologue
    .line 251
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper$1;)V

    return-void
.end method


# virtual methods
.method public getDecoratedEnd(Landroid/view/View;)I
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 290
    .line 291
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;

    .line 292
    .local v0, "params":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper$1;->mLayoutManager:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->getDecoratedRight(Landroid/view/View;)I

    move-result v1

    iget v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    return v1
.end method

.method public getDecoratedMeasurement(Landroid/view/View;)I
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 274
    .line 275
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;

    .line 276
    .local v0, "params":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper$1;->mLayoutManager:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->getDecoratedMeasuredWidth(Landroid/view/View;)I

    move-result v1

    iget v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    return v1
.end method

.method public getDecoratedMeasurementInOther(Landroid/view/View;)I
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 282
    .line 283
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;

    .line 284
    .local v0, "params":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper$1;->mLayoutManager:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    move-result v1

    iget v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;->topMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    return v1
.end method

.method public getDecoratedStart(Landroid/view/View;)I
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 297
    .line 298
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;

    .line 299
    .local v0, "params":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper$1;->mLayoutManager:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->getDecoratedLeft(Landroid/view/View;)I

    move-result v1

    iget v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;->leftMargin:I

    sub-int/2addr v1, v2

    return v1
.end method

.method public getEnd()I
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper$1;->mLayoutManager:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->getWidth()I

    move-result v0

    return v0
.end method

.method public getEndAfterPadding()I
    .locals 2

    .prologue
    .line 254
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper$1;->mLayoutManager:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper$1;->mLayoutManager:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getEndPadding()I
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper$1;->mLayoutManager:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->getPaddingRight()I

    move-result v0

    return v0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper$1;->mLayoutManager:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->getWidthMode()I

    move-result v0

    return v0
.end method

.method public getModeInOther()I
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper$1;->mLayoutManager:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->getHeightMode()I

    move-result v0

    return v0
.end method

.method public getStartAfterPadding()I
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper$1;->mLayoutManager:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v0

    return v0
.end method

.method public getTotalSpace()I
    .locals 2

    .prologue
    .line 316
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper$1;->mLayoutManager:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper$1;->mLayoutManager:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper$1;->mLayoutManager:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    .line 317
    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 316
    return v0
.end method

.method public getTransformedEndWithDecoration(Landroid/view/View;)I
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 304
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper$1;->mLayoutManager:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper$1;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->getTransformedBoundingBox(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 305
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper$1;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getTransformedStartWithDecoration(Landroid/view/View;)I
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 310
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper$1;->mLayoutManager:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper$1;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->getTransformedBoundingBox(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 311
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper$1;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public offsetChild(Landroid/view/View;I)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "offset"    # I

    .prologue
    .line 322
    invoke-virtual {p1, p2}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 323
    return-void
.end method

.method public offsetChildren(I)V
    .locals 1
    .param p1, "amount"    # I

    .prologue
    .line 264
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper$1;->mLayoutManager:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->offsetChildrenHorizontal(I)V

    .line 265
    return-void
.end method
