.class public Lcom/android/systemui/stackdivider/DividerView;
.super Landroid/widget/FrameLayout;
.source "DividerView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/stackdivider/DividerView$-android_animation_ValueAnimator_getFlingAnimator_int_position_com_android_internal_policy_DividerSnapAlgorithm$SnapTarget_snapTarget_long_endDelay_LambdaImpl0;,
        Lcom/android/systemui/stackdivider/DividerView$-void_closeTask__LambdaImpl0;,
        Lcom/android/systemui/stackdivider/DividerView$1;,
        Lcom/android/systemui/stackdivider/DividerView$2;,
        Lcom/android/systemui/stackdivider/DividerView$GuideView;,
        Lcom/android/systemui/stackdivider/DividerView$IFocusedStackWork;,
        Lcom/android/systemui/stackdivider/DividerView$KnoxBadgeReceiver;
    }
.end annotation


# static fields
.field private static final DIM_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private static final IME_ADJUST_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final SLOWDOWN_INTERPOLATOR:Landroid/view/animation/PathInterpolator;


# instance fields
.field private adjStartPosition:Z

.field private mAdjustedForIme:Z

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBackground:Landroid/view/View;

.field private mBackgroundLifted:Z

.field private mCurrentAnimator:Landroid/animation/ValueAnimator;

.field private mDimming:Z

.field private mDismissEndPosition:I

.field private mDismissStartPosition:I

.field private mDisplayHeight:I

.field private final mDisplayRect:Landroid/graphics/Rect;

.field private mDisplayWidth:I

.field private mDissmissEnd:Z

.field private mDividerFlag:I

.field private mDividerInsets:I

.field private mDividerSize:I

.field private mDividerWindowWidth:I

.field private mDockSide:I

.field private final mDockedInsetRect:Landroid/graphics/Rect;

.field private final mDockedRect:Landroid/graphics/Rect;

.field private mDockedStackMinimized:Z

.field private final mDockedTaskRect:Landroid/graphics/Rect;

.field private mDockedTopTaskEvent:Z

.field private mEntranceAnimationRunning:Z

.field private mExitAnimationRunning:Z

.field private mExitStartPosition:I

.field private mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

.field private mFocusedFrameView:Lcom/android/systemui/stackdivider/FocusedFrameView;

.field private final mFocusedStackSnapTargetMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;",
            ">;"
        }
    .end annotation
.end field

.field private mFocusedStackWork:Lcom/android/systemui/stackdivider/DividerView$IFocusedStackWork;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGrowRecents:Z

.field private mGuideHeight:I

.field private final mGuideRect:Landroid/graphics/Rect;

.field private mGuideView:Lcom/android/systemui/stackdivider/DividerView$GuideView;

.field private mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

.field private final mHandleDelegate:Landroid/view/View$AccessibilityDelegate;

.field private final mHandler:Landroid/os/Handler;

.field private mHasAutoResizingSnapTarget:Z

.field private mIgnoreAutoResize:Z

.field private mIsRecentsStartingFromSplit:Z

.field private mKnoxBadgeReceiver:Lcom/android/systemui/stackdivider/DividerView$KnoxBadgeReceiver;

.field private mLastOrientation:I

.field private final mLastResizeRect:Landroid/graphics/Rect;

.field private mLiftBackgroundScale:F

.field private mLongPressEntraceAnimDuration:I

.field private final mMWm:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;

.field private mMaximizeAnimationRunning:Z

.field private mMaximizeGuideView:Z

.field private mMinimizedShadow:Lcom/android/systemui/stackdivider/MinimizedDockShadow;

.field private mMoving:Z

.field private final mOriginalDockedTaskRect:Landroid/graphics/Rect;

.field private final mOriginalFullScreenTaskRect:Landroid/graphics/Rect;

.field private final mOtherInsetRect:Landroid/graphics/Rect;

.field private final mOtherRect:Landroid/graphics/Rect;

.field private final mOtherTaskRect:Landroid/graphics/Rect;

.field private final mResetBackgroundRunnable:Ljava/lang/Runnable;

.field private mResizeTaskToStackBounds:Z

.field private mScrollGuideViewAnimator:Landroid/animation/ValueAnimator;

.field private mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

.field private mSnapGuideVisible:Z

.field mSnapModeRunning:Z

.field private final mStableInsets:Landroid/graphics/Rect;

.field private mStartPosition:I

.field private mStartX:I

.field private mStartY:I

.field private mState:Lcom/android/systemui/stackdivider/DividerState;

.field private mSure:Z

.field private final mTempInt2:[I

.field private mToggleSplitScreen:Z

.field private mTouchElevation:I

.field private mTouchSlop:I

.field private mUserId:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mWindowManager:Lcom/android/systemui/stackdivider/DividerWindowManager;

.field private final mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

.field private personaBadge:Landroid/graphics/drawable/Drawable;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/stackdivider/DividerView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mAdjustedForIme:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/stackdivider/DividerView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/stackdivider/DividerView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/stackdivider/DividerView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHasAutoResizingSnapTarget:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/systemui/stackdivider/DividerView;)Lcom/android/internal/policy/DividerSnapAlgorithm;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/stackdivider/DividerView;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mStartPosition:I

    return v0
.end method

.method static synthetic -get6(Lcom/android/systemui/stackdivider/DividerView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mToggleSplitScreen:Z

    return v0
.end method

.method static synthetic -get7(Lcom/android/systemui/stackdivider/DividerView;)Lcom/android/systemui/stackdivider/WindowManagerProxy;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/stackdivider/DividerView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/DividerView;->mMaximizeGuideView:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/stackdivider/DividerView;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/stackdivider/DividerView;->mUserId:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/stackdivider/DividerView;II)I
    .locals 1
    .param p1, "touchX"    # I
    .param p2, "touchY"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/stackdivider/DividerView;->calculatePosition(II)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/stackdivider/DividerView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->completeToggleSplitScreen()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/stackdivider/DividerView;II)V
    .locals 0
    .param p1, "positionX"    # I
    .param p2, "positionY"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/stackdivider/DividerView;->drawGuideView(II)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/stackdivider/DividerView;Landroid/graphics/Point;Z)V
    .locals 0
    .param p1, "point"    # Landroid/graphics/Point;
    .param p2, "anim"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/stackdivider/DividerView;->hideGuideView(Landroid/graphics/Point;Z)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/systemui/stackdivider/DividerView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->playTouchSound()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/systemui/stackdivider/DividerView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->resetBackground()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/high16 v1, 0x3f000000    # 0.5f

    const/high16 v5, 0x3f800000    # 1.0f

    .line 160
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v1, v5, v1, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 159
    sput-object v0, Lcom/android/systemui/stackdivider/DividerView;->SLOWDOWN_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 162
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e6b851f    # 0.23f

    const v2, 0x3f5eb852    # 0.87f

    const v3, 0x3f051eb8    # 0.52f

    const v4, -0x421eb852    # -0.11f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 161
    sput-object v0, Lcom/android/systemui/stackdivider/DividerView;->DIM_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 164
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e4ccccd    # 0.2f

    const/4 v2, 0x0

    const v3, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 163
    sput-object v0, Lcom/android/systemui/stackdivider/DividerView;->IME_ADJUST_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 135
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 329
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 173
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mTempInt2:[I

    .line 187
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    .line 188
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    .line 189
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    .line 190
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mOtherRect:Landroid/graphics/Rect;

    .line 191
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedInsetRect:Landroid/graphics/Rect;

    .line 192
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mOtherInsetRect:Landroid/graphics/Rect;

    .line 193
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mLastResizeRect:Landroid/graphics/Rect;

    .line 194
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayRect:Landroid/graphics/Rect;

    .line 195
    invoke-static {}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getInstance()Lcom/android/systemui/stackdivider/WindowManagerProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    .line 200
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mStableInsets:Landroid/graphics/Rect;

    .line 211
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandler:Landroid/os/Handler;

    .line 214
    iput-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedFrameView:Lcom/android/systemui/stackdivider/FocusedFrameView;

    .line 215
    iput-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mAudioManager:Landroid/media/AudioManager;

    .line 216
    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mHasAutoResizingSnapTarget:Z

    .line 217
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mOriginalDockedTaskRect:Landroid/graphics/Rect;

    .line 218
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mOriginalFullScreenTaskRect:Landroid/graphics/Rect;

    .line 220
    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mMaximizeAnimationRunning:Z

    .line 221
    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapGuideVisible:Z

    .line 223
    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mResizeTaskToStackBounds:Z

    .line 224
    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mToggleSplitScreen:Z

    .line 225
    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDissmissEnd:Z

    .line 226
    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDimming:Z

    .line 227
    iput v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mLastOrientation:I

    .line 228
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedStackSnapTargetMap:Landroid/util/SparseArray;

    .line 229
    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTopTaskEvent:Z

    .line 230
    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mIsRecentsStartingFromSplit:Z

    .line 231
    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mIgnoreAutoResize:Z

    .line 235
    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mMaximizeGuideView:Z

    .line 239
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mGuideRect:Landroid/graphics/Rect;

    .line 248
    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapModeRunning:Z

    .line 249
    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->adjStartPosition:Z

    .line 251
    const v0, 0x3fe66666    # 1.8f

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mLiftBackgroundScale:F

    .line 254
    new-instance v0, Lcom/android/systemui/stackdivider/DividerView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/DividerView$1;-><init>(Lcom/android/systemui/stackdivider/DividerView;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandleDelegate:Landroid/view/View$AccessibilityDelegate;

    .line 321
    new-instance v0, Lcom/android/systemui/stackdivider/DividerView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/DividerView$2;-><init>(Lcom/android/systemui/stackdivider/DividerView;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mResetBackgroundRunnable:Ljava/lang/Runnable;

    .line 352
    new-instance v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;

    invoke-direct {v0}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mMWm:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;

    .line 2301
    iput-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mKnoxBadgeReceiver:Lcom/android/systemui/stackdivider/DividerView$KnoxBadgeReceiver;

    .line 2315
    iput v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mUserId:I

    .line 2327
    iput-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->personaBadge:Landroid/graphics/drawable/Drawable;

    .line 330
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->registerKnoxBadgeReceiver()V

    .line 328
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 334
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 173
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mTempInt2:[I

    .line 187
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    .line 188
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    .line 189
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    .line 190
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mOtherRect:Landroid/graphics/Rect;

    .line 191
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedInsetRect:Landroid/graphics/Rect;

    .line 192
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mOtherInsetRect:Landroid/graphics/Rect;

    .line 193
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mLastResizeRect:Landroid/graphics/Rect;

    .line 194
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayRect:Landroid/graphics/Rect;

    .line 195
    invoke-static {}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getInstance()Lcom/android/systemui/stackdivider/WindowManagerProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    .line 200
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mStableInsets:Landroid/graphics/Rect;

    .line 211
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandler:Landroid/os/Handler;

    .line 214
    iput-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedFrameView:Lcom/android/systemui/stackdivider/FocusedFrameView;

    .line 215
    iput-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mAudioManager:Landroid/media/AudioManager;

    .line 216
    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mHasAutoResizingSnapTarget:Z

    .line 217
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mOriginalDockedTaskRect:Landroid/graphics/Rect;

    .line 218
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mOriginalFullScreenTaskRect:Landroid/graphics/Rect;

    .line 220
    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mMaximizeAnimationRunning:Z

    .line 221
    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapGuideVisible:Z

    .line 223
    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mResizeTaskToStackBounds:Z

    .line 224
    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mToggleSplitScreen:Z

    .line 225
    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDissmissEnd:Z

    .line 226
    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDimming:Z

    .line 227
    iput v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mLastOrientation:I

    .line 228
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedStackSnapTargetMap:Landroid/util/SparseArray;

    .line 229
    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTopTaskEvent:Z

    .line 230
    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mIsRecentsStartingFromSplit:Z

    .line 231
    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mIgnoreAutoResize:Z

    .line 235
    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mMaximizeGuideView:Z

    .line 239
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mGuideRect:Landroid/graphics/Rect;

    .line 248
    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapModeRunning:Z

    .line 249
    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->adjStartPosition:Z

    .line 251
    const v0, 0x3fe66666    # 1.8f

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mLiftBackgroundScale:F

    .line 254
    new-instance v0, Lcom/android/systemui/stackdivider/DividerView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/DividerView$1;-><init>(Lcom/android/systemui/stackdivider/DividerView;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandleDelegate:Landroid/view/View$AccessibilityDelegate;

    .line 321
    new-instance v0, Lcom/android/systemui/stackdivider/DividerView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/DividerView$2;-><init>(Lcom/android/systemui/stackdivider/DividerView;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mResetBackgroundRunnable:Ljava/lang/Runnable;

    .line 352
    new-instance v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;

    invoke-direct {v0}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mMWm:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;

    .line 2301
    iput-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mKnoxBadgeReceiver:Lcom/android/systemui/stackdivider/DividerView$KnoxBadgeReceiver;

    .line 2315
    iput v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mUserId:I

    .line 2327
    iput-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->personaBadge:Landroid/graphics/drawable/Drawable;

    .line 335
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->registerKnoxBadgeReceiver()V

    .line 333
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 339
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 173
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mTempInt2:[I

    .line 187
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    .line 188
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    .line 189
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    .line 190
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mOtherRect:Landroid/graphics/Rect;

    .line 191
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedInsetRect:Landroid/graphics/Rect;

    .line 192
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mOtherInsetRect:Landroid/graphics/Rect;

    .line 193
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mLastResizeRect:Landroid/graphics/Rect;

    .line 194
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayRect:Landroid/graphics/Rect;

    .line 195
    invoke-static {}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getInstance()Lcom/android/systemui/stackdivider/WindowManagerProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    .line 200
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mStableInsets:Landroid/graphics/Rect;

    .line 211
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandler:Landroid/os/Handler;

    .line 214
    iput-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedFrameView:Lcom/android/systemui/stackdivider/FocusedFrameView;

    .line 215
    iput-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mAudioManager:Landroid/media/AudioManager;

    .line 216
    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mHasAutoResizingSnapTarget:Z

    .line 217
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mOriginalDockedTaskRect:Landroid/graphics/Rect;

    .line 218
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mOriginalFullScreenTaskRect:Landroid/graphics/Rect;

    .line 220
    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mMaximizeAnimationRunning:Z

    .line 221
    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapGuideVisible:Z

    .line 223
    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mResizeTaskToStackBounds:Z

    .line 224
    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mToggleSplitScreen:Z

    .line 225
    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDissmissEnd:Z

    .line 226
    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDimming:Z

    .line 227
    iput v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mLastOrientation:I

    .line 228
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedStackSnapTargetMap:Landroid/util/SparseArray;

    .line 229
    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTopTaskEvent:Z

    .line 230
    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mIsRecentsStartingFromSplit:Z

    .line 231
    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mIgnoreAutoResize:Z

    .line 235
    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mMaximizeGuideView:Z

    .line 239
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mGuideRect:Landroid/graphics/Rect;

    .line 248
    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapModeRunning:Z

    .line 249
    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->adjStartPosition:Z

    .line 251
    const v0, 0x3fe66666    # 1.8f

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mLiftBackgroundScale:F

    .line 254
    new-instance v0, Lcom/android/systemui/stackdivider/DividerView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/DividerView$1;-><init>(Lcom/android/systemui/stackdivider/DividerView;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandleDelegate:Landroid/view/View$AccessibilityDelegate;

    .line 321
    new-instance v0, Lcom/android/systemui/stackdivider/DividerView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/DividerView$2;-><init>(Lcom/android/systemui/stackdivider/DividerView;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mResetBackgroundRunnable:Ljava/lang/Runnable;

    .line 352
    new-instance v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;

    invoke-direct {v0}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mMWm:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;

    .line 2301
    iput-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mKnoxBadgeReceiver:Lcom/android/systemui/stackdivider/DividerView$KnoxBadgeReceiver;

    .line 2315
    iput v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mUserId:I

    .line 2327
    iput-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->personaBadge:Landroid/graphics/drawable/Drawable;

    .line 340
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->registerKnoxBadgeReceiver()V

    .line 338
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 345
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 173
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mTempInt2:[I

    .line 187
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    .line 188
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    .line 189
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    .line 190
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mOtherRect:Landroid/graphics/Rect;

    .line 191
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedInsetRect:Landroid/graphics/Rect;

    .line 192
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mOtherInsetRect:Landroid/graphics/Rect;

    .line 193
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mLastResizeRect:Landroid/graphics/Rect;

    .line 194
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayRect:Landroid/graphics/Rect;

    .line 195
    invoke-static {}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getInstance()Lcom/android/systemui/stackdivider/WindowManagerProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    .line 200
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mStableInsets:Landroid/graphics/Rect;

    .line 211
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandler:Landroid/os/Handler;

    .line 214
    iput-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedFrameView:Lcom/android/systemui/stackdivider/FocusedFrameView;

    .line 215
    iput-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mAudioManager:Landroid/media/AudioManager;

    .line 216
    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mHasAutoResizingSnapTarget:Z

    .line 217
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mOriginalDockedTaskRect:Landroid/graphics/Rect;

    .line 218
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mOriginalFullScreenTaskRect:Landroid/graphics/Rect;

    .line 220
    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mMaximizeAnimationRunning:Z

    .line 221
    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapGuideVisible:Z

    .line 223
    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mResizeTaskToStackBounds:Z

    .line 224
    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mToggleSplitScreen:Z

    .line 225
    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDissmissEnd:Z

    .line 226
    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDimming:Z

    .line 227
    iput v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mLastOrientation:I

    .line 228
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedStackSnapTargetMap:Landroid/util/SparseArray;

    .line 229
    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTopTaskEvent:Z

    .line 230
    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mIsRecentsStartingFromSplit:Z

    .line 231
    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mIgnoreAutoResize:Z

    .line 235
    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mMaximizeGuideView:Z

    .line 239
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mGuideRect:Landroid/graphics/Rect;

    .line 248
    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapModeRunning:Z

    .line 249
    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->adjStartPosition:Z

    .line 251
    const v0, 0x3fe66666    # 1.8f

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mLiftBackgroundScale:F

    .line 254
    new-instance v0, Lcom/android/systemui/stackdivider/DividerView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/DividerView$1;-><init>(Lcom/android/systemui/stackdivider/DividerView;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandleDelegate:Landroid/view/View$AccessibilityDelegate;

    .line 321
    new-instance v0, Lcom/android/systemui/stackdivider/DividerView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/DividerView$2;-><init>(Lcom/android/systemui/stackdivider/DividerView;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mResetBackgroundRunnable:Ljava/lang/Runnable;

    .line 352
    new-instance v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;

    invoke-direct {v0}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mMWm:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;

    .line 2301
    iput-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mKnoxBadgeReceiver:Lcom/android/systemui/stackdivider/DividerView$KnoxBadgeReceiver;

    .line 2315
    iput v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mUserId:I

    .line 2327
    iput-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->personaBadge:Landroid/graphics/drawable/Drawable;

    .line 346
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->registerKnoxBadgeReceiver()V

    .line 344
    return-void
.end method

.method private EnterFreeformTask()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 2203
    sget-boolean v3, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_SUPPORT:Z

    if-eqz v3, :cond_1

    .line 2204
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->getDividerButtonsTarget()I

    move-result v1

    .line 2205
    .local v1, "topLeft":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    .line 2206
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-direct {p0, v2}, Lcom/android/systemui/stackdivider/DividerView;->adjustFocusForClose(Z)I

    move-result v0

    .line 2207
    .local v0, "adjustedFocus":I
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mMWm:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;

    invoke-virtual {v2, v0}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->enterFreeformTask(I)V

    .line 2202
    .end local v0    # "adjustedFocus":I
    .end local v1    # "topLeft":I
    :cond_1
    return-void
.end method

.method private adjustFocusForClose(Z)I
    .locals 5
    .param p1, "topLeft"    # Z

    .prologue
    .line 2236
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 2237
    .local v1, "iAm":Landroid/app/IActivityManager;
    iget v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 2238
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->updateDockSide()V

    .line 2241
    :cond_0
    iget v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-static {v3}, Lcom/android/systemui/stackdivider/DividerView;->dockSideTopLeft(I)Z

    move-result v3

    if-ne v3, p1, :cond_1

    .line 2242
    const/4 v2, 0x1

    .line 2244
    .local v2, "stackId":I
    :goto_0
    :try_start_0
    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->setFocusedStack(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2248
    :goto_1
    return v2

    .line 2242
    .end local v2    # "stackId":I
    :cond_1
    const/4 v2, 0x3

    .restart local v2    # "stackId":I
    goto :goto_0

    .line 2245
    :catch_0
    move-exception v0

    .line 2246
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method private alignBottomRight(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 6
    .param p1, "containingRect"    # Landroid/graphics/Rect;
    .param p2, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 1480
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 1481
    .local v1, "width":I
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 1483
    .local v0, "height":I
    iget-boolean v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mHasAutoResizingSnapTarget:Z

    if-eqz v2, :cond_1

    .line 1486
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1488
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v0

    .line 1489
    iget v4, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v1

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    .line 1488
    invoke-virtual {p2, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 1479
    :goto_0
    return-void

    .line 1492
    :cond_0
    iget v2, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v1

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, p1, Landroid/graphics/Rect;->right:I

    .line 1493
    iget v5, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v0

    .line 1492
    invoke-virtual {p2, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 1497
    :cond_1
    iget v2, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v1

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v0

    .line 1498
    iget v4, p1, Landroid/graphics/Rect;->right:I

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    .line 1497
    invoke-virtual {p2, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method private alignTopLeft(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 6
    .param p1, "containingRect"    # Landroid/graphics/Rect;
    .param p2, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 1473
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 1474
    .local v1, "width":I
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 1475
    .local v0, "height":I
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    .line 1476
    iget v4, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v1

    iget v5, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v0

    .line 1475
    invoke-virtual {p2, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 1472
    return-void
.end method

.method private applyDismissingParallax(Landroid/graphics/Rect;ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;II)V
    .locals 10
    .param p1, "taskRect"    # Landroid/graphics/Rect;
    .param p2, "dockSide"    # I
    .param p3, "snapTarget"    # Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    .param p4, "position"    # I
    .param p5, "taskPosition"    # I

    .prologue
    const/4 v9, 0x0

    .line 1701
    const/high16 v7, 0x3f800000    # 1.0f

    .line 1702
    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v8, p4}, Lcom/android/internal/policy/DividerSnapAlgorithm;->calculateDismissingFraction(I)F

    move-result v8

    .line 1701
    invoke-static {v9, v8}, Ljava/lang/Math;->max(FF)F

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 1703
    .local v1, "fraction":F
    const/4 v0, 0x0

    .line 1704
    .local v0, "dismissTarget":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    const/4 v4, 0x0

    .line 1705
    .local v4, "splitTarget":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    const/4 v5, 0x0

    .line 1706
    .local v5, "start":I
    iget-object v7, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v7}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getLastSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v7

    iget v7, v7, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    if-gt p4, v7, :cond_4

    .line 1707
    invoke-static {p2}, Lcom/android/systemui/stackdivider/DividerView;->dockSideTopLeft(I)Z

    move-result v7

    .line 1706
    if-eqz v7, :cond_4

    .line 1708
    iget-object v7, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v7}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissStartTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    .line 1709
    .local v0, "dismissTarget":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    iget-object v7, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v7}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getFirstSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v4

    .line 1711
    .local v4, "splitTarget":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1714
    :cond_0
    move v5, p5

    .line 1723
    .end local v0    # "dismissTarget":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    .end local v4    # "splitTarget":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    cmpl-float v7, v1, v9

    if-lez v7, :cond_2

    .line 1724
    invoke-static {v4, p4, p2}, Lcom/android/systemui/stackdivider/DividerView;->isDismissing(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;II)Z

    move-result v7

    .line 1723
    if-eqz v7, :cond_2

    .line 1725
    invoke-static {v1, p2}, Lcom/android/systemui/stackdivider/DividerView;->calculateParallaxDismissingFraction(FI)F

    move-result v1

    .line 1726
    int-to-float v7, v5

    .line 1727
    iget v8, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    iget v9, v4, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    mul-float/2addr v8, v1

    .line 1726
    add-float/2addr v7, v8

    float-to-int v3, v7

    .line 1728
    .local v3, "offsetPosition":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v6

    .line 1729
    .local v6, "width":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 1730
    .local v2, "height":I
    packed-switch p2, :pswitch_data_0

    .line 1700
    .end local v2    # "height":I
    .end local v3    # "offsetPosition":I
    .end local v6    # "width":I
    :cond_2
    :goto_1
    return-void

    .line 1711
    .restart local v0    # "dismissTarget":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    .restart local v4    # "splitTarget":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    :cond_3
    iget-boolean v7, p0, Lcom/android/systemui/stackdivider/DividerView;->mHasAutoResizingSnapTarget:Z

    if-eqz v7, :cond_0

    .line 1712
    iget v5, v4, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    goto :goto_0

    .line 1717
    .local v0, "dismissTarget":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    .local v4, "splitTarget":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    :cond_4
    iget-object v7, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v7}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getLastSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v7

    iget v7, v7, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    if-lt p4, v7, :cond_1

    .line 1718
    invoke-static {p2}, Lcom/android/systemui/stackdivider/DividerView;->dockSideBottomRight(I)Z

    move-result v7

    .line 1717
    if-eqz v7, :cond_1

    .line 1719
    iget-object v7, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v7}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissEndTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    .line 1720
    .local v0, "dismissTarget":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    iget-object v7, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v7}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getLastSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v4

    .line 1721
    .local v4, "splitTarget":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    iget v5, v4, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    goto :goto_0

    .line 1732
    .end local v0    # "dismissTarget":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    .end local v4    # "splitTarget":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    .restart local v2    # "height":I
    .restart local v3    # "offsetPosition":I
    .restart local v6    # "width":I
    :pswitch_0
    sub-int v7, v3, v6

    iput v7, p1, Landroid/graphics/Rect;->left:I

    .line 1733
    iput v3, p1, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 1736
    :pswitch_1
    iget v7, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerSize:I

    add-int/2addr v7, v3

    iput v7, p1, Landroid/graphics/Rect;->left:I

    .line 1737
    add-int v7, v3, v6

    iget v8, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerSize:I

    add-int/2addr v7, v8

    iput v7, p1, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 1740
    :pswitch_2
    sub-int v7, v3, v2

    iput v7, p1, Landroid/graphics/Rect;->top:I

    .line 1741
    iput v3, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    .line 1744
    :pswitch_3
    iget v7, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerSize:I

    add-int/2addr v7, v3

    iput v7, p1, Landroid/graphics/Rect;->top:I

    .line 1745
    add-int v7, v3, v2

    iget v8, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerSize:I

    add-int/2addr v7, v8

    iput v7, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    .line 1730
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private applyExitAnimationParallax(Landroid/graphics/Rect;I)V
    .locals 4
    .param p1, "taskRect"    # Landroid/graphics/Rect;
    .param p2, "position"    # I

    .prologue
    const/4 v3, 0x0

    const/high16 v2, 0x3e800000    # 0.25f

    .line 1637
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1638
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mExitStartPosition:I

    sub-int v0, p2, v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {p1, v3, v0}, Landroid/graphics/Rect;->offset(II)V

    .line 1636
    :cond_0
    :goto_0
    return-void

    .line 1639
    :cond_1
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 1640
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mExitStartPosition:I

    sub-int v0, p2, v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    .line 1641
    :cond_2
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1642
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mExitStartPosition:I

    sub-int/2addr v0, p2

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0
.end method

.method private calcAutoResizableSnapTargetPosition(Landroid/graphics/Rect;I)I
    .locals 7
    .param p1, "taskBounds"    # Landroid/graphics/Rect;
    .param p2, "targetStackId"    # I

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x1

    .line 1000
    const/4 v0, -0x1

    .line 1002
    .local v0, "autoResizePos":I
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v4

    if-eqz v4, :cond_2

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayHeight:I

    .line 1004
    .local v1, "displaySize":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1005
    if-ne p2, v6, :cond_3

    .line 1006
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 1020
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v4}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getFirstSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v4

    iget v4, v4, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v5}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getLastSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v5

    iget v5, v5, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    if-eq v4, v5, :cond_9

    .line 1021
    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v4}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getFirstSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v4

    iget v3, v4, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    .line 1022
    .local v3, "minPosition":I
    :goto_2
    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v4}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getFirstSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v4

    iget v4, v4, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v5}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getLastSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v5

    iget v5, v5, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    if-eq v4, v5, :cond_a

    .line 1023
    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v4}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getLastSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v4

    iget v2, v4, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    .line 1027
    .local v2, "maxPosition":I
    :goto_3
    if-ge v0, v3, :cond_b

    .line 1028
    move v0, v3

    .line 1033
    :cond_1
    :goto_4
    return v0

    .line 1002
    .end local v1    # "displaySize":I
    .end local v2    # "maxPosition":I
    .end local v3    # "minPosition":I
    :cond_2
    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayWidth:I

    .restart local v1    # "displaySize":I
    goto :goto_0

    .line 1007
    :cond_3
    if-ne p2, v5, :cond_0

    .line 1008
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    sub-int v4, v1, v4

    iget v5, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerSize:I

    sub-int v0, v4, v5

    goto :goto_1

    .line 1011
    :cond_4
    iget v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-static {v4}, Lcom/android/systemui/stackdivider/DividerView;->dockSideTopLeft(I)Z

    move-result v4

    if-eqz v4, :cond_6

    if-ne p2, v6, :cond_6

    .line 1013
    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    goto :goto_1

    .line 1012
    :cond_6
    iget v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-static {v4}, Lcom/android/systemui/stackdivider/DividerView;->dockSideBottomRight(I)Z

    move-result v4

    if-eqz v4, :cond_7

    if-eq p2, v5, :cond_5

    .line 1014
    :cond_7
    iget v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-static {v4}, Lcom/android/systemui/stackdivider/DividerView;->dockSideTopLeft(I)Z

    move-result v4

    if-eqz v4, :cond_8

    if-ne p2, v5, :cond_8

    .line 1016
    :goto_5
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int v4, v1, v4

    iget v5, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerSize:I

    sub-int v0, v4, v5

    goto :goto_1

    .line 1015
    :cond_8
    iget v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-static {v4}, Lcom/android/systemui/stackdivider/DividerView;->dockSideBottomRight(I)Z

    move-result v4

    if-eqz v4, :cond_0

    if-ne p2, v6, :cond_0

    goto :goto_5

    .line 1021
    :cond_9
    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v4}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMinimalSizeResizableTask()I

    move-result v3

    .restart local v3    # "minPosition":I
    goto :goto_2

    .line 1023
    :cond_a
    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v4}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getEndInset()I

    move-result v4

    sub-int v4, v1, v4

    iget v5, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerSize:I

    sub-int/2addr v4, v5

    .line 1024
    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v5}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMinimalSizeResizableTask()I

    move-result v5

    .line 1023
    sub-int v2, v4, v5

    .restart local v2    # "maxPosition":I
    goto :goto_3

    .line 1029
    :cond_b
    if-le v0, v2, :cond_1

    .line 1030
    move v0, v2

    goto :goto_4
.end method

.method private static calculateParallaxDismissingFraction(FI)F
    .locals 3
    .param p0, "fraction"    # F
    .param p1, "dockSide"    # I

    .prologue
    .line 1756
    sget-object v1, Lcom/android/systemui/stackdivider/DividerView;->SLOWDOWN_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, p0}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v1

    const/high16 v2, 0x40600000    # 3.5f

    div-float v0, v1, v2

    .line 1759
    .local v0, "result":F
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 1760
    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 1762
    :cond_0
    return v0
.end method

.method private calculatePosition(II)I
    .locals 1
    .param p1, "touchX"    # I
    .param p2, "touchY"    # I

    .prologue
    .line 1457
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lcom/android/systemui/stackdivider/DividerView;->calculateYPosition(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/stackdivider/DividerView;->calculateXPosition(I)I

    move-result v0

    goto :goto_0
.end method

.method private calculateXPosition(I)I
    .locals 2
    .param p1, "touchX"    # I

    .prologue
    .line 1465
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mStartPosition:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mStartX:I

    sub-int/2addr v0, v1

    return v0
.end method

.method private calculateYPosition(I)I
    .locals 2
    .param p1, "touchY"    # I

    .prologue
    .line 1469
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mStartPosition:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mStartY:I

    sub-int/2addr v0, v1

    return v0
.end method

.method private cancelFlingAnimation()V
    .locals 1

    .prologue
    .line 1146
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mCurrentAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 1147
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mCurrentAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1145
    :cond_0
    return-void
.end method

.method private clearAutoResizeState(Z)V
    .locals 3
    .param p1, "clearAll"    # Z

    .prologue
    const/4 v2, 0x0

    .line 2001
    if-eqz p1, :cond_0

    .line 2002
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedStackSnapTargetMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 2006
    :goto_0
    iput-boolean v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mHasAutoResizingSnapTarget:Z

    .line 2007
    iput-boolean v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mResizeTaskToStackBounds:Z

    .line 2008
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-virtual {v0, v2}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->setAutoResizingEnabled(Z)V

    .line 1999
    return-void

    .line 2004
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedStackSnapTargetMap:Landroid/util/SparseArray;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0
.end method

.method private closeTask()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2162
    iput-boolean v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mIgnoreAutoResize:Z

    .line 2163
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->getDividerButtonsTarget()I

    move-result v1

    .line 2164
    .local v1, "topLeft":I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    .line 2165
    if-nez v1, :cond_1

    :goto_0
    invoke-direct {p0, v2}, Lcom/android/systemui/stackdivider/DividerView;->adjustFocusForClose(Z)I

    move-result v0

    .line 2166
    .local v0, "adjustedFocus":I
    new-instance v2, Lcom/android/systemui/stackdivider/DividerView$-void_closeTask__LambdaImpl0;

    invoke-direct {v2, p0}, Lcom/android/systemui/stackdivider/DividerView$-void_closeTask__LambdaImpl0;-><init>(Lcom/android/systemui/stackdivider/DividerView;)V

    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/stackdivider/DividerView;->animateMaximizingFocusedStack(ILcom/android/systemui/stackdivider/DividerView$IFocusedStackWork;)Z

    .line 2172
    .end local v0    # "adjustedFocus":I
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "SPAC"

    .line 2173
    const-string/jumbo v4, "Close"

    .line 2172
    invoke-static {v2, v3, v4}, Lcom/samsung/android/multiwindow/MultiWindowLogger;->logGSIM(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 2160
    return-void

    :cond_1
    move v2, v3

    .line 2165
    goto :goto_0
.end method

.method private commitSnapFlags(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V
    .locals 5
    .param p1, "target"    # Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 1152
    iget v1, p1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->flag:I

    if-nez v1, :cond_0

    .line 1153
    return-void

    .line 1156
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mMaximizeAnimationRunning:Z

    if-eqz v1, :cond_1

    .line 1157
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedStackWork:Lcom/android/systemui/stackdivider/DividerView$IFocusedStackWork;

    invoke-interface {v1}, Lcom/android/systemui/stackdivider/DividerView$IFocusedStackWork;->work()V

    .line 1174
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v4, v2, v3}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->setResizeDimLayer(ZIF)V

    .line 1151
    return-void

    .line 1161
    :cond_1
    iget v1, p1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->flag:I

    if-ne v1, v2, :cond_4

    .line 1162
    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    if-eq v1, v2, :cond_2

    .line 1163
    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    const/4 v0, 0x1

    .line 1168
    .local v0, "dismissOrMaximize":Z
    :goto_1
    if-eqz v0, :cond_7

    .line 1169
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-virtual {v1}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->dismissDockedStack()V

    goto :goto_0

    .line 1162
    .end local v0    # "dismissOrMaximize":Z
    :cond_2
    const/4 v0, 0x1

    .restart local v0    # "dismissOrMaximize":Z
    goto :goto_1

    .line 1163
    .end local v0    # "dismissOrMaximize":Z
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "dismissOrMaximize":Z
    goto :goto_1

    .line 1165
    .end local v0    # "dismissOrMaximize":Z
    :cond_4
    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_5

    .line 1166
    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_6

    const/4 v0, 0x1

    .restart local v0    # "dismissOrMaximize":Z
    goto :goto_1

    .line 1165
    .end local v0    # "dismissOrMaximize":Z
    :cond_5
    const/4 v0, 0x1

    .restart local v0    # "dismissOrMaximize":Z
    goto :goto_1

    .line 1166
    .end local v0    # "dismissOrMaximize":Z
    :cond_6
    const/4 v0, 0x0

    .restart local v0    # "dismissOrMaximize":Z
    goto :goto_1

    .line 1171
    :cond_7
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-virtual {v1}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->maximizeDockedStack()V

    goto :goto_0
.end method

.method private completeToggleSplitScreen()V
    .locals 1

    .prologue
    .line 2280
    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mToggleSplitScreen:Z

    if-eqz v0, :cond_0

    .line 2281
    invoke-static {}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getInstance()Lcom/android/systemui/stackdivider/WindowManagerProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->completeToggleSplitScreen()V

    .line 2282
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mToggleSplitScreen:Z

    .line 2279
    :cond_0
    return-void
.end method

.method private convertToScreenCoordinates(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 879
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 878
    return-void
.end method

.method private static dockSideBottomRight(I)Z
    .locals 2
    .param p0, "dockSide"    # I

    .prologue
    const/4 v0, 0x1

    .line 1794
    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    const/4 v1, 0x3

    if-ne p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static dockSideTopLeft(I)Z
    .locals 2
    .param p0, "dockSide"    # I

    .prologue
    const/4 v0, 0x1

    .line 1787
    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    if-ne p0, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private drawGuideView(II)V
    .locals 9
    .param p1, "positionX"    # I
    .param p2, "positionY"    # I

    .prologue
    const/4 v8, 0x3

    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 2412
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v4

    .line 2413
    .local v4, "isPortrait":Z
    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mGuideView:Lcom/android/systemui/stackdivider/DividerView$GuideView;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mGuideView:Lcom/android/systemui/stackdivider/DividerView$GuideView;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mGuideView:Lcom/android/systemui/stackdivider/DividerView$GuideView;

    invoke-virtual {v6}, Lcom/android/systemui/stackdivider/DividerView$GuideView;->isAnimating()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2437
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mGuideRect:Landroid/graphics/Rect;

    if-eqz v4, :cond_1

    move p1, v5

    .end local p1    # "positionX":I
    :cond_1
    iput p1, v6, Landroid/graphics/Rect;->left:I

    .line 2438
    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mGuideRect:Landroid/graphics/Rect;

    if-eqz v4, :cond_6

    .end local p2    # "positionY":I
    :goto_1
    iput p2, v6, Landroid/graphics/Rect;->top:I

    .line 2439
    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mGuideRect:Landroid/graphics/Rect;

    if-eqz v4, :cond_7

    iget v5, p0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayWidth:I

    :goto_2
    iput v5, v6, Landroid/graphics/Rect;->right:I

    .line 2440
    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mGuideRect:Landroid/graphics/Rect;

    if-eqz v4, :cond_8

    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerView;->mGuideRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget v7, p0, Lcom/android/systemui/stackdivider/DividerView;->mGuideHeight:I

    add-int/2addr v5, v7

    :goto_3
    iput v5, v6, Landroid/graphics/Rect;->bottom:I

    .line 2442
    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerView;->mGuideView:Lcom/android/systemui/stackdivider/DividerView$GuideView;

    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mGuideRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Lcom/android/systemui/stackdivider/DividerView$GuideView;->show(Landroid/graphics/Rect;)V

    .line 2411
    return-void

    .line 2414
    .restart local p1    # "positionX":I
    .restart local p2    # "positionY":I
    :cond_2
    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 2415
    .local v3, "inflater":Landroid/view/LayoutInflater;
    const v6, 0x7f040040

    invoke-virtual {v3, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    .line 2417
    .local v2, "guideView":Landroid/widget/FrameLayout;
    sget v1, Lcom/android/systemui/stackdivider/FocusedFrameView;->mFocusedStackId:I

    .line 2418
    .local v1, "foucsedStackId":I
    if-ne v1, v8, :cond_4

    .line 2419
    if-eqz v4, :cond_3

    .line 2420
    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    const/4 v7, 0x2

    invoke-virtual {p0, p2, v7, v6}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    .line 2424
    :goto_4
    new-instance v0, Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    invoke-direct {v0, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 2433
    .local v0, "bounds":Landroid/graphics/Rect;
    :goto_5
    new-instance v6, Lcom/android/systemui/stackdivider/DividerView$GuideView;

    iget-object v7, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7, v2}, Lcom/android/systemui/stackdivider/DividerView$GuideView;-><init>(Landroid/content/Context;Landroid/widget/FrameLayout;)V

    iput-object v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mGuideView:Lcom/android/systemui/stackdivider/DividerView$GuideView;

    .line 2434
    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mGuideView:Lcom/android/systemui/stackdivider/DividerView$GuideView;

    iget-object v7, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedFrameView:Lcom/android/systemui/stackdivider/FocusedFrameView;

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v6, v7, v1, v0, v8}, Lcom/android/systemui/stackdivider/DividerView$GuideView;->setFocusedZone(Lcom/android/systemui/stackdivider/FocusedFrameView;ILandroid/graphics/Rect;I)V

    .line 2435
    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mGuideView:Lcom/android/systemui/stackdivider/DividerView$GuideView;

    iget-object v7, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v6, v7, v8}, Lcom/android/systemui/stackdivider/DividerView$GuideView;->setDividerView(Lcom/android/systemui/stackdivider/DividerHandleView;Landroid/view/View;)V

    goto :goto_0

    .line 2422
    .end local v0    # "bounds":Landroid/graphics/Rect;
    :cond_3
    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    const/4 v7, 0x1

    invoke-virtual {p0, p1, v7, v6}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    goto :goto_4

    .line 2426
    :cond_4
    if-eqz v4, :cond_5

    .line 2427
    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mOtherRect:Landroid/graphics/Rect;

    const/4 v7, 0x4

    invoke-virtual {p0, p2, v7, v6}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    .line 2431
    :goto_6
    new-instance v0, Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mOtherRect:Landroid/graphics/Rect;

    invoke-direct {v0, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .restart local v0    # "bounds":Landroid/graphics/Rect;
    goto :goto_5

    .line 2429
    .end local v0    # "bounds":Landroid/graphics/Rect;
    :cond_5
    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mOtherRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v8, v6}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    goto :goto_6

    .end local v1    # "foucsedStackId":I
    .end local v2    # "guideView":Landroid/widget/FrameLayout;
    .end local v3    # "inflater":Landroid/view/LayoutInflater;
    .end local p1    # "positionX":I
    :cond_6
    move p2, v5

    .line 2438
    goto/16 :goto_1

    .line 2439
    .end local p2    # "positionY":I
    :cond_7
    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerView;->mGuideRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget v7, p0, Lcom/android/systemui/stackdivider/DividerView;->mGuideHeight:I

    add-int/2addr v5, v7

    goto/16 :goto_2

    .line 2440
    :cond_8
    iget v5, p0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayHeight:I

    goto :goto_3
.end method

.method private drawGuideViewDimLayer(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 2460
    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mGuideView:Lcom/android/systemui/stackdivider/DividerView$GuideView;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mGuideView:Lcom/android/systemui/stackdivider/DividerView$GuideView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mGuideView:Lcom/android/systemui/stackdivider/DividerView$GuideView;

    invoke-virtual {v3}, Lcom/android/systemui/stackdivider/DividerView$GuideView;->isAnimating()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2463
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v3, p1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getClosestDismissTarget(I)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    .line 2464
    .local v0, "closestDismissTarget":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/stackdivider/DividerView;->getDimFraction(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)F

    move-result v1

    .line 2465
    .local v1, "dimFraction":F
    sget v2, Lcom/android/systemui/stackdivider/FocusedFrameView;->mFocusedStackId:I

    .line 2466
    .local v2, "foucsedStackId":I
    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    .line 2467
    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v3}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissEndTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v3

    if-ne v0, v3, :cond_1

    .line 2468
    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mGuideView:Lcom/android/systemui/stackdivider/DividerView$GuideView;

    invoke-virtual {v3, v1}, Lcom/android/systemui/stackdivider/DividerView$GuideView;->setDimlayer(F)V

    .line 2459
    :cond_1
    :goto_0
    return-void

    .line 2461
    .end local v0    # "closestDismissTarget":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    .end local v1    # "dimFraction":F
    .end local v2    # "foucsedStackId":I
    :cond_2
    return-void

    .line 2471
    .restart local v0    # "closestDismissTarget":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    .restart local v1    # "dimFraction":F
    .restart local v2    # "foucsedStackId":I
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v3}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissStartTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v3

    if-ne v0, v3, :cond_1

    .line 2472
    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mGuideView:Lcom/android/systemui/stackdivider/DividerView$GuideView;

    invoke-virtual {v3, v1}, Lcom/android/systemui/stackdivider/DividerView$GuideView;->setDimlayer(F)V

    goto :goto_0
.end method

.method private drawKnoxBadge(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v7, 0x0

    .line 2329
    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "persona"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/SemPersonaManager;

    .line 2330
    .local v5, "personaManager":Lcom/samsung/android/knox/SemPersonaManager;
    if-nez v5, :cond_0

    .line 2331
    return-void

    .line 2333
    :cond_0
    iget v8, p0, Lcom/android/systemui/stackdivider/DividerView;->mUserId:I

    invoke-static {v8}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_2

    :cond_1
    move v4, v7

    .line 2335
    .local v4, "mUid":I
    :goto_0
    invoke-direct {p0, v4}, Lcom/android/systemui/stackdivider/DividerView;->getUserBadgeIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, p0, Lcom/android/systemui/stackdivider/DividerView;->personaBadge:Landroid/graphics/drawable/Drawable;

    .line 2336
    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerView;->personaBadge:Landroid/graphics/drawable/Drawable;

    if-nez v8, :cond_3

    return-void

    .line 2333
    .end local v4    # "mUid":I
    :cond_2
    iget v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mUserId:I

    goto :goto_0

    .line 2338
    .restart local v4    # "mUid":I
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getMeasuredWidth()I

    move-result v6

    .line 2339
    .local v6, "width":I
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getMeasuredHeight()I

    move-result v2

    .line 2340
    .local v2, "height":I
    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerView;->personaBadge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 2341
    .local v1, "badgeW":I
    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerView;->personaBadge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 2343
    .local v0, "badgeH":I
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->orientation:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_5

    const/4 v3, 0x1

    .line 2344
    .local v3, "landscape":Z
    :goto_1
    if-eqz v3, :cond_6

    .line 2345
    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerView;->personaBadge:Landroid/graphics/drawable/Drawable;

    mul-int/lit8 v9, v1, 0x2

    sub-int v9, v6, v9

    sub-int v10, v2, v0

    sub-int v11, v6, v1

    invoke-virtual {v8, v9, v10, v11, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2349
    :goto_2
    if-nez v4, :cond_4

    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerView;->personaBadge:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_4

    .line 2350
    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerView;->personaBadge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v7, v7, v7, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2352
    :cond_4
    iget-object v7, p0, Lcom/android/systemui/stackdivider/DividerView;->personaBadge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2328
    return-void

    .end local v3    # "landscape":Z
    :cond_5
    move v3, v7

    .line 2343
    goto :goto_1

    .line 2347
    .restart local v3    # "landscape":Z
    :cond_6
    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerView;->personaBadge:Landroid/graphics/drawable/Drawable;

    sub-int v9, v6, v1

    mul-int/lit8 v10, v0, 0x2

    sub-int v10, v2, v10

    sub-int v11, v2, v0

    invoke-virtual {v8, v9, v10, v6, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_2
.end method

.method private fling(IFZZ)V
    .locals 9
    .param p1, "position"    # I
    .param p2, "velocity"    # F
    .param p3, "avoidDismissStart"    # Z
    .param p4, "logMetrics"    # Z

    .prologue
    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 884
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/policy/DividerSnapAlgorithm;->calculateSnapTarget(IF)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v7

    .line 885
    .local v7, "snapTarget":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissStartTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    if-ne v7, v0, :cond_0

    .line 886
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getFirstSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v7

    .line 888
    :cond_0
    if-eqz p4, :cond_1

    .line 889
    invoke-direct {p0, v7}, Lcom/android/systemui/stackdivider/DividerView;->logResizeEvent(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V

    .line 893
    :cond_1
    iget v0, v7, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->flag:I

    and-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_2

    .line 894
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getFirstSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    iget v0, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    if-le v0, p1, :cond_4

    .line 896
    :cond_2
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v7, v0, v1}, Lcom/android/systemui/stackdivider/DividerView;->getFlingAnimator(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;J)Landroid/animation/ValueAnimator;

    move-result-object v6

    .line 897
    .local v6, "anim":Landroid/animation/ValueAnimator;
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    int-to-float v1, p1

    iget v2, v7, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    int-to-float v2, v2

    invoke-virtual {v0, v6, v1, v2, p2}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->apply(Landroid/animation/Animator;FFF)V

    .line 898
    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->start()V

    .line 901
    iget v0, v7, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->flag:I

    and-int/lit8 v0, v0, 0x3

    if-eqz v0, :cond_3

    .line 903
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "DOOF"

    .line 904
    const-string/jumbo v2, "DividerDragging"

    .line 903
    invoke-static {v0, v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowLogger;->logGSIM(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 883
    .end local v6    # "anim":Landroid/animation/ValueAnimator;
    :cond_3
    :goto_0
    return-void

    .line 895
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getLastSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    iget v0, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    if-lt v0, p1, :cond_2

    .line 908
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    .line 909
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->resizeDockedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 910
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-virtual {v0, v8}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->setResizing(Z)V

    goto :goto_0
.end method

.method private flingTo(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;JJJLandroid/view/animation/Interpolator;)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "target"    # Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    .param p3, "duration"    # J
    .param p5, "startDelay"    # J
    .param p7, "endDelay"    # J
    .param p9, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 1053
    invoke-direct {p0, p1, p2, p7, p8}, Lcom/android/systemui/stackdivider/DividerView;->getFlingAnimator(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;J)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1054
    .local v0, "anim":Landroid/animation/ValueAnimator;
    invoke-virtual {v0, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1055
    invoke-virtual {v0, p5, p6}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 1056
    invoke-virtual {v0, p9}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1057
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1052
    return-void
.end method

.method private getDimFraction(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)F
    .locals 3
    .param p1, "position"    # I
    .param p2, "dismissTarget"    # Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    .prologue
    const/4 v2, 0x0

    .line 1647
    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mEntranceAnimationRunning:Z

    if-eqz v1, :cond_0

    .line 1648
    return v2

    .line 1650
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v1, p1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->calculateDismissingFraction(I)F

    move-result v0

    .line 1651
    .local v0, "fraction":F
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 1652
    sget-object v1, Lcom/android/systemui/stackdivider/DividerView;->DIM_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v0}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v0

    .line 1653
    invoke-direct {p0, p2}, Lcom/android/systemui/stackdivider/DividerView;->hasInsetsAtDismissTarget(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1656
    const v1, 0x3f4ccccd    # 0.8f

    mul-float/2addr v0, v1

    .line 1658
    :cond_1
    return v0
.end method

.method private getDividerButtonsTarget()I
    .locals 5

    .prologue
    .line 2148
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getWindowManagerProxy()Lcom/android/systemui/stackdivider/WindowManagerProxy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getFocusedStackId()I

    move-result v2

    .line 2149
    .local v2, "focusedStackId":I
    iget v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 2150
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->updateDockSide()V

    .line 2152
    :cond_0
    const/4 v3, 0x3

    if-ne v3, v2, :cond_1

    const/4 v0, 0x1

    .line 2153
    .local v0, "dockFocus":Z
    :goto_0
    iget v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-static {v3}, Lcom/android/systemui/stackdivider/DividerView;->dockSideTopLeft(I)Z

    move-result v1

    .line 2154
    .local v1, "dockTop":Z
    if-ne v0, v1, :cond_2

    const/4 v3, 0x0

    :goto_1
    return v3

    .line 2152
    .end local v0    # "dockFocus":Z
    .end local v1    # "dockTop":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "dockFocus":Z
    goto :goto_0

    .line 2155
    .restart local v1    # "dockTop":Z
    :cond_2
    const/4 v3, 0x1

    goto :goto_1
.end method

.method private getFlingAnimator(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;J)Landroid/animation/ValueAnimator;
    .locals 7
    .param p1, "position"    # I
    .param p2, "snapTarget"    # Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    .param p3, "endDelay"    # J

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1062
    iget v3, p2, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->flag:I

    if-nez v3, :cond_0

    const/4 v2, 0x1

    .line 1066
    .local v2, "taskPositionSameAtEnd":Z
    :goto_0
    iget v3, p2, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->flag:I

    if-ne v3, v6, :cond_1

    .line 1067
    iput-boolean v5, p0, Lcom/android/systemui/stackdivider/DividerView;->mDissmissEnd:Z

    .line 1074
    :goto_1
    new-array v3, v6, [I

    aput p1, v3, v4

    iget v4, p2, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    aput v4, v3, v5

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1075
    .local v0, "anim":Landroid/animation/ValueAnimator;
    new-instance v3, Lcom/android/systemui/stackdivider/DividerView$5;

    invoke-direct {v3, p0, v0, v2, p2}, Lcom/android/systemui/stackdivider/DividerView$5;-><init>(Lcom/android/systemui/stackdivider/DividerView;Landroid/animation/ValueAnimator;ZLcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1090
    new-instance v1, Lcom/android/systemui/stackdivider/DividerView$-android_animation_ValueAnimator_getFlingAnimator_int_position_com_android_internal_policy_DividerSnapAlgorithm$SnapTarget_snapTarget_long_endDelay_LambdaImpl0;

    invoke-direct {v1, p0, p2}, Lcom/android/systemui/stackdivider/DividerView$-android_animation_ValueAnimator_getFlingAnimator_int_position_com_android_internal_policy_DividerSnapAlgorithm$SnapTarget_snapTarget_long_endDelay_LambdaImpl0;-><init>(Lcom/android/systemui/stackdivider/DividerView;Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V

    .line 1111
    .local v1, "endAction":Ljava/lang/Runnable;
    new-instance v3, Lcom/android/systemui/stackdivider/DividerView$6;

    invoke-direct {v3, p0, p3, p4, v1}, Lcom/android/systemui/stackdivider/DividerView$6;-><init>(Lcom/android/systemui/stackdivider/DividerView;JLjava/lang/Runnable;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1141
    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mCurrentAnimator:Landroid/animation/ValueAnimator;

    .line 1142
    return-object v0

    .line 1062
    .end local v0    # "anim":Landroid/animation/ValueAnimator;
    .end local v1    # "endAction":Ljava/lang/Runnable;
    .end local v2    # "taskPositionSameAtEnd":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "taskPositionSameAtEnd":Z
    goto :goto_0

    .line 1069
    :cond_1
    iput-boolean v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mDissmissEnd:Z

    goto :goto_1
.end method

.method private getStackIdForDismissTarget(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)I
    .locals 2
    .param p1, "dismissTarget"    # Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    .prologue
    .line 1774
    iget v0, p1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->flag:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-static {v0}, Lcom/android/systemui/stackdivider/DividerView;->dockSideTopLeft(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1775
    :cond_0
    iget v0, p1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->flag:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 1776
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-static {v0}, Lcom/android/systemui/stackdivider/DividerView;->dockSideBottomRight(I)Z

    move-result v0

    .line 1774
    if-eqz v0, :cond_2

    .line 1777
    :cond_1
    const/4 v0, 0x3

    return v0

    .line 1779
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private getUserBadgeIcon(I)Landroid/graphics/drawable/Drawable;
    .locals 13
    .param p1, "userId"    # I

    .prologue
    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 2356
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string/jumbo v10, "persona"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/knox/SemPersonaManager;

    .line 2357
    .local v4, "mPersona":Lcom/samsung/android/knox/SemPersonaManager;
    iget-object v9, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "knox_name"

    invoke-static {v9, v10, p1}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    .line 2358
    .local v8, "userName":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 2359
    .local v5, "mPm":Landroid/content/pm/PackageManager;
    if-eqz v8, :cond_3

    .line 2361
    if-eqz v4, :cond_1

    .line 2362
    invoke-virtual {v4, p1}, Lcom/samsung/android/knox/SemPersonaManager;->isECContainer(I)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 2363
    invoke-virtual {v4, p1}, Lcom/samsung/android/knox/SemPersonaManager;->getECBadge(I)[B

    move-result-object v1

    .line 2364
    .local v1, "badge":[B
    const/4 v2, 0x0

    .line 2365
    .local v2, "badgeimage":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 2366
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    .end local v2    # "badgeimage":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 2367
    array-length v10, v1

    invoke-static {v1, v11, v10}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 2366
    invoke-direct {v2, v9, v10}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 2368
    :cond_0
    return-object v2

    .line 2373
    .end local v1    # "badge":[B
    :cond_1
    if-eqz v5, :cond_3

    .line 2374
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 2375
    const-string/jumbo v0, "com.samsung.knox.securefolder"

    .line 2377
    .local v0, "SECURE_FOLDER_PACKAGE":Ljava/lang/String;
    const/4 v9, 0x0

    :try_start_0
    invoke-virtual {v5, v0, v9}, Landroid/content/pm/PackageManager;->getResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object v6

    .line 2378
    .local v6, "packageResources":Landroid/content/res/Resources;
    const-string/jumbo v9, "ic_sf_badge_bottom"

    const-string/jumbo v10, "drawable"

    invoke-virtual {v6, v9, v10, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 2380
    .local v7, "resid":I
    if-eqz v7, :cond_2

    .line 2381
    const/4 v9, 0x0

    invoke-virtual {v6, v7, v9}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    return-object v9

    .line 2383
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x10804bf

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    return-object v9

    .line 2385
    .end local v6    # "packageResources":Landroid/content/res/Resources;
    .end local v7    # "resid":I
    :catch_0
    move-exception v3

    .line 2386
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 2393
    .end local v0    # "SECURE_FOLDER_PACKAGE":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x10803e9

    invoke-virtual {v9, v10, v12}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    return-object v9

    .line 2388
    :cond_4
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 2389
    new-instance v9, Landroid/os/UserHandle;

    invoke-direct {v9, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v5, v9, v11}, Landroid/content/pm/PackageManager;->getUserBadgeForDensity(Landroid/os/UserHandle;I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    return-object v9
.end method

.method private hasInsetsAtDismissTarget(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)Z
    .locals 3
    .param p1, "dismissTarget"    # Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1665
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1666
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v2}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissStartTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v2

    if-ne p1, v2, :cond_1

    .line 1667
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mStableInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    .line 1669
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mStableInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-eqz v2, :cond_2

    :goto_1
    return v0

    :cond_2
    move v0, v1

    goto :goto_1

    .line 1672
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v2}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissStartTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v2

    if-ne p1, v2, :cond_5

    .line 1673
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mStableInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-eqz v2, :cond_4

    :goto_2
    return v0

    :cond_4
    move v0, v1

    goto :goto_2

    .line 1675
    :cond_5
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mStableInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    if-eqz v2, :cond_6

    :goto_3
    return v0

    :cond_6
    move v0, v1

    goto :goto_3
.end method

.method private hideGuideView(Landroid/graphics/Point;Z)V
    .locals 1
    .param p1, "point"    # Landroid/graphics/Point;
    .param p2, "anim"    # Z

    .prologue
    .line 2448
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mGuideView:Lcom/android/systemui/stackdivider/DividerView$GuideView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mGuideView:Lcom/android/systemui/stackdivider/DividerView$GuideView;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/DividerView$GuideView;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2449
    if-eqz p2, :cond_1

    .line 2450
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mGuideView:Lcom/android/systemui/stackdivider/DividerView$GuideView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/stackdivider/DividerView$GuideView;->dismiss(Landroid/graphics/Point;)V

    .line 2447
    :cond_0
    :goto_0
    return-void

    .line 2452
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mGuideView:Lcom/android/systemui/stackdivider/DividerView$GuideView;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/DividerView$GuideView;->cancelAnimation()V

    goto :goto_0
.end method

.method private initAutoResizingTargets(Landroid/graphics/Rect;I)V
    .locals 9
    .param p1, "taskBounds"    # Landroid/graphics/Rect;
    .param p2, "stackId"    # I

    .prologue
    const/4 v8, 0x0

    .line 967
    const/4 v6, 0x3

    if-ne p2, v6, :cond_1

    const/4 v1, 0x1

    .line 968
    .local v1, "dockedStackHasFocus":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getCurrentPosition()I

    move-result v0

    .line 969
    .local v0, "currentPosition":I
    iget v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    iget-object v7, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v6, v7}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    .line 970
    iget v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-static {v6}, Lcom/android/internal/policy/DockedDividerUtils;->invertDockSide(I)I

    move-result v6

    iget-object v7, p0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v6, v7}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    .line 972
    const/4 v3, 0x0

    .line 973
    .local v3, "originalTaskRect":Landroid/graphics/Rect;
    const/4 v4, 0x0

    .line 974
    .local v4, "otherOriginalTaskRect":Landroid/graphics/Rect;
    if-eqz v1, :cond_2

    .line 975
    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mOriginalDockedTaskRect:Landroid/graphics/Rect;

    .line 976
    .local v3, "originalTaskRect":Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mOriginalFullScreenTaskRect:Landroid/graphics/Rect;

    .line 982
    .local v4, "otherOriginalTaskRect":Landroid/graphics/Rect;
    :goto_1
    invoke-virtual {v3, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 983
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/stackdivider/DividerView;->calcAutoResizableSnapTargetPosition(Landroid/graphics/Rect;I)I

    move-result v5

    .line 984
    .local v5, "targetPos":I
    if-eqz v1, :cond_3

    iget v6, v4, Landroid/graphics/Rect;->top:I

    iget v7, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerSize:I

    sub-int/2addr v6, v7

    if-ge v5, v6, :cond_3

    .line 988
    :cond_0
    if-eqz v1, :cond_5

    iget v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-static {v6}, Lcom/android/internal/policy/DockedDividerUtils;->invertDockSide(I)I

    move-result v6

    :goto_2
    invoke-virtual {p0, v5, v6, v4}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    .line 994
    :goto_3
    if-eqz v1, :cond_7

    const/4 v2, 0x1

    .line 995
    .local v2, "oppositeStackId":I
    :goto_4
    new-instance v6, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    invoke-direct {v6, v5, v5, v8}, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;-><init>(III)V

    invoke-virtual {p0, v6, p2}, Lcom/android/systemui/stackdivider/DividerView;->setAutoResizingTarget(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;I)V

    .line 996
    new-instance v6, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    invoke-direct {v6, v0, v0, v8}, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;-><init>(III)V

    invoke-virtual {p0, v6, v2}, Lcom/android/systemui/stackdivider/DividerView;->setAutoResizingTarget(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;I)V

    .line 965
    return-void

    .line 967
    .end local v0    # "currentPosition":I
    .end local v1    # "dockedStackHasFocus":Z
    .end local v2    # "oppositeStackId":I
    .end local v3    # "originalTaskRect":Landroid/graphics/Rect;
    .end local v4    # "otherOriginalTaskRect":Landroid/graphics/Rect;
    .end local v5    # "targetPos":I
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "dockedStackHasFocus":Z
    goto :goto_0

    .line 978
    .restart local v0    # "currentPosition":I
    .local v3, "originalTaskRect":Landroid/graphics/Rect;
    .local v4, "otherOriginalTaskRect":Landroid/graphics/Rect;
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mOriginalFullScreenTaskRect:Landroid/graphics/Rect;

    .line 979
    .local v3, "originalTaskRect":Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mOriginalDockedTaskRect:Landroid/graphics/Rect;

    .local v4, "otherOriginalTaskRect":Landroid/graphics/Rect;
    goto :goto_1

    .line 985
    .restart local v5    # "targetPos":I
    :cond_3
    if-nez v1, :cond_4

    iget v6, v4, Landroid/graphics/Rect;->bottom:I

    if-gt v5, v6, :cond_0

    .line 991
    :cond_4
    if-eqz v1, :cond_6

    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    :goto_5
    invoke-virtual {v4, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_3

    .line 988
    :cond_5
    iget v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    goto :goto_2

    .line 991
    :cond_6
    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    goto :goto_5

    .line 994
    :cond_7
    const/4 v2, 0x3

    .restart local v2    # "oppositeStackId":I
    goto :goto_4
.end method

.method private initializeSnapAlgorithm()V
    .locals 7

    .prologue
    .line 650
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    if-nez v0, :cond_0

    .line 651
    new-instance v0, Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayWidth:I

    .line 652
    iget v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayHeight:I

    iget v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerSize:I

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mStableInsets:Landroid/graphics/Rect;

    .line 651
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/policy/DividerSnapAlgorithm;-><init>(Landroid/content/res/Resources;IIIZLandroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    .line 649
    :cond_0
    return-void
.end method

.method private static isDismissing(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;II)Z
    .locals 3
    .param p0, "snapTarget"    # Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    .param p1, "position"    # I
    .param p2, "dockSide"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1766
    const/4 v2, 0x2

    if-eq p2, v2, :cond_0

    if-ne p2, v0, :cond_2

    .line 1767
    :cond_0
    iget v2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    if-ge p1, v2, :cond_1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    .line 1769
    :cond_2
    iget v2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    if-le p1, v2, :cond_3

    :goto_1
    return v0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method private liftBackground()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x96

    const/4 v2, 0x0

    .line 1178
    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackgroundLifted:Z

    if-eqz v0, :cond_0

    .line 1179
    return-void

    .line 1183
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1184
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mLiftBackgroundScale:F

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 1196
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1197
    sget-object v1, Lcom/android/systemui/Interpolators;->TOUCH_RESPONSE:Landroid/view/animation/Interpolator;

    .line 1196
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationZ(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1204
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/DividerHandleView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1205
    sget-object v1, Lcom/android/systemui/Interpolators;->TOUCH_RESPONSE:Landroid/view/animation/Interpolator;

    .line 1204
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationZ(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1212
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedFrameView:Lcom/android/systemui/stackdivider/FocusedFrameView;

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerSize:I

    .line 1213
    const/4 v2, 0x0

    .line 1212
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/stackdivider/FocusedFrameView;->liftFocusedFrameView(II)V

    .line 1217
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackgroundLifted:Z

    .line 1177
    return-void

    .line 1186
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mLiftBackgroundScale:F

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_0
.end method

.method private logResizeEvent(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V
    .locals 6
    .param p1, "snapTarget"    # Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    .prologue
    const/16 v5, 0x186

    const/4 v2, 0x2

    const/16 v4, 0x185

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 852
    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v3}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissStartTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v3

    if-ne p1, v3, :cond_2

    .line 854
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-static {v3}, Lcom/android/systemui/stackdivider/DividerView;->dockSideTopLeft(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 853
    :goto_0
    invoke-static {v2, v5, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 851
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 856
    goto :goto_0

    .line 857
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v3}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissEndTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v3

    if-ne p1, v3, :cond_4

    .line 859
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-static {v3}, Lcom/android/systemui/stackdivider/DividerView;->dockSideBottomRight(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 858
    :goto_2
    invoke-static {v2, v5, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    goto :goto_1

    :cond_3
    move v0, v1

    .line 861
    goto :goto_2

    .line 862
    :cond_4
    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v3}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMiddleTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v3

    if-ne p1, v3, :cond_5

    .line 863
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    invoke-static {v0, v4, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    goto :goto_1

    .line 865
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getFirstSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v1

    if-ne p1, v1, :cond_7

    .line 866
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    .line 867
    iget v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-static {v3}, Lcom/android/systemui/stackdivider/DividerView;->dockSideTopLeft(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 866
    :goto_3
    invoke-static {v1, v4, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    goto :goto_1

    :cond_6
    move v0, v2

    .line 869
    goto :goto_3

    .line 870
    :cond_7
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getLastSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 871
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    .line 872
    iget v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-static {v3}, Lcom/android/systemui/stackdivider/DividerView;->dockSideTopLeft(I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 871
    :goto_4
    invoke-static {v1, v4, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    goto :goto_1

    :cond_8
    move v2, v0

    .line 874
    goto :goto_4
.end method

.method private playTouchSound()V
    .locals 2

    .prologue
    .line 1045
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 1046
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mAudioManager:Landroid/media/AudioManager;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 1044
    :cond_0
    return-void
.end method

.method private registerKnoxBadgeReceiver()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2303
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mKnoxBadgeReceiver:Lcom/android/systemui/stackdivider/DividerView$KnoxBadgeReceiver;

    if-nez v1, :cond_0

    .line 2304
    new-instance v1, Lcom/android/systemui/stackdivider/DividerView$KnoxBadgeReceiver;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/stackdivider/DividerView$KnoxBadgeReceiver;-><init>(Lcom/android/systemui/stackdivider/DividerView;Lcom/android/systemui/stackdivider/DividerView$KnoxBadgeReceiver;)V

    iput-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mKnoxBadgeReceiver:Lcom/android/systemui/stackdivider/DividerView$KnoxBadgeReceiver;

    .line 2305
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.samsung.sec.knox.KNOX_DOCK_WINDOW_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2306
    .local v0, "filter":Landroid/content/IntentFilter;
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mKnoxBadgeReceiver:Lcom/android/systemui/stackdivider/DividerView$KnoxBadgeReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2302
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private releaseBackground()V
    .locals 6

    .prologue
    const-wide/16 v4, 0xc8

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 1221
    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackgroundLifted:Z

    if-nez v0, :cond_0

    .line 1222
    return-void

    .line 1224
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1225
    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 1224
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationZ(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1231
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/DividerHandleView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1232
    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 1231
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationZ(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1239
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedFrameView:Lcom/android/systemui/stackdivider/FocusedFrameView;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/FocusedFrameView;->releaseFocusedFrameView()V

    .line 1243
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackgroundLifted:Z

    .line 1220
    return-void
.end method

.method private resetBackground()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 1402
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    .line 1403
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    .line 1404
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleX(F)V

    .line 1405
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleY(F)V

    .line 1406
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedShadow:Lcom/android/systemui/stackdivider/MinimizedDockShadow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->setAlpha(F)V

    .line 1401
    return-void
.end method

.method private restrictDismissingTaskPosition(IILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)I
    .locals 2
    .param p1, "taskPosition"    # I
    .param p2, "dockSide"    # I
    .param p3, "snapTarget"    # Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    .prologue
    .line 1686
    iget v0, p3, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->flag:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {p2}, Lcom/android/systemui/stackdivider/DividerView;->dockSideTopLeft(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1687
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getFirstSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    iget v0, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mStartPosition:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    .line 1688
    :cond_0
    iget v0, p3, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->flag:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1689
    invoke-static {p2}, Lcom/android/systemui/stackdivider/DividerView;->dockSideBottomRight(I)Z

    move-result v0

    .line 1688
    if-eqz v0, :cond_1

    .line 1690
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getLastSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    iget v0, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mStartPosition:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    .line 1692
    :cond_1
    return p1
.end method

.method private scrollGuideView(II)V
    .locals 7
    .param p1, "positionX"    # I
    .param p2, "positionY"    # I

    .prologue
    const/4 v6, 0x1

    .line 2480
    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mGuideView:Lcom/android/systemui/stackdivider/DividerView$GuideView;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mGuideView:Lcom/android/systemui/stackdivider/DividerView$GuideView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mGuideView:Lcom/android/systemui/stackdivider/DividerView$GuideView;

    invoke-virtual {v3}, Lcom/android/systemui/stackdivider/DividerView$GuideView;->isAnimating()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2483
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v0

    .line 2484
    .local v0, "isPortrait":Z
    if-eqz v0, :cond_3

    move v2, p2

    .line 2485
    .local v2, "scrollStartPosition":I
    :goto_0
    const/4 v1, 0x0

    .line 2487
    .local v1, "scrollEndPosition":I
    iget v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mDismissStartPosition:I

    if-ge v2, v3, :cond_4

    .line 2488
    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v3}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissStartTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v3

    iget v1, v3, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    .line 2493
    :cond_1
    :goto_1
    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v2, v3, v4

    aput v1, v3, v6

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mScrollGuideViewAnimator:Landroid/animation/ValueAnimator;

    .line 2494
    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mScrollGuideViewAnimator:Landroid/animation/ValueAnimator;

    sget-object v4, Lcom/android/systemui/Interpolators;->SINE_IN_OUT90:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2495
    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mScrollGuideViewAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0xe9

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2496
    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mScrollGuideViewAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/android/systemui/stackdivider/DividerView$9;

    invoke-direct {v4, p0, v0, p1, p2}, Lcom/android/systemui/stackdivider/DividerView$9;-><init>(Lcom/android/systemui/stackdivider/DividerView;ZII)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2505
    iput-boolean v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mMaximizeGuideView:Z

    .line 2506
    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mScrollGuideViewAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    .line 2479
    return-void

    .line 2481
    .end local v0    # "isPortrait":Z
    .end local v1    # "scrollEndPosition":I
    .end local v2    # "scrollStartPosition":I
    :cond_2
    return-void

    .line 2484
    .restart local v0    # "isPortrait":Z
    :cond_3
    move v2, p1

    .restart local v2    # "scrollStartPosition":I
    goto :goto_0

    .line 2489
    .restart local v1    # "scrollEndPosition":I
    :cond_4
    iget v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mDismissEndPosition:I

    if-le v2, v3, :cond_1

    .line 2490
    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v3}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissEndTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v3

    iget v1, v3, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    goto :goto_1
.end method

.method private setBackgroundFraction()V
    .locals 4

    .prologue
    .line 458
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d000a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 459
    .local v1, "orig":F
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d000b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 460
    .local v0, "lifted":F
    div-float v2, v0, v1

    iput v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mLiftBackgroundScale:F

    .line 457
    return-void
.end method

.method private showSnapGuide(ZILandroid/graphics/Rect;)V
    .locals 2
    .param p1, "isVisible"    # Z
    .param p2, "snapTarget"    # I
    .param p3, "dockedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 2133
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/stackdivider/events/DividerSnapViewVisibleEvent;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/systemui/stackdivider/events/DividerSnapViewVisibleEvent;-><init>(ZILandroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 2132
    return-void
.end method

.method private stopDragging()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 633
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/stackdivider/DividerHandleView;->setTouching(ZZ)V

    .line 634
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManager:Lcom/android/systemui/stackdivider/DividerWindowManager;

    invoke-virtual {v0, v2}, Lcom/android/systemui/stackdivider/DividerWindowManager;->setSlippery(Z)V

    .line 635
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->releaseBackground()V

    .line 632
    return-void
.end method

.method private unregisterKnoxBadgeReceiver()V
    .locals 2

    .prologue
    .line 2310
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mKnoxBadgeReceiver:Lcom/android/systemui/stackdivider/DividerView$KnoxBadgeReceiver;

    if-eqz v0, :cond_0

    .line 2311
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mKnoxBadgeReceiver:Lcom/android/systemui/stackdivider/DividerView$KnoxBadgeReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2309
    :cond_0
    return-void
.end method

.method private updateDisplayInfo()V
    .locals 5

    .prologue
    .line 1446
    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "display"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    .line 1447
    .local v1, "displayManager":Landroid/hardware/display/DisplayManager;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 1448
    .local v0, "display":Landroid/view/Display;
    new-instance v2, Landroid/view/DisplayInfo;

    invoke-direct {v2}, Landroid/view/DisplayInfo;-><init>()V

    .line 1449
    .local v2, "info":Landroid/view/DisplayInfo;
    invoke-virtual {v0, v2}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 1450
    iget v3, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    iput v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayWidth:I

    .line 1451
    iget v3, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    iput v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayHeight:I

    .line 1452
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    .line 1453
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->initializeSnapAlgorithm()V

    .line 1444
    return-void
.end method

.method private updateDockSide()V
    .locals 3

    .prologue
    .line 639
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getDockSide()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    .line 640
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedShadow:Lcom/android/systemui/stackdivider/MinimizedDockShadow;

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->setDockSide(I)V

    .line 644
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedFrameView:Lcom/android/systemui/stackdivider/FocusedFrameView;

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/stackdivider/FocusedFrameView;->setDockSide(IZ)V

    .line 638
    return-void
.end method


# virtual methods
.method synthetic -com_android_systemui_stackdivider_DividerView_lambda$1(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V
    .locals 3
    .param p1, "snapTarget"    # Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x0

    .line 1091
    invoke-direct {p0, p1}, Lcom/android/systemui/stackdivider/DividerView;->commitSnapFlags(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V

    .line 1092
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->setResizing(Z)V

    .line 1093
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    .line 1094
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mCurrentAnimator:Landroid/animation/ValueAnimator;

    .line 1095
    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mEntranceAnimationRunning:Z

    .line 1096
    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mExitAnimationRunning:Z

    .line 1099
    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mMaximizeAnimationRunning:Z

    .line 1101
    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHasAutoResizingSnapTarget:Z

    if-eqz v0, :cond_0

    .line 1102
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedStackSnapTargetMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 1103
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2, v0}, Lcom/android/systemui/stackdivider/DividerView;->areTasksOverlapping(ILandroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1109
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/stackdivider/events/StoppedDragingEvent;

    invoke-direct {v1}, Lcom/android/systemui/stackdivider/events/StoppedDragingEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 0
    return-void

    .line 1104
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/systemui/stackdivider/DividerView;->clearAutoResizeState(Z)V

    goto :goto_0
.end method

.method synthetic -com_android_systemui_stackdivider_DividerView_lambda$3()V
    .locals 2

    .prologue
    .line 2167
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->maximizeFocusedStackByDivider(Z)V

    .line 0
    return-void
.end method

.method public animateMaximizingFocusedStack(ILcom/android/systemui/stackdivider/DividerView$IFocusedStackWork;)Z
    .locals 12
    .param p1, "focusedStackId"    # I
    .param p2, "focusedStackWork"    # Lcom/android/systemui/stackdivider/DividerView$IFocusedStackWork;

    .prologue
    const-wide/16 v4, 0x14d

    const/4 v11, 0x1

    const/4 v2, 0x0

    .line 2215
    iput-object p2, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedStackWork:Lcom/android/systemui/stackdivider/DividerView$IFocusedStackWork;

    .line 2216
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-virtual {v1}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getDockSide()I

    move-result v0

    .line 2217
    .local v0, "dockSide":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedStackMinimized:Z

    if-eqz v1, :cond_1

    .line 2231
    :cond_0
    return v2

    .line 2218
    :cond_1
    invoke-static {v0}, Lcom/android/systemui/stackdivider/DividerView;->dockSideTopLeft(I)Z

    move-result v6

    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    move v1, v11

    :goto_0
    if-ne v6, v1, :cond_3

    .line 2219
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissEndTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v3

    .line 2222
    .local v3, "target":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    :goto_1
    invoke-virtual {p0, v2, v2}, Lcom/android/systemui/stackdivider/DividerView;->startDragging(ZZ)Z

    .line 2223
    iput-boolean v11, p0, Lcom/android/systemui/stackdivider/DividerView;->mMaximizeAnimationRunning:Z

    .line 2224
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getCurrentPosition()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mExitStartPosition:I

    .line 2225
    iget v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mExitStartPosition:I

    .line 2226
    const-wide/16 v8, 0x0

    new-instance v10, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut90;

    invoke-direct {v10}, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut90;-><init>()V

    move-object v1, p0

    move-wide v6, v4

    .line 2225
    invoke-virtual/range {v1 .. v10}, Lcom/android/systemui/stackdivider/DividerView;->stopDragging(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;JJJLandroid/view/animation/Interpolator;)V

    .line 2228
    return v11

    .end local v3    # "target":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    :cond_2
    move v1, v2

    .line 2218
    goto :goto_0

    .line 2220
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissStartTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v3

    .restart local v3    # "target":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    goto :goto_1
.end method

.method public areTasksOverlapping(ILandroid/graphics/Rect;)Z
    .locals 3
    .param p1, "stackId"    # I
    .param p2, "taskRect"    # Landroid/graphics/Rect;

    .prologue
    .line 2014
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 2015
    .local v0, "focusedTaskRect":Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 2016
    .local v1, "otherTaskRect":Landroid/graphics/Rect;
    const/4 v2, 0x3

    if-ne p1, v2, :cond_2

    .line 2017
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2021
    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    const/4 v2, 0x0

    :goto_1
    return v2

    .line 2018
    :cond_2
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 2019
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 2022
    :cond_3
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v2

    goto :goto_1
.end method

.method public calculateBoundsForPosition(IILandroid/graphics/Rect;)V
    .locals 6
    .param p1, "position"    # I
    .param p2, "dockSide"    # I
    .param p3, "outRect"    # Landroid/graphics/Rect;

    .prologue
    .line 1503
    iget v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayWidth:I

    .line 1504
    iget v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayHeight:I

    iget v5, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerSize:I

    move v0, p1

    move v1, p2

    move-object v2, p3

    .line 1503
    invoke-static/range {v0 .. v5}, Lcom/android/internal/policy/DockedDividerUtils;->calculateBoundsForPosition(IILandroid/graphics/Rect;III)V

    .line 1502
    return-void
.end method

.method public checkDividerFlag(I)Z
    .locals 2
    .param p1, "flag"    # I

    .prologue
    const/4 v0, 0x0

    .line 2052
    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerFlag:I

    and-int/2addr v1, p1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public dismissDockStack(ZJ)V
    .locals 2
    .param p1, "minimized"    # Z
    .param p2, "animDuration"    # J

    .prologue
    .line 1328
    if-eqz p1, :cond_0

    .line 1329
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/systemui/stackdivider/DividerView$7;

    invoke-direct {v1, p0}, Lcom/android/systemui/stackdivider/DividerView$7;-><init>(Lcom/android/systemui/stackdivider/DividerView;)V

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1327
    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 2404
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2405
    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedStackMinimized:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/systemui/stackdivider/DividerView;->drawKnoxBadge(Landroid/graphics/Canvas;)V

    .line 2403
    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 2398
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 2399
    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedStackMinimized:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/systemui/stackdivider/DividerView;->drawKnoxBadge(Landroid/graphics/Canvas;)V

    .line 2397
    :cond_0
    return-void
.end method

.method public flingToFocusedStackSnapTarget(IZ)V
    .locals 12
    .param p1, "stackId"    # I
    .param p2, "resize"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v11, 0x1

    .line 922
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedStackSnapTargetMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 923
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->cancelFlingAnimation()V

    .line 924
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getDockSide()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    .line 925
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->initializeSnapAlgorithm()V

    .line 926
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-virtual {v0, v11}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->setResizing(Z)V

    .line 927
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManager:Lcom/android/systemui/stackdivider/DividerWindowManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/DividerWindowManager;->setSlippery(Z)V

    .line 928
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->liftBackground()V

    .line 929
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v0, v1, v1}, Lcom/android/systemui/stackdivider/DividerHandleView;->setTouching(ZZ)V

    .line 931
    iput-boolean p2, p0, Lcom/android/systemui/stackdivider/DividerView;->mResizeTaskToStackBounds:Z

    .line 932
    iput-boolean v11, p0, Lcom/android/systemui/stackdivider/DividerView;->mHasAutoResizingSnapTarget:Z

    .line 933
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-virtual {v0, v11}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->setAutoResizingEnabled(Z)V

    .line 935
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getCurrentPosition()I

    move-result v2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedStackSnapTargetMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    const-wide/16 v4, 0xfa

    const-wide/16 v6, 0x1e

    const-wide/16 v8, 0x0

    sget-object v10, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    move-object v1, p0

    invoke-direct/range {v1 .. v10}, Lcom/android/systemui/stackdivider/DividerView;->flingTo(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;JJJLandroid/view/animation/Interpolator;)V

    .line 936
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManager:Lcom/android/systemui/stackdivider/DividerWindowManager;

    invoke-virtual {v0, v11}, Lcom/android/systemui/stackdivider/DividerWindowManager;->setSlippery(Z)V

    .line 937
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->releaseBackground()V

    .line 921
    :cond_0
    return-void
.end method

.method public flingToNewFocusedStackSnapTarget(Landroid/graphics/Rect;I)V
    .locals 12
    .param p1, "taskBounds"    # Landroid/graphics/Rect;
    .param p2, "stackId"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v11, 0x1

    .line 943
    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    if-eq p2, v11, :cond_0

    .line 944
    return-void

    .line 946
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->cancelFlingAnimation()V

    .line 947
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getDockSide()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    .line 948
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->initializeSnapAlgorithm()V

    .line 949
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-virtual {v0, v11}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->setResizing(Z)V

    .line 950
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManager:Lcom/android/systemui/stackdivider/DividerWindowManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/DividerWindowManager;->setSlippery(Z)V

    .line 951
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->liftBackground()V

    .line 952
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v0, v1, v1}, Lcom/android/systemui/stackdivider/DividerHandleView;->setTouching(ZZ)V

    .line 954
    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mResizeTaskToStackBounds:Z

    .line 955
    iput-boolean v11, p0, Lcom/android/systemui/stackdivider/DividerView;->mHasAutoResizingSnapTarget:Z

    .line 956
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-virtual {v0, v11}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->setAutoResizingEnabled(Z)V

    .line 957
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/stackdivider/DividerView;->initAutoResizingTargets(Landroid/graphics/Rect;I)V

    .line 959
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getCurrentPosition()I

    move-result v2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedStackSnapTargetMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    const-wide/16 v4, 0xfa

    const-wide/16 v6, 0x1e

    const-wide/16 v8, 0x0

    sget-object v10, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    move-object v1, p0

    invoke-direct/range {v1 .. v10}, Lcom/android/systemui/stackdivider/DividerView;->flingTo(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;JJJLandroid/view/animation/Interpolator;)V

    .line 960
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManager:Lcom/android/systemui/stackdivider/DividerWindowManager;

    invoke-virtual {v0, v11}, Lcom/android/systemui/stackdivider/DividerWindowManager;->setSlippery(Z)V

    .line 961
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->releaseBackground()V

    .line 941
    return-void
.end method

.method public forceResizeStack(IILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "taskPosition"    # I
    .param p3, "taskSnapTarget"    # Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    .prologue
    const/4 v2, 0x1

    .line 2794
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mLastResizeRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 2795
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->resetTmpRects()V

    .line 2796
    invoke-direct {p0, v2}, Lcom/android/systemui/stackdivider/DividerView;->clearAutoResizeState(Z)V

    .line 2798
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->cancelFlingAnimation()V

    .line 2799
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->initializeSnapAlgorithm()V

    .line 2800
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->releaseBackground()V

    .line 2802
    const v0, 0x7fffffff

    if-ne p2, v0, :cond_0

    .line 2803
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    .line 2804
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-static {v0}, Lcom/android/internal/policy/DockedDividerUtils;->invertDockSide(I)I

    move-result v0

    .line 2805
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    .line 2804
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    .line 2808
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/stackdivider/DividerView;->resizeStack(IILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V

    .line 2809
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManager:Lcom/android/systemui/stackdivider/DividerWindowManager;

    invoke-virtual {v0, v2}, Lcom/android/systemui/stackdivider/DividerWindowManager;->setSlippery(Z)V

    .line 2793
    return-void
.end method

.method public getAutoResizingTargetPos(I)I
    .locals 1
    .param p1, "stackId"    # I

    .prologue
    .line 2028
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedStackSnapTargetMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2029
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedStackSnapTargetMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    iget v0, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    return v0

    .line 2031
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getCurrentPosition()I
    .locals 2

    .prologue
    .line 662
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mTempInt2:[I

    invoke-virtual {p0, v0}, Lcom/android/systemui/stackdivider/DividerView;->getLocationOnScreen([I)V

    .line 663
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 664
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mTempInt2:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerInsets:I

    add-int/2addr v0, v1

    return v0

    .line 666
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mTempInt2:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerInsets:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;
    .locals 1

    .prologue
    .line 657
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->initializeSnapAlgorithm()V

    .line 658
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    return-object v0
.end method

.method public getWindowManagerProxy()Lcom/android/systemui/stackdivider/WindowManagerProxy;
    .locals 1

    .prologue
    .line 553
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    return-object v0
.end method

.method public growsRecents()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1814
    iget-boolean v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mGrowRecents:Z

    if-eqz v2, :cond_1

    .line 1815
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-virtual {v2}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getDockSide()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 1816
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getCurrentPosition()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getLastSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v3

    iget v3, v3, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    move v0, v1

    .line 1817
    .local v0, "result":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 1818
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMiddleTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v1

    iget v1, v1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    return v1

    .end local v0    # "result":Z
    :cond_1
    move v0, v1

    .line 1814
    goto :goto_0

    .line 1820
    .restart local v0    # "result":Z
    :cond_2
    const/4 v1, -0x1

    return v1
.end method

.method public hasSameAutoResizingTarget(ILandroid/graphics/Rect;)Z
    .locals 2
    .param p1, "stackId"    # I
    .param p2, "taskRect"    # Landroid/graphics/Rect;

    .prologue
    .line 2035
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedStackSnapTargetMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2036
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedStackSnapTargetMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    iget v0, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    .line 2037
    invoke-direct {p0, p2, p1}, Lcom/android/systemui/stackdivider/DividerView;->calcAutoResizableSnapTargetPosition(Landroid/graphics/Rect;I)I

    move-result v1

    .line 2036
    if-ne v0, v1, :cond_0

    .line 2038
    const/4 v0, 0x1

    return v0

    .line 2040
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public initTaskBounds(ILandroid/graphics/Rect;)V
    .locals 3
    .param p1, "stackId"    # I
    .param p2, "taskRect"    # Landroid/graphics/Rect;

    .prologue
    .line 1986
    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    .line 1987
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mOriginalDockedTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1988
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1994
    :cond_0
    :goto_0
    invoke-direct {p0, p2, p1}, Lcom/android/systemui/stackdivider/DividerView;->calcAutoResizableSnapTargetPosition(Landroid/graphics/Rect;I)I

    move-result v0

    .line 1995
    .local v0, "targetPos":I
    new-instance v1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v0, v2}, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;-><init>(III)V

    invoke-virtual {p0, v1, p1}, Lcom/android/systemui/stackdivider/DividerView;->setAutoResizingTarget(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;I)V

    .line 1984
    return-void

    .line 1989
    .end local v0    # "targetPos":I
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 1990
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mOriginalFullScreenTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1991
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mOriginalFullScreenTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public injectDependencies(Lcom/android/systemui/stackdivider/DividerWindowManager;Lcom/android/systemui/stackdivider/DividerState;)V
    .locals 0
    .param p1, "windowManager"    # Lcom/android/systemui/stackdivider/DividerWindowManager;
    .param p2, "dividerState"    # Lcom/android/systemui/stackdivider/DividerState;

    .prologue
    .line 548
    iput-object p1, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManager:Lcom/android/systemui/stackdivider/DividerWindowManager;

    .line 549
    iput-object p2, p0, Lcom/android/systemui/stackdivider/DividerView;->mState:Lcom/android/systemui/stackdivider/DividerState;

    .line 547
    return-void
.end method

.method public isFlingAnimationRunning()Z
    .locals 1

    .prologue
    .line 2287
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mCurrentAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 2288
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mCurrentAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    return v0

    .line 2290
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isHorizontalDivision()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1461
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isMoving()Z
    .locals 1

    .prologue
    .line 2276
    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mMoving:Z

    return v0
.end method

.method public needToShowHiddenArea(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 2
    .param p1, "focusedStackRect"    # Landroid/graphics/Rect;
    .param p2, "focusedTaskRect"    # Landroid/graphics/Rect;

    .prologue
    .line 1037
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 1039
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 1038
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 1041
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public notifyDockSideChanged(I)V
    .locals 3
    .param p1, "newDockSide"    # I

    .prologue
    .line 1432
    iput p1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    .line 1433
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedShadow:Lcom/android/systemui/stackdivider/MinimizedDockShadow;

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->setDockSide(I)V

    .line 1437
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedFrameView:Lcom/android/systemui/stackdivider/FocusedFrameView;

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/stackdivider/FocusedFrameView;->setDockSide(IZ)V

    .line 1441
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->requestLayout()V

    .line 1431
    return-void
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 6
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .prologue
    const/4 v5, 0x0

    .line 486
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mStableInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetLeft()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 487
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mStableInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetTop()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 490
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetTop()I

    move-result v2

    .line 491
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetRight()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v4

    .line 490
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 492
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    if-eqz v0, :cond_1

    .line 493
    iput-object v5, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    .line 494
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->initializeSnapAlgorithm()V

    .line 497
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0

    .line 488
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mStableInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetRight()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 489
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mStableInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v1

    if-eq v0, v1, :cond_1

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 465
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 466
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/events/EventBus;->register(Ljava/lang/Object;)V

    .line 464
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/DockedTopTaskEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/DockedTopTaskEvent;

    .prologue
    .line 1843
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTopTaskEvent:Z

    .line 1844
    iget v0, p1, Lcom/android/systemui/recents/events/activity/DockedTopTaskEvent;->dragMode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1845
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mState:Lcom/android/systemui/stackdivider/DividerState;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/stackdivider/DividerState;->growAfterRecentsDrawn:Z

    .line 1863
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1864
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getStableInsets(Landroid/graphics/Rect;)V

    .line 1865
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    .line 1866
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->initializeSnapAlgorithm()V

    .line 1840
    :cond_1
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/RecentsActivityStartingEvent;)V
    .locals 4
    .param p1, "recentsActivityStartingEvent"    # Lcom/android/systemui/recents/events/activity/RecentsActivityStartingEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1827
    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTopTaskEvent:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedStackMinimized:Z

    if-eqz v0, :cond_2

    .line 1833
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mGrowRecents:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getWindowManagerProxy()Lcom/android/systemui/stackdivider/WindowManagerProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getDockSide()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1834
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getCurrentPosition()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getLastSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v1

    iget v1, v1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    if-ne v0, v1, :cond_1

    .line 1835
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mState:Lcom/android/systemui/stackdivider/DividerState;

    iput-boolean v3, v0, Lcom/android/systemui/stackdivider/DividerState;->growAfterRecentsDrawn:Z

    .line 1836
    invoke-virtual {p0, v2, v2}, Lcom/android/systemui/stackdivider/DividerView;->startDragging(ZZ)Z

    .line 1824
    :cond_1
    return-void

    .line 1828
    :cond_2
    iput-boolean v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mIsRecentsStartingFromSplit:Z

    goto :goto_0
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/UndockingTaskEvent;)V
    .locals 5
    .param p1, "undockingTaskEvent"    # Lcom/android/systemui/recents/events/activity/UndockingTaskEvent;

    .prologue
    .line 1919
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-virtual {v2}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getDockSide()I

    move-result v0

    .line 1920
    .local v0, "dockSide":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedStackMinimized:Z

    if-eqz v2, :cond_1

    .line 1918
    :cond_0
    :goto_0
    return-void

    .line 1923
    :cond_1
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v2

    .line 1924
    new-instance v3, Lcom/android/systemui/stackdivider/events/DividerButtonsVisibleEvent;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/systemui/stackdivider/events/DividerButtonsVisibleEvent;-><init>(I)V

    .line 1923
    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 1927
    invoke-static {v0}, Lcom/android/systemui/stackdivider/DividerView;->dockSideTopLeft(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1928
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v2}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissEndTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v1

    .line 1933
    .local v1, "target":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    :goto_1
    invoke-direct {p0, v1}, Lcom/android/systemui/stackdivider/DividerView;->commitSnapFlags(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V

    .line 1948
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "DOOF"

    .line 1949
    const-string/jumbo v4, "RecentsLong"

    .line 1948
    invoke-static {v2, v3, v4}, Lcom/samsung/android/multiwindow/MultiWindowLogger;->logGSIM(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1929
    .end local v1    # "target":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v2}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissStartTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v1

    goto :goto_1
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/RecentsDrawnEvent;)V
    .locals 7
    .param p1, "drawnEvent"    # Lcom/android/systemui/recents/events/ui/RecentsDrawnEvent;

    .prologue
    const v4, 0x7fffffff

    const/4 v3, 0x0

    .line 1874
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->updateDockSide()V

    .line 1875
    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTopTaskEvent:Z

    if-eqz v1, :cond_2

    .line 1876
    iput-boolean v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTopTaskEvent:Z

    .line 1878
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMiddleTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v1

    iget v1, v1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    .line 1879
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v2}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMiddleTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v2

    .line 1878
    invoke-virtual {p0, v1, v4, v2}, Lcom/android/systemui/stackdivider/DividerView;->forceResizeStack(IILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V

    .line 1909
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mState:Lcom/android/systemui/stackdivider/DividerState;

    iget-boolean v1, v1, Lcom/android/systemui/stackdivider/DividerState;->growAfterRecentsDrawn:Z

    if-eqz v1, :cond_1

    .line 1910
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mState:Lcom/android/systemui/stackdivider/DividerState;

    iput-boolean v3, v1, Lcom/android/systemui/stackdivider/DividerState;->growAfterRecentsDrawn:Z

    .line 1911
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->updateDockSide()V

    .line 1912
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/recents/events/ui/RecentsGrowingEvent;

    invoke-direct {v2}, Lcom/android/systemui/recents/events/ui/RecentsGrowingEvent;-><init>()V

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 1913
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getCurrentPosition()I

    move-result v2

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMiddleTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v3

    const-wide/16 v4, 0x150

    .line 1914
    sget-object v6, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    move-object v1, p0

    .line 1913
    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/stackdivider/DividerView;->stopDragging(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;JLandroid/view/animation/Interpolator;)V

    .line 1871
    :cond_1
    return-void

    .line 1880
    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mIsRecentsStartingFromSplit:Z

    if-eqz v1, :cond_0

    .line 1881
    iput-boolean v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mIsRecentsStartingFromSplit:Z

    .line 1883
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getCurrentPosition()I

    move-result v0

    .line 1884
    .local v0, "currentPos":I
    new-instance v1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    invoke-direct {v1, v0, v0, v3}, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;-><init>(III)V

    invoke-virtual {p0, v0, v4, v1}, Lcom/android/systemui/stackdivider/DividerView;->forceResizeStack(IILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V

    goto :goto_0
.end method

.method public final onBusEvent(Lcom/android/systemui/stackdivider/events/DividerButtonsClickEvent;)V
    .locals 9
    .param p1, "e"    # Lcom/android/systemui/stackdivider/events/DividerButtonsClickEvent;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2064
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    const/4 v0, 0x1

    .line 2065
    .local v0, "landscape":Z
    :goto_0
    iget v4, p1, Lcom/android/systemui/stackdivider/events/DividerButtonsClickEvent;->mType:I

    packed-switch v4, :pswitch_data_0

    .line 2059
    :cond_0
    :goto_1
    :pswitch_0
    return-void

    .line 2064
    .end local v0    # "landscape":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "landscape":Z
    goto :goto_0

    .line 2067
    :pswitch_1
    sget-boolean v4, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_VIEW_SUPPORT:Z

    if-eqz v4, :cond_0

    .line 2068
    if-nez v0, :cond_0

    .line 2069
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->getDividerButtonsTarget()I

    move-result v3

    .line 2070
    .local v3, "topleft":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 2072
    if-nez v3, :cond_2

    .line 2073
    const/4 v2, 0x1

    .line 2075
    .local v2, "snapViewTarget":I
    :goto_2
    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerView;->mOtherRect:Landroid/graphics/Rect;

    const/4 v6, 0x4

    invoke-virtual {p0, v4, v6, v5}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    .line 2076
    if-nez v3, :cond_3

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    .line 2077
    .local v1, "rect":Landroid/graphics/Rect;
    :goto_3
    iget-boolean v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapGuideVisible:Z

    if-eqz v4, :cond_4

    .line 2078
    const/4 v4, 0x0

    invoke-direct {p0, v7, v2, v4}, Lcom/android/systemui/stackdivider/DividerView;->showSnapGuide(ZILandroid/graphics/Rect;)V

    .line 2079
    invoke-virtual {p0, v8, v8}, Lcom/android/systemui/stackdivider/DividerView;->startSnapMode(ZZ)V

    goto :goto_1

    .line 2074
    .end local v1    # "rect":Landroid/graphics/Rect;
    .end local v2    # "snapViewTarget":I
    :cond_2
    const/4 v2, 0x2

    .restart local v2    # "snapViewTarget":I
    goto :goto_2

    .line 2076
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mOtherRect:Landroid/graphics/Rect;

    .restart local v1    # "rect":Landroid/graphics/Rect;
    goto :goto_3

    .line 2080
    :cond_4
    iget-boolean v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapModeRunning:Z

    if-nez v4, :cond_5

    .line 2081
    invoke-direct {p0, v8, v2, v1}, Lcom/android/systemui/stackdivider/DividerView;->showSnapGuide(ZILandroid/graphics/Rect;)V

    goto :goto_1

    .line 2083
    :cond_5
    invoke-virtual {p0, v7, v8}, Lcom/android/systemui/stackdivider/DividerView;->startSnapMode(ZZ)V

    goto :goto_1

    .line 2090
    .end local v1    # "rect":Landroid/graphics/Rect;
    .end local v2    # "snapViewTarget":I
    .end local v3    # "topleft":I
    :pswitch_2
    iget-boolean v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapModeRunning:Z

    if-nez v4, :cond_6

    .line 2091
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->swapTask()V

    goto :goto_1

    .line 2093
    :cond_6
    invoke-virtual {p0, v7, v8}, Lcom/android/systemui/stackdivider/DividerView;->startSnapMode(ZZ)V

    .line 2094
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->swapTask()V

    goto :goto_1

    .line 2098
    :pswitch_3
    iget-boolean v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapModeRunning:Z

    if-nez v4, :cond_7

    .line 2099
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->closeTask()V

    goto :goto_1

    .line 2101
    :cond_7
    invoke-virtual {p0, v7, v8}, Lcom/android/systemui/stackdivider/DividerView;->startSnapMode(ZZ)V

    .line 2102
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->closeTask()V

    goto :goto_1

    .line 2106
    :pswitch_4
    iget-boolean v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapModeRunning:Z

    if-nez v4, :cond_8

    .line 2107
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->EnterFreeformTask()V

    goto :goto_1

    .line 2109
    :cond_8
    invoke-virtual {p0, v7, v8}, Lcom/android/systemui/stackdivider/DividerView;->startSnapMode(ZZ)V

    .line 2110
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->EnterFreeformTask()V

    goto :goto_1

    .line 2065
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public final onBusEvent(Lcom/android/systemui/stackdivider/events/DividerSnapViewVisibleEvent;)V
    .locals 1
    .param p1, "e"    # Lcom/android/systemui/stackdivider/events/DividerSnapViewVisibleEvent;

    .prologue
    .line 2117
    iget-boolean v0, p1, Lcom/android/systemui/stackdivider/events/DividerSnapViewVisibleEvent;->mVisible:Z

    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapGuideVisible:Z

    .line 2116
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/stackdivider/events/DividerStartSnapModeEvent;)V
    .locals 4
    .param p1, "e"    # Lcom/android/systemui/stackdivider/events/DividerStartSnapModeEvent;

    .prologue
    const/4 v3, 0x0

    .line 2121
    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_VIEW_SUPPORT:Z

    if-eqz v0, :cond_0

    .line 2122
    iget-boolean v0, p1, Lcom/android/systemui/stackdivider/events/DividerStartSnapModeEvent;->mStart:Z

    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapModeRunning:Z

    .line 2123
    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapModeRunning:Z

    if-eqz v0, :cond_1

    .line 2124
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0003

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2128
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapModeRunning:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/DividerHandleView;->setSnapViewMode(Z)V

    .line 2120
    :cond_0
    return-void

    .line 2126
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00f4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method public onComputeInternalInsets(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .locals 6
    .param p1, "inoutInfo"    # Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    .prologue
    .line 1799
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    .line 1800
    iget-object v0, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v1}, Lcom/android/systemui/stackdivider/DividerHandleView;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v2}, Lcom/android/systemui/stackdivider/DividerHandleView;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v3}, Lcom/android/systemui/stackdivider/DividerHandleView;->getRight()I

    move-result v3

    .line 1801
    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v4}, Lcom/android/systemui/stackdivider/DividerHandleView;->getBottom()I

    move-result v4

    .line 1800
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Region;->set(IIII)Z

    .line 1802
    iget-object v0, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    .line 1803
    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    sget-object v5, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    .line 1802
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    .line 1798
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v3, 0x0

    .line 1411
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1414
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mLastOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_1

    .line 1415
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mLastOrientation:I

    .line 1416
    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDimming:Z

    if-eqz v0, :cond_0

    .line 1417
    iput-boolean v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mDimming:Z

    .line 1418
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-virtual {v1}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getLastDimLayerTargetStack()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->setResizeDimLayer(ZIF)V

    .line 1421
    :cond_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    invoke-direct {p0, v0, v3}, Lcom/android/systemui/stackdivider/DividerView;->hideGuideView(Landroid/graphics/Point;Z)V

    .line 1427
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->updateDisplayInfo()V

    .line 1410
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 471
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 472
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/events/EventBus;->unregister(Ljava/lang/Object;)V

    .line 475
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->unregisterKnoxBadgeReceiver()V

    .line 479
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/stackdivider/DividerView;->hideGuideView(Landroid/graphics/Point;Z)V

    .line 470
    return-void
.end method

.method protected onFinishInflate()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 361
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 362
    const v1, 0x7f130141

    invoke-virtual {p0, v1}, Lcom/android/systemui/stackdivider/DividerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/stackdivider/DividerHandleView;

    iput-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    .line 364
    sget-boolean v1, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_VIEW_SUPPORT:Z

    if-eqz v1, :cond_0

    .line 365
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mMWm:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;

    invoke-virtual {v1}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->isSnapViewRunning()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapModeRunning:Z

    .line 368
    :cond_0
    const v1, 0x7f13013e

    invoke-virtual {p0, v1}, Lcom/android/systemui/stackdivider/DividerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    .line 369
    const v1, 0x7f13013f

    invoke-virtual {p0, v1}, Lcom/android/systemui/stackdivider/DividerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/stackdivider/MinimizedDockShadow;

    iput-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedShadow:Lcom/android/systemui/stackdivider/MinimizedDockShadow;

    .line 370
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v1, p0}, Lcom/android/systemui/stackdivider/DividerHandleView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 371
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 372
    const v2, 0x1050021

    .line 371
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerWindowWidth:I

    .line 373
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 376
    sget v2, Lcom/samsung/android/framework/res/R$dimen;->docked_stack_divider_insets:I

    .line 373
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerInsets:I

    .line 379
    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerWindowWidth:I

    iget v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerInsets:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerSize:I

    .line 380
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 381
    const v2, 0x7f0d031a

    .line 380
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mTouchElevation:I

    .line 382
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 383
    const v2, 0x7f0c0043

    .line 382
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mLongPressEntraceAnimDuration:I

    .line 384
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120015

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mGrowRecents:Z

    .line 385
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mTouchSlop:I

    .line 386
    new-instance v1, Lcom/android/systemui/statusbar/FlingAnimationUtils;

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x3e99999a    # 0.3f

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/statusbar/FlingAnimationUtils;-><init>(Landroid/content/Context;F)V

    iput-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    .line 387
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->updateDisplayInfo()V

    .line 388
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v4, :cond_1

    const/4 v0, 0x1

    .line 390
    .local v0, "landscape":Z
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 391
    if-eqz v0, :cond_2

    const/16 v1, 0x3f6

    .line 390
    :goto_1
    invoke-static {v3, v1}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/systemui/stackdivider/DividerHandleView;->setPointerIcon(Landroid/view/PointerIcon;)V

    .line 392
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    .line 393
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandleDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v1, v2}, Lcom/android/systemui/stackdivider/DividerHandleView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 396
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0037

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mGuideHeight:I

    .line 401
    const v1, 0x7f130140

    invoke-virtual {p0, v1}, Lcom/android/systemui/stackdivider/DividerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/stackdivider/FocusedFrameView;

    iput-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedFrameView:Lcom/android/systemui/stackdivider/FocusedFrameView;

    .line 402
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedFrameView:Lcom/android/systemui/stackdivider/FocusedFrameView;

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/android/systemui/stackdivider/FocusedFrameView;->initialize(Landroid/view/View;)V

    .line 403
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mAudioManager:Landroid/media/AudioManager;

    .line 404
    new-instance v1, Landroid/view/GestureDetector;

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/systemui/stackdivider/DividerView$3;

    invoke-direct {v3, p0}, Lcom/android/systemui/stackdivider/DividerView$3;-><init>(Lcom/android/systemui/stackdivider/DividerView;)V

    invoke-direct {v1, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 454
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->setBackgroundFraction()V

    .line 360
    return-void

    .line 388
    .end local v0    # "landscape":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "landscape":Z
    goto :goto_0

    .line 391
    :cond_2
    const/16 v1, 0x3f7

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 9
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 502
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 503
    const/4 v1, 0x0

    .line 504
    .local v1, "minimizeLeft":I
    const/4 v2, 0x0

    .line 506
    .local v2, "minimizeTop":I
    const/4 v0, 0x0

    .line 508
    .local v0, "hasCustomDimen":Z
    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedShadow:Lcom/android/systemui/stackdivider/MinimizedDockShadow;

    invoke-virtual {v3}, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->getMinimizedShadowDimen()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    const/4 v0, 0x1

    .line 511
    :goto_0
    iget v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 512
    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v2

    .line 521
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 522
    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedShadow:Lcom/android/systemui/stackdivider/MinimizedDockShadow;

    .line 523
    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedShadow:Lcom/android/systemui/stackdivider/MinimizedDockShadow;

    invoke-virtual {v3}, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->getMeasuredWidth()I

    move-result v3

    add-int v5, v1, v3

    .line 524
    if-eqz v0, :cond_6

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedShadow:Lcom/android/systemui/stackdivider/MinimizedDockShadow;

    invoke-virtual {v3}, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->getMinimizedShadowDimen()I

    move-result v3

    :goto_2
    add-int/2addr v3, v2

    .line 522
    invoke-virtual {v4, v1, v2, v5, v3}, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->layout(IIII)V

    .line 533
    :goto_3
    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedFrameView:Lcom/android/systemui/stackdivider/FocusedFrameView;

    invoke-virtual {v3}, Lcom/android/systemui/stackdivider/FocusedFrameView;->updateLayout()V

    .line 541
    if-eqz p1, :cond_1

    .line 542
    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    new-instance v4, Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v5}, Lcom/android/systemui/stackdivider/DividerHandleView;->getLeft()I

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v6}, Lcom/android/systemui/stackdivider/DividerHandleView;->getTop()I

    move-result v6

    .line 543
    iget-object v7, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v7}, Lcom/android/systemui/stackdivider/DividerHandleView;->getRight()I

    move-result v7

    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v8}, Lcom/android/systemui/stackdivider/DividerHandleView;->getBottom()I

    move-result v8

    .line 542
    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, v4}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->setTouchRegion(Landroid/graphics/Rect;)V

    .line 501
    :cond_1
    return-void

    .line 508
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 513
    :cond_3
    iget v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 514
    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v1

    goto :goto_1

    .line 515
    :cond_4
    iget v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 516
    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v4

    if-eqz v0, :cond_5

    .line 517
    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedShadow:Lcom/android/systemui/stackdivider/MinimizedDockShadow;

    invoke-virtual {v3}, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->getMinimizedShadowDimen()I

    move-result v3

    .line 516
    :goto_4
    sub-int v1, v4, v3

    goto :goto_1

    .line 517
    :cond_5
    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedShadow:Lcom/android/systemui/stackdivider/MinimizedDockShadow;

    invoke-virtual {v3}, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->getWidth()I

    move-result v3

    goto :goto_4

    .line 525
    :cond_6
    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedShadow:Lcom/android/systemui/stackdivider/MinimizedDockShadow;

    invoke-virtual {v3}, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->getMeasuredHeight()I

    move-result v3

    goto :goto_2

    .line 527
    :cond_7
    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedShadow:Lcom/android/systemui/stackdivider/MinimizedDockShadow;

    .line 528
    if-eqz v0, :cond_8

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedShadow:Lcom/android/systemui/stackdivider/MinimizedDockShadow;

    invoke-virtual {v3}, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->getMinimizedShadowDimen()I

    move-result v3

    :goto_5
    add-int/2addr v3, v1

    .line 530
    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedShadow:Lcom/android/systemui/stackdivider/MinimizedDockShadow;

    invoke-virtual {v5}, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v2

    .line 527
    invoke-virtual {v4, v1, v2, v3, v5}, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->layout(IIII)V

    goto :goto_3

    .line 529
    :cond_8
    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedShadow:Lcom/android/systemui/stackdivider/MinimizedDockShadow;

    invoke-virtual {v3}, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->getMeasuredWidth()I

    move-result v3

    goto :goto_5
.end method

.method onMultiWindowAppTransitionFinished()V
    .locals 1

    .prologue
    .line 2295
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedFrameView:Lcom/android/systemui/stackdivider/FocusedFrameView;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/FocusedFrameView;->onMultiWindowAppTransitionFinished()V

    .line 2293
    return-void
.end method

.method onMultiWindowFocusedStackChanged(I)V
    .locals 1
    .param p1, "stackId"    # I

    .prologue
    .line 2254
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedFrameView:Lcom/android/systemui/stackdivider/FocusedFrameView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/stackdivider/FocusedFrameView;->setFocusedStack(I)V

    .line 2253
    return-void
.end method

.method onMultiWindowSettingChanged(Z)V
    .locals 2
    .param p1, "on"    # Z

    .prologue
    .line 2259
    if-nez p1, :cond_0

    .line 2260
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getWindowManagerProxy()Lcom/android/systemui/stackdivider/WindowManagerProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getFocusedStackId()I

    move-result v0

    .line 2261
    .local v0, "focusedStackId":I
    new-instance v1, Lcom/android/systemui/stackdivider/DividerView$8;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/stackdivider/DividerView$8;-><init>(Lcom/android/systemui/stackdivider/DividerView;I)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/stackdivider/DividerView;->post(Ljava/lang/Runnable;)Z

    .line 2257
    .end local v0    # "focusedStackId":I
    :cond_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 16
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 673
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/systemui/stackdivider/DividerView;->mAdjustedForIme:Z

    if-eqz v12, :cond_0

    .line 674
    const/4 v12, 0x1

    return v12

    .line 677
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/systemui/stackdivider/DividerView;->convertToScreenCoordinates(Landroid/view/MotionEvent;)V

    .line 678
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/stackdivider/DividerView;->mGestureDetector:Landroid/view/GestureDetector;

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 679
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v12

    and-int/lit16 v2, v12, 0xff

    .line 680
    .local v2, "action":I
    packed-switch v2, :pswitch_data_0

    .line 848
    :cond_1
    :goto_0
    const/4 v12, 0x1

    return v12

    .line 682
    :pswitch_0
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/stackdivider/DividerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 683
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/stackdivider/DividerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 684
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    float-to-int v12, v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/systemui/stackdivider/DividerView;->mStartX:I

    .line 685
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    float-to-int v12, v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/systemui/stackdivider/DividerView;->mStartY:I

    .line 686
    const/4 v12, 0x1

    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/android/systemui/stackdivider/DividerView;->startDragging(ZZ)Z

    move-result v7

    .line 687
    .local v7, "result":Z
    if-nez v7, :cond_2

    .line 690
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/stackdivider/DividerView;->stopDragging()V

    .line 692
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/stackdivider/DividerView;->getCurrentPosition()I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/systemui/stackdivider/DividerView;->mStartPosition:I

    .line 695
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/systemui/stackdivider/DividerView;->mMaximizeGuideView:Z

    .line 696
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 697
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v12}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getFirstSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v12

    iget v12, v12, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    div-int/lit8 v12, v12, 0x2

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/systemui/stackdivider/DividerView;->mDismissStartPosition:I

    .line 698
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayHeight:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v13}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getLastSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v13

    iget v13, v13, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    sub-int/2addr v12, v13

    div-int/lit8 v12, v12, 0x2

    .line 699
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v13}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getLastSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v13

    iget v13, v13, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    .line 698
    add-int/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/systemui/stackdivider/DividerView;->mDismissEndPosition:I

    .line 707
    :goto_1
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/systemui/stackdivider/DividerView;->mMoving:Z

    .line 708
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/systemui/stackdivider/DividerView;->mSure:Z

    .line 709
    return v7

    .line 701
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v12}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getFirstSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v12

    iget v12, v12, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    div-int/lit8 v12, v12, 0x2

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/systemui/stackdivider/DividerView;->mDismissStartPosition:I

    .line 702
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayWidth:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v13}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getLastSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v13

    iget v13, v13, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    sub-int/2addr v12, v13

    div-int/lit8 v12, v12, 0x2

    .line 703
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v13}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getLastSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v13

    iget v13, v13, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    .line 702
    add-int/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/systemui/stackdivider/DividerView;->mDismissEndPosition:I

    goto :goto_1

    .line 711
    .end local v7    # "result":Z
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/stackdivider/DividerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 712
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    float-to-int v10, v12

    .line 713
    .local v10, "x":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    float-to-int v11, v12

    .line 715
    .local v11, "y":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v12

    if-eqz v12, :cond_7

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/systemui/stackdivider/DividerView;->mStartY:I

    sub-int v12, v11, v12

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/stackdivider/DividerView;->mTouchSlop:I

    if-le v12, v13, :cond_7

    const/4 v4, 0x1

    .line 717
    .local v4, "exceededTouchSlop":Z
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/systemui/stackdivider/DividerView;->mMoving:Z

    if-nez v12, :cond_4

    if-eqz v4, :cond_4

    .line 718
    move-object/from16 v0, p0

    iput v10, v0, Lcom/android/systemui/stackdivider/DividerView;->mStartX:I

    .line 719
    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/systemui/stackdivider/DividerView;->mStartY:I

    .line 720
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/systemui/stackdivider/DividerView;->mMoving:Z

    .line 722
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/systemui/stackdivider/DividerView;->mSure:Z

    if-nez v12, :cond_5

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/systemui/stackdivider/DividerView;->mStartY:I

    sub-int/2addr v12, v11

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    const/16 v13, 0x32

    if-le v12, v13, :cond_5

    .line 723
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/systemui/stackdivider/DividerView;->mSure:Z

    .line 725
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/systemui/stackdivider/DividerView;->mMoving:Z

    if-eqz v12, :cond_1

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v13, -0x1

    if-eq v12, v13, :cond_1

    .line 727
    sget-boolean v12, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_VIEW_SUPPORT:Z

    if-eqz v12, :cond_6

    .line 728
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/systemui/stackdivider/DividerView;->mSnapGuideVisible:Z

    if-eqz v12, :cond_6

    .line 729
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v14}, Lcom/android/systemui/stackdivider/DividerView;->showSnapGuide(ZILandroid/graphics/Rect;)V

    .line 734
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedStackMinimized:Z

    if-eqz v12, :cond_9

    .line 763
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    .line 764
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/stackdivider/DividerView;->mStartPosition:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 763
    invoke-virtual {v12, v13, v14, v15}, Lcom/android/internal/policy/DividerSnapAlgorithm;->calculateSnapTarget(IFZ)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v8

    .line 765
    .local v8, "snapTarget":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/android/systemui/stackdivider/DividerView;->calculatePosition(II)I

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/stackdivider/DividerView;->mStartPosition:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v8}, Lcom/android/systemui/stackdivider/DividerView;->resizeStack(IILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V

    goto/16 :goto_0

    .line 716
    .end local v4    # "exceededTouchSlop":Z
    .end local v8    # "snapTarget":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v12

    if-nez v12, :cond_8

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/systemui/stackdivider/DividerView;->mStartX:I

    sub-int v12, v10, v12

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/stackdivider/DividerView;->mTouchSlop:I

    if-le v12, v13, :cond_8

    const/4 v4, 0x1

    .restart local v4    # "exceededTouchSlop":Z
    goto/16 :goto_2

    .end local v4    # "exceededTouchSlop":Z
    :cond_8
    const/4 v4, 0x0

    .restart local v4    # "exceededTouchSlop":Z
    goto/16 :goto_2

    .line 735
    :cond_9
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/android/systemui/stackdivider/DividerView;->calculatePosition(II)I

    move-result v6

    .line 736
    .local v6, "position":I
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/systemui/stackdivider/DividerView;->mMaximizeGuideView:Z

    if-nez v12, :cond_10

    .line 737
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v12

    if-eqz v12, :cond_d

    .line 738
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/systemui/stackdivider/DividerView;->mDismissStartPosition:I

    if-lt v6, v12, :cond_a

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/systemui/stackdivider/DividerView;->mDismissEndPosition:I

    if-le v6, v12, :cond_c

    .line 739
    :cond_a
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v6}, Lcom/android/systemui/stackdivider/DividerView;->scrollGuideView(II)V

    .line 760
    :cond_b
    :goto_3
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/systemui/stackdivider/DividerView;->drawGuideViewDimLayer(I)V

    goto/16 :goto_0

    .line 741
    :cond_c
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v6}, Lcom/android/systemui/stackdivider/DividerView;->drawGuideView(II)V

    goto :goto_3

    .line 744
    :cond_d
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/systemui/stackdivider/DividerView;->mDismissStartPosition:I

    if-lt v6, v12, :cond_e

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/systemui/stackdivider/DividerView;->mDismissEndPosition:I

    if-le v6, v12, :cond_f

    .line 745
    :cond_e
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v11}, Lcom/android/systemui/stackdivider/DividerView;->scrollGuideView(II)V

    goto :goto_3

    .line 747
    :cond_f
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v11}, Lcom/android/systemui/stackdivider/DividerView;->drawGuideView(II)V

    goto :goto_3

    .line 751
    :cond_10
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/systemui/stackdivider/DividerView;->mDismissStartPosition:I

    if-le v6, v12, :cond_b

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/systemui/stackdivider/DividerView;->mDismissEndPosition:I

    if-ge v6, v12, :cond_b

    .line 752
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v12

    if-eqz v12, :cond_11

    .line 753
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v6}, Lcom/android/systemui/stackdivider/DividerView;->drawGuideView(II)V

    .line 757
    :goto_4
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/systemui/stackdivider/DividerView;->mMaximizeGuideView:Z

    goto :goto_3

    .line 755
    :cond_11
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v11}, Lcom/android/systemui/stackdivider/DividerView;->drawGuideView(II)V

    goto :goto_4

    .line 771
    .end local v4    # "exceededTouchSlop":Z
    .end local v6    # "position":I
    .end local v10    # "x":I
    .end local v11    # "y":I
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/stackdivider/DividerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 773
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v12

    float-to-int v10, v12

    .line 774
    .restart local v10    # "x":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v12

    float-to-int v11, v12

    .line 776
    .restart local v11    # "y":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/stackdivider/DividerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v13, 0x3e8

    invoke-virtual {v12, v13}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 777
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/android/systemui/stackdivider/DividerView;->calculatePosition(II)I

    move-result v6

    .line 780
    .restart local v6    # "position":I
    sget-boolean v12, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_VIEW_SUPPORT:Z

    if-eqz v12, :cond_13

    .line 781
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/systemui/stackdivider/DividerView;->mSnapModeRunning:Z

    if-eqz v12, :cond_13

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/systemui/stackdivider/DividerView;->mSure:Z

    if-nez v12, :cond_12

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/systemui/stackdivider/DividerView;->mMaximizeGuideView:Z

    if-eqz v12, :cond_13

    .line 782
    :cond_12
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v12

    new-instance v13, Lcom/android/systemui/stackdivider/events/DividerStartSnapModeEvent;

    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-direct {v13, v14, v15}, Lcom/android/systemui/stackdivider/events/DividerStartSnapModeEvent;-><init>(ZZ)V

    invoke-virtual {v12, v13}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 789
    :cond_13
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/systemui/stackdivider/DividerView;->mMaximizeGuideView:Z

    if-nez v12, :cond_1b

    .line 790
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v12, v13, v14}, Lcom/android/systemui/stackdivider/DividerView;->stopDragging(IFZZ)V

    .line 791
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    .line 792
    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 791
    invoke-virtual {v12, v6, v13, v14}, Lcom/android/internal/policy/DividerSnapAlgorithm;->calculateSnapTarget(IFZ)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v8

    .line 793
    .restart local v8    # "snapTarget":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    const v12, 0x7fffffff

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v12, v8}, Lcom/android/systemui/stackdivider/DividerView;->resizeStack(IILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V

    .line 795
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v12}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getFirstSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v12

    iget v12, v12, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    if-lt v6, v12, :cond_14

    .line 796
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v12}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getLastSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v12

    iget v12, v12, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    if-le v6, v12, :cond_17

    .line 797
    :cond_14
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/systemui/stackdivider/DividerView;->mStartPosition:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v13}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getFirstSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v13

    iget v13, v13, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    if-eq v12, v13, :cond_15

    .line 798
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/systemui/stackdivider/DividerView;->mStartPosition:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v13}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getLastSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v13

    iget v13, v13, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    if-ne v12, v13, :cond_16

    const/4 v5, 0x1

    .line 799
    .local v5, "fling":Z
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v12

    if-eqz v12, :cond_19

    .line 800
    new-instance v13, Landroid/graphics/Point;

    invoke-direct {v13, v10, v6}, Landroid/graphics/Point;-><init>(II)V

    if-eqz v5, :cond_18

    const/4 v12, 0x0

    :goto_6
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v12}, Lcom/android/systemui/stackdivider/DividerView;->hideGuideView(Landroid/graphics/Point;Z)V

    .line 839
    .end local v5    # "fling":Z
    :goto_7
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/systemui/stackdivider/DividerView;->mMoving:Z

    .line 840
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/systemui/stackdivider/DividerView;->mSure:Z

    .line 842
    sget-boolean v12, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_VIEW_SUPPORT:Z

    if-eqz v12, :cond_1

    .line 843
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/systemui/stackdivider/DividerView;->adjStartPosition:Z

    goto/16 :goto_0

    .line 797
    :cond_15
    const/4 v5, 0x1

    .restart local v5    # "fling":Z
    goto :goto_5

    .line 798
    .end local v5    # "fling":Z
    :cond_16
    const/4 v5, 0x0

    .restart local v5    # "fling":Z
    goto :goto_5

    .line 795
    .end local v5    # "fling":Z
    :cond_17
    const/4 v5, 0x0

    .restart local v5    # "fling":Z
    goto :goto_5

    .line 800
    :cond_18
    const/4 v12, 0x1

    goto :goto_6

    .line 802
    :cond_19
    new-instance v13, Landroid/graphics/Point;

    invoke-direct {v13, v6, v11}, Landroid/graphics/Point;-><init>(II)V

    if-eqz v5, :cond_1a

    const/4 v12, 0x0

    :goto_8
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v12}, Lcom/android/systemui/stackdivider/DividerView;->hideGuideView(Landroid/graphics/Point;Z)V

    goto :goto_7

    :cond_1a
    const/4 v12, 0x1

    goto :goto_8

    .line 805
    .end local v5    # "fling":Z
    .end local v8    # "snapTarget":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    :cond_1b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v12, v6, v13, v14}, Lcom/android/internal/policy/DividerSnapAlgorithm;->calculateSnapTarget(IFZ)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v8

    .line 806
    .restart local v8    # "snapTarget":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/systemui/stackdivider/DividerView;->mDismissStartPosition:I

    if-ge v6, v12, :cond_1d

    .line 807
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v12}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissStartTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v8

    .line 812
    :cond_1c
    :goto_9
    iget v9, v8, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    .line 813
    .local v9, "snapTargetPosition":I
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 814
    .local v3, "dismissPosition":Landroid/graphics/Point;
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v12

    if-eqz v12, :cond_1e

    .line 815
    invoke-virtual {v3, v10, v9}, Landroid/graphics/Point;->set(II)V

    .line 820
    :goto_a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/stackdivider/DividerView;->mScrollGuideViewAnimator:Landroid/animation/ValueAnimator;

    if-eqz v12, :cond_1f

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/stackdivider/DividerView;->mScrollGuideViewAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v12}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v12

    if-eqz v12, :cond_1f

    .line 821
    new-instance v12, Landroid/os/Handler;

    invoke-direct {v12}, Landroid/os/Handler;-><init>()V

    new-instance v13, Lcom/android/systemui/stackdivider/DividerView$4;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v9, v3}, Lcom/android/systemui/stackdivider/DividerView$4;-><init>(Lcom/android/systemui/stackdivider/DividerView;ILandroid/graphics/Point;)V

    .line 826
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/stackdivider/DividerView;->mScrollGuideViewAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v14}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v14

    .line 821
    invoke-virtual {v12, v13, v14, v15}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 831
    :goto_b
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/systemui/stackdivider/DividerView;->mMaximizeGuideView:Z

    goto/16 :goto_7

    .line 808
    .end local v3    # "dismissPosition":Landroid/graphics/Point;
    .end local v9    # "snapTargetPosition":I
    :cond_1d
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/systemui/stackdivider/DividerView;->mDismissEndPosition:I

    if-le v6, v12, :cond_1c

    .line 809
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v12}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissEndTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v8

    goto :goto_9

    .line 817
    .restart local v3    # "dismissPosition":Landroid/graphics/Point;
    .restart local v9    # "snapTargetPosition":I
    :cond_1e
    invoke-virtual {v3, v9, v11}, Landroid/graphics/Point;->set(II)V

    goto :goto_a

    .line 828
    :cond_1f
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v12, v13, v14}, Lcom/android/systemui/stackdivider/DividerView;->stopDragging(IFZZ)V

    .line 829
    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v12}, Lcom/android/systemui/stackdivider/DividerView;->hideGuideView(Landroid/graphics/Point;Z)V

    goto :goto_b

    .line 680
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public resizeStack(IILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V
    .locals 24
    .param p1, "position"    # I
    .param p2, "taskPosition"    # I
    .param p3, "taskSnapTarget"    # Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    .prologue
    .line 1509
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mAdjustedForIme:Z

    if-eqz v3, :cond_0

    .line 1510
    return-void

    .line 1513
    :cond_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    .line 1515
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mLastResizeRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mEntranceAnimationRunning:Z

    if-eqz v3, :cond_3

    .line 1520
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getZ()F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    .line 1521
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    .line 1524
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mLastResizeRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1525
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mEntranceAnimationRunning:Z

    if-eqz v3, :cond_6

    const v3, 0x7fffffff

    move/from16 v0, p2

    if-eq v0, v3, :cond_6

    .line 1526
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mCurrentAnimator:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_4

    .line 1527
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    .line 1532
    :goto_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-static {v3}, Lcom/android/internal/policy/DockedDividerUtils;->invertDockSide(I)I

    move-result v3

    .line 1533
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    .line 1532
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    .line 1534
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    .line 1535
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    .line 1534
    const/4 v6, 0x0

    .line 1535
    const/4 v8, 0x0

    .line 1534
    invoke-virtual/range {v3 .. v8}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->resizeDockedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1613
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDissmissEnd:Z

    if-eqz v3, :cond_11

    .line 1614
    return-void

    .line 1516
    :cond_3
    return-void

    .line 1529
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v3

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayHeight:I

    .line 1530
    :goto_2
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    .line 1529
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    goto :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayWidth:I

    goto :goto_2

    .line 1536
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mExitAnimationRunning:Z

    if-eqz v3, :cond_7

    const v3, 0x7fffffff

    move/from16 v0, p2

    if-eq v0, v3, :cond_7

    .line 1538
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    .line 1537
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    .line 1539
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mExitStartPosition:I

    .line 1540
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-static {v4}, Lcom/android/internal/policy/DockedDividerUtils;->invertDockSide(I)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    .line 1539
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    .line 1541
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherInsetRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1542
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v3, v1}, Lcom/android/systemui/stackdivider/DividerView;->applyExitAnimationParallax(Landroid/graphics/Rect;I)V

    .line 1543
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    .line 1544
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherInsetRect:Landroid/graphics/Rect;

    .line 1543
    const/4 v6, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->resizeDockedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto/16 :goto_1

    .line 1547
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mMaximizeAnimationRunning:Z

    .line 1546
    if-eqz v3, :cond_b

    .line 1547
    const v3, 0x7fffffff

    move/from16 v0, p2

    if-eq v0, v3, :cond_b

    .line 1548
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-static {v3}, Lcom/android/internal/policy/DockedDividerUtils;->invertDockSide(I)I

    move-result v11

    .line 1550
    .local v11, "dockSideInverted":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherRect:Landroid/graphics/Rect;

    .line 1549
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v11, v3}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    .line 1551
    move-object/from16 v0, p3

    iget v3, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->flag:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_8

    const/16 v23, 0x1

    .line 1552
    .local v23, "topFull":Z
    :goto_3
    if-eqz v23, :cond_9

    .line 1553
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    .line 1554
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mExitStartPosition:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v11, v4}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    .line 1560
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedInsetRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1561
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherInsetRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1562
    if-eqz v23, :cond_a

    .line 1563
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v3, v1}, Lcom/android/systemui/stackdivider/DividerView;->applyExitAnimationParallax(Landroid/graphics/Rect;I)V

    .line 1567
    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedInsetRect:Landroid/graphics/Rect;

    .line 1568
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherInsetRect:Landroid/graphics/Rect;

    .line 1567
    invoke-virtual/range {v3 .. v8}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->resizeDockedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto/16 :goto_1

    .line 1551
    .end local v23    # "topFull":Z
    :cond_8
    const/16 v23, 0x0

    goto :goto_3

    .line 1556
    .restart local v23    # "topFull":Z
    :cond_9
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mExitStartPosition:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    .line 1557
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1, v11, v3}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    .line 1558
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/systemui/stackdivider/DividerView;->alignTopLeft(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_4

    .line 1565
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v3, v1}, Lcom/android/systemui/stackdivider/DividerView;->applyExitAnimationParallax(Landroid/graphics/Rect;I)V

    goto :goto_5

    .line 1570
    .end local v11    # "dockSideInverted":I
    .end local v23    # "topFull":Z
    :cond_b
    const v3, 0x7fffffff

    move/from16 v0, p2

    if-ne v0, v3, :cond_c

    .line 1571
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mHasAutoResizingSnapTarget:Z

    .line 1570
    if-eqz v3, :cond_10

    .line 1572
    :cond_c
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-static {v3}, Lcom/android/internal/policy/DockedDividerUtils;->invertDockSide(I)I

    move-result v3

    .line 1573
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherRect:Landroid/graphics/Rect;

    .line 1572
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    .line 1574
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-static {v3}, Lcom/android/internal/policy/DockedDividerUtils;->invertDockSide(I)I

    move-result v11

    .line 1576
    .restart local v11    # "dockSideInverted":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v3, v2}, Lcom/android/systemui/stackdivider/DividerView;->restrictDismissingTaskPosition(IILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)I

    move-result v8

    .line 1578
    .local v8, "taskPositionDocked":I
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v11, v2}, Lcom/android/systemui/stackdivider/DividerView;->restrictDismissingTaskPosition(IILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)I

    move-result v14

    .line 1579
    .local v14, "taskPositionOther":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v3, v4}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    .line 1580
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v11, v3}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    .line 1583
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mHasAutoResizingSnapTarget:Z

    if-eqz v3, :cond_d

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mResizeTaskToStackBounds:Z

    if-eqz v3, :cond_e

    .line 1589
    :cond_d
    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayWidth:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayHeight:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 1590
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/systemui/stackdivider/DividerView;->alignTopLeft(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1591
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/systemui/stackdivider/DividerView;->alignTopLeft(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1592
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedInsetRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1593
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherInsetRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1594
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-static {v3}, Lcom/android/systemui/stackdivider/DividerView;->dockSideTopLeft(I)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 1595
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedInsetRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/systemui/stackdivider/DividerView;->alignTopLeft(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1596
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherInsetRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/systemui/stackdivider/DividerView;->alignBottomRight(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1601
    :goto_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    move-object/from16 v3, p0

    move-object/from16 v6, p3

    move/from16 v7, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/stackdivider/DividerView;->applyDismissingParallax(Landroid/graphics/Rect;ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;II)V

    .line 1603
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    move-object/from16 v9, p0

    move-object/from16 v12, p3

    move/from16 v13, p1

    invoke-direct/range {v9 .. v14}, Lcom/android/systemui/stackdivider/DividerView;->applyDismissingParallax(Landroid/graphics/Rect;ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;II)V

    .line 1605
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedInsetRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    .line 1606
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherInsetRect:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    .line 1605
    invoke-virtual/range {v15 .. v20}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->resizeDockedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto/16 :goto_1

    .line 1584
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mOriginalDockedTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1585
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mOriginalFullScreenTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_6

    .line 1598
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedInsetRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/systemui/stackdivider/DividerView;->alignBottomRight(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1599
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherInsetRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/systemui/stackdivider/DividerView;->alignTopLeft(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_7

    .line 1608
    .end local v8    # "taskPositionDocked":I
    .end local v11    # "dockSideInverted":I
    .end local v14    # "taskPositionOther":I
    :cond_10
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v15 .. v20}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->resizeDockedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto/16 :goto_1

    .line 1619
    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getClosestDismissTarget(I)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v21

    .line 1620
    .local v21, "closestDismissTarget":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/stackdivider/DividerView;->getDimFraction(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)F

    move-result v22

    .line 1621
    .local v22, "dimFraction":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    const/4 v3, 0x0

    cmpl-float v3, v22, v3

    if-eqz v3, :cond_12

    const/4 v3, 0x1

    .line 1622
    :goto_8
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/systemui/stackdivider/DividerView;->getStackIdForDismissTarget(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)I

    move-result v5

    .line 1621
    move/from16 v0, v22

    invoke-virtual {v4, v3, v5, v0}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->setResizeDimLayer(ZIF)V

    .line 1627
    const/4 v3, 0x0

    cmpl-float v3, v22, v3

    if-eqz v3, :cond_13

    .line 1628
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDimming:Z

    .line 1507
    :goto_9
    return-void

    .line 1621
    :cond_12
    const/4 v3, 0x0

    goto :goto_8

    .line 1630
    :cond_13
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDimming:Z

    goto :goto_9
.end method

.method public setAdjustedForIme(Z)V
    .locals 3
    .param p1, "adjustedForIme"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1340
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->updateDockSide()V

    .line 1341
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/android/systemui/stackdivider/DividerHandleView;->setAlpha(F)V

    .line 1342
    if-nez p1, :cond_2

    .line 1343
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->resetBackground()V

    .line 1351
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedFrameView:Lcom/android/systemui/stackdivider/FocusedFrameView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/stackdivider/FocusedFrameView;->setAdjustedForIme(Z)V

    .line 1352
    if-nez p1, :cond_3

    .line 1353
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/stackdivider/DividerView;->clearAutoResizeState(Z)V

    .line 1362
    :goto_2
    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/DividerView;->mAdjustedForIme:Z

    .line 1339
    return-void

    .line 1341
    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    .line 1344
    :cond_2
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 1345
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    .line 1346
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    goto :goto_1

    .line 1356
    :cond_3
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/stackdivider/DividerView;->hideGuideView(Landroid/graphics/Point;Z)V

    goto :goto_2
.end method

.method public setAdjustedForIme(ZJ)V
    .locals 4
    .param p1, "adjustedForIme"    # Z
    .param p2, "animDuration"    # J

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 1366
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->updateDockSide()V

    .line 1367
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/DividerHandleView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1368
    sget-object v3, Lcom/android/systemui/stackdivider/DividerView;->IME_ADJUST_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 1367
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 1370
    if-eqz p1, :cond_3

    move v0, v1

    .line 1367
    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1372
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    .line 1373
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    .line 1374
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1375
    if-eqz p1, :cond_0

    const/high16 v2, 0x3f000000    # 0.5f

    .line 1374
    :cond_0
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 1377
    :cond_1
    if-nez p1, :cond_2

    .line 1378
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mResetBackgroundRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 1380
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1381
    sget-object v1, Lcom/android/systemui/stackdivider/DividerView;->IME_ADJUST_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 1380
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1387
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedFrameView:Lcom/android/systemui/stackdivider/FocusedFrameView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/stackdivider/FocusedFrameView;->setAdjustedForIme(Z)V

    .line 1388
    if-nez p1, :cond_4

    .line 1389
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/stackdivider/DividerView;->clearAutoResizeState(Z)V

    .line 1398
    :goto_1
    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/DividerView;->mAdjustedForIme:Z

    .line 1365
    return-void

    :cond_3
    move v0, v2

    .line 1370
    goto :goto_0

    .line 1392
    :cond_4
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/stackdivider/DividerView;->hideGuideView(Landroid/graphics/Point;Z)V

    goto :goto_1
.end method

.method public setAutoResizingTarget(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;I)V
    .locals 2
    .param p1, "focusedStackSnapTarget"    # Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    .param p2, "focusedStackId"    # I

    .prologue
    const/4 v1, 0x0

    .line 1958
    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    .line 1959
    return-void

    .line 1962
    :cond_0
    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedStackSnapTargetMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1963
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedStackSnapTargetMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_4

    .line 1964
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedStackSnapTargetMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1969
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedStackSnapTargetMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 1970
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->setAutoResizingEnabled(Z)V

    .line 1971
    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mHasAutoResizingSnapTarget:Z

    .line 1956
    :cond_3
    return-void

    .line 1965
    :cond_4
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedStackSnapTargetMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1966
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedStackSnapTargetMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0
.end method

.method public setDividerFlag(IZ)V
    .locals 2
    .param p1, "flag"    # I
    .param p2, "val"    # Z

    .prologue
    .line 2044
    if-eqz p2, :cond_0

    .line 2045
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerFlag:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerFlag:I

    .line 2043
    :goto_0
    return-void

    .line 2047
    :cond_0
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerFlag:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerFlag:I

    goto :goto_0
.end method

.method public setIgnoreAutoResize(Z)V
    .locals 0
    .param p1, "ignore"    # Z

    .prologue
    .line 2817
    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/DividerView;->mIgnoreAutoResize:Z

    .line 2816
    return-void
.end method

.method public setMinimizedDockStack(Z)V
    .locals 6
    .param p1, "minimized"    # Z

    .prologue
    const/4 v5, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 1248
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->updateDockSide()V

    .line 1249
    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Lcom/android/systemui/stackdivider/DividerHandleView;->setAlpha(F)V

    .line 1250
    if-nez p1, :cond_3

    .line 1251
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->resetBackground()V

    .line 1262
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedShadow:Lcom/android/systemui/stackdivider/MinimizedDockShadow;

    if-eqz p1, :cond_7

    :goto_2
    invoke-virtual {v0, v2}, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->setAlpha(F)V

    .line 1266
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedFrameView:Lcom/android/systemui/stackdivider/FocusedFrameView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/stackdivider/FocusedFrameView;->setMinimizedDockStack(Z)V

    .line 1267
    if-eqz p1, :cond_1

    .line 1269
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    invoke-direct {p0, v0, v3}, Lcom/android/systemui/stackdivider/DividerView;->hideGuideView(Landroid/graphics/Point;Z)V

    .line 1271
    invoke-direct {p0, v3}, Lcom/android/systemui/stackdivider/DividerView;->clearAutoResizeState(Z)V

    .line 1276
    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedStackMinimized:Z

    .line 1247
    return-void

    :cond_2
    move v0, v2

    .line 1249
    goto :goto_0

    .line 1252
    :cond_3
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_4

    .line 1253
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    .line 1254
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    goto :goto_1

    .line 1255
    :cond_4
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    if-eq v0, v5, :cond_5

    .line 1256
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v4, 0x3

    if-ne v0, v4, :cond_0

    .line 1257
    :cond_5
    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    if-ne v0, v5, :cond_6

    move v0, v3

    :goto_3
    int-to-float v0, v0

    invoke-virtual {v4, v0}, Landroid/view/View;->setPivotX(F)V

    .line 1260
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    goto :goto_1

    .line 1259
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    goto :goto_3

    :cond_7
    move v2, v1

    .line 1262
    goto :goto_2
.end method

.method public setMinimizedDockStack(ZJ)V
    .locals 6
    .param p1, "minimized"    # Z
    .param p2, "animDuration"    # J

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 1280
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->updateDockSide()V

    .line 1281
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/DividerHandleView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1282
    sget-object v4, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 1281
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 1284
    if-eqz p1, :cond_3

    move v0, v1

    .line 1281
    :goto_0
    invoke-virtual {v4, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1286
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_5

    .line 1287
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    .line 1288
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 1289
    if-eqz p1, :cond_4

    move v0, v1

    .line 1288
    :goto_1
    invoke-virtual {v4, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 1298
    :cond_0
    :goto_2
    if-nez p1, :cond_1

    .line 1299
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mResetBackgroundRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 1301
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedShadow:Lcom/android/systemui/stackdivider/MinimizedDockShadow;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1302
    if-eqz p1, :cond_9

    .line 1301
    :goto_3
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1303
    sget-object v1, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    .line 1301
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1306
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1307
    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 1306
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1313
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedFrameView:Lcom/android/systemui/stackdivider/FocusedFrameView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/stackdivider/FocusedFrameView;->setMinimizedDockStack(ZJ)V

    .line 1314
    if-eqz p1, :cond_2

    .line 1316
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    invoke-direct {p0, v0, v3}, Lcom/android/systemui/stackdivider/DividerView;->hideGuideView(Landroid/graphics/Point;Z)V

    .line 1318
    invoke-direct {p0, v3}, Lcom/android/systemui/stackdivider/DividerView;->clearAutoResizeState(Z)V

    .line 1323
    :cond_2
    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedStackMinimized:Z

    .line 1279
    return-void

    :cond_3
    move v0, v2

    .line 1284
    goto :goto_0

    :cond_4
    move v0, v2

    .line 1289
    goto :goto_1

    .line 1290
    :cond_5
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    if-eq v0, v5, :cond_6

    .line 1291
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v4, 0x3

    if-ne v0, v4, :cond_0

    .line 1292
    :cond_6
    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    if-ne v0, v5, :cond_7

    move v0, v3

    :goto_4
    int-to-float v0, v0

    invoke-virtual {v4, v0}, Landroid/view/View;->setPivotX(F)V

    .line 1295
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 1296
    if-eqz p1, :cond_8

    move v0, v1

    .line 1295
    :goto_5
    invoke-virtual {v4, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_2

    .line 1294
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    goto :goto_4

    :cond_8
    move v0, v2

    .line 1296
    goto :goto_5

    :cond_9
    move v2, v1

    .line 1302
    goto :goto_3
.end method

.method public setOriginalTaskBounds(ILandroid/graphics/Rect;)V
    .locals 1
    .param p1, "stackId"    # I
    .param p2, "taskRect"    # Landroid/graphics/Rect;

    .prologue
    .line 1977
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 1978
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mOriginalDockedTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1976
    :cond_0
    :goto_0
    return-void

    .line 1979
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1980
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mOriginalFullScreenTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public shouldIgnoreAutoResize()Z
    .locals 1

    .prologue
    .line 2813
    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mIgnoreAutoResize:Z

    return v0
.end method

.method public startDragging(ZZ)Z
    .locals 4
    .param p1, "animate"    # Z
    .param p2, "touching"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 557
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->cancelFlingAnimation()V

    .line 563
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-virtual {v2}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getDockSide()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    .line 564
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->initializeSnapAlgorithm()V

    .line 565
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-virtual {v2, v0}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->setResizing(Z)V

    .line 566
    if-eqz p2, :cond_0

    .line 567
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManager:Lcom/android/systemui/stackdivider/DividerWindowManager;

    invoke-virtual {v2, v1}, Lcom/android/systemui/stackdivider/DividerWindowManager;->setSlippery(Z)V

    .line 575
    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDissmissEnd:Z

    .line 576
    invoke-direct {p0, v0}, Lcom/android/systemui/stackdivider/DividerView;->clearAutoResizeState(Z)V

    .line 577
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-virtual {v2}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->startDividerDragging()V

    .line 581
    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/stackdivider/events/StartedDragingEvent;

    invoke-direct {v3}, Lcom/android/systemui/stackdivider/events/StartedDragingEvent;-><init>()V

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 582
    iget v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method startSnapMode(ZZ)V
    .locals 2
    .param p1, "isStart"    # Z
    .param p2, "sendToSerivce"    # Z

    .prologue
    .line 2137
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/stackdivider/events/DividerStartSnapModeEvent;

    invoke-direct {v1, p1, p2}, Lcom/android/systemui/stackdivider/events/DividerStartSnapModeEvent;-><init>(ZZ)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 2136
    return-void
.end method

.method public stopDragging(IFZZ)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "velocity"    # F
    .param p3, "avoidDismissStart"    # Z
    .param p4, "logMetrics"    # Z

    .prologue
    .line 595
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->stopDividerDragging()V

    .line 597
    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_VIEW_SUPPORT:Z

    if-eqz v0, :cond_1

    .line 598
    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapModeRunning:Z

    if-nez v0, :cond_0

    .line 599
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/stackdivider/DividerView;->fling(IFZZ)V

    .line 605
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManager:Lcom/android/systemui/stackdivider/DividerWindowManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/DividerWindowManager;->setSlippery(Z)V

    .line 586
    return-void

    .line 603
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/stackdivider/DividerView;->fling(IFZZ)V

    goto :goto_0
.end method

.method public stopDragging(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;JJJLandroid/view/animation/Interpolator;)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "target"    # Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    .param p3, "duration"    # J
    .param p5, "startDelay"    # J
    .param p7, "endDelay"    # J
    .param p9, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    const/4 v2, 0x1

    .line 626
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/stackdivider/DividerHandleView;->setTouching(ZZ)V

    .line 627
    invoke-direct/range {p0 .. p9}, Lcom/android/systemui/stackdivider/DividerView;->flingTo(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;JJJLandroid/view/animation/Interpolator;)V

    .line 628
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManager:Lcom/android/systemui/stackdivider/DividerWindowManager;

    invoke-virtual {v0, v2}, Lcom/android/systemui/stackdivider/DividerWindowManager;->setSlippery(Z)V

    .line 629
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->releaseBackground()V

    .line 625
    return-void
.end method

.method public stopDragging(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;JLandroid/view/animation/Interpolator;)V
    .locals 11
    .param p1, "position"    # I
    .param p2, "target"    # Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    .param p3, "duration"    # J
    .param p5, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 616
    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object/from16 v10, p5

    invoke-virtual/range {v1 .. v10}, Lcom/android/systemui/stackdivider/DividerView;->stopDragging(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;JJJLandroid/view/animation/Interpolator;)V

    .line 615
    return-void
.end method

.method public swapTask()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 2179
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->updateDockSide()V

    .line 2180
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    .line 2181
    .local v0, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 2182
    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isRecentsActivityVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2178
    :cond_0
    :goto_0
    return-void

    .line 2184
    :cond_1
    sget v1, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->MW_FLAG_SWAPPING:I

    invoke-virtual {p0, v1, v3}, Lcom/android/systemui/stackdivider/DividerView;->setDividerFlag(IZ)V

    .line 2185
    invoke-direct {p0, v3}, Lcom/android/systemui/stackdivider/DividerView;->clearAutoResizeState(Z)V

    .line 2186
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 2187
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 2189
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-virtual {v1}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->swapTasks()V

    .line 2194
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "SPAC"

    .line 2195
    const-string/jumbo v3, "Switch"

    .line 2194
    invoke-static {v1, v2, v3}, Lcom/samsung/android/multiwindow/MultiWindowLogger;->logGSIM(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
