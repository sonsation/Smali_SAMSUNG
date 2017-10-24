.class Lcom/android/keyguard/servicebox/utils/SecTransition$1;
.super Ljava/lang/Object;
.source "SecTransition.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/servicebox/utils/SecTransition;->go(Landroid/view/View;Landroid/animation/Animator$AnimatorListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/servicebox/utils/SecTransition;

.field final synthetic val$listener:Landroid/animation/Animator$AnimatorListener;


# direct methods
.method constructor <init>(Lcom/android/keyguard/servicebox/utils/SecTransition;Landroid/animation/Animator$AnimatorListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/servicebox/utils/SecTransition;
    .param p2, "val$listener"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    .line 204
    iput-object p1, p0, Lcom/android/keyguard/servicebox/utils/SecTransition$1;->this$0:Lcom/android/keyguard/servicebox/utils/SecTransition;

    iput-object p2, p0, Lcom/android/keyguard/servicebox/utils/SecTransition$1;->val$listener:Landroid/animation/Animator$AnimatorListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/keyguard/servicebox/utils/SecTransition$1;->this$0:Lcom/android/keyguard/servicebox/utils/SecTransition;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/utils/SecTransition;->-get3(Lcom/android/keyguard/servicebox/utils/SecTransition;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 209
    iget-object v0, p0, Lcom/android/keyguard/servicebox/utils/SecTransition$1;->this$0:Lcom/android/keyguard/servicebox/utils/SecTransition;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/utils/SecTransition;->-get3(Lcom/android/keyguard/servicebox/utils/SecTransition;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 211
    iget-object v0, p0, Lcom/android/keyguard/servicebox/utils/SecTransition$1;->this$0:Lcom/android/keyguard/servicebox/utils/SecTransition;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/utils/SecTransition;->-get2(Lcom/android/keyguard/servicebox/utils/SecTransition;)Lcom/android/keyguard/servicebox/utils/SecTransitionOption;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->isGlobalAlphaEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/android/keyguard/servicebox/utils/SecTransition$1;->this$0:Lcom/android/keyguard/servicebox/utils/SecTransition;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/utils/SecTransition;->-wrap0(Lcom/android/keyguard/servicebox/utils/SecTransition;)V

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/servicebox/utils/SecTransition$1;->this$0:Lcom/android/keyguard/servicebox/utils/SecTransition;

    iget-object v1, p0, Lcom/android/keyguard/servicebox/utils/SecTransition$1;->this$0:Lcom/android/keyguard/servicebox/utils/SecTransition;

    invoke-static {v1}, Lcom/android/keyguard/servicebox/utils/SecTransition;->-get3(Lcom/android/keyguard/servicebox/utils/SecTransition;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/keyguard/servicebox/utils/SecTransition;->-wrap1(Lcom/android/keyguard/servicebox/utils/SecTransition;Landroid/view/View;)V

    .line 217
    iget-object v0, p0, Lcom/android/keyguard/servicebox/utils/SecTransition$1;->this$0:Lcom/android/keyguard/servicebox/utils/SecTransition;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/utils/SecTransition;->-get0(Lcom/android/keyguard/servicebox/utils/SecTransition;)Landroid/animation/AnimatorSet;

    move-result-object v0

    new-instance v1, Lcom/android/keyguard/servicebox/utils/SecTransition$1$1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/servicebox/utils/SecTransition$1$1;-><init>(Lcom/android/keyguard/servicebox/utils/SecTransition$1;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 240
    iget-object v0, p0, Lcom/android/keyguard/servicebox/utils/SecTransition$1;->val$listener:Landroid/animation/Animator$AnimatorListener;

    if-eqz v0, :cond_1

    .line 241
    iget-object v0, p0, Lcom/android/keyguard/servicebox/utils/SecTransition$1;->this$0:Lcom/android/keyguard/servicebox/utils/SecTransition;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/utils/SecTransition;->-get0(Lcom/android/keyguard/servicebox/utils/SecTransition;)Landroid/animation/AnimatorSet;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/servicebox/utils/SecTransition$1;->val$listener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 243
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/servicebox/utils/SecTransition$1;->this$0:Lcom/android/keyguard/servicebox/utils/SecTransition;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/utils/SecTransition;->-get0(Lcom/android/keyguard/servicebox/utils/SecTransition;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 245
    const/4 v0, 0x1

    return v0
.end method
