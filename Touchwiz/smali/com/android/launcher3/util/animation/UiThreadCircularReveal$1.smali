.class final Lcom/android/launcher3/util/animation/UiThreadCircularReveal$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "UiThreadCircularReveal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/util/animation/UiThreadCircularReveal;->createCircularReveal(Landroid/view/View;IIFFLandroid/view/ViewOutlineProvider;)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$elevation:F

.field final synthetic val$originalProvider:Landroid/view/ViewOutlineProvider;

.field final synthetic val$outlineProvider:Lcom/android/launcher3/util/animation/RevealOutlineProvider;

.field final synthetic val$revealView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Lcom/android/launcher3/util/animation/RevealOutlineProvider;FLandroid/view/ViewOutlineProvider;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/launcher3/util/animation/UiThreadCircularReveal$1;->val$revealView:Landroid/view/View;

    iput-object p2, p0, Lcom/android/launcher3/util/animation/UiThreadCircularReveal$1;->val$outlineProvider:Lcom/android/launcher3/util/animation/RevealOutlineProvider;

    iput p3, p0, Lcom/android/launcher3/util/animation/UiThreadCircularReveal$1;->val$elevation:F

    iput-object p4, p0, Lcom/android/launcher3/util/animation/UiThreadCircularReveal$1;->val$originalProvider:Landroid/view/ViewOutlineProvider;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/launcher3/util/animation/UiThreadCircularReveal$1;->val$revealView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/launcher3/util/animation/UiThreadCircularReveal$1;->val$originalProvider:Landroid/view/ViewOutlineProvider;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 49
    iget-object v0, p0, Lcom/android/launcher3/util/animation/UiThreadCircularReveal$1;->val$revealView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClipToOutline(Z)V

    .line 50
    iget-object v0, p0, Lcom/android/launcher3/util/animation/UiThreadCircularReveal$1;->val$revealView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationZ(F)V

    .line 51
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/launcher3/util/animation/UiThreadCircularReveal$1;->val$revealView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/launcher3/util/animation/UiThreadCircularReveal$1;->val$outlineProvider:Lcom/android/launcher3/util/animation/RevealOutlineProvider;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 43
    iget-object v0, p0, Lcom/android/launcher3/util/animation/UiThreadCircularReveal$1;->val$revealView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClipToOutline(Z)V

    .line 44
    iget-object v0, p0, Lcom/android/launcher3/util/animation/UiThreadCircularReveal$1;->val$revealView:Landroid/view/View;

    iget v1, p0, Lcom/android/launcher3/util/animation/UiThreadCircularReveal$1;->val$elevation:F

    neg-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationZ(F)V

    .line 45
    return-void
.end method
