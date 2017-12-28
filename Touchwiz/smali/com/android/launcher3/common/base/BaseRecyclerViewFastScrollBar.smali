.class public Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;
.super Ljava/lang/Object;
.source "BaseRecyclerViewFastScrollBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar$FastScrollFocusableView;
    }
.end annotation


# static fields
.field private static final MAX_TRACK_ALPHA:I = 0x1e

.field private static final SCROLL_BAR_VIS_DURATION:I = 0x96


# instance fields
.field private mCanThumbDetach:Z

.field private mIgnoreDragGesture:Z

.field private mInvalidateRect:Landroid/graphics/Rect;

.field private mIsDragging:Z

.field private mIsThumbDetached:Z

.field private mLastTouchY:F

.field private mPopup:Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollPopup;

.field private mRv:Lcom/android/launcher3/common/base/view/BaseRecyclerView;

.field private mScrollbarAnimator:Landroid/animation/AnimatorSet;

.field private mThumbActiveColor:I

.field private mThumbCurvature:I

.field private mThumbHeight:I

.field private mThumbInactiveColor:I

.field private mThumbMaxWidth:I

.field private mThumbMinWidth:I

.field private mThumbOffset:Landroid/graphics/Point;

.field private mThumbPaint:Landroid/graphics/Paint;

.field private mThumbPath:Landroid/graphics/Path;

.field private mThumbWidth:I

.field private mTmpRect:Landroid/graphics/Rect;

.field private mTouchInset:I

.field private mTouchOffset:I

.field private mTrackPaint:Landroid/graphics/Paint;

.field private mTrackWidth:I


# direct methods
.method public constructor <init>(Lcom/android/launcher3/common/base/view/BaseRecyclerView;Landroid/content/res/Resources;)V
    .locals 2
    .param p1, "rv"    # Lcom/android/launcher3/common/base/view/BaseRecyclerView;
    .param p2, "res"    # Landroid/content/res/Resources;

    .prologue
    const/4 v1, -0x1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    .line 63
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbPath:Landroid/graphics/Path;

    .line 78
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mInvalidateRect:Landroid/graphics/Rect;

    .line 79
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mTmpRect:Landroid/graphics/Rect;

    .line 83
    iput-object p1, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mRv:Lcom/android/launcher3/common/base/view/BaseRecyclerView;

    .line 84
    new-instance v0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollPopup;

    invoke-direct {v0, p1, p2}, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollPopup;-><init>(Lcom/android/launcher3/common/base/view/BaseRecyclerView;Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mPopup:Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollPopup;

    .line 85
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mTrackPaint:Landroid/graphics/Paint;

    .line 86
    iget-object v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mTrackPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {p1, v1}, Lcom/android/launcher3/common/base/view/BaseRecyclerView;->getFastScrollerTrackColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 87
    iget-object v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mTrackPaint:Landroid/graphics/Paint;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 88
    const v0, 0x7f0e000d

    .line 89
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 88
    invoke-virtual {p1, v0}, Lcom/android/launcher3/common/base/view/BaseRecyclerView;->getFastScrollerThumbInactiveColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbInactiveColor:I

    .line 90
    const v0, 0x7f0e000c

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbActiveColor:I

    .line 91
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbPaint:Landroid/graphics/Paint;

    .line 92
    iget-object v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 93
    iget-object v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbInactiveColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 94
    iget-object v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 95
    const v0, 0x7f0a0120

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbMinWidth:I

    iput v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbWidth:I

    .line 96
    const v0, 0x7f0a011f

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbMaxWidth:I

    .line 97
    const v0, 0x7f0a011e

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbHeight:I

    .line 98
    iget v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbMaxWidth:I

    iget v1, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbMinWidth:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbCurvature:I

    .line 99
    const v0, 0x7f0a0121

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mTouchInset:I

    .line 100
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;)Landroid/graphics/Point;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;

    .prologue
    .line 40
    iget v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbWidth:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;

    .prologue
    .line 40
    iget v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbHeight:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;)Lcom/android/launcher3/common/base/view/BaseRecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mRv:Lcom/android/launcher3/common/base/view/BaseRecyclerView;

    return-object v0
.end method

.method private animateScrollbar(Z)V
    .locals 9
    .param p1, "isScrolling"    # Z

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 253
    iget-object v3, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mScrollbarAnimator:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_0

    .line 254
    iget-object v3, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mScrollbarAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    .line 257
    :cond_0
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mScrollbarAnimator:Landroid/animation/AnimatorSet;

    .line 258
    const-string v4, "trackWidth"

    new-array v5, v7, [I

    if-eqz p1, :cond_2

    iget v3, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbMaxWidth:I

    :goto_0
    aput v3, v5, v6

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 260
    .local v2, "trackWidthAnim":Landroid/animation/ObjectAnimator;
    const-string v4, "thumbWidth"

    new-array v5, v7, [I

    if-eqz p1, :cond_3

    iget v3, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbMaxWidth:I

    :goto_1
    aput v3, v5, v6

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 262
    .local v1, "thumbWidthAnim":Landroid/animation/ObjectAnimator;
    iget-object v3, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mScrollbarAnimator:Landroid/animation/AnimatorSet;

    new-array v4, v8, [Landroid/animation/Animator;

    aput-object v2, v4, v6

    aput-object v1, v4, v7

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 263
    iget v3, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbActiveColor:I

    iget v4, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbInactiveColor:I

    if-eq v3, v4, :cond_1

    .line 264
    new-instance v4, Landroid/animation/ArgbEvaluator;

    invoke-direct {v4}, Landroid/animation/ArgbEvaluator;-><init>()V

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbPaint:Landroid/graphics/Paint;

    .line 265
    invoke-virtual {v3}, Landroid/graphics/Paint;->getColor()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v6

    if-eqz p1, :cond_4

    iget v3, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbActiveColor:I

    :goto_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v7

    .line 264
    invoke-static {v4, v5}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 266
    .local v0, "colorAnimation":Landroid/animation/ValueAnimator;
    new-instance v3, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar$1;

    invoke-direct {v3, p0}, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar$1;-><init>(Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 274
    iget-object v3, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mScrollbarAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 276
    .end local v0    # "colorAnimation":Landroid/animation/ValueAnimator;
    :cond_1
    iget-object v3, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mScrollbarAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v4, 0x96

    invoke-virtual {v3, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 277
    iget-object v3, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mScrollbarAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 278
    return-void

    .line 258
    .end local v1    # "thumbWidthAnim":Landroid/animation/ObjectAnimator;
    .end local v2    # "trackWidthAnim":Landroid/animation/ObjectAnimator;
    :cond_2
    iget v3, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbMinWidth:I

    goto :goto_0

    .line 260
    .restart local v2    # "trackWidthAnim":Landroid/animation/ObjectAnimator;
    :cond_3
    iget v3, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbMinWidth:I

    goto :goto_1

    .line 265
    .restart local v1    # "thumbWidthAnim":Landroid/animation/ObjectAnimator;
    :cond_4
    iget v3, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbInactiveColor:I

    goto :goto_2
.end method

.method private isNearThumb(II)Z
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 299
    iget-object v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget v4, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbWidth:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget v5, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbHeight:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 301
    iget-object v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mTmpRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mTouchInset:I

    iget v2, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mTouchInset:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->inset(II)V

    .line 302
    iget-object v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method private updateThumbPath()V
    .locals 7

    .prologue
    .line 284
    iget v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbMaxWidth:I

    iget v1, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbWidth:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbCurvature:I

    .line 285
    iget-object v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 286
    iget-object v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget v2, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbWidth:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 287
    iget-object v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget v2, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbWidth:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget v3, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbHeight:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 288
    iget-object v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget v3, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbHeight:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 289
    iget-object v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget v3, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbHeight:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget v4, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbCurvature:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget v5, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbHeight:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 292
    iget-object v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 293
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-gez v0, :cond_1

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 240
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mTrackPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    if-lez v0, :cond_2

    .line 241
    iget-object v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget v3, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbWidth:I

    add-int/2addr v0, v3

    int-to-float v3, v0

    iget-object v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mRv:Lcom/android/launcher3/common/base/view/BaseRecyclerView;

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/BaseRecyclerView;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mTrackPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 243
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 246
    iget-object v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mPopup:Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollPopup;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollPopup;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public getLastTouchY()F
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mLastTouchY:F

    return v0
.end method

.method public getThumbHeight()I
    .locals 1

    .prologue
    .line 158
    iget v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbHeight:I

    return v0
.end method

.method public getThumbMaxWidth()I
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbMaxWidth:I

    return v0
.end method

.method public getThumbOffset()Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    return-object v0
.end method

.method public getThumbWidth()I
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbWidth:I

    return v0
.end method

.method public getTrackWidth()I
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mTrackWidth:I

    return v0
.end method

.method public handleTouchEvent(Landroid/view/MotionEvent;III)V
    .locals 10
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "downX"    # I
    .param p3, "downY"    # I
    .param p4, "lastY"    # I

    .prologue
    .line 182
    iget-object v7, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mRv:Lcom/android/launcher3/common/base/view/BaseRecyclerView;

    invoke-virtual {v7}, Lcom/android/launcher3/common/base/view/BaseRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    .line 184
    .local v3, "config":Landroid/view/ViewConfiguration;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 185
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v6, v7

    .line 186
    .local v6, "y":I
    packed-switch v0, :pswitch_data_0

    .line 232
    :cond_0
    :goto_0
    return-void

    .line 188
    :pswitch_0
    invoke-direct {p0, p2, p3}, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->isNearThumb(II)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 189
    iget-object v7, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    sub-int v7, p3, v7

    iput v7, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mTouchOffset:I

    goto :goto_0

    .line 195
    :pswitch_1
    iget-boolean v8, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mIgnoreDragGesture:Z

    sub-int v7, v6, p3

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v9

    if-le v7, v9, :cond_3

    const/4 v7, 0x1

    :goto_1
    or-int/2addr v7, v8

    iput-boolean v7, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mIgnoreDragGesture:Z

    .line 196
    iget-boolean v7, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mIsDragging:Z

    if-nez v7, :cond_2

    iget-boolean v7, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mIgnoreDragGesture:Z

    if-nez v7, :cond_2

    invoke-direct {p0, p2, p4}, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->isNearThumb(II)Z

    move-result v7

    if-eqz v7, :cond_2

    sub-int v7, v6, p3

    .line 197
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v8

    if-le v7, v8, :cond_2

    .line 198
    iget-object v7, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mRv:Lcom/android/launcher3/common/base/view/BaseRecyclerView;

    invoke-virtual {v7}, Lcom/android/launcher3/common/base/view/BaseRecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 199
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mIsDragging:Z

    .line 200
    iget-boolean v7, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mCanThumbDetach:Z

    if-eqz v7, :cond_1

    .line 201
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mIsThumbDetached:Z

    .line 203
    :cond_1
    iget v7, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mTouchOffset:I

    sub-int v8, p4, p3

    add-int/2addr v7, v8

    iput v7, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mTouchOffset:I

    .line 204
    iget-object v7, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mPopup:Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollPopup;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollPopup;->animateVisibility(Z)V

    .line 205
    const/4 v7, 0x1

    invoke-direct {p0, v7}, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->animateScrollbar(Z)V

    .line 207
    :cond_2
    iget-boolean v7, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mIsDragging:Z

    if-eqz v7, :cond_0

    .line 209
    iget-object v7, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mRv:Lcom/android/launcher3/common/base/view/BaseRecyclerView;

    invoke-virtual {v7}, Lcom/android/launcher3/common/base/view/BaseRecyclerView;->getBackgroundPadding()Landroid/graphics/Rect;

    move-result-object v7

    iget v5, v7, Landroid/graphics/Rect;->top:I

    .line 210
    .local v5, "top":I
    iget-object v7, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mRv:Lcom/android/launcher3/common/base/view/BaseRecyclerView;

    invoke-virtual {v7}, Lcom/android/launcher3/common/base/view/BaseRecyclerView;->getHeight()I

    move-result v7

    iget-object v8, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mRv:Lcom/android/launcher3/common/base/view/BaseRecyclerView;

    invoke-virtual {v8}, Lcom/android/launcher3/common/base/view/BaseRecyclerView;->getBackgroundPadding()Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbHeight:I

    sub-int v1, v7, v8

    .line 211
    .local v1, "bottom":I
    iget v7, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mTouchOffset:I

    sub-int v7, v6, v7

    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    int-to-float v2, v7

    .line 212
    .local v2, "boundedY":F
    iget-object v7, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mRv:Lcom/android/launcher3/common/base/view/BaseRecyclerView;

    int-to-float v8, v5

    sub-float v8, v2, v8

    sub-int v9, v1, v5

    int-to-float v9, v9

    div-float/2addr v8, v9

    invoke-virtual {v7, v8}, Lcom/android/launcher3/common/base/view/BaseRecyclerView;->scrollToPositionAtProgress(F)Ljava/lang/String;

    move-result-object v4

    .line 214
    .local v4, "sectionName":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mPopup:Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollPopup;

    invoke-virtual {v7, v4}, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollPopup;->setSectionName(Ljava/lang/String;)V

    .line 215
    iget-object v8, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mPopup:Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollPopup;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    const/4 v7, 0x1

    :goto_2
    invoke-virtual {v8, v7}, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollPopup;->animateVisibility(Z)V

    .line 216
    iget-object v7, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mRv:Lcom/android/launcher3/common/base/view/BaseRecyclerView;

    iget-object v8, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mPopup:Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollPopup;

    iget-object v9, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mRv:Lcom/android/launcher3/common/base/view/BaseRecyclerView;

    invoke-virtual {v8, v9, p4}, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollPopup;->updateFastScrollerBounds(Lcom/android/launcher3/common/base/view/BaseRecyclerView;I)Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/launcher3/common/base/view/BaseRecyclerView;->invalidate(Landroid/graphics/Rect;)V

    .line 217
    iput v2, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mLastTouchY:F

    goto/16 :goto_0

    .line 195
    .end local v1    # "bottom":I
    .end local v2    # "boundedY":F
    .end local v4    # "sectionName":Ljava/lang/String;
    .end local v5    # "top":I
    :cond_3
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 215
    .restart local v1    # "bottom":I
    .restart local v2    # "boundedY":F
    .restart local v4    # "sectionName":Ljava/lang/String;
    .restart local v5    # "top":I
    :cond_4
    const/4 v7, 0x0

    goto :goto_2

    .line 222
    .end local v1    # "bottom":I
    .end local v2    # "boundedY":F
    .end local v4    # "sectionName":Ljava/lang/String;
    .end local v5    # "top":I
    :pswitch_2
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mTouchOffset:I

    .line 223
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mLastTouchY:F

    .line 224
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mIgnoreDragGesture:Z

    .line 225
    iget-boolean v7, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mIsDragging:Z

    if-eqz v7, :cond_0

    .line 226
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mIsDragging:Z

    .line 227
    iget-object v7, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mPopup:Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollPopup;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollPopup;->animateVisibility(Z)V

    .line 228
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->animateScrollbar(Z)V

    goto/16 :goto_0

    .line 186
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public isDraggingThumb()Z
    .locals 1

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mIsDragging:Z

    return v0
.end method

.method public isThumbDetached()Z
    .locals 1

    .prologue
    .line 174
    iget-boolean v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mIsThumbDetached:Z

    return v0
.end method

.method public reattachThumbToScroll()V
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mIsThumbDetached:Z

    .line 108
    return-void
.end method

.method public setDetachThumbOnFastScroll()V
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mCanThumbDetach:Z

    .line 104
    return-void
.end method

.method public setThumbOffset(II)V
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-ne v0, p2, :cond_0

    .line 121
    :goto_0
    return-void

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mInvalidateRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget v2, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbCurvature:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget v4, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbWidth:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget v5, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbHeight:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 116
    iget-object v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Point;->set(II)V

    .line 117
    invoke-direct {p0}, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->updateThumbPath()V

    .line 118
    iget-object v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mInvalidateRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget v2, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbCurvature:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget v4, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbWidth:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget v5, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbHeight:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->union(IIII)V

    .line 120
    iget-object v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mRv:Lcom/android/launcher3/common/base/view/BaseRecyclerView;

    iget-object v1, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mInvalidateRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/base/view/BaseRecyclerView;->invalidate(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public setThumbWidth(I)V
    .locals 6
    .param p1, "width"    # I

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mInvalidateRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget v2, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbCurvature:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget v4, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbWidth:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget v5, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbHeight:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 131
    iput p1, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbWidth:I

    .line 132
    invoke-direct {p0}, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->updateThumbPath()V

    .line 133
    iget-object v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mInvalidateRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget v2, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbCurvature:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget v4, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbWidth:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget v5, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbHeight:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->union(IIII)V

    .line 135
    iget-object v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mRv:Lcom/android/launcher3/common/base/view/BaseRecyclerView;

    iget-object v1, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mInvalidateRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/base/view/BaseRecyclerView;->invalidate(Landroid/graphics/Rect;)V

    .line 136
    return-void
.end method

.method public setTrackWidth(I)V
    .locals 5
    .param p1, "width"    # I

    .prologue
    const/4 v4, 0x0

    .line 144
    iget-object v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mInvalidateRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget v2, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbCurvature:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget v3, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbWidth:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mRv:Lcom/android/launcher3/common/base/view/BaseRecyclerView;

    .line 145
    invoke-virtual {v3}, Lcom/android/launcher3/common/base/view/BaseRecyclerView;->getHeight()I

    move-result v3

    .line 144
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 146
    iput p1, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mTrackWidth:I

    .line 147
    invoke-direct {p0}, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->updateThumbPath()V

    .line 148
    iget-object v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mInvalidateRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget v2, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbCurvature:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbOffset:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget v3, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mThumbWidth:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mRv:Lcom/android/launcher3/common/base/view/BaseRecyclerView;

    .line 149
    invoke-virtual {v3}, Lcom/android/launcher3/common/base/view/BaseRecyclerView;->getHeight()I

    move-result v3

    .line 148
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/graphics/Rect;->union(IIII)V

    .line 150
    iget-object v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mRv:Lcom/android/launcher3/common/base/view/BaseRecyclerView;

    iget-object v1, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->mInvalidateRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/base/view/BaseRecyclerView;->invalidate(Landroid/graphics/Rect;)V

    .line 151
    return-void
.end method
