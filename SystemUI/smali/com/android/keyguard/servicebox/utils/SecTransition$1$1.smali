.class Lcom/android/keyguard/servicebox/utils/SecTransition$1$1;
.super Ljava/lang/Object;
.source "SecTransition.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/servicebox/utils/SecTransition$1;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/keyguard/servicebox/utils/SecTransition$1;


# direct methods
.method constructor <init>(Lcom/android/keyguard/servicebox/utils/SecTransition$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/keyguard/servicebox/utils/SecTransition$1;

    .prologue
    .line 217
    iput-object p1, p0, Lcom/android/keyguard/servicebox/utils/SecTransition$1$1;->this$1:Lcom/android/keyguard/servicebox/utils/SecTransition$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 232
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 224
    iget-object v2, p0, Lcom/android/keyguard/servicebox/utils/SecTransition$1$1;->this$1:Lcom/android/keyguard/servicebox/utils/SecTransition$1;

    iget-object v2, v2, Lcom/android/keyguard/servicebox/utils/SecTransition$1;->this$0:Lcom/android/keyguard/servicebox/utils/SecTransition;

    iget-object v2, v2, Lcom/android/keyguard/servicebox/utils/SecTransition;->mSourceRootViewList:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "sourceView$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 225
    .local v0, "sourceView":Landroid/view/View;
    iget-object v2, p0, Lcom/android/keyguard/servicebox/utils/SecTransition$1$1;->this$1:Lcom/android/keyguard/servicebox/utils/SecTransition$1;

    iget-object v2, v2, Lcom/android/keyguard/servicebox/utils/SecTransition$1;->this$0:Lcom/android/keyguard/servicebox/utils/SecTransition;

    invoke-static {v2}, Lcom/android/keyguard/servicebox/utils/SecTransition;->-get1(Lcom/android/keyguard/servicebox/utils/SecTransition;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 228
    .end local v0    # "sourceView":Landroid/view/View;
    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/servicebox/utils/SecTransition$1$1;->this$1:Lcom/android/keyguard/servicebox/utils/SecTransition$1;

    iget-object v2, v2, Lcom/android/keyguard/servicebox/utils/SecTransition$1;->this$0:Lcom/android/keyguard/servicebox/utils/SecTransition;

    iget-object v3, p0, Lcom/android/keyguard/servicebox/utils/SecTransition$1$1;->this$1:Lcom/android/keyguard/servicebox/utils/SecTransition$1;

    iget-object v3, v3, Lcom/android/keyguard/servicebox/utils/SecTransition$1;->this$0:Lcom/android/keyguard/servicebox/utils/SecTransition;

    invoke-static {v3}, Lcom/android/keyguard/servicebox/utils/SecTransition;->-get1(Lcom/android/keyguard/servicebox/utils/SecTransition;)Landroid/view/ViewGroup;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/keyguard/servicebox/utils/SecTransition;->setClipOnAll(Landroid/view/View;Z)V

    .line 223
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 236
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 219
    return-void
.end method
