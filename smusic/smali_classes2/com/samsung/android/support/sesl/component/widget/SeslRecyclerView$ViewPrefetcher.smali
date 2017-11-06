.class Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewPrefetcher;
.super Ljava/lang/Object;
.source "SeslRecyclerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewPrefetcher"
.end annotation


# instance fields
.field private mDx:I

.field private mDy:I

.field mItemPrefetchArray:[I

.field mPostTimeNanos:J

.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .prologue
    .line 5967
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewPrefetcher;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearPrefetchPositions()V
    .locals 2

    .prologue
    .line 6002
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewPrefetcher;->mItemPrefetchArray:[I

    if-eqz v0, :cond_0

    .line 6003
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewPrefetcher;->mItemPrefetchArray:[I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 6005
    :cond_0
    return-void
.end method

.method public lastPrefetchIncludedPosition(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 5990
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewPrefetcher;->mItemPrefetchArray:[I

    if-eqz v1, :cond_1

    .line 5991
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewPrefetcher;->mItemPrefetchArray:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 5992
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewPrefetcher;->mItemPrefetchArray:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    const/4 v1, 0x1

    .line 5995
    .end local v0    # "i":I
    :goto_1
    return v1

    .line 5991
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5995
    .end local v0    # "i":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public postFromTraversal(II)V
    .locals 2
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    .line 5979
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewPrefetcher;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewPrefetcher;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewPrefetcher;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    .line 5981
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->getItemPrefetchCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 5982
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewPrefetcher;->mDx:I

    .line 5983
    iput p2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewPrefetcher;->mDy:I

    .line 5984
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewPrefetcher;->mPostTimeNanos:J

    .line 5985
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewPrefetcher;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->post(Ljava/lang/Runnable;)Z

    .line 5987
    :cond_0
    return-void
.end method

.method public run()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x0

    .line 6010
    :try_start_0
    const-string v8, "RV Prefetch"

    invoke-static {v8}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 6011
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewPrefetcher;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v8, v8, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    invoke-virtual {v8}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->getItemPrefetchCount()I

    move-result v6

    .line 6012
    .local v6, "prefetchCount":I
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewPrefetcher;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v8, v8, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewPrefetcher;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v8, v8, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewPrefetcher;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v8, v8, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    .line 6014
    invoke-virtual {v8}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->isItemPrefetchEnabled()Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x1

    if-lt v6, v8, :cond_0

    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewPrefetcher;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .line 6016
    invoke-virtual {v8}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->hasPendingAdapterUpdates()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    if-eqz v8, :cond_1

    .line 6044
    :cond_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 6046
    :goto_0
    return-void

    .line 6023
    :cond_1
    :try_start_1
    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewPrefetcher;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v9}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getDrawingTime()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    .line 6024
    .local v0, "lastFrameVsyncNanos":J
    cmp-long v8, v0, v12

    if-eqz v8, :cond_2

    sget-wide v8, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->sFrameIntervalNanos:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long v8, v8, v12

    if-nez v8, :cond_3

    .line 6044
    :cond_2
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_0

    .line 6029
    :cond_3
    :try_start_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 6030
    .local v4, "nowNanos":J
    sget-wide v8, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->sFrameIntervalNanos:J

    add-long v2, v0, v8

    .line 6031
    .local v2, "nextFrameNanos":J
    iget-wide v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewPrefetcher;->mPostTimeNanos:J

    sub-long v8, v4, v8

    sget-wide v10, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->sFrameIntervalNanos:J

    cmp-long v8, v8, v10

    if-gtz v8, :cond_4

    sub-long v8, v2, v4

    .line 6032
    invoke-static {}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->access$4700()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v10

    cmp-long v8, v8, v10

    if-gez v8, :cond_5

    .line 6044
    :cond_4
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_0

    .line 6037
    :cond_5
    :try_start_3
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewPrefetcher;->mItemPrefetchArray:[I

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewPrefetcher;->mItemPrefetchArray:[I

    array-length v8, v8

    if-ge v8, v6, :cond_7

    .line 6038
    :cond_6
    new-array v8, v6, [I

    iput-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewPrefetcher;->mItemPrefetchArray:[I

    .line 6040
    :cond_7
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewPrefetcher;->mItemPrefetchArray:[I

    const/4 v9, -0x1

    invoke-static {v8, v9}, Ljava/util/Arrays;->fill([II)V

    .line 6041
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewPrefetcher;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v8, v8, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewPrefetcher;->mDx:I

    iget v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewPrefetcher;->mDy:I

    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewPrefetcher;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v11, v11, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mState:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    iget-object v12, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewPrefetcher;->mItemPrefetchArray:[I

    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->gatherPrefetchIndices(IILcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;[I)I

    move-result v7

    .line 6042
    .local v7, "viewCount":I
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewPrefetcher;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v8, v8, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mRecycler:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;

    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewPrefetcher;->mItemPrefetchArray:[I

    invoke-virtual {v8, v9, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Recycler;->prefetch([II)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 6044
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_0

    .end local v0    # "lastFrameVsyncNanos":J
    .end local v2    # "nextFrameNanos":J
    .end local v4    # "nowNanos":J
    .end local v6    # "prefetchCount":I
    .end local v7    # "viewCount":I
    :catchall_0
    move-exception v8

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v8
.end method
