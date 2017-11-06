.class Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$3;
.super Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$RecoverAnimation;
.source "SeslItemTouchHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->select(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;

.field final synthetic val$prevSelected:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

.field final synthetic val$swipeDir:I


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;IIFFFFILcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;
    .param p2, "viewHolder"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    .param p3, "animationType"    # I
    .param p4, "actionState"    # I
    .param p5, "startDx"    # F
    .param p6, "startDy"    # F
    .param p7, "targetX"    # F
    .param p8, "targetY"    # F

    .prologue
    .line 716
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$3;->this$0:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;

    iput p9, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$3;->val$swipeDir:I

    iput-object p10, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$3;->val$prevSelected:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    invoke-direct/range {p0 .. p8}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$RecoverAnimation;-><init>(Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;IIFFFF)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 729
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$RecoverAnimation;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 731
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$3;->this$0:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mIsRecoverAnimationUpdated:Z

    .line 732
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$3;->this$0:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mTempViewHolder:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    .line 734
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$3;->mOverridden:Z

    if-eqz v0, :cond_1

    .line 755
    :cond_0
    :goto_0
    return-void

    .line 737
    :cond_1
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$3;->val$swipeDir:I

    if-gtz v0, :cond_3

    .line 739
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$3;->this$0:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mCallback:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$Callback;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$3;->this$0:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$3;->val$prevSelected:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$Callback;->clearView(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V

    .line 752
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$3;->this$0:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$3;->val$prevSelected:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-ne v0, v1, :cond_0

    .line 753
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$3;->this$0:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$3;->val$prevSelected:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->removeChildDrawingOrderCallbackIfNecessary(Landroid/view/View;)V

    goto :goto_0

    .line 743
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$3;->this$0:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mPendingCleanup:Ljava/util/List;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$3;->val$prevSelected:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 744
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$3;->mIsPendingCleanup:Z

    .line 745
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$3;->val$swipeDir:I

    if-lez v0, :cond_2

    .line 748
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$3;->this$0:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$3;->val$swipeDir:I

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->postDispatchSwipe(Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$RecoverAnimation;I)V

    goto :goto_1
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 722
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$3;->this$0:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mIsRecoverAnimationUpdated:Z

    .line 723
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$3;->this$0:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$3;->this$0:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mSelected:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    iput-object v1, v0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mTempViewHolder:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    .line 725
    return-void
.end method
