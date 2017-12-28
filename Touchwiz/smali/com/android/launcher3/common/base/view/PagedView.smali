.class public abstract Lcom/android/launcher3/common/base/view/PagedView;
.super Landroid/view/ViewGroup;
.source "PagedView.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/common/base/view/PagedView$SavedState;,
        Lcom/android/launcher3/common/base/view/PagedView$ScrollInterpolator;,
        Lcom/android/launcher3/common/base/view/PagedView$LayoutParams;,
        Lcom/android/launcher3/common/base/view/PagedView$PageScrollListener;,
        Lcom/android/launcher3/common/base/view/PagedView$PageSwitchListener;
    }
.end annotation


# static fields
.field private static final ANIM_TAG_KEY:I = 0x64

.field private static final DEBUG:Z = false

.field public static final EXTRA_EMPTY_SCREEN_ID:J = -0xc9L

.field protected static final EXTRA_TOUCH_SLOP_SCALE_RATIO:F = 2.5f

.field private static final FLING_THRESHOLD_VELOCITY:I = 0x1f4

.field public static final HINT_PAGE_ANIMATION_DURATION:I = 0xc8

.field protected static final INVALID_PAGE:I = -0x1

.field protected static final INVALID_POINTER:I = -0x1

.field public static final INVALID_RESTORE_PAGE:I = -0x3e9

.field public static final INVALID_SCREEN_ID:J = -0x1L

.field private static final MAX_SCROLL_PROGRESS:F = 1.0f

.field private static final MIN_FLING_VELOCITY:I = 0xfa

.field private static final MIN_LENGTH_FOR_FLING:I = 0x19

.field private static final MIN_SNAP_VELOCITY:I = 0x5dc

.field private static final NUM_ANIMATIONS_RUNNING_BEFORE_ZOOM_OUT:I = 0x2

.field private static final OVERSCROLL_DAMP_FACTOR:F = 0.32f

.field public static final PAGE_SNAP_ANIMATION_DURATION:I

.field private static final REORDERING_DROP_REPOSITION_DURATION:I = 0xc8

.field private static final REORDERING_REORDER_REPOSITION_DURATION:I = 0x12c

.field private static final REORDERING_SIDE_PAGE_HOVER_TIMEOUT:I = 0x50

.field private static final RETURN_TO_ORIGINAL_PAGE_THRESHOLD:F = 0.33f

.field private static final SIGNIFICANT_MOVE_THRESHOLD:F = 0.4f

.field public static final SLOW_PAGE_SNAP_ANIMATION_DURATION:I = 0x3b6

.field private static final TAG:Ljava/lang/String; = "PagedView"

.field protected static final TOUCH_STATE_PINCH_ZOOM:I = 0x3

.field protected static final TOUCH_STATE_REORDERING:I = 0x2

.field protected static final TOUCH_STATE_REST:I = 0x0

.field protected static final TOUCH_STATE_SCROLLING:I = 0x1

.field private static final TRANSITION_BOUNCE_MIN_ALPHA:F = 0.7f

.field private static final TRANSITION_BOUNCE_MIN_SCALE:F = 0.96f

.field private static final sTmpIntPoint:[I

.field private static final sTmpInvMatrix:Landroid/graphics/Matrix;

.field private static final sTmpPoint:[F

.field private static final sTmpRect:Landroid/graphics/Rect;


# instance fields
.field private final SCROLL_DONE:I

.field private final SCROLL_NONE:I

.field private final SCROLL_READY_TO_PULLING:I

.field private final SCROLL_READY_TO_RETURN:I

.field private final SCROLL_START_PULLING:I

.field private final SCROLL_START_RETURN:I

.field private mActivePages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mActivePointerId:I

.field private mCancelTap:Z

.field protected mCenterPagesVertically:Z

.field protected mChildCountOnLastLayout:I

.field private mContinuallyScroll:Z

.field protected mCurrentPage:I

.field private mDefaultInterpolator:Landroid/view/animation/Interpolator;

.field private mDeferLoadAssociatedPagesUntilScrollCompletes:Z

.field private mDirtyPageContent:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mDownMotionX:F

.field private mDownMotionY:F

.field private mDownScrollX:F

.field protected mDragView:Landroid/view/View;

.field private mDragViewBaselineLeft:F

.field private mEnablePageIndicatorAnim:Z

.field protected mFadeInAdjacentScreens:Z

.field protected mFirstLayout:Z

.field protected mFlingThresholdVelocity:I

.field protected mForceDrawAllChildrenNextFrame:Z

.field protected mForceScreenScrolled:Z

.field protected mHintPageLeftZone:I

.field protected mHintPageRightZone:I

.field protected mHintPageWidth:I

.field protected final mInsets:Landroid/graphics/Rect;

.field private mIsDataReady:Z

.field public mIsPageMoving:Z

.field private mIsReordering:Z

.field protected mIsResumed:Z

.field private mIsShowingHintPages:Z

.field protected mLastMotionX:F

.field protected mLastMotionY:F

.field private mLastScreenCenter:I

.field protected mLongClickListener:Landroid/view/View$OnLongClickListener;

.field protected mMaxScrollX:I

.field private mMaximumVelocity:I

.field protected mMinFlingVelocity:I

.field private mMinScale:F

.field protected mMinSnapVelocity:I

.field protected mNextPage:I

.field private mNormalChildHeight:I

.field protected mPageBackgroundAlpha:F

.field private mPageIndicator:Lcom/android/launcher3/common/view/PageIndicator;

.field private mPageIndicatorViewId:I

.field protected mPageLayoutHeightGap:I

.field protected mPageLayoutWidthGap:I

.field private mPageScrollListener:Lcom/android/launcher3/common/base/view/PagedView$PageScrollListener;

.field private mPageScrolls:[I

.field protected mPageSpacing:I

.field private mPageSwitchListener:Lcom/android/launcher3/common/base/view/PagedView$PageSwitchListener;

.field private mParentDownMotionX:F

.field private mParentDownMotionY:F

.field private mPostReorderingPreZoomInRemainingAnimationCount:I

.field private mPostReorderingPreZoomInRunnable:Ljava/lang/Runnable;

.field private mPullingPagesAnim:Landroid/animation/ObjectAnimator;

.field private mReorderingStarted:Z

.field protected mRestorePage:I

.field private mScrollDeterminator:Lcom/android/launcher3/util/event/ScrollDeterminator;

.field private mScrollState:I

.field protected mScroller:Lcom/android/launcher3/common/base/PageScroller;

.field private mSidePageHoverIndex:I

.field private mSidePageHoverRunnable:Ljava/lang/Runnable;

.field protected mTempVisiblePagesRange:[I

.field protected mTotalMotionX:F

.field protected mTouchSlop:I

.field protected mTouchState:I

.field private mTransitionListener:Landroid/animation/LayoutTransition$TransitionListener;

.field private mTranslateAllPages:F

.field protected mTranslatePagesOffset:F

.field protected mUnboundedScrollX:I

.field protected mUpdateOnlyCurrentPage:Z

.field private mUseMinScale:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mViewport:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 86
    sget-boolean v0, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x190

    :goto_0
    sput v0, Lcom/android/launcher3/common/base/view/PagedView;->PAGE_SNAP_ANIMATION_DURATION:I

    .line 202
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    sput-object v0, Lcom/android/launcher3/common/base/view/PagedView;->sTmpInvMatrix:Landroid/graphics/Matrix;

    .line 203
    new-array v0, v1, [F

    sput-object v0, Lcom/android/launcher3/common/base/view/PagedView;->sTmpPoint:[F

    .line 204
    new-array v0, v1, [I

    sput-object v0, Lcom/android/launcher3/common/base/view/PagedView;->sTmpIntPoint:[I

    .line 205
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/launcher3/common/base/view/PagedView;->sTmpRect:Landroid/graphics/Rect;

    return-void

    .line 86
    :cond_0
    const/16 v0, 0x2ee

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 246
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/common/base/view/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 247
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 250
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/common/base/view/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 251
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 254
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 110
    iput-boolean v4, p0, Lcom/android/launcher3/common/base/view/PagedView;->mFirstLayout:Z

    .line 114
    const/16 v1, -0x3e9

    iput v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mRestorePage:I

    .line 117
    iput v3, p0, Lcom/android/launcher3/common/base/view/PagedView;->mNextPage:I

    .line 119
    iput v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageSpacing:I

    .line 135
    iput v3, p0, Lcom/android/launcher3/common/base/view/PagedView;->mLastScreenCenter:I

    .line 146
    iput v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTouchState:I

    .line 147
    iput-boolean v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mForceScreenScrolled:Z

    .line 156
    new-array v1, v5, [I

    iput-object v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTempVisiblePagesRange:[I

    .line 161
    iput v3, p0, Lcom/android/launcher3/common/base/view/PagedView;->mActivePointerId:I

    .line 166
    iput-boolean v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mFadeInAdjacentScreens:Z

    .line 168
    iput-boolean v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mIsPageMoving:Z

    .line 177
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mViewport:Landroid/graphics/Rect;

    .line 186
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mMinScale:F

    .line 187
    iput-boolean v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mUseMinScale:Z

    .line 190
    iput v3, p0, Lcom/android/launcher3/common/base/view/PagedView;->mSidePageHoverIndex:I

    .line 192
    iput-boolean v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mReorderingStarted:Z

    .line 207
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mInsets:Landroid/graphics/Rect;

    .line 216
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mActivePages:Ljava/util/ArrayList;

    .line 217
    iput-boolean v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mIsDataReady:Z

    .line 220
    iput v6, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTranslateAllPages:F

    .line 221
    iput v6, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTranslatePagesOffset:F

    .line 222
    iput v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mHintPageLeftZone:I

    .line 223
    iput v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mHintPageRightZone:I

    .line 224
    iput v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mHintPageWidth:I

    .line 233
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mScrollDeterminator:Lcom/android/launcher3/util/event/ScrollDeterminator;

    .line 235
    iput-boolean v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mUpdateOnlyCurrentPage:Z

    .line 927
    new-instance v1, Lcom/android/launcher3/common/base/view/PagedView$2;

    invoke-direct {v1, p0}, Lcom/android/launcher3/common/base/view/PagedView$2;-><init>(Lcom/android/launcher3/common/base/view/PagedView;)V

    iput-object v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTransitionListener:Landroid/animation/LayoutTransition$TransitionListener;

    .line 2762
    iput v3, p0, Lcom/android/launcher3/common/base/view/PagedView;->SCROLL_NONE:I

    .line 2763
    iput v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->SCROLL_READY_TO_PULLING:I

    .line 2764
    iput v4, p0, Lcom/android/launcher3/common/base/view/PagedView;->SCROLL_READY_TO_RETURN:I

    .line 2765
    iput v5, p0, Lcom/android/launcher3/common/base/view/PagedView;->SCROLL_START_PULLING:I

    .line 2766
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->SCROLL_START_RETURN:I

    .line 2767
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->SCROLL_DONE:I

    .line 2769
    iput v3, p0, Lcom/android/launcher3/common/base/view/PagedView;->mScrollState:I

    .line 2770
    iput-boolean v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mIsShowingHintPages:Z

    .line 2771
    iput-boolean v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mContinuallyScroll:Z

    .line 256
    sget-object v1, Lcom/sec/android/app/launcher/R$styleable;->PagedView:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 259
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageLayoutWidthGap:I

    .line 261
    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageLayoutHeightGap:I

    .line 263
    invoke-virtual {v0, v5, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageIndicatorViewId:I

    .line 264
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 266
    invoke-virtual {p0, v2}, Lcom/android/launcher3/common/base/view/PagedView;->setHapticFeedbackEnabled(Z)V

    .line 267
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->init()V

    .line 268
    return-void
.end method

.method private abortScrollerAnimation(Z)V
    .locals 1
    .param p1, "resetNextPage"    # Z

    .prologue
    .line 479
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mScroller:Lcom/android/launcher3/common/base/PageScroller;

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/PageScroller;->abortAnimation()V

    .line 480
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->isContentsRefreshable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDeferLoadAssociatedPagesUntilScrollCompletes:Z

    if-eqz v0, :cond_0

    .line 481
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->computeScroll()V

    .line 485
    :cond_0
    if-eqz p1, :cond_1

    .line 486
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mNextPage:I

    .line 488
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/common/base/view/PagedView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/common/base/view/PagedView;

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/launcher3/common/base/view/PagedView;->updateMaxScrollX()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/launcher3/common/base/view/PagedView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/common/base/view/PagedView;
    .param p1, "x1"    # I

    .prologue
    .line 78
    iput p1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mSidePageHoverIndex:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/launcher3/common/base/view/PagedView;)Lcom/android/launcher3/common/view/PageIndicator;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/common/base/view/PagedView;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageIndicator:Lcom/android/launcher3/common/view/PageIndicator;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/launcher3/common/base/view/PagedView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/common/base/view/PagedView;
    .param p1, "x1"    # Z

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->onPostReorderingAnimationCompleted(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/launcher3/common/base/view/PagedView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/common/base/view/PagedView;

    .prologue
    .line 78
    iget v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mScrollState:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/launcher3/common/base/view/PagedView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/common/base/view/PagedView;
    .param p1, "x1"    # I

    .prologue
    .line 78
    iput p1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mScrollState:I

    return p1
.end method

.method static synthetic access$602(Lcom/android/launcher3/common/base/view/PagedView;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/common/base/view/PagedView;
    .param p1, "x1"    # F

    .prologue
    .line 78
    iput p1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTranslateAllPages:F

    return p1
.end method

.method static synthetic access$702(Lcom/android/launcher3/common/base/view/PagedView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/common/base/view/PagedView;
    .param p1, "x1"    # Z

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mContinuallyScroll:Z

    return p1
.end method

.method private acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1974
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 1975
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1977
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1978
    return-void
.end method

.method private animateDragViewToOriginalPosition()V
    .locals 9

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2256
    iget-object v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDragView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 2257
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2258
    .local v0, "anim":Landroid/animation/AnimatorSet;
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2259
    const/4 v1, 0x4

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDragView:Landroid/view/View;

    const-string v3, "translationX"

    new-array v4, v7, [F

    aput v5, v4, v6

    .line 2260
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    iget-object v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDragView:Landroid/view/View;

    const-string v3, "translationY"

    new-array v4, v7, [F

    aput v5, v4, v6

    .line 2261
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v7

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDragView:Landroid/view/View;

    const-string v4, "scaleX"

    new-array v5, v7, [F

    aput v8, v5, v6

    .line 2262
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDragView:Landroid/view/View;

    const-string v4, "scaleY"

    new-array v5, v7, [F

    aput v8, v5, v6

    .line 2263
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    .line 2259
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2264
    new-instance v1, Lcom/android/launcher3/common/base/view/PagedView$4;

    invoke-direct {v1, p0}, Lcom/android/launcher3/common/base/view/PagedView$4;-><init>(Lcom/android/launcher3/common/base/view/PagedView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2270
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 2272
    .end local v0    # "anim":Landroid/animation/AnimatorSet;
    :cond_0
    return-void
.end method

.method private animatePullingPages()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 2848
    const-string v0, "PagedView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "animatePullingPages() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getTranslationX()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2849
    iget v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mScrollState:I

    if-ne v0, v3, :cond_1

    .line 2850
    const-string v0, "translationX"

    new-array v1, v3, [F

    aput v4, v1, v5

    iget v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTranslateAllPages:F

    aput v2, v1, v6

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPullingPagesAnim:Landroid/animation/ObjectAnimator;

    .line 2855
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPullingPagesAnim:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2856
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPullingPagesAnim:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2857
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPullingPagesAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 2858
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPullingPagesAnim:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/launcher3/common/base/view/PagedView$7;

    invoke-direct {v1, p0}, Lcom/android/launcher3/common/base/view/PagedView$7;-><init>(Lcom/android/launcher3/common/base/view/PagedView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2874
    return-void

    .line 2851
    :cond_1
    iget v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mScrollState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2852
    const-string v0, "translationX"

    new-array v1, v3, [F

    iget v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTranslateAllPages:F

    aput v2, v1, v5

    aput v4, v1, v6

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPullingPagesAnim:Landroid/animation/ObjectAnimator;

    goto :goto_0
.end method

.method private animateTranslationPage(Landroid/view/View;FF)V
    .locals 4
    .param p1, "page"    # Landroid/view/View;
    .param p2, "from"    # F
    .param p3, "to"    # F

    .prologue
    .line 2738
    const-string v1, "translationX"

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput p2, v2, v3

    const/4 v3, 0x1

    aput p3, v2, v3

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 2739
    .local v0, "pageViewAnim":Landroid/animation/ObjectAnimator;
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2740
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 2741
    return-void
.end method

.method private checkTouchedPageIndicator(FF)Z
    .locals 12
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 2942
    const/4 v8, 0x2

    new-array v0, v8, [I

    .line 2943
    .local v0, "cordinate":[I
    iget-object v8, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageIndicator:Lcom/android/launcher3/common/view/PageIndicator;

    invoke-virtual {v8, v0}, Lcom/android/launcher3/common/view/PageIndicator;->getLocationOnScreen([I)V

    .line 2945
    aget v8, v0, v7

    int-to-float v4, v8

    .line 2946
    .local v4, "minWidth":F
    iget-object v8, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageIndicator:Lcom/android/launcher3/common/view/PageIndicator;

    invoke-virtual {v8}, Lcom/android/launcher3/common/view/PageIndicator;->getWidth()I

    move-result v8

    int-to-float v8, v8

    add-float v2, v4, v8

    .line 2947
    .local v2, "maxWidth":F
    aget v8, v0, v6

    int-to-float v3, v8

    .line 2948
    .local v3, "minHeight":F
    iget-object v8, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageIndicator:Lcom/android/launcher3/common/view/PageIndicator;

    invoke-virtual {v8}, Lcom/android/launcher3/common/view/PageIndicator;->getHeight()I

    move-result v8

    int-to-float v8, v8

    add-float v1, v3, v8

    .line 2949
    .local v1, "maxHeight":F
    new-instance v5, Landroid/graphics/Rect;

    float-to-int v8, v4

    float-to-int v9, v3

    float-to-int v10, v2

    float-to-int v11, v1

    invoke-direct {v5, v8, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2951
    .local v5, "pageIndicatorArea":Landroid/graphics/Rect;
    iget-object v8, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageIndicator:Lcom/android/launcher3/common/view/PageIndicator;

    if-eqz v8, :cond_0

    .line 2952
    float-to-int v8, p1

    float-to-int v9, p2

    invoke-virtual {v5, v8, v9}, Landroid/graphics/Rect;->contains(II)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2957
    :goto_0
    return v6

    :cond_0
    move v6, v7

    goto :goto_0
.end method

.method private dampedOverScroll(F)V
    .locals 6
    .param p1, "amount"    # F

    .prologue
    const/4 v5, 0x0

    .line 1229
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getMeasuredWidth()I

    move-result v2

    .line 1230
    .local v2, "screenSize":I
    int-to-float v3, v2

    div-float v0, p1, v3

    .line 1232
    .local v0, "f":F
    cmpl-float v3, v0, v5

    if-nez v3, :cond_0

    .line 1248
    :goto_0
    return-void

    .line 1236
    :cond_0
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float v3, v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/launcher3/common/base/view/PagedView;->overScrollInfluenceCurve(F)F

    move-result v4

    mul-float v0, v3, v4

    .line 1237
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_1

    .line 1238
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float/2addr v0, v3

    .line 1241
    :cond_1
    const v3, 0x3ea3d70a    # 0.32f

    mul-float/2addr v3, v0

    int-to-float v4, v2

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 1242
    .local v1, "overScrollAmount":I
    cmpg-float v3, p1, v5

    if-gez v3, :cond_2

    .line 1243
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getScrollY()I

    move-result v3

    invoke-super {p0, v1, v3}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 1247
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->invalidate()V

    goto :goto_0

    .line 1245
    :cond_2
    iget v3, p0, Lcom/android/launcher3/common/base/view/PagedView;->mMaxScrollX:I

    add-int/2addr v3, v1

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getScrollY()I

    move-result v4

    invoke-super {p0, v3, v4}, Landroid/view/ViewGroup;->scrollTo(II)V

    goto :goto_1
.end method

.method private disablePageIndicatorAnimation()V
    .locals 3

    .prologue
    .line 2965
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mEnablePageIndicatorAnim:Z

    .line 2966
    iget-object v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageIndicator:Lcom/android/launcher3/common/view/PageIndicator;

    if-eqz v1, :cond_1

    .line 2967
    iget-object v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageIndicator:Lcom/android/launcher3/common/view/PageIndicator;

    invoke-virtual {v1}, Lcom/android/launcher3/common/view/PageIndicator;->getMarkers()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/view/PageIndicatorMarker;

    .line 2968
    .local v0, "marker":Lcom/android/launcher3/common/view/PageIndicatorMarker;
    invoke-virtual {v0}, Lcom/android/launcher3/common/view/PageIndicatorMarker;->disableMarkerAnimation()V

    goto :goto_0

    .line 2970
    .end local v0    # "marker":Lcom/android/launcher3/common/view/PageIndicatorMarker;
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageIndicator:Lcom/android/launcher3/common/view/PageIndicator;

    invoke-virtual {v1}, Lcom/android/launcher3/common/view/PageIndicator;->disableLayoutTransitions()V

    .line 2972
    :cond_1
    return-void
.end method

.method private distanceInfluenceForSnapDuration(F)F
    .locals 4
    .param p1, "f"    # F

    .prologue
    .line 2053
    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    .line 2054
    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v0, v2

    double-to-float p1, v0

    .line 2055
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private enablePageIndicatorAnimation()V
    .locals 3

    .prologue
    .line 2975
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mEnablePageIndicatorAnim:Z

    .line 2976
    iget-object v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageIndicator:Lcom/android/launcher3/common/view/PageIndicator;

    if-eqz v1, :cond_1

    .line 2977
    iget-object v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageIndicator:Lcom/android/launcher3/common/view/PageIndicator;

    invoke-virtual {v1}, Lcom/android/launcher3/common/view/PageIndicator;->getMarkers()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/view/PageIndicatorMarker;

    .line 2978
    .local v0, "marker":Lcom/android/launcher3/common/view/PageIndicatorMarker;
    invoke-virtual {v0}, Lcom/android/launcher3/common/view/PageIndicatorMarker;->enableMarkerAnimation()V

    goto :goto_0

    .line 2980
    .end local v0    # "marker":Lcom/android/launcher3/common/view/PageIndicatorMarker;
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageIndicator:Lcom/android/launcher3/common/view/PageIndicator;

    invoke-virtual {v1}, Lcom/android/launcher3/common/view/PageIndicator;->enableLayoutTransitions()V

    .line 2982
    :cond_1
    return-void
.end method

.method private forceFinishScroller()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 491
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mScroller:Lcom/android/launcher3/common/base/PageScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/base/PageScroller;->forceFinished(Z)V

    .line 493
    iget v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mNextPage:I

    if-eq v0, v2, :cond_0

    .line 494
    iget v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mNextPage:I

    invoke-direct {p0, v0}, Lcom/android/launcher3/common/base/view/PagedView;->validateNewPage(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    .line 495
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->pageEndMoving()V

    .line 499
    :cond_0
    iput v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mNextPage:I

    .line 500
    return-void
.end method

.method private getHintCenterPage()I
    .locals 2

    .prologue
    .line 2822
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->isPageMoving()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mNextPage:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mNextPage:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    goto :goto_0
.end method

.method private hideHintPages(I)V
    .locals 6
    .param p1, "dropScreen"    # I

    .prologue
    const/4 v5, 0x0

    .line 2704
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getChildCount()I

    move-result v2

    .line 2706
    .local v2, "pageCount":I
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/launcher3/common/base/view/PagedView;->mScrollState:I

    .line 2707
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/launcher3/common/base/view/PagedView;->mIsShowingHintPages:Z

    .line 2709
    sget-boolean v3, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v3, :cond_4

    iget v3, p0, Lcom/android/launcher3/common/base/view/PagedView;->mHintPageWidth:I

    neg-int v3, v3

    int-to-float v1, v3

    .line 2712
    .local v1, "from":F
    :goto_0
    if-lez p1, :cond_0

    .line 2713
    add-int/lit8 v3, p1, -0x1

    invoke-virtual {p0, v3}, Lcom/android/launcher3/common/base/view/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3, v1, v5}, Lcom/android/launcher3/common/base/view/PagedView;->animateTranslationPage(Landroid/view/View;FF)V

    .line 2717
    :cond_0
    if-ge p1, v2, :cond_1

    .line 2718
    add-int/lit8 v3, p1, 0x1

    invoke-virtual {p0, v3}, Lcom/android/launcher3/common/base/view/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    neg-float v4, v1

    invoke-direct {p0, v3, v4, v5}, Lcom/android/launcher3/common/base/view/PagedView;->animateTranslationPage(Landroid/view/View;FF)V

    .line 2721
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 2722
    .local v0, "dropScreenView":Landroid/view/View;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v3

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_2

    .line 2723
    invoke-virtual {v0, v5}, Landroid/view/View;->setTranslationX(F)V

    .line 2726
    :cond_2
    invoke-direct {p0}, Lcom/android/launcher3/common/base/view/PagedView;->isTranslatedPages()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2727
    const-string v3, "PagedView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resetPulledPages called from hideHintPage "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTranslateAllPages:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2728
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getTranslationX()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2727
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2729
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->resetPulledPages()V

    .line 2731
    :cond_3
    return-void

    .line 2709
    .end local v0    # "dropScreenView":Landroid/view/View;
    .end local v1    # "from":F
    :cond_4
    iget v3, p0, Lcom/android/launcher3/common/base/view/PagedView;->mHintPageWidth:I

    int-to-float v1, v3

    goto :goto_0
.end method

.method private invalidatePageData(IZ)V
    .locals 5
    .param p1, "page"    # I
    .param p2, "immediateAndOnly"    # Z

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 2446
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->isContentsRefreshable()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->isDataReady()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2472
    :cond_0
    :goto_0
    return-void

    .line 2449
    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2452
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->syncPages()V

    .line 2456
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getMeasuredWidth()I

    move-result v2

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 2457
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getMeasuredHeight()I

    move-result v3

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 2456
    invoke-virtual {p0, v2, v3}, Lcom/android/launcher3/common/base/view/PagedView;->measure(II)V

    .line 2459
    const/4 v2, -0x1

    if-le p1, v2, :cond_2

    .line 2460
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getPageCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/launcher3/common/base/view/PagedView;->setCurrentPage(I)V

    .line 2464
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getChildCount()I

    move-result v0

    .line 2465
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 2466
    iget-object v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2465
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2470
    :cond_3
    iget v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    invoke-direct {p0, v2, p2}, Lcom/android/launcher3/common/base/view/PagedView;->loadAssociatedPages(IZ)V

    .line 2471
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->requestLayout()V

    goto :goto_0
.end method

.method private isActivePage(I)Z
    .locals 2
    .param p1, "page"    # I

    .prologue
    .line 2498
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mActivePages:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isHorizontalScroll()Z
    .locals 1

    .prologue
    .line 2928
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mScrollDeterminator:Lcom/android/launcher3/util/event/ScrollDeterminator;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mScrollDeterminator:Lcom/android/launcher3/util/event/ScrollDeterminator;

    invoke-virtual {v0}, Lcom/android/launcher3/util/event/ScrollDeterminator;->isHorizontalScroll()Z

    move-result v0

    goto :goto_0
.end method

.method private isPullingPageTouchArea(F)Z
    .locals 1
    .param p1, "touchX"    # F

    .prologue
    .line 2826
    iget v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mHintPageRightZone:I

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mHintPageLeftZone:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTouchPointInViewportWithBuffer(II)Z
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1442
    sget-object v0, Lcom/android/launcher3/common/base/view/PagedView;->sTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mViewport:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mViewport:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mViewport:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/android/launcher3/common/base/view/PagedView;->mViewport:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/android/launcher3/common/base/view/PagedView;->mViewport:Landroid/graphics/Rect;

    .line 1443
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/launcher3/common/base/view/PagedView;->mViewport:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    .line 1442
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1444
    sget-object v0, Lcom/android/launcher3/common/base/view/PagedView;->sTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method private isTranslatedPages()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2877
    iget v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTranslateAllPages:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getTranslationX()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadAssociatedPages(IZ)V
    .locals 6
    .param p1, "page"    # I
    .param p2, "immediateAndOnly"    # Z

    .prologue
    const/4 v5, 0x1

    .line 2506
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->isContentsRefreshable()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2537
    :cond_0
    return-void

    .line 2509
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getChildCount()I

    move-result v0

    .line 2510
    .local v0, "count":I
    iget-object v3, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 2511
    iget-object v3, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2510
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2514
    :cond_2
    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    .line 2515
    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->setActivePages(I)V

    .line 2517
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/common/base/view/PagedView;->syncPageItemsInternal(IZ)V

    .line 2520
    if-nez p2, :cond_0

    .line 2522
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_0

    .line 2523
    if-ne p1, v1, :cond_3

    .line 2522
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2525
    :cond_3
    invoke-direct {p0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->isActivePage(I)Z

    move-result v3

    if-nez v3, :cond_5

    .line 2526
    invoke-virtual {p0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/view/Page;

    .line 2527
    .local v2, "pageLayout":Lcom/android/launcher3/common/base/view/Page;
    invoke-interface {v2}, Lcom/android/launcher3/common/base/view/Page;->getPageItemCount()I

    move-result v3

    if-lez v3, :cond_4

    .line 2528
    invoke-interface {v2}, Lcom/android/launcher3/common/base/view/Page;->removeAllViewsOnPage()V

    .line 2530
    :cond_4
    iget-object v3, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2531
    invoke-virtual {p0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 2533
    .end local v2    # "pageLayout":Lcom/android/launcher3/common/base/view/Page;
    :cond_5
    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lcom/android/launcher3/common/base/view/PagedView;->syncPageItemsInternal(IZ)V

    goto :goto_2
.end method

.method private mapPointFromParentToView(Landroid/view/View;FF)[F
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 361
    sget-object v0, Lcom/android/launcher3/common/base/view/PagedView;->sTmpPoint:[F

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    sub-float v2, p2, v2

    aput v2, v0, v1

    .line 362
    sget-object v0, Lcom/android/launcher3/common/base/view/PagedView;->sTmpPoint:[F

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    sub-float v2, p3, v2

    aput v2, v0, v1

    .line 363
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/common/base/view/PagedView;->sTmpInvMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 364
    sget-object v0, Lcom/android/launcher3/common/base/view/PagedView;->sTmpInvMatrix:Landroid/graphics/Matrix;

    sget-object v1, Lcom/android/launcher3/common/base/view/PagedView;->sTmpPoint:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 365
    sget-object v0, Lcom/android/launcher3/common/base/view/PagedView;->sTmpPoint:[F

    return-object v0
.end method

.method private mapPointFromViewToParent(Landroid/view/View;FF)[F
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 352
    sget-object v0, Lcom/android/launcher3/common/base/view/PagedView;->sTmpPoint:[F

    aput p2, v0, v3

    .line 353
    sget-object v0, Lcom/android/launcher3/common/base/view/PagedView;->sTmpPoint:[F

    aput p3, v0, v4

    .line 354
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/common/base/view/PagedView;->sTmpPoint:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 355
    sget-object v0, Lcom/android/launcher3/common/base/view/PagedView;->sTmpPoint:[F

    aget v1, v0, v3

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    aput v1, v0, v3

    .line 356
    sget-object v0, Lcom/android/launcher3/common/base/view/PagedView;->sTmpPoint:[F

    aget v1, v0, v4

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    aput v1, v0, v4

    .line 357
    sget-object v0, Lcom/android/launcher3/common/base/view/PagedView;->sTmpPoint:[F

    return-object v0
.end method

.method private maxOverScroll()F
    .locals 3

    .prologue
    .line 1218
    const/high16 v0, 0x3f800000    # 1.0f

    .line 1219
    .local v0, "f":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float v1, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/launcher3/common/base/view/PagedView;->overScrollInfluenceCurve(F)F

    move-result v2

    mul-float v0, v1, v2

    .line 1220
    const v1, 0x3ea3d70a    # 0.32f

    mul-float/2addr v1, v0

    return v1
.end method

.method private onPostReorderingAnimationCompleted(Z)V
    .locals 1
    .param p1, "animationCompleted"    # Z

    .prologue
    .line 2289
    iget v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPostReorderingPreZoomInRemainingAnimationCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPostReorderingPreZoomInRemainingAnimationCount:I

    .line 2290
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPostReorderingPreZoomInRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPostReorderingPreZoomInRemainingAnimationCount:I

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    .line 2292
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPostReorderingPreZoomInRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2293
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPostReorderingPreZoomInRunnable:Ljava/lang/Runnable;

    .line 2295
    :cond_1
    return-void
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1989
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const v4, 0xff00

    and-int/2addr v3, v4

    shr-int/lit8 v2, v3, 0x8

    .line 1991
    .local v2, "pointerIndex":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 1992
    .local v1, "pointerId":I
    iget v3, p0, Lcom/android/launcher3/common/base/view/PagedView;->mActivePointerId:I

    if-ne v1, v3, :cond_0

    .line 1996
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 1997
    .local v0, "newPointerIndex":I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDownMotionX:F

    iput v3, p0, Lcom/android/launcher3/common/base/view/PagedView;->mLastMotionX:F

    .line 1998
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    iput v3, p0, Lcom/android/launcher3/common/base/view/PagedView;->mLastMotionY:F

    .line 1999
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/android/launcher3/common/base/view/PagedView;->mActivePointerId:I

    .line 2000
    iget-object v3, p0, Lcom/android/launcher3/common/base/view/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_0

    .line 2001
    iget-object v3, p0, Lcom/android/launcher3/common/base/view/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 2004
    .end local v0    # "newPointerIndex":I
    :cond_0
    return-void

    .line 1996
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private overScrollInfluenceCurve(F)F
    .locals 2
    .param p1, "f"    # F

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 1224
    sub-float/2addr p1, v1

    .line 1225
    mul-float v0, p1, p1

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    return v0
.end method

.method private overscrollEffect(Landroid/view/View;FI)V
    .locals 8
    .param p1, "page"    # Landroid/view/View;
    .param p2, "scrollProgress"    # F
    .param p3, "pageCount"    # I

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v6, 0x3f800000    # 1.0f

    .line 1295
    const/16 v4, 0x21

    invoke-static {v4}, Lcom/android/launcher3/util/ViInterpolator;->getInterploator(I)Landroid/view/animation/PathInterpolator;

    move-result-object v0

    .line 1296
    .local v0, "ip":Landroid/view/animation/PathInterpolator;
    const v4, 0x3dcccccd    # 0.1f

    const/high16 v5, 0x40400000    # 3.0f

    div-float v5, p2, v5

    .line 1297
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-virtual {v0, v5}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v5

    mul-float/2addr v4, v5

    invoke-direct {p0}, Lcom/android/launcher3/common/base/view/PagedView;->maxOverScroll()F

    move-result v5

    div-float/2addr v4, v5

    sub-float v2, v6, v4

    .line 1298
    .local v2, "scaleFactor":F
    const v4, 0x3f75c28f    # 0.96f

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 1300
    sget-boolean v4, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v4, :cond_0

    add-int/lit8 v1, p3, -0x1

    .line 1301
    .local v1, "overScrollLeftIndex":I
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/launcher3/common/base/view/PagedView;->indexToPage(I)I

    move-result v4

    if-ne v4, v1, :cond_1

    const/4 v4, 0x0

    cmpg-float v4, p2, v4

    if-gez v4, :cond_1

    .line 1302
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getScrollX()I

    move-result v4

    int-to-float v3, v4

    .line 1307
    .local v3, "translationX":F
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v7

    invoke-virtual {p1, v4}, Landroid/view/View;->setPivotX(F)V

    .line 1308
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v7

    invoke-virtual {p1, v4}, Landroid/view/View;->setPivotY(F)V

    .line 1309
    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleX(F)V

    .line 1310
    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleY(F)V

    .line 1311
    invoke-virtual {p1, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 1312
    div-float v4, p2, v7

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sub-float v4, v6, v4

    invoke-static {v6, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    const v5, 0x3f333333    # 0.7f

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/View;->setAlpha(F)V

    .line 1314
    return-void

    .line 1300
    .end local v1    # "overScrollLeftIndex":I
    .end local v3    # "translationX":F
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1304
    .restart local v1    # "overScrollLeftIndex":I
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getScrollX()I

    move-result v4

    iget v5, p0, Lcom/android/launcher3/common/base/view/PagedView;->mMaxScrollX:I

    sub-int/2addr v4, v5

    int-to-float v3, v4

    .restart local v3    # "translationX":F
    goto :goto_1
.end method

.method private releaseVelocityTracker()V
    .locals 1

    .prologue
    .line 1981
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 1982
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 1983
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 1984
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1986
    :cond_0
    return-void
.end method

.method private resetTouchState()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1922
    invoke-direct {p0}, Lcom/android/launcher3/common/base/view/PagedView;->releaseVelocityTracker()V

    .line 1923
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->endReordering()V

    .line 1924
    iput-boolean v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mCancelTap:Z

    .line 1925
    iput v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTouchState:I

    .line 1926
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mActivePointerId:I

    .line 1927
    return-void
.end method

.method private scrollPageOnMoveEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x1

    .line 1895
    iget v4, p0, Lcom/android/launcher3/common/base/view/PagedView;->mActivePointerId:I

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 1897
    .local v2, "pointerIndex":I
    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    .line 1918
    :goto_0
    return v6

    .line 1899
    :cond_0
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v3, v4

    .line 1900
    .local v3, "x":I
    iget v4, p0, Lcom/android/launcher3/common/base/view/PagedView;->mLastMotionX:F

    float-to-int v4, v4

    sub-int v0, v3, v4

    .line 1902
    .local v0, "deltaX":I
    iget v4, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTotalMotionX:F

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    iput v4, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTotalMotionX:F

    .line 1908
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_2

    .line 1909
    move v1, v0

    .line 1910
    .local v1, "deltaXwithCompensation":I
    iget-object v4, p0, Lcom/android/launcher3/common/base/view/PagedView;->mScrollDeterminator:Lcom/android/launcher3/util/event/ScrollDeterminator;

    if-eqz v4, :cond_1

    .line 1911
    iget-object v4, p0, Lcom/android/launcher3/common/base/view/PagedView;->mScrollDeterminator:Lcom/android/launcher3/util/event/ScrollDeterminator;

    invoke-virtual {v4, v0}, Lcom/android/launcher3/util/event/ScrollDeterminator;->getDeltaXwithCompensation(I)I

    move-result v1

    .line 1913
    :cond_1
    neg-int v4, v1

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/android/launcher3/common/base/view/PagedView;->scrollBy(II)V

    .line 1914
    int-to-float v4, v3

    iput v4, p0, Lcom/android/launcher3/common/base/view/PagedView;->mLastMotionX:F

    goto :goto_0

    .line 1916
    .end local v1    # "deltaXwithCompensation":I
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->awakenScrollBars()Z

    goto :goto_0
.end method

.method private setHintPageTranslation()V
    .locals 7

    .prologue
    .line 2744
    iget v5, p0, Lcom/android/launcher3/common/base/view/PagedView;->mNextPage:I

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    add-int/lit8 v6, v6, -0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 2745
    .local v1, "leftPage":I
    iget v5, p0, Lcom/android/launcher3/common/base/view/PagedView;->mNextPage:I

    add-int/lit8 v5, v5, 0x1

    iget v6, p0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    add-int/lit8 v6, v6, 0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getChildCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 2747
    .local v3, "rightPage":I
    sget-boolean v5, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v5, :cond_1

    iget v5, p0, Lcom/android/launcher3/common/base/view/PagedView;->mHintPageWidth:I

    neg-int v5, v5

    int-to-float v4, v5

    .line 2748
    .local v4, "translationX":F
    :goto_0
    move v0, v1

    .local v0, "i":I
    :goto_1
    if-gt v0, v3, :cond_4

    .line 2749
    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/base/view/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2750
    .local v2, "page":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 2751
    iget v5, p0, Lcom/android/launcher3/common/base/view/PagedView;->mNextPage:I

    add-int/lit8 v5, v5, -0x1

    if-ne v0, v5, :cond_2

    .line 2752
    const/high16 v5, 0x3f800000    # 1.0f

    mul-float/2addr v5, v4

    invoke-virtual {v2, v5}, Landroid/view/View;->setTranslationX(F)V

    .line 2748
    :cond_0
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2747
    .end local v0    # "i":I
    .end local v2    # "page":Landroid/view/View;
    .end local v4    # "translationX":F
    :cond_1
    iget v5, p0, Lcom/android/launcher3/common/base/view/PagedView;->mHintPageWidth:I

    int-to-float v4, v5

    goto :goto_0

    .line 2753
    .restart local v0    # "i":I
    .restart local v2    # "page":Landroid/view/View;
    .restart local v4    # "translationX":F
    :cond_2
    iget v5, p0, Lcom/android/launcher3/common/base/view/PagedView;->mNextPage:I

    add-int/lit8 v5, v5, 0x1

    if-ne v0, v5, :cond_3

    .line 2754
    neg-float v5, v4

    invoke-virtual {v2, v5}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_2

    .line 2756
    :cond_3
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_2

    .line 2760
    .end local v2    # "page":Landroid/view/View;
    :cond_4
    return-void
.end method

.method private syncPageItemsInternal(IZ)V
    .locals 2
    .param p1, "page"    # I
    .param p2, "immediateAndOnly"    # Z

    .prologue
    const/4 v1, 0x0

    .line 2585
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2586
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/common/base/view/PagedView;->syncPageItems(IZ)V

    .line 2595
    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2596
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2598
    :cond_0
    return-void
.end method

.method private updateDragViewTranslationDuringDrag()V
    .locals 5

    .prologue
    .line 369
    iget-object v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDragView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 370
    iget v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mLastMotionX:F

    iget v3, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDownMotionX:F

    sub-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getScrollX()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDownScrollX:F

    sub-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDragViewBaselineLeft:F

    iget-object v4, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDragView:Landroid/view/View;

    .line 371
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    add-float v0, v2, v3

    .line 372
    .local v0, "x":F
    iget v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mLastMotionY:F

    iget v3, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDownMotionY:F

    sub-float v1, v2, v3

    .line 373
    .local v1, "y":F
    iget-object v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 374
    iget-object v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 379
    .end local v0    # "x":F
    .end local v1    # "y":F
    :cond_0
    return-void
.end method

.method private updateMaxScrollX()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 951
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getChildCount()I

    move-result v0

    .line 952
    .local v0, "childCount":I
    if-lez v0, :cond_1

    .line 953
    sget-boolean v2, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v2, :cond_0

    .line 954
    .local v1, "index":I
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->getScrollForPage(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mMaxScrollX:I

    .line 958
    .end local v1    # "index":I
    :goto_1
    return-void

    .line 953
    :cond_0
    add-int/lit8 v1, v0, -0x1

    goto :goto_0

    .line 956
    :cond_1
    iput v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mMaxScrollX:I

    goto :goto_1
.end method

.method private updatePageIndicator()V
    .locals 2

    .prologue
    .line 1035
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageIndicator:Lcom/android/launcher3/common/view/PageIndicator;

    if-eqz v0, :cond_0

    .line 1036
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageIndicator:Lcom/android/launcher3/common/view/PageIndicator;

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getPageIndicatorDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/view/PageIndicator;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1037
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/base/view/PagedView;->isReordering(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1038
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageIndicator:Lcom/android/launcher3/common/view/PageIndicator;

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getNextPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/view/PageIndicator;->setActiveMarker(I)V

    .line 1041
    :cond_0
    return-void
.end method

.method private validateNewPage(I)I
    .locals 3
    .param p1, "newPage"    # I

    .prologue
    .line 503
    move v0, p1

    .line 505
    .local v0, "validatedPage":I
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getPageCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 506
    return v0
.end method


# virtual methods
.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 3
    .param p2, "direction"    # I
    .param p3, "focusableMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 1370
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x0

    .line 1373
    .local v0, "focusablePage":Landroid/view/View;
    iget v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getPageCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1374
    iget v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 1376
    :cond_0
    const/16 v1, 0x11

    if-ne p2, v1, :cond_3

    .line 1377
    iget v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    if-lez v1, :cond_1

    .line 1378
    iget v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 1386
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 1387
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 1389
    :cond_2
    return-void

    .line 1380
    :cond_3
    const/16 v1, 0x42

    if-ne p2, v1, :cond_1

    .line 1381
    iget v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getPageCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    .line 1382
    iget v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public addMarkerForView(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 999
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageIndicator:Lcom/android/launcher3/common/view/PageIndicator;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/base/view/PagedView;->isReordering(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1000
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageIndicator:Lcom/android/launcher3/common/view/PageIndicator;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->getPageIndicatorMarker(I)Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mEnablePageIndicatorAnim:Z

    invoke-virtual {v0, p1, v1, v2, p0}, Lcom/android/launcher3/common/view/PageIndicator;->addMarker(ILcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;ZLcom/android/launcher3/common/base/view/PagedView;)V

    .line 1002
    :cond_0
    return-void
.end method

.method public canDragScroll()Z
    .locals 2

    .prologue
    .line 2881
    iget v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mScrollState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mContinuallyScroll:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected canOverScroll()Z
    .locals 1

    .prologue
    .line 1251
    const/4 v0, 0x1

    return v0
.end method

.method protected cancelCurrentPageLongPress()V
    .locals 2

    .prologue
    .line 1595
    iget v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 1596
    .local v0, "currentPage":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1597
    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    .line 1599
    :cond_0
    return-void
.end method

.method public cancelDeferLoadAssociatedPagesUntilScrollCompletes()V
    .locals 1

    .prologue
    .line 2938
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDeferLoadAssociatedPagesUntilScrollCompletes:Z

    .line 2939
    return-void
.end method

.method protected cancelScroll()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 2889
    iget v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTouchState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTouchState:I

    if-ne v0, v2, :cond_2

    .line 2890
    :cond_0
    iget v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTouchState:I

    if-ne v0, v2, :cond_1

    .line 2891
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->endReordering()V

    .line 2893
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->snapToDestination()V

    .line 2895
    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTouchState:I

    .line 2896
    invoke-direct {p0}, Lcom/android/launcher3/common/base/view/PagedView;->releaseVelocityTracker()V

    .line 2897
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 726
    instance-of v0, p1, Lcom/android/launcher3/common/base/view/PagedView$LayoutParams;

    return v0
.end method

.method public computeScroll()V
    .locals 0

    .prologue
    .line 689
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->computeScrollHelper()Z

    .line 690
    return-void
.end method

.method protected computeScrollHelper()Z
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v7, -0x1

    const/4 v5, 0x0

    .line 640
    iget-object v6, p0, Lcom/android/launcher3/common/base/view/PagedView;->mScroller:Lcom/android/launcher3/common/base/PageScroller;

    invoke-virtual {v6}, Lcom/android/launcher3/common/base/PageScroller;->computeScrollOffset()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 642
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getScrollX()I

    move-result v5

    iget-object v6, p0, Lcom/android/launcher3/common/base/view/PagedView;->mScroller:Lcom/android/launcher3/common/base/PageScroller;

    invoke-virtual {v6}, Lcom/android/launcher3/common/base/PageScroller;->getCurrX()I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 643
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getScrollY()I

    move-result v5

    iget-object v6, p0, Lcom/android/launcher3/common/base/view/PagedView;->mScroller:Lcom/android/launcher3/common/base/PageScroller;

    invoke-virtual {v6}, Lcom/android/launcher3/common/base/PageScroller;->getCurrY()I

    move-result v6

    if-eq v5, v6, :cond_1

    .line 644
    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    .line 645
    .local v2, "scaleX":F
    iget-object v5, p0, Lcom/android/launcher3/common/base/view/PagedView;->mScroller:Lcom/android/launcher3/common/base/PageScroller;

    invoke-virtual {v5}, Lcom/android/launcher3/common/base/PageScroller;->getCurrX()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x3f800000    # 1.0f

    div-float/2addr v6, v2

    mul-float/2addr v5, v6

    float-to-int v3, v5

    .line 646
    .local v3, "scrollX":I
    iget-object v5, p0, Lcom/android/launcher3/common/base/view/PagedView;->mScroller:Lcom/android/launcher3/common/base/PageScroller;

    invoke-virtual {v5}, Lcom/android/launcher3/common/base/PageScroller;->getCurrY()I

    move-result v5

    invoke-virtual {p0, v3, v5}, Lcom/android/launcher3/common/base/view/PagedView;->scrollTo(II)V

    .line 648
    .end local v2    # "scaleX":F
    .end local v3    # "scrollX":I
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->invalidate()V

    .line 684
    :cond_2
    :goto_0
    return v4

    .line 650
    :cond_3
    iget v6, p0, Lcom/android/launcher3/common/base/view/PagedView;->mNextPage:I

    if-eq v6, v7, :cond_6

    .line 651
    iget v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    .line 652
    .local v0, "oldPage":I
    iget v6, p0, Lcom/android/launcher3/common/base/view/PagedView;->mNextPage:I

    invoke-direct {p0, v6}, Lcom/android/launcher3/common/base/view/PagedView;->validateNewPage(I)I

    move-result v6

    iput v6, p0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    .line 653
    iput v7, p0, Lcom/android/launcher3/common/base/view/PagedView;->mNextPage:I

    .line 654
    iget v6, p0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    iget v7, p0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v7}, Lcom/android/launcher3/common/base/view/PagedView;->getScrollForPage(I)I

    move-result v7

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getPageCount()I

    move-result v8

    invoke-virtual {p0, v6, v7, v8}, Lcom/android/launcher3/common/base/view/PagedView;->notifyPageChange(III)V

    .line 655
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->notifyPageSwitchListener()V

    .line 657
    iget-boolean v6, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDeferLoadAssociatedPagesUntilScrollCompletes:Z

    if-eqz v6, :cond_4

    iget v6, p0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    if-eq v6, v0, :cond_4

    .line 658
    iget v6, p0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v6}, Lcom/android/launcher3/common/base/view/PagedView;->loadAssociatedPages(I)V

    .line 659
    iput-boolean v5, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDeferLoadAssociatedPagesUntilScrollCompletes:Z

    .line 664
    :cond_4
    iget v6, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTouchState:I

    if-nez v6, :cond_5

    .line 665
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->pageEndMoving()V

    .line 666
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getScrollX()I

    move-result v6

    iget v7, p0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v7}, Lcom/android/launcher3/common/base/view/PagedView;->getScrollForPage(I)I

    move-result v7

    if-eq v6, v7, :cond_5

    .line 667
    new-instance v1, Lcom/android/launcher3/common/base/view/PagedView$1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/common/base/view/PagedView$1;-><init>(Lcom/android/launcher3/common/base/view/PagedView;)V

    .line 673
    .local v1, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->post(Ljava/lang/Runnable;)Z

    .line 677
    .end local v1    # "r":Ljava/lang/Runnable;
    :cond_5
    invoke-direct {p0, v5}, Lcom/android/launcher3/common/base/view/PagedView;->onPostReorderingAnimationCompleted(Z)V

    .line 678
    sget-object v5, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    invoke-virtual {v5}, Lcom/android/launcher3/util/Talk;->isAccessibilityEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    iget v5, p0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    if-eq v0, v5, :cond_2

    .line 680
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getCurrentPageDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/launcher3/common/base/view/PagedView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_0

    .end local v0    # "oldPage":I
    :cond_6
    move v4, v5

    .line 684
    goto :goto_0
.end method

.method protected determineScrollingStart(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1547
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/common/base/view/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;F)Z

    move-result v0

    return v0
.end method

.method protected determineScrollingStart(Landroid/view/MotionEvent;F)Z
    .locals 10
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "touchSlopScale"    # F

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1556
    iget v8, p0, Lcom/android/launcher3/common/base/view/PagedView;->mActivePointerId:I

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 1557
    .local v0, "pointerIndex":I
    const/4 v8, -0x1

    if-ne v0, v8, :cond_1

    .line 1588
    :cond_0
    :goto_0
    return v6

    .line 1562
    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 1563
    .local v2, "x":F
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    .line 1564
    .local v5, "y":F
    float-to-int v8, v2

    float-to-int v9, v5

    invoke-direct {p0, v8, v9}, Lcom/android/launcher3/common/base/view/PagedView;->isTouchPointInViewportWithBuffer(II)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1568
    iget v8, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDownMotionX:F

    sub-float v8, v2, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    float-to-int v3, v8

    .line 1570
    .local v3, "xDiff":I
    iget v8, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTouchSlop:I

    int-to-float v8, v8

    mul-float/2addr v8, p2

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 1571
    .local v1, "touchSlop":I
    if-le v3, v1, :cond_2

    move v4, v7

    .line 1573
    .local v4, "xMoved":Z
    :goto_1
    if-eqz v4, :cond_3

    invoke-direct {p0}, Lcom/android/launcher3/common/base/view/PagedView;->isHorizontalScroll()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1575
    iput v7, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTouchState:I

    .line 1576
    iget v6, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTotalMotionX:F

    iget v8, p0, Lcom/android/launcher3/common/base/view/PagedView;->mLastMotionX:F

    sub-float/2addr v8, v2

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    add-float/2addr v6, v8

    iput v6, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTotalMotionX:F

    .line 1577
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->onScrollInteractionBegin()V

    .line 1578
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->pageBeginMoving()V

    .line 1579
    invoke-direct {p0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->scrollPageOnMoveEvent(Landroid/view/MotionEvent;)Z

    .line 1580
    iput v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mLastMotionX:F

    move v6, v7

    .line 1582
    goto :goto_0

    .end local v4    # "xMoved":Z
    :cond_2
    move v4, v6

    .line 1571
    goto :goto_1

    .line 1584
    .restart local v4    # "xMoved":Z
    :cond_3
    iget-object v7, p0, Lcom/android/launcher3/common/base/view/PagedView;->mScrollDeterminator:Lcom/android/launcher3/util/event/ScrollDeterminator;

    if-eqz v7, :cond_0

    .line 1585
    iget-object v7, p0, Lcom/android/launcher3/common/base/view/PagedView;->mScrollDeterminator:Lcom/android/launcher3/util/event/ScrollDeterminator;

    invoke-virtual {v7}, Lcom/android/launcher3/util/event/ScrollDeterminator;->setSlopCompensation()V

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 17
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1138
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->getChildCount()I

    move-result v8

    .line 1139
    .local v8, "pageCount":I
    if-lez v8, :cond_f

    .line 1140
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->getViewportWidth()I

    move-result v12

    div-int/lit8 v3, v12, 0x2

    .line 1141
    .local v3, "halfScreenSize":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->getScrollX()I

    move-result v12

    add-int v10, v12, v3

    .line 1143
    .local v10, "screenCenter":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/common/base/view/PagedView;->mTempVisiblePagesRange:[I

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/launcher3/common/base/view/PagedView;->getVisiblePages([I)V

    .line 1144
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/common/base/view/PagedView;->mTempVisiblePagesRange:[I

    const/4 v13, 0x0

    aget v7, v12, v13

    .line 1145
    .local v7, "leftScreen":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/common/base/view/PagedView;->mTempVisiblePagesRange:[I

    const/4 v13, 0x1

    aget v9, v12, v13

    .line 1146
    .local v9, "rightScreen":I
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/launcher3/common/base/view/PagedView;->mIsShowingHintPages:Z

    if-eqz v12, :cond_6

    .line 1147
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->getHintCenterPage()I

    move-result v2

    .line 1148
    .local v2, "currentPage":I
    add-int/lit8 v12, v2, -0x1

    const/4 v13, 0x0

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1149
    add-int/lit8 v12, v2, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->getChildCount()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 1161
    .end local v2    # "currentPage":I
    :cond_0
    :goto_0
    if-gez v7, :cond_1

    .line 1162
    const/4 v7, 0x0

    .line 1165
    :cond_1
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/launcher3/common/base/view/PagedView;->mLastScreenCenter:I

    if-ne v10, v12, :cond_2

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/launcher3/common/base/view/PagedView;->mForceScreenScrolled:Z

    if-eqz v12, :cond_3

    .line 1168
    :cond_2
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/launcher3/common/base/view/PagedView;->mForceScreenScrolled:Z

    .line 1169
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v7, v9}, Lcom/android/launcher3/common/base/view/PagedView;->screenScrolled(III)V

    .line 1170
    move-object/from16 v0, p0

    iput v10, v0, Lcom/android/launcher3/common/base/view/PagedView;->mLastScreenCenter:I

    .line 1173
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/common/base/view/PagedView;->mScroller:Lcom/android/launcher3/common/base/PageScroller;

    invoke-virtual {v12, v7, v9}, Lcom/android/launcher3/common/base/PageScroller;->isUpdatedScreenIndex(II)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 1174
    new-instance v12, Lcom/android/launcher3/util/DvfsUtil;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/android/launcher3/util/DvfsUtil;-><init>(Landroid/content/Context;)V

    invoke-virtual {v12}, Lcom/android/launcher3/util/DvfsUtil;->boostOneFrame()V

    .line 1177
    :cond_4
    const/4 v12, -0x1

    if-eq v7, v12, :cond_f

    const/4 v12, -0x1

    if-eq v9, v12, :cond_f

    .line 1178
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->getDrawingTime()J

    move-result-wide v4

    .line 1180
    .local v4, "drawingTime":J
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1181
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->getScrollX()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->getScrollY()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->getScrollX()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->getRight()I

    move-result v15

    add-int/2addr v14, v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->getLeft()I

    move-result v15

    sub-int/2addr v14, v15

    .line 1182
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->getScrollY()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->getBottom()I

    move-result v16

    add-int v15, v15, v16

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->getTop()I

    move-result v16

    sub-int v15, v15, v16

    .line 1181
    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13, v14, v15}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 1185
    add-int/lit8 v6, v8, -0x1

    .local v6, "i":I
    :goto_1
    if-ltz v6, :cond_d

    .line 1186
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/launcher3/common/base/view/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v11

    .line 1187
    .local v11, "v":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/common/base/view/PagedView;->mDragView:Landroid/view/View;

    if-ne v11, v12, :cond_8

    .line 1185
    :cond_5
    :goto_2
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 1151
    .end local v4    # "drawingTime":J
    .end local v6    # "i":I
    .end local v11    # "v":Landroid/view/View;
    :cond_6
    if-ne v7, v9, :cond_0

    .line 1152
    add-int/lit8 v12, v8, -0x1

    if-ge v9, v12, :cond_7

    .line 1153
    add-int/lit8 v9, v9, 0x1

    .line 1155
    :cond_7
    if-lez v7, :cond_0

    .line 1156
    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_0

    .line 1188
    .restart local v4    # "drawingTime":J
    .restart local v6    # "i":I
    .restart local v11    # "v":Landroid/view/View;
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/launcher3/common/base/view/PagedView;->mForceDrawAllChildrenNextFrame:Z

    if-nez v12, :cond_9

    if-gt v7, v6, :cond_c

    if-gt v6, v9, :cond_c

    .line 1189
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/launcher3/common/base/view/PagedView;->shouldDrawChild(Landroid/view/View;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 1190
    :cond_9
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportTransitionEffects()Z

    move-result v12

    if-eqz v12, :cond_a

    .line 1191
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/launcher3/common/base/view/PagedView;->mIsPageMoving:Z

    if-eqz v12, :cond_b

    .line 1192
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v6, v10}, Lcom/android/launcher3/common/base/view/PagedView;->updatePageTransform(Landroid/view/View;II)V

    .line 1197
    :cond_a
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v11, v4, v5}, Lcom/android/launcher3/common/base/view/PagedView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_2

    .line 1194
    :cond_b
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/launcher3/common/base/view/PagedView;->resetTransitionEffect(Landroid/view/View;)V

    goto :goto_3

    .line 1199
    :cond_c
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportTransitionEffects()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 1200
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/launcher3/common/base/view/PagedView;->resetTransitionEffectForInvisiblePage(Landroid/view/View;)V

    goto :goto_2

    .line 1205
    .end local v11    # "v":Landroid/view/View;
    :cond_d
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/common/base/view/PagedView;->mDragView:Landroid/view/View;

    if-eqz v12, :cond_e

    .line 1206
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/common/base/view/PagedView;->mDragView:Landroid/view/View;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v12, v4, v5}, Lcom/android/launcher3/common/base/view/PagedView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 1209
    :cond_e
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/launcher3/common/base/view/PagedView;->mForceDrawAllChildrenNextFrame:Z

    .line 1210
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 1213
    .end local v3    # "halfScreenSize":I
    .end local v4    # "drawingTime":J
    .end local v6    # "i":I
    .end local v7    # "leftScreen":I
    .end local v9    # "rightScreen":I
    .end local v10    # "screenCenter":I
    :cond_f
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1393
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 4
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I

    .prologue
    const/16 v3, 0x42

    const/16 v2, 0x11

    const/4 v0, 0x1

    .line 1343
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1365
    :goto_0
    return v0

    .line 1347
    :cond_0
    sget-boolean v1, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v1, :cond_1

    .line 1348
    if-ne p2, v2, :cond_2

    .line 1349
    const/16 p2, 0x42

    .line 1354
    :cond_1
    :goto_1
    if-ne p2, v2, :cond_3

    .line 1355
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getCurrentPage()I

    move-result v1

    if-ltz v1, :cond_4

    .line 1356
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getCurrentPage()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->snapToPage(I)V

    goto :goto_0

    .line 1350
    :cond_2
    if-ne p2, v3, :cond_1

    .line 1351
    const/16 p2, 0x11

    goto :goto_1

    .line 1359
    :cond_3
    if-ne p2, v3, :cond_4

    .line 1360
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getCurrentPage()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getPageCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_4

    .line 1361
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getCurrentPage()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->snapToPage(I)V

    goto :goto_0

    .line 1365
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dragPullingPages(F)V
    .locals 5
    .param p1, "touchX"    # F

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2775
    iget-boolean v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mIsShowingHintPages:Z

    if-eqz v1, :cond_a

    .line 2776
    iget v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mScrollState:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_5

    .line 2777
    iget v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTranslateAllPages:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mContinuallyScroll:Z

    if-nez v1, :cond_4

    invoke-direct {p0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->isPullingPageTouchArea(F)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2778
    iput v3, p0, Lcom/android/launcher3/common/base/view/PagedView;->mScrollState:I

    .line 2788
    :cond_0
    :goto_0
    iget v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mScrollState:I

    if-nez v1, :cond_9

    .line 2789
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mScrollState:I

    .line 2790
    invoke-direct {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getHintCenterPage()I

    move-result v0

    .line 2792
    .local v0, "currentPage":I
    sget-boolean v1, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-nez v1, :cond_6

    iget v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mHintPageRightZone:I

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-lez v1, :cond_6

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_6

    .line 2793
    iget v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTranslatePagesOffset:F

    neg-float v1, v1

    iput v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTranslateAllPages:F

    .line 2803
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPullingPagesAnim:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPullingPagesAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2804
    iget-object v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPullingPagesAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 2806
    :cond_2
    invoke-direct {p0}, Lcom/android/launcher3/common/base/view/PagedView;->animatePullingPages()V

    .line 2814
    .end local v0    # "currentPage":I
    :cond_3
    :goto_2
    return-void

    .line 2779
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->isPullingPageTouchArea(F)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2780
    iput-boolean v3, p0, Lcom/android/launcher3/common/base/view/PagedView;->mContinuallyScroll:Z

    goto :goto_0

    .line 2782
    :cond_5
    iget v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mScrollState:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 2783
    invoke-direct {p0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->isPullingPageTouchArea(F)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2784
    iput v4, p0, Lcom/android/launcher3/common/base/view/PagedView;->mScrollState:I

    goto :goto_0

    .line 2794
    .restart local v0    # "currentPage":I
    :cond_6
    sget-boolean v1, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-nez v1, :cond_7

    iget v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mHintPageLeftZone:I

    int-to-float v1, v1

    cmpg-float v1, p1, v1

    if-gez v1, :cond_7

    if-lez v0, :cond_7

    .line 2795
    iget v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTranslatePagesOffset:F

    iput v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTranslateAllPages:F

    goto :goto_1

    .line 2796
    :cond_7
    sget-boolean v1, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v1, :cond_8

    iget v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mHintPageRightZone:I

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-lez v1, :cond_8

    if-lez v0, :cond_8

    .line 2797
    iget v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTranslatePagesOffset:F

    neg-float v1, v1

    iput v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTranslateAllPages:F

    goto :goto_1

    .line 2798
    :cond_8
    sget-boolean v1, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mHintPageLeftZone:I

    int-to-float v1, v1

    cmpg-float v1, p1, v1

    if-gez v1, :cond_1

    .line 2799
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    .line 2800
    iget v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTranslatePagesOffset:F

    iput v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTranslateAllPages:F

    goto :goto_1

    .line 2807
    .end local v0    # "currentPage":I
    :cond_9
    iget v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mScrollState:I

    if-ne v1, v4, :cond_3

    .line 2808
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mScrollState:I

    .line 2809
    invoke-direct {p0}, Lcom/android/launcher3/common/base/view/PagedView;->animatePullingPages()V

    goto :goto_2

    .line 2812
    :cond_a
    const-string v1, "PagedView"

    const-string v2, "Cannot drag to next page. It\'s abnormal state during dragging item."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method endReordering()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2336
    iget-boolean v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mReorderingStarted:Z

    if-nez v1, :cond_0

    .line 2337
    iput-boolean v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mIsReordering:Z

    .line 2338
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDragView:Landroid/view/View;

    .line 2364
    :goto_0
    return-void

    .line 2341
    :cond_0
    iput-boolean v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mReorderingStarted:Z

    .line 2345
    new-instance v0, Lcom/android/launcher3/common/base/view/PagedView$5;

    invoke-direct {v0, p0}, Lcom/android/launcher3/common/base/view/PagedView$5;-><init>(Lcom/android/launcher3/common/base/view/PagedView;)V

    .line 2352
    .local v0, "onCompleteRunnable":Ljava/lang/Runnable;
    new-instance v1, Lcom/android/launcher3/common/base/view/PagedView$6;

    invoke-direct {v1, p0, v0}, Lcom/android/launcher3/common/base/view/PagedView$6;-><init>(Lcom/android/launcher3/common/base/view/PagedView;Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPostReorderingPreZoomInRunnable:Ljava/lang/Runnable;

    .line 2358
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPostReorderingPreZoomInRemainingAnimationCount:I

    .line 2361
    iget-object v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0, v1, v2}, Lcom/android/launcher3/common/base/view/PagedView;->snapToPage(II)V

    .line 2363
    invoke-direct {p0}, Lcom/android/launcher3/common/base/view/PagedView;->animateDragViewToOriginalPosition()V

    goto :goto_0
.end method

.method public findIconView(Landroid/content/ComponentName;)Lcom/android/launcher3/common/view/IconView;
    .locals 10
    .param p1, "cn"    # Landroid/content/ComponentName;

    .prologue
    const/4 v7, 0x0

    .line 2646
    if-nez p1, :cond_0

    move-object v6, v7

    .line 2672
    :goto_0
    return-object v6

    .line 2650
    :cond_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getPageCount()I

    move-result v8

    if-ge v3, v8, :cond_5

    .line 2651
    invoke-virtual {p0, v3}, Lcom/android/launcher3/common/base/view/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 2652
    .local v0, "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v1

    .line 2654
    .local v1, "clc":Lcom/android/launcher3/common/base/view/CellLayoutChildren;
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_2
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v8

    if-ge v5, v8, :cond_4

    .line 2655
    invoke-virtual {v1, v5}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 2657
    .local v6, "v":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v8, :cond_1

    .line 2658
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 2659
    .local v4, "info":Lcom/android/launcher3/common/base/item/IconInfo;
    if-nez v4, :cond_2

    .line 2654
    .end local v4    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 2662
    .restart local v4    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_2
    iget-object v2, v4, Lcom/android/launcher3/common/base/item/IconInfo;->componentName:Landroid/content/ComponentName;

    .line 2663
    .local v2, "compareCn":Landroid/content/ComponentName;
    if-nez v2, :cond_3

    invoke-virtual {v4}, Lcom/android/launcher3/common/base/item/IconInfo;->getIntent()Landroid/content/Intent;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 2664
    invoke-virtual {v4}, Lcom/android/launcher3/common/base/item/IconInfo;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 2666
    :cond_3
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2667
    check-cast v6, Lcom/android/launcher3/common/view/IconView;

    goto :goto_0

    .line 2650
    .end local v2    # "compareCn":Landroid/content/ComponentName;
    .end local v4    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v6    # "v":Landroid/view/View;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v0    # "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    .end local v1    # "clc":Lcom/android/launcher3/common/base/view/CellLayoutChildren;
    .end local v5    # "j":I
    :cond_5
    move-object v6, v7

    .line 2672
    goto :goto_0
.end method

.method public findIconViews(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 10
    .param p1, "keyword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/view/IconView;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2620
    if-nez p1, :cond_1

    .line 2621
    const/4 v4, 0x0

    .line 2642
    :cond_0
    return-object v4

    .line 2624
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2626
    .local v4, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/view/IconView;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getPageCount()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 2627
    invoke-virtual {p0, v2}, Lcom/android/launcher3/common/base/view/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 2628
    .local v0, "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v1

    .line 2630
    .local v1, "clc":Lcom/android/launcher3/common/base/view/CellLayoutChildren;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v6

    if-ge v3, v6, :cond_3

    .line 2631
    invoke-virtual {v1, v3}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2633
    .local v5, "v":Landroid/view/View;
    instance-of v6, v5, Lcom/android/launcher3/common/view/IconView;

    if-eqz v6, :cond_2

    .line 2635
    const-string v6, "\\s"

    const-string v7, ""

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v6, v5

    check-cast v6, Lcom/android/launcher3/common/view/IconView;

    invoke-virtual {v6}, Lcom/android/launcher3/common/view/IconView;->getTitle()Ljava/lang/String;

    move-result-object v6

    const-string v8, "\\s"

    const-string v9, ""

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_2

    .line 2636
    check-cast v5, Lcom/android/launcher3/common/view/IconView;

    .end local v5    # "v":Landroid/view/View;
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2630
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2626
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public findPageIndicator()Lcom/android/launcher3/common/view/PageIndicator;
    .locals 3

    .prologue
    .line 327
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 328
    .local v1, "parent":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 329
    .local v0, "grandParent":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher3/common/view/LauncherRootView;

    if-eqz v2, :cond_0

    .line 330
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .end local v0    # "grandParent":Landroid/view/ViewGroup;
    check-cast v0, Landroid/view/ViewGroup;

    .line 332
    .restart local v0    # "grandParent":Landroid/view/ViewGroup;
    :cond_0
    iget v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageIndicatorViewId:I

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/view/PageIndicator;

    return-object v2
.end method

.method public focusableViewAvailable(Landroid/view/View;)V
    .locals 4
    .param p1, "focused"    # Landroid/view/View;

    .prologue
    .line 1405
    iget v3, p0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v3}, Lcom/android/launcher3/common/base/view/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 1406
    .local v0, "current":Landroid/view/View;
    move-object v2, p1

    .line 1408
    .local v2, "v":Landroid/view/View;
    :goto_0
    if-ne v2, v0, :cond_1

    .line 1409
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->focusableViewAvailable(Landroid/view/View;)V

    .line 1419
    :cond_0
    return-void

    .line 1412
    :cond_1
    if-eq v2, p0, :cond_0

    .line 1415
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 1416
    .local v1, "parent":Landroid/view/ViewParent;
    instance-of v3, v1, Landroid/view/View;

    if-eqz v3, :cond_0

    .line 1417
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .end local v2    # "v":Landroid/view/View;
    check-cast v2, Landroid/view/View;

    .restart local v2    # "v":Landroid/view/View;
    goto :goto_0
.end method

.method public forcelyAnimateReturnPages()V
    .locals 2

    .prologue
    .line 2838
    iget v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mScrollState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTranslateAllPages:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 2839
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPullingPagesAnim:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPullingPagesAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2840
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPullingPagesAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 2842
    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mScrollState:I

    .line 2843
    invoke-direct {p0}, Lcom/android/launcher3/common/base/view/PagedView;->animatePullingPages()V

    .line 2845
    :cond_1
    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->generateDefaultLayoutParams()Lcom/android/launcher3/common/base/view/PagedView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcom/android/launcher3/common/base/view/PagedView$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 716
    new-instance v0, Lcom/android/launcher3/common/base/view/PagedView$LayoutParams;

    invoke-direct {v0, v1, v1}, Lcom/android/launcher3/common/base/view/PagedView$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 78
    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/launcher3/common/base/view/PagedView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 721
    new-instance v0, Lcom/android/launcher3/common/base/view/PagedView$LayoutParams;

    invoke-direct {v0, p1}, Lcom/android/launcher3/common/base/view/PagedView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/launcher3/common/base/view/PagedView$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 711
    new-instance v0, Lcom/android/launcher3/common/base/view/PagedView$LayoutParams;

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/launcher3/common/base/view/PagedView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected getChildGap()I
    .locals 1

    .prologue
    .line 947
    const/4 v0, 0x0

    return v0
.end method

.method protected getChildOffset(I)I
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 1079
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 1081
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getViewportOffsetX()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public getCurrentPage()I
    .locals 1

    .prologue
    .line 440
    iget v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    return v0
.end method

.method protected getCurrentPageDescription()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2428
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090033

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 2429
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getNextPage()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getChildCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 2428
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCustomPageCount()I
    .locals 1

    .prologue
    .line 2916
    const/4 v0, 0x0

    return v0
.end method

.method public getLayoutTransitionOffsetForPage(I)I
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 1637
    iget-object v3, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageScrolls:[I

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageScrolls:[I

    array-length v3, v3

    if-ge p1, v3, :cond_0

    if-gez p1, :cond_1

    .line 1638
    :cond_0
    const/4 v3, 0x0

    .line 1645
    :goto_0
    return v3

    .line 1640
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1642
    .local v1, "child":Landroid/view/View;
    sget-boolean v3, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getPaddingRight()I

    move-result v2

    .line 1644
    .local v2, "scrollOffset":I
    :goto_1
    iget-object v3, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageScrolls:[I

    aget v3, v3, p1

    add-int/2addr v3, v2

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getViewportOffsetX()I

    move-result v4

    add-int v0, v3, v4

    .line 1645
    .local v0, "baselineX":I
    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v3

    int-to-float v4, v0

    sub-float/2addr v3, v4

    float-to-int v3, v3

    goto :goto_0

    .line 1642
    .end local v0    # "baselineX":I
    .end local v2    # "scrollOffset":I
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getPaddingLeft()I

    move-result v2

    goto :goto_1
.end method

.method public getMaxScrollX()I
    .locals 1

    .prologue
    .line 961
    iget v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mMaxScrollX:I

    return v0
.end method

.method protected getNearestHoverOverPageIndex()I
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, -0x1

    .line 1650
    iget-object v6, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDragView:Landroid/view/View;

    if-eqz v6, :cond_4

    .line 1651
    iget v6, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDownMotionX:F

    iget v7, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDownMotionY:F

    invoke-direct {p0, p0, v6, v7}, Lcom/android/launcher3/common/base/view/PagedView;->mapPointFromViewToParent(Landroid/view/View;FF)[F

    move-result-object v3

    .line 1652
    .local v3, "pt":[F
    const/4 v6, 0x0

    aget v1, v3, v6

    .line 1654
    .local v1, "downMotionXFromToParent":F
    iget-object v6, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getTranslationX()F

    move-result v6

    add-float/2addr v6, v1

    float-to-int v2, v6

    .line 1655
    .local v2, "dragX":I
    iget-object v6, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {p0, v6}, Lcom/android/launcher3/common/base/view/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 1657
    .local v0, "currentIndex":I
    if-gez v2, :cond_2

    .line 1658
    sget-boolean v6, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v6, :cond_1

    :goto_0
    add-int/2addr v0, v4

    .line 1664
    .end local v0    # "currentIndex":I
    .end local v1    # "downMotionXFromToParent":F
    .end local v2    # "dragX":I
    .end local v3    # "pt":[F
    :cond_0
    :goto_1
    return v0

    .restart local v0    # "currentIndex":I
    .restart local v1    # "downMotionXFromToParent":F
    .restart local v2    # "dragX":I
    .restart local v3    # "pt":[F
    :cond_1
    move v4, v5

    .line 1658
    goto :goto_0

    .line 1659
    :cond_2
    iget-object v6, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    if-le v2, v6, :cond_0

    .line 1660
    sget-boolean v6, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v6, :cond_3

    :goto_2
    add-int/2addr v0, v5

    goto :goto_1

    :cond_3
    move v5, v4

    goto :goto_2

    .end local v0    # "currentIndex":I
    .end local v1    # "downMotionXFromToParent":F
    .end local v2    # "dragX":I
    .end local v3    # "pt":[F
    :cond_4
    move v0, v5

    .line 1664
    goto :goto_1
.end method

.method public getNextPage()I
    .locals 2

    .prologue
    .line 447
    iget v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mNextPage:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mNextPage:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    goto :goto_0
.end method

.method public getNormalChildHeight()I
    .locals 1

    .prologue
    .line 730
    iget v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mNormalChildHeight:I

    return v0
.end method

.method public getPageAt(I)Landroid/view/View;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 455
    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getPageBackgroundAlpha()F
    .locals 1

    .prologue
    .line 2834
    iget v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageBackgroundAlpha:F

    return v0
.end method

.method protected getPageCacheSize()I
    .locals 1

    .prologue
    .line 2494
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getPageCount()I
    .locals 1

    .prologue
    .line 451
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getPageForView(Landroid/view/View;)I
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2205
    const/4 v2, -0x1

    .line 2206
    .local v2, "result":I
    if-eqz p1, :cond_1

    .line 2207
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 2208
    .local v3, "vp":Landroid/view/ViewParent;
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getChildCount()I

    move-result v0

    .line 2209
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 2210
    invoke-virtual {p0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    if-ne v3, v4, :cond_0

    .line 2215
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v3    # "vp":Landroid/view/ViewParent;
    :goto_1
    return v1

    .line 2209
    .restart local v0    # "count":I
    .restart local v1    # "i":I
    .restart local v3    # "vp":Landroid/view/ViewParent;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v3    # "vp":Landroid/view/ViewParent;
    :cond_1
    move v1, v2

    .line 2215
    goto :goto_1
.end method

.method public getPageIndicator()Lcom/android/launcher3/common/view/PageIndicator;
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageIndicator:Lcom/android/launcher3/common/view/PageIndicator;

    return-object v0
.end method

.method protected getPageIndicatorClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 340
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getPageIndicatorDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 336
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getCurrentPageDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPageIndicatorMarker(I)Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;
    .locals 1
    .param p1, "pageIndex"    # I

    .prologue
    .line 423
    new-instance v0, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;

    invoke-direct {v0}, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;-><init>()V

    return-object v0
.end method

.method public getPageNearestToCenterOfScreen()I
    .locals 12

    .prologue
    .line 2016
    const v7, 0x7fffffff

    .line 2017
    .local v7, "minDistanceFromScreenCenter":I
    const/4 v8, -0x1

    .line 2018
    .local v8, "minDistanceFromScreenCenterIndex":I
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getViewportOffsetX()I

    move-result v10

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getScrollX()I

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getViewportWidth()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    add-int v9, v10, v11

    .line 2019
    .local v9, "screenCenter":I
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getChildCount()I

    move-result v1

    .line 2020
    .local v1, "childCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v1, :cond_1

    .line 2021
    invoke-virtual {p0, v5}, Lcom/android/launcher3/common/base/view/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v6

    .line 2022
    .local v6, "layout":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 2023
    .local v2, "childWidth":I
    div-int/lit8 v4, v2, 0x2

    .line 2024
    .local v4, "halfChildWidth":I
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getViewportOffsetX()I

    move-result v10

    invoke-virtual {p0, v5}, Lcom/android/launcher3/common/base/view/PagedView;->getChildOffset(I)I

    move-result v11

    add-int/2addr v10, v11

    add-int v0, v10, v4

    .line 2025
    .local v0, "childCenter":I
    sub-int v10, v0, v9

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 2026
    .local v3, "distanceFromScreenCenter":I
    if-ge v3, v7, :cond_0

    .line 2027
    move v7, v3

    .line 2028
    move v8, v5

    .line 2020
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2031
    .end local v0    # "childCenter":I
    .end local v2    # "childWidth":I
    .end local v3    # "distanceFromScreenCenter":I
    .end local v4    # "halfChildWidth":I
    .end local v6    # "layout":Landroid/view/View;
    :cond_1
    return v8
.end method

.method public getRestorePage()I
    .locals 1

    .prologue
    .line 539
    iget v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mRestorePage:I

    return v0
.end method

.method public getScrollForPage(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1627
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageScrolls:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageScrolls:[I

    array-length v0, v0

    if-ge p1, v0, :cond_0

    if-gez p1, :cond_1

    .line 1628
    :cond_0
    const/4 v0, 0x0

    .line 1630
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageScrolls:[I

    aget v0, v0, p1

    goto :goto_0
.end method

.method protected getScrollProgress(ILandroid/view/View;I)F
    .locals 9
    .param p1, "screenCenter"    # I
    .param p2, "v"    # Landroid/view/View;
    .param p3, "page"    # I

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    .line 1602
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getViewportWidth()I

    move-result v6

    div-int/lit8 v3, v6, 0x2

    .line 1604
    .local v3, "halfScreenSize":I
    invoke-virtual {p0, p3}, Lcom/android/launcher3/common/base/view/PagedView;->getScrollForPage(I)I

    move-result v6

    add-int/2addr v6, v3

    sub-int v2, p1, v6

    .line 1605
    .local v2, "delta":I
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getChildCount()I

    move-result v1

    .line 1609
    .local v1, "count":I
    add-int/lit8 v0, p3, 0x1

    .line 1610
    .local v0, "adjacentPage":I
    if-gez v2, :cond_0

    sget-boolean v6, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v6, :cond_1

    :cond_0
    if-lez v2, :cond_2

    sget-boolean v6, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v6, :cond_2

    .line 1611
    :cond_1
    add-int/lit8 v0, p3, -0x1

    .line 1614
    :cond_2
    if-ltz v0, :cond_3

    add-int/lit8 v6, v1, -0x1

    if-le v0, v6, :cond_4

    .line 1615
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    iget v7, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageSpacing:I

    add-int v5, v6, v7

    .line 1620
    .local v5, "totalDistance":I
    :goto_0
    int-to-float v6, v2

    int-to-float v7, v5

    mul-float/2addr v7, v8

    div-float v4, v6, v7

    .line 1621
    .local v4, "scrollProgress":F
    invoke-static {v4, v8}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 1622
    const/high16 v6, -0x40800000    # -1.0f

    invoke-static {v4, v6}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 1623
    return v4

    .line 1617
    .end local v4    # "scrollProgress":F
    .end local v5    # "totalDistance":I
    :cond_4
    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/base/view/PagedView;->getScrollForPage(I)I

    move-result v6

    invoke-virtual {p0, p3}, Lcom/android/launcher3/common/base/view/PagedView;->getScrollForPage(I)I

    move-result v7

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .restart local v5    # "totalDistance":I
    goto :goto_0
.end method

.method public getSupportCustomPageCount()I
    .locals 1

    .prologue
    .line 2920
    const/4 v0, 0x0

    return v0
.end method

.method public getViewportHeight()I
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mViewport:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    return v0
.end method

.method public getViewportOffsetX()I
    .locals 2

    .prologue
    .line 411
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getViewportWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getViewportOffsetY()I
    .locals 2

    .prologue
    .line 415
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getViewportHeight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getViewportWidth()I
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mViewport:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    return v0
.end method

.method protected getVisiblePages([I)V
    .locals 11
    .param p1, "range"    # [I

    .prologue
    const/4 v10, 0x1

    const/4 v9, -0x1

    const/4 v8, 0x0

    .line 1085
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getChildCount()I

    move-result v4

    .line 1086
    .local v4, "pageCount":I
    sget-object v6, Lcom/android/launcher3/common/base/view/PagedView;->sTmpIntPoint:[I

    sget-object v7, Lcom/android/launcher3/common/base/view/PagedView;->sTmpIntPoint:[I

    aput v8, v7, v10

    aput v8, v6, v8

    .line 1088
    aput v9, p1, v8

    .line 1089
    aput v9, p1, v10

    .line 1091
    if-lez v4, :cond_4

    .line 1092
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getViewportWidth()I

    move-result v5

    .line 1093
    .local v5, "viewportWidth":I
    const/4 v1, 0x0

    .line 1095
    .local v1, "curScreen":I
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getChildCount()I

    move-result v0

    .line 1096
    .local v0, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 1097
    invoke-virtual {p0, v3}, Lcom/android/launcher3/common/base/view/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    .line 1099
    .local v2, "currPage":Landroid/view/View;
    sget-object v6, Lcom/android/launcher3/common/base/view/PagedView;->sTmpIntPoint:[I

    aput v8, v6, v8

    .line 1100
    sget-object v6, Lcom/android/launcher3/common/base/view/PagedView;->sTmpIntPoint:[I

    invoke-static {v2, p0, v6, v8}, Lcom/android/launcher3/Utilities;->getDescendantCoordRelativeToParent(Landroid/view/View;Landroid/view/View;[IZ)F

    .line 1101
    sget-object v6, Lcom/android/launcher3/common/base/view/PagedView;->sTmpIntPoint:[I

    aget v6, v6, v8

    if-le v6, v5, :cond_1

    .line 1102
    aget v6, p1, v8

    if-ne v6, v9, :cond_2

    .line 1096
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1109
    :cond_1
    sget-object v6, Lcom/android/launcher3/common/base/view/PagedView;->sTmpIntPoint:[I

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    aput v7, v6, v8

    .line 1110
    sget-object v6, Lcom/android/launcher3/common/base/view/PagedView;->sTmpIntPoint:[I

    invoke-static {v2, p0, v6, v8}, Lcom/android/launcher3/Utilities;->getDescendantCoordRelativeToParent(Landroid/view/View;Landroid/view/View;[IZ)F

    .line 1111
    sget-object v6, Lcom/android/launcher3/common/base/view/PagedView;->sTmpIntPoint:[I

    aget v6, v6, v8

    if-gez v6, :cond_3

    .line 1112
    aget v6, p1, v8

    if-eq v6, v9, :cond_0

    .line 1124
    .end local v2    # "currPage":Landroid/view/View;
    :cond_2
    aput v1, p1, v10

    .line 1129
    .end local v0    # "count":I
    .end local v1    # "curScreen":I
    .end local v3    # "i":I
    .end local v5    # "viewportWidth":I
    :goto_2
    return-void

    .line 1118
    .restart local v0    # "count":I
    .restart local v1    # "curScreen":I
    .restart local v2    # "currPage":Landroid/view/View;
    .restart local v3    # "i":I
    .restart local v5    # "viewportWidth":I
    :cond_3
    move v1, v3

    .line 1119
    aget v6, p1, v8

    if-gez v6, :cond_0

    .line 1120
    aput v1, p1, v8

    goto :goto_1

    .line 1126
    .end local v0    # "count":I
    .end local v1    # "curScreen":I
    .end local v2    # "currPage":Landroid/view/View;
    .end local v3    # "i":I
    .end local v5    # "viewportWidth":I
    :cond_4
    aput v9, p1, v8

    .line 1127
    aput v9, p1, v10

    goto :goto_2
.end method

.method public hideHintPages()V
    .locals 1

    .prologue
    .line 2698
    iget-boolean v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mIsShowingHintPages:Z

    if-eqz v0, :cond_0

    .line 2699
    invoke-direct {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getHintCenterPage()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/common/base/view/PagedView;->hideHintPages(I)V

    .line 2701
    :cond_0
    return-void
.end method

.method protected indexToPage(I)I
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 459
    return p1
.end method

.method protected init()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 274
    new-instance v2, Lcom/android/launcher3/common/base/PageScroller;

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/launcher3/common/base/PageScroller;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mScroller:Lcom/android/launcher3/common/base/PageScroller;

    .line 275
    new-instance v2, Lcom/android/launcher3/common/base/view/PagedView$ScrollInterpolator;

    invoke-direct {v2}, Lcom/android/launcher3/common/base/view/PagedView$ScrollInterpolator;-><init>()V

    invoke-virtual {p0, v2}, Lcom/android/launcher3/common/base/view/PagedView;->setDefaultInterpolator(Landroid/view/animation/Interpolator;)V

    .line 276
    iput v5, p0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    .line 277
    iput-boolean v4, p0, Lcom/android/launcher3/common/base/view/PagedView;->mCenterPagesVertically:Z

    .line 278
    iput-boolean v4, p0, Lcom/android/launcher3/common/base/view/PagedView;->mEnablePageIndicatorAnim:Z

    .line 280
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 281
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTouchSlop:I

    .line 283
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mMaximumVelocity:I

    .line 284
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->density:F

    .line 286
    .local v1, "density":F
    const/high16 v2, 0x43fa0000    # 500.0f

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mFlingThresholdVelocity:I

    .line 287
    const/high16 v2, 0x437a0000    # 250.0f

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mMinFlingVelocity:I

    .line 288
    const v2, 0x44bb8000    # 1500.0f

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mMinSnapVelocity:I

    .line 289
    invoke-virtual {p0, p0}, Lcom/android/launcher3/common/base/view/PagedView;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 290
    invoke-virtual {p0, v5}, Lcom/android/launcher3/common/base/view/PagedView;->setWillNotDraw(Z)V

    .line 291
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    .line 292
    iget-object v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 294
    iput-boolean v4, p0, Lcom/android/launcher3/common/base/view/PagedView;->mIsResumed:Z

    .line 295
    return-void
.end method

.method protected invalidatePageData()V
    .locals 2

    .prologue
    .line 2438
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->invalidatePageData(IZ)V

    .line 2439
    return-void
.end method

.method protected invalidatePageData(I)V
    .locals 1
    .param p1, "page"    # I

    .prologue
    .line 2442
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/common/base/view/PagedView;->invalidatePageData(IZ)V

    .line 2443
    return-void
.end method

.method protected isContentsRefreshable()Z
    .locals 1

    .prologue
    .line 2476
    const/4 v0, 0x0

    return v0
.end method

.method protected isDataReady()Z
    .locals 1

    .prologue
    .line 2480
    iget-boolean v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mIsDataReady:Z

    return v0
.end method

.method public isPageMoving()Z
    .locals 1

    .prologue
    .line 569
    iget-boolean v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mIsPageMoving:Z

    return v0
.end method

.method isReordering(Z)Z
    .locals 3
    .param p1, "testTouchState"    # Z

    .prologue
    .line 2326
    iget-boolean v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mIsReordering:Z

    .line 2327
    .local v0, "state":Z
    if-eqz p1, :cond_0

    .line 2328
    iget v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTouchState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    :goto_0
    and-int/2addr v0, v1

    .line 2330
    :cond_0
    return v0

    .line 2328
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isResumed()Z
    .locals 1

    .prologue
    .line 2985
    iget-boolean v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mIsResumed:Z

    return v0
.end method

.method protected isScrollableToZeroPage()Z
    .locals 1

    .prologue
    .line 2177
    const/4 v0, 0x0

    return v0
.end method

.method public isScrolling()Z
    .locals 1

    .prologue
    .line 2830
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mScroller:Lcom/android/launcher3/common/base/PageScroller;

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/PageScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowingHintPages()Z
    .locals 1

    .prologue
    .line 2734
    iget-boolean v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mIsShowingHintPages:Z

    return v0
.end method

.method public loadAssociatedPages(I)V
    .locals 1
    .param p1, "page"    # I

    .prologue
    .line 2502
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/common/base/view/PagedView;->loadAssociatedPages(IZ)V

    .line 2503
    return-void
.end method

.method protected notifyPageChange(III)V
    .locals 1
    .param p1, "page"    # I
    .param p2, "scrollX"    # I
    .param p3, "pageCount"    # I

    .prologue
    .line 2910
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageScrollListener:Lcom/android/launcher3/common/base/view/PagedView$PageScrollListener;

    if-eqz v0, :cond_0

    .line 2911
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageScrollListener:Lcom/android/launcher3/common/base/view/PagedView$PageScrollListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/launcher3/common/base/view/PagedView$PageScrollListener;->onPageChange(III)V

    .line 2913
    :cond_0
    return-void
.end method

.method protected notifyPageScroll(IIIII)V
    .locals 6
    .param p1, "page"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "scrollX"    # I
    .param p5, "pageCount"    # I

    .prologue
    .line 2904
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageScrollListener:Lcom/android/launcher3/common/base/view/PagedView$PageScrollListener;

    if-eqz v0, :cond_0

    .line 2905
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageScrollListener:Lcom/android/launcher3/common/base/view/PagedView$PageScrollListener;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/launcher3/common/base/view/PagedView$PageScrollListener;->onPageScroll(IIIII)V

    .line 2907
    :cond_0
    return-void
.end method

.method protected notifyPageSwitchListener()V
    .locals 3

    .prologue
    .line 547
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageSwitchListener:Lcom/android/launcher3/common/base/view/PagedView$PageSwitchListener;

    if-eqz v0, :cond_0

    .line 548
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageSwitchListener:Lcom/android/launcher3/common/base/view/PagedView$PageSwitchListener;

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getNextPage()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getNextPage()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/launcher3/common/base/view/PagedView$PageSwitchListener;->onPageSwitch(Landroid/view/View;I)V

    .line 551
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/common/base/view/PagedView;->updatePageIndicator()V

    .line 552
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 7

    .prologue
    .line 303
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 305
    iget-object v4, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageIndicator:Lcom/android/launcher3/common/view/PageIndicator;

    if-nez v4, :cond_2

    iget v4, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageIndicatorViewId:I

    const/4 v5, -0x1

    if-le v4, v5, :cond_2

    .line 306
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->findPageIndicator()Lcom/android/launcher3/common/view/PageIndicator;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageIndicator:Lcom/android/launcher3/common/view/PageIndicator;

    .line 307
    iget-object v4, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageIndicator:Lcom/android/launcher3/common/view/PageIndicator;

    invoke-virtual {v4}, Lcom/android/launcher3/common/view/PageIndicator;->removeAllMarkers()V

    .line 309
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 310
    .local v3, "markers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getChildCount()I

    move-result v4

    iget-object v5, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageIndicator:Lcom/android/launcher3/common/view/PageIndicator;

    .line 311
    invoke-virtual {v5}, Lcom/android/launcher3/common/view/PageIndicator;->getMaxVisibleSize()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getSupportCustomPageCount()I

    move-result v6

    sub-int/2addr v5, v6

    .line 310
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 312
    .local v1, "indicatorCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 313
    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/base/view/PagedView;->getPageIndicatorMarker(I)Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 312
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 316
    :cond_0
    iget-object v4, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageIndicator:Lcom/android/launcher3/common/view/PageIndicator;

    iget-boolean v5, p0, Lcom/android/launcher3/common/base/view/PagedView;->mEnablePageIndicatorAnim:Z

    invoke-virtual {v4, v3, v5, p0}, Lcom/android/launcher3/common/view/PageIndicator;->addMarkers(Ljava/util/ArrayList;ZLcom/android/launcher3/common/base/view/PagedView;)V

    .line 318
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getPageIndicatorClickListener()Landroid/view/View$OnClickListener;

    move-result-object v2

    .line 319
    .local v2, "listener":Landroid/view/View$OnClickListener;
    if-eqz v2, :cond_1

    .line 320
    iget-object v4, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageIndicator:Lcom/android/launcher3/common/view/PageIndicator;

    invoke-virtual {v4, v2}, Lcom/android/launcher3/common/view/PageIndicator;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 322
    :cond_1
    iget-object v4, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageIndicator:Lcom/android/launcher3/common/view/PageIndicator;

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getPageIndicatorDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/launcher3/common/view/PageIndicator;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 324
    .end local v0    # "i":I
    .end local v1    # "indicatorCount":I
    .end local v2    # "listener":Landroid/view/View$OnClickListener;
    .end local v3    # "markers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;>;"
    :cond_2
    return-void
.end method

.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 4
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 979
    iget-object v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageIndicator:Lcom/android/launcher3/common/view/PageIndicator;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->isReordering(Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 980
    invoke-virtual {p0, p2}, Lcom/android/launcher3/common/base/view/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 981
    .local v0, "pageIndex":I
    iget-object v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageIndicator:Lcom/android/launcher3/common/view/PageIndicator;

    .line 982
    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/base/view/PagedView;->getPageIndicatorMarker(I)Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/launcher3/common/base/view/PagedView;->mEnablePageIndicatorAnim:Z

    .line 981
    invoke-virtual {v1, v0, v2, v3, p0}, Lcom/android/launcher3/common/view/PageIndicator;->addMarker(ILcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;ZLcom/android/launcher3/common/base/view/PagedView;)V

    .line 988
    .end local v0    # "pageIndex":I
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mForceScreenScrolled:Z

    .line 989
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->invalidate()V

    .line 990
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 994
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mForceScreenScrolled:Z

    .line 995
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->invalidate()V

    .line 996
    return-void
.end method

.method protected onConfigurationChangedIfNeeded()V
    .locals 2

    .prologue
    .line 2932
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageIndicator:Lcom/android/launcher3/common/view/PageIndicator;

    if-eqz v0, :cond_0

    .line 2933
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageIndicator:Lcom/android/launcher3/common/view/PageIndicator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/view/PageIndicator;->offsetWindowCenterTo(Z)V

    .line 2935
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 345
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 347
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageIndicator:Lcom/android/launcher3/common/view/PageIndicator;

    .line 348
    return-void
.end method

.method public onEndReordering()V
    .locals 1

    .prologue
    .line 2298
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mIsReordering:Z

    .line 2299
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDragView:Landroid/view/View;

    .line 2300
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v6, 0x9

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 1944
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v4

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_0

    .line 1945
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 1970
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    :goto_0
    return v3

    .line 1950
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v4

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_4

    .line 1951
    const/4 v2, 0x0

    .line 1952
    .local v2, "vscroll":F
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    .line 1957
    .local v0, "hscroll":F
    :goto_1
    cmpl-float v4, v0, v5

    if-nez v4, :cond_1

    cmpl-float v4, v2, v5

    if-eqz v4, :cond_0

    .line 1958
    :cond_1
    sget-boolean v4, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v4, :cond_5

    cmpg-float v4, v0, v5

    if-ltz v4, :cond_2

    cmpg-float v4, v2, v5

    if-gez v4, :cond_3

    :cond_2
    move v1, v3

    .line 1960
    .local v1, "isForwardScroll":Z
    :cond_3
    :goto_2
    if-eqz v1, :cond_7

    .line 1961
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->scrollRight()V

    goto :goto_0

    .line 1954
    .end local v0    # "hscroll":F
    .end local v1    # "isForwardScroll":Z
    .end local v2    # "vscroll":F
    :cond_4
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v4

    neg-float v2, v4

    .line 1955
    .restart local v2    # "vscroll":F
    const/16 v4, 0xa

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    .restart local v0    # "hscroll":F
    goto :goto_1

    .line 1958
    :cond_5
    cmpl-float v4, v0, v5

    if-gtz v4, :cond_6

    cmpl-float v4, v2, v5

    if-lez v4, :cond_3

    :cond_6
    move v1, v3

    goto :goto_2

    .line 1963
    .restart local v1    # "isForwardScroll":Z
    :cond_7
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->scrollLeft()V

    goto :goto_0

    .line 1945
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 2434
    const/4 v0, 0x1

    return v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    const/4 v0, 0x1

    .line 2399
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2400
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getPageCount()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 2401
    return-void

    .line 2400
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2372
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2373
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getPageCount()I

    move-result v2

    if-le v2, v0, :cond_2

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 2374
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getPageCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 2375
    const/16 v0, 0x1000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2377
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getCurrentPage()I

    move-result v0

    if-lez v0, :cond_1

    .line 2378
    const/16 v0, 0x2000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2380
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 2385
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    .line 2386
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_LONG_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->removeAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z

    .line 2387
    return-void

    :cond_2
    move v0, v1

    .line 2373
    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1454
    invoke-direct {p0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V

    .line 1457
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getChildCount()I

    move-result v8

    if-gtz v8, :cond_1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    .line 1543
    :cond_0
    :goto_0
    return v6

    .line 1464
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1465
    .local v0, "action":I
    const/4 v8, 0x2

    if-ne v0, v8, :cond_2

    iget v8, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTouchState:I

    if-eq v8, v6, :cond_0

    .line 1470
    :cond_2
    and-int/lit16 v8, v0, 0xff

    packed-switch v8, :pswitch_data_0

    .line 1543
    :cond_3
    :goto_1
    :pswitch_0
    iget v8, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTouchState:I

    if-nez v8, :cond_0

    move v6, v7

    goto :goto_0

    .line 1476
    :pswitch_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "PagedView.onInterceptTouchEvent : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/launcher3/common/base/view/PagedView;->mActivePointerId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1477
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1478
    iget v8, p0, Lcom/android/launcher3/common/base/view/PagedView;->mActivePointerId:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_3

    .line 1479
    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;)Z

    goto :goto_1

    .line 1490
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 1491
    .local v3, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 1493
    .local v5, "y":F
    iput v3, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDownMotionX:F

    .line 1494
    iput v5, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDownMotionY:F

    .line 1495
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getScrollX()I

    move-result v8

    int-to-float v8, v8

    iput v8, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDownScrollX:F

    .line 1496
    iput v3, p0, Lcom/android/launcher3/common/base/view/PagedView;->mLastMotionX:F

    .line 1497
    iput v5, p0, Lcom/android/launcher3/common/base/view/PagedView;->mLastMotionY:F

    .line 1498
    invoke-direct {p0, p0, v3, v5}, Lcom/android/launcher3/common/base/view/PagedView;->mapPointFromViewToParent(Landroid/view/View;FF)[F

    move-result-object v2

    .line 1499
    .local v2, "p":[F
    aget v8, v2, v7

    iput v8, p0, Lcom/android/launcher3/common/base/view/PagedView;->mParentDownMotionX:F

    .line 1500
    aget v8, v2, v6

    iput v8, p0, Lcom/android/launcher3/common/base/view/PagedView;->mParentDownMotionY:F

    .line 1501
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTotalMotionX:F

    .line 1502
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    iput v8, p0, Lcom/android/launcher3/common/base/view/PagedView;->mActivePointerId:I

    .line 1509
    iget-object v8, p0, Lcom/android/launcher3/common/base/view/PagedView;->mScroller:Lcom/android/launcher3/common/base/PageScroller;

    invoke-virtual {v8}, Lcom/android/launcher3/common/base/PageScroller;->getFinalX()I

    move-result v8

    iget-object v9, p0, Lcom/android/launcher3/common/base/view/PagedView;->mScroller:Lcom/android/launcher3/common/base/PageScroller;

    invoke-virtual {v9}, Lcom/android/launcher3/common/base/PageScroller;->getCurrX()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 1510
    .local v4, "xDist":I
    iget-object v8, p0, Lcom/android/launcher3/common/base/view/PagedView;->mScroller:Lcom/android/launcher3/common/base/PageScroller;

    invoke-virtual {v8}, Lcom/android/launcher3/common/base/PageScroller;->isFinished()Z

    move-result v8

    if-nez v8, :cond_4

    iget v8, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTouchSlop:I

    div-int/lit8 v8, v8, 0x3

    if-ge v4, v8, :cond_5

    :cond_4
    move v1, v6

    .line 1512
    .local v1, "finishedScrolling":Z
    :goto_2
    if-eqz v1, :cond_6

    .line 1513
    iput v7, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTouchState:I

    .line 1514
    iget-object v8, p0, Lcom/android/launcher3/common/base/view/PagedView;->mScroller:Lcom/android/launcher3/common/base/PageScroller;

    invoke-virtual {v8}, Lcom/android/launcher3/common/base/PageScroller;->isFinished()Z

    move-result v8

    if-nez v8, :cond_3

    .line 1515
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getNextPage()I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/android/launcher3/common/base/view/PagedView;->setCurrentPage(I)V

    .line 1516
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->pageEndMoving()V

    goto/16 :goto_1

    .end local v1    # "finishedScrolling":Z
    :cond_5
    move v1, v7

    .line 1510
    goto :goto_2

    .line 1519
    .restart local v1    # "finishedScrolling":Z
    :cond_6
    iget v8, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDownMotionX:F

    float-to-int v8, v8

    iget v9, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDownMotionY:F

    float-to-int v9, v9

    invoke-direct {p0, v8, v9}, Lcom/android/launcher3/common/base/view/PagedView;->isTouchPointInViewportWithBuffer(II)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1520
    iput v6, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTouchState:I

    goto/16 :goto_1

    .line 1522
    :cond_7
    iput v7, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTouchState:I

    goto/16 :goto_1

    .line 1530
    .end local v1    # "finishedScrolling":Z
    .end local v2    # "p":[F
    .end local v3    # "x":F
    .end local v4    # "xDist":I
    .end local v5    # "y":F
    :pswitch_3
    invoke-direct {p0}, Lcom/android/launcher3/common/base/view/PagedView;->resetTouchState()V

    goto/16 :goto_1

    .line 1534
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 1535
    invoke-direct {p0}, Lcom/android/launcher3/common/base/view/PagedView;->releaseVelocityTracker()V

    goto/16 :goto_1

    .line 1470
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 22
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 837
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->getChildCount()I

    move-result v20

    if-nez v20, :cond_1

    .line 923
    :cond_0
    :goto_0
    return-void

    .line 842
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->getChildCount()I

    move-result v3

    .line 844
    .local v3, "childCount":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->getViewportOffsetX()I

    move-result v13

    .line 845
    .local v13, "offsetX":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->getViewportOffsetY()I

    move-result v14

    .line 848
    .local v14, "offsetY":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mViewport:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13, v14}, Landroid/graphics/Rect;->offset(II)V

    .line 850
    sget-boolean v20, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v20, :cond_6

    add-int/lit8 v17, v3, -0x1

    .line 851
    .local v17, "startIndex":I
    :goto_1
    sget-boolean v20, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v20, :cond_7

    const/4 v10, -0x1

    .line 852
    .local v10, "endIndex":I
    :goto_2
    sget-boolean v20, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v20, :cond_8

    const/4 v9, -0x1

    .line 854
    .local v9, "delta":I
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->getPaddingTop()I

    move-result v20

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->getPaddingBottom()I

    move-result v21

    add-int v19, v20, v21

    .line 856
    .local v19, "verticalPadding":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->getPaddingLeft()I

    move-result v20

    add-int v5, v13, v20

    .line 857
    .local v5, "childLeft":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mPageScrolls:[I

    move-object/from16 v20, v0

    if-eqz v20, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mChildCountOnLastLayout:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-eq v3, v0, :cond_3

    .line 858
    :cond_2
    new-array v0, v3, [I

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher3/common/base/view/PagedView;->mPageScrolls:[I

    .line 861
    :cond_3
    const/4 v12, 0x0

    .line 863
    .local v12, "measuredOrientation":I
    move/from16 v11, v17

    .local v11, "i":I
    :goto_4
    if-eq v11, v10, :cond_a

    .line 864
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/launcher3/common/base/view/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    .line 865
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v20

    const/16 v21, 0x8

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_5

    .line 866
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->getPaddingTop()I

    move-result v20

    add-int v20, v20, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mInsets:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    add-int v6, v20, v21

    .line 867
    .local v6, "childTop":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mCenterPagesVertically:Z

    move/from16 v20, v0

    if-eqz v20, :cond_4

    .line 868
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->getViewportHeight()I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mInsets:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mInsets:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    sub-int v20, v20, v19

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v21

    sub-int v20, v20, v21

    div-int/lit8 v20, v20, 0x2

    add-int v6, v6, v20

    .line 871
    :cond_4
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 872
    .local v7, "childWidth":I
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 874
    .local v4, "childHeight":I
    if-le v7, v4, :cond_9

    const/4 v12, 0x2

    .line 879
    :goto_5
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    add-int v20, v20, v5

    add-int v21, v6, v4

    .line 878
    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v2, v5, v6, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 881
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->getPaddingLeft()I

    move-result v16

    .line 882
    .local v16, "scrollOffsetLeft":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mPageScrolls:[I

    move-object/from16 v20, v0

    sub-int v21, v5, v16

    sub-int v21, v21, v13

    aput v21, v20, v11

    .line 884
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/launcher3/common/base/view/PagedView;->mPageSpacing:I

    .line 885
    .local v15, "pageGap":I
    add-int v20, v7, v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->getChildGap()I

    move-result v21

    add-int v20, v20, v21

    add-int v5, v5, v20

    .line 863
    .end local v4    # "childHeight":I
    .end local v6    # "childTop":I
    .end local v7    # "childWidth":I
    .end local v15    # "pageGap":I
    .end local v16    # "scrollOffsetLeft":I
    :cond_5
    add-int/2addr v11, v9

    goto/16 :goto_4

    .line 850
    .end local v2    # "child":Landroid/view/View;
    .end local v5    # "childLeft":I
    .end local v9    # "delta":I
    .end local v10    # "endIndex":I
    .end local v11    # "i":I
    .end local v12    # "measuredOrientation":I
    .end local v17    # "startIndex":I
    .end local v19    # "verticalPadding":I
    :cond_6
    const/16 v17, 0x0

    goto/16 :goto_1

    .restart local v17    # "startIndex":I
    :cond_7
    move v10, v3

    .line 851
    goto/16 :goto_2

    .line 852
    .restart local v10    # "endIndex":I
    :cond_8
    const/4 v9, 0x1

    goto/16 :goto_3

    .line 874
    .restart local v2    # "child":Landroid/view/View;
    .restart local v4    # "childHeight":I
    .restart local v5    # "childLeft":I
    .restart local v6    # "childTop":I
    .restart local v7    # "childWidth":I
    .restart local v9    # "delta":I
    .restart local v11    # "i":I
    .restart local v12    # "measuredOrientation":I
    .restart local v19    # "verticalPadding":I
    :cond_9
    const/4 v12, 0x1

    goto :goto_5

    .line 889
    .end local v2    # "child":Landroid/view/View;
    .end local v4    # "childHeight":I
    .end local v6    # "childTop":I
    .end local v7    # "childWidth":I
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v18

    .line 892
    .local v18, "transition":Landroid/animation/LayoutTransition;
    if-eqz v18, :cond_e

    invoke-virtual/range {v18 .. v18}, Landroid/animation/LayoutTransition;->isRunning()Z

    move-result v20

    if-eqz v20, :cond_e

    .line 893
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mTransitionListener:Landroid/animation/LayoutTransition$TransitionListener;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->addTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V

    .line 898
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v20

    move-object/from16 v0, v20

    iget v8, v0, Landroid/content/res/Configuration;->orientation:I

    .line 899
    .local v8, "currentOrientation":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mFirstLayout:Z

    move/from16 v20, v0

    if-eqz v20, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    move/from16 v20, v0

    if-ltz v20, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v0, v3, :cond_b

    .line 900
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->updateCurrentPageScroll()V

    .line 901
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher3/common/base/view/PagedView;->mFirstLayout:Z

    .line 906
    :cond_b
    if-eq v8, v12, :cond_c

    .line 907
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->setFirstLayout(Z)V

    .line 910
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mScroller:Lcom/android/launcher3/common/base/PageScroller;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher3/common/base/PageScroller;->isFinished()Z

    move-result v20

    if-eqz v20, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mChildCountOnLastLayout:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-eq v0, v3, :cond_d

    .line 911
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mRestorePage:I

    move/from16 v20, v0

    const/16 v21, -0x3e9

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_f

    .line 912
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mRestorePage:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->setCurrentPage(I)V

    .line 913
    const/16 v20, -0x3e9

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher3/common/base/view/PagedView;->mRestorePage:I

    .line 918
    :cond_d
    :goto_7
    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/launcher3/common/base/view/PagedView;->mChildCountOnLastLayout:I

    .line 920
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->isReordering(Z)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 921
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->updateDragViewTranslationDuringDrag()V

    goto/16 :goto_0

    .line 895
    .end local v8    # "currentOrientation":I
    :cond_e
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->updateMaxScrollX()V

    goto/16 :goto_6

    .line 915
    .restart local v8    # "currentOrientation":I
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->getNextPage()I

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->setCurrentPage(I)V

    goto :goto_7
.end method

.method protected onMeasure(II)V
    .locals 30
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 735
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->getChildCount()I

    move-result v27

    if-nez v27, :cond_0

    .line 736
    invoke-super/range {p0 .. p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 833
    :goto_0
    return-void

    .line 742
    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v25

    .line 743
    .local v25, "widthMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v26

    .line 744
    .local v26, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v13

    .line 745
    .local v13, "heightMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v14

    .line 748
    .local v14, "heightSize":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v12

    .line 749
    .local v12, "dm":Landroid/util/DisplayMetrics;
    iget v0, v12, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mInsets:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v28, v0

    add-int v27, v27, v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mInsets:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v28, v0

    add-int v27, v27, v28

    iget v0, v12, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mInsets:Landroid/graphics/Rect;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v29, v0

    add-int v28, v28, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mInsets:Landroid/graphics/Rect;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v29, v0

    add-int v28, v28, v29

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->max(II)I

    move-result v18

    .line 752
    .local v18, "maxSize":I
    const/high16 v27, 0x40000000    # 2.0f

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v28, v0

    mul-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v20, v0

    .line 753
    .local v20, "parentWidthSize":I
    const/high16 v27, 0x40000000    # 2.0f

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v28, v0

    mul-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v19, v0

    .line 755
    .local v19, "parentHeightSize":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mUseMinScale:Z

    move/from16 v27, v0

    if-eqz v27, :cond_2

    .line 756
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mMinScale:F

    move/from16 v28, v0

    div-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v23, v0

    .line 757
    .local v23, "scaledWidthSize":I
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mMinScale:F

    move/from16 v28, v0

    div-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v22, v0

    .line 762
    .local v22, "scaledHeightSize":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mViewport:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3, v14}, Landroid/graphics/Rect;->set(IIII)V

    .line 764
    if-eqz v25, :cond_1

    if-nez v13, :cond_3

    .line 765
    :cond_1
    invoke-super/range {p0 .. p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    goto/16 :goto_0

    .line 759
    .end local v22    # "scaledHeightSize":I
    .end local v23    # "scaledWidthSize":I
    :cond_2
    move/from16 v23, v26

    .line 760
    .restart local v23    # "scaledWidthSize":I
    move/from16 v22, v14

    .restart local v22    # "scaledHeightSize":I
    goto :goto_1

    .line 770
    :cond_3
    if-lez v26, :cond_4

    if-gtz v14, :cond_5

    .line 771
    :cond_4
    invoke-super/range {p0 .. p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    goto/16 :goto_0

    .line 780
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->getPaddingTop()I

    move-result v27

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->getPaddingBottom()I

    move-result v28

    add-int v24, v27, v28

    .line 781
    .local v24, "verticalPadding":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->getPaddingLeft()I

    move-result v27

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->getPaddingRight()I

    move-result v28

    add-int v15, v27, v28

    .line 783
    .local v15, "horizontalPadding":I
    const/16 v21, 0x0

    .line 791
    .local v21, "referenceChildWidth":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->getChildCount()I

    move-result v5

    .line 792
    .local v5, "childCount":I
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_2
    move/from16 v0, v16

    if-ge v0, v5, :cond_a

    .line 794
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    .line 795
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v27

    const/16 v28, 0x8

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_7

    .line 796
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Lcom/android/launcher3/common/base/view/PagedView$LayoutParams;

    .line 803
    .local v17, "lp":Lcom/android/launcher3/common/base/view/PagedView$LayoutParams;
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/launcher3/common/base/view/PagedView$LayoutParams;->width:I

    move/from16 v27, v0

    const/16 v28, -0x2

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_8

    .line 804
    const/high16 v11, -0x80000000

    .line 809
    .local v11, "childWidthMode":I
    :goto_3
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/launcher3/common/base/view/PagedView$LayoutParams;->height:I

    move/from16 v27, v0

    const/16 v28, -0x2

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_9

    .line 810
    const/high16 v8, -0x80000000

    .line 815
    .local v8, "childHeightMode":I
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->getViewportWidth()I

    move-result v27

    sub-int v27, v27, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mInsets:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v28, v0

    sub-int v27, v27, v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mInsets:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v28, v0

    sub-int v9, v27, v28

    .line 817
    .local v9, "childWidth":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->getViewportHeight()I

    move-result v27

    sub-int v27, v27, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mInsets:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v28, v0

    sub-int v27, v27, v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mInsets:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v28, v0

    sub-int v6, v27, v28

    .line 819
    .local v6, "childHeight":I
    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/launcher3/common/base/view/PagedView;->mNormalChildHeight:I

    .line 821
    if-nez v21, :cond_6

    .line 822
    move/from16 v21, v9

    .line 826
    :cond_6
    invoke-static {v9, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 828
    .local v10, "childWidthMeasureSpec":I
    invoke-static {v6, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 829
    .local v7, "childHeightMeasureSpec":I
    invoke-virtual {v4, v10, v7}, Landroid/view/View;->measure(II)V

    .line 792
    .end local v6    # "childHeight":I
    .end local v7    # "childHeightMeasureSpec":I
    .end local v8    # "childHeightMode":I
    .end local v9    # "childWidth":I
    .end local v10    # "childWidthMeasureSpec":I
    .end local v11    # "childWidthMode":I
    .end local v17    # "lp":Lcom/android/launcher3/common/base/view/PagedView$LayoutParams;
    :cond_7
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_2

    .line 806
    .restart local v17    # "lp":Lcom/android/launcher3/common/base/view/PagedView$LayoutParams;
    :cond_8
    const/high16 v11, 0x40000000    # 2.0f

    .restart local v11    # "childWidthMode":I
    goto :goto_3

    .line 812
    :cond_9
    const/high16 v8, 0x40000000    # 2.0f

    .restart local v8    # "childHeightMode":I
    goto :goto_4

    .line 832
    .end local v4    # "child":Landroid/view/View;
    .end local v8    # "childHeightMode":I
    .end local v11    # "childWidthMode":I
    .end local v17    # "lp":Lcom/android/launcher3/common/base/view/PagedView$LayoutParams;
    :cond_a
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/common/base/view/PagedView;->setMeasuredDimension(II)V

    goto/16 :goto_0
.end method

.method protected onPageBeginMoving()V
    .locals 0

    .prologue
    .line 574
    return-void
.end method

.method protected onPageEndMoving()V
    .locals 0

    .prologue
    .line 578
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 2994
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mIsResumed:Z

    .line 2995
    invoke-direct {p0}, Lcom/android/launcher3/common/base/view/PagedView;->disablePageIndicatorAnimation()V

    .line 2996
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 4
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 1329
    iget v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mNextPage:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 1330
    iget v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mNextPage:I

    .line 1334
    .local v0, "focusablePage":I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/base/view/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    .line 1335
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 1336
    invoke-virtual {v1, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v2

    .line 1338
    :goto_1
    return v2

    .line 1332
    .end local v0    # "focusablePage":I
    .end local v1    # "v":Landroid/view/View;
    :cond_0
    iget v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    .restart local v0    # "focusablePage":I
    goto :goto_0

    .line 1338
    .restart local v1    # "v":Landroid/view/View;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 2989
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mIsResumed:Z

    .line 2990
    invoke-direct {p0}, Lcom/android/launcher3/common/base/view/PagedView;->enablePageIndicatorAnimation()V

    .line 2991
    return-void
.end method

.method protected onScrollInteractionBegin()V
    .locals 0

    .prologue
    .line 1933
    return-void
.end method

.method protected onScrollInteractionEnd()V
    .locals 0

    .prologue
    .line 1936
    return-void
.end method

.method public onStartReordering()V
    .locals 1

    .prologue
    .line 2275
    iget v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPostReorderingPreZoomInRemainingAnimationCount:I

    if-lez v0, :cond_0

    .line 2276
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPostReorderingPreZoomInRemainingAnimationCount:I

    .line 2279
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTouchState:I

    .line 2280
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mIsReordering:Z

    .line 2284
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->invalidate()V

    .line 2285
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 26
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1669
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1672
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->getChildCount()I

    move-result v22

    if-gtz v22, :cond_0

    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v22

    .line 1890
    :goto_0
    return v22

    .line 1674
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/android/launcher3/common/base/view/PagedView;->acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V

    .line 1676
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 1678
    .local v4, "action":I
    and-int/lit16 v0, v4, 0xff

    move/from16 v22, v0

    packed-switch v22, :pswitch_data_0

    .line 1890
    :cond_1
    :goto_1
    :pswitch_0
    const/16 v22, 0x1

    goto :goto_0

    .line 1684
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mScroller:Lcom/android/launcher3/common/base/PageScroller;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher3/common/base/PageScroller;->isFinished()Z

    move-result v22

    if-nez v22, :cond_2

    .line 1685
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->abortScrollerAnimation(Z)V

    .line 1689
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher3/common/base/view/PagedView;->mLastMotionX:F

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher3/common/base/view/PagedView;->mDownMotionX:F

    .line 1690
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher3/common/base/view/PagedView;->mLastMotionY:F

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher3/common/base/view/PagedView;->mDownMotionY:F

    .line 1691
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->getScrollX()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher3/common/base/view/PagedView;->mDownScrollX:F

    .line 1692
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mLastMotionX:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mLastMotionY:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher3/common/base/view/PagedView;->mapPointFromViewToParent(Landroid/view/View;FF)[F

    move-result-object v13

    .line 1693
    .local v13, "p":[F
    const/16 v22, 0x0

    aget v22, v13, v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher3/common/base/view/PagedView;->mParentDownMotionX:F

    .line 1694
    const/16 v22, 0x1

    aget v22, v13, v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher3/common/base/view/PagedView;->mParentDownMotionY:F

    .line 1695
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher3/common/base/view/PagedView;->mTotalMotionX:F

    .line 1696
    const/16 v22, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher3/common/base/view/PagedView;->mActivePointerId:I

    .line 1698
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mTouchState:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_1

    .line 1699
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->onScrollInteractionBegin()V

    .line 1700
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->pageBeginMoving()V

    goto/16 :goto_1

    .line 1705
    .end local v13    # "p":[F
    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mTouchState:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->isHorizontalScroll()Z

    move-result v22

    if-eqz v22, :cond_3

    .line 1706
    invoke-direct/range {p0 .. p1}, Lcom/android/launcher3/common/base/view/PagedView;->scrollPageOnMoveEvent(Landroid/view/MotionEvent;)Z

    move-result v22

    goto/16 :goto_0

    .line 1707
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mTouchState:I

    move/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_5

    .line 1709
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher3/common/base/view/PagedView;->mLastMotionX:F

    .line 1710
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher3/common/base/view/PagedView;->mLastMotionY:F

    .line 1714
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mLastMotionX:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mLastMotionY:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher3/common/base/view/PagedView;->mapPointFromViewToParent(Landroid/view/View;FF)[F

    move-result-object v17

    .line 1715
    .local v17, "pt":[F
    const/16 v22, 0x0

    aget v22, v17, v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher3/common/base/view/PagedView;->mParentDownMotionX:F

    .line 1716
    const/16 v22, 0x1

    aget v22, v17, v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher3/common/base/view/PagedView;->mParentDownMotionY:F

    .line 1717
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->updateDragViewTranslationDuringDrag()V

    .line 1720
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mDragView:Landroid/view/View;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v7

    .line 1727
    .local v7, "dragViewIndex":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->getNearestHoverOverPageIndex()I

    move-result v14

    .line 1728
    .local v14, "pageUnderPointIndex":I
    const/16 v22, -0x1

    move/from16 v0, v22

    if-le v14, v0, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mDragView:Landroid/view/View;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v22

    move/from16 v0, v22

    if-eq v14, v0, :cond_4

    .line 1729
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mTempVisiblePagesRange:[I

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    aput v24, v22, v23

    .line 1730
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mTempVisiblePagesRange:[I

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->getPageCount()I

    move-result v24

    add-int/lit8 v24, v24, -0x1

    aput v24, v22, v23

    .line 1731
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mTempVisiblePagesRange:[I

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget v22, v22, v23

    move/from16 v0, v22

    if-gt v0, v14, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mTempVisiblePagesRange:[I

    move-object/from16 v22, v0

    const/16 v23, 0x1

    aget v22, v22, v23

    move/from16 v0, v22

    if-gt v14, v0, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mSidePageHoverIndex:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-eq v14, v0, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mScroller:Lcom/android/launcher3/common/base/PageScroller;

    move-object/from16 v22, v0

    .line 1733
    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher3/common/base/PageScroller;->isFinished()Z

    move-result v22

    if-eqz v22, :cond_1

    .line 1734
    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/launcher3/common/base/view/PagedView;->mSidePageHoverIndex:I

    .line 1735
    new-instance v22, Lcom/android/launcher3/common/base/view/PagedView$3;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v14, v7}, Lcom/android/launcher3/common/base/view/PagedView$3;-><init>(Lcom/android/launcher3/common/base/view/PagedView;II)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher3/common/base/view/PagedView;->mSidePageHoverRunnable:Ljava/lang/Runnable;

    .line 1784
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mSidePageHoverRunnable:Ljava/lang/Runnable;

    move-object/from16 v22, v0

    const-wide/16 v24, 0x50

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/common/base/view/PagedView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    .line 1787
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mSidePageHoverRunnable:Ljava/lang/Runnable;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1788
    const/16 v22, -0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher3/common/base/view/PagedView;->mSidePageHoverIndex:I

    goto/16 :goto_1

    .line 1791
    .end local v7    # "dragViewIndex":I
    .end local v14    # "pageUnderPointIndex":I
    .end local v17    # "pt":[F
    :cond_5
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher3/common/base/view/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;)Z

    goto/16 :goto_1

    .line 1796
    :pswitch_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mTouchState:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_1a

    .line 1797
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher3/common/base/view/PagedView;->mActivePointerId:I

    .line 1798
    .local v5, "activePointerId":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v16

    .line 1799
    .local v16, "pointerIndex":I
    const/16 v22, -0x1

    move/from16 v0, v16

    move/from16 v1, v22

    if-ne v0, v1, :cond_6

    const/16 v22, 0x1

    goto/16 :goto_0

    .line 1801
    :cond_6
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v21

    .line 1802
    .local v21, "x":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v19, v0

    .line 1803
    .local v19, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v22, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mMaximumVelocity:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, v19

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1804
    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v20, v0

    .line 1805
    .local v20, "velocityX":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mDownMotionX:F

    move/from16 v22, v0

    sub-float v22, v21, v22

    move/from16 v0, v22

    float-to-int v6, v0

    .line 1807
    .local v6, "deltaX":I
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher3/LauncherAppState;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v22

    move-object/from16 v0, v22

    iget v15, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->availableWidthPx:I

    .line 1808
    .local v15, "pageWidth":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v22

    if-eqz v22, :cond_7

    .line 1809
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    .line 1811
    :cond_7
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    int-to-float v0, v15

    move/from16 v23, v0

    const v24, 0x3ecccccd    # 0.4f

    mul-float v23, v23, v24

    cmpl-float v22, v22, v23

    if-lez v22, :cond_c

    const/4 v11, 0x1

    .line 1814
    .local v11, "isSignificantMove":Z
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mTotalMotionX:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mLastMotionX:F

    move/from16 v23, v0

    sub-float v23, v23, v21

    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->abs(F)F

    move-result v23

    add-float v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher3/common/base/view/PagedView;->mTotalMotionX:F

    .line 1816
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mTotalMotionX:F

    move/from16 v22, v0

    const/high16 v23, 0x41c80000    # 25.0f

    cmpl-float v22, v22, v23

    if-lez v22, :cond_d

    .line 1817
    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(I)I

    move-result v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mFlingThresholdVelocity:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_d

    const/4 v10, 0x1

    .line 1822
    .local v10, "isFling":Z
    :goto_3
    const/16 v18, 0x0

    .line 1823
    .local v18, "returnToOriginalPage":Z
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    int-to-float v0, v15

    move/from16 v23, v0

    const v24, 0x3ea8f5c3    # 0.33f

    mul-float v23, v23, v24

    cmpl-float v22, v22, v23

    if-lez v22, :cond_8

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v22, v0

    .line 1824
    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->signum(F)F

    move-result v22

    int-to-float v0, v6

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->signum(F)F

    move-result v23

    cmpl-float v22, v22, v23

    if-eqz v22, :cond_8

    if-eqz v10, :cond_8

    .line 1825
    const/16 v18, 0x1

    .line 1832
    :cond_8
    sget-boolean v22, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v22, :cond_f

    if-lez v6, :cond_e

    const/4 v9, 0x1

    .line 1833
    .local v9, "isDeltaXLeft":Z
    :goto_4
    sget-boolean v22, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v22, :cond_12

    if-lez v20, :cond_11

    const/4 v12, 0x1

    .line 1834
    .local v12, "isVelocityXLeft":Z
    :goto_5
    if-eqz v11, :cond_9

    if-nez v9, :cond_9

    if-eqz v10, :cond_a

    :cond_9
    if-eqz v10, :cond_15

    if-nez v12, :cond_15

    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    move/from16 v22, v0

    if-lez v22, :cond_15

    .line 1836
    if-eqz v18, :cond_14

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    .line 1837
    .local v8, "finalPage":I
    :goto_6
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v8, v1}, Lcom/android/launcher3/common/base/view/PagedView;->snapToPageWithVelocity(II)V

    .line 1838
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->snapToPageSALoggging(Z)V

    .line 1848
    .end local v8    # "finalPage":I
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->onScrollInteractionEnd()V

    .line 1871
    .end local v5    # "activePointerId":I
    .end local v6    # "deltaX":I
    .end local v9    # "isDeltaXLeft":Z
    .end local v10    # "isFling":Z
    .end local v11    # "isSignificantMove":Z
    .end local v12    # "isVelocityXLeft":Z
    .end local v15    # "pageWidth":I
    .end local v16    # "pointerIndex":I
    .end local v18    # "returnToOriginalPage":Z
    .end local v19    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v20    # "velocityX":I
    .end local v21    # "x":F
    :cond_b
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mSidePageHoverRunnable:Ljava/lang/Runnable;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1873
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->resetTouchState()V

    goto/16 :goto_1

    .line 1811
    .restart local v5    # "activePointerId":I
    .restart local v6    # "deltaX":I
    .restart local v15    # "pageWidth":I
    .restart local v16    # "pointerIndex":I
    .restart local v19    # "velocityTracker":Landroid/view/VelocityTracker;
    .restart local v20    # "velocityX":I
    .restart local v21    # "x":F
    :cond_c
    const/4 v11, 0x0

    goto/16 :goto_2

    .line 1817
    .restart local v11    # "isSignificantMove":Z
    :cond_d
    const/4 v10, 0x0

    goto :goto_3

    .line 1832
    .restart local v10    # "isFling":Z
    .restart local v18    # "returnToOriginalPage":Z
    :cond_e
    const/4 v9, 0x0

    goto :goto_4

    :cond_f
    if-gez v6, :cond_10

    const/4 v9, 0x1

    goto :goto_4

    :cond_10
    const/4 v9, 0x0

    goto :goto_4

    .line 1833
    .restart local v9    # "isDeltaXLeft":Z
    :cond_11
    const/4 v12, 0x0

    goto :goto_5

    :cond_12
    if-gez v20, :cond_13

    const/4 v12, 0x1

    goto :goto_5

    :cond_13
    const/4 v12, 0x0

    goto :goto_5

    .line 1836
    .restart local v12    # "isVelocityXLeft":Z
    :cond_14
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    move/from16 v22, v0

    add-int/lit8 v8, v22, -0x1

    goto :goto_6

    .line 1839
    :cond_15
    if-eqz v11, :cond_16

    if-eqz v9, :cond_16

    if-eqz v10, :cond_17

    :cond_16
    if-eqz v10, :cond_19

    if-eqz v12, :cond_19

    :cond_17
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    move/from16 v22, v0

    .line 1841
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->getChildCount()I

    move-result v23

    add-int/lit8 v23, v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_19

    .line 1842
    if-eqz v18, :cond_18

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    .line 1843
    .restart local v8    # "finalPage":I
    :goto_9
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v8, v1}, Lcom/android/launcher3/common/base/view/PagedView;->snapToPageWithVelocity(II)V

    .line 1844
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->snapToPageSALoggging(Z)V

    goto :goto_7

    .line 1842
    .end local v8    # "finalPage":I
    :cond_18
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    move/from16 v22, v0

    add-int/lit8 v8, v22, 0x1

    goto :goto_9

    .line 1846
    :cond_19
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->snapToDestination()V

    goto :goto_7

    .line 1849
    .end local v5    # "activePointerId":I
    .end local v6    # "deltaX":I
    .end local v9    # "isDeltaXLeft":Z
    .end local v10    # "isFling":Z
    .end local v11    # "isSignificantMove":Z
    .end local v12    # "isVelocityXLeft":Z
    .end local v15    # "pageWidth":I
    .end local v16    # "pointerIndex":I
    .end local v18    # "returnToOriginalPage":Z
    .end local v19    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v20    # "velocityX":I
    .end local v21    # "x":F
    :cond_1a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mTouchState:I

    move/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_1b

    .line 1851
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher3/common/base/view/PagedView;->mLastMotionX:F

    .line 1852
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher3/common/base/view/PagedView;->mLastMotionY:F

    .line 1856
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mLastMotionX:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mLastMotionY:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher3/common/base/view/PagedView;->mapPointFromViewToParent(Landroid/view/View;FF)[F

    move-result-object v17

    .line 1857
    .restart local v17    # "pt":[F
    const/16 v22, 0x0

    aget v22, v17, v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher3/common/base/view/PagedView;->mParentDownMotionX:F

    .line 1858
    const/16 v22, 0x1

    aget v22, v17, v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher3/common/base/view/PagedView;->mParentDownMotionY:F

    .line 1859
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->updateDragViewTranslationDuringDrag()V

    goto/16 :goto_8

    .line 1861
    .end local v17    # "pt":[F
    :cond_1b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mCancelTap:Z

    move/from16 v22, v0

    if-nez v22, :cond_b

    .line 1862
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v22

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v23

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/common/base/view/PagedView;->checkTouchedPageIndicator(FF)Z

    move-result v22

    if-eqz v22, :cond_1c

    .line 1863
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mPageIndicator:Lcom/android/launcher3/common/view/PageIndicator;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/view/PageIndicator;->clickPageIndicator(Landroid/view/MotionEvent;)V

    goto/16 :goto_8

    .line 1865
    :cond_1c
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher3/common/base/view/PagedView;->onUnhandledTap(Landroid/view/MotionEvent;)V

    goto/16 :goto_8

    .line 1877
    :pswitch_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mTouchState:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_1d

    .line 1878
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->snapToDestination()V

    .line 1879
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->onScrollInteractionEnd()V

    .line 1881
    :cond_1d
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->resetTouchState()V

    goto/16 :goto_1

    .line 1885
    :pswitch_5
    invoke-direct/range {p0 .. p1}, Lcom/android/launcher3/common/base/view/PagedView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 1886
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->releaseVelocityTracker()V

    goto/16 :goto_1

    .line 1678
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method protected onUnhandledTap(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1939
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/Launcher;->onClick(Landroid/view/View;)V

    .line 1940
    return-void
.end method

.method protected overScroll(I)V
    .locals 1
    .param p1, "amount"    # I

    .prologue
    .line 1255
    int-to-float v0, p1

    invoke-direct {p0, v0}, Lcom/android/launcher3/common/base/view/PagedView;->dampedOverScroll(F)V

    .line 1256
    return-void
.end method

.method protected pageBeginMoving()V
    .locals 1

    .prologue
    .line 555
    iget-boolean v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mIsPageMoving:Z

    if-nez v0, :cond_0

    .line 556
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mIsPageMoving:Z

    .line 557
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->onPageBeginMoving()V

    .line 559
    :cond_0
    return-void
.end method

.method protected pageEndMoving()V
    .locals 1

    .prologue
    .line 562
    iget-boolean v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mIsPageMoving:Z

    if-eqz v0, :cond_0

    .line 563
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mIsPageMoving:Z

    .line 564
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->onPageEndMoving()V

    .line 566
    :cond_0
    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 3
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x1

    .line 2405
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2424
    :goto_0
    return v0

    .line 2408
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 2424
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 2410
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getCurrentPage()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getPageCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    .line 2411
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->scrollRight()V

    goto :goto_0

    .line 2417
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getCurrentPage()I

    move-result v1

    if-lez v1, :cond_1

    .line 2418
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->scrollLeft()V

    goto :goto_0

    .line 2408
    nop

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_1
    .end sparse-switch
.end method

.method public performLongClick()Z
    .locals 1

    .prologue
    .line 2220
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mCancelTap:Z

    .line 2221
    invoke-super {p0}, Landroid/view/ViewGroup;->performLongClick()Z

    move-result v0

    return v0
.end method

.method public removeAllViewsInLayout()V
    .locals 1

    .prologue
    .line 1071
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageIndicator:Lcom/android/launcher3/common/view/PageIndicator;

    if-eqz v0, :cond_0

    .line 1072
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageIndicator:Lcom/android/launcher3/common/view/PageIndicator;

    invoke-virtual {v0}, Lcom/android/launcher3/common/view/PageIndicator;->removeAllMarkers()V

    .line 1075
    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 1076
    return-void
.end method

.method public removeMarkerForView(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 1007
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageIndicator:Lcom/android/launcher3/common/view/PageIndicator;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/base/view/PagedView;->isReordering(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1008
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageIndicator:Lcom/android/launcher3/common/view/PageIndicator;

    iget-boolean v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mEnablePageIndicatorAnim:Z

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher3/common/view/PageIndicator;->removeMarker(IZ)V

    .line 1010
    :cond_0
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1047
    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/base/view/PagedView;->removeMarkerForView(I)V

    .line 1048
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1049
    return-void
.end method

.method public removeViewAt(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 1063
    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->removeMarkerForView(I)V

    .line 1064
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 1065
    return-void
.end method

.method public removeViewInLayout(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1055
    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/base/view/PagedView;->removeMarkerForView(I)V

    .line 1056
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    .line 1057
    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "focused"    # Landroid/view/View;

    .prologue
    .line 2008
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 2009
    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->indexToPage(I)I

    move-result v0

    .line 2010
    .local v0, "page":I
    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getCurrentPage()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->isInTouchMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2011
    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/base/view/PagedView;->snapToPage(I)V

    .line 2013
    :cond_0
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "rectangle"    # Landroid/graphics/Rect;
    .param p3, "immediate"    # Z

    .prologue
    .line 1318
    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->indexToPage(I)I

    move-result v0

    .line 1319
    .local v0, "page":I
    iget v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mScroller:Lcom/android/launcher3/common/base/PageScroller;

    invoke-virtual {v1}, Lcom/android/launcher3/common/base/PageScroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1320
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/base/view/PagedView;->snapToPage(I)V

    .line 1321
    const/4 v1, 0x1

    .line 1323
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 2
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 1429
    if-eqz p1, :cond_0

    .line 1432
    iget v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 1433
    .local v0, "currentPage":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    .line 1435
    .end local v0    # "currentPage":Landroid/view/View;
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 1436
    return-void
.end method

.method protected resetPulledPages()V
    .locals 1

    .prologue
    .line 2817
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTranslateAllPages:F

    .line 2818
    iget v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTranslateAllPages:F

    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/base/view/PagedView;->setTranslationX(F)V

    .line 2819
    return-void
.end method

.method protected resetTransitionEffect(Landroid/view/View;)V
    .locals 4
    .param p1, "page"    # Landroid/view/View;

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    const/4 v2, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1279
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v3

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    .line 1280
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v3

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotY(F)V

    .line 1281
    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 1282
    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 1283
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    .line 1284
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    .line 1285
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1286
    return-void
.end method

.method protected resetTransitionEffectForInvisiblePage(Landroid/view/View;)V
    .locals 0
    .param p1, "page"    # Landroid/view/View;

    .prologue
    .line 1289
    return-void
.end method

.method protected screenScrolled(III)V
    .locals 0
    .param p1, "screenCenter"    # I
    .param p2, "leftScreen"    # I
    .param p3, "rightScreen"    # I

    .prologue
    .line 973
    return-void
.end method

.method public scrollBy(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 597
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getScrollX()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getScrollY()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->scrollTo(II)V

    .line 598
    return-void
.end method

.method public scrollLeft()V
    .locals 2

    .prologue
    .line 2181
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getNextPage()I

    move-result v0

    .line 2182
    .local v0, "page":I
    if-gtz v0, :cond_0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->isScrollableToZeroPage()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2183
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->isScrolling()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2184
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->cancelDeferLoadAssociatedPagesUntilScrollCompletes()V

    .line 2185
    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/base/view/PagedView;->setCurrentPage(I)V

    .line 2187
    :cond_1
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->loadAssociatedPages(I)V

    .line 2188
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->snapToPage(I)V

    .line 2190
    :cond_2
    return-void
.end method

.method public scrollRight()V
    .locals 2

    .prologue
    .line 2193
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getNextPage()I

    move-result v0

    .line 2194
    .local v0, "page":I
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    .line 2195
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->isScrolling()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2196
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->cancelDeferLoadAssociatedPagesUntilScrollCompletes()V

    .line 2197
    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/base/view/PagedView;->setCurrentPage(I)V

    .line 2199
    :cond_0
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->loadAssociatedPages(I)V

    .line 2200
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->snapToPage(I)V

    .line 2202
    :cond_1
    return-void
.end method

.method public scrollTo(II)V
    .locals 10
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 602
    sget-boolean v2, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v2, :cond_7

    iget v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mMaxScrollX:I

    if-le p1, v2, :cond_6

    move v7, v0

    .line 603
    .local v7, "isXBeforeFirstPage":Z
    :goto_0
    sget-boolean v2, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v2, :cond_a

    if-gez p1, :cond_9

    move v6, v0

    .line 605
    .local v6, "isXAfterLastPage":Z
    :goto_1
    if-nez v7, :cond_0

    if-eqz v6, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->canOverScroll()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 606
    :cond_1
    iget v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mUnboundedScrollX:I

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getScrollX()I

    move-result v3

    sub-int v3, p1, v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mUnboundedScrollX:I

    .line 609
    :cond_2
    if-eqz v7, :cond_e

    .line 610
    sget-boolean v2, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v2, :cond_c

    iget v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mMaxScrollX:I

    :goto_2
    invoke-super {p0, v2, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 611
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->canOverScroll()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 612
    sget-boolean v2, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v2, :cond_d

    iget v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mUnboundedScrollX:I

    iget v3, p0, Lcom/android/launcher3/common/base/view/PagedView;->mMaxScrollX:I

    sub-int v9, v2, v3

    .line 613
    .local v9, "scrollX":I
    :goto_3
    invoke-virtual {p0, v9}, Lcom/android/launcher3/common/base/view/PagedView;->overScroll(I)V

    .line 626
    .end local v9    # "scrollX":I
    :cond_3
    :goto_4
    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/base/view/PagedView;->isReordering(Z)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 627
    iget v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mParentDownMotionX:F

    iget v3, p0, Lcom/android/launcher3/common/base/view/PagedView;->mParentDownMotionY:F

    invoke-direct {p0, p0, v2, v3}, Lcom/android/launcher3/common/base/view/PagedView;->mapPointFromParentToView(Landroid/view/View;FF)[F

    move-result-object v8

    .line 628
    .local v8, "p":[F
    aget v1, v8, v1

    iput v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mLastMotionX:F

    .line 629
    aget v0, v8, v0

    iput v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mLastMotionY:F

    .line 630
    invoke-direct {p0}, Lcom/android/launcher3/common/base/view/PagedView;->updateDragViewTranslationDuringDrag()V

    .line 633
    .end local v8    # "p":[F
    :cond_4
    if-ltz p1, :cond_5

    iget v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mMaxScrollX:I

    if-gt p1, v0, :cond_5

    .line 634
    iget v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    iget v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/base/view/PagedView;->getScrollForPage(I)I

    move-result v4

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getPageCount()I

    move-result v5

    move-object v0, p0

    move v2, p1

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/common/base/view/PagedView;->notifyPageScroll(IIIII)V

    .line 636
    :cond_5
    return-void

    .end local v6    # "isXAfterLastPage":Z
    .end local v7    # "isXBeforeFirstPage":Z
    :cond_6
    move v7, v1

    .line 602
    goto :goto_0

    :cond_7
    if-gez p1, :cond_8

    move v7, v0

    goto :goto_0

    :cond_8
    move v7, v1

    goto :goto_0

    .restart local v7    # "isXBeforeFirstPage":Z
    :cond_9
    move v6, v1

    .line 603
    goto :goto_1

    :cond_a
    iget v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mMaxScrollX:I

    if-le p1, v2, :cond_b

    move v6, v0

    goto :goto_1

    :cond_b
    move v6, v1

    goto :goto_1

    .restart local v6    # "isXAfterLastPage":Z
    :cond_c
    move v2, v1

    .line 610
    goto :goto_2

    .line 612
    :cond_d
    iget v9, p0, Lcom/android/launcher3/common/base/view/PagedView;->mUnboundedScrollX:I

    goto :goto_3

    .line 615
    :cond_e
    if-eqz v6, :cond_11

    .line 616
    sget-boolean v2, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v2, :cond_f

    move v2, v1

    :goto_5
    invoke-super {p0, v2, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 617
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->canOverScroll()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 618
    sget-boolean v2, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v2, :cond_10

    iget v9, p0, Lcom/android/launcher3/common/base/view/PagedView;->mUnboundedScrollX:I

    .line 619
    .restart local v9    # "scrollX":I
    :goto_6
    invoke-virtual {p0, v9}, Lcom/android/launcher3/common/base/view/PagedView;->overScroll(I)V

    goto :goto_4

    .line 616
    .end local v9    # "scrollX":I
    :cond_f
    iget v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mMaxScrollX:I

    goto :goto_5

    .line 618
    :cond_10
    iget v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mUnboundedScrollX:I

    iget v3, p0, Lcom/android/launcher3/common/base/view/PagedView;->mMaxScrollX:I

    sub-int v9, v2, v3

    goto :goto_6

    .line 622
    :cond_11
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    goto :goto_4
.end method

.method public sendAccessibilityEvent(I)V
    .locals 1
    .param p1, "eventType"    # I

    .prologue
    .line 2392
    const/16 v0, 0x1000

    if-eq p1, v0, :cond_0

    .line 2393
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    .line 2395
    :cond_0
    return-void
.end method

.method public setActiveMarker(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1018
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageIndicator:Lcom/android/launcher3/common/view/PageIndicator;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->isPageMoving()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1019
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageIndicator:Lcom/android/launcher3/common/view/PageIndicator;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/view/PageIndicator;->setActiveMarker(I)V

    .line 1021
    :cond_0
    return-void
.end method

.method protected setActivePages(I)V
    .locals 11
    .param p1, "currentPageIndex"    # I

    .prologue
    .line 2549
    iget-object v9, p0, Lcom/android/launcher3/common/base/view/PagedView;->mActivePages:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 2550
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mActivePages:Ljava/util/ArrayList;

    .line 2552
    .local v0, "activePages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2554
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getPageCacheSize()I

    move-result v1

    .line 2555
    .local v1, "cacheSize":I
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getPageCount()I

    move-result v4

    .line 2559
    .local v4, "pageCount":I
    if-lt v1, v4, :cond_0

    .line 2560
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_4

    .line 2561
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2560
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2566
    .end local v2    # "i":I
    :cond_0
    add-int/lit8 v8, v1, -0x1

    .line 2567
    .local v8, "size":I
    int-to-float v9, v8

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 2568
    .local v5, "pagesToLeft":I
    div-int/lit8 v6, v8, 0x2

    .line 2569
    .local v6, "pagesToRight":I
    const/4 v2, 0x1

    .restart local v2    # "i":I
    :goto_1
    if-gt v2, v5, :cond_2

    .line 2570
    sub-int v3, p1, v2

    .line 2571
    .local v3, "leftIndex":I
    if-ltz v3, :cond_1

    .line 2572
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2569
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2576
    .end local v3    # "leftIndex":I
    :cond_2
    const/4 v2, 0x1

    :goto_2
    if-gt v2, v6, :cond_4

    .line 2577
    add-int v7, p1, v2

    .line 2578
    .local v7, "rightIndex":I
    if-ge v7, v4, :cond_3

    .line 2579
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2576
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2582
    .end local v5    # "pagesToLeft":I
    .end local v6    # "pagesToRight":I
    .end local v7    # "rightIndex":I
    .end local v8    # "size":I
    :cond_4
    return-void
.end method

.method public setCrosshairsVisibilityChilds(I)V
    .locals 1
    .param p1, "visibilityChilds"    # I

    .prologue
    .line 2612
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/common/base/view/PagedView;->setCrosshairsVisibilityChilds(IZ)V

    .line 2613
    return-void
.end method

.method public setCrosshairsVisibilityChilds(IZ)V
    .locals 7
    .param p1, "visibilityChilds"    # I
    .param p2, "animate"    # Z

    .prologue
    const/4 v4, 0x0

    .line 2601
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getChildCount()I

    move-result v2

    .line 2602
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_3

    .line 2603
    invoke-virtual {p0, v3}, Lcom/android/launcher3/common/base/view/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 2604
    .local v1, "cellLayout":Lcom/android/launcher3/common/base/view/CellLayout;
    if-eqz v1, :cond_0

    .line 2605
    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getCurrentPage()I

    move-result v5

    invoke-virtual {p0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v6

    if-ne v5, v6, :cond_1

    const/4 v0, 0x1

    .line 2606
    .local v0, "animatePage":Z
    :goto_1
    invoke-virtual {v1, p1, v0}, Lcom/android/launcher3/common/base/view/CellLayout;->setCrossHairAnimatedVisibility(IZ)V

    .line 2602
    .end local v0    # "animatePage":Z
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move v0, v4

    .line 2605
    goto :goto_1

    :cond_2
    move v0, v4

    goto :goto_1

    .line 2609
    .end local v1    # "cellLayout":Lcom/android/launcher3/common/base/view/CellLayout;
    :cond_3
    return-void
.end method

.method public setCurrentPage(I)V
    .locals 3
    .param p1, "currentPage"    # I

    .prologue
    const/4 v1, 0x1

    .line 513
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mScroller:Lcom/android/launcher3/common/base/PageScroller;

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/PageScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 514
    invoke-direct {p0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->abortScrollerAnimation(Z)V

    .line 518
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 528
    :goto_0
    return-void

    .line 521
    :cond_1
    iput-boolean v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mForceScreenScrolled:Z

    .line 522
    invoke-direct {p0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->validateNewPage(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    .line 524
    iget v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    iget v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->getScrollForPage(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getPageCount()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/launcher3/common/base/view/PagedView;->notifyPageChange(III)V

    .line 525
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->updateCurrentPageScroll()V

    .line 526
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->notifyPageSwitchListener()V

    .line 527
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->invalidate()V

    goto :goto_0
.end method

.method public setDataReady()V
    .locals 1

    .prologue
    .line 2484
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mIsDataReady:Z

    .line 2485
    return-void
.end method

.method protected setDefaultInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 2
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 298
    iput-object p1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDefaultInterpolator:Landroid/view/animation/Interpolator;

    .line 299
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mScroller:Lcom/android/launcher3/common/base/PageScroller;

    iget-object v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDefaultInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/base/PageScroller;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 300
    return-void
.end method

.method protected setFirstLayout(Z)V
    .locals 0
    .param p1, "firstLayout"    # Z

    .prologue
    .line 925
    return-void
.end method

.method public setMarkerStartOffset(I)V
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 1013
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageIndicator:Lcom/android/launcher3/common/view/PageIndicator;

    if-eqz v0, :cond_0

    .line 1014
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageIndicator:Lcom/android/launcher3/common/view/PageIndicator;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/view/PageIndicator;->setMarkerStartOffset(I)V

    .line 1015
    :cond_0
    return-void
.end method

.method public setMinScale(F)V
    .locals 1
    .param p1, "f"    # F

    .prologue
    .line 382
    iput p1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mMinScale:F

    .line 383
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mUseMinScale:Z

    .line 384
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->requestLayout()V

    .line 385
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 3
    .param p1, "l"    # Landroid/view/View$OnLongClickListener;

    .prologue
    .line 587
    iput-object p1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 588
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getPageCount()I

    move-result v0

    .line 589
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 590
    invoke-virtual {p0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 589
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 592
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 593
    return-void
.end method

.method public setPageIndicatorAnimation(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 2616
    iput-boolean p1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mEnablePageIndicatorAnim:Z

    .line 2617
    return-void
.end method

.method public setPageScrollListener(Lcom/android/launcher3/common/base/view/PagedView$PageScrollListener;)V
    .locals 0
    .param p1, "pageScrollListener"    # Lcom/android/launcher3/common/base/view/PagedView$PageScrollListener;

    .prologue
    .line 2900
    iput-object p1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageScrollListener:Lcom/android/launcher3/common/base/view/PagedView$PageScrollListener;

    .line 2901
    return-void
.end method

.method public setPageSpacing(I)V
    .locals 0
    .param p1, "pageSpacing"    # I

    .prologue
    .line 965
    iput p1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageSpacing:I

    .line 966
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->requestLayout()V

    .line 967
    return-void
.end method

.method public setPageSwitchListener(Lcom/android/launcher3/common/base/view/PagedView$PageSwitchListener;)V
    .locals 3
    .param p1, "pageSwitchListener"    # Lcom/android/launcher3/common/base/view/PagedView$PageSwitchListener;

    .prologue
    .line 430
    iput-object p1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageSwitchListener:Lcom/android/launcher3/common/base/view/PagedView$PageSwitchListener;

    .line 431
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageSwitchListener:Lcom/android/launcher3/common/base/view/PagedView$PageSwitchListener;

    if-eqz v0, :cond_0

    .line 432
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageSwitchListener:Lcom/android/launcher3/common/base/view/PagedView$PageSwitchListener;

    iget v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    invoke-interface {v0, v1, v2}, Lcom/android/launcher3/common/base/view/PagedView$PageSwitchListener;->onPageSwitch(Landroid/view/View;I)V

    .line 434
    :cond_0
    return-void
.end method

.method public setRestorePage(I)V
    .locals 0
    .param p1, "restorePage"    # I

    .prologue
    .line 535
    iput p1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mRestorePage:I

    .line 536
    return-void
.end method

.method public setScaleX(F)V
    .locals 4
    .param p1, "scaleX"    # F

    .prologue
    const/4 v3, 0x1

    .line 389
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setScaleX(F)V

    .line 390
    invoke-virtual {p0, v3}, Lcom/android/launcher3/common/base/view/PagedView;->isReordering(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 391
    iget v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mParentDownMotionX:F

    iget v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mParentDownMotionY:F

    invoke-direct {p0, p0, v1, v2}, Lcom/android/launcher3/common/base/view/PagedView;->mapPointFromParentToView(Landroid/view/View;FF)[F

    move-result-object v0

    .line 392
    .local v0, "p":[F
    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mLastMotionX:F

    .line 393
    aget v1, v0, v3

    iput v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mLastMotionY:F

    .line 394
    invoke-direct {p0}, Lcom/android/launcher3/common/base/view/PagedView;->updateDragViewTranslationDuringDrag()V

    .line 396
    .end local v0    # "p":[F
    :cond_0
    return-void
.end method

.method public setScrollDeterminator(Lcom/android/launcher3/util/event/ScrollDeterminator;)V
    .locals 0
    .param p1, "scrollDeterminator"    # Lcom/android/launcher3/util/event/ScrollDeterminator;

    .prologue
    .line 2924
    iput-object p1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mScrollDeterminator:Lcom/android/launcher3/util/event/ScrollDeterminator;

    .line 2925
    return-void
.end method

.method public setZeroPageMarker(Z)V
    .locals 1
    .param p1, "existZeroPage"    # Z

    .prologue
    .line 1029
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageIndicator:Lcom/android/launcher3/common/view/PageIndicator;

    if-eqz v0, :cond_0

    .line 1030
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageIndicator:Lcom/android/launcher3/common/view/PageIndicator;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/view/PageIndicator;->setZeroPageMarker(Z)V

    .line 1031
    :cond_0
    return-void
.end method

.method protected shouldDrawChild(Landroid/view/View;)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 1132
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showHintPages(Z)V
    .locals 5
    .param p1, "forced"    # Z

    .prologue
    const/4 v4, 0x0

    .line 2676
    if-nez p1, :cond_1

    iget-boolean v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mIsShowingHintPages:Z

    if-eqz v2, :cond_1

    .line 2695
    :cond_0
    :goto_0
    return-void

    .line 2680
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getChildCount()I

    move-result v0

    .line 2682
    .local v0, "pageCount":I
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mScrollState:I

    .line 2683
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mIsShowingHintPages:Z

    .line 2685
    sget-boolean v2, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mHintPageWidth:I

    neg-int v2, v2

    int-to-float v1, v2

    .line 2687
    .local v1, "to":F
    :goto_1
    iget v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    if-eqz v2, :cond_2

    .line 2688
    iget v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lcom/android/launcher3/common/base/view/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2, v4, v1}, Lcom/android/launcher3/common/base/view/PagedView;->animateTranslationPage(Landroid/view/View;FF)V

    .line 2692
    :cond_2
    iget v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    if-ge v2, v0, :cond_0

    .line 2693
    iget v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/launcher3/common/base/view/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    neg-float v3, v1

    invoke-direct {p0, v2, v4, v3}, Lcom/android/launcher3/common/base/view/PagedView;->animateTranslationPage(Landroid/view/View;FF)V

    goto :goto_0

    .line 2685
    .end local v1    # "to":F
    :cond_3
    iget v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mHintPageWidth:I

    int-to-float v1, v2

    goto :goto_1
.end method

.method protected snapToDestination()V
    .locals 2

    .prologue
    .line 2035
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getPageNearestToCenterOfScreen()I

    move-result v0

    sget v1, Lcom/android/launcher3/common/base/view/PagedView;->PAGE_SNAP_ANIMATION_DURATION:I

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->snapToPage(II)V

    .line 2036
    return-void
.end method

.method public snapToPage(I)V
    .locals 1
    .param p1, "whichPage"    # I

    .prologue
    .line 2093
    sget v0, Lcom/android/launcher3/common/base/view/PagedView;->PAGE_SNAP_ANIMATION_DURATION:I

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/common/base/view/PagedView;->snapToPage(II)V

    .line 2094
    return-void
.end method

.method public snapToPage(II)V
    .locals 2
    .param p1, "whichPage"    # I
    .param p2, "duration"    # I

    .prologue
    .line 2101
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->snapToPage(IIZLandroid/animation/TimeInterpolator;)V

    .line 2102
    return-void
.end method

.method protected snapToPage(III)V
    .locals 6
    .param p1, "whichPage"    # I
    .param p2, "delta"    # I
    .param p3, "duration"    # I

    .prologue
    .line 2118
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/common/base/view/PagedView;->snapToPage(IIIZLandroid/animation/TimeInterpolator;)V

    .line 2119
    return-void
.end method

.method protected snapToPage(IIIZLandroid/animation/TimeInterpolator;)V
    .locals 8
    .param p1, "whichPage"    # I
    .param p2, "delta"    # I
    .param p3, "duration"    # I
    .param p4, "immediate"    # Z
    .param p5, "interpolator"    # Landroid/animation/TimeInterpolator;

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 2126
    invoke-direct {p0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->validateNewPage(I)I

    move-result p1

    .line 2127
    iput p1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mNextPage:I

    .line 2128
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getFocusedChild()Landroid/view/View;

    move-result-object v6

    .line 2129
    .local v6, "focusedChild":Landroid/view/View;
    if-eqz v6, :cond_0

    iget v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    if-eq p1, v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    .line 2130
    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/base/view/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    if-ne v6, v0, :cond_0

    .line 2131
    invoke-virtual {v6}, Landroid/view/View;->clearFocus()V

    .line 2134
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->pageBeginMoving()V

    .line 2135
    invoke-virtual {p0, p3}, Lcom/android/launcher3/common/base/view/PagedView;->awakenScrollBars(I)Z

    .line 2136
    if-eqz p4, :cond_6

    .line 2137
    const/4 p3, 0x0

    .line 2142
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mScroller:Lcom/android/launcher3/common/base/PageScroller;

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/PageScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2143
    invoke-direct {p0, v2}, Lcom/android/launcher3/common/base/view/PagedView;->abortScrollerAnimation(Z)V

    .line 2146
    :cond_2
    if-eqz p5, :cond_7

    .line 2147
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mScroller:Lcom/android/launcher3/common/base/PageScroller;

    invoke-virtual {v0, p5}, Lcom/android/launcher3/common/base/PageScroller;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2152
    :goto_1
    iget-boolean v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mIsShowingHintPages:Z

    if-eqz v0, :cond_4

    .line 2153
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPullingPagesAnim:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPullingPagesAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2154
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPullingPagesAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 2156
    :cond_3
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mScrollState:I

    .line 2157
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->resetPulledPages()V

    .line 2158
    invoke-direct {p0}, Lcom/android/launcher3/common/base/view/PagedView;->setHintPageTranslation()V

    .line 2161
    :cond_4
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mScroller:Lcom/android/launcher3/common/base/PageScroller;

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getScrollX()I

    move-result v1

    move v3, p2

    move v4, v2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/common/base/PageScroller;->startScroll(IIIII)V

    .line 2163
    invoke-direct {p0}, Lcom/android/launcher3/common/base/view/PagedView;->updatePageIndicator()V

    .line 2166
    if-eqz p4, :cond_5

    .line 2167
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->computeScroll()V

    .line 2168
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->pageEndMoving()V

    .line 2170
    :cond_5
    iput-boolean v7, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDeferLoadAssociatedPagesUntilScrollCompletes:Z

    .line 2172
    iput-boolean v7, p0, Lcom/android/launcher3/common/base/view/PagedView;->mForceScreenScrolled:Z

    .line 2173
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->invalidate()V

    .line 2174
    return-void

    .line 2138
    :cond_6
    if-nez p3, :cond_1

    .line 2139
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p3

    goto :goto_0

    .line 2149
    :cond_7
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mScroller:Lcom/android/launcher3/common/base/PageScroller;

    iget-object v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDefaultInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/base/PageScroller;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_1
.end method

.method public snapToPage(IILandroid/animation/TimeInterpolator;)V
    .locals 1
    .param p1, "whichPage"    # I
    .param p2, "duration"    # I
    .param p3, "interpolator"    # Landroid/animation/TimeInterpolator;

    .prologue
    .line 2105
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/launcher3/common/base/view/PagedView;->snapToPage(IIZLandroid/animation/TimeInterpolator;)V

    .line 2106
    return-void
.end method

.method protected snapToPage(IIZLandroid/animation/TimeInterpolator;)V
    .locals 7
    .param p1, "whichPage"    # I
    .param p2, "duration"    # I
    .param p3, "immediate"    # Z
    .param p4, "interpolator"    # Landroid/animation/TimeInterpolator;

    .prologue
    .line 2110
    invoke-direct {p0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->validateNewPage(I)I

    move-result p1

    .line 2112
    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->getScrollForPage(I)I

    move-result v6

    .line 2113
    .local v6, "newX":I
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getScrollX()I

    move-result v0

    sub-int v2, v6, v0

    .local v2, "delta":I
    move-object v0, p0

    move v1, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    .line 2114
    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/common/base/view/PagedView;->snapToPage(IIIZLandroid/animation/TimeInterpolator;)V

    .line 2115
    return-void
.end method

.method public snapToPageImmediately(I)V
    .locals 3
    .param p1, "whichPage"    # I

    .prologue
    .line 2097
    sget v0, Lcom/android/launcher3/common/base/view/PagedView;->PAGE_SNAP_ANIMATION_DURATION:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/launcher3/common/base/view/PagedView;->snapToPage(IIZLandroid/animation/TimeInterpolator;)V

    .line 2098
    return-void
.end method

.method public snapToPageSALoggging(Z)V
    .locals 0
    .param p1, "isPageIndicator"    # Z

    .prologue
    .line 2122
    return-void
.end method

.method protected snapToPageWithVelocity(II)V
    .locals 9
    .param p1, "whichPage"    # I
    .param p2, "velocity"    # I

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    .line 2059
    invoke-direct {p0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->validateNewPage(I)I

    move-result p1

    .line 2060
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getViewportWidth()I

    move-result v6

    div-int/lit8 v4, v6, 0x2

    .line 2062
    .local v4, "halfScreenSize":I
    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->getScrollForPage(I)I

    move-result v5

    .line 2063
    .local v5, "newX":I
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getScrollX()I

    move-result v6

    sub-int v0, v5, v6

    .line 2064
    .local v0, "delta":I
    const/4 v3, 0x0

    .line 2066
    .local v3, "duration":I
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v6

    iget v7, p0, Lcom/android/launcher3/common/base/view/PagedView;->mMinFlingVelocity:I

    if-ge v6, v7, :cond_0

    .line 2069
    sget v6, Lcom/android/launcher3/common/base/view/PagedView;->PAGE_SNAP_ANIMATION_DURATION:I

    invoke-virtual {p0, p1, v6}, Lcom/android/launcher3/common/base/view/PagedView;->snapToPage(II)V

    .line 2090
    :goto_0
    return-void

    .line 2077
    :cond_0
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v8

    mul-int/lit8 v7, v4, 0x2

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-static {v8, v6}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 2078
    .local v2, "distanceRatio":F
    int-to-float v6, v4

    int-to-float v7, v4

    .line 2079
    invoke-direct {p0, v2}, Lcom/android/launcher3/common/base/view/PagedView;->distanceInfluenceForSnapDuration(F)F

    move-result v8

    mul-float/2addr v7, v8

    add-float v1, v6, v7

    .line 2081
    .local v1, "distance":F
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    .line 2082
    iget v6, p0, Lcom/android/launcher3/common/base/view/PagedView;->mMinSnapVelocity:I

    invoke-static {v6, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 2087
    const/high16 v6, 0x447a0000    # 1000.0f

    int-to-float v7, p2

    div-float v7, v1, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    mul-int/lit8 v3, v6, 0x4

    .line 2089
    invoke-virtual {p0, p1, v0, v3}, Lcom/android/launcher3/common/base/view/PagedView;->snapToPage(III)V

    goto :goto_0
.end method

.method public startReordering(Landroid/view/View;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v5, 0x3f933333    # 1.15f

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2303
    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 2305
    .local v0, "dragViewIndex":I
    iget v3, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTouchState:I

    if-nez v3, :cond_0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    :cond_0
    move v1, v2

    .line 2322
    :goto_0
    return v1

    .line 2307
    :cond_1
    iget-object v3, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTempVisiblePagesRange:[I

    aput v2, v3, v2

    .line 2308
    iget-object v3, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getPageCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    aput v4, v3, v1

    .line 2309
    iput-boolean v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mReorderingStarted:Z

    .line 2312
    iget-object v3, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTempVisiblePagesRange:[I

    aget v3, v3, v2

    if-gt v3, v0, :cond_2

    iget-object v3, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTempVisiblePagesRange:[I

    aget v3, v3, v1

    if-gt v0, v3, :cond_2

    .line 2315
    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/base/view/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDragView:Landroid/view/View;

    .line 2316
    iget-object v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2317
    iget-object v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDragViewBaselineLeft:F

    .line 2318
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getPageNearestToCenterOfScreen()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/launcher3/common/base/view/PagedView;->snapToPage(I)V

    .line 2319
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->onStartReordering()V

    goto :goto_0

    :cond_2
    move v1, v2

    .line 2322
    goto :goto_0
.end method

.method public supportWhiteBg()Z
    .locals 1

    .prologue
    .line 2885
    const/4 v0, 0x1

    return v0
.end method

.method protected syncPageItems(IZ)V
    .locals 0
    .param p1, "page"    # I
    .param p2, "immediate"    # Z

    .prologue
    .line 2491
    return-void
.end method

.method protected syncPages()V
    .locals 0

    .prologue
    .line 2488
    return-void
.end method

.method protected updateCurrentPageScroll()V
    .locals 3

    .prologue
    .line 469
    const/4 v0, 0x0

    .line 470
    .local v0, "newX":I
    iget v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getPageCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 471
    iget v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->getScrollForPage(I)I

    move-result v0

    .line 473
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->scrollTo(II)V

    .line 474
    iget-object v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mScroller:Lcom/android/launcher3/common/base/PageScroller;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/common/base/PageScroller;->setFinalX(I)V

    .line 475
    invoke-direct {p0}, Lcom/android/launcher3/common/base/view/PagedView;->forceFinishScroller()V

    .line 476
    return-void
.end method

.method public updateMarker(ILcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "marker"    # Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;

    .prologue
    .line 1024
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageIndicator:Lcom/android/launcher3/common/view/PageIndicator;

    if-eqz v0, :cond_0

    .line 1025
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageIndicator:Lcom/android/launcher3/common/view/PageIndicator;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/common/view/PageIndicator;->updateMarker(ILcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;)V

    .line 1026
    :cond_0
    return-void
.end method

.method public updateOnlyCurrentPage(Z)V
    .locals 0
    .param p1, "updateOnlyCurrentPage"    # Z

    .prologue
    .line 2961
    iput-boolean p1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mUpdateOnlyCurrentPage:Z

    .line 2962
    return-void
.end method

.method protected updatePageTransform(Landroid/view/View;II)V
    .locals 7
    .param p1, "page"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "screenCenter"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 1263
    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->resetTransitionEffect(Landroid/view/View;)V

    .line 1265
    invoke-virtual {p0, p3, p1, p2}, Lcom/android/launcher3/common/base/view/PagedView;->getScrollProgress(ILandroid/view/View;I)F

    move-result v3

    .line 1266
    .local v3, "scrollProgress":F
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getChildCount()I

    move-result v2

    .line 1268
    .local v2, "pageCount":I
    sget-boolean v5, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v5, :cond_3

    add-int/lit8 v0, v2, -0x1

    .line 1269
    .local v0, "overScrollLeftIndex":I
    :goto_0
    sget-boolean v5, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v5, :cond_4

    move v1, v4

    .line 1271
    .local v1, "overScrollRightIndex":I
    :goto_1
    if-ne p2, v0, :cond_0

    cmpg-float v4, v3, v6

    if-ltz v4, :cond_1

    :cond_0
    if-ne p2, v1, :cond_2

    cmpl-float v4, v3, v6

    if-lez v4, :cond_2

    .line 1273
    :cond_1
    new-instance v4, Lcom/android/launcher3/util/DvfsUtil;

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/launcher3/util/DvfsUtil;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4}, Lcom/android/launcher3/util/DvfsUtil;->boostOneFrame()V

    .line 1274
    invoke-direct {p0, p1, v3, v2}, Lcom/android/launcher3/common/base/view/PagedView;->overscrollEffect(Landroid/view/View;FI)V

    .line 1276
    :cond_2
    return-void

    .end local v0    # "overScrollLeftIndex":I
    .end local v1    # "overScrollRightIndex":I
    :cond_3
    move v0, v4

    .line 1268
    goto :goto_0

    .line 1269
    .restart local v0    # "overScrollLeftIndex":I
    :cond_4
    add-int/lit8 v1, v2, -0x1

    goto :goto_1
.end method
