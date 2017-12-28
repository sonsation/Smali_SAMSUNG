.class Lcom/android/launcher3/util/animation/RevealOutlineAnimation$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "RevealOutlineAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/util/animation/RevealOutlineAnimation;->createRevealAnimator(Landroid/view/View;Z)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mWasCanceled:Z

.field final synthetic this$0:Lcom/android/launcher3/util/animation/RevealOutlineAnimation;

.field final synthetic val$elevation:F

.field final synthetic val$revealView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/launcher3/util/animation/RevealOutlineAnimation;Landroid/view/View;F)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/launcher3/util/animation/RevealOutlineAnimation;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/launcher3/util/animation/RevealOutlineAnimation$1;->this$0:Lcom/android/launcher3/util/animation/RevealOutlineAnimation;

    iput-object p2, p0, Lcom/android/launcher3/util/animation/RevealOutlineAnimation$1;->val$revealView:Landroid/view/View;

    iput p3, p0, Lcom/android/launcher3/util/animation/RevealOutlineAnimation$1;->val$elevation:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/util/animation/RevealOutlineAnimation$1;->mWasCanceled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/util/animation/RevealOutlineAnimation$1;->mWasCanceled:Z

    .line 54
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/android/launcher3/util/animation/RevealOutlineAnimation$1;->mWasCanceled:Z

    if-nez v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/android/launcher3/util/animation/RevealOutlineAnimation$1;->val$revealView:Landroid/view/View;

    sget-object v1, Landroid/view/ViewOutlineProvider;->BACKGROUND:Landroid/view/ViewOutlineProvider;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 59
    iget-object v0, p0, Lcom/android/launcher3/util/animation/RevealOutlineAnimation$1;->val$revealView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClipToOutline(Z)V

    .line 60
    iget-object v0, p0, Lcom/android/launcher3/util/animation/RevealOutlineAnimation$1;->this$0:Lcom/android/launcher3/util/animation/RevealOutlineAnimation;

    invoke-virtual {v0}, Lcom/android/launcher3/util/animation/RevealOutlineAnimation;->shouldRemoveElevationDuringAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/android/launcher3/util/animation/RevealOutlineAnimation$1;->val$revealView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationZ(F)V

    .line 64
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/launcher3/util/animation/RevealOutlineAnimation$1;->val$revealView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/launcher3/util/animation/RevealOutlineAnimation$1;->this$0:Lcom/android/launcher3/util/animation/RevealOutlineAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 45
    iget-object v0, p0, Lcom/android/launcher3/util/animation/RevealOutlineAnimation$1;->val$revealView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClipToOutline(Z)V

    .line 46
    iget-object v0, p0, Lcom/android/launcher3/util/animation/RevealOutlineAnimation$1;->this$0:Lcom/android/launcher3/util/animation/RevealOutlineAnimation;

    invoke-virtual {v0}, Lcom/android/launcher3/util/animation/RevealOutlineAnimation;->shouldRemoveElevationDuringAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/android/launcher3/util/animation/RevealOutlineAnimation$1;->val$revealView:Landroid/view/View;

    iget v1, p0, Lcom/android/launcher3/util/animation/RevealOutlineAnimation$1;->val$elevation:F

    neg-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationZ(F)V

    .line 49
    :cond_0
    return-void
.end method
