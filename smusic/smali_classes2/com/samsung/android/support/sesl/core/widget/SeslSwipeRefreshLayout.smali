.class public Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;
.super Landroid/view/ViewGroup;
.source "SeslSwipeRefreshLayout.java"

# interfaces
.implements Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChild;
.implements Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingParent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout$OnChildScrollUpCallback;,
        Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout$OnRefreshListener;
    }
.end annotation


# static fields
.field private static final ALPHA_ANIMATION_DURATION:I = 0x12c

.field private static final ANIMATE_TO_START_DURATION:I = 0xc8

.field private static final ANIMATE_TO_TRIGGER_DURATION:I = 0xc8

.field private static final CIRCLE_BG_LIGHT:I = -0x50506

.field static final CIRCLE_DIAMETER:I = 0x28
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final CIRCLE_DIAMETER_LARGE:I = 0x38
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final DECELERATE_INTERPOLATION_FACTOR:F = 2.0f

.field public static final DEFAULT:I = 0x1

.field private static final DEFAULT_CIRCLE_TARGET:I = 0x40

.field private static final DRAG_RATE:F = 0.5f

.field private static final INVALID_POINTER:I = -0x1

.field public static final LARGE:I = 0x0

.field private static final LAYOUT_ATTRS:[I

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final MAX_ALPHA:I = 0xff

.field private static final MAX_PROGRESS_ANGLE:F = 0.8f

.field private static final SCALE_DOWN_DURATION:I = 0x96

.field private static final STARTING_PROGRESS_ALPHA:I = 0x4c


# instance fields
.field mActionDown:Z

.field private mActivePointerId:I

.field private mAlphaMaxAnimation:Landroid/view/animation/Animation;

.field private mAlphaStartAnimation:Landroid/view/animation/Animation;

.field private final mAnimateToCorrectPosition:Landroid/view/animation/Animation;

.field private final mAnimateToStartPosition:Landroid/view/animation/Animation;

.field private mChildScrollUpCallback:Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout$OnChildScrollUpCallback;

.field private mCircleDiameter:I

.field mCircleView:Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;

.field private mCircleViewIndex:I

.field mCurrentTargetOffsetTop:I

.field private final mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field protected mFrom:I

.field private mInitialDownY:F

.field private mInitialMotionY:F

.field private mIsBeingDragged:Z

.field mListener:Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout$OnRefreshListener;

.field private mMediumAnimationDuration:I

.field private mNestedScrollInProgress:Z

.field private final mNestedScrollingChildHelper:Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;

.field private final mNestedScrollingParentHelper:Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingParentHelper;

.field mNotify:Z

.field protected mOriginalOffsetTop:I

.field private final mParentOffsetInWindow:[I

.field private final mParentScrollConsumed:[I

.field mProgress:Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;

.field private mRefreshListener:Landroid/view/animation/Animation$AnimationListener;

.field mRefreshing:Z

.field private mReturningToStart:Z

.field mScale:Z

.field private mScaleAnimation:Landroid/view/animation/Animation;

.field private mScaleDownAnimation:Landroid/view/animation/Animation;

.field private mScaleDownToStartAnimation:Landroid/view/animation/Animation;

.field mSpinnerOffsetEnd:I

.field mStartingScale:F

.field private mTarget:Landroid/view/View;

.field private mTotalDragDistance:F

.field private mTotalUnconsumed:F

.field private mTouchSlop:I

.field mUsingCustomStart:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 78
    const-class v0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->LOG_TAG:Ljava/lang/String;

    .line 136
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x101000e

    aput v2, v0, v1

    sput-object v0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->LAYOUT_ATTRS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 323
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 324
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v6, 0x2

    const/4 v3, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 333
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 106
    iput-boolean v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mRefreshing:Z

    .line 108
    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mTotalDragDistance:F

    .line 116
    new-array v2, v6, [I

    iput-object v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mParentScrollConsumed:[I

    .line 117
    new-array v2, v6, [I

    iput-object v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mParentOffsetInWindow:[I

    .line 126
    iput v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mActivePointerId:I

    .line 141
    iput v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mCircleViewIndex:I

    .line 172
    new-instance v2, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout$1;-><init>(Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;)V

    iput-object v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mRefreshListener:Landroid/view/animation/Animation$AnimationListener;

    .line 1130
    new-instance v2, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout$6;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout$6;-><init>(Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;)V

    iput-object v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mAnimateToCorrectPosition:Landroid/view/animation/Animation;

    .line 1154
    new-instance v2, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout$7;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout$7;-><init>(Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;)V

    iput-object v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mAnimateToStartPosition:Landroid/view/animation/Animation;

    .line 335
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mTouchSlop:I

    .line 337
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mMediumAnimationDuration:I

    .line 340
    invoke-virtual {p0, v4}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->setWillNotDraw(Z)V

    .line 341
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-direct {v2, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 343
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 344
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    const/high16 v2, 0x42200000    # 40.0f

    iget v3, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mCircleDiameter:I

    .line 346
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->createProgressView()V

    .line 347
    invoke-virtual {p0, v5}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->setChildrenDrawingOrderEnabled(Z)V

    .line 349
    const/high16 v2, 0x42800000    # 64.0f

    iget v3, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mSpinnerOffsetEnd:I

    .line 350
    iget v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mSpinnerOffsetEnd:I

    int-to-float v2, v2

    iput v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mTotalDragDistance:F

    .line 351
    new-instance v2, Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingParentHelper;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingParentHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mNestedScrollingParentHelper:Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingParentHelper;

    .line 353
    new-instance v2, Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;-><init>(Landroid/view/View;)V

    iput-object v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mNestedScrollingChildHelper:Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;

    .line 354
    invoke-virtual {p0, v5}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->setNestedScrollingEnabled(Z)V

    .line 356
    iget v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mCircleDiameter:I

    neg-int v2, v2

    iput v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    iput v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mOriginalOffsetTop:I

    .line 357
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->moveToStart(F)V

    .line 359
    sget-object v2, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->LAYOUT_ATTRS:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 360
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->setEnabled(Z)V

    .line 361
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 362
    return-void
.end method

.method private animateOffsetToCorrectPosition(ILandroid/view/animation/Animation$AnimationListener;)V
    .locals 4
    .param p1, "from"    # I
    .param p2, "listener"    # Landroid/view/animation/Animation$AnimationListener;

    .prologue
    .line 1102
    iput p1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mFrom:I

    .line 1103
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mAnimateToCorrectPosition:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 1104
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mAnimateToCorrectPosition:Landroid/view/animation/Animation;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1105
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mAnimateToCorrectPosition:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1106
    if-eqz p2, :cond_0

    .line 1107
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;

    invoke-virtual {v0, p2}, Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1109
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;->clearAnimation()V

    .line 1110
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mAnimateToCorrectPosition:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1111
    return-void
.end method

.method private animateOffsetToStartPosition(ILandroid/view/animation/Animation$AnimationListener;)V
    .locals 4
    .param p1, "from"    # I
    .param p2, "listener"    # Landroid/view/animation/Animation$AnimationListener;

    .prologue
    .line 1114
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mScale:Z

    if-eqz v0, :cond_0

    .line 1116
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->startScaleDownReturnToStartAnimation(ILandroid/view/animation/Animation$AnimationListener;)V

    .line 1128
    :goto_0
    return-void

    .line 1118
    :cond_0
    iput p1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mFrom:I

    .line 1119
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mAnimateToStartPosition:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 1120
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mAnimateToStartPosition:Landroid/view/animation/Animation;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1121
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mAnimateToStartPosition:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1122
    if-eqz p2, :cond_1

    .line 1123
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;

    invoke-virtual {v0, p2}, Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1125
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;->clearAnimation()V

    .line 1126
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mAnimateToStartPosition:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private createProgressView()V
    .locals 3

    .prologue
    const v2, -0x50506

    .line 381
    new-instance v0, Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;

    .line 382
    new-instance v0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mProgress:Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;

    .line 383
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mProgress:Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->setBackgroundColor(I)V

    .line 384
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mProgress:Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 385
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;->setVisibility(I)V

    .line 386
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->addView(Landroid/view/View;)V

    .line 387
    return-void
.end method

.method private ensureTarget()V
    .locals 3

    .prologue
    .line 593
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mTarget:Landroid/view/View;

    if-nez v2, :cond_0

    .line 594
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 595
    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 596
    .local v0, "child":Landroid/view/View;
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 597
    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mTarget:Landroid/view/View;

    .line 602
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "i":I
    :cond_0
    return-void

    .line 594
    .restart local v0    # "child":Landroid/view/View;
    .restart local v1    # "i":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private finishSpinner(F)V
    .locals 5
    .param p1, "overscrollTop"    # F

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 981
    iget v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mTotalDragDistance:F

    cmpl-float v1, p1, v1

    if-lez v1, :cond_0

    .line 982
    invoke-direct {p0, v4, v4}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->setRefreshing(ZZ)V

    .line 1011
    :goto_0
    return-void

    .line 985
    :cond_0
    iput-boolean v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mRefreshing:Z

    .line 986
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mProgress:Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;

    invoke-virtual {v1, v2, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->setStartEndTrim(FF)V

    .line 987
    const/4 v0, 0x0

    .line 988
    .local v0, "listener":Landroid/view/animation/Animation$AnimationListener;
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mScale:Z

    if-nez v1, :cond_1

    .line 989
    new-instance v0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout$5;

    .end local v0    # "listener":Landroid/view/animation/Animation$AnimationListener;
    invoke-direct {v0, p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout$5;-><init>(Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;)V

    .line 1008
    .restart local v0    # "listener":Landroid/view/animation/Animation$AnimationListener;
    :cond_1
    iget v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->animateOffsetToStartPosition(ILandroid/view/animation/Animation$AnimationListener;)V

    .line 1009
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mProgress:Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;

    invoke-virtual {v1, v3}, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->showArrow(Z)V

    goto :goto_0
.end method

.method private isAlphaUsedForScale()Z
    .locals 2

    .prologue
    .line 401
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isAnimationRunning(Landroid/view/animation/Animation;)Z
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 928
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private moveSpinner(F)V
    .locals 20
    .param p1, "overscrollTop"    # F

    .prologue
    .line 932
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mProgress:Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->showArrow(Z)V

    .line 933
    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mTotalDragDistance:F

    div-float v6, p1, v13

    .line 935
    .local v6, "originalDragPercent":F
    const/high16 v13, 0x3f800000    # 1.0f

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v14

    invoke-static {v13, v14}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 936
    .local v3, "dragPercent":F
    float-to-double v14, v3

    const-wide v16, 0x3fd999999999999aL    # 0.4

    sub-double v14, v14, v16

    const-wide/16 v16, 0x0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->max(DD)D

    move-result-wide v14

    double-to-float v13, v14

    const/high16 v14, 0x40a00000    # 5.0f

    mul-float/2addr v13, v14

    const/high16 v14, 0x40400000    # 3.0f

    div-float v2, v13, v14

    .line 937
    .local v2, "adjustedPercent":F
    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->abs(F)F

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mTotalDragDistance:F

    sub-float v5, v13, v14

    .line 938
    .local v5, "extraOS":F
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mUsingCustomStart:Z

    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mSpinnerOffsetEnd:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mOriginalOffsetTop:I

    sub-int/2addr v13, v14

    int-to-float v8, v13

    .line 940
    .local v8, "slingshotDist":F
    :goto_0
    const/4 v13, 0x0

    const/high16 v14, 0x40000000    # 2.0f

    mul-float/2addr v14, v8

    invoke-static {v5, v14}, Ljava/lang/Math;->min(FF)F

    move-result v14

    div-float/2addr v14, v8

    invoke-static {v13, v14}, Ljava/lang/Math;->max(FF)F

    move-result v12

    .line 942
    .local v12, "tensionSlingshotPercent":F
    const/high16 v13, 0x40800000    # 4.0f

    div-float v13, v12, v13

    float-to-double v14, v13

    const/high16 v13, 0x40800000    # 4.0f

    div-float v13, v12, v13

    float-to-double v0, v13

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v16

    sub-double v14, v14, v16

    double-to-float v13, v14

    const/high16 v14, 0x40000000    # 2.0f

    mul-float v11, v13, v14

    .line 944
    .local v11, "tensionPercent":F
    mul-float v13, v8, v11

    const/high16 v14, 0x40000000    # 2.0f

    mul-float v4, v13, v14

    .line 946
    .local v4, "extraMove":F
    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mOriginalOffsetTop:I

    mul-float v14, v8, v3

    add-float/2addr v14, v4

    float-to-int v14, v14

    add-int v10, v13, v14

    .line 948
    .local v10, "targetY":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;

    invoke-virtual {v13}, Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;->getVisibility()I

    move-result v13

    if-eqz v13, :cond_0

    .line 949
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;->setVisibility(I)V

    .line 951
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mScale:Z

    if-nez v13, :cond_1

    .line 952
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-virtual {v13, v14}, Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;->setScaleX(F)V

    .line 953
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-virtual {v13, v14}, Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;->setScaleY(F)V

    .line 956
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mScale:Z

    if-eqz v13, :cond_2

    .line 957
    const/high16 v13, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mTotalDragDistance:F

    div-float v14, p1, v14

    invoke-static {v13, v14}, Ljava/lang/Math;->min(FF)F

    move-result v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->setAnimationProgress(F)V

    .line 959
    :cond_2
    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mTotalDragDistance:F

    cmpg-float v13, p1, v13

    if-gez v13, :cond_5

    .line 960
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mProgress:Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;

    invoke-virtual {v13}, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->getAlpha()I

    move-result v13

    const/16 v14, 0x4c

    if-le v13, v14, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mAlphaStartAnimation:Landroid/view/animation/Animation;

    .line 961
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->isAnimationRunning(Landroid/view/animation/Animation;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 963
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->startProgressAlphaStartAnimation()V

    .line 971
    :cond_3
    :goto_1
    const v13, 0x3f4ccccd    # 0.8f

    mul-float v9, v2, v13

    .line 972
    .local v9, "strokeStart":F
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mProgress:Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;

    const/4 v14, 0x0

    const v15, 0x3f4ccccd    # 0.8f

    invoke-static {v15, v9}, Ljava/lang/Math;->min(FF)F

    move-result v15

    invoke-virtual {v13, v14, v15}, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->setStartEndTrim(FF)V

    .line 973
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mProgress:Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-static {v14, v2}, Ljava/lang/Math;->min(FF)F

    move-result v14

    invoke-virtual {v13, v14}, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->setArrowScale(F)V

    .line 975
    const/high16 v13, -0x41800000    # -0.25f

    const v14, 0x3ecccccd    # 0.4f

    mul-float/2addr v14, v2

    add-float/2addr v13, v14

    const/high16 v14, 0x40000000    # 2.0f

    mul-float/2addr v14, v11

    add-float/2addr v13, v14

    const/high16 v14, 0x3f000000    # 0.5f

    mul-float v7, v13, v14

    .line 976
    .local v7, "rotation":F
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mProgress:Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;

    invoke-virtual {v13, v7}, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->setProgressRotation(F)V

    .line 977
    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    sub-int v13, v10, v13

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->setTargetOffsetTopAndBottom(IZ)V

    .line 978
    return-void

    .line 938
    .end local v4    # "extraMove":F
    .end local v7    # "rotation":F
    .end local v8    # "slingshotDist":F
    .end local v9    # "strokeStart":F
    .end local v10    # "targetY":I
    .end local v11    # "tensionPercent":F
    .end local v12    # "tensionSlingshotPercent":F
    :cond_4
    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mSpinnerOffsetEnd:I

    int-to-float v8, v13

    goto/16 :goto_0

    .line 966
    .restart local v4    # "extraMove":F
    .restart local v8    # "slingshotDist":F
    .restart local v10    # "targetY":I
    .restart local v11    # "tensionPercent":F
    .restart local v12    # "tensionSlingshotPercent":F
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mProgress:Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;

    invoke-virtual {v13}, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->getAlpha()I

    move-result v13

    const/16 v14, 0xff

    if-ge v13, v14, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mAlphaMaxAnimation:Landroid/view/animation/Animation;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->isAnimationRunning(Landroid/view/animation/Animation;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 968
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->startProgressAlphaMaxAnimation()V

    goto :goto_1
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1195
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    .line 1196
    .local v2, "pointerIndex":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 1197
    .local v1, "pointerId":I
    iget v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mActivePointerId:I

    if-ne v1, v3, :cond_0

    .line 1200
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 1201
    .local v0, "newPointerIndex":I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mActivePointerId:I

    .line 1203
    .end local v0    # "newPointerIndex":I
    :cond_0
    return-void

    .line 1200
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setColorViewAlpha(I)V
    .locals 1
    .param p1, "targetAlpha"    # I

    .prologue
    .line 229
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 230
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mProgress:Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->setAlpha(I)V

    .line 231
    return-void
.end method

.method private setRefreshing(ZZ)V
    .locals 2
    .param p1, "refreshing"    # Z
    .param p2, "notify"    # Z

    .prologue
    .line 465
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mRefreshing:Z

    if-eq v0, p1, :cond_0

    .line 466
    iput-boolean p2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mNotify:Z

    .line 467
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->ensureTarget()V

    .line 468
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mRefreshing:Z

    .line 469
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mRefreshing:Z

    if-eqz v0, :cond_1

    .line 470
    iget v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mRefreshListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->animateOffsetToCorrectPosition(ILandroid/view/animation/Animation$AnimationListener;)V

    .line 475
    :cond_0
    :goto_0
    return-void

    .line 472
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mRefreshListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->startScaleDownAnimation(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0
.end method

.method private startAlphaAnimation(II)Landroid/view/animation/Animation;
    .locals 4
    .param p1, "startingAlpha"    # I
    .param p2, "endingAlpha"    # I

    .prologue
    const/4 v1, 0x0

    .line 501
    iget-boolean v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mScale:Z

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->isAlphaUsedForScale()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 516
    :goto_0
    return-object v0

    .line 504
    :cond_0
    new-instance v0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout$4;-><init>(Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;II)V

    .line 511
    .local v0, "alpha":Landroid/view/animation/Animation;
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 513
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;

    invoke-virtual {v2, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 514
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;->clearAnimation()V

    .line 515
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private startDragging(F)V
    .locals 3
    .param p1, "y"    # F

    .prologue
    .line 1093
    iget v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mInitialDownY:F

    sub-float v0, p1, v1

    .line 1094
    .local v0, "yDiff":F
    iget v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mTouchSlop:I

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mIsBeingDragged:Z

    if-nez v1, :cond_0

    .line 1095
    iget v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mInitialDownY:F

    iget v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mTouchSlop:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mInitialMotionY:F

    .line 1096
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mIsBeingDragged:Z

    .line 1097
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mProgress:Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;

    const/16 v2, 0x4c

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->setAlpha(I)V

    .line 1099
    :cond_0
    return-void
.end method

.method private startProgressAlphaMaxAnimation()V
    .locals 2

    .prologue
    .line 495
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mProgress:Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->getAlpha()I

    move-result v0

    const/16 v1, 0xff

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->startAlphaAnimation(II)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mAlphaMaxAnimation:Landroid/view/animation/Animation;

    .line 496
    return-void
.end method

.method private startProgressAlphaStartAnimation()V
    .locals 2

    .prologue
    .line 491
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mProgress:Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->getAlpha()I

    move-result v0

    const/16 v1, 0x4c

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->startAlphaAnimation(II)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mAlphaStartAnimation:Landroid/view/animation/Animation;

    .line 492
    return-void
.end method

.method private startScaleDownReturnToStartAnimation(ILandroid/view/animation/Animation$AnimationListener;)V
    .locals 4
    .param p1, "from"    # I
    .param p2, "listener"    # Landroid/view/animation/Animation$AnimationListener;

    .prologue
    .line 1163
    iput p1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mFrom:I

    .line 1164
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->isAlphaUsedForScale()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1165
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mProgress:Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->getAlpha()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mStartingScale:F

    .line 1169
    :goto_0
    new-instance v0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout$8;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout$8;-><init>(Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mScaleDownToStartAnimation:Landroid/view/animation/Animation;

    .line 1177
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mScaleDownToStartAnimation:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1178
    if-eqz p2, :cond_0

    .line 1179
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;

    invoke-virtual {v0, p2}, Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1181
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;->clearAnimation()V

    .line 1182
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mScaleDownToStartAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1183
    return-void

    .line 1167
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;->getScaleX()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mStartingScale:F

    goto :goto_0
.end method

.method private startScaleUpAnimation(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/view/animation/Animation$AnimationListener;

    .prologue
    .line 430
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;->setVisibility(I)V

    .line 431
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 435
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mProgress:Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->setAlpha(I)V

    .line 437
    :cond_0
    new-instance v0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout$2;-><init>(Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mScaleAnimation:Landroid/view/animation/Animation;

    .line 443
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mScaleAnimation:Landroid/view/animation/Animation;

    iget v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mMediumAnimationDuration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 444
    if-eqz p1, :cond_1

    .line 445
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 447
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;->clearAnimation()V

    .line 448
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mScaleAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 449
    return-void
.end method


# virtual methods
.method public canChildScrollUp()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v5, -0x1

    const/4 v2, 0x0

    .line 678
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mChildScrollUpCallback:Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout$OnChildScrollUpCallback;

    if-eqz v3, :cond_1

    .line 679
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mChildScrollUpCallback:Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout$OnChildScrollUpCallback;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mTarget:Landroid/view/View;

    invoke-interface {v1, p0, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout$OnChildScrollUpCallback;->canChildScrollUp(Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;Landroid/view/View;)Z

    move-result v1

    .line 691
    :cond_0
    :goto_0
    return v1

    .line 681
    :cond_1
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xe

    if-ge v3, v4, :cond_6

    .line 682
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mTarget:Landroid/view/View;

    instance-of v3, v3, Landroid/widget/AbsListView;

    if-eqz v3, :cond_3

    .line 683
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mTarget:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    .line 684
    .local v0, "absListView":Landroid/widget/AbsListView;
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_2

    .line 685
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v3

    if-gtz v3, :cond_0

    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 686
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getPaddingTop()I

    move-result v4

    if-lt v3, v4, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .line 688
    .end local v0    # "absListView":Landroid/widget/AbsListView;
    :cond_3
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mTarget:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mTarget:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getScrollY()I

    move-result v3

    if-lez v3, :cond_5

    :cond_4
    move v2, v1

    :cond_5
    move v1, v2

    goto :goto_0

    .line 691
    :cond_6
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mTarget:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v1

    goto :goto_0
.end method

.method public dispatchNestedFling(FFZ)Z
    .locals 1
    .param p1, "velocityX"    # F
    .param p2, "velocityY"    # F
    .param p3, "consumed"    # Z

    .prologue
    .line 919
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mNestedScrollingChildHelper:Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;->dispatchNestedFling(FFZ)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedPreFling(FF)Z
    .locals 1
    .param p1, "velocityX"    # F
    .param p2, "velocityY"    # F

    .prologue
    .line 924
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mNestedScrollingChildHelper:Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;->dispatchNestedPreFling(FF)Z

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
    .line 901
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mNestedScrollingChildHelper:Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;->dispatchNestedPreScroll(II[I[I)Z

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
    .line 895
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mNestedScrollingChildHelper:Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;->dispatchNestedScroll(IIII[I)Z

    move-result v0

    return v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 1
    .param p1, "childCount"    # I
    .param p2, "i"    # I

    .prologue
    .line 366
    iget v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mCircleViewIndex:I

    if-gez v0, :cond_1

    .line 376
    .end local p2    # "i":I
    :cond_0
    :goto_0
    return p2

    .line 368
    .restart local p2    # "i":I
    :cond_1
    add-int/lit8 v0, p1, -0x1

    if-ne p2, v0, :cond_2

    .line 370
    iget p2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mCircleViewIndex:I

    goto :goto_0

    .line 371
    :cond_2
    iget v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mCircleViewIndex:I

    if-lt p2, v0, :cond_0

    .line 373
    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method public getNestedScrollAxes()I
    .locals 1

    .prologue
    .line 828
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mNestedScrollingParentHelper:Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingParentHelper;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingParentHelper;->getNestedScrollAxes()I

    move-result v0

    return v0
.end method

.method public getProgressCircleDiameter()I
    .locals 1

    .prologue
    .line 670
    iget v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mCircleDiameter:I

    return v0
.end method

.method public getProgressViewEndOffset()I
    .locals 1

    .prologue
    .line 274
    iget v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mSpinnerOffsetEnd:I

    return v0
.end method

.method public getProgressViewStartOffset()I
    .locals 1

    .prologue
    .line 266
    iget v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mOriginalOffsetTop:I

    return v0
.end method

.method public hasNestedScrollingParent()Z
    .locals 1

    .prologue
    .line 889
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mNestedScrollingChildHelper:Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;->hasNestedScrollingParent()Z

    move-result v0

    return v0
.end method

.method public isNestedScrollingEnabled()Z
    .locals 1

    .prologue
    .line 874
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mNestedScrollingChildHelper:Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v0

    return v0
.end method

.method public isRefreshing()Z
    .locals 1

    .prologue
    .line 587
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mRefreshing:Z

    return v0
.end method

.method moveToStart(F)V
    .locals 5
    .param p1, "interpolatedTime"    # F

    .prologue
    .line 1148
    const/4 v1, 0x0

    .line 1149
    .local v1, "targetTop":I
    iget v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mFrom:I

    iget v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mOriginalOffsetTop:I

    iget v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mFrom:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, p1

    float-to-int v3, v3

    add-int v1, v2, v3

    .line 1150
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;->getTop()I

    move-result v2

    sub-int v0, v1, v2

    .line 1151
    .local v0, "offset":I
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->setTargetOffsetTopAndBottom(IZ)V

    .line 1152
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 224
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 225
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->reset()V

    .line 226
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v3, 0x0

    .line 706
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->ensureTarget()V

    .line 708
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 711
    .local v0, "action":I
    iget-boolean v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mReturningToStart:Z

    if-eqz v4, :cond_0

    if-nez v0, :cond_0

    .line 712
    iput-boolean v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mReturningToStart:Z

    .line 715
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mReturningToStart:Z

    if-nez v4, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->canChildScrollUp()Z

    move-result v4

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mRefreshing:Z

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mNestedScrollInProgress:Z

    if-eqz v4, :cond_2

    .line 760
    :cond_1
    :goto_0
    return v3

    .line 721
    :cond_2
    packed-switch v0, :pswitch_data_0

    .line 760
    :goto_1
    :pswitch_0
    iget-boolean v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mIsBeingDragged:Z

    goto :goto_0

    .line 723
    :pswitch_1
    iput-boolean v6, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mActionDown:Z

    .line 724
    iget v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mOriginalOffsetTop:I

    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;

    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;->getTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0, v4, v6}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->setTargetOffsetTopAndBottom(IZ)V

    .line 725
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mActivePointerId:I

    .line 726
    iput-boolean v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mIsBeingDragged:Z

    .line 728
    iget v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mActivePointerId:I

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 729
    .local v1, "pointerIndex":I
    if-ltz v1, :cond_1

    .line 732
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    iput v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mInitialDownY:F

    goto :goto_1

    .line 736
    .end local v1    # "pointerIndex":I
    :pswitch_2
    iget v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mActivePointerId:I

    if-ne v4, v5, :cond_3

    .line 737
    sget-object v4, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->LOG_TAG:Ljava/lang/String;

    const-string v5, "Got ACTION_MOVE event but don\'t have an active pointer id."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 741
    :cond_3
    iget v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mActivePointerId:I

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 742
    .restart local v1    # "pointerIndex":I
    if-ltz v1, :cond_1

    .line 745
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    .line 746
    .local v2, "y":F
    invoke-direct {p0, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->startDragging(F)V

    goto :goto_1

    .line 750
    .end local v1    # "pointerIndex":I
    .end local v2    # "y":F
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 755
    :pswitch_4
    iput-boolean v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mIsBeingDragged:Z

    .line 756
    iput v5, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mActivePointerId:I

    goto :goto_1

    .line 721
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
    .locals 14
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 615
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->getMeasuredWidth()I

    move-result v8

    .line 616
    .local v8, "width":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->getMeasuredHeight()I

    move-result v7

    .line 617
    .local v7, "height":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->getChildCount()I

    move-result v9

    if-nez v9, :cond_1

    .line 636
    :cond_0
    :goto_0
    return-void

    .line 620
    :cond_1
    iget-object v9, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mTarget:Landroid/view/View;

    if-nez v9, :cond_2

    .line 621
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->ensureTarget()V

    .line 623
    :cond_2
    iget-object v9, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mTarget:Landroid/view/View;

    if-eqz v9, :cond_0

    .line 626
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mTarget:Landroid/view/View;

    .line 627
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->getPaddingLeft()I

    move-result v2

    .line 628
    .local v2, "childLeft":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->getPaddingTop()I

    move-result v3

    .line 629
    .local v3, "childTop":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->getPaddingLeft()I

    move-result v9

    sub-int v9, v8, v9

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->getPaddingRight()I

    move-result v10

    sub-int v4, v9, v10

    .line 630
    .local v4, "childWidth":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->getPaddingTop()I

    move-result v9

    sub-int v9, v7, v9

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->getPaddingBottom()I

    move-result v10

    sub-int v1, v9, v10

    .line 631
    .local v1, "childHeight":I
    add-int v9, v2, v4

    add-int v10, v3, v1

    invoke-virtual {v0, v2, v3, v9, v10}, Landroid/view/View;->layout(IIII)V

    .line 632
    iget-object v9, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;

    invoke-virtual {v9}, Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;->getMeasuredWidth()I

    move-result v6

    .line 633
    .local v6, "circleWidth":I
    iget-object v9, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;

    invoke-virtual {v9}, Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;->getMeasuredHeight()I

    move-result v5

    .line 634
    .local v5, "circleHeight":I
    iget-object v9, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;

    div-int/lit8 v10, v8, 0x2

    div-int/lit8 v11, v6, 0x2

    sub-int/2addr v10, v11

    iget v11, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    div-int/lit8 v12, v8, 0x2

    div-int/lit8 v13, v6, 0x2

    add-int/2addr v12, v13

    iget v13, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    add-int/2addr v13, v5

    invoke-virtual {v9, v10, v11, v12, v13}, Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;->layout(IIII)V

    goto :goto_0
.end method

.method public onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 640
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 641
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mTarget:Landroid/view/View;

    if-nez v1, :cond_0

    .line 642
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->ensureTarget()V

    .line 644
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mTarget:Landroid/view/View;

    if-nez v1, :cond_2

    .line 661
    :cond_1
    :goto_0
    return-void

    .line 647
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mTarget:Landroid/view/View;

    .line 648
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 647
    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 650
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    .line 649
    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 647
    invoke-virtual {v1, v2, v3}, Landroid/view/View;->measure(II)V

    .line 651
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;

    iget v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mCircleDiameter:I

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mCircleDiameter:I

    .line 652
    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 651
    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;->measure(II)V

    .line 653
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mCircleViewIndex:I

    .line 655
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 656
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;

    if-ne v1, v2, :cond_3

    .line 657
    iput v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mCircleViewIndex:I

    goto :goto_0

    .line 655
    :cond_3
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
    .line 914
    invoke-virtual {p0, p2, p3, p4}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->dispatchNestedFling(FFZ)Z

    move-result v0

    return v0
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 1
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F

    .prologue
    .line 908
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->dispatchNestedPreFling(FF)Z

    move-result v0

    return v0
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 6
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dx"    # I
    .param p3, "dy"    # I
    .param p4, "consumed"    # [I

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 798
    if-lez p3, :cond_0

    iget v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mTotalUnconsumed:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mActionDown:Z

    if-eqz v1, :cond_0

    .line 799
    int-to-float v1, p3

    iget v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mTotalUnconsumed:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    .line 800
    iget v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mTotalUnconsumed:F

    float-to-int v1, v1

    sub-int v1, p3, v1

    aput v1, p4, v4

    .line 801
    iput v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mTotalUnconsumed:F

    .line 806
    :goto_0
    iget v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mTotalUnconsumed:F

    invoke-direct {p0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->moveSpinner(F)V

    .line 813
    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mUsingCustomStart:Z

    if-eqz v1, :cond_1

    if-lez p3, :cond_1

    iget v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mTotalUnconsumed:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_1

    aget v1, p4, v4

    sub-int v1, p3, v1

    .line 814
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-lez v1, :cond_1

    .line 815
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;->setVisibility(I)V

    .line 819
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mParentScrollConsumed:[I

    .line 820
    .local v0, "parentConsumed":[I
    aget v1, p4, v5

    sub-int v1, p2, v1

    aget v2, p4, v4

    sub-int v2, p3, v2

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->dispatchNestedPreScroll(II[I[I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 821
    aget v1, p4, v5

    aget v2, v0, v5

    add-int/2addr v1, v2

    aput v1, p4, v5

    .line 822
    aget v1, p4, v4

    aget v2, v0, v4

    add-int/2addr v1, v2

    aput v1, p4, v4

    .line 824
    :cond_2
    return-void

    .line 803
    .end local v0    # "parentConsumed":[I
    :cond_3
    iget v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mTotalUnconsumed:F

    int-to-float v2, p3

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mTotalUnconsumed:F

    .line 804
    aput p3, p4, v4

    goto :goto_0
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 7
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dxConsumed"    # I
    .param p3, "dyConsumed"    # I
    .param p4, "dxUnconsumed"    # I
    .param p5, "dyUnconsumed"    # I

    .prologue
    .line 850
    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mParentOffsetInWindow:[I

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->dispatchNestedScroll(IIII[I)Z

    .line 858
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mParentOffsetInWindow:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    add-int v6, p5, v0

    .line 859
    .local v6, "dy":I
    if-gez v6, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->canChildScrollUp()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mActionDown:Z

    if-eqz v0, :cond_0

    .line 860
    iget v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mTotalUnconsumed:F

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mTotalUnconsumed:F

    .line 861
    iget v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mTotalUnconsumed:F

    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->moveSpinner(F)V

    .line 863
    :cond_0
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "axes"    # I

    .prologue
    .line 787
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mNestedScrollingParentHelper:Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingParentHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingParentHelper;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    .line 789
    and-int/lit8 v0, p3, 0x2

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->startNestedScroll(I)Z

    .line 790
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mTotalUnconsumed:F

    .line 791
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mNestedScrollInProgress:Z

    .line 792
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "nestedScrollAxes"    # I

    .prologue
    .line 780
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mReturningToStart:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mRefreshing:Z

    if-nez v0, :cond_0

    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 3
    .param p1, "target"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 833
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mNestedScrollingParentHelper:Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingParentHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingParentHelper;->onStopNestedScroll(Landroid/view/View;)V

    .line 834
    iput-boolean v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mNestedScrollInProgress:Z

    .line 835
    iput-boolean v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mActionDown:Z

    .line 838
    iget v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mTotalUnconsumed:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 839
    iget v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mTotalUnconsumed:F

    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->finishSpinner(F)V

    .line 840
    iput v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mTotalUnconsumed:F

    .line 843
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->stopNestedScroll()V

    .line 844
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v4, 0x0

    .line 1015
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1016
    .local v0, "action":I
    const/4 v2, -0x1

    .line 1018
    .local v2, "pointerIndex":I
    iget-boolean v5, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mReturningToStart:Z

    if-eqz v5, :cond_0

    if-nez v0, :cond_0

    .line 1019
    iput-boolean v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mReturningToStart:Z

    .line 1022
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-boolean v5, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mReturningToStart:Z

    if-nez v5, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->canChildScrollUp()Z

    move-result v5

    if-nez v5, :cond_1

    iget-boolean v5, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mRefreshing:Z

    if-nez v5, :cond_1

    iget-boolean v5, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mNestedScrollInProgress:Z

    if-eqz v5, :cond_2

    .line 1089
    :cond_1
    :goto_0
    :pswitch_0
    return v4

    .line 1028
    :cond_2
    packed-switch v0, :pswitch_data_0

    .line 1089
    :cond_3
    :goto_1
    :pswitch_1
    const/4 v4, 0x1

    goto :goto_0

    .line 1030
    :pswitch_2
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mActivePointerId:I

    .line 1031
    iput-boolean v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mIsBeingDragged:Z

    goto :goto_1

    .line 1035
    :pswitch_3
    iget v5, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mActivePointerId:I

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 1036
    if-gez v2, :cond_4

    .line 1037
    sget-object v5, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->LOG_TAG:Ljava/lang/String;

    const-string v6, "Got ACTION_MOVE event but have an invalid active pointer id."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1041
    :cond_4
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    .line 1042
    .local v3, "y":F
    invoke-direct {p0, v3}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->startDragging(F)V

    .line 1044
    iget-boolean v5, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mIsBeingDragged:Z

    if-eqz v5, :cond_3

    .line 1045
    iget v5, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mInitialMotionY:F

    sub-float v5, v3, v5

    mul-float v1, v5, v6

    .line 1046
    .local v1, "overscrollTop":F
    const/4 v5, 0x0

    cmpl-float v5, v1, v5

    if-lez v5, :cond_1

    .line 1047
    invoke-direct {p0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->moveSpinner(F)V

    goto :goto_1

    .line 1055
    .end local v1    # "overscrollTop":F
    .end local v3    # "y":F
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    .line 1056
    if-gez v2, :cond_5

    .line 1057
    sget-object v5, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->LOG_TAG:Ljava/lang/String;

    const-string v6, "Got ACTION_POINTER_DOWN event but have an invalid action index."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1061
    :cond_5
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mActivePointerId:I

    goto :goto_1

    .line 1066
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 1070
    :pswitch_6
    iget v5, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mActivePointerId:I

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 1071
    if-gez v2, :cond_6

    .line 1072
    sget-object v5, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->LOG_TAG:Ljava/lang/String;

    const-string v6, "Got ACTION_UP event but don\'t have an active pointer id."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1076
    :cond_6
    iget-boolean v5, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mIsBeingDragged:Z

    if-eqz v5, :cond_7

    .line 1077
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    .line 1078
    .restart local v3    # "y":F
    iget v5, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mInitialMotionY:F

    sub-float v5, v3, v5

    mul-float v1, v5, v6

    .line 1079
    .restart local v1    # "overscrollTop":F
    iput-boolean v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mIsBeingDragged:Z

    .line 1080
    invoke-direct {p0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->finishSpinner(F)V

    .line 1082
    .end local v1    # "overscrollTop":F
    .end local v3    # "y":F
    :cond_7
    const/4 v5, -0x1

    iput v5, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mActivePointerId:I

    goto :goto_0

    .line 1028
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_6
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 2
    .param p1, "b"    # Z

    .prologue
    .line 768
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mTarget:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/AbsListView;

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mTarget:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mTarget:Landroid/view/View;

    .line 769
    invoke-virtual {v0}, Landroid/view/View;->isNestedScrollingEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 774
    :cond_1
    :goto_0
    return-void

    .line 772
    :cond_2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0
.end method

.method reset()V
    .locals 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;->clearAnimation()V

    .line 201
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mProgress:Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->stop()V

    .line 202
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;->setVisibility(I)V

    .line 203
    const/16 v0, 0xff

    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->setColorViewAlpha(I)V

    .line 205
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mScale:Z

    if-eqz v0, :cond_0

    .line 206
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->setAnimationProgress(F)V

    .line 211
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;->getTop()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    .line 212
    return-void

    .line 208
    :cond_0
    iget v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mOriginalOffsetTop:I

    iget v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->setTargetOffsetTopAndBottom(IZ)V

    goto :goto_0
.end method

.method setAnimationProgress(F)V
    .locals 1
    .param p1, "progress"    # F

    .prologue
    .line 456
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->isAlphaUsedForScale()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 457
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v0, p1

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->setColorViewAlpha(I)V

    .line 462
    :goto_0
    return-void

    .line 459
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;->setScaleX(F)V

    .line 460
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;->setScaleY(F)V

    goto :goto_0
.end method

.method public varargs setColorScheme([I)V
    .locals 0
    .param p1, "colors"    # [I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 551
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->setColorSchemeResources([I)V

    .line 552
    return-void
.end method

.method public varargs setColorSchemeColors([I)V
    .locals 1
    .param p1, "colors"    # [I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 578
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->ensureTarget()V

    .line 579
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mProgress:Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->setColorSchemeColors([I)V

    .line 580
    return-void
.end method

.method public varargs setColorSchemeResources([I)V
    .locals 4
    .param p1, "colorResIds"    # [I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    .line 562
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 563
    .local v1, "context":Landroid/content/Context;
    array-length v3, p1

    new-array v0, v3, [I

    .line 564
    .local v0, "colorRes":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    .line 565
    aget v3, p1, v2

    invoke-static {v1, v3}, Lcom/samsung/android/support/sesl/core/content/SeslContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    aput v3, v0, v2

    .line 564
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 567
    :cond_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->setColorSchemeColors([I)V

    .line 568
    return-void
.end method

.method public setDistanceToTriggerSync(I)V
    .locals 1
    .param p1, "distance"    # I

    .prologue
    .line 610
    int-to-float v0, p1

    iput v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mTotalDragDistance:F

    .line 611
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 216
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 217
    if-nez p1, :cond_0

    .line 218
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->reset()V

    .line 220
    :cond_0
    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 869
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mNestedScrollingChildHelper:Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    .line 870
    return-void
.end method

.method public setOnChildScrollUpCallback(Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout$OnChildScrollUpCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout$OnChildScrollUpCallback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 701
    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mChildScrollUpCallback:Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout$OnChildScrollUpCallback;

    .line 702
    return-void
.end method

.method public setOnRefreshListener(Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout$OnRefreshListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout$OnRefreshListener;

    .prologue
    .line 394
    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mListener:Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout$OnRefreshListener;

    .line 395
    return-void
.end method

.method public setProgressBackgroundColor(I)V
    .locals 0
    .param p1, "colorRes"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 524
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->setProgressBackgroundColorSchemeResource(I)V

    .line 525
    return-void
.end method

.method public setProgressBackgroundColorSchemeColor(I)V
    .locals 1
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 542
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;->setBackgroundColor(I)V

    .line 543
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mProgress:Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->setBackgroundColor(I)V

    .line 544
    return-void
.end method

.method public setProgressBackgroundColorSchemeResource(I)V
    .locals 1
    .param p1, "colorRes"    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    .line 533
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/samsung/android/support/sesl/core/content/SeslContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->setProgressBackgroundColorSchemeColor(I)V

    .line 534
    return-void
.end method

.method public setProgressViewEndTarget(ZI)V
    .locals 1
    .param p1, "scale"    # Z
    .param p2, "end"    # I

    .prologue
    .line 291
    iput p2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mSpinnerOffsetEnd:I

    .line 292
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mScale:Z

    .line 293
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;->invalidate()V

    .line 294
    return-void
.end method

.method public setProgressViewOffset(ZII)V
    .locals 1
    .param p1, "scale"    # Z
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 253
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mScale:Z

    .line 254
    iput p2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mOriginalOffsetTop:I

    .line 255
    iput p3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mSpinnerOffsetEnd:I

    .line 256
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mUsingCustomStart:Z

    .line 257
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->reset()V

    .line 258
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mRefreshing:Z

    .line 259
    return-void
.end method

.method public setRefreshing(Z)V
    .locals 4
    .param p1, "refreshing"    # Z

    .prologue
    const/4 v3, 0x0

    .line 411
    if-eqz p1, :cond_1

    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mRefreshing:Z

    if-eq v1, p1, :cond_1

    .line 413
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mRefreshing:Z

    .line 414
    const/4 v0, 0x0

    .line 415
    .local v0, "endTarget":I
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mUsingCustomStart:Z

    if-nez v1, :cond_0

    .line 416
    iget v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mSpinnerOffsetEnd:I

    iget v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mOriginalOffsetTop:I

    add-int v0, v1, v2

    .line 420
    :goto_0
    iget v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    sub-int v1, v0, v1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->setTargetOffsetTopAndBottom(IZ)V

    .line 422
    iput-boolean v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mNotify:Z

    .line 423
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mRefreshListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-direct {p0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->startScaleUpAnimation(Landroid/view/animation/Animation$AnimationListener;)V

    .line 427
    .end local v0    # "endTarget":I
    :goto_1
    return-void

    .line 418
    .restart local v0    # "endTarget":I
    :cond_0
    iget v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mSpinnerOffsetEnd:I

    goto :goto_0

    .line 425
    .end local v0    # "endTarget":I
    :cond_1
    invoke-direct {p0, p1, v3}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->setRefreshing(ZZ)V

    goto :goto_1
.end method

.method public setSize(I)V
    .locals 3
    .param p1, "size"    # I

    .prologue
    .line 300
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    .line 315
    :goto_0
    return-void

    .line 303
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 304
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    if-nez p1, :cond_1

    .line 305
    const/high16 v1, 0x42600000    # 56.0f

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mCircleDiameter:I

    .line 312
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 313
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mProgress:Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->updateSizes(I)V

    .line 314
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mProgress:Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 307
    :cond_1
    const/high16 v1, 0x42200000    # 40.0f

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mCircleDiameter:I

    goto :goto_1
.end method

.method setTargetOffsetTopAndBottom(IZ)V
    .locals 2
    .param p1, "offset"    # I
    .param p2, "requiresUpdate"    # Z

    .prologue
    .line 1186
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;->bringToFront()V

    .line 1187
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;

    invoke-static {v0, p1}, Lcom/samsung/android/support/sesl/core/view/SeslViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 1188
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;->getTop()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    .line 1189
    if-eqz p2, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 1190
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->invalidate()V

    .line 1192
    :cond_0
    return-void
.end method

.method public startNestedScroll(I)Z
    .locals 1
    .param p1, "axes"    # I

    .prologue
    .line 879
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mNestedScrollingChildHelper:Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;->startNestedScroll(I)Z

    move-result v0

    return v0
.end method

.method startScaleDownAnimation(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/view/animation/Animation$AnimationListener;

    .prologue
    .line 478
    new-instance v0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout$3;-><init>(Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mScaleDownAnimation:Landroid/view/animation/Animation;

    .line 484
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mScaleDownAnimation:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 485
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 486
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;->clearAnimation()V

    .line 487
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mScaleDownAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 488
    return-void
.end method

.method public stopNestedScroll()V
    .locals 1

    .prologue
    .line 884
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mNestedScrollingChildHelper:Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;->stopNestedScroll()V

    .line 885
    return-void
.end method
