.class Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$4;
.super Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$VpaListenerAdapter;
.source "SeslDefaultItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->animateRemoveImpl(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;

.field final synthetic val$animation:Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;

.field final synthetic val$holder:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;

    .prologue
    .line 290
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$4;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;

    iput-object p2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$4;->val$holder:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    iput-object p3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$4;->val$animation:Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$VpaListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 298
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$4;->val$animation:Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;->setListener(Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorListener;)Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;

    .line 299
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 300
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$4;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$4;->val$holder:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->dispatchRemoveFinished(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V

    .line 301
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$4;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$4;->val$holder:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 302
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$4;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->dispatchFinishedWhenDone()V

    .line 303
    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 293
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$4;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$4;->val$holder:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->dispatchRemoveStarting(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V

    .line 294
    return-void
.end method
