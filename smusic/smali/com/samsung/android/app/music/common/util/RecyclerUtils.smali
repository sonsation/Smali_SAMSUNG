.class public Lcom/samsung/android/app/music/common/util/RecyclerUtils;
.super Ljava/lang/Object;
.source "RecyclerUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findFirstCompletelyVisibleItemPosition(Landroid/support/v7/widget/RecyclerView;)I
    .locals 3
    .param p0, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 11
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 12
    .local v0, "manager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    instance-of v1, v0, Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v1, :cond_0

    .line 13
    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    .end local v0    # "manager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v1

    .line 18
    :goto_0
    return v1

    .line 14
    .restart local v0    # "manager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    :cond_0
    instance-of v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    if-eqz v1, :cond_1

    .line 15
    check-cast v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    .end local v0    # "manager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    const/4 v1, 0x0

    .line 16
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->findFirstCompletelyVisibleItemPositions([I)[I

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    goto :goto_0

    .line 18
    .restart local v0    # "manager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static findFirstVisibleItemPosition(Landroid/support/v7/widget/RecyclerView;)I
    .locals 3
    .param p0, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 22
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 23
    .local v0, "manager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    instance-of v1, v0, Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v1, :cond_0

    .line 24
    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    .end local v0    # "manager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    .line 28
    :goto_0
    return v1

    .line 25
    .restart local v0    # "manager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    :cond_0
    instance-of v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    if-eqz v1, :cond_1

    .line 26
    check-cast v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    .end local v0    # "manager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->findFirstVisibleItemPositions([I)[I

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    goto :goto_0

    .line 28
    .restart local v0    # "manager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static findLastCompletelyVisibleItemPosition(Landroid/support/v7/widget/RecyclerView;)I
    .locals 3
    .param p0, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 42
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 43
    .local v0, "manager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    instance-of v1, v0, Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v1, :cond_0

    .line 44
    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    .end local v0    # "manager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v1

    .line 48
    :goto_0
    return v1

    .line 45
    .restart local v0    # "manager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    :cond_0
    instance-of v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    if-eqz v1, :cond_1

    .line 46
    check-cast v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    .end local v0    # "manager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->findLastCompletelyVisibleItemPositions([I)[I

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    goto :goto_0

    .line 48
    .restart local v0    # "manager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static findLastVisibleItemPosition(Landroid/support/v7/widget/RecyclerView;)I
    .locals 3
    .param p0, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 32
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 33
    .local v0, "manager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    instance-of v1, v0, Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v1, :cond_0

    .line 34
    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    .end local v0    # "manager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    .line 38
    :goto_0
    return v1

    .line 35
    .restart local v0    # "manager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    :cond_0
    instance-of v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    if-eqz v1, :cond_1

    .line 36
    check-cast v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    .end local v0    # "manager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->findLastVisibleItemPositions([I)[I

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    goto :goto_0

    .line 38
    .restart local v0    # "manager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static findVisibleItemCount(Landroid/support/v7/widget/RecyclerView;)I
    .locals 2
    .param p0, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 52
    invoke-static {p0}, Lcom/samsung/android/app/music/common/util/RecyclerUtils;->findLastVisibleItemPosition(Landroid/support/v7/widget/RecyclerView;)I

    move-result v0

    invoke-static {p0}, Lcom/samsung/android/app/music/common/util/RecyclerUtils;->findFirstVisibleItemPosition(Landroid/support/v7/widget/RecyclerView;)I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static getLastItemBottomY(Landroid/support/v7/widget/RecyclerView;)I
    .locals 4
    .param p0, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 56
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 57
    .local v0, "manager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    const/4 v1, -0x1

    .line 58
    .local v1, "position":I
    instance-of v2, v0, Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v2, :cond_1

    .line 59
    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    .end local v0    # "manager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    .line 63
    :cond_0
    :goto_0
    invoke-static {p0, v1}, Lcom/samsung/android/app/music/common/util/RecyclerUtils;->getLastItemBottomY(Landroid/support/v7/widget/RecyclerView;I)I

    move-result v2

    return v2

    .line 60
    .restart local v0    # "manager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    :cond_1
    instance-of v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    if-eqz v2, :cond_0

    .line 61
    check-cast v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    .end local v0    # "manager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->findLastVisibleItemPositions([I)[I

    move-result-object v2

    const/4 v3, 0x0

    aget v1, v2, v3

    goto :goto_0
.end method

.method public static getLastItemBottomY(Landroid/support/v7/widget/RecyclerView;I)I
    .locals 3
    .param p0, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p1, "position"    # I

    .prologue
    .line 67
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    .line 68
    .local v1, "manager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    invoke-virtual {v1, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    .line 69
    .local v0, "lastVisibleView":Landroid/view/View;
    if-nez v0, :cond_0

    .line 70
    const/4 v2, -0x1

    .line 72
    :goto_0
    return v2

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v2

    goto :goto_0
.end method
