.class public Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;
.super Landroid/support/v7/widget/AppCompatImageView;
.source "DialIndicatorView.java"


# static fields
.field private static final COLLAPSE_ANIM_DURATION:I = 0xc8

.field private static final COLLAPSE_ANIM_START_DELAY:I = 0x190

.field private static final FAST_DIAL_GLOW_HALF_SWEEP_ANGLE_DEGREES:I = 0x1c

.field private static final FAST_DIAL_GLOW_MAX_ALPHA:I = 0x64

.field private static final GLOW_INDICATOR_SWEEP_ANGLE_DEGREES:I = 0x1

.field private static final NEEDLE_INDICATOR_SWEEP_ANGLE_DEGREES:F = 1.5f

.field private static final ROTATE_ANIM_START_DELAY:I = 0x96

.field private static final SLOW_DIAL_GLOW_HALF_SWEEP_ANGLE_DEGREES:I = 0xc

.field private static final SLOW_DIAL_GLOW_MAX_ALPHA:I = 0x4b


# instance fields
.field private mCollapseGlowAnim:Landroid/animation/AnimatorSet;

.field private mFastDialGlowHalfSweepAngleDeg:I

.field private mIndicatorLength:F

.field private mIndicatorPaint:Landroid/graphics/Paint;

.field private mIndicatorPath:Landroid/graphics/RectF;

.field private mIsGlowCollapsed:Z

.field private mReservedBlankSegmentIndices:[I

.field private mRingSegments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSegmentStartAngles:[F

.field private mSegmentSweepAngles:[F

.field private mSelectedMainIndex:I

.field private mSelectedSubIndex:I

.field private mSlowDialGlowHalfSweepAngleDeg:I

.field private mTouchPointAngle:F

.field private mViewHeight:I

.field private mViewWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "arg0"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 82
    invoke-direct {p0, p1}, Landroid/support/v7/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    .line 42
    const/high16 v0, 0x41f00000    # 30.0f

    iput v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->mIndicatorLength:F

    .line 45
    iput-object v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->mIndicatorPaint:Landroid/graphics/Paint;

    .line 48
    iput-object v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->mIndicatorPath:Landroid/graphics/RectF;

    .line 59
    iput v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->mSelectedMainIndex:I

    .line 60
    iput v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->mSelectedSubIndex:I

    .line 61
    const/high16 v0, 0x7fc00000    # NaNf

    iput v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->mTouchPointAngle:F

    .line 62
    const/16 v0, 0x1c

    iput v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->mFastDialGlowHalfSweepAngleDeg:I

    .line 63
    const/16 v0, 0xc

    iput v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->mSlowDialGlowHalfSweepAngleDeg:I

    .line 65
    iput-boolean v3, p0, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->mIsGlowCollapsed:Z

    .line 84
    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 76
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    const/high16 v0, 0x41f00000    # 30.0f

    iput v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->mIndicatorLength:F

    .line 45
    iput-object v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->mIndicatorPaint:Landroid/graphics/Paint;

    .line 48
    iput-object v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->mIndicatorPath:Landroid/graphics/RectF;

    .line 59
    iput v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->mSelectedMainIndex:I

    .line 60
    iput v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->mSelectedSubIndex:I

    .line 61
    const/high16 v0, 0x7fc00000    # NaNf

    iput v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->mTouchPointAngle:F

    .line 62
    const/16 v0, 0x1c

    iput v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->mFastDialGlowHalfSweepAngleDeg:I

    .line 63
    const/16 v0, 0xc

    iput v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->mSlowDialGlowHalfSweepAngleDeg:I

    .line 65
    iput-boolean v3, p0, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->mIsGlowCollapsed:Z

    .line 78
    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # Landroid/util/AttributeSet;
    .param p3, "arg2"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 70
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    const/high16 v0, 0x41f00000    # 30.0f

    iput v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->mIndicatorLength:F

    .line 45
    iput-object v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->mIndicatorPaint:Landroid/graphics/Paint;

    .line 48
    iput-object v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->mIndicatorPath:Landroid/graphics/RectF;

    .line 59
    iput v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->mSelectedMainIndex:I

    .line 60
    iput v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->mSelectedSubIndex:I

    .line 61
    const/high16 v0, 0x7fc00000    # NaNf

    iput v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->mTouchPointAngle:F

    .line 62
    const/16 v0, 0x1c

    iput v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->mFastDialGlowHalfSweepAngleDeg:I

    .line 63
    const/16 v0, 0xc

    iput v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->mSlowDialGlowHalfSweepAngleDeg:I

    .line 65
    iput-boolean v3, p0, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->mIsGlowCollapsed:Z

    .line 72
    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;
    .param p1, "x1"    # I

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->setGlowHalfSweepAngle(I)V

    return-void
.end method

.method static synthetic access$102(Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;
    .param p1, "x1"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->mCollapseGlowAnim:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$202(Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;
    .param p1, "x1"    # I

    .prologue
    .line 23
    iput p1, p0, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->mFastDialGlowHalfSweepAngleDeg:I

    return p1
.end method

.method static synthetic access$302(Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;
    .param p1, "x1"    # I

    .prologue
    .line 23
    iput p1, p0, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->mSlowDialGlowHalfSweepAngleDeg:I

    return p1
.end method

.method static synthetic access$402(Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;
    .param p1, "x1"    # Z

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->mIsGlowCollapsed:Z

    return p1
.end method

.method private calculateView()V
    .locals 1

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    :goto_0
    return-void

    .line 159
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->createPaintObjects()V

    .line 161
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->createPathObjects()V

    goto :goto_0
.end method

.method private createPaintObjects()V
    .locals 2

    .prologue
    .line 168
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->mIndicatorPaint:Landroid/graphics/Paint;

    .line 169
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->mIndicatorPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 170
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->mIndicatorPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 171
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->mIndicatorPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->mIndicatorLength:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 172
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->mIndicatorPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 173
    return-void
.end method

.method private createPathObjects()V
    .locals 7

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 179
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->getPaddingLeft()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->mIndicatorLength:F

    div-float/2addr v5, v6

    sub-float v1, v4, v5

    .line 180
    .local v1, "left":F
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->getPaddingTop()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->mIndicatorLength:F

    div-float/2addr v5, v6

    sub-float v3, v4, v5

    .line 181
    .local v3, "top":F
    iget v4, p0, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->mViewWidth:I

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->mIndicatorLength:F

    div-float/2addr v5, v6

    add-float v2, v4, v5

    .line 182
    .local v2, "right":F
    iget v4, p0, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->mViewHeight:I

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->mIndicatorLength:F

    div-float/2addr v5, v6

    add-float v0, v4, v5

    .line 184
    .local v0, "bottom":F
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v1, v3, v2, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v4, p0, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->mIndicatorPath:Landroid/graphics/RectF;

    .line 185
    return-void
.end method

.method private setGlowHalfSweepAngle(I)V
    .locals 1
    .param p1, "angleDeg"    # I

    .prologue
    .line 100
    iget v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->mTouchPointAngle:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    iput p1, p0, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->mFastDialGlowHalfSweepAngleDeg:I

    .line 106
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->invalidate()V

    .line 107
    return-void

    .line 103
    :cond_0
    iput p1, p0, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->mSlowDialGlowHalfSweepAngleDeg:I

    goto :goto_0
.end method


# virtual methods
.method public cancelGlowIndicatorCollapse()V
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->mCollapseGlowAnim:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->mCollapseGlowAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 310
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->mCollapseGlowAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 315
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->mCollapseGlowAnim:Landroid/animation/AnimatorSet;

    .line 317
    :cond_0
    return-void

    .line 312
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->mCollapseGlowAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    goto :goto_0
.end method

.method public collapseGlowIndicator()V
    .locals 15

    .prologue
    const/4 v14, 0x2

    const/4 v13, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x1

    .line 222
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->cancelGlowIndicatorCollapse()V

    .line 224
    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v9, p0, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->mCollapseGlowAnim:Landroid/animation/AnimatorSet;

    .line 225
    const/4 v0, 0x0

    .line 228
    .local v0, "b":Landroid/animation/AnimatorSet$Builder;
    iget v9, p0, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->mTouchPointAngle:F

    invoke-static {v9}, Ljava/lang/Float;->isNaN(F)Z

    move-result v9

    if-nez v9, :cond_0

    iget v9, p0, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->mSelectedMainIndex:I

    if-le v9, v11, :cond_0

    iget v9, p0, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->mSelectedMainIndex:I

    iget-object v10, p0, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->mSegmentStartAngles:[F

    array-length v10, v10

    if-ge v9, v10, :cond_0

    .line 232
    iget-object v9, p0, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->mSegmentStartAngles:[F

    iget v10, p0, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->mSelectedMainIndex:I

    aget v4, v9, v10

    .line 233
    .local v4, "majorStartAngle":F
    iget-object v9, p0, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->mRingSegments:Ljava/util/List;

    iget v10, p0, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->mSelectedMainIndex:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 235
    .local v6, "numMinorSegments":I
    iget v9, p0, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->mSelectedSubIndex:I

    if-eq v9, v11, :cond_0

    .line 236
    iget-object v9, p0, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->mSegmentSweepAngles:[F

    iget v10, p0, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->mSelectedMainIndex:I

    aget v9, v9, v10

    int-to-float v10, v6

    div-float v8, v9, v10

    .line 237
    .local v8, "sweepAngle":F
    iget v9, p0, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->mSelectedSubIndex:I

    int-to-float v9, v9

    mul-float/2addr v9, v8

    add-float v5, v4, v9

    .line 238
    .local v5, "minorStartAngle":F
    const/high16 v9, 0x40000000    # 2.0f

    div-float v9, v8, v9

    add-float v2, v5, v9

    .line 239
    .local v2, "indicatorCenterAngle":F
    const/high16 v9, 0x3f400000    # 0.75f

    sub-float v3, v2, v9

    .line 241
    .local v3, "indicatorStartAngle":F
    new-array v9, v14, [F

    iget v10, p0, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->mTouchPointAngle:F

    aput v10, v9, v13

    float-to-double v10, v3

    invoke-static {v10, v11}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v10

    double-to-float v10, v10

    aput v10, v9, v12

    invoke-static {v9}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v7

    .line 242
    .local v7, "rotateAnim":Landroid/animation/ValueAnimator;
    new-instance v9, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v9}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v7, v9}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 243
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const/high16 v10, 0x10e0000

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    int-to-long v10, v9

    invoke-virtual {v7, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 244
    const-wide/16 v10, 0x96

    invoke-virtual {v7, v10, v11}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 245
    new-instance v9, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView$1;

    invoke-direct {v9, p0}, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView$1;-><init>(Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;)V

    invoke-virtual {v7, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 254
    iget-object v9, p0, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->mCollapseGlowAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v9, v7}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    .line 259
    .end local v2    # "indicatorCenterAngle":F
    .end local v3    # "indicatorStartAngle":F
    .end local v4    # "majorStartAngle":F
    .end local v5    # "minorStartAngle":F
    .end local v6    # "numMinorSegments":I
    .end local v7    # "rotateAnim":Landroid/animation/ValueAnimator;
    .end local v8    # "sweepAngle":F
    :cond_0
    new-array v10, v14, [I

    iget v9, p0, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->mTouchPointAngle:F

    .line 260
    invoke-static {v9}, Ljava/lang/Float;->isNaN(F)Z

    move-result v9

    if-nez v9, :cond_1

    const/16 v9, 0x1c

    :goto_0
    aput v9, v10, v13

    aput v12, v10, v12

    .line 259
    invoke-static {v10}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 265
    .local v1, "collapseAnim":Landroid/animation/ValueAnimator;
    new-instance v9, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v9}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v9}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 266
    const-wide/16 v10, 0xc8

    invoke-virtual {v1, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 267
    new-instance v9, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView$2;

    invoke-direct {v9, p0}, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView$2;-><init>(Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;)V

    invoke-virtual {v1, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 276
    if-eqz v0, :cond_2

    .line 277
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 283
    :goto_1
    iget-object v9, p0, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->mCollapseGlowAnim:Landroid/animation/AnimatorSet;

    new-instance v10, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView$3;

    invoke-direct {v10, p0}, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView$3;-><init>(Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;)V

    invoke-virtual {v9, v10}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 299
    iget-object v9, p0, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->mCollapseGlowAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v9}, Landroid/animation/AnimatorSet;->start()V

    .line 300
    return-void

    .line 260
    .end local v1    # "collapseAnim":Landroid/animation/ValueAnimator;
    :cond_1
    const/16 v9, 0xc

    goto :goto_0

    .line 279
    .restart local v1    # "collapseAnim":Landroid/animation/ValueAnimator;
    :cond_2
    const-wide/16 v10, 0x190

    invoke-virtual {v1, v10, v11}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 280
    iget-object v9, p0, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->mCollapseGlowAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v9, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 25
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 321
    invoke-super/range {p0 .. p1}, Landroid/support/v7/widget/AppCompatImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 323
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->isInEditMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 394
    :cond_0
    :goto_0
    return-void

    .line 327
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->mTouchPointAngle:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->mRingSegments:Ljava/util/List;

    if-eqz v2, :cond_3

    .line 329
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->mSelectedMainIndex:I

    const/4 v3, -0x1

    if-le v2, v3, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->mSelectedMainIndex:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->mSegmentStartAngles:[F

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 330
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->mSegmentStartAngles:[F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->mSelectedMainIndex:I

    aget v19, v2, v3

    .line 331
    .local v19, "majorStartAngle":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->mRingSegments:Ljava/util/List;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->mSelectedMainIndex:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v22

    .line 333
    .local v22, "numMinorSegments":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->mSelectedSubIndex:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 334
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->mSegmentSweepAngles:[F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->mSelectedMainIndex:I

    aget v2, v2, v3

    move/from16 v0, v22

    int-to-float v3, v0

    div-float v24, v2, v3

    .line 335
    .local v24, "sweepAngle":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->mSelectedSubIndex:I

    int-to-float v2, v2

    mul-float v2, v2, v24

    add-float v20, v19, v2

    .line 336
    .local v20, "minorStartAngle":F
    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v24, v2

    add-float v18, v20, v2

    .line 337
    .local v18, "indicatorCenterAngle":F
    const/high16 v2, 0x3f400000    # 0.75f

    sub-float v4, v18, v2

    .line 339
    .local v4, "indicatorStartAngle":F
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    instance-of v2, v2, Lcom/samsung/android/app/music/milk/radio/drawable/RainbowRingDrawable;

    if-eqz v2, :cond_2

    .line 340
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v23

    check-cast v23, Lcom/samsung/android/app/music/milk/radio/drawable/RainbowRingDrawable;

    .line 343
    .local v23, "rainbowRing":Lcom/samsung/android/app/music/milk/radio/drawable/RainbowRingDrawable;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->mIndicatorPaint:Landroid/graphics/Paint;

    move-object/from16 v0, v23

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/radio/drawable/RainbowRingDrawable;->calculateColor(F)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 344
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->mIndicatorPath:Landroid/graphics/RectF;

    const/high16 v5, 0x3fc00000    # 1.5f

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->mIndicatorPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 347
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->mIsGlowCollapsed:Z

    if-nez v2, :cond_0

    .line 348
    const/high16 v2, 0x3f000000    # 0.5f

    sub-float v4, v18, v2

    .line 350
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->mSlowDialGlowHalfSweepAngleDeg:I

    int-to-float v2, v2

    sub-float v7, v4, v2

    .local v7, "i":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->mSlowDialGlowHalfSweepAngleDeg:I

    int-to-float v2, v2

    add-float v21, v4, v2

    .local v21, "n":F
    :goto_1
    cmpg-float v2, v7, v21

    if-gez v2, :cond_0

    .line 351
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->mIndicatorPaint:Landroid/graphics/Paint;

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Lcom/samsung/android/app/music/milk/radio/drawable/RainbowRingDrawable;->calculateColor(F)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 357
    const/high16 v2, -0x3d6a0000    # -75.0f

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->mSlowDialGlowHalfSweepAngleDeg:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    sub-float v3, v7, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float/2addr v2, v3

    const/high16 v3, 0x42960000    # 75.0f

    add-float/2addr v2, v3

    float-to-int v0, v2

    move/from16 v17, v0

    .line 358
    .local v17, "alpha":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->mIndicatorPaint:Landroid/graphics/Paint;

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 361
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->mIndicatorPath:Landroid/graphics/RectF;

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->mIndicatorPaint:Landroid/graphics/Paint;

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 350
    float-to-double v2, v7

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v8

    double-to-float v7, v2

    goto :goto_1

    .line 366
    .end local v7    # "i":F
    .end local v17    # "alpha":I
    .end local v21    # "n":F
    .end local v23    # "rainbowRing":Lcom/samsung/android/app/music/milk/radio/drawable/RainbowRingDrawable;
    :cond_2
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->mIndicatorPath:Landroid/graphics/RectF;

    const/high16 v11, 0x3fc00000    # 1.5f

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->mIndicatorPaint:Landroid/graphics/Paint;

    move-object/from16 v8, p1

    move v10, v4

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 370
    .end local v4    # "indicatorStartAngle":F
    .end local v18    # "indicatorCenterAngle":F
    .end local v19    # "majorStartAngle":F
    .end local v20    # "minorStartAngle":F
    .end local v22    # "numMinorSegments":I
    .end local v24    # "sweepAngle":F
    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->mTouchPointAngle:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    instance-of v2, v2, Lcom/samsung/android/app/music/milk/radio/drawable/RainbowRingDrawable;

    if-eqz v2, :cond_0

    .line 372
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v23

    check-cast v23, Lcom/samsung/android/app/music/milk/radio/drawable/RainbowRingDrawable;

    .line 373
    .restart local v23    # "rainbowRing":Lcom/samsung/android/app/music/milk/radio/drawable/RainbowRingDrawable;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->mTouchPointAngle:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    double-to-float v10, v2

    .line 376
    .local v10, "indicatorAngleDegrees":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->mIndicatorPaint:Landroid/graphics/Paint;

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Lcom/samsung/android/app/music/milk/radio/drawable/RainbowRingDrawable;->calculateColor(F)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 377
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->mIndicatorPath:Landroid/graphics/RectF;

    const/high16 v11, 0x3fc00000    # 1.5f

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->mIndicatorPaint:Landroid/graphics/Paint;

    move-object/from16 v8, p1

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 380
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->mFastDialGlowHalfSweepAngleDeg:I

    int-to-float v2, v2

    sub-float v7, v10, v2

    .restart local v7    # "i":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->mFastDialGlowHalfSweepAngleDeg:I

    int-to-float v2, v2

    add-float v21, v10, v2

    .restart local v21    # "n":F
    :goto_2
    cmpg-float v2, v7, v21

    if-gez v2, :cond_0

    .line 381
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->mIndicatorPaint:Landroid/graphics/Paint;

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Lcom/samsung/android/app/music/milk/radio/drawable/RainbowRingDrawable;->calculateColor(F)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 387
    const/high16 v2, -0x3d380000    # -100.0f

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->mFastDialGlowHalfSweepAngleDeg:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    sub-float v3, v7, v10

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float/2addr v2, v3

    const/high16 v3, 0x42c80000    # 100.0f

    add-float/2addr v2, v3

    float-to-int v0, v2

    move/from16 v17, v0

    .line 388
    .restart local v17    # "alpha":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->mIndicatorPaint:Landroid/graphics/Paint;

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 391
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->mIndicatorPath:Landroid/graphics/RectF;

    const/high16 v14, 0x3f800000    # 1.0f

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->mIndicatorPaint:Landroid/graphics/Paint;

    move-object/from16 v16, v0

    move-object/from16 v11, p1

    move v13, v7

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 380
    float-to-double v2, v7

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v8

    double-to-float v7, v2

    goto :goto_2
.end method

.method protected onMeasure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 143
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/AppCompatImageView;->onMeasure(II)V

    .line 145
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->mViewWidth:I

    .line 146
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->mViewHeight:I

    .line 147
    return-void
.end method

.method public setIndicatorLength(F)V
    .locals 0
    .param p1, "length"    # F

    .prologue
    .line 90
    iput p1, p0, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->mIndicatorLength:F

    .line 92
    return-void
.end method

.method public setMainSelected(I)V
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 188
    iput p1, p0, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->mSelectedMainIndex:I

    .line 190
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->mReservedBlankSegmentIndices:[I

    if-eqz v1, :cond_1

    .line 191
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->mReservedBlankSegmentIndices:[I

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget v0, v2, v1

    .line 192
    .local v0, "currReservedIndex":I
    iget v4, p0, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->mSelectedMainIndex:I

    if-lt v4, v0, :cond_0

    .line 193
    iget v4, p0, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->mSelectedMainIndex:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->mSelectedMainIndex:I

    .line 191
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 197
    .end local v0    # "currReservedIndex":I
    :cond_1
    return-void
.end method

.method public varargs setRingSegments(Ljava/util/List;[F[F[I)V
    .locals 5
    .param p2, "segmentStartAngles"    # [F
    .param p3, "segmentSweepAngles"    # [F
    .param p4, "reservedBlankSegments"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;[F[F[I)V"
        }
    .end annotation

    .prologue
    .line 123
    .local p1, "segments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 124
    .local v0, "numSegments":I
    array-length v1, p2

    .line 125
    .local v1, "numStartAngles":I
    array-length v2, p3

    .line 127
    .local v2, "numSweepAngles":I
    if-ne v0, v1, :cond_0

    if-ne v0, v2, :cond_0

    if-eq v1, v2, :cond_1

    .line 130
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "segment list and array arguments must have the same number of elements!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 133
    :cond_1
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->mRingSegments:Ljava/util/List;

    .line 134
    iput-object p2, p0, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->mSegmentStartAngles:[F

    .line 135
    iput-object p3, p0, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->mSegmentSweepAngles:[F

    .line 136
    iput-object p4, p0, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->mReservedBlankSegmentIndices:[I

    .line 138
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->calculateView()V

    .line 139
    return-void
.end method

.method public setSubSelected(IZ)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "showIndicatorGlow"    # Z

    .prologue
    .line 200
    iput p1, p0, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->mSelectedSubIndex:I

    .line 201
    if-nez p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->mIsGlowCollapsed:Z

    .line 203
    iget v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->mTouchPointAngle:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->invalidate()V

    .line 206
    :cond_0
    return-void

    .line 201
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTouchPointAngle(F)V
    .locals 1
    .param p1, "angleRad"    # F

    .prologue
    .line 213
    iput p1, p0, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->mTouchPointAngle:F

    .line 214
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->mIsGlowCollapsed:Z

    .line 215
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->invalidate()V

    .line 216
    return-void
.end method
