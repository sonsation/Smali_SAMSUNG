.class public Lcom/android/launcher3/pagetransition/effects/OuterCube;
.super Lcom/android/launcher3/pagetransition/effects/AbstractTransitionEffects;
.source "OuterCube.java"


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
    .line 74
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0
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
    .locals 4
    .param p1, "scrollProgress"    # F
    .param p2, "rotation"    # F

    .prologue
    .line 33
    neg-float v0, p2

    .line 34
    .local v0, "value":F
    iget-boolean v2, p0, Lcom/android/launcher3/pagetransition/effects/OuterCube;->mEndPage:Z

    if-eqz v2, :cond_0

    .line 35
    sget v1, Lcom/android/launcher3/pagetransition/effects/OuterCube;->transition_rotation_max:F

    .line 36
    .local v1, "vtransition_rotation_max":F
    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v1, v2

    neg-float v2, v2

    mul-float/2addr v2, p1

    invoke-virtual {p0}, Lcom/android/launcher3/pagetransition/effects/OuterCube;->maxOverScroll()F

    move-result v3

    div-float v0, v2, v3

    .line 38
    .end local v1    # "vtransition_rotation_max":F
    :cond_0
    return v0
.end method

.method protected getScrollDrawInward()F
    .locals 1

    .prologue
    .line 70
    const v0, 0x3ccccccd    # 0.025f

    return v0
.end method

.method protected getTranslationValueDeltaX(FF)F
    .locals 1
    .param p1, "scrollProgress"    # F
    .param p2, "zoom"    # F

    .prologue
    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method protected getTranslationValueX(FF)F
    .locals 2
    .param p1, "scrollProgress"    # F
    .param p2, "translationX"    # F

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/android/launcher3/pagetransition/effects/OuterCube;->mEndPage:Z

    if-eqz v0, :cond_0

    .line 43
    invoke-static {}, Lcom/android/launcher3/pagetransition/PageTransitionManager;->getScrollX()F

    move-result v0

    invoke-static {}, Lcom/android/launcher3/pagetransition/PageTransitionManager;->getMaxScrollX()F

    move-result v1

    sub-float p2, v0, v1

    .line 45
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
    .locals 1
    .param p1, "scrollProgress"    # F
    .param p2, "zoom"    # F

    .prologue
    .line 24
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method protected getZoomValueY(FF)F
    .locals 1
    .param p1, "scrollProgress"    # F
    .param p2, "zoom"    # F

    .prologue
    .line 28
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method
