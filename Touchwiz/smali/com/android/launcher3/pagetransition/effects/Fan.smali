.class public Lcom/android/launcher3/pagetransition/effects/Fan;
.super Lcom/android/launcher3/pagetransition/effects/PageTransitionEffects;
.source "Fan.java"


# static fields
.field private static final FAST_ROTATION:F = 15.0f

.field private static final SLOW_ROTATION:F = 20.0f

.field private static final WORKSPACE_ROTATION:F = 20.0f


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/android/launcher3/pagetransition/effects/PageTransitionEffects;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransform(Landroid/view/View;FI)V
    .locals 8
    .param p1, "page"    # Landroid/view/View;
    .param p2, "scrollProgress"    # F
    .param p3, "index"    # I

    .prologue
    const/4 v7, 0x0

    .line 29
    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v5, p2, v5

    if-gtz v5, :cond_0

    const/high16 v5, -0x40800000    # -1.0f

    cmpg-float v5, p2, v5

    if-gez v5, :cond_1

    .line 42
    :cond_0
    :goto_0
    return-void

    .line 32
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 33
    const/high16 v5, 0x41a00000    # 20.0f

    const/high16 v6, 0x41700000    # 15.0f

    invoke-static {v5, v6, v7}, Lcom/android/launcher3/pagetransition/effects/Fan;->mix(FFF)F

    move-result v5

    mul-float v2, v5, p2

    .line 34
    .local v2, "rotation":F
    const v3, 0x3ccccccd    # 0.025f

    .line 35
    .local v3, "scrollDrawInward":F
    iget v5, p0, Lcom/android/launcher3/pagetransition/effects/Fan;->mFastScrollDrawInward:F

    invoke-static {v3, v5, v7}, Lcom/android/launcher3/pagetransition/effects/Fan;->mix(FFF)F

    move-result v5

    mul-float/2addr v5, p2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float v4, v5, v6

    .line 36
    .local v4, "translationX":F
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 37
    .local v1, "pageWidth":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 38
    .local v0, "pageHeight":I
    cmpg-float v5, p2, v7

    if-gtz v5, :cond_2

    .end local v1    # "pageWidth":I
    :goto_1
    int-to-float v5, v1

    invoke-virtual {p1, v5}, Landroid/view/View;->setPivotX(F)V

    .line 39
    int-to-float v5, v0

    invoke-virtual {p1, v5}, Landroid/view/View;->setPivotY(F)V

    .line 40
    invoke-virtual {p1, v4}, Landroid/view/View;->setTranslationX(F)V

    .line 41
    neg-float v5, v2

    invoke-virtual {p1, v5}, Landroid/view/View;->setRotation(F)V

    goto :goto_0

    .line 38
    .restart local v1    # "pageWidth":I
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method
