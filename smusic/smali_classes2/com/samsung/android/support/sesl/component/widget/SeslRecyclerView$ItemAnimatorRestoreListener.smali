.class Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimatorRestoreListener;
.super Ljava/lang/Object;
.source "SeslRecyclerView.java"

# interfaces
.implements Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator$ItemAnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemAnimatorRestoreListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)V
    .locals 0

    .prologue
    .line 12704
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimatorRestoreListener;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12705
    return-void
.end method


# virtual methods
.method public onAnimationFinished(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V
    .locals 3
    .param p1, "item"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    .prologue
    const/4 v1, 0x0

    .line 12709
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 12710
    iget-object v0, p1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mShadowedHolder:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mShadowingHolder:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    if-nez v0, :cond_0

    .line 12711
    iput-object v1, p1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mShadowedHolder:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    .line 12715
    :cond_0
    iput-object v1, p1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mShadowingHolder:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    .line 12716
    invoke-static {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->access$6100(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 12717
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimatorRestoreListener;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v1, p1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->removeAnimatingView(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12718
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimatorRestoreListener;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v1, p1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 12721
    :cond_1
    return-void
.end method
