.class public final Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/controller/CenterHighlightController;
.super Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;
.source "CenterHighlightController.java"


# static fields
.field private static final DELAY_RESTORE_AUTO_SCROLL_POSITION:J = 0x7d0L

.field private static final MILLISECONDS_PER_INCH:F = 50.0f


# instance fields
.field private mAdapterView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

.field private mLayoutManager:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController$HighlightViewBinder;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController$HighlightViewBinder",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p2, "itemController":Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController$HighlightViewBinder;, "Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController$HighlightViewBinder<*>;"
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController$HighlightViewBinder;)V

    .line 29
    return-void
.end method

.method private calculateDyToMakeCenter(Landroid/view/View;)I
    .locals 2
    .param p1, "targetView"    # Landroid/view/View;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/controller/CenterHighlightController;->mAdapterView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    if-nez v0, :cond_0

    .line 110
    const/4 v0, 0x0

    .line 112
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/controller/CenterHighlightController;->mAdapterView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method


# virtual methods
.method protected calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F
    .locals 2
    .param p1, "displayMetrics"    # Landroid/util/DisplayMetrics;

    .prologue
    .line 70
    const/high16 v0, 0x42480000    # 50.0f

    iget v1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 7
    .param p1, "targetPosition"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 117
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/controller/CenterHighlightController;->mLayoutManager:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;

    if-nez v5, :cond_0

    move-object v2, v4

    .line 126
    :goto_0
    return-object v2

    .line 120
    :cond_0
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/controller/CenterHighlightController;->mLayoutManager:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;

    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->getChildCount()I

    move-result v5

    if-nez v5, :cond_1

    move-object v2, v4

    .line 121
    goto :goto_0

    .line 123
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/controller/CenterHighlightController;->mLayoutManager:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;

    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/controller/CenterHighlightController;->mLayoutManager:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;

    invoke-virtual {v5, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    .line 124
    .local v1, "firstChildPos":I
    if-ge p1, v1, :cond_2

    move v2, v3

    :cond_2
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/controller/CenterHighlightController;->mLayoutManager:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;

    .line 125
    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->getReverseLayout()Z

    move-result v4

    if-eq v2, v4, :cond_3

    const/4 v0, -0x1

    .line 126
    .local v0, "direction":I
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/controller/CenterHighlightController;->mLayoutManager:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->getOrientation()I

    move-result v2

    if-nez v2, :cond_4

    new-instance v2, Landroid/graphics/PointF;

    int-to-float v3, v0

    invoke-direct {v2, v3, v6}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_0

    .end local v0    # "direction":I
    :cond_3
    move v0, v3

    .line 125
    goto :goto_1

    .line 126
    .restart local v0    # "direction":I
    :cond_4
    new-instance v2, Landroid/graphics/PointF;

    int-to-float v3, v0

    invoke-direct {v2, v6, v3}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_0
.end method

.method public delayScrollLock()J
    .locals 2

    .prologue
    .line 46
    const-wide/16 v0, 0x7d0

    return-wide v0
.end method

.method protected onAttached(Landroid/view/ViewGroup;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)V
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "adapterView"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .prologue
    .line 33
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/controller/CenterHighlightController;->mAdapterView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .line 34
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/controller/CenterHighlightController;->mAdapterView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getLayoutManager()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/controller/CenterHighlightController;->mLayoutManager:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;

    .line 35
    return-void
.end method

.method protected onDetached(Landroid/view/ViewGroup;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)V
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "adapterView"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;->onDetached(Landroid/view/ViewGroup;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)V

    .line 40
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/controller/CenterHighlightController;->mAdapterView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .line 41
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/controller/CenterHighlightController;->mLayoutManager:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;

    .line 42
    return-void
.end method

.method protected onTargetFound(Landroid/view/View;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller$Action;)V
    .locals 7
    .param p1, "targetView"    # Landroid/view/View;
    .param p2, "state"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;
    .param p3, "action"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller$Action;

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/controller/CenterHighlightController;->getHorizontalSnapPreference()I

    move-result v4

    invoke-virtual {p0, p1, v4}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/controller/CenterHighlightController;->calculateDxToMakeVisible(Landroid/view/View;I)I

    move-result v1

    .line 96
    .local v1, "dx":I
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/controller/CenterHighlightController;->calculateDyToMakeCenter(Landroid/view/View;)I

    move-result v2

    .line 98
    .local v2, "dy":I
    mul-int v4, v1, v1

    mul-int v5, v2, v2

    add-int/2addr v4, v5

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-int v0, v4

    .line 102
    .local v0, "distance":I
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/controller/CenterHighlightController;->calculateTimeForDeceleration(I)I

    move-result v3

    .line 103
    .local v3, "time":I
    if-lez v3, :cond_0

    .line 104
    neg-int v4, v1

    neg-int v5, v2

    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/controller/CenterHighlightController;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p3, v4, v5, v3, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller$Action;->update(IIILandroid/view/animation/Interpolator;)V

    .line 106
    :cond_0
    return-void
.end method

.method protected scrollToHighlightPosition(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 51
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/controller/CenterHighlightController;->mAdapterView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/controller/CenterHighlightController;->mLayoutManager:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;

    if-nez v0, :cond_1

    .line 52
    :cond_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/controller/CenterHighlightController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - maybe is not initialized or detached from recycler-view. ignore request!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/controller/CenterHighlightController;->stop()V

    .line 66
    :goto_0
    return-void

    .line 57
    :cond_1
    if-gez p1, :cond_2

    .line 58
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/controller/CenterHighlightController;->stop()V

    goto :goto_0

    .line 62
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/controller/CenterHighlightController;->mAdapterView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->smoothScrollToPosition(I)V

    goto :goto_0
.end method

.method protected updateActionForInterimTarget(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller$Action;)V
    .locals 6
    .param p1, "action"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller$Action;

    .prologue
    const v4, 0x459c4000    # 5000.0f

    const/4 v3, 0x0

    const v5, 0x3f99999a    # 1.2f

    .line 75
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/controller/CenterHighlightController;->getTargetPosition()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/controller/CenterHighlightController;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object v0

    .line 77
    .local v0, "scrollVector":Landroid/graphics/PointF;
    if-eqz v0, :cond_1

    iget v2, v0, Landroid/graphics/PointF;->x:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    iget v2, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1

    .line 78
    :cond_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/controller/CenterHighlightController;->normalize(Landroid/graphics/PointF;)V

    .line 79
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/controller/CenterHighlightController;->mTargetVector:Landroid/graphics/PointF;

    .line 80
    iget v2, v0, Landroid/graphics/PointF;->x:F

    mul-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/controller/CenterHighlightController;->mInterimTargetDx:I

    .line 81
    iget v2, v0, Landroid/graphics/PointF;->y:F

    mul-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/controller/CenterHighlightController;->mInterimTargetDy:I

    .line 82
    const/16 v2, 0x1388

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/controller/CenterHighlightController;->calculateTimeForScrolling(I)I

    move-result v1

    .line 83
    .local v1, "time":I
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/controller/CenterHighlightController;->mInterimTargetDx:I

    int-to-float v2, v2

    mul-float/2addr v2, v5

    float-to-int v2, v2

    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/controller/CenterHighlightController;->mInterimTargetDy:I

    int-to-float v3, v3

    mul-float/2addr v3, v5

    float-to-int v3, v3

    int-to-float v4, v1

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/controller/CenterHighlightController;->mLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {p1, v2, v3, v4, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller$Action;->update(IIILandroid/view/animation/Interpolator;)V

    .line 91
    :goto_0
    return-void

    .line 87
    .end local v1    # "time":I
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/controller/CenterHighlightController;->getTargetPosition()I

    move-result v1

    .line 88
    .restart local v1    # "time":I
    invoke-virtual {p1, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller$Action;->jumpTo(I)V

    .line 89
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/controller/CenterHighlightController;->stop()V

    goto :goto_0
.end method
