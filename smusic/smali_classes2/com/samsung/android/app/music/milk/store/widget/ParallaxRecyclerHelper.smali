.class Lcom/samsung/android/app/music/milk/store/widget/ParallaxRecyclerHelper;
.super Ljava/lang/Object;
.source "ParallaxRecyclerHelper.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxContentScrollable;


# static fields
.field private static final VELOCITY_FACTOR:I = -0x4


# instance fields
.field mRecyclerView:Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;

.field private mScrollState:I


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;)V
    .locals 1
    .param p1, "recyclerView"    # Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ParallaxRecyclerHelper;->mScrollState:I

    .line 18
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/ParallaxRecyclerHelper;->mRecyclerView:Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;

    .line 19
    return-void
.end method

.method private isFinishScrollToTop()Z
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ParallaxRecyclerHelper;->mRecyclerView:Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/util/RecyclerUtils;->findFirstCompletelyVisibleItemPosition(Landroid/support/v7/widget/RecyclerView;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public canHandleScrollEvent()Z
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ParallaxRecyclerHelper;->mRecyclerView:Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->isEmptyViewShowing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canScroll(II)Z
    .locals 5
    .param p1, "dy"    # I
    .param p2, "remainHeaderHeight"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v4, -0x1

    const/4 v1, 0x1

    .line 36
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/widget/ParallaxRecyclerHelper;->mRecyclerView:Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;

    invoke-virtual {v3, v1}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->canScrollVertically(I)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/widget/ParallaxRecyclerHelper;->mRecyclerView:Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->canScrollVertically(I)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/widget/ParallaxRecyclerHelper;->isFinishScrollToTop()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 48
    :cond_1
    :goto_0
    return v1

    .line 39
    :cond_2
    if-gez p1, :cond_3

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/widget/ParallaxRecyclerHelper;->mRecyclerView:Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->canScrollVertically(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 41
    if-gez p2, :cond_1

    move v1, v2

    goto :goto_0

    .line 44
    :cond_3
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/widget/ParallaxRecyclerHelper;->mRecyclerView:Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;

    .line 45
    invoke-static {v3}, Lcom/samsung/android/app/music/common/util/RecyclerUtils;->getLastItemBottomY(Landroid/support/v7/widget/RecyclerView;)I

    move-result v3

    add-int v0, p2, v3

    .line 46
    .local v0, "remainContentScrollHeight":I
    if-lez p2, :cond_4

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/widget/ParallaxRecyclerHelper;->mRecyclerView:Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;

    .line 47
    invoke-virtual {v3}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->getMeasuredHeight()I

    move-result v3

    if-le v0, v3, :cond_4

    .line 48
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/ParallaxRecyclerHelper;->canHandleScrollEvent()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public getScrollVelocityY()I
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ParallaxRecyclerHelper;->mRecyclerView:Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->computeVerticalScrollOffset()I

    move-result v0

    mul-int/lit8 v0, v0, -0x4

    return v0
.end method

.method public getScrolledPosition()I
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ParallaxRecyclerHelper;->mRecyclerView:Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/util/RecyclerUtils;->findFirstVisibleItemPosition(Landroid/support/v7/widget/RecyclerView;)I

    move-result v0

    return v0
.end method

.method public isScrolling()Z
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ParallaxRecyclerHelper;->mScrollState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onParallaxScrolled(II)V
    .locals 2
    .param p1, "offset"    # I
    .param p2, "scrollRange"    # I

    .prologue
    .line 68
    add-int v1, p2, p1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 70
    .local v0, "enable":Z
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/ParallaxRecyclerHelper;->mRecyclerView:Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->setFastScrollEnabled(Z)V

    .line 71
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/ParallaxRecyclerHelper;->mRecyclerView:Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->enableGoToTop(Z)V

    .line 72
    return-void

    .line 68
    .end local v0    # "enable":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method onScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 22
    iput p1, p0, Lcom/samsung/android/app/music/milk/store/widget/ParallaxRecyclerHelper;->mScrollState:I

    .line 23
    return-void
.end method
