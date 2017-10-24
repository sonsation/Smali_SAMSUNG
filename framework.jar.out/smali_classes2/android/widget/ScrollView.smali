.class public Landroid/widget/ScrollView;
.super Landroid/widget/FrameLayout;
.source "ScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ScrollView$1;,
        Landroid/widget/ScrollView$2;,
        Landroid/widget/ScrollView$3;,
        Landroid/widget/ScrollView$4;,
        Landroid/widget/ScrollView$5;,
        Landroid/widget/ScrollView$HoverScrollHandler;,
        Landroid/widget/ScrollView$SavedState;
    }
.end annotation


# static fields
.field static final ANIMATED_SCROLL_GAP:I = 0xfa

.field private static final HOVERSCROLL_DOWN:I = 0x2

.field private static final HOVERSCROLL_HEIGHT_BOTTOM_DP:I = 0x19

.field private static final HOVERSCROLL_HEIGHT_TOP_DP:I = 0x19

.field private static final HOVERSCROLL_SPEED_FASTER:F = 3000.0f

.field private static final HOVERSCROLL_UP:I = 0x1

.field private static final INVALID_POINTER:I = -0x1

.field static final MAX_SCROLL_FACTOR:F = 0.5f

.field private static final MSG_HOVERSCROLL_MOVE:I = 0x1

.field private static final MSG_HOVERSCROLL_MOVE_FASTER:I = 0x2

.field private static final MSG_HOVERSCROLL_MOVE_TO_END:I = 0x3

.field private static final MSG_QC_HIDE:I = 0x0

.field private static final QC_BOTTOM:I = 0x4

.field private static final QC_LEFT:I = 0x1

.field private static final QC_RIGHT:I = 0x3

.field private static final QC_STATE_NONE:I = 0x0

.field private static final QC_STATE_PRESSED:I = 0x2

.field private static final QC_STATE_SHOWN:I = 0x1

.field private static final QC_TOP:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ScrollView"

.field private static final THRESHOLD_RATIO_Y:I = 0x50

.field static final sLinearInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private GO_TO_TOP_HIDE:I

.field private final GTP_STATE_NONE:I

.field private final GTP_STATE_PRESSED:I

.field private final GTP_STATE_SHOWN:I

.field private HOVERSCROLL_DELAY:I

.field private HOVERSCROLL_SPEED:F

.field private QC_ICON_HIDE_DELAY:I

.field private final SWITCH_CONTROL_FLING:I

.field private final SWITCH_CONTROL_SCROLL_MAX_DURATION:F

.field private final SWITCH_CONTROL_SCROLL_MIN_DURATION:F

.field private USE_SET_INTEGRATOR_HAPTIC:Z

.field private mActivePointerId:I

.field private mAutoscrollDuration:F

.field private mAutoscrollDurationGap:F

.field private mChildToScrollTo:Landroid/view/View;

.field private mEdgeGlowBottom:Landroid/widget/EdgeEffect;

.field private mEdgeGlowTop:Landroid/widget/EdgeEffect;

.field private mFillViewport:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mFlingStrictSpan:Landroid/os/StrictMode$Span;

.field private mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

.field private mHoverAreaEnter:Z

.field private mHoverBottomAreaHeight:I

.field private mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

.field private mHoverRecognitionCurrentTime:J

.field private mHoverRecognitionDurationTime:J

.field private mHoverRecognitionStartTime:J

.field private mHoverScrollDirection:I

.field private mHoverScrollEnable:Z

.field private mHoverScrollSpeed:I

.field private mHoverScrollStartTime:J

.field private mHoverScrollTimeInterval:J

.field private mHoverTopAreaHeight:I

.field private mIgnoreDelaychildPrerssed:Z

.field private mIsBeingDragged:Z

.field private mIsFirstScrollview:Z

.field private mIsHoverOverscrolled:Z

.field private mIsLayoutDirty:Z

.field private mIsQCBtnFadeInSet:Z

.field private mIsQCBtnFadeOutSet:Z

.field private mIsQCShown:Z

.field private mLastHapticScrollY:I

.field private mLastMotionY:I

.field private mLastScroll:J

.field private mLastScrollBarState:Z

.field private mLastScrollY:I

.field private mLinear:Z

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mNeedsHoverScroll:Z

.field private mNestedYOffset:I

.field private mOverflingDistance:I

.field private mOverscrollDistance:I

.field protected mPixelThresholdY:I

.field private mPreviousTextViewScroll:Z

.field private mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

.field private mQCBtnFadeInAnimator:Landroid/animation/ValueAnimator;

.field private final mQCBtnFadeInRunnable:Ljava/lang/Runnable;

.field private mQCBtnFadeOutAnimator:Landroid/animation/ValueAnimator;

.field private final mQCBtnFadeOutRunnable:Ljava/lang/Runnable;

.field private mQCBtnPressedDrawable:Landroid/graphics/drawable/Drawable;

.field private mQCLocation:I

.field private mQCRect:Landroid/graphics/Rect;

.field private mQCstate:I

.field private mSavedState:Landroid/widget/ScrollView$SavedState;

.field private final mScrollConsumed:[I

.field private final mScrollOffset:[I

.field private mScrollStrictSpan:Landroid/os/StrictMode$Span;

.field private mScroller:Landroid/widget/OverScroller;

.field private final mSemAutoHide:Ljava/lang/Runnable;

.field private mSemEnableGoToTop:Z

.field private mSemFollow2016A:Z

.field private final mSemGoToToFadeInRunnable:Ljava/lang/Runnable;

.field private final mSemGoToToFadeOutRunnable:Ljava/lang/Runnable;

.field private mSemGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

.field private mSemGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

.field private mSemGoToTopFadeOutStart:Z

.field private mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

.field private mSemGoToTopLastState:I

.field private mSemGoToTopRect:Landroid/graphics/Rect;

.field private mSemGoToTopState:I

.field private mSemIsGoToTopShown:Z

.field private mSemScrollChnages:I

.field private mShowFadeOutGTP:I

.field mShowGTPAtFirstTime:Z

.field private mSizeChange:Z

.field private mSmoothScrollingEnabled:Z

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static synthetic -get0(Landroid/widget/ScrollView;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/widget/ScrollView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic -get1(Landroid/widget/ScrollView;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic -set0(Landroid/widget/ScrollView;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/widget/ScrollView;->mIsQCShown:Z

    return p1
.end method

.method static synthetic -set1(Landroid/widget/ScrollView;I)I
    .locals 0

    iput p1, p0, Landroid/widget/ScrollView;->mShowFadeOutGTP:I

    return p1
.end method

.method static synthetic -wrap0(Landroid/widget/ScrollView;Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic -wrap1(Landroid/widget/ScrollView;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/ScrollView;->playQCBtnFadeIn()V

    return-void
.end method

.method static synthetic -wrap2(Landroid/widget/ScrollView;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/ScrollView;->playQCBtnFadeOut()V

    return-void
.end method

.method static synthetic -wrap3(Landroid/widget/ScrollView;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/ScrollView;->semPlayGotoToFadeIn()V

    return-void
.end method

.method static synthetic -wrap4(Landroid/widget/ScrollView;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/ScrollView;->semPlayGotoToFadeOut()V

    return-void
.end method

.method static synthetic -wrap5(Landroid/widget/ScrollView;I)V
    .locals 0
    .param p1, "where"    # I

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;->semSetupGoToTop(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 170
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Landroid/widget/ScrollView;->sLinearInterpolator:Landroid/view/animation/Interpolator;

    .line 114
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 356
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 355
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 360
    const v0, 0x1010080

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 359
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 364
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 363
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v8, -0x1

    const-wide/16 v6, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 368
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 123
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 128
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string/jumbo v4, "SEC_FLOATING_FEATURE_FRAMEWORK_ENABLE_INTEGRATOR_HAPTIC"

    invoke-virtual {v1, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Landroid/widget/ScrollView;->USE_SET_INTEGRATOR_HAPTIC:Z

    .line 139
    iput-boolean v2, p0, Landroid/widget/ScrollView;->mIsLayoutDirty:Z

    .line 146
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/ScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 153
    iput-boolean v3, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    .line 171
    iput-boolean v3, p0, Landroid/widget/ScrollView;->mLinear:Z

    .line 175
    iput-boolean v2, p0, Landroid/widget/ScrollView;->mSmoothScrollingEnabled:Z

    .line 187
    iput-boolean v3, p0, Landroid/widget/ScrollView;->mSemEnableGoToTop:Z

    .line 189
    iput-boolean v3, p0, Landroid/widget/ScrollView;->mSizeChange:Z

    .line 190
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/ScrollView;->mSemGoToTopRect:Landroid/graphics/Rect;

    .line 191
    iput v3, p0, Landroid/widget/ScrollView;->GTP_STATE_NONE:I

    .line 192
    iput v2, p0, Landroid/widget/ScrollView;->GTP_STATE_SHOWN:I

    .line 193
    iput v5, p0, Landroid/widget/ScrollView;->GTP_STATE_PRESSED:I

    .line 194
    iput v3, p0, Landroid/widget/ScrollView;->mSemGoToTopState:I

    .line 195
    iput v3, p0, Landroid/widget/ScrollView;->mSemGoToTopLastState:I

    .line 196
    iput v3, p0, Landroid/widget/ScrollView;->mSemScrollChnages:I

    .line 197
    sget-boolean v1, Landroid/view/View;->TW_SCAFE_2016A:Z

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Landroid/widget/ScrollView;->mSemFollow2016A:Z

    .line 198
    iput-boolean v3, p0, Landroid/widget/ScrollView;->mShowGTPAtFirstTime:Z

    .line 199
    iput v3, p0, Landroid/widget/ScrollView;->mShowFadeOutGTP:I

    .line 200
    iput-boolean v3, p0, Landroid/widget/ScrollView;->mIsFirstScrollview:Z

    .line 206
    iput v8, p0, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 224
    new-array v1, v5, [I

    iput-object v1, p0, Landroid/widget/ScrollView;->mScrollOffset:[I

    .line 225
    new-array v1, v5, [I

    iput-object v1, p0, Landroid/widget/ScrollView;->mScrollConsumed:[I

    .line 234
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 235
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 257
    iput v3, p0, Landroid/widget/ScrollView;->mHoverTopAreaHeight:I

    .line 259
    iput v3, p0, Landroid/widget/ScrollView;->mHoverBottomAreaHeight:I

    .line 265
    iput-wide v6, p0, Landroid/widget/ScrollView;->mHoverRecognitionDurationTime:J

    .line 267
    iput-wide v6, p0, Landroid/widget/ScrollView;->mHoverRecognitionCurrentTime:J

    .line 269
    iput-wide v6, p0, Landroid/widget/ScrollView;->mHoverRecognitionStartTime:J

    .line 271
    const-wide/16 v4, 0x12c

    iput-wide v4, p0, Landroid/widget/ScrollView;->mHoverScrollTimeInterval:J

    .line 273
    iput-wide v6, p0, Landroid/widget/ScrollView;->mHoverScrollStartTime:J

    .line 275
    iput v8, p0, Landroid/widget/ScrollView;->mHoverScrollDirection:I

    .line 280
    iput-boolean v3, p0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    .line 282
    iput-boolean v3, p0, Landroid/widget/ScrollView;->mIgnoreDelaychildPrerssed:Z

    .line 284
    iput-boolean v3, p0, Landroid/widget/ScrollView;->mPreviousTextViewScroll:Z

    .line 296
    iput-boolean v2, p0, Landroid/widget/ScrollView;->mHoverScrollEnable:Z

    .line 301
    iput-boolean v3, p0, Landroid/widget/ScrollView;->mHoverAreaEnter:Z

    .line 306
    const/high16 v1, 0x44480000    # 800.0f

    iput v1, p0, Landroid/widget/ScrollView;->HOVERSCROLL_SPEED:F

    .line 316
    const/16 v1, 0xf

    iput v1, p0, Landroid/widget/ScrollView;->HOVERSCROLL_DELAY:I

    .line 318
    const/16 v1, 0x1e

    iput v1, p0, Landroid/widget/ScrollView;->QC_ICON_HIDE_DELAY:I

    .line 320
    iput-boolean v3, p0, Landroid/widget/ScrollView;->mNeedsHoverScroll:Z

    .line 324
    const/16 v1, 0xfa0

    iput v1, p0, Landroid/widget/ScrollView;->SWITCH_CONTROL_FLING:I

    .line 326
    const v1, 0x3f19999a    # 0.6f

    iput v1, p0, Landroid/widget/ScrollView;->SWITCH_CONTROL_SCROLL_MIN_DURATION:F

    .line 327
    const v1, 0x4188cccd    # 17.1f

    iput v1, p0, Landroid/widget/ScrollView;->SWITCH_CONTROL_SCROLL_MAX_DURATION:F

    .line 328
    const v1, 0x3f96c8b4    # 1.178f

    iput v1, p0, Landroid/widget/ScrollView;->mAutoscrollDurationGap:F

    .line 2981
    iput v3, p0, Landroid/widget/ScrollView;->mHoverScrollSpeed:I

    .line 3169
    iput-boolean v2, p0, Landroid/widget/ScrollView;->mIsQCBtnFadeInSet:Z

    .line 3170
    iput-boolean v2, p0, Landroid/widget/ScrollView;->mIsQCBtnFadeOutSet:Z

    .line 3174
    const/16 v1, 0x9c4

    iput v1, p0, Landroid/widget/ScrollView;->GO_TO_TOP_HIDE:I

    .line 3177
    iput-boolean v3, p0, Landroid/widget/ScrollView;->mSemGoToTopFadeOutStart:Z

    .line 3178
    iput-boolean v3, p0, Landroid/widget/ScrollView;->mSemIsGoToTopShown:Z

    .line 3179
    iput-boolean v3, p0, Landroid/widget/ScrollView;->mLastScrollBarState:Z

    .line 3181
    new-instance v1, Landroid/widget/ScrollView$1;

    invoke-direct {v1, p0}, Landroid/widget/ScrollView$1;-><init>(Landroid/widget/ScrollView;)V

    iput-object v1, p0, Landroid/widget/ScrollView;->mSemGoToToFadeOutRunnable:Ljava/lang/Runnable;

    .line 3187
    new-instance v1, Landroid/widget/ScrollView$2;

    invoke-direct {v1, p0}, Landroid/widget/ScrollView$2;-><init>(Landroid/widget/ScrollView;)V

    iput-object v1, p0, Landroid/widget/ScrollView;->mSemGoToToFadeInRunnable:Ljava/lang/Runnable;

    .line 3193
    new-instance v1, Landroid/widget/ScrollView$3;

    invoke-direct {v1, p0}, Landroid/widget/ScrollView$3;-><init>(Landroid/widget/ScrollView;)V

    iput-object v1, p0, Landroid/widget/ScrollView;->mSemAutoHide:Ljava/lang/Runnable;

    .line 3201
    new-instance v1, Landroid/widget/ScrollView$4;

    invoke-direct {v1, p0}, Landroid/widget/ScrollView$4;-><init>(Landroid/widget/ScrollView;)V

    iput-object v1, p0, Landroid/widget/ScrollView;->mQCBtnFadeInRunnable:Ljava/lang/Runnable;

    .line 3207
    new-instance v1, Landroid/widget/ScrollView$5;

    invoke-direct {v1, p0}, Landroid/widget/ScrollView$5;-><init>(Landroid/widget/ScrollView;)V

    iput-object v1, p0, Landroid/widget/ScrollView;->mQCBtnFadeOutRunnable:Ljava/lang/Runnable;

    .line 3213
    iput v8, p0, Landroid/widget/ScrollView;->mQCLocation:I

    .line 3214
    iput v3, p0, Landroid/widget/ScrollView;->mQCstate:I

    .line 3215
    iput-boolean v3, p0, Landroid/widget/ScrollView;->mIsQCShown:Z

    .line 369
    invoke-direct {p0}, Landroid/widget/ScrollView;->initScrollView()V

    .line 372
    sget-object v1, Lcom/android/internal/R$styleable;->ScrollView:[I

    .line 371
    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 374
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 376
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 367
    return-void

    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_0
    move v1, v3

    .line 197
    goto/16 :goto_0
.end method

.method private autoScrollWithDuration(F)V
    .locals 4
    .param p1, "duration"    # F

    .prologue
    .line 1743
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v1

    iget v2, p0, Landroid/widget/ScrollView;->mScrollY:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v0, v1

    .line 1744
    .local v0, "tempdur":I
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/ScrollView;->mLinear:Z

    .line 1745
    const-string/jumbo v1, "ScrollView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "autoScrollWithDuration() duration = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1748
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v1

    .line 1747
    const/4 v2, 0x0

    .line 1746
    invoke-virtual {p0, v2, v1, v0}, Landroid/widget/ScrollView;->smoothScrollByWithDuration(III)V

    .line 1742
    return-void
.end method

.method private canScroll()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 483
    invoke-virtual {p0, v2}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 484
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 485
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 486
    .local v1, "childHeight":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v3

    iget v4, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    add-int/2addr v4, v1

    iget v5, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    add-int/2addr v4, v5

    if-ge v3, v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    .line 488
    .end local v1    # "childHeight":I
    :cond_1
    return v2
.end method

.method private canScrollUp()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 492
    invoke-virtual {p0, v2}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 493
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 494
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 495
    .local v1, "childHeight":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v3

    iget v4, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    add-int/2addr v4, v1

    iget v5, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    add-int/2addr v4, v5

    if-gt v3, v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    .line 497
    .end local v1    # "childHeight":I
    :cond_1
    return v2
.end method

.method private static clamp(III)I
    .locals 1
    .param p0, "n"    # I
    .param p1, "my"    # I
    .param p2, "child"    # I

    .prologue
    const/4 v0, 0x0

    .line 2868
    if-ge p1, p2, :cond_0

    if-gez p0, :cond_1

    .line 2884
    :cond_0
    return v0

    .line 2886
    :cond_1
    add-int v0, p1, p0

    if-le v0, p2, :cond_2

    .line 2892
    sub-int v0, p2, p1

    return v0

    .line 2894
    :cond_2
    return p0
.end method

.method private doScrollToBottomEnd()V
    .locals 1

    .prologue
    .line 3514
    invoke-virtual {p0}, Landroid/widget/ScrollView;->computeVerticalScrollRange()I

    move-result v0

    .line 3515
    .local v0, "scrollRange":I
    invoke-direct {p0, v0}, Landroid/widget/ScrollView;->doScrollY(I)V

    .line 3513
    return-void
.end method

.method private doScrollToTopEnd()V
    .locals 2

    .prologue
    .line 3509
    invoke-virtual {p0}, Landroid/widget/ScrollView;->computeVerticalScrollOffset()I

    move-result v0

    .line 3510
    .local v0, "scrollOffset":I
    neg-int v1, v0

    invoke-direct {p0, v1}, Landroid/widget/ScrollView;->doScrollY(I)V

    .line 3508
    return-void
.end method

.method private doScrollY(I)V
    .locals 2
    .param p1, "delta"    # I

    .prologue
    const/4 v1, 0x0

    .line 2081
    if-eqz p1, :cond_0

    .line 2082
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mSmoothScrollingEnabled:Z

    if-eqz v0, :cond_1

    .line 2083
    invoke-virtual {p0, v1, p1}, Landroid/widget/ScrollView;->smoothScrollBy(II)V

    .line 2080
    :cond_0
    :goto_0
    return-void

    .line 2085
    :cond_1
    invoke-virtual {p0, v1, p1}, Landroid/widget/ScrollView;->scrollBy(II)V

    goto :goto_0
.end method

.method private drawGoToTop(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2836
    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 2837
    .local v1, "scrollY":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 2839
    .local v0, "restoreCount":I
    const/4 v3, 0x0

    int-to-float v4, v1

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2840
    invoke-virtual {p0}, Landroid/widget/ScrollView;->semIsShowingScrollbar()Z

    move-result v2

    .line 2842
    .local v2, "scrollbarState":Z
    iget-boolean v3, p0, Landroid/widget/ScrollView;->mLastScrollBarState:Z

    if-eq v3, v2, :cond_2

    .line 2843
    if-eqz v2, :cond_0

    iget-boolean v3, p0, Landroid/widget/ScrollView;->mIsFirstScrollview:Z

    if-eqz v3, :cond_1

    .line 2844
    :cond_0
    invoke-virtual {p0, v5}, Landroid/widget/ScrollView;->semAutoHide(I)V

    .line 2847
    :cond_1
    iput-boolean v2, p0, Landroid/widget/ScrollView;->mLastScrollBarState:Z

    .line 2849
    :cond_2
    iput-boolean v5, p0, Landroid/widget/ScrollView;->mIsFirstScrollview:Z

    .line 2850
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v3

    if-eqz v3, :cond_4

    .line 2851
    iget v3, p0, Landroid/widget/ScrollView;->mSemScrollChnages:I

    if-ne v3, v6, :cond_3

    iget v3, p0, Landroid/widget/ScrollView;->mSemGoToTopState:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    .line 2852
    invoke-direct {p0, v6}, Landroid/widget/ScrollView;->semSetupGoToTop(I)V

    .line 2853
    iput v5, p0, Landroid/widget/ScrollView;->mSemScrollChnages:I

    .line 2862
    :cond_3
    :goto_0
    iget-object v3, p0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2863
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2835
    return-void

    .line 2857
    :cond_4
    iget v3, p0, Landroid/widget/ScrollView;->mSemGoToTopState:I

    if-eqz v3, :cond_3

    .line 2859
    iget-object v3, p0, Landroid/widget/ScrollView;->mSemGoToToFadeOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v3}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private drawQuickController(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 3449
    iget v2, p0, Landroid/widget/ScrollView;->mQCstate:I

    if-eq v2, v3, :cond_0

    iget v2, p0, Landroid/widget/ScrollView;->mQCstate:I

    if-ne v2, v6, :cond_5

    .line 3450
    :cond_0
    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 3451
    .local v1, "scrollY":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 3452
    .local v0, "restoreCount":I
    int-to-float v2, v1

    invoke-virtual {p1, v5, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3454
    iget v2, p0, Landroid/widget/ScrollView;->mQCstate:I

    if-ne v2, v3, :cond_4

    .line 3455
    iget-boolean v2, p0, Landroid/widget/ScrollView;->mIsQCBtnFadeInSet:Z

    if-eqz v2, :cond_1

    .line 3456
    iget-object v2, p0, Landroid/widget/ScrollView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 3457
    iget-object v2, p0, Landroid/widget/ScrollView;->mQCBtnFadeInRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    .line 3458
    iput-boolean v4, p0, Landroid/widget/ScrollView;->mIsQCBtnFadeInSet:Z

    .line 3460
    :cond_1
    iget-object v2, p0, Landroid/widget/ScrollView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3465
    :cond_2
    :goto_0
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3467
    iput-boolean v3, p0, Landroid/widget/ScrollView;->mIsQCShown:Z

    .line 3468
    iput-boolean v3, p0, Landroid/widget/ScrollView;->mIsQCBtnFadeOutSet:Z

    .line 3448
    .end local v0    # "restoreCount":I
    .end local v1    # "scrollY":I
    :cond_3
    :goto_1
    return-void

    .line 3461
    .restart local v0    # "restoreCount":I
    .restart local v1    # "scrollY":I
    :cond_4
    iget v2, p0, Landroid/widget/ScrollView;->mQCstate:I

    if-ne v2, v6, :cond_2

    .line 3462
    iget-object v2, p0, Landroid/widget/ScrollView;->mQCBtnPressedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 3469
    .end local v0    # "restoreCount":I
    .end local v1    # "scrollY":I
    :cond_5
    iget-boolean v2, p0, Landroid/widget/ScrollView;->mIsQCShown:Z

    if-eqz v2, :cond_3

    .line 3470
    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 3471
    .restart local v1    # "scrollY":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 3472
    .restart local v0    # "restoreCount":I
    int-to-float v2, v1

    invoke-virtual {p1, v5, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3473
    iget-boolean v2, p0, Landroid/widget/ScrollView;->mIsQCBtnFadeOutSet:Z

    if-eqz v2, :cond_6

    .line 3474
    iget-object v2, p0, Landroid/widget/ScrollView;->mQCBtnFadeOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    .line 3475
    iput-boolean v4, p0, Landroid/widget/ScrollView;->mIsQCBtnFadeOutSet:Z

    .line 3477
    :cond_6
    iget-object v2, p0, Landroid/widget/ScrollView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3478
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3479
    iput-boolean v3, p0, Landroid/widget/ScrollView;->mIsQCBtnFadeInSet:Z

    goto :goto_1
.end method

.method private endDrag()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2656
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    .line 2658
    invoke-direct {p0}, Landroid/widget/ScrollView;->recycleVelocityTracker()V

    .line 2660
    iget-object v0, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    .line 2661
    iget-object v0, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2662
    iget-object v0, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2665
    :cond_0
    iget-object v0, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v0, :cond_1

    .line 2666
    iget-object v0, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    .line 2667
    iput-object v1, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 2655
    :cond_1
    return-void
.end method

.method private findFocusableViewInBounds(ZII)Landroid/view/View;
    .locals 11
    .param p1, "topFocus"    # Z
    .param p2, "top"    # I
    .param p3, "bottom"    # I

    .prologue
    .line 1819
    const/4 v10, 0x2

    invoke-virtual {p0, v10}, Landroid/widget/ScrollView;->getFocusables(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 1820
    .local v2, "focusables":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v1, 0x0

    .line 1829
    .local v1, "focusCandidate":Landroid/view/View;
    const/4 v3, 0x0

    .line 1831
    .local v3, "foundFullyContainedFocusable":Z
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 1832
    .local v0, "count":I
    const/4 v4, 0x0

    .end local v1    # "focusCandidate":Landroid/view/View;
    .end local v3    # "foundFullyContainedFocusable":Z
    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_8

    .line 1833
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 1834
    .local v5, "view":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v9

    .line 1835
    .local v9, "viewTop":I
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v6

    .line 1837
    .local v6, "viewBottom":I
    if-ge p2, v6, :cond_0

    if-ge v9, p3, :cond_0

    .line 1843
    if-ge p2, v9, :cond_2

    .line 1844
    if-ge v6, p3, :cond_1

    const/4 v8, 0x1

    .line 1846
    .local v8, "viewIsFullyContained":Z
    :goto_1
    if-nez v1, :cond_3

    .line 1848
    move-object v1, v5

    .line 1849
    .local v1, "focusCandidate":Landroid/view/View;
    move v3, v8

    .line 1832
    .end local v1    # "focusCandidate":Landroid/view/View;
    .end local v8    # "viewIsFullyContained":Z
    :cond_0
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1844
    :cond_1
    const/4 v8, 0x0

    .restart local v8    # "viewIsFullyContained":Z
    goto :goto_1

    .line 1843
    .end local v8    # "viewIsFullyContained":Z
    :cond_2
    const/4 v8, 0x0

    .restart local v8    # "viewIsFullyContained":Z
    goto :goto_1

    .line 1852
    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v10

    if-ge v9, v10, :cond_4

    const/4 v7, 0x1

    .line 1856
    .local v7, "viewIsCloserToBoundary":Z
    :goto_3
    if-eqz v3, :cond_6

    .line 1857
    if-eqz v8, :cond_0

    if-eqz v7, :cond_0

    .line 1863
    move-object v1, v5

    .restart local v1    # "focusCandidate":Landroid/view/View;
    goto :goto_2

    .line 1853
    .end local v1    # "focusCandidate":Landroid/view/View;
    .end local v7    # "viewIsCloserToBoundary":Z
    :cond_4
    if-nez p1, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v10

    if-le v6, v10, :cond_5

    const/4 v7, 0x1

    .restart local v7    # "viewIsCloserToBoundary":Z
    goto :goto_3

    .end local v7    # "viewIsCloserToBoundary":Z
    :cond_5
    const/4 v7, 0x0

    .restart local v7    # "viewIsCloserToBoundary":Z
    goto :goto_3

    .line 1866
    :cond_6
    if-eqz v8, :cond_7

    .line 1868
    move-object v1, v5

    .line 1869
    .restart local v1    # "focusCandidate":Landroid/view/View;
    const/4 v3, 0x1

    .restart local v3    # "foundFullyContainedFocusable":Z
    goto :goto_2

    .line 1870
    .end local v1    # "focusCandidate":Landroid/view/View;
    .end local v3    # "foundFullyContainedFocusable":Z
    :cond_7
    if-eqz v7, :cond_0

    .line 1875
    move-object v1, v5

    .restart local v1    # "focusCandidate":Landroid/view/View;
    goto :goto_2

    .line 1882
    .end local v1    # "focusCandidate":Landroid/view/View;
    .end local v5    # "view":Landroid/view/View;
    .end local v6    # "viewBottom":I
    .end local v7    # "viewIsCloserToBoundary":Z
    .end local v8    # "viewIsFullyContained":Z
    .end local v9    # "viewTop":I
    :cond_8
    return-object v1
.end method

.method private flingWithNestedDispatch(I)V
    .locals 4
    .param p1, "velocityY"    # I

    .prologue
    const/4 v3, 0x0

    .line 2645
    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-gtz v1, :cond_0

    if-lez p1, :cond_4

    .line 2646
    :cond_0
    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v2

    if-lt v1, v2, :cond_1

    if-gez p1, :cond_3

    :cond_1
    const/4 v0, 0x1

    .line 2647
    .local v0, "canFling":Z
    :goto_0
    int-to-float v1, p1

    invoke-virtual {p0, v3, v1}, Landroid/widget/ScrollView;->dispatchNestedPreFling(FF)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2648
    int-to-float v1, p1

    invoke-virtual {p0, v3, v1, v0}, Landroid/widget/ScrollView;->dispatchNestedFling(FFZ)Z

    .line 2649
    if-eqz v0, :cond_2

    .line 2650
    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->fling(I)V

    .line 2644
    :cond_2
    return-void

    .line 2646
    .end local v0    # "canFling":Z
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "canFling":Z
    goto :goto_0

    .line 2645
    .end local v0    # "canFling":Z
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "canFling":Z
    goto :goto_0
.end method

.method private flingWithoutAcc(I)V
    .locals 14
    .param p1, "velocityY"    # I

    .prologue
    const/4 v3, 0x0

    .line 2628
    const-string/jumbo v0, "ScrollView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "flingWithoutAcc() velocityY = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2629
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 2630
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v0

    iget v1, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int v13, v0, v1

    .line 2631
    .local v13, "height":I
    invoke-virtual {p0, v3}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v12

    .line 2633
    .local v12, "bottom":I
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v1, p0, Landroid/widget/ScrollView;->mScrollX:I

    iget v2, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 2634
    sub-int v4, v12, v13

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v8

    div-int/lit8 v10, v13, 0x2

    const/4 v11, 0x1

    move v4, p1

    move v5, v3

    move v6, v3

    move v7, v3

    move v9, v3

    .line 2633
    invoke-virtual/range {v0 .. v11}, Landroid/widget/OverScroller;->fling(IIIIIIIIIIZ)V

    .line 2636
    iget-object v0, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-nez v0, :cond_0

    .line 2637
    const-string/jumbo v0, "ScrollView-fling"

    invoke-static {v0}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 2640
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    .line 2627
    .end local v12    # "bottom":I
    .end local v13    # "height":I
    :cond_1
    return-void
.end method

.method private getScrollRange()I
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1793
    const/4 v1, 0x0

    .line 1794
    .local v1, "scrollRange":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 1795
    invoke-virtual {p0, v5}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1797
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v3

    iget v4, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    .line 1796
    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1799
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    return v1
.end method

.method private handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 3000
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    .line 2999
    :cond_0
    :goto_0
    return-void

    .line 3002
    :pswitch_0
    const/4 v7, 0x0

    iput v7, p0, Landroid/widget/ScrollView;->mQCstate:I

    .line 3003
    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    goto :goto_0

    .line 3006
    :pswitch_1
    const/4 v2, 0x0

    .line 3007
    .local v2, "offset":I
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v4

    .line 3009
    .local v4, "range":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Landroid/widget/ScrollView;->mHoverRecognitionCurrentTime:J

    .line 3010
    iget-wide v8, p0, Landroid/widget/ScrollView;->mHoverRecognitionCurrentTime:J

    iget-wide v10, p0, Landroid/widget/ScrollView;->mHoverRecognitionStartTime:J

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    iput-wide v8, p0, Landroid/widget/ScrollView;->mHoverRecognitionDurationTime:J

    .line 3012
    iget-wide v8, p0, Landroid/widget/ScrollView;->mHoverRecognitionCurrentTime:J

    iget-wide v10, p0, Landroid/widget/ScrollView;->mHoverScrollStartTime:J

    sub-long/2addr v8, v10

    iget-wide v10, p0, Landroid/widget/ScrollView;->mHoverScrollTimeInterval:J

    cmp-long v7, v8, v10

    if-ltz v7, :cond_0

    .line 3015
    iget v7, p0, Landroid/widget/ScrollView;->HOVERSCROLL_SPEED:F

    .line 3016
    iget-object v8, p0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    .line 3015
    const/4 v9, 0x1

    invoke-static {v9, v7, v8}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v7

    .line 3016
    const/high16 v8, 0x3f000000    # 0.5f

    .line 3015
    add-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, p0, Landroid/widget/ScrollView;->mHoverScrollSpeed:I

    .line 3018
    iget-wide v8, p0, Landroid/widget/ScrollView;->mHoverRecognitionDurationTime:J

    const-wide/16 v10, 0x2

    cmp-long v7, v8, v10

    if-lez v7, :cond_2

    iget-wide v8, p0, Landroid/widget/ScrollView;->mHoverRecognitionDurationTime:J

    const-wide/16 v10, 0x4

    cmp-long v7, v8, v10

    if-gez v7, :cond_2

    .line 3019
    iget v7, p0, Landroid/widget/ScrollView;->mHoverScrollSpeed:I

    iget v8, p0, Landroid/widget/ScrollView;->mHoverScrollSpeed:I

    int-to-double v8, v8

    const-wide v10, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v8, v10

    double-to-int v8, v8

    add-int/2addr v7, v8

    iput v7, p0, Landroid/widget/ScrollView;->mHoverScrollSpeed:I

    .line 3026
    :cond_1
    :goto_1
    iget v7, p0, Landroid/widget/ScrollView;->mHoverScrollDirection:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_4

    .line 3027
    iget v7, p0, Landroid/widget/ScrollView;->mHoverScrollSpeed:I

    mul-int/lit8 v2, v7, -0x1

    .line 3036
    :goto_2
    if-gez v2, :cond_5

    iget v7, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-lez v7, :cond_5

    .line 3039
    invoke-direct {p0, v2}, Landroid/widget/ScrollView;->flingWithoutAcc(I)V

    .line 3040
    iget-object v7, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    iget v8, p0, Landroid/widget/ScrollView;->HOVERSCROLL_DELAY:I

    int-to-long v8, v8

    const/4 v10, 0x1

    invoke-virtual {v7, v10, v8, v9}, Landroid/widget/ScrollView$HoverScrollHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 3020
    :cond_2
    iget-wide v8, p0, Landroid/widget/ScrollView;->mHoverRecognitionDurationTime:J

    const-wide/16 v10, 0x4

    cmp-long v7, v8, v10

    if-ltz v7, :cond_3

    iget-wide v8, p0, Landroid/widget/ScrollView;->mHoverRecognitionDurationTime:J

    const-wide/16 v10, 0x5

    cmp-long v7, v8, v10

    if-gez v7, :cond_3

    .line 3021
    iget v7, p0, Landroid/widget/ScrollView;->mHoverScrollSpeed:I

    iget v8, p0, Landroid/widget/ScrollView;->mHoverScrollSpeed:I

    int-to-double v8, v8

    const-wide v10, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v8, v10

    double-to-int v8, v8

    add-int/2addr v7, v8

    iput v7, p0, Landroid/widget/ScrollView;->mHoverScrollSpeed:I

    goto :goto_1

    .line 3022
    :cond_3
    iget-wide v8, p0, Landroid/widget/ScrollView;->mHoverRecognitionDurationTime:J

    const-wide/16 v10, 0x5

    cmp-long v7, v8, v10

    if-ltz v7, :cond_1

    .line 3023
    iget v7, p0, Landroid/widget/ScrollView;->mHoverScrollSpeed:I

    iget v8, p0, Landroid/widget/ScrollView;->mHoverScrollSpeed:I

    int-to-double v8, v8

    const-wide v10, 0x3fd3333333333333L    # 0.3

    mul-double/2addr v8, v10

    double-to-int v8, v8

    add-int/2addr v7, v8

    iput v7, p0, Landroid/widget/ScrollView;->mHoverScrollSpeed:I

    goto :goto_1

    .line 3029
    :cond_4
    iget v7, p0, Landroid/widget/ScrollView;->mHoverScrollSpeed:I

    mul-int/lit8 v2, v7, 0x1

    goto :goto_2

    .line 3041
    :cond_5
    if-lez v2, :cond_6

    iget v7, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-ge v7, v4, :cond_6

    .line 3044
    invoke-direct {p0, v2}, Landroid/widget/ScrollView;->flingWithoutAcc(I)V

    .line 3045
    iget-object v7, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    iget v8, p0, Landroid/widget/ScrollView;->HOVERSCROLL_DELAY:I

    int-to-long v8, v8

    const/4 v10, 0x1

    invoke-virtual {v7, v10, v8, v9}, Landroid/widget/ScrollView$HoverScrollHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 3048
    :cond_6
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getOverScrollMode()I

    move-result v3

    .line 3049
    .local v3, "overscrollMode":I
    if-eqz v3, :cond_8

    .line 3050
    const/4 v7, 0x1

    if-ne v3, v7, :cond_9

    if-lez v4, :cond_9

    const/4 v0, 0x1

    .line 3052
    .local v0, "canOverscroll":Z
    :goto_3
    if-eqz v0, :cond_7

    iget-boolean v7, p0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    if-eqz v7, :cond_a

    .line 3078
    :cond_7
    :goto_4
    if-nez v0, :cond_0

    iget-boolean v7, p0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    if-nez v7, :cond_0

    .line 3079
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    goto/16 :goto_0

    .line 3049
    .end local v0    # "canOverscroll":Z
    :cond_8
    const/4 v0, 0x1

    goto :goto_3

    .line 3050
    :cond_9
    const/4 v0, 0x0

    goto :goto_3

    .line 3053
    .restart local v0    # "canOverscroll":Z
    :cond_a
    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v7, :cond_b

    .line 3054
    iget v7, p0, Landroid/widget/ScrollView;->mHoverScrollDirection:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_d

    .line 3055
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v7

    iget v8, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/widget/ScrollView;->mPaddingRight:I

    sub-int v6, v7, v8

    .line 3056
    .local v6, "width":I
    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v8

    invoke-virtual {v7, v6, v8}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 3057
    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    const v8, 0x3ecccccd    # 0.4f

    invoke-virtual {v7, v8}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 3058
    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-nez v7, :cond_b

    .line 3059
    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 3072
    .end local v6    # "width":I
    :cond_b
    :goto_5
    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v7, :cond_c

    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-eqz v7, :cond_e

    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-eqz v7, :cond_e

    .line 3075
    :cond_c
    :goto_6
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    goto :goto_4

    .line 3061
    :cond_d
    iget v7, p0, Landroid/widget/ScrollView;->mHoverScrollDirection:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_b

    .line 3062
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v7

    iget v8, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/widget/ScrollView;->mPaddingRight:I

    sub-int v6, v7, v8

    .line 3063
    .restart local v6    # "width":I
    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v8

    invoke-virtual {v7, v6, v8}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 3064
    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    const v8, 0x3ecccccd    # 0.4f

    invoke-virtual {v7, v8}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 3065
    const/4 v7, 0x1

    invoke-direct {p0, v7}, Landroid/widget/ScrollView;->semSetupGoToTop(I)V

    .line 3066
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Landroid/widget/ScrollView;->semAutoHide(I)V

    .line 3067
    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-nez v7, :cond_b

    .line 3068
    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_5

    .line 3073
    .end local v6    # "width":I
    :cond_e
    invoke-virtual {p0}, Landroid/widget/ScrollView;->invalidate()V

    goto :goto_6

    .line 3086
    .end local v0    # "canOverscroll":Z
    .end local v2    # "offset":I
    .end local v3    # "overscrollMode":I
    .end local v4    # "range":I
    :pswitch_2
    iget-object v7, p0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    .line 3085
    const/4 v8, 0x1

    const v9, 0x453b8000    # 3000.0f

    invoke-static {v8, v9, v7}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v7

    .line 3086
    const/high16 v8, 0x3f000000    # 0.5f

    .line 3085
    add-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, p0, Landroid/widget/ScrollView;->mHoverScrollSpeed:I

    .line 3088
    iget v7, p0, Landroid/widget/ScrollView;->mQCLocation:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_10

    iget v7, p0, Landroid/widget/ScrollView;->mHoverScrollSpeed:I

    neg-int v1, v7

    .line 3089
    .local v1, "distanceToMove":I
    :goto_7
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v5

    .line 3091
    .local v5, "scrollaleRange":I
    if-gez v1, :cond_11

    iget v7, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-lez v7, :cond_11

    .line 3094
    :cond_f
    invoke-direct {p0, v1}, Landroid/widget/ScrollView;->flingWithoutAcc(I)V

    .line 3095
    iget-object v7, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    iget v8, p0, Landroid/widget/ScrollView;->HOVERSCROLL_DELAY:I

    int-to-long v8, v8

    const/4 v10, 0x2

    invoke-virtual {v7, v10, v8, v9}, Landroid/widget/ScrollView$HoverScrollHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 3088
    .end local v1    # "distanceToMove":I
    .end local v5    # "scrollaleRange":I
    :cond_10
    iget v1, p0, Landroid/widget/ScrollView;->mHoverScrollSpeed:I

    .restart local v1    # "distanceToMove":I
    goto :goto_7

    .line 3091
    .restart local v5    # "scrollaleRange":I
    :cond_11
    if-lez v1, :cond_12

    iget v7, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-lt v7, v5, :cond_f

    .line 3098
    :cond_12
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getOverScrollMode()I

    move-result v3

    .line 3099
    .restart local v3    # "overscrollMode":I
    if-eqz v3, :cond_14

    .line 3100
    const/4 v7, 0x1

    if-ne v3, v7, :cond_15

    if-lez v5, :cond_15

    const/4 v0, 0x1

    .line 3102
    .restart local v0    # "canOverscroll":Z
    :goto_8
    if-eqz v0, :cond_13

    iget-boolean v7, p0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    if-eqz v7, :cond_16

    .line 3126
    :cond_13
    :goto_9
    if-nez v0, :cond_0

    iget-boolean v7, p0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    if-nez v7, :cond_0

    .line 3127
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    goto/16 :goto_0

    .line 3099
    .end local v0    # "canOverscroll":Z
    :cond_14
    const/4 v0, 0x1

    goto :goto_8

    .line 3100
    :cond_15
    const/4 v0, 0x0

    goto :goto_8

    .line 3103
    .restart local v0    # "canOverscroll":Z
    :cond_16
    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v7, :cond_17

    .line 3104
    iget v7, p0, Landroid/widget/ScrollView;->mQCLocation:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_19

    .line 3105
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v7

    iget v8, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/widget/ScrollView;->mPaddingRight:I

    sub-int v6, v7, v8

    .line 3106
    .restart local v6    # "width":I
    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v8

    invoke-virtual {v7, v6, v8}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 3107
    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    const v8, 0x3ecccccd    # 0.4f

    invoke-virtual {v7, v8}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 3108
    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-nez v7, :cond_17

    .line 3109
    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 3120
    .end local v6    # "width":I
    :cond_17
    :goto_a
    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v7, :cond_18

    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-eqz v7, :cond_1a

    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-eqz v7, :cond_1a

    .line 3123
    :cond_18
    :goto_b
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    goto :goto_9

    .line 3111
    :cond_19
    iget v7, p0, Landroid/widget/ScrollView;->mQCLocation:I

    const/4 v8, 0x4

    if-ne v7, v8, :cond_17

    .line 3112
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v7

    iget v8, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/widget/ScrollView;->mPaddingRight:I

    sub-int v6, v7, v8

    .line 3113
    .restart local v6    # "width":I
    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v8

    invoke-virtual {v7, v6, v8}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 3114
    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    const v8, 0x3ecccccd    # 0.4f

    invoke-virtual {v7, v8}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 3115
    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-nez v7, :cond_17

    .line 3116
    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_a

    .line 3121
    .end local v6    # "width":I
    :cond_1a
    invoke-virtual {p0}, Landroid/widget/ScrollView;->invalidate()V

    goto :goto_b

    .line 3133
    .end local v0    # "canOverscroll":Z
    .end local v1    # "distanceToMove":I
    .end local v3    # "overscrollMode":I
    .end local v5    # "scrollaleRange":I
    :pswitch_3
    iget v7, p0, Landroid/widget/ScrollView;->mQCLocation:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1b

    .line 3134
    invoke-direct {p0}, Landroid/widget/ScrollView;->doScrollToTopEnd()V

    goto/16 :goto_0

    .line 3135
    :cond_1b
    iget v7, p0, Landroid/widget/ScrollView;->mQCLocation:I

    const/4 v8, 0x4

    if-ne v7, v8, :cond_0

    .line 3136
    invoke-direct {p0}, Landroid/widget/ScrollView;->doScrollToBottomEnd()V

    goto/16 :goto_0

    .line 3000
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private inChild(II)Z
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v2, 0x0

    .line 922
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_1

    .line 923
    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 924
    .local v1, "scrollY":I
    invoke-virtual {p0, v2}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 925
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v3, v1

    if-lt p2, v3, :cond_0

    .line 926
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int/2addr v3, v1

    if-ge p2, v3, :cond_0

    .line 927
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    if-lt p1, v3, :cond_0

    .line 928
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    if-ge p1, v3, :cond_0

    const/4 v2, 0x1

    .line 925
    :cond_0
    return v2

    .line 930
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "scrollY":I
    :cond_1
    return v2
.end method

.method private initGoToTOP()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3226
    const-string/jumbo v0, "ScrollView"

    const-string/jumbo v1, " init GTT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3227
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopRect:Landroid/graphics/Rect;

    .line 3228
    iget v0, p0, Landroid/widget/ScrollView;->mSemGoToTopState:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 3230
    :cond_0
    iput v2, p0, Landroid/widget/ScrollView;->mSemGoToTopState:I

    .line 3231
    iput v2, p0, Landroid/widget/ScrollView;->mSemGoToTopLastState:I

    .line 3232
    iput-boolean v2, p0, Landroid/widget/ScrollView;->mShowGTPAtFirstTime:Z

    .line 3233
    iput v2, p0, Landroid/widget/ScrollView;->mShowFadeOutGTP:I

    .line 3234
    iget-object v0, p0, Landroid/widget/ScrollView;->mSemAutoHide:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3235
    iget-object v0, p0, Landroid/widget/ScrollView;->mSemGoToToFadeInRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3236
    iget-object v0, p0, Landroid/widget/ScrollView;->mSemGoToToFadeOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3224
    return-void
.end method

.method private initOrResetVelocityTracker()V
    .locals 1

    .prologue
    .line 934
    iget-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 935
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 933
    :goto_0
    return-void

    .line 937
    :cond_0
    iget-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0
.end method

.method private initScrollView()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 429
    new-instance v1, Landroid/widget/OverScroller;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    .line 430
    invoke-virtual {p0, v3}, Landroid/widget/ScrollView;->setFocusable(Z)V

    .line 431
    const/high16 v1, 0x40000

    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->setDescendantFocusability(I)V

    .line 432
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->setWillNotDraw(Z)V

    .line 433
    iget-object v1, p0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 434
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Landroid/widget/ScrollView;->mTouchSlop:I

    .line 435
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/widget/ScrollView;->mMinimumVelocity:I

    .line 436
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/widget/ScrollView;->mMaximumVelocity:I

    .line 437
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverscrollDistance()I

    move-result v1

    iput v1, p0, Landroid/widget/ScrollView;->mOverscrollDistance:I

    .line 438
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    move-result v1

    iput v1, p0, Landroid/widget/ScrollView;->mOverflingDistance:I

    .line 439
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1080a50

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    .line 440
    iput-boolean v3, p0, Landroid/widget/ScrollView;->mIsFirstScrollview:Z

    .line 428
    return-void
.end method

.method private initVelocityTrackerIfNotExists()V
    .locals 1

    .prologue
    .line 942
    iget-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 943
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 941
    :cond_0
    return-void
.end method

.method private isOffScreen(Landroid/view/View;)Z
    .locals 2
    .param p1, "descendant"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 2060
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/ScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isQCSupported()Z
    .locals 2

    .prologue
    .line 3218
    sget v0, Landroid/widget/ScrollView;->sSpenUspLevel:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/widget/ScrollView;->mSemFollow2016A:Z

    if-eqz v0, :cond_0

    .line 3219
    const/4 v0, 0x1

    return v0

    .line 3221
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z
    .locals 2
    .param p0, "child"    # Landroid/view/View;
    .param p1, "parent"    # Landroid/view/View;

    .prologue
    .line 2596
    if-ne p0, p1, :cond_0

    .line 2597
    const/4 v1, 0x1

    return v1

    .line 2600
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2601
    .local v0, "theParent":Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/view/View;

    .end local v0    # "theParent":Landroid/view/ViewParent;
    invoke-static {v0, p1}, Landroid/widget/ScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v1

    :goto_0
    return v1

    .restart local v0    # "theParent":Landroid/view/ViewParent;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isWithinDeltaOfScreen(Landroid/view/View;II)Z
    .locals 3
    .param p1, "descendant"    # Landroid/view/View;
    .param p2, "delta"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v0, 0x0

    .line 2068
    iget-object v1, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 2069
    iget-object v1, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v1}, Landroid/widget/ScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2071
    iget-object v1, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, p2

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 2072
    iget-object v1, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, p2

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v2

    add-int/2addr v2, p3

    if-gt v1, v2, :cond_0

    const/4 v0, 0x1

    .line 2071
    :cond_0
    return v0
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x0

    .line 1560
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const v4, 0xff00

    and-int/2addr v3, v4

    shr-int/lit8 v2, v3, 0x8

    .line 1562
    .local v2, "pointerIndex":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 1563
    .local v1, "pointerId":I
    iget v3, p0, Landroid/widget/ScrollView;->mActivePointerId:I

    if-ne v1, v3, :cond_1

    .line 1567
    if-nez v2, :cond_0

    const/4 v0, 0x1

    .line 1568
    .local v0, "newPointerIndex":I
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Landroid/widget/ScrollView;->mLastMotionY:I

    .line 1569
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 1570
    iget-object v3, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_1

    .line 1571
    iget-object v3, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 1559
    .end local v0    # "newPointerIndex":I
    :cond_1
    return-void
.end method

.method private playQCBtnFadeIn()V
    .locals 3

    .prologue
    .line 3485
    iget-object v0, p0, Landroid/widget/ScrollView;->mQCBtnFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3486
    :cond_0
    iget-object v0, p0, Landroid/widget/ScrollView;->mQCBtnFadeInAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    const/16 v2, 0xff

    filled-new-array {v1, v2}, [I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 3487
    iget-object v0, p0, Landroid/widget/ScrollView;->mQCBtnFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 3484
    return-void
.end method

.method private playQCBtnFadeOut()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3503
    iget-object v0, p0, Landroid/widget/ScrollView;->mQCBtnFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3504
    :cond_0
    iget-object v0, p0, Landroid/widget/ScrollView;->mQCBtnFadeOutAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [I

    iget-object v2, p0, Landroid/widget/ScrollView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v2

    aput v2, v1, v3

    const/4 v2, 0x1

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 3505
    iget-object v0, p0, Landroid/widget/ScrollView;->mQCBtnFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 3502
    return-void
.end method

.method private recycleVelocityTracker()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 948
    iget-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 949
    iget-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 950
    iput-object v1, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 947
    :cond_0
    return-void
.end method

.method private scrollAndFocus(III)Z
    .locals 8
    .param p1, "direction"    # I
    .param p2, "top"    # I
    .param p3, "bottom"    # I

    .prologue
    .line 1965
    const/4 v3, 0x1

    .line 1967
    .local v3, "handled":Z
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v4

    .line 1968
    .local v4, "height":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v1

    .line 1969
    .local v1, "containerTop":I
    add-int v0, v1, v4

    .line 1970
    .local v0, "containerBottom":I
    const/16 v7, 0x21

    if-ne p1, v7, :cond_2

    const/4 v6, 0x1

    .line 1972
    .local v6, "up":Z
    :goto_0
    invoke-direct {p0, v6, p2, p3}, Landroid/widget/ScrollView;->findFocusableViewInBounds(ZII)Landroid/view/View;

    move-result-object v5

    .line 1973
    .local v5, "newFocused":Landroid/view/View;
    if-nez v5, :cond_0

    .line 1974
    move-object v5, p0

    .line 1977
    :cond_0
    if-lt p2, v1, :cond_3

    if-gt p3, v0, :cond_3

    .line 1978
    const/4 v3, 0x0

    .line 1984
    :goto_1
    invoke-virtual {p0}, Landroid/widget/ScrollView;->findFocus()Landroid/view/View;

    move-result-object v7

    if-eq v5, v7, :cond_1

    invoke-virtual {v5, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 1986
    :cond_1
    return v3

    .line 1970
    .end local v5    # "newFocused":Landroid/view/View;
    .end local v6    # "up":Z
    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    .line 1980
    .restart local v5    # "newFocused":Landroid/view/View;
    .restart local v6    # "up":Z
    :cond_3
    if-eqz v6, :cond_4

    sub-int v2, p2, v1

    .line 1981
    .local v2, "delta":I
    :goto_2
    invoke-direct {p0, v2}, Landroid/widget/ScrollView;->doScrollY(I)V

    goto :goto_1

    .line 1980
    .end local v2    # "delta":I
    :cond_4
    sub-int v2, p3, v0

    goto :goto_2
.end method

.method private scrollToChild(Landroid/view/View;)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 2318
    if-eqz p1, :cond_0

    .line 2319
    iget-object v1, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 2322
    iget-object v1, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v1}, Landroid/widget/ScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2324
    iget-object v1, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    .line 2326
    .local v0, "scrollDelta":I
    if-eqz v0, :cond_0

    .line 2327
    invoke-virtual {p0, v2, v0}, Landroid/widget/ScrollView;->scrollBy(II)V

    .line 2317
    .end local v0    # "scrollDelta":I
    :cond_0
    return-void
.end method

.method private scrollToChildRect(Landroid/graphics/Rect;Z)Z
    .locals 3
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "immediate"    # Z

    .prologue
    const/4 v2, 0x0

    .line 2341
    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    .line 2342
    .local v0, "delta":I
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 2344
    .local v1, "scroll":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 2345
    if-eqz p2, :cond_2

    .line 2346
    invoke-virtual {p0, v2, v0}, Landroid/widget/ScrollView;->scrollBy(II)V

    .line 2351
    :cond_0
    :goto_1
    return v1

    .end local v1    # "scroll":Z
    :cond_1
    move v1, v2

    .line 2342
    goto :goto_0

    .line 2348
    .restart local v1    # "scroll":Z
    :cond_2
    invoke-virtual {p0, v2, v0}, Landroid/widget/ScrollView;->smoothScrollBy(II)V

    goto :goto_1
.end method

.method private semIsSupportGotoTop()Z
    .locals 1

    .prologue
    .line 861
    invoke-direct {p0}, Landroid/widget/ScrollView;->semIsTalkBackIsRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/ScrollView;->mSemEnableGoToTop:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private semIsTalkBackIsRunning()Z
    .locals 5

    .prologue
    .line 849
    const/4 v2, 0x0

    .line 850
    .local v2, "isRunning":Z
    iget-object v3, p0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 851
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 852
    iget-object v3, p0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 853
    const-string/jumbo v4, "enabled_accessibility_services"

    .line 852
    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 854
    .local v1, "enabledServices":Ljava/lang/String;
    if-eqz v1, :cond_1

    const-string/jumbo v3, "(?i).*TalkBackService.*"

    invoke-virtual {v1, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    .line 857
    .end local v1    # "enabledServices":Ljava/lang/String;
    .end local v2    # "isRunning":Z
    :cond_0
    :goto_0
    return v2

    .line 854
    .restart local v1    # "enabledServices":Ljava/lang/String;
    .restart local v2    # "isRunning":Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private semPlayGotoToFadeIn()V
    .locals 4

    .prologue
    .line 3496
    iget-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3497
    :cond_0
    iget-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [I

    iget-object v2, p0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    const/16 v2, 0xff

    const/4 v3, 0x1

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 3498
    iget-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 3495
    return-void
.end method

.method private semPlayGotoToFadeOut()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3491
    iget-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3492
    :cond_0
    iget-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [I

    iget-object v2, p0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v2

    aput v2, v1, v3

    const/4 v2, 0x1

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 3493
    iget-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 3490
    return-void
.end method

.method private semSetupGoToTop(I)V
    .locals 18
    .param p1, "where"    # I

    .prologue
    .line 3241
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/ScrollView;->mSemEnableGoToTop:Z

    if-nez v13, :cond_0

    return-void

    .line 3242
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/ScrollView;->mSemAutoHide:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/widget/ScrollView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3243
    const-string/jumbo v13, "ScrollView"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, " setup GOTOTOP = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ", fade out = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/ScrollView;->mShowFadeOutGTP:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3245
    const/4 v13, -0x1

    move/from16 v0, p1

    if-ne v0, v13, :cond_c

    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/ScrollView;->mSizeChange:Z

    if-eqz v13, :cond_c

    .line 3247
    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->canScrollUp()Z

    move-result v13

    if-nez v13, :cond_b

    const/16 p1, 0x0

    .line 3254
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/ScrollView;->mShowFadeOutGTP:I

    if-nez v13, :cond_2

    if-nez p1, :cond_2

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/ScrollView;->mSemGoToTopLastState:I

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/ScrollView;->mSemGoToToFadeOutRunnable:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    .line 3255
    :cond_2
    const/4 v13, 0x2

    move/from16 v0, p1

    if-eq v0, v13, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    sget-object v14, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v13, v14}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 3257
    :cond_3
    const/4 v13, -0x1

    move/from16 v0, p1

    if-ne v0, v13, :cond_4

    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/ScrollView;->mSizeChange:Z

    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ScrollView;->mSemGoToTopLastState:I

    move/from16 p1, v0

    .line 3259
    :cond_4
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/ScrollView;->mSemGoToTopState:I

    .line 3260
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v12

    .line 3261
    .local v12, "w":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v8

    .line 3262
    .local v8, "h":I
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/ScrollView;->mPaddingLeft:I

    sub-int v13, v12, v13

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/ScrollView;->mPaddingRight:I

    sub-int v5, v13, v14

    .line 3263
    .local v5, "contentW":I
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/ScrollView;->mPaddingLeft:I

    div-int/lit8 v14, v5, 0x2

    add-int v4, v13, v14

    .line 3265
    .local v4, "centerX":I
    const/4 v11, 0x0

    .line 3268
    .local v11, "paddingTop":I
    const/4 v3, 0x0

    .line 3269
    .local v3, "btnW":I
    const/4 v2, 0x0

    .line 3270
    .local v2, "btnH":I
    const/4 v7, 0x0

    .line 3272
    .local v7, "gapH":I
    const/4 v13, 0x0

    const/4 v14, 0x0

    filled-new-array {v13, v14}, [I

    move-result-object v9

    .line 3273
    .local v9, "locOnScr":[I
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/widget/ScrollView;->getLocationInWindow([I)V

    .line 3274
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    .line 3277
    .local v6, "dm":Landroid/util/DisplayMetrics;
    const/4 v13, 0x0

    aget v13, v9, v13

    if-gez v13, :cond_5

    .line 3278
    const/4 v13, 0x0

    aget v13, v9, v13

    neg-int v10, v13

    .line 3279
    .local v10, "overlappedW":I
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/ScrollView;->mPaddingLeft:I

    if-le v10, v13, :cond_5

    .line 3280
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/ScrollView;->mPaddingLeft:I

    sub-int v13, v10, v13

    div-int/lit8 v13, v13, 0x2

    add-int/2addr v4, v13

    .line 3285
    .end local v10    # "overlappedW":I
    :cond_5
    const/4 v13, 0x0

    aget v13, v9, v13

    add-int/2addr v13, v12

    iget v14, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    if-le v13, v14, :cond_6

    .line 3286
    const/4 v13, 0x0

    aget v13, v9, v13

    add-int/2addr v13, v12

    iget v14, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int v10, v13, v14

    .line 3287
    .restart local v10    # "overlappedW":I
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/ScrollView;->mPaddingRight:I

    if-le v10, v13, :cond_6

    .line 3288
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/ScrollView;->mPaddingRight:I

    sub-int v13, v10, v13

    div-int/lit8 v13, v13, 0x2

    sub-int/2addr v4, v13

    .line 3292
    .end local v10    # "overlappedW":I
    :cond_6
    packed-switch p1, :pswitch_data_0

    .line 3311
    :cond_7
    :goto_1
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/ScrollView;->mShowFadeOutGTP:I

    const/4 v14, 0x2

    if-ne v13, v14, :cond_8

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/ScrollView;->mShowFadeOutGTP:I

    .line 3312
    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ScrollView;->mSemGoToTopRect:Landroid/graphics/Rect;

    invoke-virtual {v13, v14}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3314
    const/4 v13, 0x1

    move/from16 v0, p1

    if-ne v0, v13, :cond_a

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/ScrollView;->mSemGoToTopLastState:I

    if-eqz v13, :cond_9

    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/ScrollView;->mSizeChange:Z

    if-eqz v13, :cond_a

    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/ScrollView;->mSemGoToToFadeInRunnable:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    .line 3316
    :cond_a
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/ScrollView;->mSizeChange:Z

    .line 3318
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/ScrollView;->mSemGoToTopState:I

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/ScrollView;->mSemGoToTopLastState:I

    .line 3240
    return-void

    .line 3248
    .end local v2    # "btnH":I
    .end local v3    # "btnW":I
    .end local v4    # "centerX":I
    .end local v5    # "contentW":I
    .end local v6    # "dm":Landroid/util/DisplayMetrics;
    .end local v7    # "gapH":I
    .end local v8    # "h":I
    .end local v9    # "locOnScr":[I
    .end local v11    # "paddingTop":I
    .end local v12    # "w":I
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ScrollView;->mSemGoToTopLastState:I

    move/from16 p1, v0

    goto/16 :goto_0

    .line 3249
    :cond_c
    const/4 v13, -0x1

    move/from16 v0, p1

    if-ne v0, v13, :cond_1

    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->canScrollUp()Z

    move-result v13

    if-nez v13, :cond_1

    .line 3250
    const/16 p1, 0x0

    .line 3251
    const-string/jumbo v13, "ScrollView"

    const-string/jumbo v14, " set -1 but cannot scroll"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3294
    .restart local v2    # "btnH":I
    .restart local v3    # "btnW":I
    .restart local v4    # "centerX":I
    .restart local v5    # "contentW":I
    .restart local v6    # "dm":Landroid/util/DisplayMetrics;
    .restart local v7    # "gapH":I
    .restart local v8    # "h":I
    .restart local v9    # "locOnScr":[I
    .restart local v11    # "paddingTop":I
    .restart local v12    # "w":I
    :pswitch_0
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/ScrollView;->mShowFadeOutGTP:I

    const/4 v14, 0x2

    if-ne v13, v14, :cond_7

    .line 3295
    new-instance v13, Landroid/graphics/Rect;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-direct/range {v13 .. v17}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/ScrollView;->mSemGoToTopRect:Landroid/graphics/Rect;

    goto :goto_1

    .line 3300
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x10502ee

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 3301
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x10502ee

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 3302
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x10502ef

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 3303
    new-instance v13, Landroid/graphics/Rect;

    div-int/lit8 v14, v3, 0x2

    sub-int v14, v4, v14

    sub-int v15, v8, v2

    add-int/lit8 v15, v15, 0x0

    sub-int/2addr v15, v7

    div-int/lit8 v16, v3, 0x2

    add-int v16, v16, v4

    add-int/lit8 v17, v8, 0x0

    sub-int v17, v17, v7

    invoke-direct/range {v13 .. v17}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/ScrollView;->mSemGoToTopRect:Landroid/graphics/Rect;

    goto/16 :goto_1

    .line 3292
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private setupQuickController(I)V
    .locals 19
    .param p1, "where"    # I

    .prologue
    .line 3321
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v13

    .line 3322
    .local v13, "w":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v9

    .line 3323
    .local v9, "h":I
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/ScrollView;->mPaddingLeft:I

    sub-int v14, v13, v14

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/ScrollView;->mPaddingRight:I

    sub-int v7, v14, v15

    .line 3324
    .local v7, "contentW":I
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/ScrollView;->mPaddingLeft:I

    div-int/lit8 v15, v7, 0x2

    add-int v5, v14, v15

    .line 3326
    .local v5, "centerX":I
    const/4 v4, 0x0

    .line 3327
    .local v4, "btnW":I
    const/4 v3, 0x0

    .line 3329
    .local v3, "btnH":I
    move-object/from16 v0, p0

    iget v11, v0, Landroid/widget/ScrollView;->mQCLocation:I

    .line 3330
    .local v11, "oldLocation":I
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/ScrollView;->mQCLocation:I

    .line 3332
    const/4 v6, 0x1

    .line 3333
    .local v6, "checkBoundary":Z
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v2

    .line 3334
    .local v2, "basePkgName":Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string/jumbo v14, "cocktailbarservice"

    invoke-virtual {v2, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 3337
    const/4 v6, 0x0

    .line 3342
    :cond_0
    if-eqz v6, :cond_2

    .line 3343
    const/4 v14, 0x0

    const/4 v15, 0x0

    filled-new-array {v14, v15}, [I

    move-result-object v10

    .line 3344
    .local v10, "locOnScr":[I
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/widget/ScrollView;->getLocationOnScreen([I)V

    .line 3345
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    .line 3348
    .local v8, "dm":Landroid/util/DisplayMetrics;
    const/4 v14, 0x0

    aget v14, v10, v14

    if-gez v14, :cond_1

    .line 3349
    const/4 v14, 0x0

    aget v14, v10, v14

    neg-int v12, v14

    .line 3350
    .local v12, "overlappedW":I
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/ScrollView;->mPaddingLeft:I

    if-le v12, v14, :cond_1

    .line 3351
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/ScrollView;->mPaddingLeft:I

    sub-int v14, v12, v14

    div-int/lit8 v14, v14, 0x2

    add-int/2addr v5, v14

    .line 3356
    .end local v12    # "overlappedW":I
    :cond_1
    const/4 v14, 0x0

    aget v14, v10, v14

    add-int/2addr v14, v13

    iget v15, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    if-le v14, v15, :cond_2

    .line 3357
    const/4 v14, 0x0

    aget v14, v10, v14

    add-int/2addr v14, v13

    iget v15, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int v12, v14, v15

    .line 3358
    .restart local v12    # "overlappedW":I
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/ScrollView;->mPaddingRight:I

    if-le v12, v14, :cond_2

    .line 3359
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/ScrollView;->mPaddingRight:I

    sub-int v14, v12, v14

    div-int/lit8 v14, v14, 0x2

    sub-int/2addr v5, v14

    .line 3364
    .end local v8    # "dm":Landroid/util/DisplayMetrics;
    .end local v10    # "locOnScr":[I
    .end local v12    # "overlappedW":I
    :cond_2
    packed-switch p1, :pswitch_data_0

    .line 3400
    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ScrollView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/ScrollView;->mQCRect:Landroid/graphics/Rect;

    invoke-virtual {v14, v15}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3401
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ScrollView;->mQCBtnPressedDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/ScrollView;->mQCRect:Landroid/graphics/Rect;

    invoke-virtual {v14, v15}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3403
    const/4 v14, 0x0

    const/16 v15, 0xff

    filled-new-array {v14, v15}, [I

    move-result-object v14

    invoke-static {v14}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/ScrollView;->mQCBtnFadeInAnimator:Landroid/animation/ValueAnimator;

    .line 3404
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ScrollView;->mQCBtnFadeInAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v16, 0x96

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3406
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ScrollView;->mQCBtnFadeInAnimator:Landroid/animation/ValueAnimator;

    new-instance v15, Landroid/widget/ScrollView$7;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Landroid/widget/ScrollView$7;-><init>(Landroid/widget/ScrollView;)V

    invoke-virtual {v14, v15}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 3417
    const/4 v14, 0x0

    const/16 v15, 0xff

    filled-new-array {v14, v15}, [I

    move-result-object v14

    invoke-static {v14}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/ScrollView;->mQCBtnFadeOutAnimator:Landroid/animation/ValueAnimator;

    .line 3418
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ScrollView;->mQCBtnFadeOutAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v16, 0x96

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3420
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ScrollView;->mQCBtnFadeOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v15, Landroid/widget/ScrollView$8;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Landroid/widget/ScrollView$8;-><init>(Landroid/widget/ScrollView;)V

    invoke-virtual {v14, v15}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 3431
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ScrollView;->mQCBtnFadeOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v15, Landroid/widget/ScrollView$9;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Landroid/widget/ScrollView$9;-><init>(Landroid/widget/ScrollView;)V

    invoke-virtual {v14, v15}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3320
    return-void

    .line 3366
    :pswitch_0
    new-instance v14, Landroid/graphics/Rect;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v14 .. v18}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/ScrollView;->mQCRect:Landroid/graphics/Rect;

    goto/16 :goto_0

    .line 3370
    :pswitch_1
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/ScrollView;->mQCLocation:I

    if-eq v14, v11, :cond_3

    .line 3371
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x108053f

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/ScrollView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    .line 3372
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x1080540

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/ScrollView;->mQCBtnPressedDrawable:Landroid/graphics/drawable/Drawable;

    .line 3375
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x10502ed

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 3376
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x10502ed

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 3377
    new-instance v14, Landroid/graphics/Rect;

    div-int/lit8 v15, v4, 0x2

    sub-int v15, v5, v15

    div-int/lit8 v16, v4, 0x2

    add-int v16, v16, v5

    const/16 v17, 0x0

    move/from16 v0, v17

    move/from16 v1, v16

    invoke-direct {v14, v15, v0, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/ScrollView;->mQCRect:Landroid/graphics/Rect;

    goto/16 :goto_0

    .line 3381
    :pswitch_2
    new-instance v14, Landroid/graphics/Rect;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v14 .. v18}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/ScrollView;->mQCRect:Landroid/graphics/Rect;

    goto/16 :goto_0

    .line 3385
    :pswitch_3
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/ScrollView;->mQCLocation:I

    if-eq v14, v11, :cond_4

    .line 3386
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x108053d

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/ScrollView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    .line 3387
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x108053e

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/ScrollView;->mQCBtnPressedDrawable:Landroid/graphics/drawable/Drawable;

    .line 3390
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x10502ed

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 3391
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x10502ed

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 3392
    new-instance v14, Landroid/graphics/Rect;

    div-int/lit8 v15, v4, 0x2

    sub-int v15, v5, v15

    sub-int v16, v9, v3

    div-int/lit8 v17, v4, 0x2

    add-int v17, v17, v5

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v14, v15, v0, v1, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/ScrollView;->mQCRect:Landroid/graphics/Rect;

    goto/16 :goto_0

    .line 3364
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private showPointerIcon(Landroid/view/MotionEvent;I)V
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "iconId"    # I

    .prologue
    .line 3146
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    .line 3147
    .local v0, "inputDevice":Landroid/view/InputDevice;
    if-eqz v0, :cond_0

    .line 3148
    invoke-virtual {v0, p2}, Landroid/view/InputDevice;->setPointerType(I)V

    .line 3145
    :goto_0
    return-void

    .line 3150
    :cond_0
    const-string/jumbo v1, "ScrollView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to change PointerIcon to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 445
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 446
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 449
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 444
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 454
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 455
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 458
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 453
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 472
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 473
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 476
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 471
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 463
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 464
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 467
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 462
    return-void
.end method

.method public arrowScroll(I)Z
    .locals 13
    .param p1, "direction"    # I

    .prologue
    const/16 v12, 0x82

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1998
    invoke-virtual {p0}, Landroid/widget/ScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1999
    .local v0, "currentFocused":Landroid/view/View;
    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    .line 2001
    .end local v0    # "currentFocused":Landroid/view/View;
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v7

    invoke-virtual {v7, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    .line 2003
    .local v4, "nextFocused":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getMaxScrollAmount()I

    move-result v3

    .line 2005
    .local v3, "maxJump":I
    if-eqz v4, :cond_3

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v7

    invoke-direct {p0, v4, v3, v7}, Landroid/widget/ScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 2006
    iget-object v7, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v7}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 2007
    iget-object v7, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v4, v7}, Landroid/widget/ScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2008
    iget-object v7, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v7}, Landroid/widget/ScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v6

    .line 2009
    .local v6, "scrollDelta":I
    invoke-direct {p0, v6}, Landroid/widget/ScrollView;->doScrollY(I)V

    .line 2010
    iget-boolean v7, p0, Landroid/widget/ScrollView;->mSemEnableGoToTop:Z

    if-eqz v7, :cond_1

    invoke-direct {p0}, Landroid/widget/ScrollView;->canScrollUp()Z

    move-result v7

    if-eqz v7, :cond_1

    iget v7, p0, Landroid/widget/ScrollView;->mSemGoToTopState:I

    if-eq v7, v11, :cond_1

    if-eqz v6, :cond_1

    .line 2011
    invoke-direct {p0, v10}, Landroid/widget/ScrollView;->semSetupGoToTop(I)V

    .line 2012
    invoke-virtual {p0, v10}, Landroid/widget/ScrollView;->semAutoHide(I)V

    .line 2014
    :cond_1
    invoke-virtual {v4, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 2040
    .end local v6    # "scrollDelta":I
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2041
    invoke-direct {p0, v0}, Landroid/widget/ScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v7

    .line 2040
    if-eqz v7, :cond_2

    .line 2047
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getDescendantFocusability()I

    move-result v2

    .line 2048
    .local v2, "descendantFocusability":I
    const/high16 v7, 0x20000

    invoke-virtual {p0, v7}, Landroid/widget/ScrollView;->setDescendantFocusability(I)V

    .line 2049
    invoke-virtual {p0}, Landroid/widget/ScrollView;->requestFocus()Z

    .line 2050
    invoke-virtual {p0, v2}, Landroid/widget/ScrollView;->setDescendantFocusability(I)V

    .line 2052
    .end local v2    # "descendantFocusability":I
    :cond_2
    return v10

    .line 2017
    :cond_3
    move v6, v3

    .line 2019
    .restart local v6    # "scrollDelta":I
    const/16 v7, 0x21

    if-ne p1, v7, :cond_5

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v7

    if-ge v7, v3, :cond_5

    .line 2020
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v6

    .line 2030
    :cond_4
    :goto_1
    if-nez v6, :cond_6

    .line 2031
    return v9

    .line 2021
    :cond_5
    if-ne p1, v12, :cond_4

    .line 2022
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v7

    if-lez v7, :cond_4

    .line 2023
    invoke-virtual {p0, v9}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 2024
    .local v1, "daBottom":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v7

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    iget v8, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int v5, v7, v8

    .line 2025
    .local v5, "screenBottom":I
    sub-int v7, v1, v5

    if-ge v7, v3, :cond_4

    .line 2026
    sub-int v6, v1, v5

    goto :goto_1

    .line 2033
    .end local v1    # "daBottom":I
    .end local v5    # "screenBottom":I
    :cond_6
    iget-boolean v7, p0, Landroid/widget/ScrollView;->mSemEnableGoToTop:Z

    if-eqz v7, :cond_7

    invoke-direct {p0}, Landroid/widget/ScrollView;->canScrollUp()Z

    move-result v7

    if-eqz v7, :cond_7

    iget v7, p0, Landroid/widget/ScrollView;->mSemGoToTopState:I

    if-eq v7, v11, :cond_7

    if-eqz v6, :cond_7

    .line 2034
    invoke-direct {p0, v10}, Landroid/widget/ScrollView;->semSetupGoToTop(I)V

    .line 2035
    invoke-virtual {p0, v10}, Landroid/widget/ScrollView;->semAutoHide(I)V

    .line 2037
    :cond_7
    if-ne p1, v12, :cond_8

    .end local v6    # "scrollDelta":I
    :goto_2
    invoke-direct {p0, v6}, Landroid/widget/ScrollView;->doScrollY(I)V

    goto :goto_0

    .restart local v6    # "scrollDelta":I
    :cond_8
    neg-int v6, v6

    goto :goto_2
.end method

.method public computeScroll()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 2255
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2272
    iget v3, p0, Landroid/widget/ScrollView;->mScrollX:I

    .line 2273
    .local v3, "oldX":I
    iget v4, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 2274
    .local v4, "oldY":I
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v12

    .line 2275
    .local v12, "x":I
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v13

    .line 2277
    .local v13, "y":I
    if-ne v3, v12, :cond_0

    if-eq v4, v13, :cond_1

    .line 2278
    :cond_0
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v6

    .line 2279
    .local v6, "range":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getOverScrollMode()I

    move-result v11

    .line 2280
    .local v11, "overscrollMode":I
    if-eqz v11, :cond_3

    .line 2281
    if-ne v11, v14, :cond_4

    if-lez v6, :cond_4

    const/4 v10, 0x1

    .line 2283
    .local v10, "canOverscroll":Z
    :goto_0
    sub-int v1, v12, v3

    sub-int v2, v13, v4

    .line 2284
    iget v8, p0, Landroid/widget/ScrollView;->mOverflingDistance:I

    move-object v0, p0

    move v7, v5

    move v9, v5

    .line 2283
    invoke-virtual/range {v0 .. v9}, Landroid/widget/ScrollView;->overScrollBy(IIIIIIIIZ)Z

    .line 2286
    iput v14, p0, Landroid/widget/ScrollView;->mSemScrollChnages:I

    .line 2287
    iget v0, p0, Landroid/widget/ScrollView;->mScrollX:I

    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    invoke-virtual {p0, v0, v1, v3, v4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 2289
    if-eqz v10, :cond_1

    .line 2290
    iget-object v0, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_1

    .line 2291
    if-gez v13, :cond_5

    if-ltz v4, :cond_5

    .line 2292
    iget-object v0, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    iget-object v1, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 2300
    .end local v6    # "range":I
    .end local v10    # "canOverscroll":Z
    .end local v11    # "overscrollMode":I
    :cond_1
    :goto_1
    invoke-virtual {p0}, Landroid/widget/ScrollView;->awakenScrollBars()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2302
    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    .line 2253
    .end local v3    # "oldX":I
    .end local v4    # "oldY":I
    .end local v12    # "x":I
    .end local v13    # "y":I
    :cond_2
    :goto_2
    return-void

    .line 2280
    .restart local v3    # "oldX":I
    .restart local v4    # "oldY":I
    .restart local v6    # "range":I
    .restart local v11    # "overscrollMode":I
    .restart local v12    # "x":I
    .restart local v13    # "y":I
    :cond_3
    const/4 v10, 0x1

    .restart local v10    # "canOverscroll":Z
    goto :goto_0

    .line 2281
    .end local v10    # "canOverscroll":Z
    :cond_4
    const/4 v10, 0x0

    .restart local v10    # "canOverscroll":Z
    goto :goto_0

    .line 2293
    :cond_5
    if-le v13, v6, :cond_1

    if-gt v4, v6, :cond_1

    .line 2294
    iget-object v0, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    iget-object v1, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_1

    .line 2305
    .end local v3    # "oldX":I
    .end local v4    # "oldY":I
    .end local v6    # "range":I
    .end local v10    # "canOverscroll":Z
    .end local v11    # "overscrollMode":I
    .end local v12    # "x":I
    .end local v13    # "y":I
    :cond_6
    iget-object v0, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v0, :cond_2

    .line 2306
    iget-object v0, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    .line 2307
    iput-object v1, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    goto :goto_2
.end method

.method protected computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I
    .locals 10
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v9, 0x0

    .line 2363
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v7

    if-nez v7, :cond_0

    return v9

    .line 2365
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v3

    .line 2366
    .local v3, "height":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v5

    .line 2367
    .local v5, "screenTop":I
    add-int v4, v5, v3

    .line 2369
    .local v4, "screenBottom":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getVerticalFadingEdgeLength()I

    move-result v2

    .line 2372
    .local v2, "fadingEdge":I
    iget v7, p1, Landroid/graphics/Rect;->top:I

    if-lez v7, :cond_1

    .line 2373
    add-int/2addr v5, v2

    .line 2377
    :cond_1
    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v9}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    if-ge v7, v8, :cond_2

    .line 2378
    sub-int/2addr v4, v2

    .line 2381
    :cond_2
    const/4 v6, 0x0

    .line 2383
    .local v6, "scrollYDelta":I
    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    if-le v7, v4, :cond_5

    iget v7, p1, Landroid/graphics/Rect;->top:I

    if-le v7, v5, :cond_5

    .line 2388
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-le v7, v3, :cond_4

    .line 2390
    iget v7, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v5

    add-int/lit8 v6, v7, 0x0

    .line 2397
    :goto_0
    invoke-virtual {p0, v9}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 2398
    .local v0, "bottom":I
    sub-int v1, v0, v4

    .line 2399
    .local v1, "distanceToBottom":I
    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 2418
    .end local v0    # "bottom":I
    .end local v1    # "distanceToBottom":I
    :cond_3
    :goto_1
    return v6

    .line 2393
    :cond_4
    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v4

    add-int/lit8 v6, v7, 0x0

    goto :goto_0

    .line 2401
    :cond_5
    iget v7, p1, Landroid/graphics/Rect;->top:I

    if-ge v7, v5, :cond_3

    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    if-ge v7, v4, :cond_3

    .line 2406
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-le v7, v3, :cond_6

    .line 2408
    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    sub-int v7, v4, v7

    rsub-int/lit8 v6, v7, 0x0

    .line 2415
    :goto_2
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v7

    neg-int v7, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    goto :goto_1

    .line 2411
    :cond_6
    iget v7, p1, Landroid/graphics/Rect;->top:I

    sub-int v7, v5, v7

    rsub-int/lit8 v6, v7, 0x0

    goto :goto_2
.end method

.method protected computeVerticalScrollOffset()I
    .locals 2

    .prologue
    .line 2214
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeVerticalScrollOffset()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected computeVerticalScrollRange()I
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 2194
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v1

    .line 2195
    .local v1, "count":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v5

    iget v6, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int v0, v5, v6

    .line 2196
    .local v0, "contentHeight":I
    if-nez v1, :cond_0

    .line 2197
    return v0

    .line 2200
    :cond_0
    invoke-virtual {p0, v7}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 2201
    .local v3, "scrollRange":I
    iget v4, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 2202
    .local v4, "scrollY":I
    sub-int v5, v3, v0

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 2203
    .local v2, "overscrollBottom":I
    if-gez v4, :cond_2

    .line 2204
    sub-int/2addr v3, v4

    .line 2209
    :cond_1
    :goto_0
    return v3

    .line 2205
    :cond_2
    if-le v4, v2, :cond_1

    .line 2206
    sub-int v5, v4, v2

    add-int/2addr v3, v5

    goto :goto_0
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1168
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1171
    .local v0, "action":I
    const/16 v9, 0x9

    if-ne v0, v9, :cond_1

    .line 1172
    const/4 v9, 0x0

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v6

    .line 1174
    .local v6, "toolType":I
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/widget/ScrollView;->mNeedsHoverScroll:Z

    .line 1177
    invoke-virtual {p0}, Landroid/widget/ScrollView;->isHoveringUIEnabled()Z

    move-result v9

    if-eqz v9, :cond_2

    iget-boolean v9, p0, Landroid/widget/ScrollView;->mHoverScrollEnable:Z

    if-eqz v9, :cond_2

    .line 1182
    :goto_0
    iget-boolean v9, p0, Landroid/widget/ScrollView;->mNeedsHoverScroll:Z

    if-eqz v9, :cond_0

    const/4 v9, 0x2

    if-ne v6, v9, :cond_0

    .line 1184
    iget-object v9, p0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 1185
    const-string/jumbo v10, "pen_hovering"

    const/4 v11, 0x0

    .line 1184
    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    .line 1185
    const/4 v10, 0x1

    .line 1184
    if-ne v9, v10, :cond_3

    const/4 v3, 0x1

    .line 1187
    .local v3, "isHoveringOn":Z
    :goto_1
    if-nez v3, :cond_0

    .line 1188
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/ScrollView;->mNeedsHoverScroll:Z

    .line 1193
    .end local v3    # "isHoveringOn":Z
    :cond_0
    iget-boolean v9, p0, Landroid/widget/ScrollView;->mNeedsHoverScroll:Z

    if-eqz v9, :cond_1

    const/4 v9, 0x3

    if-ne v6, v9, :cond_1

    .line 1194
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/ScrollView;->mNeedsHoverScroll:Z

    .line 1199
    .end local v6    # "toolType":I
    :cond_1
    iget-boolean v9, p0, Landroid/widget/ScrollView;->mNeedsHoverScroll:Z

    if-nez v9, :cond_4

    .line 1200
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    return v9

    .line 1178
    .restart local v6    # "toolType":I
    :cond_2
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/ScrollView;->mNeedsHoverScroll:Z

    goto :goto_0

    .line 1184
    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    .line 1204
    .end local v6    # "toolType":I
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v7, v9

    .line 1205
    .local v7, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v8, v9

    .line 1206
    .local v8, "y":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v1

    .line 1207
    .local v1, "childCount":I
    const/4 v2, 0x0

    .line 1208
    .local v2, "contentBottom":I
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v5

    .line 1211
    .local v5, "range":I
    iget-object v9, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    if-nez v9, :cond_5

    .line 1212
    new-instance v9, Landroid/widget/ScrollView$HoverScrollHandler;

    invoke-direct {v9, p0}, Landroid/widget/ScrollView$HoverScrollHandler;-><init>(Landroid/widget/ScrollView;)V

    iput-object v9, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    .line 1215
    :cond_5
    iget v9, p0, Landroid/widget/ScrollView;->mHoverTopAreaHeight:I

    if-lez v9, :cond_6

    iget v9, p0, Landroid/widget/ScrollView;->mHoverBottomAreaHeight:I

    if-gtz v9, :cond_7

    .line 1217
    :cond_6
    const/high16 v9, 0x41c80000    # 25.0f

    .line 1218
    iget-object v10, p0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    .line 1217
    const/4 v11, 0x1

    .line 1216
    invoke-static {v11, v9, v10}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v9

    .line 1218
    const/high16 v10, 0x3f000000    # 0.5f

    .line 1216
    add-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, p0, Landroid/widget/ScrollView;->mHoverTopAreaHeight:I

    .line 1221
    const/high16 v9, 0x41c80000    # 25.0f

    .line 1222
    iget-object v10, p0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    .line 1221
    const/4 v11, 0x1

    .line 1220
    invoke-static {v11, v9, v10}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v9

    .line 1222
    const/high16 v10, 0x3f000000    # 0.5f

    .line 1220
    add-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, p0, Landroid/widget/ScrollView;->mHoverBottomAreaHeight:I

    .line 1225
    :cond_7
    if-eqz v1, :cond_8

    .line 1226
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v2

    .line 1229
    :cond_8
    const/4 v9, 0x0

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_11

    const/4 v4, 0x1

    .line 1231
    .local v4, "isPossibleTooltype":Z
    :goto_2
    iget v9, p0, Landroid/widget/ScrollView;->mHoverTopAreaHeight:I

    if-le v8, v9, :cond_12

    iget v9, p0, Landroid/widget/ScrollView;->mHoverBottomAreaHeight:I

    sub-int v9, v2, v9

    if-ge v8, v9, :cond_12

    .line 1237
    :cond_9
    iget-object v9, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/ScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 1238
    iget-object v9, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/ScrollView$HoverScrollHandler;->removeMessages(I)V

    .line 1239
    const/16 v9, 0x4e21

    invoke-direct {p0, p1, v9}, Landroid/widget/ScrollView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    .line 1242
    :cond_a
    iget-object v9, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Landroid/widget/ScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 1243
    iget-object v9, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Landroid/widget/ScrollView$HoverScrollHandler;->removeMessages(I)V

    .line 1246
    :cond_b
    iget v9, p0, Landroid/widget/ScrollView;->mHoverTopAreaHeight:I

    if-le v8, v9, :cond_19

    iget v9, p0, Landroid/widget/ScrollView;->mHoverBottomAreaHeight:I

    sub-int v9, v2, v9

    if-ge v8, v9, :cond_19

    .line 1247
    :cond_c
    :goto_3
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    .line 1250
    :cond_d
    iget-boolean v9, p0, Landroid/widget/ScrollView;->mHoverAreaEnter:Z

    if-nez v9, :cond_e

    iget-wide v10, p0, Landroid/widget/ScrollView;->mHoverScrollStartTime:J

    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-eqz v9, :cond_f

    .line 1251
    :cond_e
    const/16 v9, 0x4e21

    invoke-direct {p0, p1, v9}, Landroid/widget/ScrollView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    .line 1253
    :cond_f
    const-wide/16 v10, 0x0

    iput-wide v10, p0, Landroid/widget/ScrollView;->mHoverRecognitionStartTime:J

    .line 1254
    const-wide/16 v10, 0x0

    iput-wide v10, p0, Landroid/widget/ScrollView;->mHoverScrollStartTime:J

    .line 1255
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/ScrollView;->mHoverAreaEnter:Z

    .line 1258
    iget v9, p0, Landroid/widget/ScrollView;->mQCstate:I

    if-eqz v9, :cond_10

    .line 1259
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/ScrollView;->mQCstate:I

    .line 1260
    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    .line 1263
    :cond_10
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    return v9

    .line 1229
    .end local v4    # "isPossibleTooltype":Z
    :cond_11
    const/4 v4, 0x0

    .restart local v4    # "isPossibleTooltype":Z
    goto :goto_2

    .line 1231
    :cond_12
    if-lez v7, :cond_9

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getRight()I

    move-result v9

    if-gt v7, v9, :cond_9

    if-eqz v5, :cond_9

    .line 1232
    if-ltz v8, :cond_13

    iget v9, p0, Landroid/widget/ScrollView;->mHoverTopAreaHeight:I

    if-gt v8, v9, :cond_13

    iget v9, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-gtz v9, :cond_13

    iget-boolean v9, p0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    .line 1231
    if-nez v9, :cond_9

    .line 1233
    :cond_13
    iget v9, p0, Landroid/widget/ScrollView;->mHoverBottomAreaHeight:I

    sub-int v9, v2, v9

    if-lt v8, v9, :cond_14

    if-gt v8, v2, :cond_14

    iget v9, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-lt v9, v5, :cond_14

    iget-boolean v9, p0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    .line 1231
    if-nez v9, :cond_9

    .line 1234
    :cond_14
    if-eqz v4, :cond_15

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v9

    const/16 v10, 0x20

    if-eq v9, v10, :cond_9

    .line 1235
    :cond_15
    if-eqz v4, :cond_9

    invoke-virtual {p0}, Landroid/widget/ScrollView;->isLockScreenMode()Z

    move-result v9

    .line 1231
    if-nez v9, :cond_9

    .line 1235
    iget-boolean v9, p0, Landroid/widget/ScrollView;->mSemEnableGoToTop:Z

    if-eqz v9, :cond_16

    iget v9, p0, Landroid/widget/ScrollView;->mSemGoToTopState:I

    if-eqz v9, :cond_16

    iget-object v9, p0, Landroid/widget/ScrollView;->mSemGoToTopRect:Landroid/graphics/Rect;

    invoke-virtual {v9, v7, v8}, Landroid/graphics/Rect;->contains(II)Z

    move-result v9

    .line 1231
    if-nez v9, :cond_9

    .line 1266
    :cond_16
    iget-boolean v9, p0, Landroid/widget/ScrollView;->mHoverAreaEnter:Z

    if-nez v9, :cond_17

    .line 1267
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, p0, Landroid/widget/ScrollView;->mHoverScrollStartTime:J

    .line 1269
    :cond_17
    packed-switch v0, :pswitch_data_0

    .line 1380
    :cond_18
    :goto_4
    :pswitch_0
    const/4 v9, 0x1

    return v9

    .line 1246
    :cond_19
    if-lez v7, :cond_c

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getRight()I

    move-result v9

    if-le v7, v9, :cond_d

    goto/16 :goto_3

    .line 1271
    :pswitch_1
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/widget/ScrollView;->mHoverAreaEnter:Z

    .line 1273
    if-ltz v8, :cond_1a

    iget v9, p0, Landroid/widget/ScrollView;->mHoverTopAreaHeight:I

    if-gt v8, v9, :cond_1a

    .line 1275
    iget-object v9, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/ScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v9

    if-nez v9, :cond_18

    .line 1276
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, p0, Landroid/widget/ScrollView;->mHoverRecognitionStartTime:J

    .line 1278
    const/16 v9, 0x4e2b

    invoke-direct {p0, p1, v9}, Landroid/widget/ScrollView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    .line 1280
    const/4 v9, 0x2

    iput v9, p0, Landroid/widget/ScrollView;->mHoverScrollDirection:I

    .line 1281
    iget-object v9, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/ScrollView$HoverScrollHandler;->sendEmptyMessage(I)Z

    .line 1284
    invoke-direct {p0}, Landroid/widget/ScrollView;->isQCSupported()Z

    move-result v9

    if-eqz v9, :cond_18

    const/4 v9, -0x1

    invoke-virtual {p0, v9}, Landroid/widget/ScrollView;->canScrollVertically(I)Z

    move-result v9

    if-eqz v9, :cond_18

    .line 1285
    const/4 v9, 0x2

    invoke-direct {p0, v9}, Landroid/widget/ScrollView;->setupQuickController(I)V

    .line 1286
    const/4 v9, 0x1

    iput v9, p0, Landroid/widget/ScrollView;->mQCstate:I

    goto :goto_4

    .line 1289
    :cond_1a
    iget v9, p0, Landroid/widget/ScrollView;->mHoverBottomAreaHeight:I

    sub-int v9, v2, v9

    if-lt v8, v9, :cond_18

    if-gt v8, v2, :cond_18

    .line 1291
    iget-object v9, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/ScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v9

    if-nez v9, :cond_18

    .line 1292
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, p0, Landroid/widget/ScrollView;->mHoverRecognitionStartTime:J

    .line 1294
    const/16 v9, 0x4e2f

    invoke-direct {p0, p1, v9}, Landroid/widget/ScrollView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    .line 1296
    const/4 v9, 0x1

    iput v9, p0, Landroid/widget/ScrollView;->mHoverScrollDirection:I

    .line 1297
    iget-object v9, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/ScrollView$HoverScrollHandler;->sendEmptyMessage(I)Z

    .line 1300
    invoke-direct {p0}, Landroid/widget/ScrollView;->isQCSupported()Z

    move-result v9

    if-eqz v9, :cond_18

    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Landroid/widget/ScrollView;->canScrollVertically(I)Z

    move-result v9

    if-eqz v9, :cond_18

    .line 1301
    const/4 v9, 0x4

    invoke-direct {p0, v9}, Landroid/widget/ScrollView;->setupQuickController(I)V

    .line 1302
    const/4 v9, 0x1

    iput v9, p0, Landroid/widget/ScrollView;->mQCstate:I

    goto :goto_4

    .line 1310
    :pswitch_2
    iget-boolean v9, p0, Landroid/widget/ScrollView;->mHoverAreaEnter:Z

    if-nez v9, :cond_1b

    .line 1311
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/widget/ScrollView;->mHoverAreaEnter:Z

    .line 1312
    const/16 v9, 0xa

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1313
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    return v9

    .line 1316
    :cond_1b
    if-ltz v8, :cond_1e

    iget v9, p0, Landroid/widget/ScrollView;->mHoverTopAreaHeight:I

    if-gt v8, v9, :cond_1e

    .line 1318
    iget-object v9, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/ScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v9

    if-nez v9, :cond_18

    .line 1319
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, p0, Landroid/widget/ScrollView;->mHoverRecognitionStartTime:J

    .line 1321
    iget-boolean v9, p0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    if-eqz v9, :cond_1c

    iget v9, p0, Landroid/widget/ScrollView;->mHoverScrollDirection:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1d

    .line 1322
    :cond_1c
    const/16 v9, 0x4e2b

    invoke-direct {p0, p1, v9}, Landroid/widget/ScrollView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    .line 1325
    :cond_1d
    const/4 v9, 0x2

    iput v9, p0, Landroid/widget/ScrollView;->mHoverScrollDirection:I

    .line 1326
    iget-object v9, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/ScrollView$HoverScrollHandler;->sendEmptyMessage(I)Z

    .line 1329
    invoke-direct {p0}, Landroid/widget/ScrollView;->isQCSupported()Z

    move-result v9

    if-eqz v9, :cond_18

    iget v9, p0, Landroid/widget/ScrollView;->mQCstate:I

    if-nez v9, :cond_18

    const/4 v9, -0x1

    invoke-virtual {p0, v9}, Landroid/widget/ScrollView;->canScrollVertically(I)Z

    move-result v9

    if-eqz v9, :cond_18

    .line 1330
    const/4 v9, 0x2

    invoke-direct {p0, v9}, Landroid/widget/ScrollView;->setupQuickController(I)V

    .line 1331
    const/4 v9, 0x1

    iput v9, p0, Landroid/widget/ScrollView;->mQCstate:I

    goto/16 :goto_4

    .line 1334
    :cond_1e
    iget v9, p0, Landroid/widget/ScrollView;->mHoverBottomAreaHeight:I

    sub-int v9, v2, v9

    if-lt v8, v9, :cond_18

    if-gt v8, v2, :cond_18

    .line 1336
    iget-object v9, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/ScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v9

    if-nez v9, :cond_18

    .line 1337
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, p0, Landroid/widget/ScrollView;->mHoverRecognitionStartTime:J

    .line 1339
    iget-boolean v9, p0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    if-eqz v9, :cond_1f

    iget v9, p0, Landroid/widget/ScrollView;->mHoverScrollDirection:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_20

    .line 1340
    :cond_1f
    const/16 v9, 0x4e2f

    invoke-direct {p0, p1, v9}, Landroid/widget/ScrollView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    .line 1343
    :cond_20
    const/4 v9, 0x1

    iput v9, p0, Landroid/widget/ScrollView;->mHoverScrollDirection:I

    .line 1344
    iget-object v9, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/ScrollView$HoverScrollHandler;->sendEmptyMessage(I)Z

    .line 1347
    invoke-direct {p0}, Landroid/widget/ScrollView;->isQCSupported()Z

    move-result v9

    if-eqz v9, :cond_18

    iget v9, p0, Landroid/widget/ScrollView;->mQCstate:I

    if-nez v9, :cond_18

    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Landroid/widget/ScrollView;->canScrollVertically(I)Z

    move-result v9

    if-eqz v9, :cond_18

    .line 1348
    const/4 v9, 0x4

    invoke-direct {p0, v9}, Landroid/widget/ScrollView;->setupQuickController(I)V

    .line 1349
    const/4 v9, 0x1

    iput v9, p0, Landroid/widget/ScrollView;->mQCstate:I

    goto/16 :goto_4

    .line 1357
    :pswitch_3
    iget-object v9, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/ScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v9

    if-eqz v9, :cond_21

    .line 1358
    iget-object v9, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/ScrollView$HoverScrollHandler;->removeMessages(I)V

    .line 1361
    :cond_21
    const/16 v9, 0x4e21

    invoke-direct {p0, p1, v9}, Landroid/widget/ScrollView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    .line 1363
    const-wide/16 v10, 0x0

    iput-wide v10, p0, Landroid/widget/ScrollView;->mHoverRecognitionStartTime:J

    .line 1364
    const-wide/16 v10, 0x0

    iput-wide v10, p0, Landroid/widget/ScrollView;->mHoverScrollStartTime:J

    .line 1365
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    .line 1366
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/ScrollView;->mHoverAreaEnter:Z

    .line 1369
    iget v9, p0, Landroid/widget/ScrollView;->mQCstate:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_22

    .line 1372
    iget-object v9, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    iget v10, p0, Landroid/widget/ScrollView;->QC_ICON_HIDE_DELAY:I

    int-to-long v10, v10

    const/4 v12, 0x0

    invoke-virtual {v9, v12, v10, v11}, Landroid/widget/ScrollView$HoverScrollHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1375
    :cond_22
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    return v9

    .line 1269
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 582
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 598
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v6, v8

    .line 599
    .local v6, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v7, v8

    .line 600
    .local v7, "y":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v1

    .line 601
    .local v1, "childCount":I
    const/4 v2, 0x0

    .line 602
    .local v2, "contentBottom":I
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v5

    .line 603
    .local v5, "range":I
    const/4 v4, 0x0

    .line 604
    .local v4, "needToScroll":Z
    invoke-static {}, Landroid/text/MultiSelection;->isNeedToScroll()Z

    move-result v4

    .line 607
    .local v4, "needToScroll":Z
    iget-object v8, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    if-nez v8, :cond_0

    .line 608
    new-instance v8, Landroid/widget/ScrollView$HoverScrollHandler;

    invoke-direct {v8, p0}, Landroid/widget/ScrollView$HoverScrollHandler;-><init>(Landroid/widget/ScrollView;)V

    iput-object v8, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    .line 611
    :cond_0
    iget v8, p0, Landroid/widget/ScrollView;->mHoverTopAreaHeight:I

    if-lez v8, :cond_1

    iget v8, p0, Landroid/widget/ScrollView;->mHoverBottomAreaHeight:I

    if-gtz v8, :cond_2

    .line 613
    :cond_1
    const/high16 v8, 0x41c80000    # 25.0f

    .line 614
    iget-object v9, p0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    .line 613
    const/4 v10, 0x1

    .line 612
    invoke-static {v10, v8, v9}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v8

    .line 614
    const/high16 v9, 0x3f000000    # 0.5f

    .line 612
    add-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, p0, Landroid/widget/ScrollView;->mHoverTopAreaHeight:I

    .line 617
    const/high16 v8, 0x41c80000    # 25.0f

    .line 618
    iget-object v9, p0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    .line 617
    const/4 v10, 0x1

    .line 616
    invoke-static {v10, v8, v9}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v8

    .line 618
    const/high16 v9, 0x3f000000    # 0.5f

    .line 616
    add-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, p0, Landroid/widget/ScrollView;->mHoverBottomAreaHeight:I

    .line 621
    :cond_2
    if-eqz v1, :cond_3

    .line 622
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v2

    .line 625
    :cond_3
    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_4

    const/4 v3, 0x1

    .line 627
    .local v3, "isPossibleTooltype":Z
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 630
    .local v0, "action":I
    if-nez v0, :cond_c

    .line 631
    invoke-direct {p0}, Landroid/widget/ScrollView;->semIsSupportGotoTop()Z

    move-result v8

    if-eqz v8, :cond_5

    iget v8, p0, Landroid/widget/ScrollView;->mSemGoToTopState:I

    const/4 v9, 0x2

    if-eq v8, v9, :cond_5

    iget-object v8, p0, Landroid/widget/ScrollView;->mSemGoToTopRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v6, v7}, Landroid/graphics/Rect;->contains(II)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 632
    const-string/jumbo v8, "ScrollView"

    const-string/jumbo v9, " action down"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    const/4 v8, 0x2

    invoke-direct {p0, v8}, Landroid/widget/ScrollView;->semSetupGoToTop(I)V

    .line 635
    iget-object v8, p0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    int-to-float v9, v6

    int-to-float v10, v7

    invoke-virtual {v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 636
    iget-object v8, p0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    const v9, 0x10100a7

    const v10, 0x101009e

    const v11, 0x10100a1

    filled-new-array {v9, v10, v11}, [I

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 638
    const/4 v8, 0x1

    return v8

    .line 625
    .end local v0    # "action":I
    .end local v3    # "isPossibleTooltype":Z
    :cond_4
    const/4 v3, 0x0

    .restart local v3    # "isPossibleTooltype":Z
    goto :goto_0

    .line 640
    .restart local v0    # "action":I
    :cond_5
    iget v8, p0, Landroid/widget/ScrollView;->mQCstate:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_9

    .line 641
    iget-boolean v8, p0, Landroid/widget/ScrollView;->mIsQCShown:Z

    if-eqz v8, :cond_8

    iget-object v8, p0, Landroid/widget/ScrollView;->mQCRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    float-to-int v10, v10

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Rect;->contains(II)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 642
    iget-object v8, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 643
    iget-object v8, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView$HoverScrollHandler;->removeMessages(I)V

    .line 645
    :cond_6
    iget-object v8, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 646
    iget-object v8, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView$HoverScrollHandler;->removeMessages(I)V

    .line 649
    :cond_7
    iget-object v8, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView$HoverScrollHandler;->sendEmptyMessage(I)Z

    .line 651
    const/4 v8, 0x2

    iput v8, p0, Landroid/widget/ScrollView;->mQCstate:I

    .line 652
    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    .line 653
    const/4 v8, 0x1

    return v8

    .line 656
    :cond_8
    const/4 v8, 0x0

    iput v8, p0, Landroid/widget/ScrollView;->mQCstate:I

    .line 726
    :cond_9
    iget v8, p0, Landroid/widget/ScrollView;->mHoverTopAreaHeight:I

    if-le v7, v8, :cond_16

    iget v8, p0, Landroid/widget/ScrollView;->mHoverBottomAreaHeight:I

    sub-int v8, v2, v8

    if-ge v7, v8, :cond_16

    .line 729
    :cond_a
    iget-object v8, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 730
    iget-object v8, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView$HoverScrollHandler;->removeMessages(I)V

    .line 733
    :cond_b
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Landroid/widget/ScrollView;->mHoverRecognitionStartTime:J

    .line 734
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Landroid/widget/ScrollView;->mHoverScrollStartTime:J

    .line 735
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/widget/ScrollView;->mHoverAreaEnter:Z

    .line 736
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    .line 738
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    return v8

    .line 659
    :cond_c
    const/4 v8, 0x2

    if-ne v0, v8, :cond_f

    .line 660
    invoke-direct {p0}, Landroid/widget/ScrollView;->semIsSupportGotoTop()Z

    move-result v8

    if-eqz v8, :cond_e

    iget v8, p0, Landroid/widget/ScrollView;->mSemGoToTopState:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_e

    .line 662
    iget-object v8, p0, Landroid/widget/ScrollView;->mSemGoToTopRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v6, v7}, Landroid/graphics/Rect;->contains(II)Z

    move-result v8

    if-nez v8, :cond_d

    .line 663
    const/4 v8, 0x1

    iput v8, p0, Landroid/widget/ScrollView;->mSemGoToTopState:I

    .line 664
    iget-object v8, p0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    sget-object v9, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 665
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Landroid/widget/ScrollView;->semAutoHide(I)V

    .line 667
    :cond_d
    const/4 v8, 0x1

    return v8

    .line 669
    :cond_e
    iget v8, p0, Landroid/widget/ScrollView;->mQCstate:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_9

    .line 671
    const/4 v8, 0x1

    return v8

    .line 673
    :cond_f
    const/4 v8, 0x1

    if-eq v0, v8, :cond_10

    const/4 v8, 0x3

    if-ne v0, v8, :cond_9

    .line 674
    :cond_10
    const/4 v8, 0x3

    if-ne v0, v8, :cond_14

    .line 675
    invoke-direct {p0}, Landroid/widget/ScrollView;->semIsSupportGotoTop()Z

    move-result v8

    if-eqz v8, :cond_11

    iget v8, p0, Landroid/widget/ScrollView;->mSemGoToTopState:I

    if-eqz v8, :cond_11

    .line 677
    iget-object v8, p0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    sget-object v9, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 707
    :cond_11
    iget v8, p0, Landroid/widget/ScrollView;->mQCstate:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_9

    .line 709
    iget-object v8, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v8

    if-eqz v8, :cond_12

    .line 710
    iget-object v8, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView$HoverScrollHandler;->removeMessages(I)V

    .line 713
    :cond_12
    iget-object v8, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 714
    iget-object v8, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView$HoverScrollHandler;->removeMessages(I)V

    .line 717
    :cond_13
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    .line 720
    const/4 v8, 0x0

    iput v8, p0, Landroid/widget/ScrollView;->mQCstate:I

    .line 721
    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    .line 722
    const/4 v8, 0x1

    return v8

    .line 683
    :cond_14
    invoke-direct {p0}, Landroid/widget/ScrollView;->semIsSupportGotoTop()Z

    move-result v8

    if-eqz v8, :cond_11

    iget v8, p0, Landroid/widget/ScrollView;->mSemGoToTopState:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_11

    .line 686
    invoke-direct {p0}, Landroid/widget/ScrollView;->canScrollUp()Z

    move-result v8

    if-eqz v8, :cond_15

    .line 687
    new-instance v8, Landroid/widget/ScrollView$6;

    invoke-direct {v8, p0}, Landroid/widget/ScrollView$6;-><init>(Landroid/widget/ScrollView;)V

    invoke-virtual {p0, v8}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    .line 694
    iget-object v8, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v9

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 695
    iget-object v8, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x43fa0000    # 500.0f

    div-float v9, v10, v9

    int-to-float v10, v6

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 696
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x1f4

    invoke-virtual {p0, v9, v10, v8, v11}, Landroid/widget/ScrollView;->invalidate(IIII)V

    .line 698
    :cond_15
    const/4 v8, 0x1

    iput v8, p0, Landroid/widget/ScrollView;->mSemGoToTopState:I

    .line 699
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Landroid/widget/ScrollView;->semAutoHide(I)V

    .line 700
    iget-object v8, p0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    sget-object v9, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 701
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Landroid/widget/ScrollView;->playSoundEffect(I)V

    .line 703
    const/4 v8, 0x1

    return v8

    .line 726
    :cond_16
    if-lez v6, :cond_a

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getRight()I

    move-result v8

    if-gt v6, v8, :cond_a

    .line 727
    if-eqz v5, :cond_a

    if-eqz v3, :cond_a

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v8

    const/16 v9, 0x20

    if-ne v8, v9, :cond_a

    .line 741
    iget-boolean v8, p0, Landroid/widget/ScrollView;->mHoverAreaEnter:Z

    if-nez v8, :cond_17

    .line 742
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Landroid/widget/ScrollView;->mHoverScrollStartTime:J

    .line 744
    :cond_17
    packed-switch v0, :pswitch_data_0

    .line 846
    :cond_18
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    return v8

    .line 746
    :pswitch_0
    invoke-direct {p0}, Landroid/widget/ScrollView;->semIsSupportGotoTop()Z

    move-result v8

    if-eqz v8, :cond_18

    iget v8, p0, Landroid/widget/ScrollView;->mSemGoToTopState:I

    const/4 v9, 0x2

    if-eq v8, v9, :cond_18

    iget-object v8, p0, Landroid/widget/ScrollView;->mSemGoToTopRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v6, v7}, Landroid/graphics/Rect;->contains(II)Z

    move-result v8

    if-eqz v8, :cond_18

    .line 747
    const-string/jumbo v8, "ScrollView"

    const-string/jumbo v9, " pen down GoToTp"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    const/4 v8, 0x2

    invoke-direct {p0, v8}, Landroid/widget/ScrollView;->semSetupGoToTop(I)V

    .line 750
    iget-object v8, p0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    int-to-float v9, v6

    int-to-float v10, v7

    invoke-virtual {v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 751
    iget-object v8, p0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    const v9, 0x10100a7

    const v10, 0x101009e

    const v11, 0x10100a1

    filled-new-array {v9, v10, v11}, [I

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 752
    const/4 v8, 0x1

    return v8

    .line 756
    :pswitch_1
    invoke-direct {p0}, Landroid/widget/ScrollView;->semIsSupportGotoTop()Z

    move-result v8

    if-eqz v8, :cond_19

    iget v8, p0, Landroid/widget/ScrollView;->mSemGoToTopState:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_19

    iget-object v8, p0, Landroid/widget/ScrollView;->mSemGoToTopRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v6, v7}, Landroid/graphics/Rect;->contains(II)Z

    move-result v8

    if-eqz v8, :cond_1c

    .line 765
    :cond_19
    if-eqz v4, :cond_21

    .line 766
    if-ltz v7, :cond_1d

    iget v8, p0, Landroid/widget/ScrollView;->mHoverTopAreaHeight:I

    if-gt v7, v8, :cond_1d

    .line 768
    iget-boolean v8, p0, Landroid/widget/ScrollView;->mHoverAreaEnter:Z

    if-nez v8, :cond_1a

    .line 769
    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/widget/ScrollView;->mHoverAreaEnter:Z

    .line 770
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Landroid/widget/ScrollView;->mHoverScrollStartTime:J

    .line 773
    :cond_1a
    iget-object v8, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v8

    if-nez v8, :cond_1b

    .line 774
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Landroid/widget/ScrollView;->mHoverRecognitionStartTime:J

    .line 776
    const/4 v8, 0x2

    iput v8, p0, Landroid/widget/ScrollView;->mHoverScrollDirection:I

    .line 777
    iget-object v8, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView$HoverScrollHandler;->sendEmptyMessage(I)Z

    .line 810
    :cond_1b
    :goto_2
    iput-boolean v4, p0, Landroid/widget/ScrollView;->mPreviousTextViewScroll:Z

    goto/16 :goto_1

    .line 757
    :cond_1c
    const-string/jumbo v8, "ScrollView"

    const-string/jumbo v9, "pen action move GOTOTOP"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    const/4 v8, 0x1

    iput v8, p0, Landroid/widget/ScrollView;->mSemGoToTopState:I

    .line 760
    iget-object v8, p0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    sget-object v9, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 762
    const/4 v8, 0x1

    return v8

    .line 779
    :cond_1d
    iget v8, p0, Landroid/widget/ScrollView;->mHoverBottomAreaHeight:I

    sub-int v8, v2, v8

    if-lt v7, v8, :cond_1f

    if-gt v7, v2, :cond_1f

    .line 781
    iget-boolean v8, p0, Landroid/widget/ScrollView;->mHoverAreaEnter:Z

    if-nez v8, :cond_1e

    .line 782
    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/widget/ScrollView;->mHoverAreaEnter:Z

    .line 783
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Landroid/widget/ScrollView;->mHoverScrollStartTime:J

    .line 786
    :cond_1e
    iget-object v8, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v8

    if-nez v8, :cond_1b

    .line 787
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Landroid/widget/ScrollView;->mHoverRecognitionStartTime:J

    .line 789
    const/4 v8, 0x1

    iput v8, p0, Landroid/widget/ScrollView;->mHoverScrollDirection:I

    .line 790
    iget-object v8, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView$HoverScrollHandler;->sendEmptyMessage(I)Z

    goto :goto_2

    .line 793
    :cond_1f
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Landroid/widget/ScrollView;->mHoverScrollStartTime:J

    .line 794
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Landroid/widget/ScrollView;->mHoverRecognitionStartTime:J

    .line 795
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/widget/ScrollView;->mHoverAreaEnter:Z

    .line 798
    iget-object v8, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v8

    if-eqz v8, :cond_20

    .line 799
    iget-object v8, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView$HoverScrollHandler;->removeMessages(I)V

    .line 802
    :cond_20
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    goto :goto_2

    .line 804
    :cond_21
    iget-boolean v8, p0, Landroid/widget/ScrollView;->mPreviousTextViewScroll:Z

    if-eqz v8, :cond_1b

    .line 806
    iget-object v8, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v8

    if-eqz v8, :cond_1b

    .line 807
    iget-object v8, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView$HoverScrollHandler;->removeMessages(I)V

    goto :goto_2

    .line 814
    :pswitch_2
    invoke-direct {p0}, Landroid/widget/ScrollView;->semIsSupportGotoTop()Z

    move-result v8

    if-eqz v8, :cond_23

    iget v8, p0, Landroid/widget/ScrollView;->mSemGoToTopState:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_23

    .line 815
    const-string/jumbo v8, "ScrollView"

    const-string/jumbo v9, "pen up false GOTOTOP"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    invoke-direct {p0}, Landroid/widget/ScrollView;->canScrollUp()Z

    move-result v8

    if-eqz v8, :cond_22

    .line 820
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {p0, v8, v9}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    .line 821
    iget-object v8, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x43fa0000    # 500.0f

    div-float v9, v10, v9

    int-to-float v10, v6

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 822
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x1f4

    invoke-virtual {p0, v9, v10, v8, v11}, Landroid/widget/ScrollView;->invalidate(IIII)V

    .line 824
    :cond_22
    const/4 v8, 0x0

    invoke-direct {p0, v8}, Landroid/widget/ScrollView;->semSetupGoToTop(I)V

    .line 825
    iget-object v8, p0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    sget-object v9, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 827
    const/4 v8, 0x1

    return v8

    .line 831
    :cond_23
    iget-object v8, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v8

    if-eqz v8, :cond_24

    .line 832
    iget-object v8, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView$HoverScrollHandler;->removeMessages(I)V

    .line 835
    :cond_24
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Landroid/widget/ScrollView;->mHoverRecognitionStartTime:J

    .line 836
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Landroid/widget/ScrollView;->mHoverScrollStartTime:J

    .line 837
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    .line 838
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/widget/ScrollView;->mHoverAreaEnter:Z

    .line 840
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    return v8

    .line 744
    :pswitch_data_0
    .packed-switch 0xd3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 2773
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 2774
    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v7, :cond_3

    .line 2775
    iget v3, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 2776
    .local v3, "scrollY":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getClipToPadding()Z

    move-result v0

    .line 2777
    .local v0, "clipToPadding":Z
    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-nez v7, :cond_1

    .line 2778
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 2783
    .local v2, "restoreCount":I
    if-eqz v0, :cond_5

    .line 2784
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v7

    iget v8, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/widget/ScrollView;->mPaddingRight:I

    sub-int v6, v7, v8

    .line 2785
    .local v6, "width":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v7

    iget v8, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int v1, v7, v8

    .line 2786
    .local v1, "height":I
    iget v7, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    int-to-float v4, v7

    .line 2787
    .local v4, "translateX":F
    iget v7, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    int-to-float v5, v7

    .line 2794
    .local v5, "translateY":F
    :goto_0
    const/4 v7, 0x0

    invoke-static {v7, v3}, Ljava/lang/Math;->min(II)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v7, v5

    invoke-virtual {p1, v4, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2795
    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v7, v6, v1}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 2796
    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v7, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2797
    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    .line 2799
    :cond_0
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2801
    .end local v1    # "height":I
    .end local v2    # "restoreCount":I
    .end local v4    # "translateX":F
    .end local v5    # "translateY":F
    .end local v6    # "width":I
    :cond_1
    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-nez v7, :cond_3

    .line 2802
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 2807
    .restart local v2    # "restoreCount":I
    if-eqz v0, :cond_6

    .line 2808
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v7

    iget v8, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/widget/ScrollView;->mPaddingRight:I

    sub-int v6, v7, v8

    .line 2809
    .restart local v6    # "width":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v7

    iget v8, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int v1, v7, v8

    .line 2810
    .restart local v1    # "height":I
    iget v7, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    int-to-float v4, v7

    .line 2811
    .restart local v4    # "translateX":F
    iget v7, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    int-to-float v5, v7

    .line 2818
    .restart local v5    # "translateY":F
    :goto_1
    neg-int v7, v6

    int-to-float v7, v7

    add-float/2addr v7, v4

    .line 2819
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v8

    invoke-static {v8, v3}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/2addr v8, v1

    int-to-float v8, v8

    add-float/2addr v8, v5

    .line 2818
    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2820
    const/high16 v7, 0x43340000    # 180.0f

    int-to-float v8, v6

    const/4 v9, 0x0

    invoke-virtual {p1, v7, v8, v9}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 2821
    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v7, v6, v1}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 2822
    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v7, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2823
    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    .line 2825
    :cond_2
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2831
    .end local v0    # "clipToPadding":Z
    .end local v1    # "height":I
    .end local v2    # "restoreCount":I
    .end local v3    # "scrollY":I
    .end local v4    # "translateX":F
    .end local v5    # "translateY":F
    .end local v6    # "width":I
    :cond_3
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;->drawQuickController(Landroid/graphics/Canvas;)V

    .line 2833
    iget-boolean v7, p0, Landroid/widget/ScrollView;->mSemEnableGoToTop:Z

    if-eqz v7, :cond_4

    invoke-direct {p0, p1}, Landroid/widget/ScrollView;->drawGoToTop(Landroid/graphics/Canvas;)V

    .line 2772
    :cond_4
    return-void

    .line 2789
    .restart local v0    # "clipToPadding":Z
    .restart local v2    # "restoreCount":I
    .restart local v3    # "scrollY":I
    :cond_5
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v6

    .line 2790
    .restart local v6    # "width":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v1

    .line 2791
    .restart local v1    # "height":I
    const/4 v4, 0x0

    .line 2792
    .restart local v4    # "translateX":F
    const/4 v5, 0x0

    .restart local v5    # "translateY":F
    goto/16 :goto_0

    .line 2813
    .end local v1    # "height":I
    .end local v4    # "translateX":F
    .end local v5    # "translateY":F
    .end local v6    # "width":I
    :cond_6
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v6

    .line 2814
    .restart local v6    # "width":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v1

    .line 2815
    .restart local v1    # "height":I
    const/4 v4, 0x0

    .line 2816
    .restart local v4    # "translateX":F
    const/4 v5, 0x0

    .restart local v5    # "translateY":F
    goto :goto_1
.end method

.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 2
    .param p1, "encoder"    # Landroid/view/ViewHierarchyEncoder;

    .prologue
    .line 2927
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 2928
    const-string/jumbo v0, "fillViewport"

    iget-boolean v1, p0, Landroid/widget/ScrollView;->mFillViewport:Z

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 2926
    return-void
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x0

    const/16 v4, 0x21

    const/16 v5, 0x82

    .line 872
    iget-object v6, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->setEmpty()V

    .line 874
    invoke-direct {p0}, Landroid/widget/ScrollView;->canScroll()Z

    move-result v6

    if-nez v6, :cond_3

    .line 875
    invoke-virtual {p0}, Landroid/widget/ScrollView;->isFocused()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    const/4 v6, 0x4

    if-eq v4, v6, :cond_2

    .line 876
    invoke-virtual {p0}, Landroid/widget/ScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 877
    .local v0, "currentFocused":Landroid/view/View;
    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    .line 878
    .end local v0    # "currentFocused":Landroid/view/View;
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v4

    invoke-virtual {v4, p0, v0, v5}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 880
    .local v2, "nextFocused":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 881
    if-eq v2, p0, :cond_1

    .line 882
    invoke-virtual {v2, v5}, Landroid/view/View;->requestFocus(I)Z

    move-result v3

    .line 880
    :cond_1
    return v3

    .line 884
    .end local v2    # "nextFocused":Landroid/view/View;
    :cond_2
    return v3

    .line 887
    :cond_3
    const/4 v1, 0x0

    .line 888
    .local v1, "handled":Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_4

    .line 889
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 918
    .end local v1    # "handled":Z
    :cond_4
    :goto_0
    return v1

    .line 891
    .restart local v1    # "handled":Z
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v3

    if-nez v3, :cond_5

    .line 892
    invoke-virtual {p0, v4}, Landroid/widget/ScrollView;->arrowScroll(I)Z

    move-result v1

    .line 897
    .local v1, "handled":Z
    :goto_1
    if-eqz v1, :cond_4

    .line 898
    invoke-static {v4}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/widget/ScrollView;->playSoundEffect(I)V

    goto :goto_0

    .line 894
    .local v1, "handled":Z
    :cond_5
    invoke-virtual {p0, v4}, Landroid/widget/ScrollView;->fullScroll(I)Z

    move-result v1

    .local v1, "handled":Z
    goto :goto_1

    .line 902
    .local v1, "handled":Z
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v3

    if-nez v3, :cond_6

    .line 903
    invoke-virtual {p0, v5}, Landroid/widget/ScrollView;->arrowScroll(I)Z

    move-result v1

    .line 908
    .local v1, "handled":Z
    :goto_2
    if-eqz v1, :cond_4

    .line 909
    invoke-static {v5}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/widget/ScrollView;->playSoundEffect(I)V

    goto :goto_0

    .line 905
    .local v1, "handled":Z
    :cond_6
    invoke-virtual {p0, v5}, Landroid/widget/ScrollView;->fullScroll(I)Z

    move-result v1

    .local v1, "handled":Z
    goto :goto_2

    .line 913
    .local v1, "handled":Z
    :sswitch_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v3

    if-eqz v3, :cond_7

    move v3, v4

    :goto_3
    invoke-virtual {p0, v3}, Landroid/widget/ScrollView;->pageScroll(I)Z

    goto :goto_0

    :cond_7
    move v3, v5

    goto :goto_3

    .line 889
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_1
        0x3e -> :sswitch_2
    .end sparse-switch
.end method

.method public fling(I)V
    .locals 13
    .param p1, "velocityY"    # I

    .prologue
    const/4 v3, 0x0

    .line 2612
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 2613
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v0

    iget v1, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int v12, v0, v1

    .line 2614
    .local v12, "height":I
    invoke-virtual {p0, v3}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v11

    .line 2616
    .local v11, "bottom":I
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v1, p0, Landroid/widget/ScrollView;->mScrollX:I

    iget v2, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 2617
    sub-int v4, v11, v12

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v8

    div-int/lit8 v10, v12, 0x2

    move v4, p1

    move v5, v3

    move v6, v3

    move v7, v3

    move v9, v3

    .line 2616
    invoke-virtual/range {v0 .. v10}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 2619
    iget-object v0, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-nez v0, :cond_0

    .line 2620
    const-string/jumbo v0, "ScrollView-fling"

    invoke-static {v0}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 2623
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    .line 2611
    .end local v11    # "bottom":I
    .end local v12    # "height":I
    :cond_1
    return-void
.end method

.method public fullScroll(I)Z
    .locals 7
    .param p1, "direction"    # I

    .prologue
    const/4 v5, 0x0

    .line 1934
    const/16 v4, 0x82

    if-ne p1, v4, :cond_1

    const/4 v1, 0x1

    .line 1935
    .local v1, "down":Z
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v2

    .line 1937
    .local v2, "height":I
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 1938
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v2, v4, Landroid/graphics/Rect;->bottom:I

    .line 1940
    if-eqz v1, :cond_0

    .line 1941
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    .line 1942
    .local v0, "count":I
    if-lez v0, :cond_0

    .line 1943
    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p0, v4}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1944
    .local v3, "view":Landroid/view/View;
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    iget v6, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    add-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 1945
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 1949
    .end local v0    # "count":I
    .end local v3    # "view":Landroid/view/View;
    :cond_0
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p1, v4, v5}, Landroid/widget/ScrollView;->scrollAndFocus(III)Z

    move-result v4

    return v4

    .line 1934
    .end local v1    # "down":Z
    .end local v2    # "height":I
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "down":Z
    goto :goto_0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1756
    const-class v0, Landroid/widget/ScrollView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 405
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 406
    const/4 v3, 0x0

    return v3

    .line 409
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getVerticalFadingEdgeLength()I

    move-result v1

    .line 410
    .local v1, "length":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v3

    iget v4, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int v0, v3, v4

    .line 411
    .local v0, "bottomEdge":I
    invoke-virtual {p0, v5}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    iget v4, p0, Landroid/widget/ScrollView;->mScrollY:I

    sub-int/2addr v3, v4

    sub-int v2, v3, v0

    .line 412
    .local v2, "span":I
    if-ge v2, v1, :cond_1

    .line 413
    int-to-float v3, v2

    int-to-float v4, v1

    div-float/2addr v3, v4

    return v3

    .line 416
    :cond_1
    const/high16 v3, 0x3f800000    # 1.0f

    return v3
.end method

.method public getMaxScrollAmount()I
    .locals 2

    .prologue
    .line 424
    iget v0, p0, Landroid/widget/ScrollView;->mBottom:I

    iget v1, p0, Landroid/widget/ScrollView;->mTop:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 3

    .prologue
    .line 391
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 392
    const/4 v1, 0x0

    return v1

    .line 395
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getVerticalFadingEdgeLength()I

    move-result v0

    .line 396
    .local v0, "length":I
    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-ge v1, v0, :cond_1

    .line 397
    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    int-to-float v1, v1

    int-to-float v2, v0

    div-float/2addr v1, v2

    return v1

    .line 400
    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    return v1
.end method

.method public getTouchSlop()I
    .locals 1

    .prologue
    .line 343
    iget v0, p0, Landroid/widget/ScrollView;->mTouchSlop:I

    return v0
.end method

.method protected hapticScrollTo(I)V
    .locals 2
    .param p1, "y"    # I

    .prologue
    .line 1633
    iget v0, p0, Landroid/widget/ScrollView;->mLastHapticScrollY:I

    sub-int v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Landroid/widget/ScrollView;->mPixelThresholdY:I

    if-le v0, v1, :cond_0

    iget v0, p0, Landroid/widget/ScrollView;->mLastScrollY:I

    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-eq v0, v1, :cond_0

    .line 1635
    iput p1, p0, Landroid/widget/ScrollView;->mLastHapticScrollY:I

    .line 1636
    iget v0, p0, Landroid/widget/ScrollView;->mScrollY:I

    iput v0, p0, Landroid/widget/ScrollView;->mLastScrollY:I

    .line 1631
    :cond_0
    return-void
.end method

.method public isFillViewport()Z
    .locals 1

    .prologue
    .line 507
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mFillViewport:Z

    return v0
.end method

.method public isLockScreenMode()Z
    .locals 8

    .prologue
    const/4 v5, 0x1

    .line 1100
    iget-object v6, p0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "keyguard"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    .line 1101
    .local v3, "keyguardManager":Landroid/app/KeyguardManager;
    const/4 v2, 0x0

    .line 1102
    .local v2, "isLockState":Z
    invoke-virtual {v3}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v2

    .line 1104
    .local v2, "isLockState":Z
    const-string/jumbo v6, "window"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v4

    .line 1105
    .local v4, "windowManager":Landroid/view/IWindowManager;
    const/4 v0, 0x1

    .line 1106
    .local v0, "isCoverOpen":Z
    if-eqz v4, :cond_0

    .line 1109
    const/4 v0, 0x1

    .line 1115
    :cond_0
    const/4 v1, 0x0

    .line 1116
    .local v1, "isLockScreenAndCoverOpen":Z
    if-nez v2, :cond_1

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 1118
    .local v1, "isLockScreenAndCoverOpen":Z
    :goto_0
    return v1

    .local v1, "isLockScreenAndCoverOpen":Z
    :cond_1
    move v1, v5

    .line 1116
    goto :goto_0
.end method

.method public isSmoothScrollingEnabled()Z
    .locals 1

    .prologue
    .line 530
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mSmoothScrollingEnabled:Z

    return v0
.end method

.method protected measureChild(Landroid/view/View;II)V
    .locals 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthMeasureSpec"    # I
    .param p3, "parentHeightMeasureSpec"    # I

    .prologue
    const/4 v6, 0x0

    .line 2220
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 2225
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v4, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    .line 2226
    iget v5, p0, Landroid/widget/ScrollView;->mPaddingRight:I

    .line 2225
    add-int/2addr v4, v5

    .line 2226
    iget v5, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2225
    invoke-static {p2, v4, v5}, Landroid/widget/ScrollView;->getChildMeasureSpec(III)I

    move-result v1

    .line 2227
    .local v1, "childWidthMeasureSpec":I
    iget v4, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    iget v5, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    add-int v3, v4, v5

    .line 2229
    .local v3, "verticalPadding":I
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    sub-int/2addr v4, v3

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 2228
    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v0

    .line 2232
    .local v0, "childHeightMeasureSpec":I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 2219
    return-void
.end method

.method protected measureChildWithMargins(Landroid/view/View;IIII)V
    .locals 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthMeasureSpec"    # I
    .param p3, "widthUsed"    # I
    .param p4, "parentHeightMeasureSpec"    # I
    .param p5, "heightUsed"    # I

    .prologue
    const/4 v6, 0x0

    .line 2238
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2241
    .local v2, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v4, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    iget v5, p0, Landroid/widget/ScrollView;->mPaddingRight:I

    add-int/2addr v4, v5

    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v4, v5

    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    add-int/2addr v4, p3

    .line 2242
    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 2240
    invoke-static {p2, v4, v5}, Landroid/widget/ScrollView;->getChildMeasureSpec(III)I

    move-result v1

    .line 2243
    .local v1, "childWidthMeasureSpec":I
    iget v4, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    iget v5, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    add-int/2addr v4, v5

    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v4, v5

    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v4, v5

    add-int v3, v4, p5

    .line 2246
    .local v3, "usedTotal":I
    invoke-static {p4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    sub-int/2addr v4, v3

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 2245
    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v0

    .line 2249
    .local v0, "childHeightMeasureSpec":I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 2237
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 2723
    iget-boolean v0, p0, Landroid/widget/ScrollView;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v0, :cond_0

    .line 2724
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/ScrollView;->mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 2727
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 2722
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 2486
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 2488
    iget-object v0, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v0, :cond_0

    .line 2489
    iget-object v0, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    .line 2490
    iput-object v1, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 2492
    :cond_0
    iget-object v0, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v0, :cond_1

    .line 2493
    iget-object v0, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    .line 2494
    iput-object v1, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 2497
    :cond_1
    iget-boolean v0, p0, Landroid/widget/ScrollView;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v0, :cond_2

    .line 2498
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/ScrollView;->mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 2502
    :cond_2
    iget v0, p0, Landroid/widget/ScrollView;->mQCstate:I

    if-eqz v0, :cond_3

    .line 2503
    iput v2, p0, Landroid/widget/ScrollView;->mQCstate:I

    .line 2485
    :cond_3
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1578
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v5

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_0

    .line 1579
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 1602
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    return v5

    .line 1581
    :pswitch_0
    iget-boolean v5, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    if-nez v5, :cond_0

    .line 1582
    const/16 v5, 0x9

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v4

    .line 1583
    .local v4, "vscroll":F
    const/4 v5, 0x0

    cmpl-float v5, v4, v5

    if-eqz v5, :cond_0

    .line 1584
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getVerticalScrollFactor()F

    move-result v5

    mul-float/2addr v5, v4

    float-to-int v0, v5

    .line 1585
    .local v0, "delta":I
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v3

    .line 1586
    .local v3, "range":I
    iget v2, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 1587
    .local v2, "oldScrollY":I
    sub-int v1, v2, v0

    .line 1588
    .local v1, "newScrollY":I
    if-gez v1, :cond_2

    .line 1589
    const/4 v1, 0x0

    .line 1593
    :cond_1
    :goto_0
    if-eq v1, v2, :cond_0

    .line 1594
    iget v5, p0, Landroid/widget/ScrollView;->mScrollX:I

    invoke-super {p0, v5, v1}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 1595
    const/4 v5, 0x1

    return v5

    .line 1590
    :cond_2
    if-le v1, v3, :cond_1

    .line 1591
    move v1, v3

    goto :goto_0

    .line 1579
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    const/4 v0, 0x0

    .line 1783
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1784
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 1785
    .local v0, "scrollable":Z
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 1786
    iget v1, p0, Landroid/widget/ScrollView;->mScrollX:I

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollX(I)V

    .line 1787
    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    .line 1788
    iget v1, p0, Landroid/widget/ScrollView;->mScrollX:I

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollX(I)V

    .line 1789
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollY(I)V

    .line 1782
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 1762
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1763
    invoke-virtual {p0}, Landroid/widget/ScrollView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1764
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v0

    .line 1765
    .local v0, "scrollRange":I
    if-lez v0, :cond_1

    .line 1766
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 1767
    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-lez v1, :cond_0

    .line 1769
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_BACKWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 1768
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1770
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_UP:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1772
    :cond_0
    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-ge v1, v0, :cond_1

    .line 1773
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_FORWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1774
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_DOWN:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1761
    .end local v0    # "scrollRange":I
    :cond_1
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x2

    const/4 v2, -0x1

    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 976
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    .line 977
    .local v7, "action":I
    if-ne v7, v4, :cond_0

    iget-boolean v1, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    if-eqz v1, :cond_0

    .line 978
    return v0

    .line 981
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 982
    return v0

    .line 988
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->canScrollVertically(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 992
    :cond_2
    and-int/lit16 v1, v7, 0xff

    packed-switch v1, :pswitch_data_0

    .line 1090
    :cond_3
    :goto_0
    :pswitch_0
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    return v0

    .line 989
    :cond_4
    return v3

    .line 1003
    :pswitch_1
    iget v8, p0, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 1004
    .local v8, "activePointerId":I
    if-eq v8, v2, :cond_3

    .line 1009
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v10

    .line 1010
    .local v10, "pointerIndex":I
    if-ne v10, v2, :cond_5

    .line 1011
    const-string/jumbo v0, "ScrollView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid pointerId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1012
    const-string/jumbo v2, " in onInterceptTouchEvent"

    .line 1011
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1016
    :cond_5
    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v11, v1

    .line 1017
    .local v11, "y":I
    iget v1, p0, Landroid/widget/ScrollView;->mLastMotionY:I

    sub-int v1, v11, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v12

    .line 1018
    .local v12, "yDiff":I
    iget v1, p0, Landroid/widget/ScrollView;->mTouchSlop:I

    if-le v12, v1, :cond_3

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getNestedScrollAxes()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_3

    .line 1019
    iput-boolean v0, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    .line 1020
    iput v11, p0, Landroid/widget/ScrollView;->mLastMotionY:I

    .line 1021
    invoke-direct {p0}, Landroid/widget/ScrollView;->initVelocityTrackerIfNotExists()V

    .line 1022
    iget-object v1, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1023
    iput v3, p0, Landroid/widget/ScrollView;->mNestedYOffset:I

    .line 1024
    iget-object v1, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-nez v1, :cond_6

    .line 1025
    const-string/jumbo v1, "ScrollView-scroll"

    invoke-static {v1}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 1027
    :cond_6
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    .line 1028
    .local v9, "parent":Landroid/view/ViewParent;
    if-eqz v9, :cond_3

    .line 1029
    invoke-interface {v9, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 1036
    .end local v8    # "activePointerId":I
    .end local v9    # "parent":Landroid/view/ViewParent;
    .end local v10    # "pointerIndex":I
    .end local v11    # "y":I
    .end local v12    # "yDiff":I
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v11, v1

    .line 1037
    .restart local v11    # "y":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, v1, v11}, Landroid/widget/ScrollView;->inChild(II)Z

    move-result v1

    if-nez v1, :cond_7

    .line 1038
    iput-boolean v3, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    .line 1039
    invoke-direct {p0}, Landroid/widget/ScrollView;->recycleVelocityTracker()V

    goto/16 :goto_0

    .line 1047
    :cond_7
    iput v11, p0, Landroid/widget/ScrollView;->mLastMotionY:I

    .line 1048
    iget-boolean v1, p0, Landroid/widget/ScrollView;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v1, :cond_8

    .line 1049
    iput v11, p0, Landroid/widget/ScrollView;->mLastHapticScrollY:I

    .line 1051
    :cond_8
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 1053
    invoke-direct {p0}, Landroid/widget/ScrollView;->initOrResetVelocityTracker()V

    .line 1054
    iget-object v1, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1061
    iget-object v1, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    .line 1062
    iget-object v1, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_a

    :goto_1
    iput-boolean v3, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    .line 1063
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-nez v0, :cond_9

    .line 1064
    const-string/jumbo v0, "ScrollView-scroll"

    invoke-static {v0}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 1066
    :cond_9
    invoke-virtual {p0, v4}, Landroid/widget/ScrollView;->startNestedScroll(I)Z

    goto/16 :goto_0

    :cond_a
    move v3, v0

    .line 1062
    goto :goto_1

    .line 1073
    .end local v11    # "y":I
    :pswitch_3
    iput-boolean v3, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    .line 1074
    iput v2, p0, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 1075
    invoke-direct {p0}, Landroid/widget/ScrollView;->recycleVelocityTracker()V

    .line 1076
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v1, p0, Landroid/widget/ScrollView;->mScrollX:I

    iget v2, p0, Landroid/widget/ScrollView;->mScrollY:I

    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v6

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v6}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1077
    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    .line 1079
    :cond_b
    invoke-virtual {p0}, Landroid/widget/ScrollView;->stopNestedScroll()V

    goto/16 :goto_0

    .line 1082
    :pswitch_4
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 992
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
    .locals 6
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 2534
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 2535
    iput-boolean v4, p0, Landroid/widget/ScrollView;->mIsLayoutDirty:Z

    .line 2537
    iget-object v2, p0, Landroid/widget/ScrollView;->mChildToScrollTo:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/ScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-static {v2, p0}, Landroid/widget/ScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2538
    iget-object v2, p0, Landroid/widget/ScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-direct {p0, v2}, Landroid/widget/ScrollView;->scrollToChild(Landroid/view/View;)V

    .line 2540
    :cond_0
    iput-object v3, p0, Landroid/widget/ScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 2542
    invoke-virtual {p0}, Landroid/widget/ScrollView;->isLaidOut()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2543
    iget-object v2, p0, Landroid/widget/ScrollView;->mSavedState:Landroid/widget/ScrollView$SavedState;

    if-eqz v2, :cond_1

    .line 2544
    iget-object v2, p0, Landroid/widget/ScrollView;->mSavedState:Landroid/widget/ScrollView$SavedState;

    iget v2, v2, Landroid/widget/ScrollView$SavedState;->scrollPosition:I

    iput v2, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 2545
    iput-object v3, p0, Landroid/widget/ScrollView;->mSavedState:Landroid/widget/ScrollView$SavedState;

    .line 2548
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_4

    invoke-virtual {p0, v4}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 2550
    .local v0, "childHeight":I
    :goto_0
    sub-int v2, p5, p3

    iget v3, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int/2addr v2, v3

    sub-int v2, v0, v2

    .line 2549
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 2553
    .local v1, "scrollRange":I
    iget v2, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-le v2, v1, :cond_5

    .line 2554
    iput v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 2560
    .end local v0    # "childHeight":I
    .end local v1    # "scrollRange":I
    :cond_2
    :goto_1
    if-eqz p1, :cond_3

    .line 2561
    const-string/jumbo v2, "ScrollView"

    const-string/jumbo v3, " onsize change changed "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2562
    iput-boolean v5, p0, Landroid/widget/ScrollView;->mSizeChange:Z

    .line 2563
    const/4 v2, -0x1

    invoke-direct {p0, v2}, Landroid/widget/ScrollView;->semSetupGoToTop(I)V

    .line 2564
    invoke-virtual {p0, v5}, Landroid/widget/ScrollView;->semAutoHide(I)V

    .line 2568
    :cond_3
    iget v2, p0, Landroid/widget/ScrollView;->mScrollX:I

    iget v3, p0, Landroid/widget/ScrollView;->mScrollY:I

    invoke-virtual {p0, v2, v3}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 2533
    return-void

    .line 2548
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "childHeight":I
    goto :goto_0

    .line 2555
    .restart local v1    # "scrollRange":I
    :cond_5
    iget v2, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-gez v2, :cond_2

    .line 2556
    iput v4, p0, Landroid/widget/ScrollView;->mScrollY:I

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v10, 0x0

    .line 543
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 545
    iget-boolean v9, p0, Landroid/widget/ScrollView;->mFillViewport:Z

    if-nez v9, :cond_0

    .line 546
    return-void

    .line 549
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 550
    .local v4, "heightMode":I
    if-nez v4, :cond_1

    .line 551
    return-void

    .line 554
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v9

    if-lez v9, :cond_2

    .line 555
    invoke-virtual {p0, v10}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 558
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    iget v7, v9, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 559
    .local v7, "targetSdkVersion":I
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 560
    .local v6, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v9, 0x17

    if-lt v7, v9, :cond_3

    .line 561
    iget v9, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    iget v10, p0, Landroid/widget/ScrollView;->mPaddingRight:I

    add-int/2addr v9, v10

    iget v10, v6, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v9, v10

    iget v10, v6, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int v8, v9, v10

    .line 562
    .local v8, "widthPadding":I
    iget v9, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    iget v10, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    add-int/2addr v9, v10

    iget v10, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v9, v10

    iget v10, v6, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int v5, v9, v10

    .line 568
    .local v5, "heightPadding":I
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getMeasuredHeight()I

    move-result v9

    sub-int v3, v9, v5

    .line 569
    .local v3, "desiredHeight":I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    if-ge v9, v3, :cond_2

    .line 571
    iget v9, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 570
    invoke-static {p1, v8, v9}, Landroid/widget/ScrollView;->getChildMeasureSpec(III)I

    move-result v2

    .line 573
    .local v2, "childWidthMeasureSpec":I
    const/high16 v9, 0x40000000    # 2.0f

    .line 572
    invoke-static {v3, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 574
    .local v1, "childHeightMeasureSpec":I
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    .line 542
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childHeightMeasureSpec":I
    .end local v2    # "childWidthMeasureSpec":I
    .end local v3    # "desiredHeight":I
    .end local v5    # "heightPadding":I
    .end local v6    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v7    # "targetSdkVersion":I
    .end local v8    # "widthPadding":I
    :cond_2
    return-void

    .line 564
    .restart local v0    # "child":Landroid/view/View;
    .restart local v6    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v7    # "targetSdkVersion":I
    :cond_3
    iget v9, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    iget v10, p0, Landroid/widget/ScrollView;->mPaddingRight:I

    add-int v8, v9, v10

    .line 565
    .restart local v8    # "widthPadding":I
    iget v9, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    iget v10, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    add-int v5, v9, v10

    .restart local v5    # "heightPadding":I
    goto :goto_0
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 1
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F
    .param p4, "consumed"    # Z

    .prologue
    .line 2764
    if-nez p4, :cond_0

    .line 2765
    float-to-int v0, p3

    invoke-direct {p0, v0}, Landroid/widget/ScrollView;->flingWithNestedDispatch(I)V

    .line 2766
    const/4 v0, 0x1

    return v0

    .line 2768
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 7
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dxConsumed"    # I
    .param p3, "dyConsumed"    # I
    .param p4, "dxUnconsumed"    # I
    .param p5, "dyUnconsumed"    # I

    .prologue
    const/4 v1, 0x0

    .line 2752
    iget v6, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 2753
    .local v6, "oldScrollY":I
    invoke-virtual {p0, v1, p5}, Landroid/widget/ScrollView;->scrollBy(II)V

    .line 2754
    iget v0, p0, Landroid/widget/ScrollView;->mScrollY:I

    sub-int v2, v0, v6

    .line 2755
    .local v2, "myConsumed":I
    sub-int v4, p5, v2

    .line 2756
    .local v4, "myUnconsumed":I
    const/4 v5, 0x0

    move-object v0, p0

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/ScrollView;->dispatchNestedScroll(IIII[I)Z

    .line 2751
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "axes"    # I

    .prologue
    .line 2737
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    .line 2738
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->startNestedScroll(I)Z

    .line 2736
    return-void
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 9
    .param p1, "scrollX"    # I
    .param p2, "scrollY"    # I
    .param p3, "clampedX"    # Z
    .param p4, "clampedY"    # Z

    .prologue
    const/4 v3, 0x0

    .line 1609
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1610
    iget v7, p0, Landroid/widget/ScrollView;->mScrollX:I

    .line 1611
    .local v7, "oldX":I
    iget v8, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 1612
    .local v8, "oldY":I
    iput p1, p0, Landroid/widget/ScrollView;->mScrollX:I

    .line 1613
    iput p2, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 1614
    invoke-virtual {p0}, Landroid/widget/ScrollView;->invalidateParentIfNeeded()V

    .line 1615
    iget v0, p0, Landroid/widget/ScrollView;->mScrollX:I

    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    invoke-virtual {p0, v0, v1, v7, v8}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 1616
    if-eqz p4, :cond_0

    .line 1617
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v1, p0, Landroid/widget/ScrollView;->mScrollX:I

    iget v2, p0, Landroid/widget/ScrollView;->mScrollY:I

    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v6

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v6}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    .line 1624
    .end local v7    # "oldX":I
    .end local v8    # "oldY":I
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->awakenScrollBars()Z

    .line 1607
    return-void

    .line 1620
    :cond_1
    iget v0, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-eq p2, v0, :cond_2

    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/ScrollView;->mSemScrollChnages:I

    .line 1621
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    goto :goto_0
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 4
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 2446
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 2447
    const/16 p1, 0x82

    .line 2452
    :cond_0
    :goto_0
    if-nez p2, :cond_2

    .line 2453
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    invoke-virtual {v1, p0, v2, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 2457
    .local v0, "nextFocus":Landroid/view/View;
    :goto_1
    if-nez v0, :cond_3

    .line 2458
    return v3

    .line 2448
    .end local v0    # "nextFocus":Landroid/view/View;
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 2449
    const/16 p1, 0x21

    goto :goto_0

    .line 2454
    :cond_2
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    invoke-virtual {v1, p0, p2, p1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    .line 2461
    .restart local v0    # "nextFocus":Landroid/view/View;
    :cond_3
    invoke-direct {p0, v0}, Landroid/widget/ScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2462
    return v3

    .line 2465
    :cond_4
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    return v1
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 2899
    iget-object v1, p0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x12

    if-le v1, v2, :cond_0

    instance-of v1, p1, Landroid/widget/ScrollView$SavedState;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 2905
    check-cast v0, Landroid/widget/ScrollView$SavedState;

    .line 2906
    .local v0, "ss":Landroid/widget/ScrollView$SavedState;
    invoke-virtual {v0}, Landroid/widget/ScrollView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2907
    iput-object v0, p0, Landroid/widget/ScrollView;->mSavedState:Landroid/widget/ScrollView$SavedState;

    .line 2908
    invoke-virtual {p0}, Landroid/widget/ScrollView;->requestLayout()V

    .line 2898
    return-void

    .line 2902
    .end local v0    # "ss":Landroid/widget/ScrollView$SavedState;
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2903
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    .line 2913
    iget-object v2, p0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x12

    if-gt v2, v3, :cond_0

    .line 2916
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    return-object v2

    .line 2918
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 2919
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Landroid/widget/ScrollView$SavedState;

    invoke-direct {v0, v1}, Landroid/widget/ScrollView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 2920
    .local v0, "ss":Landroid/widget/ScrollView$SavedState;
    iget v2, p0, Landroid/widget/ScrollView;->mScrollY:I

    iput v2, v0, Landroid/widget/ScrollView$SavedState;->scrollPosition:I

    .line 2921
    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 3
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 2573
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 2575
    invoke-virtual {p0}, Landroid/widget/ScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 2576
    .local v0, "currentFocused":Landroid/view/View;
    if-eqz v0, :cond_0

    if-ne p0, v0, :cond_1

    .line 2577
    :cond_0
    return-void

    .line 2583
    :cond_1
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, p4}, Landroid/widget/ScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2584
    iget-object v2, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 2585
    iget-object v2, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v2}, Landroid/widget/ScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2586
    iget-object v2, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Landroid/widget/ScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v1

    .line 2587
    .local v1, "scrollDelta":I
    invoke-direct {p0, v1}, Landroid/widget/ScrollView;->doScrollY(I)V

    .line 2572
    .end local v1    # "scrollDelta":I
    :cond_2
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "nestedScrollAxes"    # I

    .prologue
    const/4 v0, 0x0

    .line 2732
    and-int/lit8 v1, p3, 0x2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 0
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 2746
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onStopNestedScroll(Landroid/view/View;)V

    .line 2745
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 33
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1385
    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->initVelocityTrackerIfNotExists()V

    .line 1387
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v31

    .line 1389
    .local v31, "vtev":Landroid/view/MotionEvent;
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v21

    .line 1391
    .local v21, "actionMasked":I
    if-nez v21, :cond_0

    .line 1392
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/ScrollView;->mNestedYOffset:I

    .line 1394
    :cond_0
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/ScrollView;->mNestedYOffset:I

    int-to-float v3, v3

    move-object/from16 v0, v31

    invoke-virtual {v0, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1396
    packed-switch v21, :pswitch_data_0

    .line 1552
    :cond_1
    :goto_0
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v2, :cond_2

    .line 1553
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1555
    :cond_2
    invoke-virtual/range {v31 .. v31}, Landroid/view/MotionEvent;->recycle()V

    .line 1556
    const/4 v2, 0x1

    return v2

    .line 1398
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v2

    if-nez v2, :cond_3

    .line 1399
    const/4 v2, 0x0

    return v2

    .line 1401
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x0

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    if-eqz v2, :cond_4

    .line 1402
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v28

    .line 1403
    .local v28, "parent":Landroid/view/ViewParent;
    if-eqz v28, :cond_4

    .line 1404
    const/4 v2, 0x1

    move-object/from16 v0, v28

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1412
    .end local v28    # "parent":Landroid/view/ViewParent;
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_5

    .line 1413
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 1414
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v2, :cond_5

    .line 1415
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v2}, Landroid/os/StrictMode$Span;->finish()V

    .line 1416
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 1421
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/ScrollView;->mLastMotionY:I

    .line 1422
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 1423
    const/4 v2, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->startNestedScroll(I)Z

    goto :goto_0

    .line 1401
    :cond_6
    const/4 v2, 0x1

    goto :goto_1

    .line 1427
    :pswitch_2
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v22

    .line 1428
    .local v22, "activePointerIndex":I
    const/4 v2, -0x1

    move/from16 v0, v22

    if-ne v0, v2, :cond_7

    .line 1429
    const/16 v22, 0x0

    .line 1430
    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 1431
    const-string/jumbo v2, "ScrollView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid pointerId="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " in onTouchEvent"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1435
    :cond_7
    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v0, v2

    move/from16 v32, v0

    .line 1436
    .local v32, "y":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ScrollView;->mLastMotionY:I

    sub-int v4, v2, v32

    .line 1437
    .local v4, "deltaY":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView;->mScrollConsumed:[I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/ScrollView;->mScrollOffset:[I

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v4, v2, v3}, Landroid/widget/ScrollView;->dispatchNestedPreScroll(II[I[I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1438
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView;->mScrollConsumed:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    sub-int/2addr v4, v2

    .line 1439
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/ScrollView;->mScrollOffset:[I

    const/4 v5, 0x1

    aget v3, v3, v5

    int-to-float v3, v3

    move-object/from16 v0, v31

    invoke-virtual {v0, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1440
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ScrollView;->mNestedYOffset:I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/ScrollView;->mScrollOffset:[I

    const/4 v5, 0x1

    aget v3, v3, v5

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/ScrollView;->mNestedYOffset:I

    .line 1442
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    if-nez v2, :cond_a

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/ScrollView;->mTouchSlop:I

    if-le v2, v3, :cond_a

    .line 1443
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v28

    .line 1444
    .restart local v28    # "parent":Landroid/view/ViewParent;
    if-eqz v28, :cond_9

    .line 1445
    const/4 v2, 0x1

    move-object/from16 v0, v28

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1447
    :cond_9
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    .line 1448
    if-lez v4, :cond_d

    .line 1449
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ScrollView;->mTouchSlop:I

    sub-int/2addr v4, v2

    .line 1454
    .end local v28    # "parent":Landroid/view/ViewParent;
    :cond_a
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    if-eqz v2, :cond_1

    .line 1456
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView;->mScrollOffset:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    sub-int v2, v32, v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/ScrollView;->mLastMotionY:I

    .line 1458
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ScrollView;->mScrollY:I

    move/from16 v26, v0

    .line 1459
    .local v26, "oldY":I
    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v8

    .line 1460
    .local v8, "range":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getOverScrollMode()I

    move-result v27

    .line 1461
    .local v27, "overscrollMode":I
    if-eqz v27, :cond_e

    .line 1462
    const/4 v2, 0x1

    move/from16 v0, v27

    if-ne v0, v2, :cond_f

    if-lez v8, :cond_f

    const/16 v23, 0x1

    .line 1466
    .local v23, "canOverscroll":Z
    :goto_3
    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/ScrollView;->mScrollY:I

    move-object/from16 v0, p0

    iget v10, v0, Landroid/widget/ScrollView;->mOverscrollDistance:I

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v11}, Landroid/widget/ScrollView;->overScrollBy(IIIIIIIIZ)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1467
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->hasNestedScrollingParent()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1474
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/ScrollView;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v2, :cond_c

    .line 1475
    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->hapticScrollTo(I)V

    .line 1479
    :cond_c
    :goto_4
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ScrollView;->mScrollY:I

    sub-int v11, v2, v26

    .line 1480
    .local v11, "scrolledDeltaY":I
    sub-int v13, v4, v11

    .line 1481
    .local v13, "unconsumedY":I
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ScrollView;->mScrollOffset:[I

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object/from16 v9, p0

    invoke-virtual/range {v9 .. v14}, Landroid/widget/ScrollView;->dispatchNestedScroll(IIII[I)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1482
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ScrollView;->mLastMotionY:I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/ScrollView;->mScrollOffset:[I

    const/4 v5, 0x1

    aget v3, v3, v5

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/ScrollView;->mLastMotionY:I

    .line 1483
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/ScrollView;->mScrollOffset:[I

    const/4 v5, 0x1

    aget v3, v3, v5

    int-to-float v3, v3

    move-object/from16 v0, v31

    invoke-virtual {v0, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1484
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ScrollView;->mNestedYOffset:I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/ScrollView;->mScrollOffset:[I

    const/4 v5, 0x1

    aget v3, v3, v5

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/ScrollView;->mNestedYOffset:I

    goto/16 :goto_0

    .line 1451
    .end local v8    # "range":I
    .end local v11    # "scrolledDeltaY":I
    .end local v13    # "unconsumedY":I
    .end local v23    # "canOverscroll":Z
    .end local v26    # "oldY":I
    .end local v27    # "overscrollMode":I
    .restart local v28    # "parent":Landroid/view/ViewParent;
    :cond_d
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ScrollView;->mTouchSlop:I

    add-int/2addr v4, v2

    goto/16 :goto_2

    .line 1461
    .end local v28    # "parent":Landroid/view/ViewParent;
    .restart local v8    # "range":I
    .restart local v26    # "oldY":I
    .restart local v27    # "overscrollMode":I
    :cond_e
    const/16 v23, 0x1

    .restart local v23    # "canOverscroll":Z
    goto :goto_3

    .line 1462
    .end local v23    # "canOverscroll":Z
    :cond_f
    const/16 v23, 0x0

    .restart local v23    # "canOverscroll":Z
    goto :goto_3

    .line 1469
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v2, :cond_c

    .line 1470
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_4

    .line 1485
    .restart local v11    # "scrolledDeltaY":I
    .restart local v13    # "unconsumedY":I
    :cond_11
    if-eqz v23, :cond_1

    .line 1486
    add-int v29, v26, v4

    .line 1487
    .local v29, "pulledToY":I
    if-gez v29, :cond_14

    .line 1488
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    int-to-float v3, v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v3, v5

    .line 1489
    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    .line 1488
    invoke-virtual {v2, v3, v5}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 1490
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_12

    .line 1491
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 1502
    :cond_12
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v2, :cond_1

    .line 1503
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1504
    :cond_13
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    goto/16 :goto_0

    .line 1493
    :cond_14
    move/from16 v0, v29

    if-le v0, v8, :cond_12

    .line 1494
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    int-to-float v3, v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v3, v5

    .line 1495
    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v5, v6, v5

    .line 1494
    invoke-virtual {v2, v3, v5}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 1496
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/widget/ScrollView;->semSetupGoToTop(I)V

    .line 1497
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->semAutoHide(I)V

    .line 1498
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_12

    .line 1499
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_5

    .line 1510
    .end local v4    # "deltaY":I
    .end local v8    # "range":I
    .end local v11    # "scrolledDeltaY":I
    .end local v13    # "unconsumedY":I
    .end local v22    # "activePointerIndex":I
    .end local v23    # "canOverscroll":Z
    .end local v26    # "oldY":I
    .end local v27    # "overscrollMode":I
    .end local v29    # "pulledToY":I
    .end local v32    # "y":I
    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    if-eqz v2, :cond_1

    .line 1511
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v30, v0

    .line 1512
    .local v30, "velocityTracker":Landroid/view/VelocityTracker;
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ScrollView;->mMaximumVelocity:I

    int-to-float v2, v2

    const/16 v3, 0x3e8

    move-object/from16 v0, v30

    invoke-virtual {v0, v3, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1513
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v2

    float-to-int v0, v2

    move/from16 v25, v0

    .line 1515
    .local v25, "initialVelocity":I
    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(I)I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/ScrollView;->mMinimumVelocity:I

    if-le v2, v3, :cond_16

    .line 1516
    move/from16 v0, v25

    neg-int v2, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/widget/ScrollView;->flingWithNestedDispatch(I)V

    .line 1522
    :cond_15
    :goto_6
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 1523
    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->endDrag()V

    goto/16 :goto_0

    .line 1517
    :cond_16
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/ScrollView;->mScrollX:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ScrollView;->mScrollY:I

    move/from16 v16, v0

    .line 1518
    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v20

    .line 1517
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {v14 .. v20}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 1519
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    goto :goto_6

    .line 1527
    .end local v25    # "initialVelocity":I
    .end local v30    # "velocityTracker":Landroid/view/VelocityTracker;
    :pswitch_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    if-eqz v2, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 1528
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/ScrollView;->mScrollX:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ScrollView;->mScrollY:I

    move/from16 v16, v0

    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v20

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {v14 .. v20}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 1529
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    .line 1531
    :cond_17
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 1532
    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->endDrag()V

    goto/16 :goto_0

    .line 1536
    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v24

    .line 1537
    .local v24, "index":I
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/ScrollView;->mLastMotionY:I

    .line 1538
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    goto/16 :goto_0

    .line 1542
    .end local v24    # "index":I
    :pswitch_6
    invoke-direct/range {p0 .. p1}, Landroid/widget/ScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 1544
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_18

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    if-gez v2, :cond_19

    .line 1545
    :cond_18
    const-string/jumbo v2, "ScrollView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid pointerId="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " in onTouchEvent"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1548
    :cond_19
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/ScrollView;->mLastMotionY:I

    goto/16 :goto_0

    .line 1396
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .param p1, "hasWindowFocus"    # Z

    .prologue
    const/4 v1, 0x0

    .line 2522
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    .line 2524
    if-nez p1, :cond_0

    .line 2526
    iget v0, p0, Landroid/widget/ScrollView;->mQCstate:I

    if-eqz v0, :cond_0

    .line 2527
    iput v1, p0, Landroid/widget/ScrollView;->mQCstate:I

    .line 2521
    :cond_0
    return-void
.end method

.method public pageScroll(I)Z
    .locals 7
    .param p1, "direction"    # I

    .prologue
    const/4 v6, 0x0

    .line 1898
    const/16 v4, 0x82

    if-ne p1, v4, :cond_1

    const/4 v1, 0x1

    .line 1899
    .local v1, "down":Z
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v2

    .line 1901
    .local v2, "height":I
    if-eqz v1, :cond_2

    .line 1902
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v5

    add-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 1903
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    .line 1904
    .local v0, "count":I
    if-lez v0, :cond_0

    .line 1905
    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p0, v4}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1906
    .local v3, "view":Landroid/view/View;
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v2

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    if-le v4, v5, :cond_0

    .line 1907
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    sub-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 1916
    .end local v0    # "count":I
    .end local v3    # "view":Landroid/view/View;
    :cond_0
    :goto_1
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 1918
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p1, v4, v5}, Landroid/widget/ScrollView;->scrollAndFocus(III)Z

    move-result v4

    return v4

    .line 1898
    .end local v1    # "down":Z
    .end local v2    # "height":I
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "down":Z
    goto :goto_0

    .line 1911
    .restart local v2    # "height":I
    :cond_2
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v5

    sub-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 1912
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    if-gez v4, :cond_0

    .line 1913
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v6, v4, Landroid/graphics/Rect;->top:I

    goto :goto_1
.end method

.method public performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .locals 10
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    const v9, 0x4188cccd    # 17.1f

    const/4 v6, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1643
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1644
    return v8

    .line 1646
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1647
    return v7

    .line 1650
    :cond_1
    const/4 v0, 0x7

    .line 1651
    .local v0, "autoScrollSpeedLevel":I
    if-eqz p2, :cond_2

    .line 1652
    const-string/jumbo v4, "auto_scroll_speed_level_count"

    const/16 v5, 0xf

    invoke-virtual {p2, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1653
    .local v1, "autoScrollSpeedLevelCount":I
    add-int/lit8 v4, v1, -0x1

    int-to-float v4, v4

    const/high16 v5, 0x41840000    # 16.5f

    div-float v4, v5, v4

    iput v4, p0, Landroid/widget/ScrollView;->mAutoscrollDurationGap:F

    .line 1655
    const-string/jumbo v4, "auto_scroll_speed_level"

    const/16 v5, 0x8

    invoke-virtual {p2, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .line 1658
    .end local v1    # "autoScrollSpeedLevelCount":I
    :cond_2
    sparse-switch p1, :sswitch_data_0

    .line 1739
    return v7

    .line 1661
    :sswitch_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v4

    iget v5, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int v3, v4, v5

    .line 1662
    .local v3, "viewportHeight":I
    iget v4, p0, Landroid/widget/ScrollView;->mScrollY:I

    add-int/2addr v4, v3

    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1663
    .local v2, "targetScrollY":I
    iget v4, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-eq v2, v4, :cond_3

    .line 1664
    invoke-virtual {p0, v7, v2}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    .line 1665
    return v8

    .line 1667
    :cond_3
    return v7

    .line 1670
    .end local v2    # "targetScrollY":I
    .end local v3    # "viewportHeight":I
    :sswitch_1
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v4

    iget v5, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int v3, v4, v5

    .line 1671
    .restart local v3    # "viewportHeight":I
    iget v4, p0, Landroid/widget/ScrollView;->mScrollY:I

    sub-int/2addr v4, v3

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1672
    .restart local v2    # "targetScrollY":I
    iget v4, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-eq v2, v4, :cond_4

    .line 1673
    invoke-virtual {p0, v7, v2}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    .line 1674
    return v8

    .line 1676
    :cond_4
    return v7

    .line 1679
    .end local v2    # "targetScrollY":I
    .end local v3    # "viewportHeight":I
    :sswitch_2
    const-string/jumbo v4, "ScrollView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "SEM_ACTION_AUTOSCROLL_DOWN: CASE auto scroll, canScroll = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, Landroid/widget/ScrollView;->canScroll()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1680
    invoke-direct {p0}, Landroid/widget/ScrollView;->canScroll()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1681
    const/16 v4, 0xfa0

    invoke-virtual {p0, v4}, Landroid/widget/ScrollView;->fling(I)V

    .line 1682
    return v8

    .line 1684
    :cond_5
    return v7

    .line 1686
    :sswitch_3
    const-string/jumbo v4, "ScrollView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "SEM_ACTION_AUTOSCROLL_UP: CASE auto scroll, canScroll = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, Landroid/widget/ScrollView;->canScroll()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1687
    invoke-direct {p0}, Landroid/widget/ScrollView;->canScroll()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1688
    const/16 v4, -0xfa0

    invoke-virtual {p0, v4}, Landroid/widget/ScrollView;->fling(I)V

    .line 1689
    return v8

    .line 1691
    :cond_6
    return v7

    .line 1693
    :sswitch_4
    const-string/jumbo v4, "ScrollView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "SEM_ACTION_AUTOSCROLL_ON: auto scroll, canScroll = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, Landroid/widget/ScrollView;->canScroll()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1694
    invoke-direct {p0}, Landroid/widget/ScrollView;->canScroll()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1695
    iget v4, p0, Landroid/widget/ScrollView;->mAutoscrollDurationGap:F

    int-to-float v5, v0

    mul-float/2addr v4, v5

    sub-float v4, v9, v4

    iput v4, p0, Landroid/widget/ScrollView;->mAutoscrollDuration:F

    .line 1696
    iget v4, p0, Landroid/widget/ScrollView;->mAutoscrollDuration:F

    invoke-direct {p0, v4}, Landroid/widget/ScrollView;->autoScrollWithDuration(F)V

    .line 1697
    return v8

    .line 1699
    :cond_7
    return v7

    .line 1701
    :sswitch_5
    const-string/jumbo v4, "ScrollView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "SEM_ACTION_AUTOSCROLL_SPEED_UP: speed up, current duration = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/widget/ScrollView;->mAutoscrollDuration:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1702
    invoke-direct {p0}, Landroid/widget/ScrollView;->canScroll()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1703
    iget v4, p0, Landroid/widget/ScrollView;->mAutoscrollDuration:F

    const v5, 0x3f19999a    # 0.6f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_8

    .line 1704
    iget v4, p0, Landroid/widget/ScrollView;->mAutoscrollDuration:F

    iget v5, p0, Landroid/widget/ScrollView;->mAutoscrollDurationGap:F

    sub-float/2addr v4, v5

    iput v4, p0, Landroid/widget/ScrollView;->mAutoscrollDuration:F

    .line 1705
    :cond_8
    iget v4, p0, Landroid/widget/ScrollView;->mAutoscrollDuration:F

    invoke-direct {p0, v4}, Landroid/widget/ScrollView;->autoScrollWithDuration(F)V

    .line 1706
    return v8

    .line 1708
    :cond_9
    return v7

    .line 1710
    :sswitch_6
    const-string/jumbo v4, "ScrollView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "SEM_ACTION_AUTOSCROLL_SPEED_DOWN: CASE slow down, current duration = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/widget/ScrollView;->mAutoscrollDuration:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1711
    invoke-direct {p0}, Landroid/widget/ScrollView;->canScroll()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1712
    iget v4, p0, Landroid/widget/ScrollView;->mAutoscrollDuration:F

    cmpg-float v4, v4, v9

    if-gez v4, :cond_a

    .line 1713
    iget v4, p0, Landroid/widget/ScrollView;->mAutoscrollDuration:F

    iget v5, p0, Landroid/widget/ScrollView;->mAutoscrollDurationGap:F

    add-float/2addr v4, v5

    iput v4, p0, Landroid/widget/ScrollView;->mAutoscrollDuration:F

    .line 1714
    :cond_a
    iget v4, p0, Landroid/widget/ScrollView;->mAutoscrollDuration:F

    invoke-direct {p0, v4}, Landroid/widget/ScrollView;->autoScrollWithDuration(F)V

    .line 1715
    return v8

    .line 1717
    :cond_b
    return v7

    .line 1719
    :sswitch_7
    const-string/jumbo v4, "ScrollView"

    const-string/jumbo v5, "SEM_ACTION_AUTOSCROLL_TOP"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1720
    invoke-direct {p0}, Landroid/widget/ScrollView;->canScroll()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1721
    invoke-virtual {p0, v7, v7, v7}, Landroid/widget/ScrollView;->smoothScrollToWithDuration(III)V

    .line 1722
    return v8

    .line 1724
    :cond_c
    return v7

    .line 1726
    :sswitch_8
    const-string/jumbo v4, "ScrollView"

    const-string/jumbo v5, "SEM_ACTION_AUTOSCROLL_OFF"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1727
    invoke-direct {p0}, Landroid/widget/ScrollView;->canScroll()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 1728
    iget-object v4, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    if-eqz v4, :cond_d

    iget-object v4, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v4}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 1731
    :cond_d
    :goto_0
    iput-boolean v7, p0, Landroid/widget/ScrollView;->mLinear:Z

    .line 1732
    iget-object v4, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    if-eqz v4, :cond_e

    .line 1733
    iget-object v4, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v4, v6}, Landroid/widget/OverScroller;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1735
    :cond_e
    return v8

    .line 1729
    :cond_f
    iget-object v4, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v4}, Landroid/widget/OverScroller;->abortAnimation()V

    goto :goto_0

    .line 1737
    :cond_10
    return v7

    .line 1658
    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_1
        0x400000 -> :sswitch_4
        0x800000 -> :sswitch_8
        0x1000000 -> :sswitch_3
        0x1020038 -> :sswitch_1
        0x102003a -> :sswitch_0
        0x2000000 -> :sswitch_2
        0x4000000 -> :sswitch_7
        0x10000000 -> :sswitch_5
        0x20000000 -> :sswitch_6
    .end sparse-switch
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "focused"    # Landroid/view/View;

    .prologue
    .line 2423
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mIsLayoutDirty:Z

    if-nez v0, :cond_0

    .line 2424
    invoke-direct {p0, p2}, Landroid/widget/ScrollView;->scrollToChild(Landroid/view/View;)V

    .line 2429
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 2422
    return-void

    .line 2427
    :cond_0
    iput-object p2, p0, Landroid/widget/ScrollView;->mChildToScrollTo:Landroid/view/View;

    goto :goto_0
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "rectangle"    # Landroid/graphics/Rect;
    .param p3, "immediate"    # Z

    .prologue
    .line 2472
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v1

    sub-int/2addr v0, v1

    .line 2473
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v2

    sub-int/2addr v1, v2

    .line 2472
    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 2475
    invoke-direct {p0, p2, p3}, Landroid/widget/ScrollView;->scrollToChildRect(Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 956
    if-eqz p1, :cond_0

    .line 957
    invoke-direct {p0}, Landroid/widget/ScrollView;->recycleVelocityTracker()V

    .line 959
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 955
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 2480
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ScrollView;->mIsLayoutDirty:Z

    .line 2481
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 2479
    return-void
.end method

.method public scrollTo(II)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v2, 0x0

    .line 2679
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 2680
    invoke-virtual {p0, v2}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2681
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v1

    iget v2, p0, Landroid/widget/ScrollView;->mPaddingRight:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-static {p1, v1, v2}, Landroid/widget/ScrollView;->clamp(III)I

    move-result p1

    .line 2682
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v1

    iget v2, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-static {p2, v1, v2}, Landroid/widget/ScrollView;->clamp(III)I

    move-result p2

    .line 2683
    iget v1, p0, Landroid/widget/ScrollView;->mScrollX:I

    if-ne p1, v1, :cond_0

    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-eq p2, v1, :cond_2

    .line 2684
    :cond_0
    iget-boolean v1, p0, Landroid/widget/ScrollView;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v1, :cond_1

    .line 2685
    invoke-virtual {p0, p2}, Landroid/widget/ScrollView;->hapticScrollTo(I)V

    .line 2687
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 2677
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    return-void
.end method

.method semAutoHide(I)V
    .locals 4
    .param p1, "when"    # I

    .prologue
    .line 3601
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mSemEnableGoToTop:Z

    if-nez v0, :cond_0

    return-void

    .line 3603
    :cond_0
    iget-object v0, p0, Landroid/widget/ScrollView;->mSemAutoHide:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3604
    iget-object v0, p0, Landroid/widget/ScrollView;->mSemAutoHide:Ljava/lang/Runnable;

    iget v1, p0, Landroid/widget/ScrollView;->GO_TO_TOP_HIDE:I

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Landroid/widget/ScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3600
    return-void
.end method

.method public semSetGoToTopEnabled(Z)V
    .locals 9
    .param p1, "enabled"    # Z

    .prologue
    const/4 v8, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const v6, 0x3ea8f5c3    # 0.33f

    const v5, 0x3e99999a    # 0.3f

    const/4 v4, 0x0

    .line 3539
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mSemFollow2016A:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 3540
    iput-boolean p1, p0, Landroid/widget/ScrollView;->mSemEnableGoToTop:Z

    .line 3542
    if-eqz p1, :cond_1

    .line 3543
    iget-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 3547
    :goto_0
    const/16 v0, 0xff

    filled-new-array {v8, v0}, [I

    move-result-object v0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    .line 3548
    iget-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x14d

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3549
    iget-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    invoke-direct {v1, v6, v4, v5, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3551
    iget-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/widget/ScrollView$10;

    invoke-direct {v1, p0}, Landroid/widget/ScrollView$10;-><init>(Landroid/widget/ScrollView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 3562
    const/16 v0, 0xff

    filled-new-array {v8, v0}, [I

    move-result-object v0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    .line 3563
    iget-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x14d

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3564
    iget-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    invoke-direct {v1, v6, v4, v5, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3566
    iget-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/widget/ScrollView$11;

    invoke-direct {v1, p0}, Landroid/widget/ScrollView$11;-><init>(Landroid/widget/ScrollView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 3577
    iget-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/widget/ScrollView$12;

    invoke-direct {v1, p0}, Landroid/widget/ScrollView$12;-><init>(Landroid/widget/ScrollView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3538
    :cond_0
    return-void

    .line 3545
    :cond_1
    iget-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    goto :goto_0
.end method

.method public semSetHoverScrollMode(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 1130
    if-eqz p1, :cond_0

    .line 1131
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ScrollView;->mHoverScrollEnable:Z

    .line 1129
    :goto_0
    return-void

    .line 1133
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/ScrollView;->mHoverScrollEnable:Z

    goto :goto_0
.end method

.method public semSetSmoothScrollEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 3528
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0, p1}, Landroid/widget/OverScroller;->semSetSmoothScrollEnabled(Z)V

    .line 3527
    return-void
.end method

.method public setFillViewport(Z)V
    .locals 1
    .param p1, "fillViewport"    # Z

    .prologue
    .line 520
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mFillViewport:Z

    if-eq p1, v0, :cond_0

    .line 521
    iput-boolean p1, p0, Landroid/widget/ScrollView;->mFillViewport:Z

    .line 522
    invoke-virtual {p0}, Landroid/widget/ScrollView;->requestLayout()V

    .line 519
    :cond_0
    return-void
.end method

.method public setHoverScrollDelay(I)V
    .locals 0
    .param p1, "hoverdelay"    # I

    .prologue
    .line 1150
    iput p1, p0, Landroid/widget/ScrollView;->HOVERSCROLL_DELAY:I

    .line 1149
    return-void
.end method

.method public setHoverScrollSpeed(I)V
    .locals 1
    .param p1, "hoverspeed"    # I

    .prologue
    .line 1142
    add-int/lit8 v0, p1, 0x17

    int-to-float v0, v0

    iput v0, p0, Landroid/widget/ScrollView;->HOVERSCROLL_SPEED:F

    .line 1141
    return-void
.end method

.method public setIgnoreDelaychildPrerssedState(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 290
    iput-boolean p1, p0, Landroid/widget/ScrollView;->mIgnoreDelaychildPrerssed:Z

    .line 289
    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    const/4 v2, 0x0

    .line 2694
    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    .line 2695
    iget-object v1, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-nez v1, :cond_0

    .line 2696
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2697
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 2698
    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 2704
    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setOverScrollMode(I)V

    .line 2693
    return-void

    .line 2701
    :cond_1
    iput-object v2, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 2702
    iput-object v2, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    goto :goto_0
.end method

.method public setSmoothScrollingEnabled(Z)V
    .locals 0
    .param p1, "smoothScrollingEnabled"    # Z

    .prologue
    .line 538
    iput-boolean p1, p0, Landroid/widget/ScrollView;->mSmoothScrollingEnabled:Z

    .line 537
    return-void
.end method

.method public setTouchSlop(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 352
    iput p1, p0, Landroid/widget/ScrollView;->mTouchSlop:I

    .line 351
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 383
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mIgnoreDelaychildPrerssed:Z

    if-eqz v0, :cond_0

    .line 384
    const/4 v0, 0x0

    return v0

    .line 386
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final smoothScrollBy(II)V
    .locals 12
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 2097
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v6

    if-nez v6, :cond_0

    .line 2099
    return-void

    .line 2101
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Landroid/widget/ScrollView;->mLastScroll:J

    sub-long v2, v6, v8

    .line 2102
    .local v2, "duration":J
    const-wide/16 v6, 0xfa

    cmp-long v6, v2, v6

    if-lez v6, :cond_1

    .line 2103
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v6

    iget v7, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int v1, v6, v7

    .line 2104
    .local v1, "height":I
    invoke-virtual {p0, v10}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 2105
    .local v0, "bottom":I
    sub-int v6, v0, v1

    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 2106
    .local v4, "maxY":I
    iget v5, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 2107
    .local v5, "scrollY":I
    add-int v6, v5, p2

    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    sub-int p2, v6, v5

    .line 2109
    iget-object v6, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v7, p0, Landroid/widget/ScrollView;->mScrollX:I

    invoke-virtual {v6, v7, v5, v10, p2}, Landroid/widget/OverScroller;->startScroll(IIII)V

    .line 2110
    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    .line 2121
    .end local v0    # "bottom":I
    .end local v1    # "height":I
    .end local v4    # "maxY":I
    .end local v5    # "scrollY":I
    :goto_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Landroid/widget/ScrollView;->mLastScroll:J

    .line 2096
    return-void

    .line 2112
    :cond_1
    iget-object v6, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v6}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v6

    if-nez v6, :cond_2

    .line 2113
    iget-object v6, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v6}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 2114
    iget-object v6, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v6, :cond_2

    .line 2115
    iget-object v6, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v6}, Landroid/os/StrictMode$Span;->finish()V

    .line 2116
    iput-object v11, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 2119
    :cond_2
    invoke-virtual {p0, p1, p2}, Landroid/widget/ScrollView;->scrollBy(II)V

    goto :goto_0
.end method

.method public final smoothScrollByWithDuration(III)V
    .locals 11
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "scrollDuration"    # I

    .prologue
    .line 2135
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 2137
    return-void

    .line 2139
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Landroid/widget/ScrollView;->mLastScroll:J

    sub-long v8, v0, v4

    .line 2140
    .local v8, "duration":J
    const-wide/16 v0, 0xfa

    cmp-long v0, v8, v0

    if-lez v0, :cond_2

    .line 2141
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v0

    iget v1, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int v7, v0, v1

    .line 2142
    .local v7, "height":I
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v6

    .line 2143
    .local v6, "bottom":I
    sub-int v0, v6, v7

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 2144
    .local v10, "maxY":I
    iget v2, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 2145
    .local v2, "scrollY":I
    add-int v0, v2, p2

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sub-int p2, v0, v2

    .line 2147
    iget-object v1, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    iget-boolean v0, p0, Landroid/widget/ScrollView;->mLinear:Z

    if-eqz v0, :cond_1

    sget-object v0, Landroid/widget/ScrollView;->sLinearInterpolator:Landroid/view/animation/Interpolator;

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/OverScroller;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2148
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v1, p0, Landroid/widget/ScrollView;->mScrollX:I

    const/4 v3, 0x0

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 2149
    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    .line 2161
    .end local v2    # "scrollY":I
    .end local v6    # "bottom":I
    .end local v7    # "height":I
    .end local v10    # "maxY":I
    :goto_1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/ScrollView;->mLastScroll:J

    .line 2134
    return-void

    .line 2147
    .restart local v2    # "scrollY":I
    .restart local v6    # "bottom":I
    .restart local v7    # "height":I
    .restart local v10    # "maxY":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 2151
    .end local v2    # "scrollY":I
    .end local v6    # "bottom":I
    .end local v7    # "height":I
    .end local v10    # "maxY":I
    :cond_2
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2152
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 2153
    iget-object v0, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v0, :cond_3

    .line 2154
    iget-object v0, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    .line 2155
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 2158
    :cond_3
    invoke-virtual {p0, p1, p2}, Landroid/widget/ScrollView;->scrollBy(II)V

    goto :goto_1
.end method

.method public final smoothScrollTo(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 2172
    iget v0, p0, Landroid/widget/ScrollView;->mScrollX:I

    sub-int v0, p1, v0

    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    sub-int v1, p2, v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/ScrollView;->smoothScrollBy(II)V

    .line 2171
    return-void
.end method

.method public final smoothScrollToWithDuration(III)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "scrollDuration"    # I

    .prologue
    .line 2185
    iget v0, p0, Landroid/widget/ScrollView;->mScrollX:I

    sub-int v0, p1, v0

    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    sub-int v1, p2, v1

    invoke-virtual {p0, v0, v1, p3}, Landroid/widget/ScrollView;->smoothScrollByWithDuration(III)V

    .line 2184
    return-void
.end method

.method public updateCustomEdgeGlow(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "edgeeffectCustomEdge"    # Landroid/graphics/drawable/Drawable;
    .param p2, "edgeeffectCustomGlow"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 333
    return-void
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 2712
    iget-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
