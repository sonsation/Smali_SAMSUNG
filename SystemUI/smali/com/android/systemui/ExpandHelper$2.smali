.class Lcom/android/systemui/ExpandHelper$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ExpandHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/ExpandHelper;->finishExpanding(ZF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public mCancelled:Z

.field final synthetic this$0:Lcom/android/systemui/ExpandHelper;

.field final synthetic val$expand:Z

.field final synthetic val$scaledView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/ExpandHelper;Landroid/view/View;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/ExpandHelper;
    .param p2, "val$scaledView"    # Landroid/view/View;
    .param p3, "val$expand"    # Z

    .prologue
    .line 555
    iput-object p1, p0, Lcom/android/systemui/ExpandHelper$2;->this$0:Lcom/android/systemui/ExpandHelper;

    iput-object p2, p0, Lcom/android/systemui/ExpandHelper$2;->val$scaledView:Landroid/view/View;

    iput-boolean p3, p0, Lcom/android/systemui/ExpandHelper$2;->val$expand:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 571
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/ExpandHelper$2;->mCancelled:Z

    .line 570
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 560
    iget-boolean v0, p0, Lcom/android/systemui/ExpandHelper$2;->mCancelled:Z

    if-nez v0, :cond_0

    .line 561
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper$2;->this$0:Lcom/android/systemui/ExpandHelper;

    invoke-static {v0}, Lcom/android/systemui/ExpandHelper;->-get0(Lcom/android/systemui/ExpandHelper;)Lcom/android/systemui/ExpandHelper$Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/ExpandHelper$2;->val$scaledView:Landroid/view/View;

    iget-boolean v2, p0, Lcom/android/systemui/ExpandHelper$2;->val$expand:Z

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/ExpandHelper$Callback;->setUserExpandedChild(Landroid/view/View;Z)V

    .line 565
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper$2;->this$0:Lcom/android/systemui/ExpandHelper;

    invoke-static {v0}, Lcom/android/systemui/ExpandHelper;->-get0(Lcom/android/systemui/ExpandHelper;)Lcom/android/systemui/ExpandHelper$Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/ExpandHelper$2;->val$scaledView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/ExpandHelper$Callback;->setUserLockedChild(Landroid/view/View;Z)V

    .line 566
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper$2;->this$0:Lcom/android/systemui/ExpandHelper;

    invoke-static {v0}, Lcom/android/systemui/ExpandHelper;->-get4(Lcom/android/systemui/ExpandHelper;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 559
    return-void

    .line 563
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper$2;->this$0:Lcom/android/systemui/ExpandHelper;

    invoke-static {v0}, Lcom/android/systemui/ExpandHelper;->-get0(Lcom/android/systemui/ExpandHelper;)Lcom/android/systemui/ExpandHelper$Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/ExpandHelper$2;->val$scaledView:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/android/systemui/ExpandHelper$Callback;->setExpansionCancelled(Landroid/view/View;)V

    goto :goto_0
.end method
