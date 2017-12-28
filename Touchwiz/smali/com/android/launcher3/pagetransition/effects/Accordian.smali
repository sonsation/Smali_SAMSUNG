.class public Lcom/android/launcher3/pagetransition/effects/Accordian;
.super Lcom/android/launcher3/pagetransition/effects/PageTransitionEffects;
.source "Accordian.java"


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
    const/high16 v6, 0x40000000    # 2.0f

    const/high16 v5, 0x3f800000    # 1.0f

    .line 27
    cmpl-float v4, p2, v5

    if-gtz v4, :cond_0

    const/high16 v4, -0x40800000    # -1.0f

    cmpg-float v4, p2, v4

    if-gez v4, :cond_1

    .line 42
    :cond_0
    :goto_0
    return-void

    .line 30
    :cond_1
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sub-float v4, v5, v4

    invoke-static {v5, v4}, Ljava/lang/Math;->min(FF)F

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

    .line 35
    .local v2, "pageWidth":I
    const/4 v4, 0x0

    cmpg-float v4, p2, v4

    if-gtz v4, :cond_2

    .line 36
    sub-float v4, v5, v0

    int-to-float v5, v2

    mul-float/2addr v4, v5

    div-float/2addr v4, v6

    add-float/2addr v4, v3

    invoke-virtual {v1, v4}, Lcom/android/launcher3/common/base/view/CellLayout;->setTranslationX(F)V

    .line 37
    invoke-virtual {v1, v0}, Lcom/android/launcher3/common/base/view/CellLayout;->setScaleX(F)V

    goto :goto_0

    .line 39
    :cond_2
    sub-float v4, v5, v0

    int-to-float v5, v2

    mul-float/2addr v4, v5

    div-float/2addr v4, v6

    sub-float v4, v3, v4

    invoke-virtual {v1, v4}, Lcom/android/launcher3/common/base/view/CellLayout;->setTranslationX(F)V

    .line 40
    invoke-virtual {v1, v0}, Lcom/android/launcher3/common/base/view/CellLayout;->setScaleX(F)V

    goto :goto_0
.end method
