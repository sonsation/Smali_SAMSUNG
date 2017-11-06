.class public abstract Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;
.super Ljava/lang/Object;
.source "SeslRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mHasStableIds:Z

.field private mHostView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

.field private mLastInsertedPosition:I

.field private final mObservable:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$AdapterDataObservable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7504
    .local p0, "this":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;, "Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter<TVH;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7505
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$AdapterDataObservable;

    invoke-direct {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$AdapterDataObservable;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;->mObservable:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$AdapterDataObservable;

    .line 7506
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;->mHasStableIds:Z

    .line 7507
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;->mHostView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .line 7508
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;->mLastInsertedPosition:I

    return-void
.end method


# virtual methods
.method public final bindViewHolder(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;I)V
    .locals 5
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;, "Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter<TVH;>;"
    .local p1, "holder":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;, "TVH;"
    const/4 v4, 0x1

    .line 7624
    iput p2, p1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mPosition:I

    .line 7625
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7626
    invoke-virtual {p0, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;->getItemId(I)J

    move-result-wide v2

    iput-wide v2, p1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mItemId:J

    .line 7628
    :cond_0
    const/16 v1, 0x207

    invoke-virtual {p1, v4, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->setFlags(II)V

    .line 7631
    const-string v1, "RV OnBindView"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 7632
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->getUnmodifiedPayloads()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;->onBindViewHolder(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;ILjava/util/List;)V

    .line 7633
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->clearPayload()V

    .line 7634
    iget-object v1, p1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 7635
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    instance-of v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;

    if-eqz v1, :cond_1

    .line 7636
    check-cast v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;

    .end local v0    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iput-boolean v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 7638
    :cond_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 7639
    return-void
.end method

.method public clearLastInsertedPositionInternal()V
    .locals 1

    .prologue
    .line 7521
    .local p0, "this":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;, "Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter<TVH;>;"
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;->mLastInsertedPosition:I

    .line 7522
    return-void
.end method

.method public final createViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation

    .prologue
    .line 7609
    .local p0, "this":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;, "Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter<TVH;>;"
    const-string v1, "RV CreateView"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 7610
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    move-result-object v0

    .line 7611
    .local v0, "holder":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;, "TVH;"
    iput p2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mItemViewType:I

    .line 7612
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 7613
    return-object v0
.end method

.method public abstract getItemCount()I
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 7682
    .local p0, "this":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;, "Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter<TVH;>;"
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 7654
    .local p0, "this":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;, "Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter<TVH;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public getLastInsertedPositionInternal()I
    .locals 1

    .prologue
    .line 7514
    .local p0, "this":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;, "Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter<TVH;>;"
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;->mLastInsertedPosition:I

    return v0
.end method

.method public final hasObservers()Z
    .locals 1

    .prologue
    .line 7792
    .local p0, "this":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;, "Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter<TVH;>;"
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;->mObservable:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$AdapterDataObservable;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$AdapterDataObservable;->hasObservers()Z

    move-result v0

    return v0
.end method

.method public final hasStableIds()Z
    .locals 1

    .prologue
    .line 7700
    .local p0, "this":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;, "Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter<TVH;>;"
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;->mHasStableIds:Z

    return v0
.end method

.method public final notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 7879
    .local p0, "this":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;, "Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter<TVH;>;"
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;->mObservable:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$AdapterDataObservable;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$AdapterDataObservable;->notifyChanged()V

    .line 7880
    return-void
.end method

.method public final notifyItemChanged(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 7895
    .local p0, "this":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;, "Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter<TVH;>;"
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;->mObservable:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$AdapterDataObservable;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$AdapterDataObservable;->notifyItemRangeChanged(II)V

    .line 7896
    return-void
.end method

.method public final notifyItemChanged(ILjava/lang/Object;)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "payload"    # Ljava/lang/Object;

    .prologue
    .line 7923
    .local p0, "this":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;, "Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter<TVH;>;"
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;->mObservable:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$AdapterDataObservable;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$AdapterDataObservable;->notifyItemRangeChanged(IILjava/lang/Object;)V

    .line 7924
    return-void
.end method

.method public final notifyItemInserted(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 7988
    .local p0, "this":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;, "Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter<TVH;>;"
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;->mObservable:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$AdapterDataObservable;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$AdapterDataObservable;->notifyItemRangeInserted(II)V

    .line 7989
    return-void
.end method

.method public final notifyItemMoved(II)V
    .locals 1
    .param p1, "fromPosition"    # I
    .param p2, "toPosition"    # I

    .prologue
    .line 8003
    .local p0, "this":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;, "Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter<TVH;>;"
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;->mObservable:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$AdapterDataObservable;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$AdapterDataObservable;->notifyItemMoved(II)V

    .line 8004
    return-void
.end method

.method public final notifyItemRangeChanged(II)V
    .locals 1
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 7941
    .local p0, "this":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;, "Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter<TVH;>;"
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;->mObservable:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$AdapterDataObservable;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$AdapterDataObservable;->notifyItemRangeChanged(II)V

    .line 7942
    return-void
.end method

.method public final notifyItemRangeChanged(IILjava/lang/Object;)V
    .locals 1
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I
    .param p3, "payload"    # Ljava/lang/Object;

    .prologue
    .line 7971
    .local p0, "this":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;, "Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter<TVH;>;"
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;->mObservable:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$AdapterDataObservable;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$AdapterDataObservable;->notifyItemRangeChanged(IILjava/lang/Object;)V

    .line 7972
    return-void
.end method

.method public final notifyItemRangeInserted(II)V
    .locals 3
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 8022
    .local p0, "this":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;, "Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter<TVH;>;"
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;->mLastInsertedPosition:I

    .line 8023
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;->mObservable:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$AdapterDataObservable;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$AdapterDataObservable;->notifyItemRangeInserted(II)V

    .line 8024
    add-int v0, p1, p2

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;->mLastInsertedPosition:I

    .line 8025
    const-string v0, "SeslRecyclerView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SeslRecyclerView.Adapter : notifyItemRangeInserted : mLastInsertedPosition = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;->mLastInsertedPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8026
    return-void
.end method

.method public final notifyItemRangeRemoved(II)V
    .locals 1
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 8059
    .local p0, "this":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;, "Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter<TVH;>;"
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;->mObservable:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$AdapterDataObservable;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$AdapterDataObservable;->notifyItemRangeRemoved(II)V

    .line 8060
    return-void
.end method

.method public final notifyItemRangeRemoved(IILcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V
    .locals 1
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I
    .param p3, "groupViewHolder"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    .prologue
    .line 8076
    .local p0, "this":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;, "Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter<TVH;>;"
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;->mHostView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    if-eqz v0, :cond_0

    .line 8077
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;->mHostView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-static {v0, p3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->access$5600(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V

    .line 8079
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;->mObservable:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$AdapterDataObservable;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$AdapterDataObservable;->notifyItemRangeRemoved(II)V

    .line 8080
    return-void
.end method

.method public final notifyItemRemoved(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 8042
    .local p0, "this":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;, "Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter<TVH;>;"
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;->mObservable:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$AdapterDataObservable;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$AdapterDataObservable;->notifyItemRangeRemoved(II)V

    .line 8043
    return-void
.end method

.method public onAttachedToRecyclerView(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)V
    .locals 0
    .param p1, "recyclerView"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .prologue
    .line 7838
    .local p0, "this":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;, "Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter<TVH;>;"
    return-void
.end method

.method public abstract onBindViewHolder(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation
.end method

.method public onBindViewHolder(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 0
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 7599
    .local p0, "this":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;, "Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter<TVH;>;"
    .local p1, "holder":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;, "TVH;"
    .local p3, "payloads":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;->onBindViewHolder(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;I)V

    .line 7600
    return-void
.end method

.method public abstract onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation
.end method

.method public onDetachedFromRecyclerView(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)V
    .locals 0
    .param p1, "recyclerView"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .prologue
    .line 7847
    .local p0, "this":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;, "Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter<TVH;>;"
    return-void
.end method

.method public onFailedToRecycleView(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)Z"
        }
    .end annotation

    .prologue
    .line 7758
    .local p0, "this":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;, "Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter<TVH;>;"
    .local p1, "holder":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;, "TVH;"
    const/4 v0, 0x0

    return v0
.end method

.method public onViewAttachedToWindow(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    .prologue
    .line 7772
    .local p0, "this":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;, "Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter<TVH;>;"
    .local p1, "holder":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;, "TVH;"
    return-void
.end method

.method public onViewDetachedFromWindow(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    .prologue
    .line 7784
    .local p0, "this":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;, "Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter<TVH;>;"
    .local p1, "holder":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;, "TVH;"
    return-void
.end method

.method public onViewRecycled(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    .prologue
    .line 7721
    .local p0, "this":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;, "Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter<TVH;>;"
    .local p1, "holder":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;, "TVH;"
    return-void
.end method

.method public registerAdapterDataObserver(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$AdapterDataObserver;)V
    .locals 1
    .param p1, "observer"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$AdapterDataObserver;

    .prologue
    .line 7812
    .local p0, "this":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;, "Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter<TVH;>;"
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;->mObservable:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$AdapterDataObservable;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$AdapterDataObservable;->registerObserver(Ljava/lang/Object;)V

    .line 7813
    return-void
.end method

.method public setHasStableIds(Z)V
    .locals 2
    .param p1, "hasStableIds"    # Z

    .prologue
    .line 7666
    .local p0, "this":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;, "Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter<TVH;>;"
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;->hasObservers()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7667
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot change whether this adapter has stable IDs while the adapter has registered observers."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7670
    :cond_0
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;->mHasStableIds:Z

    .line 7671
    return-void
.end method

.method public setHostViewInternal(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)V
    .locals 0
    .param p1, "recyclerView"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .prologue
    .line 8086
    .local p0, "this":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;, "Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter<TVH;>;"
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;->mHostView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .line 8087
    return-void
.end method

.method public unregisterAdapterDataObserver(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$AdapterDataObserver;)V
    .locals 1
    .param p1, "observer"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$AdapterDataObserver;

    .prologue
    .line 7826
    .local p0, "this":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;, "Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter<TVH;>;"
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;->mObservable:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$AdapterDataObservable;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$AdapterDataObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 7827
    return-void
.end method
