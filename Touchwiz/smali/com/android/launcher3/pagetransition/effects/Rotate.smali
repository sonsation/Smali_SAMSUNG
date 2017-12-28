.class public Lcom/android/launcher3/pagetransition/effects/Rotate;
.super Lcom/android/launcher3/pagetransition/effects/PageTransitionEffects;
.source "Rotate.java"


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
    .locals 9
    .param p1, "page"    # Landroid/view/View;
    .param p2, "scrollProgress"    # F
    .param p3, "index"    # I

    .prologue
    const/high16 v8, 0x42b40000    # 90.0f

    const/4 v7, 0x0

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

    .line 30
    :cond_1
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sub-float v4, v6, v4

    invoke-static {v6, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .local v0, "alpha":F
    move-object v1, p1

    .line 31
    check-cast v1, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 32
    .local v1, "cl":Lcom/android/launcher3/common/base/view/CellLayout;
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
    cmpg-float v4, p2, v7

    if-gtz v4, :cond_2

    .line 37
    invoke-virtual {v1, v3}, Lcom/android/launcher3/common/base/view/CellLayout;->setTranslationX(F)V

    .line 38
    sub-float v4, v6, v0

    int-to-float v5, v2

    mul-float/2addr v4, v5

    add-float/2addr v4, v3

    invoke-virtual {v1, v4}, Lcom/android/launcher3/common/base/view/CellLayout;->setTranslationX(F)V

    .line 39
    invoke-virtual {v1, v7}, Lcom/android/launcher3/common/base/view/CellLayout;->setPivotX(F)V

    .line 42
    sub-float v4, v6, v0

    mul-float/2addr v4, v8

    invoke-virtual {v1, v4}, Lcom/android/launcher3/common/base/view/CellLayout;->setRotationY(F)V

    goto :goto_0

    .line 44
    :cond_2
    sub-float v4, v6, v0

    int-to-float v5, v2

    mul-float/2addr v4, v5

    sub-float v4, v3, v4

    invoke-virtual {v1, v4}, Lcom/android/launcher3/common/base/view/CellLayout;->setTranslationX(F)V

    .line 45
    int-to-float v4, v2

    invoke-virtual {v1, v4}, Lcom/android/launcher3/common/base/view/CellLayout;->setPivotX(F)V

    .line 46
    sub-float v4, v6, v0

    neg-float v4, v4

    mul-float/2addr v4, v8

    invoke-virtual {v1, v4}, Lcom/android/launcher3/common/base/view/CellLayout;->setRotationY(F)V

    goto :goto_0
.end method
