.class Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ItemTouchHelperCallback;
.super Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$Callback;
.source "ReorderManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemTouchHelperCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ItemTouchHelperCallback;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$Callback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;
    .param p2, "x1"    # Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$1;

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ItemTouchHelperCallback;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;)V

    return-void
.end method


# virtual methods
.method public clearView(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V
    .locals 5
    .param p1, "recyclerView"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
    .param p2, "viewHolder"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    .prologue
    const/4 v4, -0x1

    .line 123
    invoke-super {p0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$Callback;->clearView(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V

    .line 124
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearView() - mFrom: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ItemTouchHelperCallback;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;->access$300(Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mTo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ItemTouchHelperCallback;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;->access$400(Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    iget-object v0, p2, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const v1, 0x3ebd70a4    # 0.37f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p2, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ItemTouchHelperCallback;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;->access$300(Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;)I

    move-result v0

    if-eq v0, v4, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ItemTouchHelperCallback;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;->access$400(Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;)I

    move-result v0

    if-eq v0, v4, :cond_1

    .line 129
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ItemTouchHelperCallback;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;->access$600(Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;)Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$Reorderable;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ItemTouchHelperCallback;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;->access$500(Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ItemTouchHelperCallback;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;->access$300(Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getModifiedPosition(I)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ItemTouchHelperCallback;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;

    .line 130
    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;->access$500(Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ItemTouchHelperCallback;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;

    invoke-static {v3}, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;->access$400(Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getModifiedPosition(I)I

    move-result v2

    .line 129
    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$Reorderable;->moveItem(II)V

    .line 132
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ItemTouchHelperCallback;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;

    invoke-static {v0, v4}, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;->access$302(Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;I)I

    .line 133
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ItemTouchHelperCallback;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;

    invoke-static {v0, v4}, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;->access$402(Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;I)I

    .line 134
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ItemTouchHelperCallback;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;->access$800(Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;)Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ItemTouchHelperCallback;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;->access$700(Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setFastScrollEnabled(Z)V

    .line 135
    return-void
.end method

.method public getMoveThreshold(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)F
    .locals 1
    .param p1, "viewHolder"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    .prologue
    .line 149
    const/high16 v0, 0x3f000000    # 0.5f

    return v0
.end method

.method public getMovementFlags(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)I
    .locals 2
    .param p1, "recyclerView"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
    .param p2, "viewHolder"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ItemTouchHelperCallback;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;->access$100(Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ItemTouchHelperCallback;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;->access$200(Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ItemTouchHelperCallback;->makeMovementFlags(II)I

    move-result v0

    return v0
.end method

.method public interpolateOutOfBoundsScroll(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;IIIJ)I
    .locals 1
    .param p1, "recyclerView"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
    .param p2, "viewSize"    # I
    .param p3, "viewSizeOutOfBounds"    # I
    .param p4, "totalSize"    # I
    .param p5, "msSinceStartScroll"    # J

    .prologue
    .line 156
    if-lez p3, :cond_0

    const/16 v0, 0x14

    :goto_0
    return v0

    :cond_0
    const/16 v0, -0x14

    goto :goto_0
.end method

.method public isItemViewSwipeEnabled()Z
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x0

    return v0
.end method

.method public isLongPressDragEnabled()Z
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x0

    return v0
.end method

.method public onMove(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)Z
    .locals 9
    .param p1, "recyclerView"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
    .param p2, "viewHolder"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    .param p3, "target"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    .prologue
    const/4 v2, 0x0

    const/4 v8, -0x1

    .line 84
    invoke-virtual {p3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->getItemId()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_4

    .line 85
    invoke-virtual {p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    .line 86
    .local v0, "from":I
    if-ne v0, v8, :cond_0

    .line 106
    .end local v0    # "from":I
    :goto_0
    return v2

    .line 89
    .restart local v0    # "from":I
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ItemTouchHelperCallback;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;->access$300(Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;)I

    move-result v2

    if-ne v2, v8, :cond_1

    .line 90
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ItemTouchHelperCallback;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;

    invoke-static {v2, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;->access$302(Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;I)I

    .line 92
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ItemTouchHelperCallback;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;

    invoke-virtual {p3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;->access$402(Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;I)I

    .line 93
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onMove() - from: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mTo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ItemTouchHelperCallback;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;

    invoke-static {v4}, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;->access$400(Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ItemTouchHelperCallback;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;->access$400(Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;)I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 95
    move v1, v0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ItemTouchHelperCallback;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;->access$400(Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;)I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 96
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ItemTouchHelperCallback;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;->access$500(Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v1, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->moveItem(II)V

    .line 95
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 99
    .end local v1    # "i":I
    :cond_2
    move v1, v0

    .restart local v1    # "i":I
    :goto_2
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ItemTouchHelperCallback;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;->access$400(Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;)I

    move-result v2

    if-le v1, v2, :cond_3

    .line 100
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ItemTouchHelperCallback;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;->access$500(Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v2

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v1, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->moveItem(II)V

    .line 99
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 103
    :cond_3
    const/4 v2, 0x1

    goto :goto_0

    .line 105
    .end local v0    # "from":I
    .end local v1    # "i":I
    :cond_4
    sget-object v3, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;->TAG:Ljava/lang/String;

    const-string v4, "onMove() - Invalid item id of target."

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onSelectedChanged(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;I)V
    .locals 3
    .param p1, "viewHolder"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    .param p2, "actionState"    # I

    .prologue
    .line 112
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSelectedChanged() - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    if-eqz p2, :cond_0

    .line 114
    iget-object v0, p1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const v1, 0x3ebd70a4    # 0.37f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 118
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$Callback;->onSelectedChanged(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;I)V

    .line 119
    return-void
.end method

.method public onSwiped(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;I)V
    .locals 0
    .param p1, "viewHolder"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    .param p2, "direction"    # I

    .prologue
    .line 161
    return-void
.end method
