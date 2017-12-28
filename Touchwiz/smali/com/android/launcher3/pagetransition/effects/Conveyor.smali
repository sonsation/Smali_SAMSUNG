.class public Lcom/android/launcher3/pagetransition/effects/Conveyor;
.super Lcom/android/launcher3/pagetransition/effects/AbstractTransitionEffects;
.source "Conveyor.java"


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
    .line 78
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0
.end method

.method protected getPivotValueX(FI)F
    .locals 2
    .param p1, "scrollProgress"    # F
    .param p2, "pageWidth"    # I

    .prologue
    .line 62
    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_0

    .line 63
    const/4 v0, 0x0

    .line 66
    .local v0, "value":F
    :goto_0
    return v0

    .line 65
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
    .line 70
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
    const/4 v3, 0x0

    .line 33
    sget-boolean v2, Lcom/android/launcher3/pagetransition/PageTransitionManager;->mLeftMove:Z

    if-eqz v2, :cond_0

    cmpl-float v2, p1, v3

    if-gez v2, :cond_1

    :cond_0
    sget-boolean v2, Lcom/android/launcher3/pagetransition/PageTransitionManager;->mLeftMove:Z

    if-nez v2, :cond_3

    cmpg-float v2, p1, v3

    if-gez v2, :cond_3

    .line 34
    :cond_1
    neg-float v0, p2

    .line 38
    .local v0, "value":F
    :goto_0
    iget-boolean v2, p0, Lcom/android/launcher3/pagetransition/effects/Conveyor;->mEndPage:Z

    if-eqz v2, :cond_2

    .line 39
    sget v1, Lcom/android/launcher3/pagetransition/effects/Conveyor;->transition_rotation_max:F

    .line 40
    .local v1, "vtransition_rotation_max":F
    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v1, v2

    neg-float v2, v2

    mul-float/2addr v2, p1

    invoke-virtual {p0}, Lcom/android/launcher3/pagetransition/effects/Conveyor;->maxOverScroll()F

    move-result v3

    div-float v0, v2, v3

    .line 42
    .end local v1    # "vtransition_rotation_max":F
    :cond_2
    return v0

    .line 36
    .end local v0    # "value":F
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "value":F
    goto :goto_0
.end method

.method protected getScrollDrawInward()F
    .locals 1

    .prologue
    .line 74
    const v0, 0x3ccccccd    # 0.025f

    return v0
.end method

.method protected getTranslationValueDeltaX(FF)F
    .locals 2
    .param p1, "scrollProgress"    # F
    .param p2, "zoom"    # F

    .prologue
    .line 53
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    iget v1, p0, Lcom/android/launcher3/pagetransition/effects/Conveyor;->mShrinkTranslateX:F

    mul-float/2addr v0, v1

    return v0
.end method

.method protected getTranslationValueX(FF)F
    .locals 2
    .param p1, "scrollProgress"    # F
    .param p2, "translationX"    # F

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/android/launcher3/pagetransition/effects/Conveyor;->mEndPage:Z

    if-eqz v0, :cond_0

    .line 47
    invoke-static {}, Lcom/android/launcher3/pagetransition/PageTransitionManager;->getScrollX()F

    move-result v0

    invoke-static {}, Lcom/android/launcher3/pagetransition/PageTransitionManager;->getMaxScrollX()F

    move-result v1

    sub-float p2, v0, v1

    .line 49
    :cond_0
    return p2
.end method

.method protected getTranslationValueY(FF)F
    .locals 1
    .param p1, "scrollProgress"    # F
    .param p2, "zoom"    # F

    .prologue
    .line 57
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
