.class Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$6;
.super Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$VpaListenerAdapter;
.source "DefaultItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->animateMoveImpl(Landroid/support/v7/widget/RecyclerView$ViewHolder;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;

.field final synthetic val$animation:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

.field final synthetic val$deltaX:I

.field final synthetic val$deltaY:I

.field final synthetic val$holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;Landroid/support/v7/widget/RecyclerView$ViewHolder;IILandroid/support/v4/view/ViewPropertyAnimatorCompat;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;
    .param p2, "val$holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p3, "val$deltaX"    # I
    .param p4, "val$deltaY"    # I
    .param p5, "val$animation"    # Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .prologue
    .line 333
    iput-object p1, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$6;->this$0:Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;

    iput-object p2, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$6;->val$holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iput p3, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$6;->val$deltaX:I

    iput p4, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$6;->val$deltaY:I

    iput-object p5, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$6;->val$animation:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$VpaListenerAdapter;-><init>(Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$VpaListenerAdapter;)V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 340
    iget v0, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$6;->val$deltaX:I

    if-eqz v0, :cond_0

    .line 341
    invoke-static {p1, v1}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 343
    :cond_0
    iget v0, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$6;->val$deltaY:I

    if-eqz v0, :cond_1

    .line 344
    invoke-static {p1, v1}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 339
    :cond_1
    return-void
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 349
    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$6;->val$animation:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 350
    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$6;->this$0:Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$6;->val$holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->dispatchMoveFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 351
    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$6;->this$0:Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;

    invoke-static {v0}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->-get4(Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$6;->val$holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 352
    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$6;->this$0:Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;

    invoke-static {v0}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->-wrap3(Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;)V

    .line 348
    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 336
    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$6;->this$0:Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$6;->val$holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->dispatchMoveStarting(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 335
    return-void
.end method
