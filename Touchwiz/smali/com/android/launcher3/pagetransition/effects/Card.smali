.class public Lcom/android/launcher3/pagetransition/effects/Card;
.super Lcom/android/launcher3/pagetransition/effects/PageTransitionEffects;
.source "Card.java"


# instance fields
.field private final PERFORM_OVERSCROLL_ROTATION:Z

.field private mSineIO70Interpolator:Landroid/view/animation/Interpolator;

.field private mSineIO80Interpolator:Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/launcher3/pagetransition/effects/PageTransitionEffects;-><init>()V

    .line 27
    const/16 v0, 0x22

    invoke-static {v0}, Lcom/android/launcher3/util/ViInterpolator;->getInterploator(I)Landroid/view/animation/PathInterpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/pagetransition/effects/Card;->mSineIO80Interpolator:Landroid/view/animation/Interpolator;

    .line 28
    const/16 v0, 0x21

    invoke-static {v0}, Lcom/android/launcher3/util/ViInterpolator;->getInterploator(I)Landroid/view/animation/PathInterpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/pagetransition/effects/Card;->mSineIO70Interpolator:Landroid/view/animation/Interpolator;

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/pagetransition/effects/Card;->PERFORM_OVERSCROLL_ROTATION:Z

    return-void
.end method


# virtual methods
.method public applyTransform(Landroid/view/View;FI)V
    .locals 20
    .param p1, "page"    # Landroid/view/View;
    .param p2, "scrollProgress"    # F
    .param p3, "index"    # I

    .prologue
    .line 39
    const/16 v17, 0x0

    cmpg-float v17, p2, v17

    if-gez v17, :cond_1

    const/4 v2, 0x1

    .local v2, "BOTTOM_CARD":Z
    :goto_0
    move-object/from16 v4, p1

    .line 40
    check-cast v4, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 41
    .local v4, "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    move/from16 v5, p3

    .line 42
    .local v5, "i":I
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 43
    .local v3, "absScrollProgress":F
    const/high16 v17, 0x3f800000    # 1.0f

    cmpl-float v17, p2, v17

    if-gtz v17, :cond_0

    const/high16 v17, -0x40800000    # -1.0f

    cmpg-float v17, p2, v17

    if-gez v17, :cond_2

    .line 105
    :cond_0
    :goto_1
    return-void

    .line 39
    .end local v2    # "BOTTOM_CARD":Z
    .end local v3    # "absScrollProgress":F
    .end local v4    # "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    .end local v5    # "i":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 46
    .restart local v2    # "BOTTOM_CARD":Z
    .restart local v3    # "absScrollProgress":F
    .restart local v4    # "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    .restart local v5    # "i":I
    :cond_2
    invoke-virtual {v4}, Lcom/android/launcher3/common/base/view/CellLayout;->invalidate()V

    .line 48
    const/4 v10, 0x0

    .line 49
    .local v10, "rotation":F
    const/4 v14, 0x0

    .line 50
    .local v14, "translationX":F
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/launcher3/pagetransition/effects/Card;->backgroundAlphaThreshold(F)F

    move-result v11

    .line 53
    .local v11, "scrollAlpha":F
    const v12, 0x3ea8f5c3    # 0.33f

    .line 54
    .local v12, "segment1":F
    const v13, 0x3f2b851f    # 0.67f

    .line 55
    .local v13, "segment2":F
    const/4 v6, 0x0

    .line 56
    .local v6, "interpolatedAlpha":F
    const/high16 v9, 0x3f800000    # 1.0f

    .line 59
    .local v9, "panelAlpha":F
    if-eqz v2, :cond_3

    .line 60
    invoke-virtual {v4}, Lcom/android/launcher3/common/base/view/CellLayout;->getWidth()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v14, p2, v17

    .line 62
    cmpg-float v17, v3, v13

    if-gez v17, :cond_6

    .line 63
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/pagetransition/effects/Card;->mSineIO80Interpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v17, v0

    sub-float v18, v13, v3

    const/high16 v19, 0x3f800000    # 1.0f

    sub-float v19, v19, v12

    div-float v18, v18, v19

    .line 64
    invoke-interface/range {v17 .. v18}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v6

    .line 65
    move v9, v6

    .line 70
    :cond_3
    :goto_2
    const/high16 v17, 0x3f800000    # 1.0f

    invoke-static {}, Lcom/android/launcher3/pagetransition/PageTransitionManager;->getPageBackgroundAlpha()F

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v11, v0, v1}, Lcom/android/launcher3/pagetransition/effects/Card;->mix(FFF)F

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/android/launcher3/common/base/view/CellLayout;->setBackgroundAlpha(F)V

    .line 72
    const/high16 v17, 0x3f800000    # 1.0f

    const v18, 0x3dcccccd    # 0.1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/pagetransition/effects/Card;->mSineIO80Interpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v19

    mul-float v18, v18, v19

    sub-float v16, v17, v18

    .line 74
    .local v16, "zoom":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/pagetransition/effects/Card;->isLoopingEnabled()Z

    move-result v17

    if-nez v17, :cond_4

    .line 75
    invoke-virtual {v4}, Lcom/android/launcher3/common/base/view/CellLayout;->getMeasuredWidth()I

    move-result v8

    .line 76
    .local v8, "pageWidth":I
    invoke-virtual {v4}, Lcom/android/launcher3/common/base/view/CellLayout;->getMeasuredHeight()I

    move-result v7

    .line 77
    .local v7, "pageHeight":I
    sget v15, Lcom/android/launcher3/pagetransition/effects/Card;->transition_rotation_max:F

    .line 78
    .local v15, "vtransition_rotation_max":F
    if-nez v5, :cond_7

    const/16 v17, 0x0

    cmpg-float v17, p2, v17

    if-gez v17, :cond_7

    .line 79
    sget v17, Lcom/android/launcher3/pagetransition/effects/Card;->TRANSITION_PIVOT:F

    int-to-float v0, v8

    move/from16 v18, v0

    mul-float v17, v17, v18

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/android/launcher3/common/base/view/CellLayout;->setPivotX(F)V

    .line 80
    neg-float v0, v15

    move/from16 v17, v0

    mul-float v17, v17, p2

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/pagetransition/effects/Card;->maxOverScroll()F

    move-result v18

    div-float v10, v17, v18

    .line 81
    const/high16 v16, 0x3f800000    # 1.0f

    .line 84
    invoke-static {}, Lcom/android/launcher3/pagetransition/PageTransitionManager;->getScrollX()F

    move-result v14

    .line 85
    const/high16 v9, 0x3f800000    # 1.0f

    .line 97
    .end local v7    # "pageHeight":I
    .end local v8    # "pageWidth":I
    .end local v15    # "vtransition_rotation_max":F
    :cond_4
    :goto_3
    invoke-virtual {v4, v9}, Lcom/android/launcher3/common/base/view/CellLayout;->setAlpha(F)V

    .line 99
    if-eqz v2, :cond_5

    .line 100
    move/from16 v0, v16

    invoke-virtual {v4, v0}, Lcom/android/launcher3/common/base/view/CellLayout;->setScaleX(F)V

    .line 101
    move/from16 v0, v16

    invoke-virtual {v4, v0}, Lcom/android/launcher3/common/base/view/CellLayout;->setScaleY(F)V

    .line 103
    :cond_5
    invoke-virtual {v4, v14}, Lcom/android/launcher3/common/base/view/CellLayout;->setTranslationX(F)V

    .line 104
    invoke-virtual {v4, v10}, Lcom/android/launcher3/common/base/view/CellLayout;->setRotationY(F)V

    goto/16 :goto_1

    .line 67
    .end local v16    # "zoom":F
    :cond_6
    const/4 v9, 0x0

    goto :goto_2

    .line 86
    .restart local v7    # "pageHeight":I
    .restart local v8    # "pageWidth":I
    .restart local v15    # "vtransition_rotation_max":F
    .restart local v16    # "zoom":F
    :cond_7
    invoke-static {}, Lcom/android/launcher3/pagetransition/PageTransitionManager;->getChildCount()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    if-ne v5, v0, :cond_8

    const/16 v17, 0x0

    cmpl-float v17, p2, v17

    if-lez v17, :cond_8

    .line 87
    invoke-static {}, Lcom/android/launcher3/pagetransition/PageTransitionManager;->getScrollX()F

    move-result v17

    invoke-static {}, Lcom/android/launcher3/pagetransition/PageTransitionManager;->getMaxScrollX()F

    move-result v18

    sub-float v14, v17, v18

    .line 88
    const/high16 v17, 0x3f800000    # 1.0f

    const v18, 0x3dcccccd    # 0.1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/pagetransition/effects/Card;->mSineIO70Interpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v19

    mul-float v18, v18, v19

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/pagetransition/effects/Card;->maxOverScroll()F

    move-result v19

    div-float v18, v18, v19

    sub-float v16, v17, v18

    .line 89
    move/from16 v0, v16

    invoke-virtual {v4, v0}, Lcom/android/launcher3/common/base/view/CellLayout;->setScaleX(F)V

    .line 90
    move/from16 v0, v16

    invoke-virtual {v4, v0}, Lcom/android/launcher3/common/base/view/CellLayout;->setScaleY(F)V

    .line 91
    const/high16 v9, 0x3f800000    # 1.0f

    goto :goto_3

    .line 93
    :cond_8
    int-to-float v0, v7

    move/from16 v17, v0

    const/high16 v18, 0x40000000    # 2.0f

    div-float v17, v17, v18

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/android/launcher3/common/base/view/CellLayout;->setPivotY(F)V

    .line 94
    int-to-float v0, v8

    move/from16 v17, v0

    const/high16 v18, 0x40000000    # 2.0f

    div-float v17, v17, v18

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/android/launcher3/common/base/view/CellLayout;->setPivotX(F)V

    goto :goto_3
.end method

.method public reset(Landroid/view/View;)V
    .locals 1
    .param p1, "page"    # Landroid/view/View;

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/android/launcher3/pagetransition/effects/PageTransitionEffects;->reset(Landroid/view/View;)V

    .line 34
    check-cast p1, Lcom/android/launcher3/common/base/view/CellLayout;

    .end local p1    # "page":Landroid/view/View;
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/common/base/view/CellLayout;->setBackgroundAlpha(F)V

    .line 35
    return-void
.end method
