.class public Lcom/android/systemui/swipe/SwipeAnimator;
.super Ljava/lang/Object;
.source "SwipeAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/swipe/SwipeAnimator$1;,
        Lcom/android/systemui/swipe/SwipeAnimator$AnimatorCallback;
    }
.end annotation


# instance fields
.field private mAffordancePivotX:I

.field private mAffordancePivotY:I

.field private mAnimatorCallback:Lcom/android/systemui/swipe/SwipeAnimator$AnimatorCallback;

.field private mBottomViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mBounceOut:Lcom/android/keyguard/swipe/BounceEaseOut;

.field private mCenterIcon:Landroid/view/View;

.field private mClockView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mDistance:D

.field private mFullScreenAnimSet:Landroid/animation/AnimatorSet;

.field private mFullScreenModeEnabled:Z

.field private mIconSlotView:Landroid/view/View;

.field private mIntercepting:Z

.field private mIrisTextPreview:Landroid/view/View;

.field private mIsFullScreenModeShown:Z

.field private mIsTouching:Z

.field private mLeftShortcut:Landroid/view/View;

.field private mLongPressAllowHeight:I

.field private mLongPressCallback:Ljava/lang/Runnable;

.field private mNotiPanelView:Landroid/view/View;

.field private mNotiView:Landroid/view/View;

.field private mPreviewFocusAnimSet:Landroid/animation/AnimatorSet;

.field private mRestoreAnimSet:Landroid/animation/AnimatorSet;

.field private mRightShortcut:Landroid/view/View;

.field private mShortcutSwipingAnim:Landroid/animation/AnimatorSet;

.field private final mSineIn33:Landroid/view/animation/Interpolator;

.field private final mSineInOut33:Landroid/view/animation/Interpolator;

.field private final mSineOut33:Landroid/view/animation/Interpolator;

.field private mStatusBarView:Landroid/view/View;

.field private mSwipeUnlockRadius:I

.field private mTapAnimRestoreSet:Landroid/animation/AnimatorSet;

.field private mTapAnimShrinkSet:Landroid/animation/AnimatorSet;

.field private mTouchDownX:F

.field private mTouchDownY:F

.field private mTouchSlop:I

.field private mUnlockExecuted:Z

.field private mUnlockViewHideAnim:Landroid/animation/AnimatorSet;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/swipe/SwipeAnimator;)Lcom/android/systemui/swipe/SwipeAnimator$AnimatorCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mAnimatorCallback:Lcom/android/systemui/swipe/SwipeAnimator$AnimatorCallback;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/swipe/SwipeAnimator;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mBottomViewList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/systemui/swipe/SwipeAnimator;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRightShortcut:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/systemui/swipe/SwipeAnimator;)Landroid/animation/AnimatorSet;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mTapAnimRestoreSet:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/swipe/SwipeAnimator;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mClockView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/swipe/SwipeAnimator;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/swipe/SwipeAnimator;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFullScreenModeEnabled:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/systemui/swipe/SwipeAnimator;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIconSlotView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/swipe/SwipeAnimator;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIrisTextPreview:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/systemui/swipe/SwipeAnimator;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mLeftShortcut:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/systemui/swipe/SwipeAnimator;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotiPanelView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/systemui/swipe/SwipeAnimator;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotiView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/swipe/SwipeAnimator;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIsFullScreenModeShown:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/swipe/SwipeAnimator;Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/swipe/SwipeAnimator;->setFullScreenMode(Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    const v6, 0x3f2b851f    # 0.67f

    const v5, 0x3ea8f5c3    # 0.33f

    const v2, 0x3e2e147b    # 0.17f

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mBottomViewList:Ljava/util/ArrayList;

    .line 80
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mDistance:D

    .line 87
    iput-boolean v3, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mUnlockExecuted:Z

    .line 88
    iput-boolean v3, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIsTouching:Z

    .line 90
    new-instance v0, Lcom/android/keyguard/swipe/BounceEaseOut;

    invoke-direct {v0}, Lcom/android/keyguard/swipe/BounceEaseOut;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mBounceOut:Lcom/android/keyguard/swipe/BounceEaseOut;

    .line 91
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v2, v6, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mSineOut33:Landroid/view/animation/Interpolator;

    .line 92
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f547ae1    # 0.83f

    const v2, 0x3f547ae1    # 0.83f

    invoke-direct {v0, v5, v4, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mSineIn33:Landroid/view/animation/Interpolator;

    .line 93
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v5, v4, v6, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mSineInOut33:Landroid/view/animation/Interpolator;

    .line 101
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mTapAnimShrinkSet:Landroid/animation/AnimatorSet;

    .line 102
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mTapAnimRestoreSet:Landroid/animation/AnimatorSet;

    .line 110
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mUnlockViewHideAnim:Landroid/animation/AnimatorSet;

    .line 111
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRestoreAnimSet:Landroid/animation/AnimatorSet;

    .line 125
    iput-boolean v3, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFullScreenModeEnabled:Z

    .line 126
    iput-boolean v3, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIsFullScreenModeShown:Z

    .line 127
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFullScreenAnimSet:Landroid/animation/AnimatorSet;

    .line 128
    new-instance v0, Lcom/android/systemui/swipe/SwipeAnimator$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/swipe/SwipeAnimator$1;-><init>(Lcom/android/systemui/swipe/SwipeAnimator;)V

    iput-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mLongPressCallback:Ljava/lang/Runnable;

    .line 140
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mShortcutSwipingAnim:Landroid/animation/AnimatorSet;

    .line 861
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mPreviewFocusAnimSet:Landroid/animation/AnimatorSet;

    .line 156
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;Lcom/android/systemui/swipe/SwipeAnimator$AnimatorCallback;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "notiPanelView"    # Landroid/view/View;
    .param p3, "bottomArea"    # Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;
    .param p4, "callback"    # Lcom/android/systemui/swipe/SwipeAnimator$AnimatorCallback;

    .prologue
    const v6, 0x3f2b851f    # 0.67f

    const v5, 0x3ea8f5c3    # 0.33f

    const v2, 0x3e2e147b    # 0.17f

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mBottomViewList:Ljava/util/ArrayList;

    .line 80
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mDistance:D

    .line 87
    iput-boolean v3, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mUnlockExecuted:Z

    .line 88
    iput-boolean v3, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIsTouching:Z

    .line 90
    new-instance v0, Lcom/android/keyguard/swipe/BounceEaseOut;

    invoke-direct {v0}, Lcom/android/keyguard/swipe/BounceEaseOut;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mBounceOut:Lcom/android/keyguard/swipe/BounceEaseOut;

    .line 91
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v2, v6, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mSineOut33:Landroid/view/animation/Interpolator;

    .line 92
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f547ae1    # 0.83f

    const v2, 0x3f547ae1    # 0.83f

    invoke-direct {v0, v5, v4, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mSineIn33:Landroid/view/animation/Interpolator;

    .line 93
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v5, v4, v6, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mSineInOut33:Landroid/view/animation/Interpolator;

    .line 101
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mTapAnimShrinkSet:Landroid/animation/AnimatorSet;

    .line 102
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mTapAnimRestoreSet:Landroid/animation/AnimatorSet;

    .line 110
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mUnlockViewHideAnim:Landroid/animation/AnimatorSet;

    .line 111
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRestoreAnimSet:Landroid/animation/AnimatorSet;

    .line 125
    iput-boolean v3, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFullScreenModeEnabled:Z

    .line 126
    iput-boolean v3, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIsFullScreenModeShown:Z

    .line 127
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFullScreenAnimSet:Landroid/animation/AnimatorSet;

    .line 128
    new-instance v0, Lcom/android/systemui/swipe/SwipeAnimator$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/swipe/SwipeAnimator$1;-><init>(Lcom/android/systemui/swipe/SwipeAnimator;)V

    iput-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mLongPressCallback:Ljava/lang/Runnable;

    .line 140
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mShortcutSwipingAnim:Landroid/animation/AnimatorSet;

    .line 861
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mPreviewFocusAnimSet:Landroid/animation/AnimatorSet;

    .line 161
    iput-object p1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mContext:Landroid/content/Context;

    .line 164
    iput-object p2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotiPanelView:Landroid/view/View;

    .line 165
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotiPanelView:Landroid/view/View;

    const v1, 0x7f1301db

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mClockView:Landroid/view/View;

    .line 166
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotiPanelView:Landroid/view/View;

    const v1, 0x7f1303f6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotiView:Landroid/view/View;

    .line 167
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotiPanelView:Landroid/view/View;

    const v1, 0x7f1301f5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mStatusBarView:Landroid/view/View;

    .line 172
    invoke-virtual {p0, p3}, Lcom/android/systemui/swipe/SwipeAnimator;->setBottomViewsList(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V

    .line 175
    iput-object p4, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mAnimatorCallback:Lcom/android/systemui/swipe/SwipeAnimator$AnimatorCallback;

    .line 177
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mTouchSlop:I

    .line 178
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mAffordancePivotX:I

    .line 179
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mAffordancePivotY:I

    .line 180
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d01f7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mLongPressAllowHeight:I

    .line 182
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d049b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mSwipeUnlockRadius:I

    .line 183
    invoke-direct {p0}, Lcom/android/systemui/swipe/SwipeAnimator;->setChildViewPivot()V

    .line 160
    return-void
.end method

.method private isAnimationRunning()Z
    .locals 1

    .prologue
    .line 361
    invoke-direct {p0}, Lcom/android/systemui/swipe/SwipeAnimator;->isTapAnimationRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRestoreAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isTapAnimationRunning()Z
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mTapAnimShrinkSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mTapAnimRestoreSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private resetChildViewVI()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/high16 v3, 0x3f800000    # 1.0f

    .line 726
    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mClockView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getScaleX()F

    move-result v2

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 727
    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mAnimatorCallback:Lcom/android/systemui/swipe/SwipeAnimator$AnimatorCallback;

    invoke-interface {v2}, Lcom/android/systemui/swipe/SwipeAnimator$AnimatorCallback;->getBarStatus()I

    move-result v2

    if-gt v2, v4, :cond_0

    .line 728
    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mClockView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 729
    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mClockView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setScaleX(F)V

    .line 730
    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mClockView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setScaleY(F)V

    .line 733
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIrisTextPreview:Landroid/view/View;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIrisTextPreview:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getScaleX()F

    move-result v2

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1

    .line 734
    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mAnimatorCallback:Lcom/android/systemui/swipe/SwipeAnimator$AnimatorCallback;

    invoke-interface {v2}, Lcom/android/systemui/swipe/SwipeAnimator$AnimatorCallback;->getBarStatus()I

    move-result v2

    if-gt v2, v4, :cond_1

    .line 735
    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIrisTextPreview:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 736
    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIrisTextPreview:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setScaleX(F)V

    .line 737
    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIrisTextPreview:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setScaleY(F)V

    .line 740
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotiView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 741
    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotiView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setScaleX(F)V

    .line 742
    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotiView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setScaleY(F)V

    .line 744
    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mLeftShortcut:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getScaleX()F

    move-result v2

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_2

    .line 745
    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mLeftShortcut:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setScaleX(F)V

    .line 746
    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mLeftShortcut:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setScaleY(F)V

    .line 749
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRightShortcut:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getScaleX()F

    move-result v2

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_3

    .line 750
    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRightShortcut:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setScaleX(F)V

    .line 751
    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRightShortcut:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setScaleY(F)V

    .line 754
    :cond_3
    sget-boolean v2, Lcom/android/systemui/SystemUIRune;->SUPPORT_NOTIFICATION_ICONS_ONLY:Z

    if-eqz v2, :cond_4

    .line 755
    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIconSlotView:Landroid/view/View;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIconSlotView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getScaleX()F

    move-result v2

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_4

    .line 756
    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIconSlotView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setScaleX(F)V

    .line 757
    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIconSlotView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setScaleY(F)V

    .line 758
    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIconSlotView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 761
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mStatusBarView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 762
    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mLeftShortcut:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 763
    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRightShortcut:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 764
    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mCenterIcon:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 766
    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mBottomViewList:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "v$iterator":Ljava/util/Iterator;
    :cond_5
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 767
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_5

    .line 768
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 769
    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleX(F)V

    .line 770
    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleY(F)V

    goto :goto_0

    .line 719
    .end local v0    # "v":Landroid/view/View;
    :cond_6
    return-void
.end method

.method private restoreChildViewVI()V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 665
    iget-boolean v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mUnlockExecuted:Z

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/swipe/SwipeAnimator;->isTapAnimationRunning()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 666
    :cond_0
    const-string/jumbo v2, "SwipeAnimator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "restoreChildViewVI(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mUnlockExecuted:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    return-void

    .line 670
    :cond_1
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRestoreAnimSet:Landroid/animation/AnimatorSet;

    .line 671
    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRestoreAnimSet:Landroid/animation/AnimatorSet;

    const-wide/16 v4, 0xfa

    invoke-virtual {v2, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 672
    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRestoreAnimSet:Landroid/animation/AnimatorSet;

    iget-object v3, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mSineOut33:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 674
    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRestoreAnimSet:Landroid/animation/AnimatorSet;

    new-array v3, v9, [Landroid/animation/Animator;

    iget-object v4, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mClockView:Landroid/view/View;

    sget-object v5, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v6, v11, [F

    iget-object v7, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mClockView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getScaleX()F

    move-result v7

    aput v7, v6, v8

    aput v10, v6, v9

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 675
    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRestoreAnimSet:Landroid/animation/AnimatorSet;

    new-array v3, v9, [Landroid/animation/Animator;

    iget-object v4, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mClockView:Landroid/view/View;

    sget-object v5, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v6, v11, [F

    iget-object v7, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mClockView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getScaleY()F

    move-result v7

    aput v7, v6, v8

    aput v10, v6, v9

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 676
    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRestoreAnimSet:Landroid/animation/AnimatorSet;

    new-array v3, v9, [Landroid/animation/Animator;

    iget-object v4, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mClockView:Landroid/view/View;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v11, [F

    iget-object v7, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mClockView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getAlpha()F

    move-result v7

    aput v7, v6, v8

    aput v10, v6, v9

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 678
    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIrisTextPreview:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 679
    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRestoreAnimSet:Landroid/animation/AnimatorSet;

    new-array v3, v9, [Landroid/animation/Animator;

    iget-object v4, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIrisTextPreview:Landroid/view/View;

    sget-object v5, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v6, v11, [F

    .line 680
    iget-object v7, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIrisTextPreview:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getScaleX()F

    move-result v7

    aput v7, v6, v8

    aput v10, v6, v9

    .line 679
    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 681
    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRestoreAnimSet:Landroid/animation/AnimatorSet;

    new-array v3, v9, [Landroid/animation/Animator;

    iget-object v4, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIrisTextPreview:Landroid/view/View;

    sget-object v5, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v6, v11, [F

    .line 682
    iget-object v7, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIrisTextPreview:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getScaleY()F

    move-result v7

    aput v7, v6, v8

    aput v10, v6, v9

    .line 681
    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 683
    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRestoreAnimSet:Landroid/animation/AnimatorSet;

    new-array v3, v9, [Landroid/animation/Animator;

    iget-object v4, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIrisTextPreview:Landroid/view/View;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v11, [F

    .line 684
    iget-object v7, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIrisTextPreview:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getAlpha()F

    move-result v7

    aput v7, v6, v8

    aput v10, v6, v9

    .line 683
    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 687
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRestoreAnimSet:Landroid/animation/AnimatorSet;

    new-array v3, v9, [Landroid/animation/Animator;

    iget-object v4, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotiView:Landroid/view/View;

    sget-object v5, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v6, v11, [F

    iget-object v7, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotiView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getScaleX()F

    move-result v7

    aput v7, v6, v8

    aput v10, v6, v9

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 688
    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRestoreAnimSet:Landroid/animation/AnimatorSet;

    new-array v3, v9, [Landroid/animation/Animator;

    iget-object v4, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotiView:Landroid/view/View;

    sget-object v5, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v6, v11, [F

    iget-object v7, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotiView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getScaleY()F

    move-result v7

    aput v7, v6, v8

    aput v10, v6, v9

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 689
    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRestoreAnimSet:Landroid/animation/AnimatorSet;

    new-array v3, v9, [Landroid/animation/Animator;

    iget-object v4, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotiView:Landroid/view/View;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v11, [F

    iget-object v7, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotiView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getAlpha()F

    move-result v7

    aput v7, v6, v8

    aput v10, v6, v9

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 691
    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRestoreAnimSet:Landroid/animation/AnimatorSet;

    new-array v3, v9, [Landroid/animation/Animator;

    iget-object v4, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mLeftShortcut:Landroid/view/View;

    sget-object v5, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v6, v11, [F

    iget-object v7, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mLeftShortcut:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getScaleX()F

    move-result v7

    aput v7, v6, v8

    aput v10, v6, v9

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 692
    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRestoreAnimSet:Landroid/animation/AnimatorSet;

    new-array v3, v9, [Landroid/animation/Animator;

    iget-object v4, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mLeftShortcut:Landroid/view/View;

    sget-object v5, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v6, v11, [F

    iget-object v7, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mLeftShortcut:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getScaleY()F

    move-result v7

    aput v7, v6, v8

    aput v10, v6, v9

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 693
    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRestoreAnimSet:Landroid/animation/AnimatorSet;

    new-array v3, v9, [Landroid/animation/Animator;

    iget-object v4, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mLeftShortcut:Landroid/view/View;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v11, [F

    iget-object v7, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mLeftShortcut:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getAlpha()F

    move-result v7

    aput v7, v6, v8

    aput v10, v6, v9

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 695
    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRestoreAnimSet:Landroid/animation/AnimatorSet;

    new-array v3, v9, [Landroid/animation/Animator;

    iget-object v4, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRightShortcut:Landroid/view/View;

    sget-object v5, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v6, v11, [F

    iget-object v7, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRightShortcut:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getScaleX()F

    move-result v7

    aput v7, v6, v8

    aput v10, v6, v9

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 696
    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRestoreAnimSet:Landroid/animation/AnimatorSet;

    new-array v3, v9, [Landroid/animation/Animator;

    iget-object v4, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRightShortcut:Landroid/view/View;

    sget-object v5, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v6, v11, [F

    iget-object v7, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRightShortcut:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getScaleY()F

    move-result v7

    aput v7, v6, v8

    aput v10, v6, v9

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 697
    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRestoreAnimSet:Landroid/animation/AnimatorSet;

    new-array v3, v9, [Landroid/animation/Animator;

    iget-object v4, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRightShortcut:Landroid/view/View;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v11, [F

    iget-object v7, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRightShortcut:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getAlpha()F

    move-result v7

    aput v7, v6, v8

    aput v10, v6, v9

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 699
    sget-boolean v2, Lcom/android/systemui/SystemUIRune;->SUPPORT_NOTIFICATION_ICONS_ONLY:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIconSlotView:Landroid/view/View;

    if-eqz v2, :cond_3

    .line 700
    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRestoreAnimSet:Landroid/animation/AnimatorSet;

    new-array v3, v9, [Landroid/animation/Animator;

    iget-object v4, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIconSlotView:Landroid/view/View;

    sget-object v5, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v6, v11, [F

    iget-object v7, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIconSlotView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getScaleX()F

    move-result v7

    aput v7, v6, v8

    aput v10, v6, v9

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 701
    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRestoreAnimSet:Landroid/animation/AnimatorSet;

    new-array v3, v9, [Landroid/animation/Animator;

    iget-object v4, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIconSlotView:Landroid/view/View;

    sget-object v5, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v6, v11, [F

    iget-object v7, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIconSlotView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getScaleY()F

    move-result v7

    aput v7, v6, v8

    aput v10, v6, v9

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 702
    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRestoreAnimSet:Landroid/animation/AnimatorSet;

    new-array v3, v9, [Landroid/animation/Animator;

    iget-object v4, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIconSlotView:Landroid/view/View;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v11, [F

    iget-object v7, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIconSlotView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getAlpha()F

    move-result v7

    aput v7, v6, v8

    aput v10, v6, v9

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 705
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mBottomViewList:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "v$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 706
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_4

    .line 707
    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRestoreAnimSet:Landroid/animation/AnimatorSet;

    new-array v3, v9, [Landroid/animation/Animator;

    sget-object v4, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v5, v11, [F

    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v6

    aput v6, v5, v8

    aput v10, v5, v9

    invoke-static {v0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 708
    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRestoreAnimSet:Landroid/animation/AnimatorSet;

    new-array v3, v9, [Landroid/animation/Animator;

    sget-object v4, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v5, v11, [F

    invoke-virtual {v0}, Landroid/view/View;->getScaleY()F

    move-result v6

    aput v6, v5, v8

    aput v10, v5, v9

    invoke-static {v0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 709
    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRestoreAnimSet:Landroid/animation/AnimatorSet;

    new-array v3, v9, [Landroid/animation/Animator;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v11, [F

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v6

    aput v6, v5, v8

    aput v10, v5, v9

    invoke-static {v0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_0

    .line 713
    .end local v0    # "v":Landroid/view/View;
    :cond_5
    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRestoreAnimSet:Landroid/animation/AnimatorSet;

    new-array v3, v9, [Landroid/animation/Animator;

    iget-object v4, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mStatusBarView:Landroid/view/View;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v11, [F

    iget-object v7, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mStatusBarView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getAlpha()F

    move-result v7

    aput v7, v6, v8

    aput v10, v6, v9

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 714
    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRestoreAnimSet:Landroid/animation/AnimatorSet;

    new-array v3, v9, [Landroid/animation/Animator;

    iget-object v4, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mCenterIcon:Landroid/view/View;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v11, [F

    iget-object v7, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mCenterIcon:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getAlpha()F

    move-result v7

    aput v7, v6, v8

    aput v10, v6, v9

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 716
    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRestoreAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 664
    return-void
.end method

.method private setChildViewPivot()V
    .locals 5

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 538
    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mClockView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mClockView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/View;->setPivotX(F)V

    .line 539
    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mClockView:Landroid/view/View;

    iget v3, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mAffordancePivotY:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setPivotY(F)V

    .line 540
    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIrisTextPreview:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 541
    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIrisTextPreview:Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIrisTextPreview:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/View;->setPivotX(F)V

    .line 542
    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIrisTextPreview:Landroid/view/View;

    iget v3, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mAffordancePivotY:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setPivotY(F)V

    .line 544
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotiView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotiView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/View;->setPivotX(F)V

    .line 545
    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotiView:Landroid/view/View;

    iget v3, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mAffordancePivotY:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setPivotY(F)V

    .line 547
    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mLeftShortcut:Landroid/view/View;

    iget v3, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mAffordancePivotX:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setPivotX(F)V

    .line 548
    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mLeftShortcut:Landroid/view/View;

    iget v3, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mAffordancePivotY:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setPivotY(F)V

    .line 549
    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRightShortcut:Landroid/view/View;

    iget v3, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mAffordancePivotX:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setPivotX(F)V

    .line 550
    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRightShortcut:Landroid/view/View;

    iget v3, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mAffordancePivotY:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setPivotY(F)V

    .line 552
    sget-boolean v2, Lcom/android/systemui/SystemUIRune;->SUPPORT_NOTIFICATION_ICONS_ONLY:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIconSlotView:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 553
    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIconSlotView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIconSlotView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/View;->setPivotX(F)V

    .line 554
    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIconSlotView:Landroid/view/View;

    iget v3, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mAffordancePivotY:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setPivotY(F)V

    .line 557
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mBottomViewList:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "v$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 558
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    .line 559
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    invoke-virtual {v0, v2}, Landroid/view/View;->setPivotX(F)V

    .line 560
    iget v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mAffordancePivotY:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setPivotY(F)V

    goto :goto_0

    .line 534
    .end local v0    # "v":Landroid/view/View;
    :cond_3
    return-void
.end method

.method private setFullScreenMode(Z)V
    .locals 12
    .param p1, "enabled"    # Z

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 367
    iput-boolean p1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFullScreenModeEnabled:Z

    .line 369
    invoke-direct {p0}, Lcom/android/systemui/swipe/SwipeAnimator;->isTapAnimationRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 370
    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mTapAnimShrinkSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 371
    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mTapAnimRestoreSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 373
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFullScreenAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 374
    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFullScreenAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 377
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mAnimatorCallback:Lcom/android/systemui/swipe/SwipeAnimator$AnimatorCallback;

    invoke-interface {v1}, Lcom/android/systemui/swipe/SwipeAnimator$AnimatorCallback;->getBarStatus()I

    move-result v1

    if-ne v1, v9, :cond_4

    .line 378
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFullScreenAnimSet:Landroid/animation/AnimatorSet;

    .line 379
    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFullScreenAnimSet:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mSineOut33:Landroid/view/animation/Interpolator;

    :goto_0
    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 380
    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFullScreenAnimSet:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_6

    const-wide/16 v2, 0x96

    :goto_1
    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 381
    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFullScreenAnimSet:Landroid/animation/AnimatorSet;

    new-instance v2, Lcom/android/systemui/swipe/SwipeAnimator$2;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/swipe/SwipeAnimator$2;-><init>(Lcom/android/systemui/swipe/SwipeAnimator;Z)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 406
    if-eqz p1, :cond_7

    const v0, 0x3f733333    # 0.95f

    .line 407
    .local v0, "toScale":F
    :goto_2
    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFullScreenAnimSet:Landroid/animation/AnimatorSet;

    new-array v2, v9, [Landroid/animation/Animator;

    iget-object v3, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mClockView:Landroid/view/View;

    sget-object v6, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v7, v11, [F

    iget-object v8, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mClockView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getScaleX()F

    move-result v8

    aput v8, v7, v10

    aput v0, v7, v9

    invoke-static {v3, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v10

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 408
    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFullScreenAnimSet:Landroid/animation/AnimatorSet;

    new-array v2, v9, [Landroid/animation/Animator;

    iget-object v3, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mClockView:Landroid/view/View;

    sget-object v6, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v7, v11, [F

    iget-object v8, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mClockView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getScaleY()F

    move-result v8

    aput v8, v7, v10

    aput v0, v7, v9

    invoke-static {v3, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v10

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 409
    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIrisTextPreview:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 410
    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFullScreenAnimSet:Landroid/animation/AnimatorSet;

    new-array v2, v9, [Landroid/animation/Animator;

    iget-object v3, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIrisTextPreview:Landroid/view/View;

    .line 411
    sget-object v6, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    .line 410
    new-array v7, v11, [F

    .line 411
    iget-object v8, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIrisTextPreview:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getScaleX()F

    move-result v8

    aput v8, v7, v10

    aput v0, v7, v9

    .line 410
    invoke-static {v3, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v10

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 412
    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFullScreenAnimSet:Landroid/animation/AnimatorSet;

    new-array v2, v9, [Landroid/animation/Animator;

    iget-object v3, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIrisTextPreview:Landroid/view/View;

    .line 413
    sget-object v6, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    .line 412
    new-array v7, v11, [F

    .line 413
    iget-object v8, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIrisTextPreview:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getScaleY()F

    move-result v8

    aput v8, v7, v10

    aput v0, v7, v9

    .line 412
    invoke-static {v3, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v10

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 415
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFullScreenAnimSet:Landroid/animation/AnimatorSet;

    new-array v2, v9, [Landroid/animation/Animator;

    iget-object v3, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotiView:Landroid/view/View;

    sget-object v6, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v7, v11, [F

    iget-object v8, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotiView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getScaleX()F

    move-result v8

    aput v8, v7, v10

    aput v0, v7, v9

    invoke-static {v3, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v10

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 416
    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFullScreenAnimSet:Landroid/animation/AnimatorSet;

    new-array v2, v9, [Landroid/animation/Animator;

    iget-object v3, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotiView:Landroid/view/View;

    sget-object v6, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v7, v11, [F

    iget-object v8, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotiView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getScaleY()F

    move-result v8

    aput v8, v7, v10

    aput v0, v7, v9

    invoke-static {v3, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v10

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 417
    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFullScreenAnimSet:Landroid/animation/AnimatorSet;

    new-array v3, v9, [Landroid/animation/Animator;

    iget-object v6, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotiView:Landroid/view/View;

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v8, v11, [F

    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotiView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v1

    aput v1, v8, v10

    .line 418
    if-eqz p1, :cond_8

    move v1, v4

    :goto_3
    aput v1, v8, v9

    .line 417
    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v3, v10

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 419
    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFullScreenAnimSet:Landroid/animation/AnimatorSet;

    new-array v3, v9, [Landroid/animation/Animator;

    iget-object v6, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotiPanelView:Landroid/view/View;

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v8, v11, [F

    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotiPanelView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v1

    aput v1, v8, v10

    .line 420
    if-eqz p1, :cond_9

    move v1, v4

    :goto_4
    aput v1, v8, v9

    .line 419
    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v3, v10

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 422
    sget-boolean v1, Lcom/android/systemui/SystemUIRune;->SUPPORT_NOTIFICATION_ICONS_ONLY:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIconSlotView:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 423
    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFullScreenAnimSet:Landroid/animation/AnimatorSet;

    new-array v2, v9, [Landroid/animation/Animator;

    iget-object v3, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIconSlotView:Landroid/view/View;

    sget-object v6, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v7, v11, [F

    iget-object v8, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIconSlotView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getScaleX()F

    move-result v8

    aput v8, v7, v10

    aput v0, v7, v9

    invoke-static {v3, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v10

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 424
    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFullScreenAnimSet:Landroid/animation/AnimatorSet;

    new-array v2, v9, [Landroid/animation/Animator;

    iget-object v3, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIconSlotView:Landroid/view/View;

    sget-object v6, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v7, v11, [F

    iget-object v8, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIconSlotView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getScaleY()F

    move-result v8

    aput v8, v7, v10

    aput v0, v7, v9

    invoke-static {v3, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v10

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 425
    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFullScreenAnimSet:Landroid/animation/AnimatorSet;

    new-array v2, v9, [Landroid/animation/Animator;

    iget-object v3, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIconSlotView:Landroid/view/View;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v7, v11, [F

    iget-object v8, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIconSlotView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getAlpha()F

    move-result v8

    aput v8, v7, v10

    .line 426
    if-eqz p1, :cond_a

    :goto_5
    aput v4, v7, v9

    .line 425
    invoke-static {v3, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v10

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 429
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFullScreenAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 364
    .end local v0    # "toScale":F
    :cond_4
    return-void

    .line 379
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mSineIn33:Landroid/view/animation/Interpolator;

    goto/16 :goto_0

    .line 380
    :cond_6
    const-wide/16 v2, 0x12c

    goto/16 :goto_1

    .line 406
    :cond_7
    const/high16 v0, 0x3f800000    # 1.0f

    .restart local v0    # "toScale":F
    goto/16 :goto_2

    :cond_8
    move v1, v5

    .line 418
    goto/16 :goto_3

    :cond_9
    move v1, v5

    .line 420
    goto/16 :goto_4

    :cond_a
    move v4, v5

    .line 426
    goto :goto_5
.end method

.method private showTapAffordanceAnimation()V
    .locals 12

    .prologue
    const v11, 0x3f733333    # 0.95f

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 439
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mTapAnimRestoreSet:Landroid/animation/AnimatorSet;

    .line 440
    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mTapAnimRestoreSet:Landroid/animation/AnimatorSet;

    iget-object v3, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mBounceOut:Lcom/android/keyguard/swipe/BounceEaseOut;

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 441
    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mTapAnimRestoreSet:Landroid/animation/AnimatorSet;

    const-wide/16 v4, 0x15e

    invoke-virtual {v2, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 444
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mTapAnimShrinkSet:Landroid/animation/AnimatorSet;

    .line 445
    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mTapAnimShrinkSet:Landroid/animation/AnimatorSet;

    iget-object v3, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mSineOut33:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 446
    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mTapAnimShrinkSet:Landroid/animation/AnimatorSet;

    const-wide/16 v4, 0x96

    invoke-virtual {v2, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 447
    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mTapAnimShrinkSet:Landroid/animation/AnimatorSet;

    new-instance v3, Lcom/android/systemui/swipe/SwipeAnimator$3;

    invoke-direct {v3, p0}, Lcom/android/systemui/swipe/SwipeAnimator$3;-><init>(Lcom/android/systemui/swipe/SwipeAnimator;)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 500
    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mTapAnimShrinkSet:Landroid/animation/AnimatorSet;

    new-array v3, v9, [Landroid/animation/Animator;

    iget-object v4, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mClockView:Landroid/view/View;

    sget-object v5, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v6, v10, [F

    iget-object v7, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mClockView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getScaleX()F

    move-result v7

    aput v7, v6, v8

    aput v11, v6, v9

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 501
    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mTapAnimShrinkSet:Landroid/animation/AnimatorSet;

    new-array v3, v9, [Landroid/animation/Animator;

    iget-object v4, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mClockView:Landroid/view/View;

    sget-object v5, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v6, v10, [F

    iget-object v7, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mClockView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getScaleY()F

    move-result v7

    aput v7, v6, v8

    aput v11, v6, v9

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 502
    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIrisTextPreview:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 503
    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mTapAnimShrinkSet:Landroid/animation/AnimatorSet;

    new-array v3, v9, [Landroid/animation/Animator;

    iget-object v4, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIrisTextPreview:Landroid/view/View;

    sget-object v5, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v6, v10, [F

    .line 504
    iget-object v7, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIrisTextPreview:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getScaleX()F

    move-result v7

    aput v7, v6, v8

    aput v11, v6, v9

    .line 503
    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 505
    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mTapAnimShrinkSet:Landroid/animation/AnimatorSet;

    new-array v3, v9, [Landroid/animation/Animator;

    iget-object v4, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIrisTextPreview:Landroid/view/View;

    sget-object v5, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v6, v10, [F

    .line 506
    iget-object v7, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIrisTextPreview:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getScaleY()F

    move-result v7

    aput v7, v6, v8

    aput v11, v6, v9

    .line 505
    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 508
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mTapAnimShrinkSet:Landroid/animation/AnimatorSet;

    new-array v3, v9, [Landroid/animation/Animator;

    iget-object v4, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotiView:Landroid/view/View;

    sget-object v5, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v6, v10, [F

    iget-object v7, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotiView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getScaleX()F

    move-result v7

    aput v7, v6, v8

    aput v11, v6, v9

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 509
    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mTapAnimShrinkSet:Landroid/animation/AnimatorSet;

    new-array v3, v9, [Landroid/animation/Animator;

    iget-object v4, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotiView:Landroid/view/View;

    sget-object v5, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v6, v10, [F

    iget-object v7, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotiView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getScaleY()F

    move-result v7

    aput v7, v6, v8

    aput v11, v6, v9

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 516
    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mTapAnimShrinkSet:Landroid/animation/AnimatorSet;

    new-array v3, v9, [Landroid/animation/Animator;

    iget-object v4, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotiView:Landroid/view/View;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v10, [F

    iget-object v7, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotiView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getAlpha()F

    move-result v7

    aput v7, v6, v8

    const v7, 0x3f7d70a4    # 0.99f

    aput v7, v6, v9

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 518
    sget-boolean v2, Lcom/android/systemui/SystemUIRune;->SUPPORT_NOTIFICATION_ICONS_ONLY:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIconSlotView:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 519
    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mTapAnimShrinkSet:Landroid/animation/AnimatorSet;

    new-array v3, v9, [Landroid/animation/Animator;

    iget-object v4, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIconSlotView:Landroid/view/View;

    sget-object v5, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v6, v10, [F

    iget-object v7, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIconSlotView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getScaleX()F

    move-result v7

    aput v7, v6, v8

    aput v11, v6, v9

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 520
    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mTapAnimShrinkSet:Landroid/animation/AnimatorSet;

    new-array v3, v9, [Landroid/animation/Animator;

    iget-object v4, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIconSlotView:Landroid/view/View;

    sget-object v5, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v6, v10, [F

    iget-object v7, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIconSlotView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getScaleY()F

    move-result v7

    aput v7, v6, v8

    aput v11, v6, v9

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 523
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mBottomViewList:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "v$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 524
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    .line 525
    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mTapAnimShrinkSet:Landroid/animation/AnimatorSet;

    new-array v3, v9, [Landroid/animation/Animator;

    sget-object v4, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v5, v10, [F

    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v6

    aput v6, v5, v8

    aput v11, v5, v9

    invoke-static {v0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 526
    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mTapAnimShrinkSet:Landroid/animation/AnimatorSet;

    new-array v3, v9, [Landroid/animation/Animator;

    sget-object v4, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v5, v10, [F

    invoke-virtual {v0}, Landroid/view/View;->getScaleY()F

    move-result v6

    aput v6, v5, v8

    aput v11, v5, v9

    invoke-static {v0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_0

    .line 531
    .end local v0    # "v":Landroid/view/View;
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mTapAnimShrinkSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 433
    return-void
.end method

.method private updateChildViewVI(D)V
    .locals 13
    .param p1, "distance"    # D

    .prologue
    .line 568
    invoke-direct {p0}, Lcom/android/systemui/swipe/SwipeAnimator;->isAnimationRunning()Z

    move-result v6

    if-nez v6, :cond_0

    iget-boolean v6, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mUnlockExecuted:Z

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotiPanelView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getAlpha()F

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    cmpg-float v6, v6, v7

    if-gez v6, :cond_1

    .line 571
    :cond_0
    return-void

    .line 574
    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 575
    .local v0, "alpha":F
    const/high16 v1, 0x3f800000    # 1.0f

    .line 576
    .local v1, "clockScale":F
    const/high16 v2, 0x3f800000    # 1.0f

    .line 577
    .local v2, "notiScale":F
    const/high16 v3, 0x3f800000    # 1.0f

    .line 579
    .local v3, "shortcutScale":F
    sget-boolean v6, Lcom/android/keyguard/KeyguardRune;->SUPPORT_CINEMATIC_WALLPAPER:Z

    if-eqz v6, :cond_5

    .line 581
    iget v6, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mSwipeUnlockRadius:I

    int-to-double v6, v6

    sub-double/2addr v6, p1

    iget v8, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mSwipeUnlockRadius:I

    int-to-double v8, v8

    div-double/2addr v6, v8

    .line 582
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 581
    mul-double/2addr v6, v8

    const-wide/16 v8, 0x0

    add-double/2addr v6, v8

    double-to-float v0, v6

    .line 583
    iget v6, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mSwipeUnlockRadius:I

    int-to-double v6, v6

    sub-double/2addr v6, p1

    iget v8, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mSwipeUnlockRadius:I

    int-to-double v8, v8

    div-double/2addr v6, v8

    .line 584
    const-wide v8, 0x3fc9999980000000L    # 0.19999998807907104

    .line 583
    mul-double/2addr v6, v8

    const-wide v8, 0x3fe99999a0000000L    # 0.800000011920929

    add-double/2addr v6, v8

    double-to-float v1, v6

    .line 585
    iget v6, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mSwipeUnlockRadius:I

    int-to-double v6, v6

    sub-double/2addr v6, p1

    iget v8, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mSwipeUnlockRadius:I

    int-to-double v8, v8

    div-double/2addr v6, v8

    .line 586
    const-wide v8, 0x3fc9999980000000L    # 0.19999998807907104

    .line 585
    mul-double/2addr v6, v8

    const-wide v8, 0x3fe99999a0000000L    # 0.800000011920929

    add-double/2addr v6, v8

    double-to-float v2, v6

    .line 588
    iget v6, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mSwipeUnlockRadius:I

    int-to-double v6, v6

    iget v8, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mTouchSlop:I

    int-to-double v8, v8

    sub-double v8, p1, v8

    sub-double/2addr v6, v8

    iget v8, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mSwipeUnlockRadius:I

    int-to-double v8, v8

    div-double/2addr v6, v8

    .line 589
    const-wide v8, 0x3fb9999a00000000L    # 0.10000002384185791

    .line 588
    mul-double/2addr v6, v8

    .line 587
    const-wide v8, 0x3fecccccc0000000L    # 0.8999999761581421

    add-double/2addr v6, v8

    double-to-float v3, v6

    .line 591
    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v6, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 592
    const v6, 0x3f4ccccd    # 0.8f

    invoke-static {v6, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 593
    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v6, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 594
    const v6, 0x3f4ccccd    # 0.8f

    invoke-static {v6, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 595
    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v6, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 596
    const v6, 0x3f666666    # 0.9f

    invoke-static {v6, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 598
    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v6, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 599
    const/4 v6, 0x0

    invoke-static {v6, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 621
    :goto_0
    iget-object v6, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mClockView:Landroid/view/View;

    invoke-virtual {v6, v1}, Landroid/view/View;->setScaleX(F)V

    .line 622
    iget-object v6, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mClockView:Landroid/view/View;

    invoke-virtual {v6, v1}, Landroid/view/View;->setScaleY(F)V

    .line 623
    iget-object v6, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mClockView:Landroid/view/View;

    invoke-virtual {v6, v0}, Landroid/view/View;->setAlpha(F)V

    .line 624
    iget-object v6, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIrisTextPreview:Landroid/view/View;

    if-eqz v6, :cond_2

    .line 625
    iget-object v6, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIrisTextPreview:Landroid/view/View;

    invoke-virtual {v6, v1}, Landroid/view/View;->setScaleX(F)V

    .line 626
    iget-object v6, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIrisTextPreview:Landroid/view/View;

    invoke-virtual {v6, v1}, Landroid/view/View;->setScaleY(F)V

    .line 627
    iget-object v6, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIrisTextPreview:Landroid/view/View;

    invoke-virtual {v6, v0}, Landroid/view/View;->setAlpha(F)V

    .line 629
    :cond_2
    iget-object v6, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotiView:Landroid/view/View;

    invoke-virtual {v6, v2}, Landroid/view/View;->setScaleX(F)V

    .line 630
    iget-object v6, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotiView:Landroid/view/View;

    invoke-virtual {v6, v2}, Landroid/view/View;->setScaleY(F)V

    .line 631
    iget-object v6, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotiView:Landroid/view/View;

    invoke-virtual {v6, v0}, Landroid/view/View;->setAlpha(F)V

    .line 633
    sget-boolean v6, Lcom/android/systemui/SystemUIRune;->SUPPORT_NOTIFICATION_ICONS_ONLY:Z

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIconSlotView:Landroid/view/View;

    if-eqz v6, :cond_3

    .line 634
    iget-object v6, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIconSlotView:Landroid/view/View;

    invoke-virtual {v6, v2}, Landroid/view/View;->setScaleX(F)V

    .line 635
    iget-object v6, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIconSlotView:Landroid/view/View;

    invoke-virtual {v6, v2}, Landroid/view/View;->setScaleY(F)V

    .line 636
    iget-object v6, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIconSlotView:Landroid/view/View;

    invoke-virtual {v6, v0}, Landroid/view/View;->setAlpha(F)V

    .line 639
    :cond_3
    iget v6, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mTouchSlop:I

    int-to-double v6, v6

    cmpl-double v6, p1, v6

    if-lez v6, :cond_7

    .line 640
    iget-object v6, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mLeftShortcut:Landroid/view/View;

    invoke-virtual {v6, v3}, Landroid/view/View;->setScaleX(F)V

    .line 641
    iget-object v6, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mLeftShortcut:Landroid/view/View;

    invoke-virtual {v6, v3}, Landroid/view/View;->setScaleY(F)V

    .line 642
    iget-object v6, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mLeftShortcut:Landroid/view/View;

    invoke-virtual {v6, v0}, Landroid/view/View;->setAlpha(F)V

    .line 643
    iget-object v6, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRightShortcut:Landroid/view/View;

    invoke-virtual {v6, v3}, Landroid/view/View;->setScaleX(F)V

    .line 644
    iget-object v6, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRightShortcut:Landroid/view/View;

    invoke-virtual {v6, v3}, Landroid/view/View;->setScaleY(F)V

    .line 645
    iget-object v6, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRightShortcut:Landroid/view/View;

    invoke-virtual {v6, v0}, Landroid/view/View;->setAlpha(F)V

    .line 647
    iget-object v6, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mUnlockViewHideAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v6

    if-nez v6, :cond_7

    iget-object v6, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mStatusBarView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getAlpha()F

    move-result v6

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_7

    .line 648
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v6, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mUnlockViewHideAnim:Landroid/animation/AnimatorSet;

    .line 649
    iget-object v6, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mUnlockViewHideAnim:Landroid/animation/AnimatorSet;

    iget-object v7, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mSineIn33:Landroid/view/animation/Interpolator;

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 650
    iget-object v6, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mUnlockViewHideAnim:Landroid/animation/AnimatorSet;

    const-wide/16 v8, 0x64

    invoke-virtual {v6, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 651
    iget-object v6, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mUnlockViewHideAnim:Landroid/animation/AnimatorSet;

    const/4 v7, 0x1

    new-array v7, v7, [Landroid/animation/Animator;

    iget-object v8, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mStatusBarView:Landroid/view/View;

    sget-object v9, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v10, 0x2

    new-array v10, v10, [F

    iget-object v11, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mStatusBarView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getAlpha()F

    move-result v11

    const/4 v12, 0x0

    aput v11, v10, v12

    const/4 v11, 0x0

    const/4 v12, 0x1

    aput v11, v10, v12

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 652
    iget-object v6, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mUnlockViewHideAnim:Landroid/animation/AnimatorSet;

    const/4 v7, 0x1

    new-array v7, v7, [Landroid/animation/Animator;

    iget-object v8, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mCenterIcon:Landroid/view/View;

    sget-object v9, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v10, 0x2

    new-array v10, v10, [F

    iget-object v11, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mCenterIcon:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getAlpha()F

    move-result v11

    const/4 v12, 0x0

    aput v11, v10, v12

    const/4 v11, 0x0

    const/4 v12, 0x1

    aput v11, v10, v12

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 654
    iget-object v6, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mBottomViewList:Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "v$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 655
    .local v4, "v":Landroid/view/View;
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_4

    .line 656
    iget-object v6, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mUnlockViewHideAnim:Landroid/animation/AnimatorSet;

    const/4 v7, 0x1

    new-array v7, v7, [Landroid/animation/Animator;

    sget-object v8, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v9, 0x2

    new-array v9, v9, [F

    invoke-virtual {v4}, Landroid/view/View;->getAlpha()F

    move-result v10

    const/4 v11, 0x0

    aput v10, v9, v11

    const/4 v10, 0x0

    const/4 v11, 0x1

    aput v10, v9, v11

    invoke-static {v4, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_1

    .line 602
    .end local v4    # "v":Landroid/view/View;
    .end local v5    # "v$iterator":Ljava/util/Iterator;
    :cond_5
    iget v6, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mSwipeUnlockRadius:I

    int-to-double v6, v6

    sub-double/2addr v6, p1

    iget v8, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mSwipeUnlockRadius:I

    int-to-double v8, v8

    div-double/2addr v6, v8

    double-to-float v0, v6

    .line 603
    iget v6, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mSwipeUnlockRadius:I

    int-to-double v6, v6

    sub-double/2addr v6, p1

    iget v8, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mSwipeUnlockRadius:I

    int-to-double v8, v8

    div-double/2addr v6, v8

    .line 604
    const-wide v8, 0x3fc9999a00000000L    # 0.20000004768371582

    .line 603
    mul-double/2addr v6, v8

    const-wide v8, 0x3ff3333340000000L    # 1.2000000476837158

    sub-double v6, v8, v6

    double-to-float v1, v6

    .line 605
    iget v6, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mSwipeUnlockRadius:I

    int-to-double v6, v6

    sub-double/2addr v6, p1

    iget v8, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mSwipeUnlockRadius:I

    int-to-double v8, v8

    div-double/2addr v6, v8

    .line 606
    const-wide v8, 0x3fa9999800000000L    # 0.04999995231628418

    .line 605
    mul-double/2addr v6, v8

    const-wide v8, 0x3ff0ccccc0000000L    # 1.0499999523162842

    sub-double v6, v8, v6

    double-to-float v2, v6

    .line 608
    iget v6, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mSwipeUnlockRadius:I

    int-to-double v6, v6

    iget v8, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mTouchSlop:I

    int-to-double v8, v8

    sub-double v8, p1, v8

    sub-double/2addr v6, v8

    iget v8, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mSwipeUnlockRadius:I

    int-to-double v8, v8

    div-double/2addr v6, v8

    .line 609
    const-wide v8, 0x3fd3333300000000L    # 0.2999999523162842

    .line 608
    mul-double/2addr v6, v8

    .line 607
    const-wide v8, 0x3ff4ccccc0000000L    # 1.2999999523162842

    sub-double v6, v8, v6

    double-to-float v3, v6

    .line 611
    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v6, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 612
    const v6, 0x3f99999a    # 1.2f

    invoke-static {v6, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 613
    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v6, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 614
    const v6, 0x3f866666    # 1.05f

    invoke-static {v6, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 615
    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v6, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 616
    const v6, 0x3fa66666    # 1.3f

    invoke-static {v6, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 617
    const/4 v6, 0x0

    invoke-static {v6, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 618
    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v6, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto/16 :goto_0

    .line 659
    .restart local v5    # "v$iterator":Ljava/util/Iterator;
    :cond_6
    iget-object v6, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mUnlockViewHideAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->start()V

    .line 565
    .end local v5    # "v$iterator":Ljava/util/Iterator;
    :cond_7
    return-void
.end method


# virtual methods
.method public isViRunning()Z
    .locals 1

    .prologue
    .line 338
    iget-boolean v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIsTouching:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/swipe/SwipeAnimator;->isAnimationRunning()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 202
    iget-boolean v8, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIntercepting:Z

    if-nez v8, :cond_0

    .line 203
    const/4 v8, 0x0

    return v8

    .line 206
    :cond_0
    sget-boolean v8, Lcom/android/keyguard/KeyguardRune;->SUPPORT_SIM_PERM_DISABLED:Z

    if-eqz v8, :cond_1

    .line 207
    iget-object v8, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIccBlockedPermanently()Z

    move-result v8

    .line 206
    if-eqz v8, :cond_1

    .line 208
    const/4 v8, 0x1

    return v8

    .line 212
    :cond_1
    const-wide/16 v4, 0x0

    .line 214
    .local v4, "timeOfProcess":J
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 218
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    and-int/lit16 v3, v8, 0xff

    .line 219
    .local v3, "maskedAction":I
    packed-switch v3, :pswitch_data_0

    .line 300
    :cond_2
    :goto_0
    :pswitch_0
    sget-object v8, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    sub-long/2addr v10, v4

    invoke-virtual {v8, v10, v11}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    .line 301
    const-wide/16 v8, 0x1f4

    cmp-long v8, v4, v8

    if-ltz v8, :cond_3

    .line 302
    const-string/jumbo v8, "SwipeAnimator"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Touch processing took "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "ms"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :cond_3
    const/4 v8, 0x1

    return v8

    .line 225
    :pswitch_1
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIsTouching:Z

    .line 226
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIsFullScreenModeShown:Z

    .line 227
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v8

    iput v8, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mTouchDownX:F

    .line 228
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    iput v8, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mTouchDownY:F

    .line 229
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mDistance:D

    .line 232
    invoke-direct {p0}, Lcom/android/systemui/swipe/SwipeAnimator;->setChildViewPivot()V

    .line 234
    iget-boolean v8, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFullScreenModeEnabled:Z

    if-nez v8, :cond_2

    iget-object v8, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFullScreenAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v8

    if-nez v8, :cond_2

    .line 235
    iget v8, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mTouchDownY:F

    iget-object v9, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotiPanelView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v9

    iget v10, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mLongPressAllowHeight:I

    sub-int/2addr v9, v10

    int-to-float v9, v9

    cmpg-float v8, v8, v9

    if-gez v8, :cond_2

    .line 236
    iget-object v8, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotiPanelView:Landroid/view/View;

    iget-object v9, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mLongPressCallback:Ljava/lang/Runnable;

    const-wide/16 v10, 0x1f4

    invoke-virtual {v8, v9, v10, v11}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 241
    :pswitch_2
    iget-boolean v8, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIsTouching:Z

    if-nez v8, :cond_4

    .line 242
    const/4 v8, 0x0

    return v8

    .line 243
    :cond_4
    iget-boolean v8, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIsFullScreenModeShown:Z

    if-eqz v8, :cond_5

    .line 244
    const/4 v8, 0x1

    return v8

    .line 247
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    .line 248
    .local v6, "touchedEventX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    .line 249
    .local v7, "touchedEventY":F
    iget v8, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mTouchDownX:F

    sub-float v8, v6, v8

    float-to-int v0, v8

    .line 250
    .local v0, "diffX":I
    iget v8, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mTouchDownY:F

    sub-float v8, v7, v8

    float-to-int v1, v8

    .line 251
    .local v1, "diffY":I
    int-to-double v8, v0

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    int-to-double v10, v1

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    add-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mDistance:D

    .line 254
    iget v8, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mTouchSlop:I

    int-to-double v8, v8

    iget-wide v10, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mDistance:D

    cmpg-double v8, v8, v10

    if-gez v8, :cond_6

    .line 255
    iget-object v8, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotiPanelView:Landroid/view/View;

    iget-object v9, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mLongPressCallback:Ljava/lang/Runnable;

    invoke-virtual {v8, v9}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 259
    :cond_6
    iget-wide v8, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mDistance:D

    invoke-direct {p0, v8, v9}, Lcom/android/systemui/swipe/SwipeAnimator;->updateChildViewVI(D)V

    goto/16 :goto_0

    .line 266
    .end local v0    # "diffX":I
    .end local v1    # "diffY":I
    .end local v6    # "touchedEventX":F
    .end local v7    # "touchedEventY":F
    :pswitch_3
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/android/systemui/swipe/SwipeAnimator;->setIntercept(Z)V

    .line 268
    iget-object v8, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotiPanelView:Landroid/view/View;

    iget-object v9, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mLongPressCallback:Ljava/lang/Runnable;

    invoke-virtual {v8, v9}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 269
    iget-boolean v8, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFullScreenModeEnabled:Z

    if-eqz v8, :cond_7

    .line 270
    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lcom/android/systemui/swipe/SwipeAnimator;->setFullScreenMode(Z)V

    .line 274
    :cond_7
    iget-wide v8, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mDistance:D

    iget v10, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mSwipeUnlockRadius:I

    int-to-double v10, v10

    cmpg-double v8, v8, v10

    if-lez v8, :cond_8

    .line 275
    const/4 v8, 0x6

    if-ne v3, v8, :cond_a

    .line 274
    :cond_8
    const/4 v2, 0x1

    .line 277
    .local v2, "grayZone":Z
    :goto_1
    const-string/jumbo v8, "SwipeAnimator"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "onTouchEvent(UP CANCEL POINTER_UP) ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mDistance:D

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mTouchSlop:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "), grayZone?"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    invoke-direct {p0}, Lcom/android/systemui/swipe/SwipeAnimator;->isAnimationRunning()Z

    move-result v8

    if-nez v8, :cond_9

    iget-boolean v8, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mUnlockExecuted:Z

    if-eqz v8, :cond_c

    .line 291
    :cond_9
    :goto_2
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIsTouching:Z

    goto/16 :goto_0

    .line 276
    .end local v2    # "grayZone":Z
    :cond_a
    const/4 v8, 0x3

    if-ne v3, v8, :cond_b

    const/4 v2, 0x1

    .restart local v2    # "grayZone":Z
    goto :goto_1

    .end local v2    # "grayZone":Z
    :cond_b
    const/4 v2, 0x0

    .restart local v2    # "grayZone":Z
    goto :goto_1

    .line 278
    :cond_c
    iget-object v8, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotiPanelView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getAlpha()F

    move-result v8

    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v8, v8, v9

    if-nez v8, :cond_9

    .line 280
    iget-wide v8, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mDistance:D

    iget v10, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mTouchSlop:I

    int-to-double v10, v10

    cmpg-double v8, v8, v10

    if-gez v8, :cond_d

    .line 281
    invoke-direct {p0}, Lcom/android/systemui/swipe/SwipeAnimator;->resetChildViewVI()V

    .line 282
    invoke-direct {p0}, Lcom/android/systemui/swipe/SwipeAnimator;->showTapAffordanceAnimation()V

    goto :goto_2

    .line 284
    :cond_d
    if-eqz v2, :cond_9

    .line 285
    invoke-direct {p0}, Lcom/android/systemui/swipe/SwipeAnimator;->restoreChildViewVI()V

    goto :goto_2

    .line 219
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onUnlockExecuted()V
    .locals 2

    .prologue
    .line 342
    iget-boolean v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mUnlockExecuted:Z

    if-eqz v0, :cond_0

    .line 343
    const-string/jumbo v0, "SwipeAnimator"

    const-string/jumbo v1, "onUnlockExecuted() Already Call Unlock!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    :goto_0
    return-void

    .line 345
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mUnlockExecuted:Z

    goto :goto_0
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 312
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRestoreAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 313
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mTapAnimShrinkSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 314
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mTapAnimRestoreSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 315
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFullScreenAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 316
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mUnlockViewHideAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 318
    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_NOTIFICATION_ICONS_ONLY:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mPreviewFocusAnimSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mPreviewFocusAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 322
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/swipe/SwipeAnimator;->resetChildViewVI()V

    .line 324
    iput-boolean v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mUnlockExecuted:Z

    .line 325
    iput-boolean v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFullScreenModeEnabled:Z

    .line 326
    iput-boolean v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIsFullScreenModeShown:Z

    .line 327
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotiPanelView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mLongPressCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 328
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotiPanelView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 329
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotiPanelView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 308
    :cond_1
    return-void
.end method

.method public setBottomViewsList(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V
    .locals 2
    .param p1, "bottomArea"    # Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    .prologue
    .line 848
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getLeftView()Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mLeftShortcut:Landroid/view/View;

    .line 849
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getRightView()Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRightShortcut:Landroid/view/View;

    .line 850
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getLockIcon()Lcom/android/systemui/statusbar/phone/LockIcon;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mCenterIcon:Landroid/view/View;

    .line 852
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mBottomViewList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getIndicationView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 853
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mBottomViewList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getLockSecureIcon()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 854
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mBottomViewList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getUSimCarrierTextView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 855
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mBottomViewList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getEmergencyButtonView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 856
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mBottomViewList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getLockIcon()Lcom/android/systemui/statusbar/phone/LockIcon;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 847
    return-void
.end method

.method public setIconSlotView(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 864
    iput-object p1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIconSlotView:Landroid/view/View;

    .line 863
    return-void
.end method

.method public setIntercept(Z)V
    .locals 0
    .param p1, "intercepting"    # Z

    .prologue
    .line 334
    iput-boolean p1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIntercepting:Z

    .line 333
    return-void
.end method

.method public startPhoneLaunchAnimationInSecured()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 828
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mShortcutSwipingAnim:Landroid/animation/AnimatorSet;

    .line 829
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mShortcutSwipingAnim:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mSineOut33:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 830
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mShortcutSwipingAnim:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 832
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mShortcutSwipingAnim:Landroid/animation/AnimatorSet;

    new-array v1, v7, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mClockView:Landroid/view/View;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v9, [F

    iget-object v5, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mClockView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getAlpha()F

    move-result v5

    aput v5, v4, v6

    aput v8, v4, v7

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 833
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIrisTextPreview:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 834
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mShortcutSwipingAnim:Landroid/animation/AnimatorSet;

    new-array v1, v7, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIrisTextPreview:Landroid/view/View;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v9, [F

    .line 835
    iget-object v5, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIrisTextPreview:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getAlpha()F

    move-result v5

    aput v5, v4, v6

    aput v8, v4, v7

    .line 834
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 837
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mShortcutSwipingAnim:Landroid/animation/AnimatorSet;

    new-array v1, v7, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotiView:Landroid/view/View;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v9, [F

    iget-object v5, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotiView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getAlpha()F

    move-result v5

    aput v5, v4, v6

    aput v8, v4, v7

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 840
    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_NOTIFICATION_ICONS_ONLY:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIconSlotView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 841
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mShortcutSwipingAnim:Landroid/animation/AnimatorSet;

    new-array v1, v7, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIconSlotView:Landroid/view/View;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v9, [F

    iget-object v5, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIconSlotView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getAlpha()F

    move-result v5

    aput v5, v4, v6

    aput v8, v4, v7

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 844
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mShortcutSwipingAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 827
    return-void
.end method

.method public startPreviewFocusAnim(Z)V
    .locals 11
    .param p1, "focus"    # Z

    .prologue
    const/4 v10, 0x2

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 868
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mPreviewFocusAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 869
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mPreviewFocusAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 872
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mPreviewFocusAnimSet:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mSineOut33:Landroid/view/animation/Interpolator;

    :goto_0
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 873
    iget-object v4, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mPreviewFocusAnimSet:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_2

    const-wide/16 v0, 0x96

    :goto_1
    invoke-virtual {v4, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 875
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mPreviewFocusAnimSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/systemui/swipe/SwipeAnimator$4;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/swipe/SwipeAnimator$4;-><init>(Lcom/android/systemui/swipe/SwipeAnimator;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 896
    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mPreviewFocusAnimSet:Landroid/animation/AnimatorSet;

    new-array v4, v9, [Landroid/animation/Animator;

    iget-object v5, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mLeftShortcut:Landroid/view/View;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v7, v10, [F

    .line 897
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mLeftShortcut:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    aput v0, v7, v8

    if-eqz p1, :cond_3

    move v0, v2

    :goto_2
    aput v0, v7, v9

    .line 896
    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v4, v8

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 898
    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mPreviewFocusAnimSet:Landroid/animation/AnimatorSet;

    new-array v4, v9, [Landroid/animation/Animator;

    iget-object v5, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRightShortcut:Landroid/view/View;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v7, v10, [F

    .line 899
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRightShortcut:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    aput v0, v7, v8

    if-eqz p1, :cond_4

    move v0, v2

    :goto_3
    aput v0, v7, v9

    .line 898
    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v4, v8

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 900
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mPreviewFocusAnimSet:Landroid/animation/AnimatorSet;

    new-array v1, v9, [Landroid/animation/Animator;

    iget-object v4, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mClockView:Landroid/view/View;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v10, [F

    .line 901
    iget-object v7, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mClockView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getAlpha()F

    move-result v7

    aput v7, v6, v8

    if-eqz p1, :cond_5

    :goto_4
    aput v2, v6, v9

    .line 900
    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 902
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mPreviewFocusAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 867
    return-void

    .line 872
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mSineIn33:Landroid/view/animation/Interpolator;

    goto :goto_0

    .line 874
    :cond_2
    const-wide/16 v0, 0x12c

    goto :goto_1

    :cond_3
    move v0, v3

    .line 897
    goto :goto_2

    :cond_4
    move v0, v3

    .line 899
    goto :goto_3

    :cond_5
    move v2, v3

    .line 901
    goto :goto_4
.end method
