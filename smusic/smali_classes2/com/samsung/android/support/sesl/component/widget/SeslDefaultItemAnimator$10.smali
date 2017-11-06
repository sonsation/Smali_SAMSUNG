.class Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$10;
.super Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$VpaListenerAdapter;
.source "SeslDefaultItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->animateMoveImpl(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;IIIIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;

.field final synthetic val$animation:Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;

.field final synthetic val$deltaX:I

.field final synthetic val$deltaY:I

.field final synthetic val$holder:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;IILcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;

    .prologue
    .line 665
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$10;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;

    iput-object p2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$10;->val$holder:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    iput p3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$10;->val$deltaX:I

    iput p4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$10;->val$deltaY:I

    iput-object p5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$10;->val$animation:Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$VpaListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 672
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$10;->val$deltaX:I

    if-eqz v0, :cond_0

    .line 673
    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 675
    :cond_0
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$10;->val$deltaY:I

    if-eqz v0, :cond_1

    .line 676
    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 678
    :cond_1
    return-void
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 681
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$10;->val$animation:Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;->setListener(Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorListener;)Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;

    .line 682
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$10;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$10;->val$holder:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->dispatchMoveFinished(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V

    .line 683
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$10;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$10;->val$holder:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 684
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$10;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->dispatchFinishedWhenDone()V

    .line 685
    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 668
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$10;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$10;->val$holder:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->dispatchMoveStarting(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V

    .line 669
    return-void
.end method
