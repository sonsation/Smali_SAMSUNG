.class final Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;
.super Landroid/os/Handler;
.source "PlayerQueueMessageHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler$IInternalListRequest;,
        Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler$MoveRequest;,
        Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler$AddRequest;,
        Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler$OpenRequest;
    }
.end annotation


# static fields
.field static final MSG_ENQUEUE:I = 0xb

.field static final MSG_ENQUEUE_QUEUE_ITEMS:I = 0xc

.field static final MSG_MOVE_TO:I = 0xd

.field static final MSG_NOTIFY_LEGAL_ERROR:I = 0x10

.field static final MSG_RELOAD_META:I = 0xa

.field static final MSG_RELOAD_QUEUE:I = 0x9

.field static final MSG_REMOVE_AUDIO_IDS:I = 0x8

.field static final MSG_REMOVE_QUEUE_POSITIONS:I = 0x7

.field static final MSG_REORDER_ITEM:I = 0x6

.field static final MSG_RESET_MOVE_TO_COUNT:I = 0xe

.field static final MSG_SET_LIST:I = 0x1

.field static final MSG_SET_POSITION:I = 0x4

.field static final MSG_SET_QUEUE_ITEM:I = 0x5

.field static final MSG_SET_REPEAT:I = 0x3

.field static final MSG_SET_SHUFFLE:I = 0x2

.field static final MSG_SET_SORT_MODE:I = 0xf


# instance fields
.field private final mCallback:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler$IInternalListRequest;


# direct methods
.method constructor <init>(Landroid/os/Looper;Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler$IInternalListRequest;)V
    .locals 0
    .param p1, "l"    # Landroid/os/Looper;
    .param p2, "callback"    # Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler$IInternalListRequest;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 58
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;->mCallback:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler$IInternalListRequest;

    .line 59
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 63
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 122
    :goto_0
    return-void

    .line 65
    :pswitch_0
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;->mCallback:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler$IInternalListRequest;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler$OpenRequest;

    invoke-interface {v3, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler$IInternalListRequest;->setList(Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler$OpenRequest;)V

    goto :goto_0

    .line 68
    :pswitch_1
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;->mCallback:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler$IInternalListRequest;

    iget v5, p1, Landroid/os/Message;->arg1:I

    iget v6, p1, Landroid/os/Message;->arg2:I

    if-ne v6, v2, :cond_0

    :goto_1
    invoke-interface {v4, v5, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler$IInternalListRequest;->setShuffle(IZ)V

    goto :goto_0

    :cond_0
    move v2, v3

    goto :goto_1

    .line 71
    :pswitch_2
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;->mCallback:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler$IInternalListRequest;

    iget v5, p1, Landroid/os/Message;->arg1:I

    iget v6, p1, Landroid/os/Message;->arg2:I

    if-ne v6, v2, :cond_1

    :goto_2
    invoke-interface {v4, v5, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler$IInternalListRequest;->setRepeat(IZ)V

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_2

    .line 74
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler$MoveRequest;

    .line 75
    .local v0, "moveRequest":Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler$MoveRequest;
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;->mCallback:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler$IInternalListRequest;

    iget-boolean v3, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler$MoveRequest;->success:Z

    iget v4, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler$MoveRequest;->direction:I

    iget-boolean v5, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler$MoveRequest;->isGapLessPlaying:Z

    invoke-interface {v2, v3, v4, v5}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler$IInternalListRequest;->moveTo(ZIZ)V

    goto :goto_0

    .line 79
    .end local v0    # "moveRequest":Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler$MoveRequest;
    :pswitch_4
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;->mCallback:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler$IInternalListRequest;

    invoke-interface {v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler$IInternalListRequest;->resetMoveToCount()V

    goto :goto_0

    .line 82
    :pswitch_5
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;->mCallback:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler$IInternalListRequest;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler$IInternalListRequest;->setPosition(II)V

    goto :goto_0

    .line 85
    :pswitch_6
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;->mCallback:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler$IInternalListRequest;

    iget v3, p1, Landroid/os/Message;->arg1:I

    int-to-long v4, v3

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v2, v4, v5, v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler$IInternalListRequest;->setQueueItem(JI)V

    goto :goto_0

    .line 88
    :pswitch_7
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;->mCallback:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler$IInternalListRequest;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler$IInternalListRequest;->reorder(II)V

    goto :goto_0

    .line 91
    :pswitch_8
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;->mCallback:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler$IInternalListRequest;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [I

    check-cast v2, [I

    invoke-interface {v3, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler$IInternalListRequest;->removePositions([I)V

    goto :goto_0

    .line 94
    :pswitch_9
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;->mCallback:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler$IInternalListRequest;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [J

    check-cast v2, [J

    invoke-interface {v3, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler$IInternalListRequest;->removeIds([J)V

    goto :goto_0

    .line 97
    :pswitch_a
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;->mCallback:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler$IInternalListRequest;

    invoke-interface {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler$IInternalListRequest;->reloadSavedQueue(Z)V

    goto :goto_0

    .line 100
    :pswitch_b
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;->mCallback:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler$IInternalListRequest;

    invoke-interface {v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler$IInternalListRequest;->reloadMeta()V

    goto :goto_0

    .line 103
    :pswitch_c
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler$AddRequest;

    .line 104
    .local v1, "request":Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler$AddRequest;
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;->mCallback:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler$IInternalListRequest;

    iget-object v3, v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler$AddRequest;->list:[J

    iget v4, v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler$AddRequest;->action:I

    iget-boolean v5, v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler$AddRequest;->doChange:Z

    iget v6, v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler$AddRequest;->positionToPlay:I

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler$IInternalListRequest;->enqueue([JIZI)V

    goto/16 :goto_0

    .line 109
    .end local v1    # "request":Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler$AddRequest;
    :pswitch_d
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler$AddRequest;

    .line 110
    .restart local v1    # "request":Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler$AddRequest;
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;->mCallback:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler$IInternalListRequest;

    iget-object v3, v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler$AddRequest;->queue:Ljava/util/List;

    iget v4, v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler$AddRequest;->action:I

    iget-boolean v5, v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler$AddRequest;->doChange:Z

    iget v6, v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler$AddRequest;->positionToPlay:I

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler$IInternalListRequest;->enqueue(Ljava/util/List;IZI)V

    goto/16 :goto_0

    .line 114
    .end local v1    # "request":Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler$AddRequest;
    :pswitch_e
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;->mCallback:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler$IInternalListRequest;

    iget v5, p1, Landroid/os/Message;->arg1:I

    iget v6, p1, Landroid/os/Message;->arg2:I

    if-ne v6, v2, :cond_2

    :goto_3
    invoke-interface {v4, v5, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler$IInternalListRequest;->setSortMode(IZ)V

    goto/16 :goto_0

    :cond_2
    move v2, v3

    goto :goto_3

    .line 117
    :pswitch_f
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;->mCallback:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler$IInternalListRequest;

    invoke-interface {v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler$IInternalListRequest;->notifyLegalError()V

    goto/16 :goto_0

    .line 63
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_3
        :pswitch_4
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method public post(III)V
    .locals 1
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .prologue
    .line 136
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 137
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 138
    return-void
.end method

.method public post(ILjava/lang/Object;II)V
    .locals 1
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I

    .prologue
    .line 131
    invoke-virtual {p0, p1, p3, p4, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 132
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 133
    return-void
.end method

.method public post(ILjava/lang/Object;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "data"    # Landroid/os/Bundle;

    .prologue
    .line 125
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 126
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0, p3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 127
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 128
    return-void
.end method
