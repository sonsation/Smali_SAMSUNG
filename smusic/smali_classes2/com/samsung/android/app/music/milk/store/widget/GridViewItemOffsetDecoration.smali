.class public Lcom/samsung/android/app/music/milk/store/widget/GridViewItemOffsetDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "GridViewItemOffsetDecoration.java"


# instance fields
.field private mBottomMargin:I

.field private mLeftMargin:I

.field private mRightMargin:I

.field private mTopMargin:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0
    .param p1, "leftMargin"    # I
    .param p2, "topMargin"    # I
    .param p3, "rightMargin"    # I
    .param p4, "bottomMargin"    # I

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 18
    iput p1, p0, Lcom/samsung/android/app/music/milk/store/widget/GridViewItemOffsetDecoration;->mLeftMargin:I

    .line 19
    iput p2, p0, Lcom/samsung/android/app/music/milk/store/widget/GridViewItemOffsetDecoration;->mTopMargin:I

    .line 20
    iput p3, p0, Lcom/samsung/android/app/music/milk/store/widget/GridViewItemOffsetDecoration;->mRightMargin:I

    .line 21
    iput p4, p0, Lcom/samsung/android/app/music/milk/store/widget/GridViewItemOffsetDecoration;->mBottomMargin:I

    .line 22
    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 9
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p4, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    .line 27
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 28
    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    .line 29
    .local v0, "adapter":Landroid/support/v7/widget/RecyclerView$Adapter;
    iget v1, p0, Lcom/samsung/android/app/music/milk/store/widget/GridViewItemOffsetDecoration;->mBottomMargin:I

    .line 30
    .local v1, "bottomMargin":I
    iget v5, p0, Lcom/samsung/android/app/music/milk/store/widget/GridViewItemOffsetDecoration;->mTopMargin:I

    .line 31
    .local v5, "topMargin":I
    iget v2, p0, Lcom/samsung/android/app/music/milk/store/widget/GridViewItemOffsetDecoration;->mLeftMargin:I

    .line 32
    .local v2, "leftMargin":I
    iget v4, p0, Lcom/samsung/android/app/music/milk/store/widget/GridViewItemOffsetDecoration;->mRightMargin:I

    .line 34
    .local v4, "rightMargin":I
    instance-of v6, v0, Lcom/samsung/android/app/music/milk/store/widget/MarginControllable;

    if-eqz v6, :cond_0

    .line 35
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v3

    .local v3, "pos":I
    move-object v6, v0

    .line 36
    check-cast v6, Lcom/samsung/android/app/music/milk/store/widget/MarginControllable;

    const/4 v7, 0x3

    iget v8, p0, Lcom/samsung/android/app/music/milk/store/widget/GridViewItemOffsetDecoration;->mBottomMargin:I

    invoke-interface {v6, v3, v7, v8}, Lcom/samsung/android/app/music/milk/store/widget/MarginControllable;->getMargin(III)I

    move-result v1

    move-object v6, v0

    .line 37
    check-cast v6, Lcom/samsung/android/app/music/milk/store/widget/MarginControllable;

    const/4 v7, 0x1

    iget v8, p0, Lcom/samsung/android/app/music/milk/store/widget/GridViewItemOffsetDecoration;->mTopMargin:I

    invoke-interface {v6, v3, v7, v8}, Lcom/samsung/android/app/music/milk/store/widget/MarginControllable;->getMargin(III)I

    move-result v5

    move-object v6, v0

    .line 38
    check-cast v6, Lcom/samsung/android/app/music/milk/store/widget/MarginControllable;

    const/4 v7, 0x0

    iget v8, p0, Lcom/samsung/android/app/music/milk/store/widget/GridViewItemOffsetDecoration;->mLeftMargin:I

    invoke-interface {v6, v3, v7, v8}, Lcom/samsung/android/app/music/milk/store/widget/MarginControllable;->getMargin(III)I

    move-result v2

    .line 39
    check-cast v0, Lcom/samsung/android/app/music/milk/store/widget/MarginControllable;

    .end local v0    # "adapter":Landroid/support/v7/widget/RecyclerView$Adapter;
    const/4 v6, 0x2

    iget v7, p0, Lcom/samsung/android/app/music/milk/store/widget/GridViewItemOffsetDecoration;->mRightMargin:I

    invoke-interface {v0, v3, v6, v7}, Lcom/samsung/android/app/music/milk/store/widget/MarginControllable;->getMargin(III)I

    move-result v4

    .line 42
    .end local v3    # "pos":I
    :cond_0
    invoke-virtual {p1, v2, v5, v4, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 43
    return-void
.end method
