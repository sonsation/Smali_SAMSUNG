.class Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$7;
.super Ljava/lang/Object;
.source "SeslRecyclerView.java"

# interfaces
.implements Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->initAdapterManager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .prologue
    .line 1160
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$7;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method dispatchUpdate(Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;)V
    .locals 5
    .param p1, "op"    # Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;

    .prologue
    .line 1203
    iget v0, p1, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->cmd:I

    packed-switch v0, :pswitch_data_0

    .line 1218
    :goto_0
    :pswitch_0
    return-void

    .line 1205
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$7;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$7;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget v2, p1, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    iget v3, p1, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->onItemsAdded(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;II)V

    goto :goto_0

    .line 1208
    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$7;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$7;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget v2, p1, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    iget v3, p1, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->onItemsRemoved(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;II)V

    goto :goto_0

    .line 1211
    :pswitch_3
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$7;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$7;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget v2, p1, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    iget v3, p1, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    iget-object v4, p1, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->onItemsUpdated(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;IILjava/lang/Object;)V

    goto :goto_0

    .line 1215
    :pswitch_4
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$7;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$7;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget v2, p1, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->positionStart:I

    iget v3, p1, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;->itemCount:I

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->onItemsMoved(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;III)V

    goto :goto_0

    .line 1203
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public findViewHolder(I)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    .locals 4
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x0

    .line 1163
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$7;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->findViewHolderForPosition(IZ)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    move-result-object v0

    .line 1164
    .local v0, "vh":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    if-nez v0, :cond_1

    move-object v0, v1

    .line 1175
    .end local v0    # "vh":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    :cond_0
    :goto_0
    return-object v0

    .line 1169
    .restart local v0    # "vh":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$7;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v2, v2, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mChildHelper:Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 1173
    goto :goto_0
.end method

.method public markViewHoldersUpdated(IILjava/lang/Object;)V
    .locals 2
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I
    .param p3, "payload"    # Ljava/lang/Object;

    .prologue
    .line 1193
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$7;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->viewRangeUpdate(IILjava/lang/Object;)V

    .line 1194
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$7;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mItemsChanged:Z

    .line 1195
    return-void
.end method

.method public offsetPositionsForAdd(II)V
    .locals 2
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 1227
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$7;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->offsetPositionRecordsForInsert(II)V

    .line 1228
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$7;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mItemsAddedOrRemoved:Z

    .line 1229
    return-void
.end method

.method public offsetPositionsForMove(II)V
    .locals 2
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    .line 1233
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$7;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->offsetPositionRecordsForMove(II)V

    .line 1235
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$7;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mItemsAddedOrRemoved:Z

    .line 1236
    return-void
.end method

.method public offsetPositionsForRemovingInvisible(II)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "count"    # I

    .prologue
    const/4 v1, 0x1

    .line 1180
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$7;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v0, p1, p2, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->offsetPositionRecordsForRemove(IIZ)V

    .line 1181
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$7;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iput-boolean v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mItemsAddedOrRemoved:Z

    .line 1182
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$7;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mState:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    iget v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->mDeletedInvisibleItemCountSincePreviousLayout:I

    add-int/2addr v1, p2

    iput v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->mDeletedInvisibleItemCountSincePreviousLayout:I

    .line 1183
    return-void
.end method

.method public offsetPositionsForRemovingLaidOutOrNewView(II)V
    .locals 2
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 1187
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$7;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->offsetPositionRecordsForRemove(IIZ)V

    .line 1188
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$7;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mItemsAddedOrRemoved:Z

    .line 1189
    return-void
.end method

.method public onDispatchFirstPass(Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;)V
    .locals 0
    .param p1, "op"    # Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;

    .prologue
    .line 1199
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$7;->dispatchUpdate(Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;)V

    .line 1200
    return-void
.end method

.method public onDispatchSecondPass(Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;)V
    .locals 0
    .param p1, "op"    # Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;

    .prologue
    .line 1222
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$7;->dispatchUpdate(Lcom/samsung/android/support/sesl/component/widget/SeslAdapterHelper$UpdateOp;)V

    .line 1223
    return-void
.end method
