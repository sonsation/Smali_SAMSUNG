.class Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$4;
.super Ljava/lang/Object;
.source "SeslItemTouchHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->postDispatchSwipe(Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$RecoverAnimation;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;

.field final synthetic val$anim:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$RecoverAnimation;

.field final synthetic val$swipeDir:I


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$RecoverAnimation;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;

    .prologue
    .line 794
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$4;->this$0:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;

    iput-object p2, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$4;->val$anim:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$RecoverAnimation;

    iput p3, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$4;->val$swipeDir:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 797
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$4;->this$0:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$4;->this$0:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$4;->val$anim:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$RecoverAnimation;

    iget-boolean v1, v1, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$RecoverAnimation;->mOverridden:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$4;->val$anim:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$RecoverAnimation;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$RecoverAnimation;->mViewHolder:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    .line 799
    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 800
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$4;->this$0:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getItemAnimator()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;

    move-result-object v0

    .line 804
    .local v0, "animator":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;->isRunning(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemAnimatorFinishedListener;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$4;->this$0:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;

    .line 805
    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->hasRunningRecoverAnim()Z

    move-result v1

    if-nez v1, :cond_2

    .line 806
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$4;->this$0:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mCallback:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$Callback;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$4;->val$anim:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$RecoverAnimation;

    iget-object v2, v2, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$RecoverAnimation;->mViewHolder:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$4;->val$swipeDir:I

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$Callback;->onSwiped(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;I)V

    .line 811
    .end local v0    # "animator":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;
    :cond_1
    :goto_0
    return-void

    .line 808
    .restart local v0    # "animator":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$4;->this$0:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v1, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
