.class public Lcom/samsung/android/edgelighting/view/EdgeAppLightEffectView;
.super Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;
.source "EdgeAppLightEffectView.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private lineDuration:J

.field mHsvColors:[F

.field private mSubColor:I

.field repeatColorAnimation:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;-><init>(Landroid/content/Context;)V

    .line 15
    const-class v0, Lcom/samsung/android/edgelighting/view/EdgeAppLightEffectView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeAppLightEffectView;->TAG:Ljava/lang/String;

    .line 17
    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lcom/samsung/android/edgelighting/view/EdgeAppLightEffectView;->lineDuration:J

    .line 104
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeAppLightEffectView;->mHsvColors:[F

    .line 23
    invoke-direct {p0}, Lcom/samsung/android/edgelighting/view/EdgeAppLightEffectView;->init()V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    const-class v0, Lcom/samsung/android/edgelighting/view/EdgeAppLightEffectView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeAppLightEffectView;->TAG:Ljava/lang/String;

    .line 17
    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lcom/samsung/android/edgelighting/view/EdgeAppLightEffectView;->lineDuration:J

    .line 104
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeAppLightEffectView;->mHsvColors:[F

    .line 28
    invoke-direct {p0}, Lcom/samsung/android/edgelighting/view/EdgeAppLightEffectView;->init()V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 15
    const-class v0, Lcom/samsung/android/edgelighting/view/EdgeAppLightEffectView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeAppLightEffectView;->TAG:Ljava/lang/String;

    .line 17
    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lcom/samsung/android/edgelighting/view/EdgeAppLightEffectView;->lineDuration:J

    .line 104
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeAppLightEffectView;->mHsvColors:[F

    .line 33
    invoke-direct {p0}, Lcom/samsung/android/edgelighting/view/EdgeAppLightEffectView;->init()V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 15
    const-class v0, Lcom/samsung/android/edgelighting/view/EdgeAppLightEffectView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeAppLightEffectView;->TAG:Ljava/lang/String;

    .line 17
    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lcom/samsung/android/edgelighting/view/EdgeAppLightEffectView;->lineDuration:J

    .line 104
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeAppLightEffectView;->mHsvColors:[F

    .line 38
    invoke-direct {p0}, Lcom/samsung/android/edgelighting/view/EdgeAppLightEffectView;->init()V

    .line 39
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 45
    const/high16 v0, 0x41200000    # 10.0f

    invoke-virtual {p0, v0}, Lcom/samsung/android/edgelighting/view/EdgeAppLightEffectView;->setMaxPadding(F)V

    .line 48
    const/high16 v0, 0x41100000    # 9.0f

    invoke-virtual {p0, v0}, Lcom/samsung/android/edgelighting/view/EdgeAppLightEffectView;->setStrokeWidth(F)V

    .line 51
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/edgelighting/view/EdgeAppLightEffectView;->setRingImageAlpha(F)V

    .line 54
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/edgelighting/view/EdgeAppLightEffectView;->setIsNeedTopGradient(Z)V

    .line 56
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/samsung/android/edgelighting/view/EdgeAppLightEffectView;->mRotateDuration:J

    .line 57
    const v0, 0x3f4ccccd    # 0.8f

    iput v0, p0, Lcom/samsung/android/edgelighting/view/EdgeAppLightEffectView;->mStrokeAlpha:F

    .line 59
    return-void
.end method

.method private setGradientDrawable()V
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeAppLightEffectView;->mTopLayer:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeAppLightEffectView;->mTopLayer:Landroid/widget/ImageView;

    sget v1, Lcom/samsung/android/edgelighting/R$drawable;->music_gradient:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeAppLightEffectView;->mBottomLayer:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    .line 177
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeAppLightEffectView;->mBottomLayer:Landroid/widget/ImageView;

    sget v1, Lcom/samsung/android/edgelighting/R$drawable;->music_gradient:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 179
    :cond_1
    return-void
.end method


# virtual methods
.method public cancelRepeatColorAnimation()V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeAppLightEffectView;->repeatColorAnimation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeAppLightEffectView;->repeatColorAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 159
    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 101
    invoke-super {p0, p1}, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 102
    return-void
.end method

.method public hide()V
    .locals 3

    .prologue
    .line 82
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeAppLightEffectView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " hide : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/edgelighting/view/EdgeAppLightEffectView;->mIsAnimating:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/EdgeAppLightEffectView;->stopRotation()V

    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/edgelighting/view/EdgeAppLightEffectView;->mIsAnimating:Z

    .line 94
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/EdgeAppLightEffectView;->resetGradientDrawable()V

    .line 96
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/EdgeAppLightEffectView;->cancelRepeatColorAnimation()V

    .line 97
    return-void
.end method

.method public resetLightingAnimation()V
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/edgelighting/view/EdgeAppLightEffectView;->mIsAnimating:Z

    .line 129
    return-void
.end method

.method public setMainColor(I)V
    .locals 4
    .param p1, "color"    # I

    .prologue
    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v2, 0x2

    .line 109
    iput p1, p0, Lcom/samsung/android/edgelighting/view/EdgeAppLightEffectView;->mMainColor:I

    .line 111
    iget v0, p0, Lcom/samsung/android/edgelighting/view/EdgeAppLightEffectView;->mMainColor:I

    iget-object v1, p0, Lcom/samsung/android/edgelighting/view/EdgeAppLightEffectView;->mHsvColors:[F

    invoke-static {v0, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 112
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeAppLightEffectView;->mHsvColors:[F

    iget-object v1, p0, Lcom/samsung/android/edgelighting/view/EdgeAppLightEffectView;->mHsvColors:[F

    aget v1, v1, v2

    add-float/2addr v1, v3

    aput v1, v0, v2

    .line 113
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeAppLightEffectView;->mTopLayer:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/edgelighting/view/EdgeAppLightEffectView;->mHsvColors:[F

    invoke-static {v1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 115
    iget v0, p0, Lcom/samsung/android/edgelighting/view/EdgeAppLightEffectView;->mMainColor:I

    iget-object v1, p0, Lcom/samsung/android/edgelighting/view/EdgeAppLightEffectView;->mHsvColors:[F

    invoke-static {v0, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 116
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeAppLightEffectView;->mHsvColors:[F

    iget-object v1, p0, Lcom/samsung/android/edgelighting/view/EdgeAppLightEffectView;->mHsvColors:[F

    aget v1, v1, v2

    sub-float/2addr v1, v3

    aput v1, v0, v2

    .line 117
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeAppLightEffectView;->mMainLayer:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/edgelighting/view/EdgeAppLightEffectView;->mHsvColors:[F

    invoke-static {v1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 119
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeAppLightEffectView;->mBottomLayer:Landroid/widget/ImageView;

    iget v1, p0, Lcom/samsung/android/edgelighting/view/EdgeAppLightEffectView;->mMainColor:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 121
    return-void
.end method

.method public setRepeatColorAnimation(IIJJ)V
    .locals 5
    .param p1, "fromColor"    # I
    .param p2, "toColor"    # I
    .param p3, "startDelay"    # J
    .param p5, "duration"    # J

    .prologue
    const/4 v3, 0x2

    .line 134
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeAppLightEffectView;->repeatColorAnimation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeAppLightEffectView;->repeatColorAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeAppLightEffectView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "repeat Color Animation from : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " toColor "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    new-array v0, v3, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofArgb([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeAppLightEffectView;->repeatColorAnimation:Landroid/animation/ValueAnimator;

    .line 140
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeAppLightEffectView;->repeatColorAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/edgelighting/view/EdgeAppLightEffectView$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/edgelighting/view/EdgeAppLightEffectView$1;-><init>(Lcom/samsung/android/edgelighting/view/EdgeAppLightEffectView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 148
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeAppLightEffectView;->repeatColorAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 149
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeAppLightEffectView;->repeatColorAnimation:Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 150
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeAppLightEffectView;->repeatColorAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p3, p4}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 151
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeAppLightEffectView;->repeatColorAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p5, p6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 152
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeAppLightEffectView;->repeatColorAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 153
    return-void
.end method

.method public setScreenSize(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 163
    invoke-super {p0, p1, p2}, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->setScreenSize(II)V

    .line 166
    invoke-direct {p0}, Lcom/samsung/android/edgelighting/view/EdgeAppLightEffectView;->setGradientDrawable()V

    .line 168
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeAppLightEffectView;->mTopLayer:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/samsung/android/edgelighting/view/EdgeAppLightEffectView;->expandViewSize(Landroid/widget/ImageView;)V

    .line 169
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeAppLightEffectView;->mBottomLayer:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/samsung/android/edgelighting/view/EdgeAppLightEffectView;->expandViewSize(Landroid/widget/ImageView;)V

    .line 171
    return-void
.end method

.method public setSubColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 124
    iput p1, p0, Lcom/samsung/android/edgelighting/view/EdgeAppLightEffectView;->mSubColor:I

    .line 125
    return-void
.end method

.method public show()V
    .locals 12

    .prologue
    const-wide/16 v2, 0x0

    .line 64
    iget-boolean v0, p0, Lcom/samsung/android/edgelighting/view/EdgeAppLightEffectView;->mIsAnimating:Z

    if-eqz v0, :cond_1

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/edgelighting/view/EdgeAppLightEffectView;->mIsAnimating:Z

    .line 67
    invoke-direct {p0}, Lcom/samsung/android/edgelighting/view/EdgeAppLightEffectView;->setGradientDrawable()V

    .line 70
    iget-wide v0, p0, Lcom/samsung/android/edgelighting/view/EdgeAppLightEffectView;->mRotateDuration:J

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/edgelighting/view/EdgeAppLightEffectView;->startRotation(J)V

    .line 73
    iget v1, p0, Lcom/samsung/android/edgelighting/view/EdgeAppLightEffectView;->mStrokeAlpha:F

    iget-wide v4, p0, Lcom/samsung/android/edgelighting/view/EdgeAppLightEffectView;->lineDuration:J

    const-wide/16 v6, 0x3

    mul-long/2addr v4, v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/edgelighting/view/EdgeAppLightEffectView;->changeRingImageAlpha(FJJ)V

    .line 75
    iget v0, p0, Lcom/samsung/android/edgelighting/view/EdgeAppLightEffectView;->mSubColor:I

    if-eqz v0, :cond_0

    .line 76
    iget v6, p0, Lcom/samsung/android/edgelighting/view/EdgeAppLightEffectView;->mMainColor:I

    iget v7, p0, Lcom/samsung/android/edgelighting/view/EdgeAppLightEffectView;->mSubColor:I

    const-wide/16 v10, 0x2710

    move-object v5, p0

    move-wide v8, v2

    invoke-virtual/range {v5 .. v11}, Lcom/samsung/android/edgelighting/view/EdgeAppLightEffectView;->setRepeatColorAnimation(IIJJ)V

    goto :goto_0
.end method
