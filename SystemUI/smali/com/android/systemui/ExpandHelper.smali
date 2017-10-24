.class public Lcom/android/systemui/ExpandHelper;
.super Ljava/lang/Object;
.source "ExpandHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/ExpandHelper$1;,
        Lcom/android/systemui/ExpandHelper$Callback;,
        Lcom/android/systemui/ExpandHelper$ViewScaler;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/android/systemui/ExpandHelper$Callback;

.field private mContext:Landroid/content/Context;

.field private mCurrentHeight:F

.field private mEnabled:Z

.field private mEventSource:Landroid/view/View;

.field private mExpanding:Z

.field private mExpansionStyle:I

.field private mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

.field private mGravity:I

.field private mHasPopped:Z

.field private mInitialTouchFocusY:F

.field private mInitialTouchSpan:F

.field private mInitialTouchX:F

.field private mInitialTouchY:F

.field private mLargeSize:I

.field private mLastFocusY:F

.field private mLastMotionY:F

.field private mLastSpanY:F

.field private mMaximumStretch:F

.field private mNaturalHeight:F

.field private mOldHeight:F

.field private mOnlyMovements:Z

.field private mPullGestureMinXSpan:F

.field private mResizedView:Lcom/android/systemui/statusbar/ExpandableView;

.field private mSGD:Landroid/view/ScaleGestureDetector;

.field private mScaleAnimation:Landroid/animation/ObjectAnimator;

.field private mScaleGestureListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

.field private mScaler:Lcom/android/systemui/ExpandHelper$ViewScaler;

.field private mScrollAdapter:Lcom/android/systemui/statusbar/policy/ScrollAdapter;

.field private mSmallSize:I

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mWatchingForPull:Z


# direct methods
.method static synthetic -get0(Lcom/android/systemui/ExpandHelper;)Lcom/android/systemui/ExpandHelper$Callback;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/ExpandHelper;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/ExpandHelper;->mExpanding:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/systemui/ExpandHelper;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/ExpandHelper;->mOnlyMovements:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/systemui/ExpandHelper;)Lcom/android/systemui/statusbar/ExpandableView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/ExpandableView;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/ExpandHelper;)Landroid/animation/ObjectAnimator;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/ExpandHelper;F)F
    .locals 0

    iput p1, p0, Lcom/android/systemui/ExpandHelper;->mCurrentHeight:F

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/ExpandHelper;Lcom/android/systemui/statusbar/ExpandableView;I)Z
    .locals 1
    .param p1, "v"    # Lcom/android/systemui/statusbar/ExpandableView;
    .param p2, "expandType"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/ExpandHelper;->startExpanding(Lcom/android/systemui/statusbar/ExpandableView;I)Z

    move-result v0

    return v0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/ExpandHelper$Callback;II)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/systemui/ExpandHelper$Callback;
    .param p3, "small"    # I
    .param p4, "large"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput v5, p0, Lcom/android/systemui/ExpandHelper;->mExpansionStyle:I

    .line 95
    iput-boolean v3, p0, Lcom/android/systemui/ExpandHelper;->mEnabled:Z

    .line 111
    new-instance v1, Lcom/android/systemui/ExpandHelper$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/ExpandHelper$1;-><init>(Lcom/android/systemui/ExpandHelper;)V

    .line 110
    iput-object v1, p0, Lcom/android/systemui/ExpandHelper;->mScaleGestureListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    .line 162
    iput p3, p0, Lcom/android/systemui/ExpandHelper;->mSmallSize:I

    .line 163
    iget v1, p0, Lcom/android/systemui/ExpandHelper;->mSmallSize:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/android/systemui/ExpandHelper;->mMaximumStretch:F

    .line 164
    iput p4, p0, Lcom/android/systemui/ExpandHelper;->mLargeSize:I

    .line 165
    iput-object p1, p0, Lcom/android/systemui/ExpandHelper;->mContext:Landroid/content/Context;

    .line 166
    iput-object p2, p0, Lcom/android/systemui/ExpandHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    .line 167
    new-instance v1, Lcom/android/systemui/ExpandHelper$ViewScaler;

    invoke-direct {v1, p0}, Lcom/android/systemui/ExpandHelper$ViewScaler;-><init>(Lcom/android/systemui/ExpandHelper;)V

    iput-object v1, p0, Lcom/android/systemui/ExpandHelper;->mScaler:Lcom/android/systemui/ExpandHelper$ViewScaler;

    .line 168
    const/16 v1, 0x30

    iput v1, p0, Lcom/android/systemui/ExpandHelper;->mGravity:I

    .line 169
    iget-object v1, p0, Lcom/android/systemui/ExpandHelper;->mScaler:Lcom/android/systemui/ExpandHelper$ViewScaler;

    const-string/jumbo v2, "height"

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v4, v3, v5

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/ExpandHelper;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    .line 170
    iget-object v1, p0, Lcom/android/systemui/ExpandHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0206

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/ExpandHelper;->mPullGestureMinXSpan:F

    .line 172
    iget-object v1, p0, Lcom/android/systemui/ExpandHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 173
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/ExpandHelper;->mTouchSlop:I

    .line 175
    new-instance v1, Landroid/view/ScaleGestureDetector;

    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mScaleGestureListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-direct {v1, p1, v2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v1, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    .line 176
    new-instance v1, Lcom/android/systemui/statusbar/FlingAnimationUtils;

    const v2, 0x3e99999a    # 0.3f

    invoke-direct {v1, p1, v2}, Lcom/android/systemui/statusbar/FlingAnimationUtils;-><init>(Landroid/content/Context;F)V

    iput-object v1, p0, Lcom/android/systemui/ExpandHelper;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    .line 161
    return-void
.end method

.method private clamp(F)F
    .locals 2
    .param p1, "target"    # F

    .prologue
    .line 197
    move v0, p1

    .line 198
    .local v0, "out":F
    iget v1, p0, Lcom/android/systemui/ExpandHelper;->mSmallSize:I

    int-to-float v1, v1

    cmpg-float v1, p1, v1

    if-gez v1, :cond_1

    iget v1, p0, Lcom/android/systemui/ExpandHelper;->mSmallSize:I

    int-to-float v0, v1

    .line 199
    :goto_0
    iget v1, p0, Lcom/android/systemui/ExpandHelper;->mNaturalHeight:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    iget v0, p0, Lcom/android/systemui/ExpandHelper;->mNaturalHeight:F

    .line 200
    :cond_0
    return v0

    .line 198
    :cond_1
    move v0, p1

    goto :goto_0
.end method

.method private clearView()V
    .locals 1

    .prologue
    .line 602
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/ExpandableView;

    .line 601
    return-void
.end method

.method private findView(FF)Lcom/android/systemui/statusbar/ExpandableView;
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 205
    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mEventSource:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 206
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 207
    .local v0, "location":[I
    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mEventSource:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 208
    const/4 v2, 0x0

    aget v2, v0, v2

    int-to-float v2, v2

    add-float/2addr p1, v2

    .line 209
    const/4 v2, 0x1

    aget v2, v0, v2

    int-to-float v2, v2

    add-float/2addr p2, v2

    .line 210
    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    invoke-interface {v2, p1, p2}, Lcom/android/systemui/ExpandHelper$Callback;->getChildAtRawPosition(FF)Lcom/android/systemui/statusbar/ExpandableView;

    move-result-object v1

    .line 214
    .end local v0    # "location":[I
    .local v1, "v":Lcom/android/systemui/statusbar/ExpandableView;
    :goto_0
    return-object v1

    .line 212
    .end local v1    # "v":Lcom/android/systemui/statusbar/ExpandableView;
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    invoke-interface {v2, p1, p2}, Lcom/android/systemui/ExpandHelper$Callback;->getChildAtPosition(FF)Lcom/android/systemui/statusbar/ExpandableView;

    move-result-object v1

    .restart local v1    # "v":Lcom/android/systemui/statusbar/ExpandableView;
    goto :goto_0
.end method

.method private finishExpanding(ZF)V
    .locals 13
    .param p1, "force"    # Z
    .param p2, "velocity"    # F

    .prologue
    const/4 v9, 0x1

    const/4 v12, 0x0

    const/4 v10, 0x0

    .line 530
    iget-boolean v8, p0, Lcom/android/systemui/ExpandHelper;->mExpanding:Z

    if-nez v8, :cond_0

    return-void

    .line 534
    :cond_0
    iget-object v8, p0, Lcom/android/systemui/ExpandHelper;->mScaler:Lcom/android/systemui/ExpandHelper$ViewScaler;

    invoke-virtual {v8}, Lcom/android/systemui/ExpandHelper$ViewScaler;->getHeight()F

    move-result v0

    .line 535
    .local v0, "currentHeight":F
    iget-object v8, p0, Lcom/android/systemui/ExpandHelper;->mScaler:Lcom/android/systemui/ExpandHelper$ViewScaler;

    invoke-virtual {v8}, Lcom/android/systemui/ExpandHelper$ViewScaler;->getHeight()F

    move-result v2

    .line 536
    .local v2, "h":F
    iget v8, p0, Lcom/android/systemui/ExpandHelper;->mOldHeight:F

    iget v11, p0, Lcom/android/systemui/ExpandHelper;->mSmallSize:I

    int-to-float v11, v11

    cmpl-float v8, v8, v11

    if-nez v8, :cond_3

    const/4 v7, 0x1

    .line 538
    .local v7, "wasClosed":Z
    :goto_0
    iget-object v8, p0, Lcom/android/systemui/ExpandHelper;->mScaler:Lcom/android/systemui/ExpandHelper$ViewScaler;

    invoke-virtual {v8}, Lcom/android/systemui/ExpandHelper$ViewScaler;->getNaturalHeight()I

    move-result v3

    .line 539
    .local v3, "naturalHeight":I
    if-eqz v7, :cond_5

    .line 540
    if-nez p1, :cond_1

    iget v8, p0, Lcom/android/systemui/ExpandHelper;->mOldHeight:F

    cmpl-float v8, v0, v8

    if-lez v8, :cond_4

    cmpl-float v8, p2, v12

    if-ltz v8, :cond_4

    :cond_1
    const/4 v4, 0x1

    .line 544
    .local v4, "nowExpanded":Z
    :goto_1
    iget v8, p0, Lcom/android/systemui/ExpandHelper;->mNaturalHeight:F

    iget v11, p0, Lcom/android/systemui/ExpandHelper;->mSmallSize:I

    int-to-float v11, v11

    cmpl-float v8, v8, v11

    if-nez v8, :cond_8

    move v8, v9

    :goto_2
    or-int/2addr v4, v8

    .line 545
    .local v4, "nowExpanded":Z
    iget-object v8, p0, Lcom/android/systemui/ExpandHelper;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v8}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 546
    iget-object v8, p0, Lcom/android/systemui/ExpandHelper;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v8}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 548
    :cond_2
    iget-object v8, p0, Lcom/android/systemui/ExpandHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    invoke-interface {v8, v10}, Lcom/android/systemui/ExpandHelper$Callback;->expansionStateChanged(Z)V

    .line 549
    if-eqz v4, :cond_9

    .end local v3    # "naturalHeight":I
    :goto_3
    int-to-float v6, v3

    .line 550
    .local v6, "targetHeight":F
    cmpl-float v8, v6, v0

    if-eqz v8, :cond_c

    .line 551
    iget-object v8, p0, Lcom/android/systemui/ExpandHelper;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    new-array v11, v9, [F

    aput v6, v11, v10

    invoke-virtual {v8, v11}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 552
    iget-object v8, p0, Lcom/android/systemui/ExpandHelper;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v8}, Landroid/animation/ObjectAnimator;->setupStartValues()V

    .line 553
    iget-object v5, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/ExpandableView;

    .line 554
    .local v5, "scaledView":Landroid/view/View;
    move v1, v4

    .line 555
    .local v1, "expand":Z
    iget-object v8, p0, Lcom/android/systemui/ExpandHelper;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    new-instance v11, Lcom/android/systemui/ExpandHelper$2;

    invoke-direct {v11, p0, v5, v4}, Lcom/android/systemui/ExpandHelper$2;-><init>(Lcom/android/systemui/ExpandHelper;Landroid/view/View;Z)V

    invoke-virtual {v8, v11}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 574
    cmpl-float v8, p2, v12

    if-ltz v8, :cond_a

    :goto_4
    if-ne v4, v9, :cond_b

    .line 575
    :goto_5
    iget-object v8, p0, Lcom/android/systemui/ExpandHelper;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    iget-object v9, p0, Lcom/android/systemui/ExpandHelper;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v8, v9, v0, v6, p2}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->apply(Landroid/animation/Animator;FFF)V

    .line 576
    iget-object v8, p0, Lcom/android/systemui/ExpandHelper;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v8}, Landroid/animation/ObjectAnimator;->start()V

    .line 591
    .end local v1    # "expand":Z
    .end local v5    # "scaledView":Landroid/view/View;
    :goto_6
    iput-boolean v10, p0, Lcom/android/systemui/ExpandHelper;->mExpanding:Z

    .line 592
    iput v10, p0, Lcom/android/systemui/ExpandHelper;->mExpansionStyle:I

    .line 529
    return-void

    .line 536
    .end local v4    # "nowExpanded":Z
    .end local v6    # "targetHeight":F
    .end local v7    # "wasClosed":Z
    :cond_3
    const/4 v7, 0x0

    .restart local v7    # "wasClosed":Z
    goto :goto_0

    .line 540
    .restart local v3    # "naturalHeight":I
    :cond_4
    const/4 v4, 0x0

    .local v4, "nowExpanded":Z
    goto :goto_1

    .line 542
    .end local v4    # "nowExpanded":Z
    :cond_5
    if-nez p1, :cond_7

    iget v8, p0, Lcom/android/systemui/ExpandHelper;->mOldHeight:F

    cmpl-float v8, v0, v8

    if-gez v8, :cond_6

    cmpl-float v8, p2, v12

    if-lez v8, :cond_7

    :cond_6
    const/4 v4, 0x1

    .restart local v4    # "nowExpanded":Z
    goto :goto_1

    .end local v4    # "nowExpanded":Z
    :cond_7
    const/4 v4, 0x0

    .restart local v4    # "nowExpanded":Z
    goto :goto_1

    :cond_8
    move v8, v10

    .line 544
    goto :goto_2

    .line 549
    .local v4, "nowExpanded":Z
    :cond_9
    iget v3, p0, Lcom/android/systemui/ExpandHelper;->mSmallSize:I

    goto :goto_3

    .end local v3    # "naturalHeight":I
    .restart local v1    # "expand":Z
    .restart local v5    # "scaledView":Landroid/view/View;
    .restart local v6    # "targetHeight":F
    :cond_a
    move v9, v10

    .line 574
    goto :goto_4

    :cond_b
    const/4 p2, 0x0

    goto :goto_5

    .line 578
    .end local v1    # "expand":Z
    .end local v5    # "scaledView":Landroid/view/View;
    :cond_c
    iget-object v8, p0, Lcom/android/systemui/ExpandHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    iget-object v9, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/ExpandableView;

    invoke-interface {v8, v9, v4}, Lcom/android/systemui/ExpandHelper$Callback;->setUserExpandedChild(Landroid/view/View;Z)V

    .line 579
    iget-object v8, p0, Lcom/android/systemui/ExpandHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    iget-object v9, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/ExpandableView;

    invoke-interface {v8, v9, v10}, Lcom/android/systemui/ExpandHelper$Callback;->setUserLockedChild(Landroid/view/View;Z)V

    goto :goto_6
.end method

.method private getCurrentVelocity()F
    .locals 2

    .prologue
    .line 370
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 372
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    return v0

    .line 374
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isEnabled()Z
    .locals 1

    .prologue
    .line 383
    iget-boolean v0, p0, Lcom/android/systemui/ExpandHelper;->mEnabled:Z

    return v0
.end method

.method private isFullyExpanded(Lcom/android/systemui/statusbar/ExpandableView;)Z
    .locals 2
    .param p1, "underFocus"    # Lcom/android/systemui/statusbar/ExpandableView;

    .prologue
    .line 387
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableView;->getIntrinsicHeight()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableView;->getMaxContentHeight()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 388
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableView;->isSummaryWithChildren()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableView;->areChildrenExpanded()Z

    move-result v0

    .line 387
    :goto_0
    return v0

    .line 388
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 387
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isInside(Landroid/view/View;FF)Z
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 220
    if-nez p1, :cond_0

    .line 222
    return v4

    .line 224
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mEventSource:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 225
    new-array v1, v6, [I

    .line 226
    .local v1, "location":[I
    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mEventSource:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 227
    aget v2, v1, v4

    int-to-float v2, v2

    add-float/2addr p2, v2

    .line 228
    aget v2, v1, v3

    int-to-float v2, v2

    add-float/2addr p3, v2

    .line 231
    .end local v1    # "location":[I
    :cond_1
    new-array v1, v6, [I

    .line 232
    .restart local v1    # "location":[I
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 233
    aget v2, v1, v4

    int-to-float v2, v2

    sub-float/2addr p2, v2

    .line 234
    aget v2, v1, v3

    int-to-float v2, v2

    sub-float/2addr p3, v2

    .line 237
    cmpl-float v2, p2, v5

    if-lez v2, :cond_4

    cmpl-float v2, p3, v5

    if-lez v2, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, p2, v2

    if-gez v2, :cond_2

    move v2, v3

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v5, p3, v5

    if-gez v5, :cond_3

    :goto_1
    and-int v0, v2, v3

    .line 238
    .local v0, "inside":Z
    :goto_2
    return v0

    .end local v0    # "inside":Z
    :cond_2
    move v2, v4

    .line 237
    goto :goto_0

    :cond_3
    move v3, v4

    goto :goto_1

    :cond_4
    move v0, v4

    goto :goto_2
.end method

.method private maybeRecycleVelocityTracker(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 362
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 363
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 365
    iput-object v2, p0, Lcom/android/systemui/ExpandHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 361
    :cond_1
    return-void
.end method

.method private startExpanding(Lcom/android/systemui/statusbar/ExpandableView;I)Z
    .locals 3
    .param p1, "v"    # Lcom/android/systemui/statusbar/ExpandableView;
    .param p2, "expandType"    # I

    .prologue
    const/4 v2, 0x1

    .line 501
    instance-of v1, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-nez v1, :cond_0

    .line 502
    const/4 v1, 0x0

    return v1

    .line 504
    :cond_0
    iput p2, p0, Lcom/android/systemui/ExpandHelper;->mExpansionStyle:I

    .line 505
    iget-boolean v1, p0, Lcom/android/systemui/ExpandHelper;->mExpanding:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/ExpandableView;

    if-ne p1, v1, :cond_1

    .line 506
    return v2

    .line 508
    :cond_1
    iput-boolean v2, p0, Lcom/android/systemui/ExpandHelper;->mExpanding:Z

    .line 509
    iget-object v1, p0, Lcom/android/systemui/ExpandHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    invoke-interface {v1, v2}, Lcom/android/systemui/ExpandHelper$Callback;->expansionStateChanged(Z)V

    .line 511
    iget-object v1, p0, Lcom/android/systemui/ExpandHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    invoke-interface {v1, p1, v2}, Lcom/android/systemui/ExpandHelper$Callback;->setUserLockedChild(Landroid/view/View;Z)V

    .line 512
    iget-object v1, p0, Lcom/android/systemui/ExpandHelper;->mScaler:Lcom/android/systemui/ExpandHelper$ViewScaler;

    invoke-virtual {v1, p1}, Lcom/android/systemui/ExpandHelper$ViewScaler;->setView(Lcom/android/systemui/statusbar/ExpandableView;)V

    .line 513
    iget-object v1, p0, Lcom/android/systemui/ExpandHelper;->mScaler:Lcom/android/systemui/ExpandHelper$ViewScaler;

    invoke-virtual {v1}, Lcom/android/systemui/ExpandHelper$ViewScaler;->getHeight()F

    move-result v1

    iput v1, p0, Lcom/android/systemui/ExpandHelper;->mOldHeight:F

    .line 514
    iget v1, p0, Lcom/android/systemui/ExpandHelper;->mOldHeight:F

    iput v1, p0, Lcom/android/systemui/ExpandHelper;->mCurrentHeight:F

    .line 515
    iget-object v1, p0, Lcom/android/systemui/ExpandHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    invoke-interface {v1, p1}, Lcom/android/systemui/ExpandHelper$Callback;->canChildBeExpanded(Landroid/view/View;)Z

    move-result v0

    .line 516
    .local v0, "canBeExpanded":Z
    if-eqz v0, :cond_2

    .line 518
    iget-object v1, p0, Lcom/android/systemui/ExpandHelper;->mScaler:Lcom/android/systemui/ExpandHelper$ViewScaler;

    invoke-virtual {v1}, Lcom/android/systemui/ExpandHelper$ViewScaler;->getNaturalHeight()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/systemui/ExpandHelper;->mNaturalHeight:F

    .line 519
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableView;->getCollapsedHeight()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/ExpandHelper;->mSmallSize:I

    .line 526
    :goto_0
    return v2

    .line 522
    :cond_2
    iget v1, p0, Lcom/android/systemui/ExpandHelper;->mOldHeight:F

    iput v1, p0, Lcom/android/systemui/ExpandHelper;->mNaturalHeight:F

    goto :goto_0
.end method

.method private trackVelocity(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 340
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 341
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 339
    :goto_0
    :pswitch_0
    return-void

    .line 343
    :pswitch_1
    iget-object v1, p0, Lcom/android/systemui/ExpandHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v1, :cond_0

    .line 344
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/ExpandHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 348
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/ExpandHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 346
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/ExpandHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_1

    .line 351
    :pswitch_2
    iget-object v1, p0, Lcom/android/systemui/ExpandHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v1, :cond_1

    .line 352
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/ExpandHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 354
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/ExpandHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 341
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private updateExpansion()V
    .locals 9

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    .line 182
    iget-object v6, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v6}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v6

    iget v8, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchSpan:F

    sub-float v4, v6, v8

    .line 183
    .local v4, "span":F
    mul-float/2addr v4, v7

    .line 184
    iget-object v6, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v6}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v6

    iget v8, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchFocusY:F

    sub-float v0, v6, v8

    .line 185
    .local v0, "drag":F
    mul-float/2addr v0, v7

    .line 186
    iget v6, p0, Lcom/android/systemui/ExpandHelper;->mGravity:I

    const/16 v8, 0x50

    if-ne v6, v8, :cond_0

    const/high16 v6, -0x40800000    # -1.0f

    :goto_0
    mul-float/2addr v0, v6

    .line 187
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v8

    add-float/2addr v6, v8

    add-float v3, v6, v7

    .line 188
    .local v3, "pull":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v6

    mul-float/2addr v6, v0

    div-float/2addr v6, v3

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v7

    mul-float/2addr v7, v4

    div-float/2addr v7, v3

    add-float v1, v6, v7

    .line 189
    .local v1, "hand":F
    iget v6, p0, Lcom/android/systemui/ExpandHelper;->mOldHeight:F

    add-float v5, v1, v6

    .line 190
    .local v5, "target":F
    invoke-direct {p0, v5}, Lcom/android/systemui/ExpandHelper;->clamp(F)F

    move-result v2

    .line 191
    .local v2, "newHeight":F
    iget-object v6, p0, Lcom/android/systemui/ExpandHelper;->mScaler:Lcom/android/systemui/ExpandHelper$ViewScaler;

    invoke-virtual {v6, v2}, Lcom/android/systemui/ExpandHelper$ViewScaler;->setHeight(F)V

    .line 192
    iget-object v6, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v6}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v6

    iput v6, p0, Lcom/android/systemui/ExpandHelper;->mLastFocusY:F

    .line 193
    iget-object v6, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v6}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v6

    iput v6, p0, Lcom/android/systemui/ExpandHelper;->mLastSpanY:F

    .line 179
    return-void

    .end local v1    # "hand":F
    .end local v2    # "newHeight":F
    .end local v3    # "pull":F
    .end local v5    # "target":F
    :cond_0
    move v6, v7

    .line 186
    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .prologue
    .line 609
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/ExpandHelper;->finishExpanding(ZF)V

    .line 610
    invoke-direct {p0}, Lcom/android/systemui/ExpandHelper;->clearView()V

    .line 613
    new-instance v0, Landroid/view/ScaleGestureDetector;

    iget-object v1, p0, Lcom/android/systemui/ExpandHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mScaleGestureListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    .line 608
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v7, 0x0

    .line 255
    invoke-direct {p0}, Lcom/android/systemui/ExpandHelper;->isEnabled()Z

    move-result v6

    if-nez v6, :cond_0

    .line 256
    return v7

    .line 258
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/ExpandHelper;->trackVelocity(Landroid/view/MotionEvent;)V

    .line 259
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 266
    .local v0, "action":I
    iget-object v6, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v6, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 267
    iget-object v6, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v6}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v6

    float-to-int v1, v6

    .line 268
    .local v1, "x":I
    iget-object v6, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v6}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v6

    float-to-int v4, v6

    .line 270
    .local v4, "y":I
    int-to-float v6, v4

    iput v6, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchFocusY:F

    .line 271
    iget-object v6, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v6}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v6

    iput v6, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchSpan:F

    .line 272
    iget v6, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchFocusY:F

    iput v6, p0, Lcom/android/systemui/ExpandHelper;->mLastFocusY:F

    .line 273
    iget v6, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchSpan:F

    iput v6, p0, Lcom/android/systemui/ExpandHelper;->mLastSpanY:F

    .line 276
    iget-boolean v6, p0, Lcom/android/systemui/ExpandHelper;->mExpanding:Z

    if-eqz v6, :cond_1

    .line 277
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    iput v6, p0, Lcom/android/systemui/ExpandHelper;->mLastMotionY:F

    .line 278
    invoke-direct {p0, p1}, Lcom/android/systemui/ExpandHelper;->maybeRecycleVelocityTracker(Landroid/view/MotionEvent;)V

    .line 279
    return v9

    .line 281
    :cond_1
    if-ne v0, v8, :cond_2

    iget v6, p0, Lcom/android/systemui/ExpandHelper;->mExpansionStyle:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_2

    .line 283
    return v9

    .line 285
    :cond_2
    and-int/lit16 v6, v0, 0xff

    packed-switch v6, :pswitch_data_0

    .line 333
    :cond_3
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    iput v6, p0, Lcom/android/systemui/ExpandHelper;->mLastMotionY:F

    .line 334
    invoke-direct {p0, p1}, Lcom/android/systemui/ExpandHelper;->maybeRecycleVelocityTracker(Landroid/view/MotionEvent;)V

    .line 335
    iget-boolean v6, p0, Lcom/android/systemui/ExpandHelper;->mExpanding:Z

    return v6

    .line 287
    :pswitch_0
    iget-object v6, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v6}, Landroid/view/ScaleGestureDetector;->getCurrentSpanX()F

    move-result v3

    .line 288
    .local v3, "xspan":F
    iget v6, p0, Lcom/android/systemui/ExpandHelper;->mPullGestureMinXSpan:F

    cmpl-float v6, v3, v6

    if-lez v6, :cond_4

    .line 289
    iget-object v6, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v6}, Landroid/view/ScaleGestureDetector;->getCurrentSpanY()F

    move-result v6

    cmpl-float v6, v3, v6

    if-lez v6, :cond_4

    iget-boolean v6, p0, Lcom/android/systemui/ExpandHelper;->mExpanding:Z

    if-eqz v6, :cond_5

    .line 295
    :cond_4
    :goto_1
    iget-boolean v6, p0, Lcom/android/systemui/ExpandHelper;->mWatchingForPull:Z

    if-eqz v6, :cond_3

    .line 296
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    iget v8, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchY:F

    sub-float v5, v6, v8

    .line 297
    .local v5, "yDiff":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    iget v8, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchX:F

    sub-float v2, v6, v8

    .line 298
    .local v2, "xDiff":F
    iget v6, p0, Lcom/android/systemui/ExpandHelper;->mTouchSlop:I

    int-to-float v6, v6

    cmpl-float v6, v5, v6

    if-lez v6, :cond_3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v6, v5, v6

    if-lez v6, :cond_3

    .line 300
    iput-boolean v7, p0, Lcom/android/systemui/ExpandHelper;->mWatchingForPull:Z

    .line 301
    iget-object v6, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/ExpandableView;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/ExpandableView;

    invoke-direct {p0, v6}, Lcom/android/systemui/ExpandHelper;->isFullyExpanded(Lcom/android/systemui/statusbar/ExpandableView;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 302
    iget-object v6, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/ExpandableView;

    invoke-direct {p0, v6, v9}, Lcom/android/systemui/ExpandHelper;->startExpanding(Lcom/android/systemui/statusbar/ExpandableView;I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 303
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    iput v6, p0, Lcom/android/systemui/ExpandHelper;->mLastMotionY:F

    .line 304
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    iput v6, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchY:F

    .line 305
    iput-boolean v7, p0, Lcom/android/systemui/ExpandHelper;->mHasPopped:Z

    goto :goto_0

    .line 292
    .end local v2    # "xDiff":F
    .end local v5    # "yDiff":F
    :cond_5
    iget-object v6, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/ExpandableView;

    invoke-direct {p0, v6, v8}, Lcom/android/systemui/ExpandHelper;->startExpanding(Lcom/android/systemui/statusbar/ExpandableView;I)Z

    .line 293
    iput-boolean v7, p0, Lcom/android/systemui/ExpandHelper;->mWatchingForPull:Z

    goto :goto_1

    .line 314
    .end local v3    # "xspan":F
    :pswitch_1
    iget-object v6, p0, Lcom/android/systemui/ExpandHelper;->mScrollAdapter:Lcom/android/systemui/statusbar/policy/ScrollAdapter;

    if-eqz v6, :cond_7

    .line 315
    iget-object v6, p0, Lcom/android/systemui/ExpandHelper;->mScrollAdapter:Lcom/android/systemui/statusbar/policy/ScrollAdapter;

    invoke-interface {v6}, Lcom/android/systemui/statusbar/policy/ScrollAdapter;->getHostView()Landroid/view/View;

    move-result-object v6

    int-to-float v8, v1

    int-to-float v9, v4

    invoke-direct {p0, v6, v8, v9}, Lcom/android/systemui/ExpandHelper;->isInside(Landroid/view/View;FF)Z

    move-result v6

    .line 314
    if-eqz v6, :cond_7

    .line 316
    iget-object v6, p0, Lcom/android/systemui/ExpandHelper;->mScrollAdapter:Lcom/android/systemui/statusbar/policy/ScrollAdapter;

    invoke-interface {v6}, Lcom/android/systemui/statusbar/policy/ScrollAdapter;->isScrolledToTop()Z

    move-result v6

    .line 314
    :goto_2
    iput-boolean v6, p0, Lcom/android/systemui/ExpandHelper;->mWatchingForPull:Z

    .line 317
    int-to-float v6, v1

    int-to-float v8, v4

    invoke-direct {p0, v6, v8}, Lcom/android/systemui/ExpandHelper;->findView(FF)Lcom/android/systemui/statusbar/ExpandableView;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/ExpandableView;

    .line 318
    iget-object v6, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/ExpandableView;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/systemui/ExpandHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    iget-object v8, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/ExpandableView;

    invoke-interface {v6, v8}, Lcom/android/systemui/ExpandHelper$Callback;->canChildBeExpanded(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 322
    :cond_6
    :goto_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    iput v6, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchY:F

    .line 323
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    iput v6, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchX:F

    goto/16 :goto_0

    :cond_7
    move v6, v7

    .line 314
    goto :goto_2

    .line 319
    :cond_8
    iput-object v10, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/ExpandableView;

    .line 320
    iput-boolean v7, p0, Lcom/android/systemui/ExpandHelper;->mWatchingForPull:Z

    goto :goto_3

    .line 329
    :pswitch_2
    invoke-direct {p0}, Lcom/android/systemui/ExpandHelper;->getCurrentVelocity()F

    move-result v6

    invoke-direct {p0, v7, v6}, Lcom/android/systemui/ExpandHelper;->finishExpanding(ZF)V

    .line 330
    invoke-direct {p0}, Lcom/android/systemui/ExpandHelper;->clearView()V

    goto/16 :goto_0

    .line 285
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 393
    invoke-direct {p0}, Lcom/android/systemui/ExpandHelper;->isEnabled()Z

    move-result v9

    if-nez v9, :cond_0

    .line 394
    return v10

    .line 396
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/ExpandHelper;->trackVelocity(Landroid/view/MotionEvent;)V

    .line 397
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 404
    .local v0, "action":I
    iget-object v9, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v9, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 405
    iget-object v9, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v9}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v9

    float-to-int v5, v9

    .line 406
    .local v5, "x":I
    iget-object v9, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v9}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v9

    float-to-int v7, v9

    .line 408
    .local v7, "y":I
    iget-boolean v9, p0, Lcom/android/systemui/ExpandHelper;->mOnlyMovements:Z

    if-eqz v9, :cond_1

    .line 409
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v9

    iput v9, p0, Lcom/android/systemui/ExpandHelper;->mLastMotionY:F

    .line 410
    return v10

    .line 412
    :cond_1
    packed-switch v0, :pswitch_data_0

    .line 492
    :cond_2
    :goto_0
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v9

    iput v9, p0, Lcom/android/systemui/ExpandHelper;->mLastMotionY:F

    .line 493
    invoke-direct {p0, p1}, Lcom/android/systemui/ExpandHelper;->maybeRecycleVelocityTracker(Landroid/view/MotionEvent;)V

    .line 494
    iget-object v9, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/ExpandableView;

    if-eqz v9, :cond_3

    move v10, v11

    :cond_3
    return v10

    .line 414
    :pswitch_1
    iget-object v9, p0, Lcom/android/systemui/ExpandHelper;->mScrollAdapter:Lcom/android/systemui/statusbar/policy/ScrollAdapter;

    if-eqz v9, :cond_4

    .line 415
    iget-object v9, p0, Lcom/android/systemui/ExpandHelper;->mScrollAdapter:Lcom/android/systemui/statusbar/policy/ScrollAdapter;

    invoke-interface {v9}, Lcom/android/systemui/statusbar/policy/ScrollAdapter;->getHostView()Landroid/view/View;

    move-result-object v9

    int-to-float v12, v5

    int-to-float v13, v7

    invoke-direct {p0, v9, v12, v13}, Lcom/android/systemui/ExpandHelper;->isInside(Landroid/view/View;FF)Z

    move-result v9

    .line 414
    :goto_1
    iput-boolean v9, p0, Lcom/android/systemui/ExpandHelper;->mWatchingForPull:Z

    .line 416
    int-to-float v9, v5

    int-to-float v12, v7

    invoke-direct {p0, v9, v12}, Lcom/android/systemui/ExpandHelper;->findView(FF)Lcom/android/systemui/statusbar/ExpandableView;

    move-result-object v9

    iput-object v9, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/ExpandableView;

    .line 417
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v9

    iput v9, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchX:F

    .line 418
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v9

    iput v9, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchY:F

    goto :goto_0

    :cond_4
    move v9, v10

    .line 414
    goto :goto_1

    .line 421
    :pswitch_2
    iget-boolean v9, p0, Lcom/android/systemui/ExpandHelper;->mWatchingForPull:Z

    if-eqz v9, :cond_5

    .line 422
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v9

    iget v12, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchY:F

    sub-float v8, v9, v12

    .line 423
    .local v8, "yDiff":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v9

    iget v12, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchX:F

    sub-float v6, v9, v12

    .line 424
    .local v6, "xDiff":F
    iget v9, p0, Lcom/android/systemui/ExpandHelper;->mTouchSlop:I

    int-to-float v9, v9

    cmpl-float v9, v8, v9

    if-lez v9, :cond_5

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpl-float v9, v8, v9

    if-lez v9, :cond_5

    .line 426
    iput-boolean v10, p0, Lcom/android/systemui/ExpandHelper;->mWatchingForPull:Z

    .line 427
    iget-object v9, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/ExpandableView;

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/ExpandableView;

    invoke-direct {p0, v9}, Lcom/android/systemui/ExpandHelper;->isFullyExpanded(Lcom/android/systemui/statusbar/ExpandableView;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 436
    .end local v6    # "xDiff":F
    .end local v8    # "yDiff":F
    :cond_5
    :goto_2
    iget-boolean v9, p0, Lcom/android/systemui/ExpandHelper;->mExpanding:Z

    if-eqz v9, :cond_c

    iget v9, p0, Lcom/android/systemui/ExpandHelper;->mExpansionStyle:I

    and-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_c

    .line 437
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v9

    iget v12, p0, Lcom/android/systemui/ExpandHelper;->mLastMotionY:F

    sub-float/2addr v9, v12

    iget v12, p0, Lcom/android/systemui/ExpandHelper;->mCurrentHeight:F

    add-float v4, v9, v12

    .line 438
    .local v4, "rawHeight":F
    invoke-direct {p0, v4}, Lcom/android/systemui/ExpandHelper;->clamp(F)F

    move-result v3

    .line 439
    .local v3, "newHeight":F
    const/4 v2, 0x0

    .line 440
    .local v2, "isFinished":Z
    const/4 v1, 0x0

    .line 441
    .local v1, "expanded":Z
    iget v9, p0, Lcom/android/systemui/ExpandHelper;->mNaturalHeight:F

    cmpl-float v9, v4, v9

    if-lez v9, :cond_6

    .line 442
    const/4 v2, 0x1

    .line 443
    const/4 v1, 0x1

    .line 445
    :cond_6
    iget v9, p0, Lcom/android/systemui/ExpandHelper;->mSmallSize:I

    int-to-float v9, v9

    cmpg-float v9, v4, v9

    if-gez v9, :cond_7

    .line 446
    const/4 v2, 0x1

    .line 447
    const/4 v1, 0x0

    .line 450
    :cond_7
    iget-boolean v9, p0, Lcom/android/systemui/ExpandHelper;->mHasPopped:Z

    if-nez v9, :cond_9

    .line 451
    iget-object v9, p0, Lcom/android/systemui/ExpandHelper;->mEventSource:Landroid/view/View;

    if-eqz v9, :cond_8

    .line 452
    iget-object v9, p0, Lcom/android/systemui/ExpandHelper;->mEventSource:Landroid/view/View;

    invoke-virtual {v9, v11}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 454
    :cond_8
    iput-boolean v11, p0, Lcom/android/systemui/ExpandHelper;->mHasPopped:Z

    .line 457
    :cond_9
    iget-object v9, p0, Lcom/android/systemui/ExpandHelper;->mScaler:Lcom/android/systemui/ExpandHelper$ViewScaler;

    invoke-virtual {v9, v3}, Lcom/android/systemui/ExpandHelper$ViewScaler;->setHeight(F)V

    .line 458
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v9

    iput v9, p0, Lcom/android/systemui/ExpandHelper;->mLastMotionY:F

    .line 459
    if-eqz v2, :cond_b

    .line 460
    iget-object v9, p0, Lcom/android/systemui/ExpandHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    invoke-interface {v9, v10}, Lcom/android/systemui/ExpandHelper$Callback;->expansionStateChanged(Z)V

    .line 464
    :goto_3
    return v11

    .line 428
    .end local v1    # "expanded":Z
    .end local v2    # "isFinished":Z
    .end local v3    # "newHeight":F
    .end local v4    # "rawHeight":F
    .restart local v6    # "xDiff":F
    .restart local v8    # "yDiff":F
    :cond_a
    iget-object v9, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/ExpandableView;

    invoke-direct {p0, v9, v11}, Lcom/android/systemui/ExpandHelper;->startExpanding(Lcom/android/systemui/statusbar/ExpandableView;I)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 429
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v9

    iput v9, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchY:F

    .line 430
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v9

    iput v9, p0, Lcom/android/systemui/ExpandHelper;->mLastMotionY:F

    .line 431
    iput-boolean v10, p0, Lcom/android/systemui/ExpandHelper;->mHasPopped:Z

    goto :goto_2

    .line 462
    .end local v6    # "xDiff":F
    .end local v8    # "yDiff":F
    .restart local v1    # "expanded":Z
    .restart local v2    # "isFinished":Z
    .restart local v3    # "newHeight":F
    .restart local v4    # "rawHeight":F
    :cond_b
    iget-object v9, p0, Lcom/android/systemui/ExpandHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    invoke-interface {v9, v11}, Lcom/android/systemui/ExpandHelper$Callback;->expansionStateChanged(Z)V

    goto :goto_3

    .line 467
    .end local v1    # "expanded":Z
    .end local v2    # "isFinished":Z
    .end local v3    # "newHeight":F
    .end local v4    # "rawHeight":F
    :cond_c
    iget-boolean v9, p0, Lcom/android/systemui/ExpandHelper;->mExpanding:Z

    if-eqz v9, :cond_2

    .line 470
    invoke-direct {p0}, Lcom/android/systemui/ExpandHelper;->updateExpansion()V

    .line 471
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v9

    iput v9, p0, Lcom/android/systemui/ExpandHelper;->mLastMotionY:F

    .line 472
    return v11

    .line 481
    :pswitch_3
    iget v9, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchY:F

    iget-object v12, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v12}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v12

    iget v13, p0, Lcom/android/systemui/ExpandHelper;->mLastFocusY:F

    sub-float/2addr v12, v13

    add-float/2addr v9, v12

    iput v9, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchY:F

    .line 482
    iget v9, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchSpan:F

    iget-object v12, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v12}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v12

    iget v13, p0, Lcom/android/systemui/ExpandHelper;->mLastSpanY:F

    sub-float/2addr v12, v13

    add-float/2addr v9, v12

    iput v9, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchSpan:F

    goto/16 :goto_0

    .line 488
    :pswitch_4
    invoke-direct {p0}, Lcom/android/systemui/ExpandHelper;->getCurrentVelocity()F

    move-result v9

    invoke-direct {p0, v10, v9}, Lcom/android/systemui/ExpandHelper;->finishExpanding(ZF)V

    .line 489
    invoke-direct {p0}, Lcom/android/systemui/ExpandHelper;->clearView()V

    goto/16 :goto_0

    .line 412
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public onlyObserveMovements(Z)V
    .locals 0
    .param p1, "onlyMovements"    # Z

    .prologue
    .line 625
    iput-boolean p1, p0, Lcom/android/systemui/ExpandHelper;->mOnlyMovements:Z

    .line 624
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 379
    iput-boolean p1, p0, Lcom/android/systemui/ExpandHelper;->mEnabled:Z

    .line 378
    return-void
.end method

.method public setEventSource(Landroid/view/View;)V
    .locals 0
    .param p1, "eventSource"    # Landroid/view/View;

    .prologue
    .line 242
    iput-object p1, p0, Lcom/android/systemui/ExpandHelper;->mEventSource:Landroid/view/View;

    .line 241
    return-void
.end method

.method public setScrollAdapter(Lcom/android/systemui/statusbar/policy/ScrollAdapter;)V
    .locals 0
    .param p1, "adapter"    # Lcom/android/systemui/statusbar/policy/ScrollAdapter;

    .prologue
    .line 250
    iput-object p1, p0, Lcom/android/systemui/ExpandHelper;->mScrollAdapter:Lcom/android/systemui/statusbar/policy/ScrollAdapter;

    .line 249
    return-void
.end method
