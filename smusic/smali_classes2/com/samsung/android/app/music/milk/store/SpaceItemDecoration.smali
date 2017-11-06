.class public Lcom/samsung/android/app/music/milk/store/SpaceItemDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "SpaceItemDecoration.java"


# instance fields
.field private final mEndExtraSpace:I

.field private mSpaceRect:Landroid/graphics/Rect;

.field private final mStartExtraSpace:I


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;II)V
    .locals 0
    .param p1, "itemSpaceRect"    # Landroid/graphics/Rect;
    .param p2, "startExtraSpace"    # I
    .param p3, "endExtraSpace"    # I

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/SpaceItemDecoration;->mSpaceRect:Landroid/graphics/Rect;

    .line 16
    iput p2, p0, Lcom/samsung/android/app/music/milk/store/SpaceItemDecoration;->mStartExtraSpace:I

    .line 17
    iput p3, p0, Lcom/samsung/android/app/music/milk/store/SpaceItemDecoration;->mEndExtraSpace:I

    .line 18
    return-void
.end method

.method private getOrientation(Landroid/support/v7/widget/RecyclerView;)I
    .locals 3
    .param p1, "parent"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 75
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    instance-of v1, v1, Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v1, :cond_0

    .line 76
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    .line 77
    .local v0, "layoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->getOrientation()I

    move-result v1

    return v1

    .line 79
    .end local v0    # "layoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "PaddingItemDecoration can only be used with a LinearLayoutManager."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private isReverseLayout(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 3
    .param p1, "parent"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 66
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    instance-of v1, v1, Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v1, :cond_0

    .line 67
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    .line 68
    .local v0, "layoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->getReverseLayout()Z

    move-result v1

    return v1

    .line 70
    .end local v0    # "layoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "PaddingItemDecoration can only be used with a LinearLayoutManager."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 8
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p4, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    .line 22
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 24
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v2

    .line 25
    .local v2, "itemPosition":I
    const/4 v7, -0x1

    if-ne v2, v7, :cond_0

    .line 63
    :goto_0
    return-void

    .line 29
    :cond_0
    invoke-direct {p0, p3}, Lcom/samsung/android/app/music/milk/store/SpaceItemDecoration;->getOrientation(Landroid/support/v7/widget/RecyclerView;)I

    move-result v4

    .line 30
    .local v4, "orientation":I
    invoke-virtual {p4}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v1

    .line 32
    .local v1, "itemCount":I
    const/4 v3, 0x0

    .line 33
    .local v3, "left":I
    const/4 v6, 0x0

    .line 34
    .local v6, "top":I
    const/4 v5, 0x0

    .line 35
    .local v5, "right":I
    const/4 v0, 0x0

    .line 37
    .local v0, "bottom":I
    if-nez v4, :cond_3

    .line 38
    iget-object v7, p0, Lcom/samsung/android/app/music/milk/store/SpaceItemDecoration;->mSpaceRect:Landroid/graphics/Rect;

    iget v3, v7, Landroid/graphics/Rect;->left:I

    .line 39
    iget-object v7, p0, Lcom/samsung/android/app/music/milk/store/SpaceItemDecoration;->mSpaceRect:Landroid/graphics/Rect;

    iget v5, v7, Landroid/graphics/Rect;->right:I

    .line 40
    if-nez v2, :cond_2

    .line 41
    iget v7, p0, Lcom/samsung/android/app/music/milk/store/SpaceItemDecoration;->mStartExtraSpace:I

    add-int/2addr v3, v7

    .line 58
    :cond_1
    :goto_1
    invoke-direct {p0, p3}, Lcom/samsung/android/app/music/milk/store/SpaceItemDecoration;->isReverseLayout(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 59
    invoke-virtual {p1, v3, v6, v5, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 43
    :cond_2
    if-lez v1, :cond_1

    add-int/lit8 v7, v1, -0x1

    if-ne v2, v7, :cond_1

    .line 44
    iget v7, p0, Lcom/samsung/android/app/music/milk/store/SpaceItemDecoration;->mEndExtraSpace:I

    add-int/2addr v5, v7

    goto :goto_1

    .line 48
    :cond_3
    iget-object v7, p0, Lcom/samsung/android/app/music/milk/store/SpaceItemDecoration;->mSpaceRect:Landroid/graphics/Rect;

    iget v6, v7, Landroid/graphics/Rect;->top:I

    .line 49
    iget-object v7, p0, Lcom/samsung/android/app/music/milk/store/SpaceItemDecoration;->mSpaceRect:Landroid/graphics/Rect;

    iget v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 50
    if-nez v2, :cond_4

    .line 51
    iget v7, p0, Lcom/samsung/android/app/music/milk/store/SpaceItemDecoration;->mStartExtraSpace:I

    add-int/2addr v6, v7

    goto :goto_1

    .line 53
    :cond_4
    if-lez v1, :cond_1

    add-int/lit8 v7, v1, -0x1

    if-ne v2, v7, :cond_1

    .line 54
    iget v7, p0, Lcom/samsung/android/app/music/milk/store/SpaceItemDecoration;->mEndExtraSpace:I

    add-int/2addr v0, v7

    goto :goto_1

    .line 61
    :cond_5
    invoke-virtual {p1, v5, v0, v3, v6}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method
