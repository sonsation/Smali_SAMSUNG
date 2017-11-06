.class Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;
.super Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper$Callback;
.source "SeslDrawerLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewDragCallback"
.end annotation


# instance fields
.field private final mAbsGravity:I

.field private mDragger:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;

.field private final mPeekRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;I)V
    .locals 1
    .param p2, "gravity"    # I

    .prologue
    .line 2049
    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper$Callback;-><init>()V

    .line 2043
    new-instance v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback$1;-><init>(Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;->mPeekRunnable:Ljava/lang/Runnable;

    .line 2050
    iput p2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;->mAbsGravity:I

    .line 2051
    return-void
.end method

.method private closeOtherDrawer()V
    .locals 3

    .prologue
    const/4 v0, 0x3

    .line 2100
    iget v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;->mAbsGravity:I

    if-ne v2, v0, :cond_0

    const/4 v0, 0x5

    .line 2101
    .local v0, "otherGrav":I
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;

    invoke-virtual {v2, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v1

    .line 2102
    .local v1, "toClose":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 2103
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;

    invoke-virtual {v2, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->closeDrawer(Landroid/view/View;)V

    .line 2105
    :cond_1
    return-void
.end method


# virtual methods
.method public clampViewPositionHorizontal(Landroid/view/View;II)I
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "dx"    # I

    .prologue
    .line 2191
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;

    const/4 v2, 0x3

    invoke-virtual {v1, p1, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2192
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    neg-int v1, v1

    const/4 v2, 0x0

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 2195
    :goto_0
    return v1

    .line 2194
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getWidth()I

    move-result v0

    .line 2195
    .local v0, "width":I
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int v1, v0, v1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_0
.end method

.method public clampViewPositionVertical(Landroid/view/View;II)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "top"    # I
    .param p3, "dy"    # I

    .prologue
    .line 2201
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    return v0
.end method

.method public getViewHorizontalDragRange(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 2186
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onEdgeDragStarted(II)V
    .locals 3
    .param p1, "edgeFlags"    # I
    .param p2, "pointerId"    # I

    .prologue
    .line 2173
    and-int/lit8 v1, p1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 2174
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v0

    .line 2179
    .local v0, "toCapture":Landroid/view/View;
    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getDrawerLockMode(Landroid/view/View;)I

    move-result v1

    if-nez v1, :cond_0

    .line 2180
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;->mDragger:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;

    invoke-virtual {v1, v0, p2}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->captureChildView(Landroid/view/View;I)V

    .line 2182
    :cond_0
    return-void

    .line 2176
    .end local v0    # "toCapture":Landroid/view/View;
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v0

    .restart local v0    # "toCapture":Landroid/view/View;
    goto :goto_0
.end method

.method public onEdgeLock(I)Z
    .locals 1
    .param p1, "edgeFlags"    # I

    .prologue
    .line 2167
    const/4 v0, 0x0

    return v0
.end method

.method public onEdgeTouched(II)V
    .locals 4
    .param p1, "edgeFlags"    # I
    .param p2, "pointerId"    # I

    .prologue
    .line 2128
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;->mPeekRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xa0

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2129
    return-void
.end method

.method public onViewCaptured(Landroid/view/View;I)V
    .locals 2
    .param p1, "capturedChild"    # Landroid/view/View;
    .param p2, "activePointerId"    # I

    .prologue
    .line 2093
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;

    .line 2094
    .local v0, "lp":Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;->isPeeking:Z

    .line 2096
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;->closeOtherDrawer()V

    .line 2097
    return-void
.end method

.method public onViewDragStateChanged(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 2071
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;

    iget v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;->mAbsGravity:I

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;->mDragger:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->getCapturedView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->updateDrawerState(IILandroid/view/View;)V

    .line 2072
    return-void
.end method

.method public onViewPositionChanged(Landroid/view/View;IIII)V
    .locals 5
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "dx"    # I
    .param p5, "dy"    # I

    .prologue
    .line 2077
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 2080
    .local v0, "childWidth":I
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;

    const/4 v4, 0x3

    invoke-virtual {v3, p1, v4}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2081
    add-int v3, v0, p2

    int-to-float v3, v3

    int-to-float v4, v0

    div-float v1, v3, v4

    .line 2086
    .local v1, "offset":F
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;

    invoke-virtual {v3, p1, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->setDrawerViewOffset(Landroid/view/View;F)V

    .line 2087
    const/4 v3, 0x0

    cmpl-float v3, v1, v3

    if-nez v3, :cond_1

    const/4 v3, 0x4

    :goto_1
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2088
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->invalidate()V

    .line 2089
    return-void

    .line 2083
    .end local v1    # "offset":F
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getWidth()I

    move-result v2

    .line 2084
    .local v2, "width":I
    sub-int v3, v2, p2

    int-to-float v3, v3

    int-to-float v4, v0

    div-float v1, v3, v4

    .restart local v1    # "offset":F
    goto :goto_0

    .line 2087
    .end local v2    # "width":I
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .locals 8
    .param p1, "releasedChild"    # Landroid/view/View;
    .param p2, "xvel"    # F
    .param p3, "yvel"    # F

    .prologue
    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v6, 0x0

    .line 2111
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;

    invoke-virtual {v4, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getDrawerViewOffset(Landroid/view/View;)F

    move-result v2

    .line 2112
    .local v2, "offset":F
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 2115
    .local v0, "childWidth":I
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;

    const/4 v5, 0x3

    invoke-virtual {v4, p1, v5}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2116
    cmpl-float v4, p2, v6

    if-gtz v4, :cond_0

    cmpl-float v4, p2, v6

    if-nez v4, :cond_1

    cmpl-float v4, v2, v7

    if-lez v4, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 2122
    .local v1, "left":I
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;->mDragger:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v4, v1, v5}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->settleCapturedViewAt(II)Z

    .line 2123
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->invalidate()V

    .line 2124
    return-void

    .line 2116
    .end local v1    # "left":I
    :cond_1
    neg-int v1, v0

    goto :goto_0

    .line 2118
    :cond_2
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getWidth()I

    move-result v3

    .line 2119
    .local v3, "width":I
    cmpg-float v4, p2, v6

    if-ltz v4, :cond_3

    cmpl-float v4, p2, v6

    if-nez v4, :cond_4

    cmpl-float v4, v2, v7

    if-lez v4, :cond_4

    :cond_3
    sub-int v1, v3, v0

    .restart local v1    # "left":I
    :goto_1
    goto :goto_0

    .end local v1    # "left":I
    :cond_4
    move v1, v3

    goto :goto_1
.end method

.method peekDrawer()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2134
    iget-object v7, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;->mDragger:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;

    invoke-virtual {v7}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->getEdgeSize()I

    move-result v3

    .line 2135
    .local v3, "peekDistance":I
    iget v7, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;->mAbsGravity:I

    if-ne v7, v8, :cond_4

    move v1, v6

    .line 2136
    .local v1, "leftEdge":Z
    :goto_0
    if-eqz v1, :cond_5

    .line 2137
    iget-object v7, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;

    invoke-virtual {v7, v8}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v4

    .line 2138
    .local v4, "toCapture":Landroid/view/View;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v5

    neg-int v5, v5

    :cond_0
    add-int v0, v5, v3

    .line 2144
    .local v0, "childLeft":I
    :goto_1
    if-eqz v4, :cond_3

    if-eqz v1, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v5

    if-lt v5, v0, :cond_2

    :cond_1
    if-nez v1, :cond_3

    .line 2145
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v5

    if-le v5, v0, :cond_3

    :cond_2
    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;

    .line 2146
    invoke-virtual {v5, v4}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getDrawerLockMode(Landroid/view/View;)I

    move-result v5

    if-nez v5, :cond_3

    .line 2147
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;

    .line 2148
    .local v2, "lp":Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;
    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;->mDragger:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v7

    invoke-virtual {v5, v4, v0, v7}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    .line 2149
    iput-boolean v6, v2, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;->isPeeking:Z

    .line 2150
    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;

    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->invalidate()V

    .line 2152
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;->closeOtherDrawer()V

    .line 2154
    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;

    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->cancelChildViewTouch()V

    .line 2156
    .end local v2    # "lp":Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;
    :cond_3
    return-void

    .end local v0    # "childLeft":I
    .end local v1    # "leftEdge":Z
    .end local v4    # "toCapture":Landroid/view/View;
    :cond_4
    move v1, v5

    .line 2135
    goto :goto_0

    .line 2140
    .restart local v1    # "leftEdge":Z
    :cond_5
    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;

    const/4 v7, 0x5

    invoke-virtual {v5, v7}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v4

    .line 2141
    .restart local v4    # "toCapture":Landroid/view/View;
    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;

    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getWidth()I

    move-result v5

    sub-int v0, v5, v3

    .restart local v0    # "childLeft":I
    goto :goto_1
.end method

.method public removeCallbacks()V
    .locals 2

    .prologue
    .line 2058
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;->mPeekRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2059
    return-void
.end method

.method public setDragger(Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;)V
    .locals 0
    .param p1, "dragger"    # Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;

    .prologue
    .line 2054
    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;->mDragger:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;

    .line 2055
    return-void
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "pointerId"    # I

    .prologue
    .line 2065
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;

    iget v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;->mAbsGravity:I

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;

    .line 2066
    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getDrawerLockMode(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2065
    :goto_0
    return v0

    .line 2066
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
