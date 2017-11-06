.class Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$RecyclerViewDataObserver;
.super Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$AdapterDataObserver;
.source "SeslRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecyclerViewDataObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)V
    .locals 0

    .prologue
    .line 6298
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$RecyclerViewDataObserver;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$AdapterDataObserver;-><init>()V

    .line 6299
    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 6303
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$RecyclerViewDataObserver;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 6304
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$RecyclerViewDataObserver;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6308
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$RecyclerViewDataObserver;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mState:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    iput-boolean v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->mStructureChanged:Z

    .line 6309
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$RecyclerViewDataObserver;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->setDataSetChangedAfterLayout()V

    .line 6314
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$RecyclerViewDataObserver;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mAdapterHelper:Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->hasPendingUpdates()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6315
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$RecyclerViewDataObserver;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->requestLayout()V

    .line 6317
    :cond_0
    return-void

    .line 6311
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$RecyclerViewDataObserver;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mState:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    iput-boolean v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->mStructureChanged:Z

    .line 6312
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$RecyclerViewDataObserver;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->setDataSetChangedAfterLayout()V

    goto :goto_0
.end method

.method public onItemRangeChanged(IILjava/lang/Object;)V
    .locals 2
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I
    .param p3, "payload"    # Ljava/lang/Object;

    .prologue
    .line 6321
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$RecyclerViewDataObserver;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 6322
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$RecyclerViewDataObserver;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mAdapterHelper:Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->onItemRangeChanged(IILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6323
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$RecyclerViewDataObserver;->triggerUpdateProcessor()V

    .line 6325
    :cond_0
    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 2
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 6329
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$RecyclerViewDataObserver;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 6330
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$RecyclerViewDataObserver;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mAdapterHelper:Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->onItemRangeInserted(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6331
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$RecyclerViewDataObserver;->triggerUpdateProcessor()V

    .line 6333
    :cond_0
    return-void
.end method

.method public onItemRangeMoved(III)V
    .locals 2
    .param p1, "fromPosition"    # I
    .param p2, "toPosition"    # I
    .param p3, "itemCount"    # I

    .prologue
    .line 6345
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$RecyclerViewDataObserver;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 6346
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$RecyclerViewDataObserver;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mAdapterHelper:Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->onItemRangeMoved(III)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6347
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$RecyclerViewDataObserver;->triggerUpdateProcessor()V

    .line 6349
    :cond_0
    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 2
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 6337
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$RecyclerViewDataObserver;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 6338
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$RecyclerViewDataObserver;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mAdapterHelper:Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper;->onItemRangeRemoved(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6339
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$RecyclerViewDataObserver;->triggerUpdateProcessor()V

    .line 6341
    :cond_0
    return-void
.end method

.method triggerUpdateProcessor()V
    .locals 2

    .prologue
    .line 6352
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$RecyclerViewDataObserver;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mHasFixedSize:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$RecyclerViewDataObserver;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mIsAttached:Z

    if-eqz v0, :cond_0

    .line 6353
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$RecyclerViewDataObserver;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$RecyclerViewDataObserver;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mUpdateChildViewsRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 6358
    :goto_0
    return-void

    .line 6355
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$RecyclerViewDataObserver;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mAdapterUpdateDuringMeasure:Z

    .line 6356
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$RecyclerViewDataObserver;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->requestLayout()V

    goto :goto_0
.end method
