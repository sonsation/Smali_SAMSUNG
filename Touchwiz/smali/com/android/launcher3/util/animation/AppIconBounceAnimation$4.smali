.class Lcom/android/launcher3/util/animation/AppIconBounceAnimation$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AppIconBounceAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/util/animation/AppIconBounceAnimation;->animateUp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCancelled:Z

.field final synthetic this$0:Lcom/android/launcher3/util/animation/AppIconBounceAnimation;


# direct methods
.method constructor <init>(Lcom/android/launcher3/util/animation/AppIconBounceAnimation;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/launcher3/util/animation/AppIconBounceAnimation;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/launcher3/util/animation/AppIconBounceAnimation$4;->this$0:Lcom/android/launcher3/util/animation/AppIconBounceAnimation;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/util/animation/AppIconBounceAnimation$4;->mCancelled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/util/animation/AppIconBounceAnimation$4;->mCancelled:Z

    .line 109
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 88
    iget-boolean v0, p0, Lcom/android/launcher3/util/animation/AppIconBounceAnimation$4;->mCancelled:Z

    if-eqz v0, :cond_1

    .line 89
    iget-object v0, p0, Lcom/android/launcher3/util/animation/AppIconBounceAnimation$4;->this$0:Lcom/android/launcher3/util/animation/AppIconBounceAnimation;

    invoke-static {v0}, Lcom/android/launcher3/util/animation/AppIconBounceAnimation;->access$000(Lcom/android/launcher3/util/animation/AppIconBounceAnimation;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 90
    iget-object v0, p0, Lcom/android/launcher3/util/animation/AppIconBounceAnimation$4;->this$0:Lcom/android/launcher3/util/animation/AppIconBounceAnimation;

    invoke-static {v0}, Lcom/android/launcher3/util/animation/AppIconBounceAnimation;->access$000(Lcom/android/launcher3/util/animation/AppIconBounceAnimation;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 91
    iget-object v0, p0, Lcom/android/launcher3/util/animation/AppIconBounceAnimation$4;->this$0:Lcom/android/launcher3/util/animation/AppIconBounceAnimation;

    invoke-static {v0}, Lcom/android/launcher3/util/animation/AppIconBounceAnimation;->access$100(Lcom/android/launcher3/util/animation/AppIconBounceAnimation;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/android/launcher3/util/animation/AppIconBounceAnimation$4;->this$0:Lcom/android/launcher3/util/animation/AppIconBounceAnimation;

    invoke-static {v0}, Lcom/android/launcher3/util/animation/AppIconBounceAnimation;->access$100(Lcom/android/launcher3/util/animation/AppIconBounceAnimation;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 93
    iget-object v0, p0, Lcom/android/launcher3/util/animation/AppIconBounceAnimation$4;->this$0:Lcom/android/launcher3/util/animation/AppIconBounceAnimation;

    invoke-static {v0}, Lcom/android/launcher3/util/animation/AppIconBounceAnimation;->access$100(Lcom/android/launcher3/util/animation/AppIconBounceAnimation;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 103
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/util/animation/AppIconBounceAnimation$4;->this$0:Lcom/android/launcher3/util/animation/AppIconBounceAnimation;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher3/util/animation/AppIconBounceAnimation;->access$302(Lcom/android/launcher3/util/animation/AppIconBounceAnimation;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 104
    return-void

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/util/animation/AppIconBounceAnimation$4;->this$0:Lcom/android/launcher3/util/animation/AppIconBounceAnimation;

    invoke-static {v0}, Lcom/android/launcher3/util/animation/AppIconBounceAnimation;->access$000(Lcom/android/launcher3/util/animation/AppIconBounceAnimation;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    .line 97
    iget-object v0, p0, Lcom/android/launcher3/util/animation/AppIconBounceAnimation$4;->this$0:Lcom/android/launcher3/util/animation/AppIconBounceAnimation;

    invoke-static {v0}, Lcom/android/launcher3/util/animation/AppIconBounceAnimation;->access$000(Lcom/android/launcher3/util/animation/AppIconBounceAnimation;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 98
    iget-object v0, p0, Lcom/android/launcher3/util/animation/AppIconBounceAnimation$4;->this$0:Lcom/android/launcher3/util/animation/AppIconBounceAnimation;

    invoke-static {v0}, Lcom/android/launcher3/util/animation/AppIconBounceAnimation;->access$100(Lcom/android/launcher3/util/animation/AppIconBounceAnimation;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/android/launcher3/util/animation/AppIconBounceAnimation$4;->this$0:Lcom/android/launcher3/util/animation/AppIconBounceAnimation;

    invoke-static {v0}, Lcom/android/launcher3/util/animation/AppIconBounceAnimation;->access$100(Lcom/android/launcher3/util/animation/AppIconBounceAnimation;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    .line 100
    iget-object v0, p0, Lcom/android/launcher3/util/animation/AppIconBounceAnimation$4;->this$0:Lcom/android/launcher3/util/animation/AppIconBounceAnimation;

    invoke-static {v0}, Lcom/android/launcher3/util/animation/AppIconBounceAnimation;->access$100(Lcom/android/launcher3/util/animation/AppIconBounceAnimation;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_0
.end method
