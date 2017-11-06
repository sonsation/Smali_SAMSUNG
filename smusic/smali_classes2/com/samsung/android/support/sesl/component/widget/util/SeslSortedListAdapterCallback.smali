.class public abstract Lcom/samsung/android/support/sesl/component/widget/util/SeslSortedListAdapterCallback;
.super Lcom/samsung/android/support/sesl/component/util/SeslSortedList$Callback;
.source "SeslSortedListAdapterCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T2:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/samsung/android/support/sesl/component/util/SeslSortedList$Callback",
        "<TT2;>;"
    }
.end annotation


# instance fields
.field final mAdapter:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;)V
    .locals 0
    .param p1, "adapter"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    .prologue
    .line 36
    .local p0, "this":Lcom/samsung/android/support/sesl/component/widget/util/SeslSortedListAdapterCallback;, "Lcom/samsung/android/support/sesl/component/widget/util/SeslSortedListAdapterCallback<TT2;>;"
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/util/SeslSortedList$Callback;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/util/SeslSortedListAdapterCallback;->mAdapter:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    .line 38
    return-void
.end method


# virtual methods
.method public onChanged(II)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "count"    # I

    .prologue
    .line 57
    .local p0, "this":Lcom/samsung/android/support/sesl/component/widget/util/SeslSortedListAdapterCallback;, "Lcom/samsung/android/support/sesl/component/widget/util/SeslSortedListAdapterCallback<TT2;>;"
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/util/SeslSortedListAdapterCallback;->mAdapter:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;->notifyItemRangeChanged(II)V

    .line 58
    return-void
.end method

.method public onInserted(II)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "count"    # I

    .prologue
    .line 42
    .local p0, "this":Lcom/samsung/android/support/sesl/component/widget/util/SeslSortedListAdapterCallback;, "Lcom/samsung/android/support/sesl/component/widget/util/SeslSortedListAdapterCallback<TT2;>;"
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/util/SeslSortedListAdapterCallback;->mAdapter:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;->notifyItemRangeInserted(II)V

    .line 43
    return-void
.end method

.method public onMoved(II)V
    .locals 1
    .param p1, "fromPosition"    # I
    .param p2, "toPosition"    # I

    .prologue
    .line 52
    .local p0, "this":Lcom/samsung/android/support/sesl/component/widget/util/SeslSortedListAdapterCallback;, "Lcom/samsung/android/support/sesl/component/widget/util/SeslSortedListAdapterCallback<TT2;>;"
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/util/SeslSortedListAdapterCallback;->mAdapter:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;->notifyItemMoved(II)V

    .line 53
    return-void
.end method

.method public onRemoved(II)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "count"    # I

    .prologue
    .line 47
    .local p0, "this":Lcom/samsung/android/support/sesl/component/widget/util/SeslSortedListAdapterCallback;, "Lcom/samsung/android/support/sesl/component/widget/util/SeslSortedListAdapterCallback<TT2;>;"
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/util/SeslSortedListAdapterCallback;->mAdapter:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    .line 48
    return-void
.end method
