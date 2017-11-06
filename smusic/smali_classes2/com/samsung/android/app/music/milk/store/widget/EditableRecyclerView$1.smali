.class Lcom/samsung/android/app/music/milk/store/widget/EditableRecyclerView$1;
.super Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;
.source "EditableRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/widget/EditableRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private adapter:Lcom/samsung/android/app/music/milk/store/widget/IEditableAdapter;

.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/widget/EditableRecyclerView;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/widget/EditableRecyclerView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/widget/EditableRecyclerView;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/EditableRecyclerView$1;->this$0:Lcom/samsung/android/app/music/milk/store/widget/EditableRecyclerView;

    invoke-direct {p0}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public getMovementFlags(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)I
    .locals 4
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 39
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/milk/store/widget/IEditableAdapter;

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/EditableRecyclerView$1;->adapter:Lcom/samsung/android/app/music/milk/store/widget/IEditableAdapter;

    .line 41
    const/4 v0, 0x0

    .line 42
    .local v0, "moveFlag":I
    check-cast p2, Lcom/samsung/android/app/music/milk/store/widget/EditableViewHolder;

    .end local p2    # "viewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {p2}, Lcom/samsung/android/app/music/milk/store/widget/EditableViewHolder;->isDraggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 43
    const/4 v1, 0x2

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/store/widget/EditableRecyclerView$1;->makeFlag(II)I

    move-result v0

    .line 46
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/music/milk/store/widget/EditableRecyclerView;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ItemTouchHelperCallback] getMovementFlags. flag - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    return v0
.end method

.method public onMove(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 4
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p3, "target"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 53
    move-object v2, p2

    check-cast v2, Lcom/samsung/android/app/music/milk/store/widget/EditableViewHolder;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/store/widget/EditableViewHolder;->isDraggable()Z

    move-result v2

    if-nez v2, :cond_0

    .line 54
    invoke-static {}, Lcom/samsung/android/app/music/milk/store/widget/EditableRecyclerView;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[onMove] draggable is false"

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const/4 v2, 0x0

    .line 66
    :goto_0
    return v2

    .line 58
    :cond_0
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    .line 59
    .local v0, "from":I
    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    .line 60
    .local v1, "to":I
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/EditableRecyclerView$1;->adapter:Lcom/samsung/android/app/music/milk/store/widget/IEditableAdapter;

    invoke-interface {v2, v0, v1}, Lcom/samsung/android/app/music/milk/store/widget/IEditableAdapter;->swapOrdering(II)V

    .line 62
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/EditableRecyclerView$1;->this$0:Lcom/samsung/android/app/music/milk/store/widget/EditableRecyclerView;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/store/widget/EditableRecyclerView;->access$100(Lcom/samsung/android/app/music/milk/store/widget/EditableRecyclerView;)Lcom/samsung/android/app/music/milk/store/widget/EditableRecyclerView$IReorderListener;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 63
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/EditableRecyclerView$1;->this$0:Lcom/samsung/android/app/music/milk/store/widget/EditableRecyclerView;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/store/widget/EditableRecyclerView;->access$100(Lcom/samsung/android/app/music/milk/store/widget/EditableRecyclerView;)Lcom/samsung/android/app/music/milk/store/widget/EditableRecyclerView$IReorderListener;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/samsung/android/app/music/milk/store/widget/EditableRecyclerView$IReorderListener;->onItemMoved(II)V

    .line 66
    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public onSelectedChanged(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 2
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "actionState"    # I

    .prologue
    .line 71
    packed-switch p2, :pswitch_data_0

    .line 86
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->onSelectedChanged(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 87
    return-void

    .line 73
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/EditableRecyclerView$1;->this$0:Lcom/samsung/android/app/music/milk/store/widget/EditableRecyclerView;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/widget/EditableRecyclerView;->access$100(Lcom/samsung/android/app/music/milk/store/widget/EditableRecyclerView;)Lcom/samsung/android/app/music/milk/store/widget/EditableRecyclerView$IReorderListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/EditableRecyclerView$1;->this$0:Lcom/samsung/android/app/music/milk/store/widget/EditableRecyclerView;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/widget/EditableRecyclerView;->access$100(Lcom/samsung/android/app/music/milk/store/widget/EditableRecyclerView;)Lcom/samsung/android/app/music/milk/store/widget/EditableRecyclerView$IReorderListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/music/milk/store/widget/EditableRecyclerView$IReorderListener;->onDragEnd()V

    goto :goto_0

    .line 78
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/EditableRecyclerView$1;->this$0:Lcom/samsung/android/app/music/milk/store/widget/EditableRecyclerView;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/widget/EditableRecyclerView;->access$100(Lcom/samsung/android/app/music/milk/store/widget/EditableRecyclerView;)Lcom/samsung/android/app/music/milk/store/widget/EditableRecyclerView$IReorderListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/EditableRecyclerView$1;->this$0:Lcom/samsung/android/app/music/milk/store/widget/EditableRecyclerView;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/widget/EditableRecyclerView;->access$100(Lcom/samsung/android/app/music/milk/store/widget/EditableRecyclerView;)Lcom/samsung/android/app/music/milk/store/widget/EditableRecyclerView$IReorderListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/music/milk/store/widget/EditableRecyclerView$IReorderListener;->onDragStart()V

    goto :goto_0

    .line 83
    :pswitch_2
    invoke-static {}, Lcom/samsung/android/app/music/milk/store/widget/EditableRecyclerView;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[ItemTouchHelperCallback] onSelectedChanged, state swipe"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 71
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onSwiped(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 2
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "direction"    # I

    .prologue
    .line 91
    invoke-static {}, Lcom/samsung/android/app/music/milk/store/widget/EditableRecyclerView;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[ItemTouchHelperCallback] onSwiped"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    return-void
.end method
