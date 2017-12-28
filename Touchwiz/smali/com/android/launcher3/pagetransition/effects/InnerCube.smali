.class public Lcom/android/launcher3/pagetransition/effects/InnerCube;
.super Lcom/android/launcher3/pagetransition/effects/AbstractTransitionEffects;
.source "InnerCube.java"


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
    .locals 3
    .param p1, "scrollProgress"    # F

    .prologue
    .line 75
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    .line 76
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 80
    .local v0, "absScrollProgress":F
    :goto_0
    return v0

    .line 78
    .end local v0    # "absScrollProgress":F
    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sub-float v0, v1, v2

    .restart local v0    # "absScrollProgress":F
    goto :goto_0
.end method

.method protected getPivotValueX(FI)F
    .locals 2
    .param p1, "scrollProgress"    # F
    .param p2, "pageWidth"    # I

    .prologue
    .line 58
    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_0

    .line 59
    const/4 v0, 0x0

    .line 62
    .local v0, "value":F
    :goto_0
    return v0

    .line 61
    .end local v0    # "value":F
    :cond_0
    int-to-float v0, p2

    .restart local v0    # "value":F
    goto :goto_0
.end method

.method protected getPivotValueY(FI)F
    .locals 2
    .param p1, "scrollProgress"    # F
    .param p2, "pageHeight"    # I

    .prologue
    .line 66
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
    .line 36
    return p2
.end method

.method protected getScrollDrawInward()F
    .locals 1

    .prologue
    .line 70
    const v0, 0x3c23d70a    # 0.01f

    return v0
.end method

.method protected getTranslationValueDeltaX(FF)F
    .locals 2
    .param p1, "scrollProgress"    # F
    .param p2, "zoom"    # F

    .prologue
    .line 47
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 48
    const v0, 0x3c23d70a    # 0.01f

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    mul-float/2addr v0, v1

    sub-float/2addr p2, v0

    .line 49
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    iget v1, p0, Lcom/android/launcher3/pagetransition/effects/InnerCube;->mShrinkTranslateX:F

    mul-float/2addr v0, v1

    return v0
.end method

.method protected getTranslationValueX(FF)F
    .locals 2
    .param p1, "scrollProgress"    # F
    .param p2, "translationX"    # F

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/android/launcher3/pagetransition/effects/InnerCube;->mEndPage:Z

    if-eqz v0, :cond_0

    .line 41
    invoke-static {}, Lcom/android/launcher3/pagetransition/PageTransitionManager;->getScrollX()F

    move-result v0

    invoke-static {}, Lcom/android/launcher3/pagetransition/PageTransitionManager;->getMaxScrollX()F

    move-result v1

    sub-float p2, v0, v1

    .line 43
    :cond_0
    return p2
.end method

.method protected getTranslationValueY(FF)F
    .locals 1
    .param p1, "scrollProgress"    # F
    .param p2, "zoom"    # F

    .prologue
    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method protected getZoomValueX(FF)F
    .locals 3
    .param p1, "scrollProgress"    # F
    .param p2, "zoom"    # F

    .prologue
    .line 24
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 25
    const/high16 v0, 0x3f800000    # 1.0f

    const v1, 0x3c23d70a    # 0.01f

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    mul-float/2addr v1, v2

    mul-float/2addr v0, v1

    sub-float/2addr p2, v0

    .line 26
    :cond_0
    return p2
.end method

.method protected getZoomValueY(FF)F
    .locals 3
    .param p1, "scrollProgress"    # F
    .param p2, "zoom"    # F

    .prologue
    .line 30
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 31
    const/high16 v0, 0x3f800000    # 1.0f

    const v1, 0x3c23d70a    # 0.01f

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    mul-float/2addr v1, v2

    mul-float/2addr v0, v1

    sub-float/2addr p2, v0

    .line 32
    :cond_0
    return p2
.end method
