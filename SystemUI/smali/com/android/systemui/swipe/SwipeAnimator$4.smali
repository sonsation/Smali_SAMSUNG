.class Lcom/android/systemui/swipe/SwipeAnimator$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SwipeAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/swipe/SwipeAnimator;->startPreviewFocusAnim(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field isAnimationCanceled:Z

.field final synthetic this$0:Lcom/android/systemui/swipe/SwipeAnimator;

.field final synthetic val$focus:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/swipe/SwipeAnimator;Z)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/systemui/swipe/SwipeAnimator;
    .param p2, "val$focus"    # Z

    .prologue
    .line 875
    iput-object p1, p0, Lcom/android/systemui/swipe/SwipeAnimator$4;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    iput-boolean p2, p0, Lcom/android/systemui/swipe/SwipeAnimator$4;->val$focus:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 876
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/swipe/SwipeAnimator$4;->isAnimationCanceled:Z

    .line 875
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 892
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/swipe/SwipeAnimator$4;->isAnimationCanceled:Z

    .line 891
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 880
    iget-boolean v1, p0, Lcom/android/systemui/swipe/SwipeAnimator$4;->isAnimationCanceled:Z

    if-eqz v1, :cond_0

    .line 881
    return-void

    .line 884
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/swipe/SwipeAnimator$4;->val$focus:Z

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    .line 885
    .local v0, "alpha":F
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator$4;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    invoke-static {v1}, Lcom/android/systemui/swipe/SwipeAnimator;->-get7(Lcom/android/systemui/swipe/SwipeAnimator;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 886
    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator$4;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    invoke-static {v1}, Lcom/android/systemui/swipe/SwipeAnimator;->-get10(Lcom/android/systemui/swipe/SwipeAnimator;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 887
    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator$4;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    invoke-static {v1}, Lcom/android/systemui/swipe/SwipeAnimator;->-get2(Lcom/android/systemui/swipe/SwipeAnimator;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 879
    return-void

    .line 884
    .end local v0    # "alpha":F
    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    .restart local v0    # "alpha":F
    goto :goto_0
.end method
