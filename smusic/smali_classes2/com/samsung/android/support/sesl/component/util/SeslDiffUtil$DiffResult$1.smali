.class Lcom/samsung/android/support/sesl/component/util/SeslDiffUtil$DiffResult$1;
.super Ljava/lang/Object;
.source "SeslDiffUtil.java"

# interfaces
.implements Lcom/samsung/android/support/sesl/component/util/SeslListUpdateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/sesl/component/util/SeslDiffUtil$DiffResult;->dispatchUpdatesTo(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/util/SeslDiffUtil$DiffResult;

.field final synthetic val$adapter:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/util/SeslDiffUtil$DiffResult;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/component/util/SeslDiffUtil$DiffResult;

    .prologue
    .line 659
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/util/SeslDiffUtil$DiffResult$1;->this$0:Lcom/samsung/android/support/sesl/component/util/SeslDiffUtil$DiffResult;

    iput-object p2, p0, Lcom/samsung/android/support/sesl/component/util/SeslDiffUtil$DiffResult$1;->val$adapter:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(IILjava/lang/Object;)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "count"    # I
    .param p3, "payload"    # Ljava/lang/Object;

    .prologue
    .line 677
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/util/SeslDiffUtil$DiffResult$1;->val$adapter:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;->notifyItemRangeChanged(IILjava/lang/Object;)V

    .line 678
    return-void
.end method

.method public onInserted(II)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "count"    # I

    .prologue
    .line 662
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/util/SeslDiffUtil$DiffResult$1;->val$adapter:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;->notifyItemRangeInserted(II)V

    .line 663
    return-void
.end method

.method public onMoved(II)V
    .locals 1
    .param p1, "fromPosition"    # I
    .param p2, "toPosition"    # I

    .prologue
    .line 672
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/util/SeslDiffUtil$DiffResult$1;->val$adapter:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;->notifyItemMoved(II)V

    .line 673
    return-void
.end method

.method public onRemoved(II)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "count"    # I

    .prologue
    .line 667
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/util/SeslDiffUtil$DiffResult$1;->val$adapter:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    .line 668
    return-void
.end method
