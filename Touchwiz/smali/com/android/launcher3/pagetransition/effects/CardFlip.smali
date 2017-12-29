.class public Lcom/android/launcher3/pagetransition/effects/CardFlip;
.super Lcom/android/launcher3/pagetransition/effects/PageTransitionEffects;
.source "CardFlip.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/android/launcher3/pagetransition/effects/PageTransitionEffects;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransform(Landroid/view/View;FI)V
    .locals 7
    .param p1, "page"    # Landroid/view/View;
    .param p2, "scrollProgress"    # F
    .param p3, "index"    # I

    .prologue
    const/high16 v5, 0x3f000000    # 0.5f

    const/high16 v6, 0x3f800000    # 1.0f

    .line 27
    cmpl-float v4, p2, v6

    if-gtz v4, :cond_0

    const/high16 v4, -0x40800000    # -1.0f

    cmpg-float v4, p2, v4

    if-gez v4, :cond_1

    .line 48
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v1, p1

    .line 30
    check-cast v1, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 31
    .local v1, "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sub-float v4, v6, v4

    invoke-static {v6, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 32
    .local v0, "alpha":F
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/CellLayout;->invalidate()V

    .line 33
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/CellLayout;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float v3, p2, v4

    .line 34
    .local v3, "translationX":F
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/CellLayout;->getMeasuredWidth()I

    move-result v2

    .line 36
    .local v2, "pageWidth":I
    const/4 v4, 0x0

    cmpg-float v4, p2, v4

    if-gtz v4, :cond_2

    .line 38
    invoke-virtual {v1, v3}, Lcom/android/launcher3/common/base/view/CellLayout;->setTranslationX(F)V

    .line 39
    invoke-static {v5, v0}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/launcher3/common/base/view/CellLayout;->setScaleX(F)V

    .line 40
    invoke-static {v5, v0}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/launcher3/common/base/view/CellLayout;->setScaleY(F)V

    .line 41
    invoke-virtual {v1, v0}, Lcom/android/launcher3/common/base/view/CellLayout;->setAlpha(F)V

    goto :goto_0

    .line 44
    :cond_2
    sub-float v4, v6, v0

    int-to-float v5, v2

    mul-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v4, v5

    sub-float v4, v3, v4

    invoke-virtual {v1, v4}, Lcom/android/launcher3/common/base/view/CellLayout;->setTranslationX(F)V

    .line 45
    int-to-float v4, v2

    invoke-virtual {v1, v4}, Lcom/android/launcher3/common/base/view/CellLayout;->setPivotX(F)V

    .line 46
    sub-float v4, v6, v0

    neg-float v4, v4

    const/high16 v5, 0x42480000    # 50.0f

    mul-float/2addr v4, v5

    invoke-virtual {v1, v4}, Lcom/android/launcher3/common/base/view/CellLayout;->setRotationY(F)V

    goto :goto_0
.end method