.class public Lcom/dinuscxj/refresh/RecyclerRefreshLayout;
.super Landroid/view/ViewGroup;
.source "RecyclerRefreshLayout.java"

# interfaces
.implements Landroid/support/v4/view/NestedScrollingChild;
.implements Landroid/support/v4/view/NestedScrollingParent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dinuscxj/refresh/RecyclerRefreshLayout$LayoutParams;,
        Lcom/dinuscxj/refresh/RecyclerRefreshLayout$OnRefreshListener;
    }
.end annotation


# static fields
.field private static final DECELERATE_INTERPOLATION_FACTOR:F = 2.0f

.field private static final DEFAULT_ANIMATE_DURATION:I = 0x12c

.field private static final DEFAULT_REFRESH_SIZE_DP:I = 0x1e

.field private static final DEFAULT_REFRESH_TARGET_OFFSET_DP:I = 0x32

.field private static final INVALID_INDEX:I = -0x1

.field private static final INVALID_POINTER:I = -0x1


# instance fields
.field private mActivePointerId:I

.field private mAnimateToRefreshDuration:I

.field private mAnimateToRefreshInterpolator:Landroid/view/animation/Interpolator;

.field private final mAnimateToRefreshingAnimation:Landroid/view/animation/Animation;

.field private final mAnimateToStartAnimation:Landroid/view/animation/Animation;

.field private mAnimateToStartDuration:I

.field private mAnimateToStartInterpolator:Landroid/view/animation/Interpolator;

.field private mCurrentScrollOffset:I

.field private mDispatchTargetTouchDown:Z

.field private mFrom:I

.field private mIDragDistanceConverter:Lcom/dinuscxj/refresh/IDragDistanceConverter;

.field private mIRefreshStatus:Lcom/dinuscxj/refresh/IRefreshStatus;

.field private mInitialDownY:F

.field private mInitialMotionY:F

.field private mInitialScrollY:F

.field private mIsAnimatingToStart:Z

.field private mIsBeingDragged:Z

.field private mIsFitRefresh:Z

.field private mIsRefreshing:Z

.field private final mNestedScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

.field private final mNestedScrollingParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

.field private mNotifyListener:Z

.field private mOnRefreshListener:Lcom/dinuscxj/refresh/RecyclerRefreshLayout$OnRefreshListener;

.field private final mParentScrollConsumed:[I

.field private mRefreshTargetOffset:F

.field private mRefreshView:Landroid/view/View;

.field private mRefreshViewIndex:I

.field private final mRefreshingListener:Landroid/view/animation/Animation$AnimationListener;

.field private final mResetListener:Landroid/view/animation/Animation$AnimationListener;

.field private mSpinnerSize:I

.field private mTarget:Landroid/view/View;

.field private mTotalUnconsumed:F

.field private mTouchSlop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 158
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 159
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/16 v5, 0x12c

    const/4 v4, 0x1

    const/4 v3, -0x1

    const/high16 v2, 0x40000000    # 2.0f

    .line 162
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mParentScrollConsumed:[I

    .line 70
    iput v3, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mRefreshViewIndex:I

    .line 71
    iput v3, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mActivePointerId:I

    .line 72
    iput v5, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mAnimateToStartDuration:I

    .line 73
    iput v5, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mAnimateToRefreshDuration:I

    .line 93
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v1, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mAnimateToStartInterpolator:Landroid/view/animation/Interpolator;

    .line 94
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v1, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mAnimateToRefreshInterpolator:Landroid/view/animation/Interpolator;

    .line 96
    new-instance v1, Lcom/dinuscxj/refresh/RecyclerRefreshLayout$1;

    invoke-direct {v1, p0}, Lcom/dinuscxj/refresh/RecyclerRefreshLayout$1;-><init>(Lcom/dinuscxj/refresh/RecyclerRefreshLayout;)V

    iput-object v1, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mAnimateToRefreshingAnimation:Landroid/view/animation/Animation;

    .line 106
    new-instance v1, Lcom/dinuscxj/refresh/RecyclerRefreshLayout$2;

    invoke-direct {v1, p0}, Lcom/dinuscxj/refresh/RecyclerRefreshLayout$2;-><init>(Lcom/dinuscxj/refresh/RecyclerRefreshLayout;)V

    iput-object v1, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mAnimateToStartAnimation:Landroid/view/animation/Animation;

    .line 115
    new-instance v1, Lcom/dinuscxj/refresh/RecyclerRefreshLayout$3;

    invoke-direct {v1, p0}, Lcom/dinuscxj/refresh/RecyclerRefreshLayout$3;-><init>(Lcom/dinuscxj/refresh/RecyclerRefreshLayout;)V

    iput-object v1, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mRefreshingListener:Landroid/view/animation/Animation$AnimationListener;

    .line 138
    new-instance v1, Lcom/dinuscxj/refresh/RecyclerRefreshLayout$4;

    invoke-direct {v1, p0}, Lcom/dinuscxj/refresh/RecyclerRefreshLayout$4;-><init>(Lcom/dinuscxj/refresh/RecyclerRefreshLayout;)V

    iput-object v1, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mResetListener:Landroid/view/animation/Animation$AnimationListener;

    .line 163
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mTouchSlop:I

    .line 165
    invoke-virtual {p0}, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 166
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    const/high16 v1, 0x41f00000    # 30.0f

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mSpinnerSize:I

    .line 168
    const/high16 v1, 0x42480000    # 50.0f

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mRefreshTargetOffset:F

    .line 170
    new-instance v1, Landroid/support/v4/view/NestedScrollingParentHelper;

    invoke-direct {v1, p0}, Landroid/support/v4/view/NestedScrollingParentHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object v1, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mNestedScrollingParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

    .line 171
    new-instance v1, Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-direct {v1, p0}, Landroid/support/v4/view/NestedScrollingChildHelper;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mNestedScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    .line 173
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->setWillNotDraw(Z)V

    .line 174
    invoke-direct {p0}, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->initRefreshView()V

    .line 175
    invoke-direct {p0}, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->initDragDistanceConverter()V

    .line 176
    invoke-virtual {p0, v4}, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->setNestedScrollingEnabled(Z)V

    .line 177
    invoke-static {p0, v4}, Landroid/support/v4/view/ViewCompat;->setChildrenDrawingOrderEnabled(Landroid/view/ViewGroup;Z)V

    .line 178
    return-void
.end method

.method static synthetic access$000(Lcom/dinuscxj/refresh/RecyclerRefreshLayout;)F
    .locals 1
    .param p0, "x0"    # Lcom/dinuscxj/refresh/RecyclerRefreshLayout;

    .prologue
    .line 42
    iget v0, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mRefreshTargetOffset:F

    return v0
.end method

.method static synthetic access$100(Lcom/dinuscxj/refresh/RecyclerRefreshLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/dinuscxj/refresh/RecyclerRefreshLayout;

    .prologue
    .line 42
    iget v0, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mFrom:I

    return v0
.end method

.method static synthetic access$200(Lcom/dinuscxj/refresh/RecyclerRefreshLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/dinuscxj/refresh/RecyclerRefreshLayout;

    .prologue
    .line 42
    iget v0, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mCurrentScrollOffset:I

    return v0
.end method

.method static synthetic access$300(Lcom/dinuscxj/refresh/RecyclerRefreshLayout;II)V
    .locals 0
    .param p0, "x0"    # Lcom/dinuscxj/refresh/RecyclerRefreshLayout;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->scrollTargetOffset(II)V

    return-void
.end method

.method static synthetic access$402(Lcom/dinuscxj/refresh/RecyclerRefreshLayout;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/dinuscxj/refresh/RecyclerRefreshLayout;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mIsAnimatingToStart:Z

    return p1
.end method

.method static synthetic access$500(Lcom/dinuscxj/refresh/RecyclerRefreshLayout;)Lcom/dinuscxj/refresh/IRefreshStatus;
    .locals 1
    .param p0, "x0"    # Lcom/dinuscxj/refresh/RecyclerRefreshLayout;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mIRefreshStatus:Lcom/dinuscxj/refresh/IRefreshStatus;

    return-object v0
.end method

.method static synthetic access$600(Lcom/dinuscxj/refresh/RecyclerRefreshLayout;)Z
    .locals 1
    .param p0, "x0"    # Lcom/dinuscxj/refresh/RecyclerRefreshLayout;

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mNotifyListener:Z

    return v0
.end method

.method static synthetic access$700(Lcom/dinuscxj/refresh/RecyclerRefreshLayout;)Lcom/dinuscxj/refresh/RecyclerRefreshLayout$OnRefreshListener;
    .locals 1
    .param p0, "x0"    # Lcom/dinuscxj/refresh/RecyclerRefreshLayout;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mOnRefreshListener:Lcom/dinuscxj/refresh/RecyclerRefreshLayout$OnRefreshListener;

    return-object v0
.end method

.method static synthetic access$802(Lcom/dinuscxj/refresh/RecyclerRefreshLayout;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/dinuscxj/refresh/RecyclerRefreshLayout;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mIsRefreshing:Z

    return p1
.end method

.method private animateOffsetToStartPosition(ILandroid/view/animation/Animation$AnimationListener;)V
    .locals 4
    .param p1, "from"    # I
    .param p2, "listener"    # Landroid/view/animation/Animation$AnimationListener;

    .prologue
    .line 734
    int-to-float v0, p1

    invoke-direct {p0, v0}, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->computeAnimateToStartDuration(F)I

    move-result v0

    if-gtz v0, :cond_0

    .line 735
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 748
    :goto_0
    return-void

    .line 739
    :cond_0
    iput p1, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mFrom:I

    .line 740
    iget-object v0, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mAnimateToStartAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 741
    iget-object v0, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mAnimateToStartAnimation:Landroid/view/animation/Animation;

    int-to-float v1, p1

    invoke-direct {p0, v1}, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->computeAnimateToStartDuration(F)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 742
    iget-object v0, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mAnimateToStartAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mAnimateToStartInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 743
    if-eqz p2, :cond_1

    .line 744
    iget-object v0, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mAnimateToStartAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, p2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 746
    :cond_1
    invoke-virtual {p0}, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->clearAnimation()V

    .line 747
    iget-object v0, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mAnimateToStartAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private animateToRefreshingPosition(ILandroid/view/animation/Animation$AnimationListener;)V
    .locals 4
    .param p1, "from"    # I
    .param p2, "listener"    # Landroid/view/animation/Animation$AnimationListener;

    .prologue
    .line 751
    int-to-float v0, p1

    invoke-direct {p0, v0}, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->computeAnimateToRefreshingDuration(F)I

    move-result v0

    if-gtz v0, :cond_0

    .line 752
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 767
    :goto_0
    return-void

    .line 756
    :cond_0
    iput p1, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mFrom:I

    .line 757
    iget-object v0, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mAnimateToRefreshingAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 758
    iget-object v0, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mAnimateToRefreshingAnimation:Landroid/view/animation/Animation;

    int-to-float v1, p1

    invoke-direct {p0, v1}, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->computeAnimateToRefreshingDuration(F)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 759
    iget-object v0, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mAnimateToRefreshingAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mAnimateToRefreshInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 761
    if-eqz p2, :cond_1

    .line 762
    iget-object v0, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mAnimateToRefreshingAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, p2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 765
    :cond_1
    invoke-virtual {p0}, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->clearAnimation()V

    .line 766
    iget-object v0, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mAnimateToRefreshingAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private computeAnimateToRefreshingDuration(F)I
    .locals 4
    .param p1, "from"    # F

    .prologue
    .line 770
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mRefreshTargetOffset:F

    sub-float v2, p1, v2

    iget v3, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mRefreshTargetOffset:F

    div-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mAnimateToRefreshDuration:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private computeAnimateToStartDuration(F)I
    .locals 3
    .param p1, "from"    # F

    .prologue
    .line 775
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mRefreshTargetOffset:F

    div-float v2, p1, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mAnimateToStartDuration:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private ensureTarget()V
    .locals 3

    .prologue
    .line 872
    invoke-virtual {p0}, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->isTargetValid()Z

    move-result v2

    if-nez v2, :cond_0

    .line 873
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 874
    invoke-virtual {p0, v1}, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 875
    .local v0, "child":Landroid/view/View;
    iget-object v2, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mRefreshView:Landroid/view/View;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 876
    iput-object v0, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mTarget:Landroid/view/View;

    .line 881
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "i":I
    :cond_0
    return-void

    .line 873
    .restart local v0    # "child":Landroid/view/View;
    .restart local v1    # "i":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private finishSpinner()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 808
    iget-boolean v1, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mIsRefreshing:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mIsAnimatingToStart:Z

    if-eqz v1, :cond_1

    .line 819
    :cond_0
    :goto_0
    return-void

    .line 812
    :cond_1
    invoke-virtual {p0}, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->getScrollY()I

    move-result v1

    neg-int v1, v1

    int-to-float v0, v1

    .line 813
    .local v0, "scrollY":F
    iget v1, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mRefreshTargetOffset:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_2

    .line 814
    invoke-direct {p0, v2, v2}, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->setRefreshing(ZZ)V

    goto :goto_0

    .line 816
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mIsRefreshing:Z

    .line 817
    iget v1, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mCurrentScrollOffset:I

    neg-int v1, v1

    iget-object v2, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mResetListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-direct {p0, v1, v2}, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->animateOffsetToStartPosition(ILandroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0
.end method

.method private getMotionEventY(Landroid/view/MotionEvent;I)F
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "activePointerId"    # I

    .prologue
    .line 839
    invoke-static {p1, p2}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 840
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 841
    const/high16 v1, -0x40800000    # -1.0f

    .line 843
    :goto_0
    return v1

    :cond_0
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v1

    goto :goto_0
.end method

.method private initDragDistanceConverter()V
    .locals 1

    .prologue
    .line 194
    new-instance v0, Lcom/dinuscxj/refresh/MaterialDragDistanceConverter;

    invoke-direct {v0}, Lcom/dinuscxj/refresh/MaterialDragDistanceConverter;-><init>()V

    iput-object v0, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mIDragDistanceConverter:Lcom/dinuscxj/refresh/IDragDistanceConverter;

    .line 195
    return-void
.end method

.method private initDragStatus(F)V
    .locals 4
    .param p1, "activeMoveY"    # F

    .prologue
    const/4 v3, 0x1

    .line 722
    iget v1, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mInitialDownY:F

    sub-float v0, p1, v1

    .line 723
    .local v0, "diff":F
    iget-boolean v1, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mIsRefreshing:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mTouchSlop:I

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-gtz v1, :cond_0

    iget v1, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mCurrentScrollOffset:I

    neg-int v1, v1

    if-lez v1, :cond_2

    .line 724
    :cond_0
    iput-boolean v3, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mIsBeingDragged:Z

    .line 725
    iget v1, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mInitialDownY:F

    iget v2, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mTouchSlop:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mInitialMotionY:F

    .line 731
    :cond_1
    :goto_0
    return-void

    .line 727
    :cond_2
    iget-boolean v1, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mIsBeingDragged:Z

    if-nez v1, :cond_1

    iget v1, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mTouchSlop:I

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    .line 728
    iget v1, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mInitialDownY:F

    iget v2, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mTouchSlop:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mInitialMotionY:F

    .line 729
    iput-boolean v3, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mIsBeingDragged:Z

    goto :goto_0
.end method

.method private initRefreshView()V
    .locals 3

    .prologue
    .line 181
    new-instance v1, Lcom/dinuscxj/refresh/RefreshView;

    invoke-virtual {p0}, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/dinuscxj/refresh/RefreshView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mRefreshView:Landroid/view/View;

    .line 183
    iget-object v1, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mRefreshView:Landroid/view/View;

    instance-of v1, v1, Lcom/dinuscxj/refresh/IRefreshStatus;

    if-eqz v1, :cond_0

    .line 184
    iget-object v1, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mRefreshView:Landroid/view/View;

    check-cast v1, Lcom/dinuscxj/refresh/IRefreshStatus;

    iput-object v1, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mIRefreshStatus:Lcom/dinuscxj/refresh/IRefreshStatus;

    .line 189
    new-instance v0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout$LayoutParams;

    const/4 v1, -0x1

    iget v2, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mSpinnerSize:I

    invoke-direct {v0, v1, v2}, Lcom/dinuscxj/refresh/RecyclerRefreshLayout$LayoutParams;-><init>(II)V

    .line 190
    .local v0, "layoutParams":Lcom/dinuscxj/refresh/RecyclerRefreshLayout$LayoutParams;
    iget-object v1, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mRefreshView:Landroid/view/View;

    invoke-virtual {p0, v1, v0}, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 191
    return-void

    .line 186
    .end local v0    # "layoutParams":Lcom/dinuscxj/refresh/RecyclerRefreshLayout$LayoutParams;
    :cond_0
    new-instance v1, Ljava/lang/ClassCastException;

    const-string/jumbo v2, "the refreshView must implement the interface IRefreshStatus"

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private measureRefreshView(II)V
    .locals 10
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v9, 0x40000000    # 2.0f

    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 478
    iget-object v5, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mRefreshView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 481
    .local v3, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-ne v5, v7, :cond_0

    .line 482
    invoke-virtual {p0}, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v5, v6

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v5, v6

    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 484
    .local v4, "width":I
    invoke-static {v4, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 492
    .end local v4    # "width":I
    .local v1, "childWidthMeasureSpec":I
    :goto_0
    iget v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-ne v5, v7, :cond_1

    .line 493
    invoke-virtual {p0}, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->getMeasuredHeight()I

    move-result v5

    .line 494
    invoke-virtual {p0}, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->getPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v5, v6

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v5, v6

    .line 493
    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 496
    .local v2, "height":I
    invoke-static {v2, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 505
    .end local v2    # "height":I
    .local v0, "childHeightMeasureSpec":I
    :goto_1
    iget-object v5, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mRefreshView:Landroid/view/View;

    invoke-virtual {v5, v1, v0}, Landroid/view/View;->measure(II)V

    .line 506
    return-void

    .line 487
    .end local v0    # "childHeightMeasureSpec":I
    .end local v1    # "childWidthMeasureSpec":I
    :cond_0
    invoke-virtual {p0}, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->getPaddingLeft()I

    move-result v5

    invoke-virtual {p0}, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->getPaddingRight()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v5, v6

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v5, v6

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 486
    invoke-static {p1, v5, v6}, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->getChildMeasureSpec(III)I

    move-result v1

    .restart local v1    # "childWidthMeasureSpec":I
    goto :goto_0

    .line 500
    :cond_1
    invoke-virtual {p0}, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->getPaddingTop()I

    move-result v5

    invoke-virtual {p0}, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->getPaddingBottom()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v5, v6

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v5, v6

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 499
    invoke-static {p2, v5, v6}, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->getChildMeasureSpec(III)I

    move-result v0

    .restart local v0    # "childHeightMeasureSpec":I
    goto :goto_1
.end method

.method private measureTarget()V
    .locals 5

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 473
    iget-object v0, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mTarget:Landroid/view/View;

    invoke-virtual {p0}, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 474
    invoke-virtual {p0}, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 473
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 475
    return-void
.end method

.method private moveSpinner(F)V
    .locals 3
    .param p1, "overScrollTop"    # F

    .prologue
    const/4 v2, 0x0

    .line 780
    iget-boolean v0, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mIsRefreshing:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mRefreshTargetOffset:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_4

    .line 781
    iget p1, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mRefreshTargetOffset:F

    .line 786
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mIsRefreshing:Z

    if-nez v0, :cond_1

    .line 787
    iget-object v0, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mIDragDistanceConverter:Lcom/dinuscxj/refresh/IDragDistanceConverter;

    iget v1, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mRefreshTargetOffset:F

    invoke-interface {v0, p1, v1}, Lcom/dinuscxj/refresh/IDragDistanceConverter;->convert(FF)F

    move-result p1

    .line 790
    :cond_1
    iget-object v0, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mRefreshView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    .line 791
    iget-object v0, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mRefreshView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 794
    :cond_2
    iget-boolean v0, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mIsRefreshing:Z

    if-nez v0, :cond_3

    .line 795
    iget v0, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mRefreshTargetOffset:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_5

    iget-boolean v0, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mIsFitRefresh:Z

    if-nez v0, :cond_5

    .line 796
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mIsFitRefresh:Z

    .line 797
    iget-object v0, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mIRefreshStatus:Lcom/dinuscxj/refresh/IRefreshStatus;

    invoke-interface {v0}, Lcom/dinuscxj/refresh/IRefreshStatus;->pullToRefresh()V

    .line 804
    :cond_3
    :goto_1
    iget v0, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mCurrentScrollOffset:I

    neg-int v0, v0

    int-to-float v0, v0

    sub-float/2addr v0, p1

    float-to-int v0, v0

    invoke-direct {p0, v2, v0}, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->scrollTargetOffset(II)V

    .line 805
    return-void

    .line 782
    :cond_4
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    .line 783
    const/4 p1, 0x0

    goto :goto_0

    .line 798
    :cond_5
    iget v0, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mRefreshTargetOffset:F

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_3

    iget-boolean v0, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mIsFitRefresh:Z

    if-eqz v0, :cond_3

    .line 799
    iput-boolean v2, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mIsFitRefresh:Z

    .line 800
    iget-object v0, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mIRefreshStatus:Lcom/dinuscxj/refresh/IRefreshStatus;

    invoke-interface {v0}, Lcom/dinuscxj/refresh/IRefreshStatus;->releaseToRefresh()V

    goto :goto_1
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 822
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v2

    .line 823
    .local v2, "pointerIndex":I
    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v1

    .line 825
    .local v1, "pointerId":I
    iget v3, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mActivePointerId:I

    if-ne v1, v3, :cond_0

    .line 826
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 827
    .local v0, "newPointerIndex":I
    :goto_0
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v3

    iput v3, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mActivePointerId:I

    .line 829
    .end local v0    # "newPointerIndex":I
    :cond_0
    return-void

    .line 826
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resetTouchEvent()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 684
    const/4 v0, 0x0

    iput v0, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mInitialScrollY:F

    .line 686
    iput-boolean v1, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mIsBeingDragged:Z

    .line 687
    iput-boolean v1, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mDispatchTargetTouchDown:Z

    .line 688
    const/4 v0, -0x1

    iput v0, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mActivePointerId:I

    .line 689
    return-void
.end method

.method private scrollTargetOffset(II)V
    .locals 4
    .param p1, "offsetX"    # I
    .param p2, "offsetY"    # I

    .prologue
    .line 832
    invoke-virtual {p0, p1, p2}, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->scrollBy(II)V

    .line 833
    invoke-virtual {p0}, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->getScrollY()I

    move-result v0

    iput v0, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mCurrentScrollOffset:I

    .line 835
    iget-object v0, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mIRefreshStatus:Lcom/dinuscxj/refresh/IRefreshStatus;

    iget v1, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mCurrentScrollOffset:I

    neg-int v1, v1

    int-to-float v1, v1

    iget v2, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mCurrentScrollOffset:I

    neg-int v2, v2

    int-to-float v2, v2

    iget v3, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mRefreshTargetOffset:F

    div-float/2addr v2, v3

    invoke-interface {v0, v1, v2}, Lcom/dinuscxj/refresh/IRefreshStatus;->pullProgress(FF)V

    .line 836
    return-void
.end method

.method private setRefreshing(ZZ)V
    .locals 2
    .param p1, "refreshing"    # Z
    .param p2, "notify"    # Z

    .prologue
    .line 710
    iget-boolean v0, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mIsRefreshing:Z

    if-eq v0, p1, :cond_0

    .line 711
    iput-boolean p2, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mNotifyListener:Z

    .line 712
    iput-boolean p1, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mIsRefreshing:Z

    .line 713
    if-eqz p1, :cond_1

    .line 714
    iget v0, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mCurrentScrollOffset:I

    neg-int v0, v0

    iget-object v1, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mRefreshingListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-direct {p0, v0, v1}, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->animateToRefreshingPosition(ILandroid/view/animation/Animation$AnimationListener;)V

    .line 719
    :cond_0
    :goto_0
    return-void

    .line 716
    :cond_1
    iget v0, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mCurrentScrollOffset:I

    neg-int v0, v0

    iget-object v1, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mResetListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-direct {p0, v0, v1}, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->animateOffsetToStartPosition(ILandroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0
.end method


# virtual methods
.method public canChildScrollUp(Landroid/view/View;)Z
    .locals 8
    .param p1, "mTarget"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 847
    if-nez p1, :cond_1

    .line 868
    :cond_0
    :goto_0
    return v6

    .line 851
    :cond_1
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0xe

    if-ge v4, v7, :cond_4

    instance-of v4, p1, Landroid/widget/AbsListView;

    if-eqz v4, :cond_4

    move-object v0, p1

    .line 852
    check-cast v0, Landroid/widget/AbsListView;

    .line 853
    .local v0, "absListView":Landroid/widget/AbsListView;
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v4

    if-lez v4, :cond_3

    .line 854
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v4

    if-gtz v4, :cond_2

    invoke-virtual {v0, v6}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 855
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getPaddingTop()I

    move-result v7

    if-ge v4, v7, :cond_3

    :cond_2
    move v4, v5

    :goto_1
    move v6, v4

    goto :goto_0

    :cond_3
    move v4, v6

    goto :goto_1

    .line 858
    .end local v0    # "absListView":Landroid/widget/AbsListView;
    :cond_4
    instance-of v4, p1, Landroid/view/ViewGroup;

    if-eqz v4, :cond_6

    move-object v4, p1

    .line 859
    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 860
    .local v2, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v2, :cond_6

    move-object v4, p1

    .line 861
    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 862
    .local v1, "child":Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->canChildScrollUp(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_5

    move v6, v5

    .line 863
    goto :goto_0

    .line 860
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 868
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "childCount":I
    .end local v3    # "i":I
    :cond_6
    const/4 v4, -0x1

    invoke-static {p1, v4}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v4

    if-nez v4, :cond_7

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v4

    if-lez v4, :cond_0

    :cond_7
    move v6, v5

    goto :goto_0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 944
    instance-of v0, p1, Lcom/dinuscxj/refresh/RecyclerRefreshLayout$LayoutParams;

    return v0
.end method

.method public dispatchNestedFling(FFZ)Z
    .locals 1
    .param p1, "velocityX"    # F
    .param p2, "velocityY"    # F
    .param p3, "consumed"    # Z

    .prologue
    .line 413
    iget-object v0, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mNestedScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedFling(FFZ)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedPreFling(FF)Z
    .locals 1
    .param p1, "velocityX"    # F
    .param p2, "velocityY"    # F

    .prologue
    .line 418
    iget-object v0, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mNestedScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedPreFling(FF)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .locals 1
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "consumed"    # [I
    .param p4, "offsetInWindow"    # [I

    .prologue
    .line 408
    iget-object v0, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mNestedScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedPreScroll(II[I[I)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .locals 6
    .param p1, "dxConsumed"    # I
    .param p2, "dyConsumed"    # I
    .param p3, "dxUnconsumed"    # I
    .param p4, "dyUnconsumed"    # I
    .param p5, "offsetInWindow"    # [I

    .prologue
    .line 402
    iget-object v0, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mNestedScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[I)Z

    move-result v0

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 510
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    .line 512
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 521
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 516
    :pswitch_1
    invoke-virtual {p0, p0}, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->onStopNestedScroll(Landroid/view/View;)V

    goto :goto_0

    .line 512
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->generateDefaultLayoutParams()Lcom/dinuscxj/refresh/RecyclerRefreshLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcom/dinuscxj/refresh/RecyclerRefreshLayout$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 939
    new-instance v0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Lcom/dinuscxj/refresh/RecyclerRefreshLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/dinuscxj/refresh/RecyclerRefreshLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/dinuscxj/refresh/RecyclerRefreshLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/dinuscxj/refresh/RecyclerRefreshLayout$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 929
    new-instance v0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/dinuscxj/refresh/RecyclerRefreshLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/dinuscxj/refresh/RecyclerRefreshLayout$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 934
    new-instance v0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/dinuscxj/refresh/RecyclerRefreshLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 1
    .param p1, "childCount"    # I
    .param p2, "i"    # I

    .prologue
    .line 275
    iget v0, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mRefreshViewIndex:I

    if-gez v0, :cond_1

    .line 282
    .end local p2    # "i":I
    :cond_0
    :goto_0
    return p2

    .line 277
    .restart local p2    # "i":I
    :cond_1
    if-nez p2, :cond_2

    .line 278
    iget p2, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mRefreshViewIndex:I

    goto :goto_0

    .line 279
    :cond_2
    iget v0, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mRefreshViewIndex:I

    if-gt p2, v0, :cond_0

    .line 280
    add-int/lit8 p2, p2, -0x1

    goto :goto_0
.end method

.method public getNestedScrollAxes()I
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mNestedScrollingParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingParentHelper;->getNestedScrollAxes()I

    move-result v0

    return v0
.end method

.method public hasNestedScrollingParent()Z
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mNestedScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingChildHelper;->hasNestedScrollingParent()Z

    move-result v0

    return v0
.end method

.method public isNestedScrollingEnabled()Z
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mNestedScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v0

    return v0
.end method

.method public isTargetValid()Z
    .locals 3

    .prologue
    .line 884
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 885
    iget-object v1, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mTarget:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 886
    const/4 v1, 0x1

    .line 890
    :goto_1
    return v1

    .line 884
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 890
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, -0x1

    const/high16 v5, -0x40800000    # -1.0f

    const/4 v3, 0x0

    .line 526
    invoke-direct {p0}, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->ensureTarget()V

    .line 527
    iget-object v4, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mTarget:Landroid/view/View;

    if-nez v4, :cond_1

    .line 578
    :cond_0
    :goto_0
    return v3

    .line 531
    :cond_1
    invoke-virtual {p0}, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mTarget:Landroid/view/View;

    invoke-virtual {p0, v4}, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->canChildScrollUp(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mDispatchTargetTouchDown:Z

    if-eqz v4, :cond_0

    .line 535
    :cond_2
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    .line 537
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 578
    :goto_1
    :pswitch_0
    iget-boolean v3, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mIsBeingDragged:Z

    goto :goto_0

    .line 539
    :pswitch_1
    invoke-static {p1, v3}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v4

    iput v4, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mActivePointerId:I

    .line 540
    iput-boolean v3, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mIsBeingDragged:Z

    .line 542
    iget v4, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mActivePointerId:I

    invoke-direct {p0, p1, v4}, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->getMotionEventY(Landroid/view/MotionEvent;I)F

    move-result v2

    .line 543
    .local v2, "initialDownY":F
    cmpl-float v4, v2, v5

    if-eqz v4, :cond_0

    .line 547
    iput v2, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mInitialDownY:F

    .line 548
    iget v4, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mCurrentScrollOffset:I

    int-to-float v4, v4

    iput v4, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mInitialScrollY:F

    .line 549
    iput-boolean v3, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mDispatchTargetTouchDown:Z

    goto :goto_1

    .line 553
    .end local v2    # "initialDownY":F
    :pswitch_2
    iget v4, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mActivePointerId:I

    if-eq v4, v6, :cond_0

    .line 557
    iget v4, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mActivePointerId:I

    invoke-direct {p0, p1, v4}, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->getMotionEventY(Landroid/view/MotionEvent;I)F

    move-result v1

    .line 558
    .local v1, "activeMoveY":F
    cmpl-float v4, v1, v5

    if-eqz v4, :cond_0

    .line 562
    invoke-direct {p0, v1}, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->initDragStatus(F)V

    goto :goto_1

    .line 566
    .end local v1    # "activeMoveY":F
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 571
    :pswitch_4
    iput-boolean v3, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mIsBeingDragged:Z

    .line 572
    iput v6, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mActivePointerId:I

    goto :goto_1

    .line 537
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 11
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 423
    invoke-virtual {p0}, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->getChildCount()I

    move-result v7

    if-nez v7, :cond_1

    .line 449
    :cond_0
    :goto_0
    return-void

    .line 427
    :cond_1
    invoke-direct {p0}, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->ensureTarget()V

    .line 428
    iget-object v7, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mTarget:Landroid/view/View;

    if-eqz v7, :cond_0

    .line 432
    invoke-virtual {p0}, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->getMeasuredWidth()I

    move-result v6

    .line 433
    .local v6, "width":I
    invoke-virtual {p0}, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->getMeasuredHeight()I

    move-result v4

    .line 434
    .local v4, "height":I
    invoke-virtual {p0}, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->getPaddingTop()I

    move-result v2

    .line 435
    .local v2, "childTop":I
    invoke-virtual {p0}, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->getPaddingLeft()I

    move-result v1

    .line 436
    .local v1, "childLeft":I
    invoke-virtual {p0}, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->getPaddingLeft()I

    move-result v7

    sub-int v7, v6, v7

    invoke-virtual {p0}, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->getPaddingRight()I

    move-result v8

    sub-int v3, v7, v8

    .line 437
    .local v3, "childWidth":I
    invoke-virtual {p0}, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->getPaddingTop()I

    move-result v7

    sub-int v7, v4, v7

    invoke-virtual {p0}, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->getPaddingBottom()I

    move-result v8

    sub-int v0, v7, v8

    .line 439
    .local v0, "childHeight":I
    iget-object v7, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mTarget:Landroid/view/View;

    add-int v8, v1, v3

    add-int v9, v2, v0

    invoke-virtual {v7, v1, v2, v8, v9}, Landroid/view/View;->layout(IIII)V

    .line 441
    iget v7, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mRefreshTargetOffset:F

    iget-object v8, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mRefreshView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    int-to-float v8, v8

    cmpg-float v7, v7, v8

    if-gez v7, :cond_2

    .line 442
    iget-object v7, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mRefreshView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    int-to-float v7, v7

    iput v7, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mRefreshTargetOffset:F

    .line 445
    :cond_2
    iget v7, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mRefreshTargetOffset:F

    iget v8, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mRefreshTargetOffset:F

    iget-object v9, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mRefreshView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v8, v9

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    sub-float/2addr v7, v8

    neg-float v7, v7

    float-to-int v5, v7

    .line 447
    .local v5, "offsetTop":I
    iget-object v7, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mRefreshView:Landroid/view/View;

    div-int/lit8 v8, v6, 0x2

    iget-object v9, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mRefreshView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    sub-int/2addr v8, v9

    div-int/lit8 v9, v6, 0x2

    iget-object v10, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mRefreshView:Landroid/view/View;

    .line 448
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v9, v10

    iget-object v10, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mRefreshView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v10, v5

    .line 447
    invoke-virtual {v7, v8, v5, v9, v10}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_0
.end method

.method public onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 453
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 455
    invoke-direct {p0}, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->ensureTarget()V

    .line 456
    iget-object v1, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mTarget:Landroid/view/View;

    if-nez v1, :cond_1

    .line 470
    :cond_0
    :goto_0
    return-void

    .line 460
    :cond_1
    invoke-direct {p0}, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->measureTarget()V

    .line 461
    invoke-direct {p0, p1, p2}, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->measureRefreshView(II)V

    .line 463
    const/4 v1, -0x1

    iput v1, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mRefreshViewIndex:I

    .line 464
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_1
    invoke-virtual {p0}, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 465
    invoke-virtual {p0, v0}, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mRefreshView:Landroid/view/View;

    if-ne v1, v2, :cond_2

    .line 466
    iput v0, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mRefreshViewIndex:I

    goto :goto_0

    .line 464
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 1
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F
    .param p4, "consumed"    # Z

    .prologue
    .line 371
    const/4 v0, 0x0

    return v0
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 1
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F

    .prologue
    .line 366
    const/4 v0, 0x0

    return v0
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 6
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dx"    # I
    .param p3, "dy"    # I
    .param p4, "consumed"    # [I

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 317
    if-lez p3, :cond_0

    iget v1, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mTotalUnconsumed:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_0

    .line 318
    int-to-float v1, p3

    iget v2, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mTotalUnconsumed:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 319
    iget v1, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mTotalUnconsumed:F

    float-to-int v1, v1

    sub-int v1, p3, v1

    aput v1, p4, v4

    .line 320
    iput v3, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mTotalUnconsumed:F

    .line 325
    :goto_0
    iget v1, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mTotalUnconsumed:F

    invoke-direct {p0, v1}, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->moveSpinner(F)V

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mParentScrollConsumed:[I

    .line 329
    .local v0, "parentConsumed":[I
    aget v1, p4, v5

    sub-int v1, p2, v1

    aget v2, p4, v4

    sub-int v2, p3, v2

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->dispatchNestedPreScroll(II[I[I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 330
    aget v1, p4, v5

    aget v2, v0, v5

    add-int/2addr v1, v2

    aput v1, p4, v5

    .line 331
    aget v1, p4, v4

    aget v2, v0, v4

    add-int/2addr v1, v2

    aput v1, p4, v4

    .line 333
    :cond_1
    return-void

    .line 322
    .end local v0    # "parentConsumed":[I
    :cond_2
    iget v1, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mTotalUnconsumed:F

    int-to-float v2, p3

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mTotalUnconsumed:F

    .line 323
    aput p3, p4, v4

    goto :goto_0
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 6
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dxConsumed"    # I
    .param p3, "dyConsumed"    # I
    .param p4, "dxUnconsumed"    # I
    .param p5, "dyUnconsumed"    # I

    .prologue
    .line 354
    if-gez p5, :cond_0

    .line 355
    invoke-static {p5}, Ljava/lang/Math;->abs(I)I

    move-result p5

    .line 356
    iget v0, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mTotalUnconsumed:F

    int-to-float v1, p5

    add-float/2addr v0, v1

    iput v0, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mTotalUnconsumed:F

    .line 357
    iget v0, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mTotalUnconsumed:F

    invoke-direct {p0, v0}, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->moveSpinner(F)V

    .line 360
    :cond_0
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->dispatchNestedScroll(IIII[I)Z

    .line 361
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "axes"    # I

    .prologue
    .line 311
    iget-object v0, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mNestedScrollingParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/view/NestedScrollingParentHelper;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    .line 312
    const/4 v0, 0x0

    iput v0, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mTotalUnconsumed:F

    .line 313
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "nestedScrollAxes"    # I

    .prologue
    .line 302
    invoke-virtual {p0}, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_0

    .line 303
    and-int/lit8 v0, p3, 0x2

    invoke-virtual {p0, v0}, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->startNestedScroll(I)Z

    .line 304
    const/4 v0, 0x1

    .line 306
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 2
    .param p1, "target"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 342
    iget-object v0, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mNestedScrollingParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/NestedScrollingParentHelper;->onStopNestedScroll(Landroid/view/View;)V

    .line 343
    iget v0, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mTotalUnconsumed:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 344
    invoke-direct {p0}, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->finishSpinner()V

    .line 345
    iput v1, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mTotalUnconsumed:F

    .line 348
    :cond_0
    invoke-virtual {p0}, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->stopNestedScroll()V

    .line 349
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v10, -0x1

    const/4 v9, 0x0

    const/high16 v8, -0x40800000    # -1.0f

    const/4 v5, 0x0

    .line 583
    invoke-direct {p0}, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->ensureTarget()V

    .line 584
    iget-object v7, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mTarget:Landroid/view/View;

    if-nez v7, :cond_1

    .line 680
    :cond_0
    :goto_0
    return v5

    .line 588
    :cond_1
    invoke-virtual {p0}, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mTarget:Landroid/view/View;

    invoke-virtual {p0, v7}, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->canChildScrollUp(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-boolean v7, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mDispatchTargetTouchDown:Z

    if-eqz v7, :cond_0

    .line 592
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 594
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    :goto_1
    :pswitch_0
    move v5, v6

    .line 680
    goto :goto_0

    .line 596
    :pswitch_1
    invoke-static {p1, v5}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v7

    iput v7, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mActivePointerId:I

    .line 597
    iput-boolean v5, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mIsBeingDragged:Z

    goto :goto_1

    .line 601
    :pswitch_2
    iget v7, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mActivePointerId:I

    if-eq v7, v10, :cond_0

    .line 605
    iget v7, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mActivePointerId:I

    invoke-direct {p0, p1, v7}, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->getMotionEventY(Landroid/view/MotionEvent;I)F

    move-result v1

    .line 606
    .local v1, "activeMoveY":F
    cmpl-float v7, v1, v8

    if-eqz v7, :cond_0

    .line 611
    iget-boolean v7, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mIsAnimatingToStart:Z

    if-eqz v7, :cond_4

    .line 612
    invoke-virtual {p0}, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->getScrollY()I

    move-result v7

    neg-int v7, v7

    int-to-float v4, v7

    .line 614
    .local v4, "overScrollY":F
    iput v1, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mInitialMotionY:F

    .line 615
    invoke-virtual {p0}, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->getScrollY()I

    move-result v7

    int-to-float v7, v7

    iput v7, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mInitialScrollY:F

    .line 620
    :goto_2
    iget-boolean v7, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mIsRefreshing:Z

    if-eqz v7, :cond_6

    .line 621
    cmpg-float v7, v4, v9

    if-gtz v7, :cond_3

    .line 622
    iget-boolean v7, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mDispatchTargetTouchDown:Z

    if-eqz v7, :cond_5

    .line 623
    iget-object v5, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mTarget:Landroid/view/View;

    invoke-virtual {v5, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 631
    :cond_3
    :goto_3
    invoke-direct {p0, v4}, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->moveSpinner(F)V

    goto :goto_1

    .line 617
    .end local v4    # "overScrollY":F
    :cond_4
    iget v7, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mInitialMotionY:F

    sub-float v7, v1, v7

    iget v8, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mInitialScrollY:F

    neg-float v8, v8

    add-float v4, v7, v8

    .restart local v4    # "overScrollY":F
    goto :goto_2

    .line 625
    :cond_5
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    .line 626
    .local v3, "obtain":Landroid/view/MotionEvent;
    invoke-virtual {v3, v5}, Landroid/view/MotionEvent;->setAction(I)V

    .line 627
    iput-boolean v6, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mDispatchTargetTouchDown:Z

    .line 628
    iget-object v5, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mTarget:Landroid/view/View;

    invoke-virtual {v5, v3}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_3

    .line 633
    .end local v3    # "obtain":Landroid/view/MotionEvent;
    :cond_6
    iget-boolean v7, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mIsBeingDragged:Z

    if-eqz v7, :cond_7

    .line 634
    cmpl-float v7, v4, v9

    if-lez v7, :cond_0

    .line 635
    invoke-direct {p0, v4}, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->moveSpinner(F)V

    goto :goto_1

    .line 640
    :cond_7
    invoke-direct {p0, v1}, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->initDragStatus(F)V

    goto :goto_1

    .line 647
    .end local v1    # "activeMoveY":F
    .end local v4    # "overScrollY":F
    :pswitch_3
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v2

    .line 648
    .local v2, "index":I
    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v5

    iput v5, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mActivePointerId:I

    goto :goto_1

    .line 653
    .end local v2    # "index":I
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 658
    :pswitch_5
    iget v6, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mActivePointerId:I

    if-eq v6, v10, :cond_8

    iget v6, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mActivePointerId:I

    .line 659
    invoke-direct {p0, p1, v6}, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->getMotionEventY(Landroid/view/MotionEvent;I)F

    move-result v6

    cmpl-float v6, v6, v8

    if-nez v6, :cond_9

    .line 660
    :cond_8
    invoke-direct {p0}, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->resetTouchEvent()V

    goto/16 :goto_0

    .line 664
    :cond_9
    iget-boolean v6, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mIsRefreshing:Z

    if-nez v6, :cond_a

    iget-boolean v6, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mIsAnimatingToStart:Z

    if-eqz v6, :cond_c

    .line 665
    :cond_a
    iget-boolean v6, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mDispatchTargetTouchDown:Z

    if-eqz v6, :cond_b

    .line 666
    iget-object v6, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mTarget:Landroid/view/View;

    invoke-virtual {v6, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 668
    :cond_b
    invoke-direct {p0}, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->resetTouchEvent()V

    goto/16 :goto_0

    .line 672
    :cond_c
    invoke-direct {p0}, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->resetTouchEvent()V

    .line 673
    invoke-direct {p0}, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->finishSpinner()V

    goto/16 :goto_0

    .line 594
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_5
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 2
    .param p1, "b"    # Z

    .prologue
    .line 291
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mTarget:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/AbsListView;

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mTarget:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mTarget:Landroid/view/View;

    .line 292
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->isNestedScrollingEnabled(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 297
    :cond_1
    :goto_0
    return-void

    .line 295
    :cond_2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0
.end method

.method public setAnimateToRefreshDuration(I)V
    .locals 0
    .param p1, "animateToRefreshDuration"    # I

    .prologue
    .line 262
    iput p1, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mAnimateToRefreshDuration:I

    .line 263
    return-void
.end method

.method public setAnimateToRefreshInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0
    .param p1, "animateToRefreshInterpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 245
    iput-object p1, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mAnimateToRefreshInterpolator:Landroid/view/animation/Interpolator;

    .line 246
    return-void
.end method

.method public setAnimateToStartDuration(I)V
    .locals 0
    .param p1, "animateToStartDuration"    # I

    .prologue
    .line 254
    iput p1, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mAnimateToStartDuration:I

    .line 255
    return-void
.end method

.method public setAnimateToStartInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0
    .param p1, "animateToStartInterpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 236
    iput-object p1, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mAnimateToStartInterpolator:Landroid/view/animation/Interpolator;

    .line 237
    return-void
.end method

.method public setDragDistanceConverter(Lcom/dinuscxj/refresh/IDragDistanceConverter;)V
    .locals 2
    .param p1, "dragDistanceConverter"    # Lcom/dinuscxj/refresh/IDragDistanceConverter;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 224
    if-nez p1, :cond_0

    .line 225
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "the dragDistanceConverter can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 227
    :cond_0
    iput-object p1, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mIDragDistanceConverter:Lcom/dinuscxj/refresh/IDragDistanceConverter;

    .line 228
    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 376
    iget-object v0, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mNestedScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/NestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    .line 377
    return-void
.end method

.method public setOnRefreshListener(Lcom/dinuscxj/refresh/RecyclerRefreshLayout$OnRefreshListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/dinuscxj/refresh/RecyclerRefreshLayout$OnRefreshListener;

    .prologue
    .line 898
    iput-object p1, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mOnRefreshListener:Lcom/dinuscxj/refresh/RecyclerRefreshLayout$OnRefreshListener;

    .line 899
    return-void
.end method

.method public setRefreshTargetOffset(F)V
    .locals 0
    .param p1, "refreshTargetOffset"    # F

    .prologue
    .line 269
    iput p1, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mRefreshTargetOffset:F

    .line 270
    invoke-virtual {p0}, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->requestLayout()V

    .line 271
    return-void
.end method

.method public setRefreshView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "refreshView"    # Landroid/view/View;
    .param p2, "layoutParams"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 205
    iget-object v0, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mRefreshView:Landroid/view/View;

    if-ne v0, p1, :cond_0

    .line 221
    :goto_0
    return-void

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mRefreshView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mRefreshView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 210
    iget-object v0, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mRefreshView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mRefreshView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 213
    :cond_1
    iput-object p1, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mRefreshView:Landroid/view/View;

    .line 215
    iget-object v0, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mRefreshView:Landroid/view/View;

    instance-of v0, v0, Lcom/dinuscxj/refresh/IRefreshStatus;

    if-eqz v0, :cond_2

    .line 216
    iget-object v0, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mRefreshView:Landroid/view/View;

    check-cast v0, Lcom/dinuscxj/refresh/IRefreshStatus;

    iput-object v0, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mIRefreshStatus:Lcom/dinuscxj/refresh/IRefreshStatus;

    .line 220
    iget-object v0, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mRefreshView:Landroid/view/View;

    invoke-virtual {p0, v0, p2}, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 218
    :cond_2
    new-instance v0, Ljava/lang/ClassCastException;

    const-string/jumbo v1, "the refreshView must implement the interface IRefreshStatus"

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setRefreshing(Z)V
    .locals 2
    .param p1, "refreshing"    # Z

    .prologue
    const/4 v1, 0x0

    .line 698
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mIsRefreshing:Z

    if-eq v0, p1, :cond_0

    .line 699
    iput-boolean p1, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mIsRefreshing:Z

    .line 700
    invoke-direct {p0, v1, v1}, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->scrollTargetOffset(II)V

    .line 701
    iput-boolean v1, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mNotifyListener:Z

    .line 703
    iget v0, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mCurrentScrollOffset:I

    neg-int v0, v0

    iget-object v1, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mRefreshingListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-direct {p0, v0, v1}, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->animateToRefreshingPosition(ILandroid/view/animation/Animation$AnimationListener;)V

    .line 707
    :goto_0
    return-void

    .line 705
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->setRefreshing(ZZ)V

    goto :goto_0
.end method

.method public startNestedScroll(I)Z
    .locals 1
    .param p1, "axes"    # I

    .prologue
    .line 386
    iget-object v0, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mNestedScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/NestedScrollingChildHelper;->startNestedScroll(I)Z

    move-result v0

    return v0
.end method

.method public stopNestedScroll()V
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->mNestedScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingChildHelper;->stopNestedScroll()V

    .line 392
    return-void
.end method
