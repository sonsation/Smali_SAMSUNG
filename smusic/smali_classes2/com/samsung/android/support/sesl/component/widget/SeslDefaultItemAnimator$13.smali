.class Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$13;
.super Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$VpaListenerAdapter;
.source "SeslDefaultItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->animateChangeImpl(Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$ChangeInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;

.field final synthetic val$changeInfo:Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$ChangeInfo;

.field final synthetic val$newView:Landroid/view/View;

.field final synthetic val$newViewAnimation:Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$ChangeInfo;Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;

    .prologue
    .line 882
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$13;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;

    iput-object p2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$13;->val$changeInfo:Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$ChangeInfo;

    iput-object p3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$13;->val$newViewAnimation:Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;

    iput-object p4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$13;->val$newView:Landroid/view/View;

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$VpaListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 889
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$13;->val$newViewAnimation:Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;->setListener(Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorListener;)Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;

    .line 890
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$13;->val$newView:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 891
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$13;->val$newView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 892
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$13;->val$newView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 893
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$13;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$13;->val$changeInfo:Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$ChangeInfo;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$ChangeInfo;->newHolder:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->dispatchChangeFinished(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;Z)V

    .line 894
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$13;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$13;->val$changeInfo:Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$ChangeInfo;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$ChangeInfo;->newHolder:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 895
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$13;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->dispatchFinishedWhenDone()V

    .line 896
    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 885
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$13;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$13;->val$changeInfo:Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$ChangeInfo;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$ChangeInfo;->newHolder:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->dispatchChangeStarting(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;Z)V

    .line 886
    return-void
.end method
