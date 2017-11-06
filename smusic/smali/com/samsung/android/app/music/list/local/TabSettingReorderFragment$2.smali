.class Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$2;
.super Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$Callback;
.source "TabSettingReorderFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mFrom:I

.field private mTo:I

.field final synthetic this$0:Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;)V
    .locals 1
    .param p1, "this$0"    # Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;

    .prologue
    const/4 v0, -0x1

    .line 270
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$2;->this$0:Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$Callback;-><init>()V

    .line 272
    iput v0, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$2;->mFrom:I

    .line 274
    iput v0, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$2;->mTo:I

    return-void
.end method


# virtual methods
.method public clearView(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V
    .locals 3
    .param p1, "recyclerView"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
    .param p2, "viewHolder"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    .prologue
    const/4 v2, -0x1

    .line 302
    invoke-super {p0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$Callback;->clearView(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V

    .line 303
    iget-object v0, p2, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 304
    iput v2, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$2;->mFrom:I

    .line 305
    iput v2, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$2;->mTo:I

    .line 306
    return-void
.end method

.method public getMovementFlags(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)I
    .locals 3
    .param p1, "recyclerView"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
    .param p2, "viewHolder"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    .prologue
    .line 311
    const/4 v0, 0x3

    .line 312
    .local v0, "dragFlags":I
    const/4 v1, 0x0

    .line 313
    .local v1, "swipeFlags":I
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$2;->makeMovementFlags(II)I

    move-result v2

    return v2
.end method

.method public isItemViewSwipeEnabled()Z
    .locals 1

    .prologue
    .line 323
    const/4 v0, 0x0

    return v0
.end method

.method public isLongPressDragEnabled()Z
    .locals 1

    .prologue
    .line 318
    const/4 v0, 0x0

    return v0
.end method

.method public onMove(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)Z
    .locals 3
    .param p1, "recyclerView"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
    .param p2, "viewHolder"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    .param p3, "target"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    .prologue
    .line 280
    invoke-virtual {p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    .line 281
    .local v0, "from":I
    iget v1, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$2;->mFrom:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 282
    iput v0, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$2;->mFrom:I

    .line 284
    :cond_0
    invoke-virtual {p3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$2;->mTo:I

    .line 285
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$2;->this$0:Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;

    iget-object v1, v1, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;->mReorderItemList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$2;->mTo:I

    invoke-static {v1, v0, v2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 286
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$2;->this$0:Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;

    invoke-static {v1}, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;->access$000(Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;)Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$2;->mTo:I

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter;->notifyItemMoved(II)V

    .line 287
    const/4 v1, 0x1

    return v1
.end method

.method public onSelectedChanged(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;I)V
    .locals 2
    .param p1, "viewHolder"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    .param p2, "actionState"    # I

    .prologue
    .line 293
    if-eqz p2, :cond_0

    .line 294
    iget-object v0, p1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 296
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$Callback;->onSelectedChanged(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;I)V

    .line 297
    return-void
.end method

.method public onSwiped(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;I)V
    .locals 0
    .param p1, "viewHolder"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    .param p2, "direction"    # I

    .prologue
    .line 328
    return-void
.end method
