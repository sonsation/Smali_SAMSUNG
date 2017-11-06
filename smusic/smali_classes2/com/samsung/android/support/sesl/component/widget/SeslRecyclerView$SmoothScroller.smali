.class public abstract Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller;
.super Ljava/lang/Object;
.source "SeslRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SmoothScroller"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller$ScrollVectorProvider;,
        Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller$Action;
    }
.end annotation


# instance fields
.field private mLayoutManager:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

.field private mPendingInitialRun:Z

.field private mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

.field private final mRecyclingAction:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller$Action;

.field private mRunning:Z

.field private mTargetPosition:I

.field private mTargetView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 11903
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11889
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller;->mTargetPosition:I

    .line 11904
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller$Action;

    invoke-direct {v0, v1, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller$Action;-><init>(II)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller;->mRecyclingAction:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller$Action;

    .line 11905
    return-void
.end method

.method static synthetic access$4900(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller;II)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 11887
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller;->onAnimation(II)V

    return-void
.end method

.method private onAnimation(II)V
    .locals 5
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    .line 11999
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .line 12000
    .local v1, "recyclerView":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
    iget-boolean v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller;->mRunning:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller;->mTargetPosition:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    if-nez v1, :cond_1

    .line 12001
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller;->stop()V

    .line 12003
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller;->mPendingInitialRun:Z

    .line 12004
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 12006
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller;->getChildPosition(Landroid/view/View;)I

    move-result v2

    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller;->mTargetPosition:I

    if-ne v2, v3, :cond_4

    .line 12007
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    iget-object v3, v1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mState:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller;->mRecyclingAction:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller$Action;

    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller;->onTargetFound(Landroid/view/View;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller$Action;)V

    .line 12008
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller;->mRecyclingAction:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller$Action;

    invoke-virtual {v2, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller$Action;->runIfNecessary(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)V

    .line 12009
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller;->stop()V

    .line 12015
    :cond_2
    :goto_0
    iget-boolean v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller;->mRunning:Z

    if-eqz v2, :cond_3

    .line 12016
    iget-object v2, v1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mState:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller;->mRecyclingAction:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller$Action;

    invoke-virtual {p0, p1, p2, v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller;->onSeekTargetStep(IILcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller$Action;)V

    .line 12017
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller;->mRecyclingAction:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller$Action;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller$Action;->hasJumpTarget()Z

    move-result v0

    .line 12018
    .local v0, "hadJumpTarget":Z
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller;->mRecyclingAction:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller$Action;

    invoke-virtual {v2, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller$Action;->runIfNecessary(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)V

    .line 12019
    if-eqz v0, :cond_3

    .line 12021
    iget-boolean v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller;->mRunning:Z

    if-eqz v2, :cond_5

    .line 12022
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller;->mPendingInitialRun:Z

    .line 12023
    iget-object v2, v1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mViewFlinger:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewFlinger;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewFlinger;->postOnAnimation()V

    .line 12029
    .end local v0    # "hadJumpTarget":Z
    :cond_3
    :goto_1
    return-void

    .line 12011
    :cond_4
    const-string v2, "SeslRecyclerView"

    const-string v3, "Passed over target position while smooth scrolling."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12012
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    goto :goto_0

    .line 12025
    .restart local v0    # "hadJumpTarget":Z
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller;->stop()V

    goto :goto_1
.end method


# virtual methods
.method public findViewByPosition(I)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 12049
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getChildCount()I
    .locals 1

    .prologue
    .line 12042
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getChildPosition(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 12035
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public getLayoutManager()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 11943
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller;->mLayoutManager:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    return-object v0
.end method

.method public getTargetPosition()I
    .locals 1

    .prologue
    .line 11995
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller;->mTargetPosition:I

    return v0
.end method

.method public instantScrollToPosition(I)V
    .locals 1
    .param p1, "position"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 12058
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->scrollToPosition(I)V

    .line 12059
    return-void
.end method

.method public isPendingInitialRun()Z
    .locals 1

    .prologue
    .line 11977
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller;->mPendingInitialRun:Z

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 11985
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller;->mRunning:Z

    return v0
.end method

.method protected normalize(Landroid/graphics/PointF;)V
    .locals 5
    .param p1, "scrollVector"    # Landroid/graphics/PointF;

    .prologue
    .line 12075
    iget v2, p1, Landroid/graphics/PointF;->x:F

    iget v3, p1, Landroid/graphics/PointF;->x:F

    mul-float/2addr v2, v3

    iget v3, p1, Landroid/graphics/PointF;->y:F

    iget v4, p1, Landroid/graphics/PointF;->y:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 12077
    .local v0, "magnitude":D
    iget v2, p1, Landroid/graphics/PointF;->x:F

    float-to-double v2, v2

    div-double/2addr v2, v0

    double-to-float v2, v2

    iput v2, p1, Landroid/graphics/PointF;->x:F

    .line 12078
    iget v2, p1, Landroid/graphics/PointF;->y:F

    float-to-double v2, v2

    div-double/2addr v2, v0

    double-to-float v2, v2

    iput v2, p1, Landroid/graphics/PointF;->y:F

    .line 12079
    return-void
.end method

.method protected onChildAttachedToWindow(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 12062
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller;->getChildPosition(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller;->getTargetPosition()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 12063
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    .line 12068
    :cond_0
    return-void
.end method

.method protected abstract onSeekTargetStep(IILcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller$Action;)V
.end method

.method protected abstract onStart()V
.end method

.method protected abstract onStop()V
.end method

.method protected abstract onTargetFound(Landroid/view/View;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller$Action;)V
.end method

.method public setTargetPosition(I)V
    .locals 0
    .param p1, "targetPosition"    # I

    .prologue
    .line 11934
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller;->mTargetPosition:I

    .line 11935
    return-void
.end method

.method start(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;)V
    .locals 3
    .param p1, "recyclerView"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
    .param p2, "layoutManager"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    .prologue
    const/4 v2, 0x1

    .line 11920
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .line 11921
    iput-object p2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller;->mLayoutManager:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    .line 11922
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller;->mTargetPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 11923
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid target position"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11925
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mState:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller;->mTargetPosition:I

    invoke-static {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->access$5902(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;I)I

    .line 11926
    iput-boolean v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller;->mRunning:Z

    .line 11927
    iput-boolean v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller;->mPendingInitialRun:Z

    .line 11928
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller;->getTargetPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    .line 11929
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller;->onStart()V

    .line 11930
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mViewFlinger:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewFlinger;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewFlinger;->postOnAnimation()V

    .line 11931
    return-void
.end method

.method protected final stop()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 11953
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller;->mRunning:Z

    if-nez v0, :cond_0

    .line 11967
    :goto_0
    return-void

    .line 11956
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller;->onStop()V

    .line 11957
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mState:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    invoke-static {v0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->access$5902(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;I)I

    .line 11958
    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    .line 11959
    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller;->mTargetPosition:I

    .line 11960
    iput-boolean v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller;->mPendingInitialRun:Z

    .line 11961
    iput-boolean v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller;->mRunning:Z

    .line 11963
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller;->mLayoutManager:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    invoke-static {v0, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->access$6000(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller;)V

    .line 11965
    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller;->mLayoutManager:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    .line 11966
    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SmoothScroller;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    goto :goto_0
.end method
