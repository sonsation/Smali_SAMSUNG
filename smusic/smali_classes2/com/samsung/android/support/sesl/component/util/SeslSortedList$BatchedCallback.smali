.class public Lcom/samsung/android/support/sesl/component/util/SeslSortedList$BatchedCallback;
.super Lcom/samsung/android/support/sesl/component/util/SeslSortedList$Callback;
.source "SeslSortedList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/util/SeslSortedList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BatchedCallback"
.end annotation

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
.field private final mBatchingListUpdateCallback:Lcom/samsung/android/support/sesl/component/util/SeslBatchingListUpdateCallback;

.field final mWrappedCallback:Lcom/samsung/android/support/sesl/component/util/SeslSortedList$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/support/sesl/component/util/SeslSortedList$Callback",
            "<TT2;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/sesl/component/util/SeslSortedList$Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/sesl/component/util/SeslSortedList$Callback",
            "<TT2;>;)V"
        }
    .end annotation

    .prologue
    .line 773
    .local p0, "this":Lcom/samsung/android/support/sesl/component/util/SeslSortedList$BatchedCallback;, "Lcom/samsung/android/support/sesl/component/util/SeslSortedList$BatchedCallback<TT2;>;"
    .local p1, "wrappedCallback":Lcom/samsung/android/support/sesl/component/util/SeslSortedList$Callback;, "Lcom/samsung/android/support/sesl/component/util/SeslSortedList$Callback<TT2;>;"
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/util/SeslSortedList$Callback;-><init>()V

    .line 774
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/util/SeslSortedList$BatchedCallback;->mWrappedCallback:Lcom/samsung/android/support/sesl/component/util/SeslSortedList$Callback;

    .line 775
    new-instance v0, Lcom/samsung/android/support/sesl/component/util/SeslBatchingListUpdateCallback;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/util/SeslSortedList$BatchedCallback;->mWrappedCallback:Lcom/samsung/android/support/sesl/component/util/SeslSortedList$Callback;

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/component/util/SeslBatchingListUpdateCallback;-><init>(Lcom/samsung/android/support/sesl/component/util/SeslListUpdateCallback;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/util/SeslSortedList$BatchedCallback;->mBatchingListUpdateCallback:Lcom/samsung/android/support/sesl/component/util/SeslBatchingListUpdateCallback;

    .line 776
    return-void
.end method


# virtual methods
.method public areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT2;TT2;)Z"
        }
    .end annotation

    .prologue
    .line 805
    .local p0, "this":Lcom/samsung/android/support/sesl/component/util/SeslSortedList$BatchedCallback;, "Lcom/samsung/android/support/sesl/component/util/SeslSortedList$BatchedCallback<TT2;>;"
    .local p1, "oldItem":Ljava/lang/Object;, "TT2;"
    .local p2, "newItem":Ljava/lang/Object;, "TT2;"
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/util/SeslSortedList$BatchedCallback;->mWrappedCallback:Lcom/samsung/android/support/sesl/component/util/SeslSortedList$Callback;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/sesl/component/util/SeslSortedList$Callback;->areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT2;TT2;)Z"
        }
    .end annotation

    .prologue
    .line 810
    .local p0, "this":Lcom/samsung/android/support/sesl/component/util/SeslSortedList$BatchedCallback;, "Lcom/samsung/android/support/sesl/component/util/SeslSortedList$BatchedCallback<TT2;>;"
    .local p1, "item1":Ljava/lang/Object;, "TT2;"
    .local p2, "item2":Ljava/lang/Object;, "TT2;"
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/util/SeslSortedList$BatchedCallback;->mWrappedCallback:Lcom/samsung/android/support/sesl/component/util/SeslSortedList$Callback;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/sesl/component/util/SeslSortedList$Callback;->areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT2;TT2;)I"
        }
    .end annotation

    .prologue
    .line 780
    .local p0, "this":Lcom/samsung/android/support/sesl/component/util/SeslSortedList$BatchedCallback;, "Lcom/samsung/android/support/sesl/component/util/SeslSortedList$BatchedCallback<TT2;>;"
    .local p1, "o1":Ljava/lang/Object;, "TT2;"
    .local p2, "o2":Ljava/lang/Object;, "TT2;"
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/util/SeslSortedList$BatchedCallback;->mWrappedCallback:Lcom/samsung/android/support/sesl/component/util/SeslSortedList$Callback;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/sesl/component/util/SeslSortedList$Callback;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public dispatchLastEvent()V
    .locals 1

    .prologue
    .line 818
    .local p0, "this":Lcom/samsung/android/support/sesl/component/util/SeslSortedList$BatchedCallback;, "Lcom/samsung/android/support/sesl/component/util/SeslSortedList$BatchedCallback<TT2;>;"
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/util/SeslSortedList$BatchedCallback;->mBatchingListUpdateCallback:Lcom/samsung/android/support/sesl/component/util/SeslBatchingListUpdateCallback;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/util/SeslBatchingListUpdateCallback;->dispatchLastEvent()V

    .line 819
    return-void
.end method

.method public onChanged(II)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "count"    # I

    .prologue
    .line 800
    .local p0, "this":Lcom/samsung/android/support/sesl/component/util/SeslSortedList$BatchedCallback;, "Lcom/samsung/android/support/sesl/component/util/SeslSortedList$BatchedCallback<TT2;>;"
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/util/SeslSortedList$BatchedCallback;->mBatchingListUpdateCallback:Lcom/samsung/android/support/sesl/component/util/SeslBatchingListUpdateCallback;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/samsung/android/support/sesl/component/util/SeslBatchingListUpdateCallback;->onChanged(IILjava/lang/Object;)V

    .line 801
    return-void
.end method

.method public onInserted(II)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "count"    # I

    .prologue
    .line 785
    .local p0, "this":Lcom/samsung/android/support/sesl/component/util/SeslSortedList$BatchedCallback;, "Lcom/samsung/android/support/sesl/component/util/SeslSortedList$BatchedCallback<TT2;>;"
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/util/SeslSortedList$BatchedCallback;->mBatchingListUpdateCallback:Lcom/samsung/android/support/sesl/component/util/SeslBatchingListUpdateCallback;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/sesl/component/util/SeslBatchingListUpdateCallback;->onInserted(II)V

    .line 786
    return-void
.end method

.method public onMoved(II)V
    .locals 1
    .param p1, "fromPosition"    # I
    .param p2, "toPosition"    # I

    .prologue
    .line 795
    .local p0, "this":Lcom/samsung/android/support/sesl/component/util/SeslSortedList$BatchedCallback;, "Lcom/samsung/android/support/sesl/component/util/SeslSortedList$BatchedCallback<TT2;>;"
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/util/SeslSortedList$BatchedCallback;->mBatchingListUpdateCallback:Lcom/samsung/android/support/sesl/component/util/SeslBatchingListUpdateCallback;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/sesl/component/util/SeslBatchingListUpdateCallback;->onMoved(II)V

    .line 796
    return-void
.end method

.method public onRemoved(II)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "count"    # I

    .prologue
    .line 790
    .local p0, "this":Lcom/samsung/android/support/sesl/component/util/SeslSortedList$BatchedCallback;, "Lcom/samsung/android/support/sesl/component/util/SeslSortedList$BatchedCallback<TT2;>;"
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/util/SeslSortedList$BatchedCallback;->mBatchingListUpdateCallback:Lcom/samsung/android/support/sesl/component/util/SeslBatchingListUpdateCallback;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/sesl/component/util/SeslBatchingListUpdateCallback;->onRemoved(II)V

    .line 791
    return-void
.end method
