.class public Lcom/android/launcher3/pagetransition/effects/Spiral;
.super Lcom/android/launcher3/pagetransition/effects/AbstractTransitionEffects;
.source "Spiral.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/android/launcher3/pagetransition/effects/AbstractTransitionEffects;-><init>()V

    return-void
.end method


# virtual methods
.method protected adjustScrollProgress(F)F
    .locals 1
    .param p1, "scrollProgress"    # F

    .prologue
    .line 63
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0
.end method

.method protected getPivotValueX(FI)F
    .locals 2
    .param p1, "scrollProgress"    # F
    .param p2, "pageWidth"    # I

    .prologue
    .line 51
    int-to-float v0, p2

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    return v0
.end method

.method protected getPivotValueY(FI)F
    .locals 2
    .param p1, "scrollProgress"    # F
    .param p2, "pageHeight"    # I

    .prologue
    .line 55
    int-to-float v0, p2

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    return v0
.end method

.method protected getRotationValue(FF)F
    .locals 0
    .param p1, "scrollProgress"    # F
    .param p2, "rotation"    # F

    .prologue
    .line 32
    return p2
.end method

.method protected getScrollDrawInward()F
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/android/launcher3/pagetransition/effects/Spiral;->mNormalScrollDrawInward:F

    return v0
.end method

.method protected getTranslationValueDeltaX(FF)F
    .locals 2
    .param p1, "scrollProgress"    # F
    .param p2, "zoom"    # F

    .prologue
    .line 43
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    iget v1, p0, Lcom/android/launcher3/pagetransition/effects/Spiral;->mShrinkTranslateX:F

    mul-float/2addr v0, v1

    return v0
.end method

.method protected getTranslationValueX(FF)F
    .locals 2
    .param p1, "scrollProgress"    # F
    .param p2, "translationX"    # F

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/android/launcher3/pagetransition/effects/Spiral;->mEndPage:Z

    if-eqz v0, :cond_0

    .line 37
    invoke-static {}, Lcom/android/launcher3/pagetransition/PageTransitionManager;->getScrollX()F

    move-result v0

    invoke-static {}, Lcom/android/launcher3/pagetransition/PageTransitionManager;->getMaxScrollX()F

    move-result v1

    sub-float p2, v0, v1

    .line 39
    :cond_0
    return p2
.end method

.method protected getTranslationValueY(FF)F
    .locals 2
    .param p1, "scrollProgress"    # F
    .param p2, "zoom"    # F

    .prologue
    .line 47
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    iget v1, p0, Lcom/android/launcher3/pagetransition/effects/Spiral;->mShrinkTranslateY:F

    mul-float/2addr v0, v1

    return v0
.end method

.method protected getZoomValueX(FF)F
    .locals 0
    .param p1, "scrollProgress"    # F
    .param p2, "zoom"    # F

    .prologue
    .line 24
    return p2
.end method

.method protected getZoomValueY(FF)F
    .locals 0
    .param p1, "scrollProgress"    # F
    .param p2, "zoom"    # F

    .prologue
    .line 28
    return p2
.end method
