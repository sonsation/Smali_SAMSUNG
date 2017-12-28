.class public abstract Lcom/android/launcher3/pagetransition/effects/PageTransitionEffects;
.super Ljava/lang/Object;
.source "PageTransitionEffects.java"


# static fields
.field private static final OVERSCROLL_DAMP_FACTOR:F = 0.14f

.field protected static final PAGE_ROTATION:F = 15.0f

.field protected static final PERFORM_OVERSCROLL_ROTATION:Z = true

.field private static final TAG:Ljava/lang/String; = "PageTransitionEffects"

.field protected static TRANSITION_PIVOT:F = 0.0f

.field static final sPageZoomScaleLimit:F = 0.7f

.field public static transition_rotation_max:F


# instance fields
.field private mDragBarSize:I

.field protected mDragScrollDrawInward:F

.field private mEditModePanel_left_Adjust:I

.field private mEditModePanel_top_Adjust:I

.field protected mEditModeShrinkFactor:F

.field protected mEndPage:Z

.field protected mFastScrollDrawInward:F

.field protected mNormalScrollDrawInward:F

.field protected mShrinkTranslateX:F

.field protected mShrinkTranslateY:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/high16 v0, 0x3f000000    # 0.5f

    sput v0, Lcom/android/launcher3/pagetransition/effects/PageTransitionEffects;->TRANSITION_PIVOT:F

    .line 45
    const/4 v0, 0x0

    sput v0, Lcom/android/launcher3/pagetransition/effects/PageTransitionEffects;->transition_rotation_max:F

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const v1, 0x3ee66666    # 0.45f

    iput v1, p0, Lcom/android/launcher3/pagetransition/effects/PageTransitionEffects;->mFastScrollDrawInward:F

    .line 33
    const v1, 0x3e4ccccd    # 0.2f

    iput v1, p0, Lcom/android/launcher3/pagetransition/effects/PageTransitionEffects;->mNormalScrollDrawInward:F

    .line 34
    const v1, 0x3f333333    # 0.7f

    iput v1, p0, Lcom/android/launcher3/pagetransition/effects/PageTransitionEffects;->mDragScrollDrawInward:F

    .line 37
    iput-boolean v2, p0, Lcom/android/launcher3/pagetransition/effects/PageTransitionEffects;->mEndPage:Z

    .line 120
    iput v2, p0, Lcom/android/launcher3/pagetransition/effects/PageTransitionEffects;->mEditModePanel_left_Adjust:I

    .line 121
    iput v2, p0, Lcom/android/launcher3/pagetransition/effects/PageTransitionEffects;->mEditModePanel_top_Adjust:I

    .line 48
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 49
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f0b0003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    iput v1, p0, Lcom/android/launcher3/pagetransition/effects/PageTransitionEffects;->mEditModeShrinkFactor:F

    .line 50
    const v1, 0x7f10000e

    invoke-virtual {v0, v1, v3, v3}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v1

    iput v1, p0, Lcom/android/launcher3/pagetransition/effects/PageTransitionEffects;->mNormalScrollDrawInward:F

    .line 51
    const v1, 0x7f10000d

    invoke-virtual {v0, v1, v3, v3}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v1

    iput v1, p0, Lcom/android/launcher3/pagetransition/effects/PageTransitionEffects;->mDragScrollDrawInward:F

    .line 52
    const v1, 0x7f0b0056

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    sput v1, Lcom/android/launcher3/pagetransition/effects/PageTransitionEffects;->transition_rotation_max:F

    .line 53
    const v1, 0x7f0a0146

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/pagetransition/effects/PageTransitionEffects;->mDragBarSize:I

    .line 54
    const v1, 0x7f0a01b1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/pagetransition/effects/PageTransitionEffects;->mEditModePanel_left_Adjust:I

    .line 55
    const v1, 0x7f0a01b2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/pagetransition/effects/PageTransitionEffects;->mEditModePanel_top_Adjust:I

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const v0, 0x3ee66666    # 0.45f

    iput v0, p0, Lcom/android/launcher3/pagetransition/effects/PageTransitionEffects;->mFastScrollDrawInward:F

    .line 33
    const v0, 0x3e4ccccd    # 0.2f

    iput v0, p0, Lcom/android/launcher3/pagetransition/effects/PageTransitionEffects;->mNormalScrollDrawInward:F

    .line 34
    const v0, 0x3f333333    # 0.7f

    iput v0, p0, Lcom/android/launcher3/pagetransition/effects/PageTransitionEffects;->mDragScrollDrawInward:F

    .line 37
    iput-boolean v1, p0, Lcom/android/launcher3/pagetransition/effects/PageTransitionEffects;->mEndPage:Z

    .line 120
    iput v1, p0, Lcom/android/launcher3/pagetransition/effects/PageTransitionEffects;->mEditModePanel_left_Adjust:I

    .line 121
    iput v1, p0, Lcom/android/launcher3/pagetransition/effects/PageTransitionEffects;->mEditModePanel_top_Adjust:I

    .line 59
    return-void
.end method

.method static mix(FFF)F
    .locals 2
    .param p0, "x"    # F
    .param p1, "y"    # F
    .param p2, "mix"    # F

    .prologue
    .line 70
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    mul-float/2addr v0, p0

    mul-float v1, p1, p2

    add-float/2addr v0, v1

    return v0
.end method

.method private overScrollInfluenceCurve(F)F
    .locals 2
    .param p1, "f"    # F

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 92
    sub-float/2addr p1, v1

    .line 93
    mul-float v0, p1, p1

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public abstract applyTransform(Landroid/view/View;FI)V
.end method

.method protected backgroundAlphaThreshold(F)F
    .locals 4
    .param p1, "r"    # F

    .prologue
    .line 74
    const/4 v0, 0x0

    .line 75
    .local v0, "pivotA":F
    const v1, 0x3e99999a    # 0.3f

    .line 76
    .local v1, "pivotB":F
    cmpg-float v2, p1, v0

    if-gez v2, :cond_0

    .line 77
    const/4 v2, 0x0

    .line 81
    :goto_0
    return v2

    .line 78
    :cond_0
    cmpl-float v2, p1, v1

    if-lez v2, :cond_1

    .line 79
    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    .line 81
    :cond_1
    sub-float v2, p1, v0

    sub-float v3, v1, v0

    div-float/2addr v2, v3

    goto :goto_0
.end method

.method protected isLoopingEnabled()Z
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method protected maxOverScroll()F
    .locals 3

    .prologue
    .line 99
    const/high16 v0, 0x3f800000    # 1.0f

    .line 100
    .local v0, "f":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float v1, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/launcher3/pagetransition/effects/PageTransitionEffects;->overScrollInfluenceCurve(F)F

    move-result v2

    mul-float v0, v1, v2

    .line 101
    const v1, 0x3e0f5c29    # 0.14f

    mul-float/2addr v1, v0

    return v1
.end method

.method public onLayout(Landroid/view/ViewGroup;ZIIII)V
    .locals 7
    .param p1, "workspace"    # Landroid/view/ViewGroup;
    .param p2, "changed"    # Z
    .param p3, "left"    # I
    .param p4, "top"    # I
    .param p5, "right"    # I
    .param p6, "bottom"    # I

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v3, 0x0

    .line 124
    iput v3, p0, Lcom/android/launcher3/pagetransition/effects/PageTransitionEffects;->mShrinkTranslateX:F

    .line 125
    iput v3, p0, Lcom/android/launcher3/pagetransition/effects/PageTransitionEffects;->mShrinkTranslateY:F

    .line 126
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 127
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 128
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/android/launcher3/pagetransition/effects/PageTransitionEffects;->mEditModeShrinkFactor:F

    sub-float v4, v6, v4

    mul-float v1, v3, v4

    .line 129
    .local v1, "maxShrinkAmount":F
    mul-float v2, v1, v5

    .line 130
    .local v2, "maxXlate":F
    iget v3, p0, Lcom/android/launcher3/pagetransition/effects/PageTransitionEffects;->mDragBarSize:I

    int-to-float v3, v3

    cmpl-float v3, v1, v3

    if-lez v3, :cond_0

    .line 131
    iget v3, p0, Lcom/android/launcher3/pagetransition/effects/PageTransitionEffects;->mDragBarSize:I

    int-to-float v3, v3

    sub-float v3, v1, v3

    mul-float/2addr v3, v5

    sub-float/2addr v2, v3

    .line 133
    :cond_0
    iget v3, p0, Lcom/android/launcher3/pagetransition/effects/PageTransitionEffects;->mEditModeShrinkFactor:F

    sub-float v3, v6, v3

    div-float v3, v2, v3

    iput v3, p0, Lcom/android/launcher3/pagetransition/effects/PageTransitionEffects;->mShrinkTranslateY:F

    .line 135
    .end local v1    # "maxShrinkAmount":F
    .end local v2    # "maxXlate":F
    :cond_1
    iget v3, p0, Lcom/android/launcher3/pagetransition/effects/PageTransitionEffects;->mShrinkTranslateX:F

    iget v4, p0, Lcom/android/launcher3/pagetransition/effects/PageTransitionEffects;->mEditModePanel_left_Adjust:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iput v3, p0, Lcom/android/launcher3/pagetransition/effects/PageTransitionEffects;->mShrinkTranslateX:F

    .line 136
    iget v3, p0, Lcom/android/launcher3/pagetransition/effects/PageTransitionEffects;->mShrinkTranslateY:F

    iget v4, p0, Lcom/android/launcher3/pagetransition/effects/PageTransitionEffects;->mEditModePanel_top_Adjust:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iput v3, p0, Lcom/android/launcher3/pagetransition/effects/PageTransitionEffects;->mShrinkTranslateY:F

    .line 137
    return-void
.end method

.method public reset(Landroid/view/View;)V
    .locals 4
    .param p1, "page"    # Landroid/view/View;

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 107
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v3

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    .line 108
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v3

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotY(F)V

    .line 109
    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 110
    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 111
    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleX(F)V

    .line 112
    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleY(F)V

    .line 113
    invoke-virtual {p1, v1}, Landroid/view/View;->setRotationX(F)V

    .line 114
    invoke-virtual {p1, v1}, Landroid/view/View;->setRotationY(F)V

    .line 115
    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 116
    invoke-virtual {p1, v1}, Landroid/view/View;->setRotation(F)V

    .line 117
    return-void
.end method
