.class public Lcom/android/systemui/statusbar/ScrimView;
.super Landroid/view/View;
.source "ScrimView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/ScrimView$1;,
        Lcom/android/systemui/statusbar/ScrimView$2;
    }
.end annotation


# instance fields
.field private mAlphaAnimator:Landroid/animation/ValueAnimator;

.field private mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mChangeRunnable:Ljava/lang/Runnable;

.field private mClearAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

.field private mDrawAsSrc:Z

.field private mExcludedRect:Landroid/graphics/Rect;

.field private mHasExcludedArea:Z

.field private mIsEmpty:Z

.field private mLeftInset:I

.field private final mPaint:Landroid/graphics/Paint;

.field private mScrimColor:I

.field private mViewAlpha:F


# direct methods
.method static synthetic -set0(Lcom/android/systemui/statusbar/ScrimView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/ScrimView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/systemui/statusbar/ScrimView;F)F
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/ScrimView;->mViewAlpha:F

    return p1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/ScrimView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/ScrimView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/ScrimView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 76
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 38
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mPaint:Landroid/graphics/Paint;

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mIsEmpty:Z

    .line 42
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mViewAlpha:F

    .line 44
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mExcludedRect:Landroid/graphics/Rect;

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mLeftInset:I

    .line 48
    new-instance v0, Lcom/android/systemui/statusbar/ScrimView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/ScrimView$1;-><init>(Lcom/android/systemui/statusbar/ScrimView;)V

    .line 47
    iput-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 55
    new-instance v0, Lcom/android/systemui/statusbar/ScrimView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/ScrimView$2;-><init>(Lcom/android/systemui/statusbar/ScrimView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mClearAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    .line 75
    return-void
.end method


# virtual methods
.method public animateViewAlpha(FJLandroid/view/animation/Interpolator;)V
    .locals 4
    .param p1, "alpha"    # F
    .param p2, "durationOut"    # J
    .param p4, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 160
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    iget v1, p0, Lcom/android/systemui/statusbar/ScrimView;->mViewAlpha:F

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    aput p1, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 161
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/systemui/statusbar/ScrimView;->mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 162
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/systemui/statusbar/ScrimView;->mClearAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 163
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 164
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 165
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 156
    return-void
.end method

.method public getScrimColorWithAlpha()I
    .locals 5

    .prologue
    .line 110
    iget v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mScrimColor:I

    .line 111
    .local v0, "color":I
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/systemui/statusbar/ScrimView;->mViewAlpha:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    .line 112
    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    .line 111
    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    .line 113
    return v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 81
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mDrawAsSrc:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mIsEmpty:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mViewAlpha:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 82
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mDrawAsSrc:Z

    if-eqz v0, :cond_2

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    .line 83
    .local v9, "mode":Landroid/graphics/PorterDuff$Mode;
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ScrimView;->getScrimColorWithAlpha()I

    move-result v8

    .line 84
    .local v8, "color":I
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mHasExcludedArea:Z

    if-nez v0, :cond_3

    .line 85
    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 80
    .end local v8    # "color":I
    .end local v9    # "mode":Landroid/graphics/PorterDuff$Mode;
    :cond_1
    :goto_1
    return-void

    .line 82
    :cond_2
    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    .restart local v9    # "mode":Landroid/graphics/PorterDuff$Mode;
    goto :goto_0

    .line 87
    .restart local v8    # "color":I
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 88
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mExcludedRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-lez v0, :cond_4

    .line 89
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ScrimView;->getWidth()I

    move-result v0

    int-to-float v3, v0

    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mExcludedRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/systemui/statusbar/ScrimView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 91
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mExcludedRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/android/systemui/statusbar/ScrimView;->mLeftInset:I

    add-int/2addr v0, v2

    if-lez v0, :cond_5

    .line 92
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mExcludedRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mExcludedRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lcom/android/systemui/statusbar/ScrimView;->mLeftInset:I

    add-int/2addr v0, v3

    int-to-float v3, v0

    .line 93
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mExcludedRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/systemui/statusbar/ScrimView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    .line 92
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 95
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mExcludedRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lcom/android/systemui/statusbar/ScrimView;->mLeftInset:I

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ScrimView;->getWidth()I

    move-result v2

    if-ge v0, v2, :cond_6

    .line 96
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mExcludedRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lcom/android/systemui/statusbar/ScrimView;->mLeftInset:I

    add-int/2addr v0, v2

    int-to-float v3, v0

    .line 97
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mExcludedRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v4, v0

    .line 98
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ScrimView;->getWidth()I

    move-result v0

    int-to-float v5, v0

    .line 99
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mExcludedRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v0

    .line 100
    iget-object v7, p0, Lcom/android/systemui/statusbar/ScrimView;->mPaint:Landroid/graphics/Paint;

    move-object v2, p1

    .line 96
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 102
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mExcludedRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ScrimView;->getHeight()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 103
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mExcludedRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ScrimView;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ScrimView;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/systemui/statusbar/ScrimView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_1
.end method

.method public setChangeRunnable(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "changeRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 185
    iput-object p1, p0, Lcom/android/systemui/statusbar/ScrimView;->mChangeRunnable:Ljava/lang/Runnable;

    .line 184
    return-void
.end method

.method public setDrawAsSrc(Z)V
    .locals 3
    .param p1, "asSrc"    # Z

    .prologue
    .line 117
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ScrimView;->mDrawAsSrc:Z

    .line 118
    iget-object v1, p0, Lcom/android/systemui/statusbar/ScrimView;->mPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mDrawAsSrc:Z

    if-eqz v0, :cond_0

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    :goto_0
    invoke-direct {v2, v0}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 120
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ScrimView;->invalidate()V

    .line 116
    return-void

    .line 119
    :cond_0
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0
.end method

.method public setExcludedArea(Landroid/graphics/Rect;)V
    .locals 7
    .param p1, "area"    # Landroid/graphics/Rect;

    .prologue
    const/4 v4, 0x0

    .line 169
    if-nez p1, :cond_0

    .line 170
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/ScrimView;->mHasExcludedArea:Z

    .line 171
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ScrimView;->invalidate()V

    .line 172
    return-void

    .line 175
    :cond_0
    iget v5, p1, Landroid/graphics/Rect;->left:I

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 176
    .local v1, "left":I
    iget v5, p1, Landroid/graphics/Rect;->top:I

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 177
    .local v3, "top":I
    iget v5, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ScrimView;->getWidth()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 178
    .local v2, "right":I
    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ScrimView;->getHeight()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 179
    .local v0, "bottom":I
    iget-object v5, p0, Lcom/android/systemui/statusbar/ScrimView;->mExcludedRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v1, v3, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 180
    if-ge v1, v2, :cond_1

    if-ge v3, v0, :cond_1

    const/4 v4, 0x1

    :cond_1
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/ScrimView;->mHasExcludedArea:Z

    .line 181
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ScrimView;->invalidate()V

    .line 168
    return-void
.end method

.method public setLeftInset(I)V
    .locals 1
    .param p1, "leftInset"    # I

    .prologue
    .line 189
    iget v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mLeftInset:I

    if-eq v0, p1, :cond_0

    .line 190
    iput p1, p0, Lcom/android/systemui/statusbar/ScrimView;->mLeftInset:I

    .line 192
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mHasExcludedArea:Z

    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ScrimView;->invalidate()V

    .line 188
    :cond_0
    return-void
.end method

.method public setScrimColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    const/4 v0, 0x0

    .line 124
    iget v1, p0, Lcom/android/systemui/statusbar/ScrimView;->mScrimColor:I

    if-eq p1, v1, :cond_1

    .line 125
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mIsEmpty:Z

    .line 126
    iput p1, p0, Lcom/android/systemui/statusbar/ScrimView;->mScrimColor:I

    .line 127
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ScrimView;->invalidate()V

    .line 128
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mChangeRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mChangeRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 123
    :cond_1
    return-void
.end method
