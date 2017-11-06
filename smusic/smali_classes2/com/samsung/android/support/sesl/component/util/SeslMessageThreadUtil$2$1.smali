.class Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$2$1;
.super Ljava/lang/Object;
.source "SeslMessageThreadUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$2;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$2;

    .prologue
    .line 135
    .local p0, "this":Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$2$1;, "Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$2$1;"
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$2$1;->this$1:Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 139
    .local p0, "this":Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$2$1;, "Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$2$1;"
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$2$1;->this$1:Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$2;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$2;->mQueue:Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$MessageQueue;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$MessageQueue;->next()Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$SyncQueueItem;

    move-result-object v6

    .line 140
    .local v6, "msg":Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$SyncQueueItem;
    if-nez v6, :cond_0

    .line 165
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$2$1;->this$1:Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$2;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$2;->mBackgroundRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 166
    return-void

    .line 143
    :cond_0
    iget v0, v6, Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$SyncQueueItem;->what:I

    packed-switch v0, :pswitch_data_0

    .line 162
    const-string v0, "SeslThreadUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported message, what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v6, Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$SyncQueueItem;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 145
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$2$1;->this$1:Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$2;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$2;->mQueue:Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$MessageQueue;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$MessageQueue;->removeMessages(I)V

    .line 146
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$2$1;->this$1:Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$2;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$2;->val$callback:Lcom/samsung/android/support/sesl/component/util/SeslThreadUtil$BackgroundCallback;

    iget v1, v6, Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$SyncQueueItem;->arg1:I

    invoke-interface {v0, v1}, Lcom/samsung/android/support/sesl/component/util/SeslThreadUtil$BackgroundCallback;->refresh(I)V

    goto :goto_0

    .line 149
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$2$1;->this$1:Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$2;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$2;->mQueue:Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$MessageQueue;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$MessageQueue;->removeMessages(I)V

    .line 150
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$2$1;->this$1:Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$2;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$2;->mQueue:Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$MessageQueue;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$MessageQueue;->removeMessages(I)V

    .line 151
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$2$1;->this$1:Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$2;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$2;->val$callback:Lcom/samsung/android/support/sesl/component/util/SeslThreadUtil$BackgroundCallback;

    iget v1, v6, Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$SyncQueueItem;->arg1:I

    iget v2, v6, Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$SyncQueueItem;->arg2:I

    iget v3, v6, Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$SyncQueueItem;->arg3:I

    iget v4, v6, Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$SyncQueueItem;->arg4:I

    iget v5, v6, Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$SyncQueueItem;->arg5:I

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/support/sesl/component/util/SeslThreadUtil$BackgroundCallback;->updateRange(IIIII)V

    goto :goto_0

    .line 155
    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$2$1;->this$1:Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$2;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$2;->val$callback:Lcom/samsung/android/support/sesl/component/util/SeslThreadUtil$BackgroundCallback;

    iget v1, v6, Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$SyncQueueItem;->arg1:I

    iget v2, v6, Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$SyncQueueItem;->arg2:I

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/support/sesl/component/util/SeslThreadUtil$BackgroundCallback;->loadTile(II)V

    goto :goto_0

    .line 159
    :pswitch_3
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$2$1;->this$1:Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$2;

    iget-object v1, v0, Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$2;->val$callback:Lcom/samsung/android/support/sesl/component/util/SeslThreadUtil$BackgroundCallback;

    iget-object v0, v6, Lcom/samsung/android/support/sesl/component/util/SeslMessageThreadUtil$SyncQueueItem;->data:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/support/sesl/component/util/SeslTileList$Tile;

    invoke-interface {v1, v0}, Lcom/samsung/android/support/sesl/component/util/SeslThreadUtil$BackgroundCallback;->recycleTile(Lcom/samsung/android/support/sesl/component/util/SeslTileList$Tile;)V

    goto :goto_0

    .line 143
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
