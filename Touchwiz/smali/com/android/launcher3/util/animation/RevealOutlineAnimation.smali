.class public abstract Lcom/android/launcher3/util/animation/RevealOutlineAnimation;
.super Landroid/view/ViewOutlineProvider;
.source "RevealOutlineAnimation.java"


# instance fields
.field protected mOutline:Landroid/graphics/Rect;

.field protected mOutlineRadius:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    .line 23
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/util/animation/RevealOutlineAnimation;->mOutline:Landroid/graphics/Rect;

    .line 24
    return-void
.end method


# virtual methods
.method public createRevealAnimator(Landroid/view/View;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p1, "revealView"    # Landroid/view/View;

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/util/animation/RevealOutlineAnimation;->createRevealAnimator(Landroid/view/View;Z)Landroid/animation/ValueAnimator;

    move-result-object v0

    return-object v0
.end method

.method public createRevealAnimator(Landroid/view/View;Z)Landroid/animation/ValueAnimator;
    .locals 3
    .param p1, "revealView"    # Landroid/view/View;
    .param p2, "isReversed"    # Z

    .prologue
    const/4 v2, 0x2

    .line 36
    if-eqz p2, :cond_0

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    .line 37
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 38
    .local v1, "va":Landroid/animation/ValueAnimator;
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getElevation()F

    move-result v0

    .line 40
    .local v0, "elevation":F
    new-instance v2, Lcom/android/launcher3/util/animation/RevealOutlineAnimation$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/launcher3/util/animation/RevealOutlineAnimation$1;-><init>(Lcom/android/launcher3/util/animation/RevealOutlineAnimation;Landroid/view/View;F)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 68
    new-instance v2, Lcom/android/launcher3/util/animation/RevealOutlineAnimation$2;

    invoke-direct {v2, p0, p1}, Lcom/android/launcher3/util/animation/RevealOutlineAnimation$2;-><init>(Lcom/android/launcher3/util/animation/RevealOutlineAnimation;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 79
    return-object v1

    .line 37
    .end local v0    # "elevation":F
    .end local v1    # "va":Landroid/animation/ValueAnimator;
    :cond_0
    new-array v2, v2, [F

    fill-array-data v2, :array_1

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    goto :goto_0

    .line 36
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 37
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "outline"    # Landroid/graphics/Outline;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/launcher3/util/animation/RevealOutlineAnimation;->mOutline:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/launcher3/util/animation/RevealOutlineAnimation;->mOutlineRadius:F

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    .line 85
    return-void
.end method

.method abstract setProgress(F)V
.end method

.method abstract shouldRemoveElevationDuringAnimation()Z
.end method
