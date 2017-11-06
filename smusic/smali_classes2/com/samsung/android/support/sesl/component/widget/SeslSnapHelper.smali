.class public abstract Lcom/samsung/android/support/sesl/component/widget/SeslSnapHelper;
.super Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnFlingListener;
.source "SeslSnapHelper.java"


# static fields
.field static final MILLISECONDS_PER_INCH:F = 100.0f


# instance fields
.field private mGravityScroller:Landroid/widget/Scroller;

.field mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

.field private final mScrollListener:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnScrollListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnFlingListener;-><init>()V

    .line 43
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslSnapHelper$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSnapHelper$1;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslSnapHelper;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSnapHelper;->mScrollListener:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnScrollListener;

    return-void
.end method

.method private createSnapScroller(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;)Lcom/samsung/android/support/sesl/component/widget/SeslLinearSmoothScroller;
    .locals 2
    .param p1, "layoutManager"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 210
    instance-of v0, p1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller$ScrollVectorProvider;

    if-nez v0, :cond_0

    .line 211
    const/4 v0, 0x0

    .line 213
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslSnapHelper$2;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSnapHelper;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslSnapHelper$2;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslSnapHelper;Landroid/content/Context;)V

    goto :goto_0
.end method

.method private destroyCallbacks()V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSnapHelper;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSnapHelper;->mScrollListener:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnScrollListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->removeOnScrollListener(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnScrollListener;)V

    .line 125
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSnapHelper;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->setOnFlingListener(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnFlingListener;)V

    .line 126
    return-void
.end method

.method private setupCallbacks()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSnapHelper;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getOnFlingListener()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnFlingListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 114
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "An instance of OnFlingListener already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSnapHelper;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSnapHelper;->mScrollListener:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnScrollListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->addOnScrollListener(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnScrollListener;)V

    .line 117
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSnapHelper;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->setOnFlingListener(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnFlingListener;)V

    .line 118
    return-void
.end method

.method private snapFromFling(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;II)Z
    .locals 4
    .param p1, "layoutManager"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "velocityX"    # I
    .param p3, "velocityY"    # I

    .prologue
    const/4 v2, 0x0

    .line 158
    instance-of v3, p1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller$ScrollVectorProvider;

    if-nez v3, :cond_1

    .line 174
    :cond_0
    :goto_0
    return v2

    .line 162
    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslSnapHelper;->createSnapScroller(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;)Lcom/samsung/android/support/sesl/component/widget/SeslLinearSmoothScroller;

    move-result-object v0

    .line 163
    .local v0, "smoothScroller":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller;
    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/support/sesl/component/widget/SeslSnapHelper;->findTargetSnapPosition(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;II)I

    move-result v1

    .line 168
    .local v1, "targetPosition":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 172
    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller;->setTargetPosition(I)V

    .line 173
    invoke-virtual {p1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->startSmoothScroll(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller;)V

    .line 174
    const/4 v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public attachToRecyclerView(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)V
    .locals 3
    .param p1, "recyclerView"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 94
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSnapHelper;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    if-ne v0, p1, :cond_1

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSnapHelper;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    if-eqz v0, :cond_2

    .line 98
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSnapHelper;->destroyCallbacks()V

    .line 100
    :cond_2
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSnapHelper;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .line 101
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSnapHelper;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    if-eqz v0, :cond_0

    .line 102
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSnapHelper;->setupCallbacks()V

    .line 103
    new-instance v0, Landroid/widget/Scroller;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSnapHelper;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSnapHelper;->mGravityScroller:Landroid/widget/Scroller;

    .line 105
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSnapHelper;->snapToTargetExistingView()V

    goto :goto_0
.end method

.method public abstract calculateDistanceToFinalSnap(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;Landroid/view/View;)[I
    .param p1    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method public calculateScrollDistance(II)[I
    .locals 10
    .param p1, "velocityX"    # I
    .param p2, "velocityY"    # I

    .prologue
    const v6, 0x7fffffff

    const/high16 v5, -0x80000000

    const/4 v1, 0x0

    .line 138
    const/4 v0, 0x2

    new-array v9, v0, [I

    .line 139
    .local v9, "outDist":[I
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSnapHelper;->mGravityScroller:Landroid/widget/Scroller;

    move v2, v1

    move v3, p1

    move v4, p2

    move v7, v5

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 141
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSnapHelper;->mGravityScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalX()I

    move-result v0

    aput v0, v9, v1

    .line 142
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSnapHelper;->mGravityScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getFinalY()I

    move-result v1

    aput v1, v9, v0

    .line 143
    return-object v9
.end method

.method public abstract findSnapView(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;)Landroid/view/View;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract findTargetSnapPosition(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;II)I
.end method

.method public onFling(II)Z
    .locals 5
    .param p1, "velocityX"    # I
    .param p2, "velocityY"    # I

    .prologue
    const/4 v3, 0x0

    .line 66
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSnapHelper;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getLayoutManager()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    move-result-object v1

    .line 67
    .local v1, "layoutManager":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;
    if-nez v1, :cond_1

    .line 75
    :cond_0
    :goto_0
    return v3

    .line 70
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSnapHelper;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getAdapter()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    move-result-object v0

    .line 71
    .local v0, "adapter":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;
    if-eqz v0, :cond_0

    .line 74
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSnapHelper;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getMinFlingVelocity()I

    move-result v2

    .line 75
    .local v2, "minFlingVelocity":I
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-gt v4, v2, :cond_2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-le v4, v2, :cond_0

    .line 76
    :cond_2
    invoke-direct {p0, v1, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslSnapHelper;->snapFromFling(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;II)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0
.end method

.method snapToTargetExistingView()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 183
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSnapHelper;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    if-nez v3, :cond_1

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 186
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSnapHelper;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getLayoutManager()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    move-result-object v0

    .line 187
    .local v0, "layoutManager":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;
    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslSnapHelper;->findSnapView(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;)Landroid/view/View;

    move-result-object v2

    .line 191
    .local v2, "snapView":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 194
    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslSnapHelper;->calculateDistanceToFinalSnap(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;Landroid/view/View;)[I

    move-result-object v1

    .line 195
    .local v1, "snapDistance":[I
    aget v3, v1, v4

    if-nez v3, :cond_2

    aget v3, v1, v5

    if-eqz v3, :cond_0

    .line 196
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSnapHelper;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    aget v4, v1, v4

    aget v5, v1, v5

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->smoothScrollBy(II)V

    goto :goto_0
.end method
