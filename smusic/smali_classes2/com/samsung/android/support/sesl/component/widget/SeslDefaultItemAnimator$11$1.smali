.class Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$11$1;
.super Ljava/lang/Object;
.source "SeslDefaultItemAnimator.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$11;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$11;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$11;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$11;

    .prologue
    .line 722
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$11$1;->this$1:Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 748
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 735
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$11$1;->this$1:Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$11;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$11;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;

    invoke-static {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->access$300(Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    .line 736
    .local v0, "vH":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 737
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$11$1;->this$1:Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$11;

    iget-object v2, v2, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$11;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;

    invoke-virtual {v2, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->dispatchRemoveFinished(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V

    .line 738
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$11$1;->this$1:Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$11;

    iget-object v2, v2, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$11;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;

    iget-object v2, v2, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 740
    .end local v0    # "vH":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$11$1;->this$1:Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$11;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$11;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->dispatchFinishedWhenDone()V

    .line 741
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$11$1;->this$1:Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$11;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$11;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;

    invoke-static {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->access$400(Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;)V

    .line 742
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$11$1;->this$1:Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$11;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$11;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->access$602(Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;Z)Z

    .line 743
    const-string v1, "SeslDefaultItemAnimator"

    const-string v2, "animateMoveImpl : onPreDraw : animBounds : onAnimationEnd"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 752
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 725
    const-string v2, "SeslDefaultItemAnimator"

    const-string v3, "animateMoveImpl : onPreDraw : animBounds : onAnimationStart"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$11$1;->this$1:Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$11;

    iget-object v2, v2, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$11;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;

    invoke-static {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->access$300(Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 727
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$11$1;->this$1:Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$11;

    iget-object v2, v2, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$11;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;

    invoke-static {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->access$300(Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    .line 728
    .local v1, "vH":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    iget-object v2, v1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 729
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$11$1;->this$1:Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$11;

    iget-object v2, v2, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$11;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;

    invoke-virtual {v2, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->dispatchRemoveStarting(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V

    .line 726
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 731
    .end local v1    # "vH":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    :cond_0
    return-void
.end method
