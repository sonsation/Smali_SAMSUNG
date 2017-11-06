.class Lcom/samsung/android/support/sesl/component/widget/SeslScrollbarHelper;
.super Ljava/lang/Object;
.source "SeslScrollbarHelper.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static computeScrollExtent(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;Landroid/view/View;Landroid/view/View;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;Z)I
    .locals 3
    .param p0, "state"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;
    .param p1, "orientation"    # Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;
    .param p2, "startChild"    # Landroid/view/View;
    .param p3, "endChild"    # Landroid/view/View;
    .param p4, "lm"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;
    .param p5, "smoothScrollbarEnabled"    # Z

    .prologue
    .line 64
    invoke-virtual {p4}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->getChildCount()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->getItemCount()I

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 66
    :cond_0
    const/4 v1, 0x0

    .line 73
    :goto_0
    return v1

    .line 68
    :cond_1
    if-nez p5, :cond_2

    .line 69
    invoke-virtual {p4, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p4, p3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 71
    :cond_2
    invoke-virtual {p1, p3}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v1

    .line 72
    invoke-virtual {p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v2

    sub-int v0, v1, v2

    .line 73
    .local v0, "extend":I
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getTotalSpace()I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0
.end method

.method static computeScrollOffset(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;Landroid/view/View;Landroid/view/View;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;ZZ)I
    .locals 9
    .param p0, "state"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;
    .param p1, "orientation"    # Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;
    .param p2, "startChild"    # Landroid/view/View;
    .param p3, "endChild"    # Landroid/view/View;
    .param p4, "lm"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;
    .param p5, "smoothScrollbarEnabled"    # Z
    .param p6, "reverseLayout"    # Z

    .prologue
    const/4 v2, 0x0

    .line 33
    invoke-virtual {p4}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->getChildCount()I

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->getItemCount()I

    move-result v6

    if-eqz v6, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 53
    :cond_0
    :goto_0
    return v2

    .line 37
    :cond_1
    invoke-virtual {p4, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v6

    .line 38
    invoke-virtual {p4, p3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v7

    .line 37
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 39
    .local v5, "minPosition":I
    invoke-virtual {p4, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v6

    .line 40
    invoke-virtual {p4, p3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v7

    .line 39
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 41
    .local v4, "maxPosition":I
    if-eqz p6, :cond_2

    .line 42
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->getItemCount()I

    move-result v6

    sub-int/2addr v6, v4

    add-int/lit8 v6, v6, -0x1

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 44
    .local v2, "itemsBefore":I
    :goto_1
    if-eqz p5, :cond_0

    .line 47
    invoke-virtual {p1, p3}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v6

    .line 48
    invoke-virtual {p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v7

    sub-int/2addr v6, v7

    .line 47
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 49
    .local v3, "laidOutArea":I
    invoke-virtual {p4, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v6

    .line 50
    invoke-virtual {p4, p3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v7

    sub-int/2addr v6, v7

    .line 49
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    add-int/lit8 v1, v6, 0x1

    .line 51
    .local v1, "itemRange":I
    int-to-float v6, v3

    int-to-float v7, v1

    div-float v0, v6, v7

    .line 53
    .local v0, "avgSizePerRow":F
    int-to-float v6, v2

    mul-float/2addr v6, v0

    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getStartAfterPadding()I

    move-result v7

    .line 54
    invoke-virtual {p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    add-float/2addr v6, v7

    .line 53
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v2

    goto :goto_0

    .line 43
    .end local v0    # "avgSizePerRow":F
    .end local v1    # "itemRange":I
    .end local v2    # "itemsBefore":I
    .end local v3    # "laidOutArea":I
    :cond_2
    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_1
.end method

.method static computeScrollRange(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;Landroid/view/View;Landroid/view/View;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;Z)I
    .locals 4
    .param p0, "state"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;
    .param p1, "orientation"    # Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;
    .param p2, "startChild"    # Landroid/view/View;
    .param p3, "endChild"    # Landroid/view/View;
    .param p4, "lm"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;
    .param p5, "smoothScrollbarEnabled"    # Z

    .prologue
    .line 83
    invoke-virtual {p4}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->getChildCount()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->getItemCount()I

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 85
    :cond_0
    const/4 v2, 0x0

    .line 97
    :goto_0
    return v2

    .line 87
    :cond_1
    if-nez p5, :cond_2

    .line 88
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->getItemCount()I

    move-result v2

    goto :goto_0

    .line 91
    :cond_2
    invoke-virtual {p1, p3}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v2

    .line 92
    invoke-virtual {p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v3

    sub-int v0, v2, v3

    .line 93
    .local v0, "laidOutArea":I
    invoke-virtual {p4, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    .line 94
    invoke-virtual {p4, p3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v2, v3

    .line 93
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int/lit8 v1, v2, 0x1

    .line 97
    .local v1, "laidOutRange":I
    int-to-float v2, v0

    int-to-float v3, v1

    div-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->getItemCount()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    goto :goto_0
.end method
