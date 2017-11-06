.class final Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueueMessageHandler;
.super Landroid/os/Handler;
.source "RadioPlayerQueueMessageHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueueMessageHandler$IRadioPlayerQueueMessageCallback;
    }
.end annotation


# static fields
.field static final MSG_ENQUEUE:I = 0xa

.field static final MSG_ENQUEUE_QUEUE_ITEMS:I = 0xb

.field static final MSG_MOVE_TO:I = 0xc

.field static final MSG_RELOAD_QUEUE:I = 0x9

.field static final MSG_REMOVE_AUDIO_IDS:I = 0x8

.field static final MSG_REMOVE_QUEUE_POSITIONS:I = 0x7

.field static final MSG_REORDER_ITEM:I = 0x6

.field static final MSG_SET_LIST:I = 0x1

.field static final MSG_SET_POSITION:I = 0x4

.field static final MSG_SET_QUEUE_ITEM:I = 0x5

.field static final MSG_SET_REPEAT:I = 0x3

.field static final MSG_SET_SHUFFLE:I = 0x2


# instance fields
.field private final mCallback:Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueueMessageHandler$IRadioPlayerQueueMessageCallback;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueueMessageHandler$IRadioPlayerQueueMessageCallback;)V
    .locals 0
    .param p1, "l"    # Landroid/os/Looper;
    .param p2, "callback"    # Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueueMessageHandler$IRadioPlayerQueueMessageCallback;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 40
    iput-object p2, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueueMessageHandler;->mCallback:Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueueMessageHandler$IRadioPlayerQueueMessageCallback;

    .line 41
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x1

    .line 45
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 58
    :goto_0
    return-void

    .line 47
    :sswitch_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueueMessageHandler;->mCallback:Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueueMessageHandler$IRadioPlayerQueueMessageCallback;

    invoke-interface {v0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueueMessageHandler$IRadioPlayerQueueMessageCallback;->reloadQueue()V

    goto :goto_0

    .line 50
    :sswitch_1
    iget-object v1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueueMessageHandler;->mCallback:Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueueMessageHandler$IRadioPlayerQueueMessageCallback;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    if-ne v3, v0, :cond_0

    :goto_1
    invoke-interface {v1, v2, v0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueueMessageHandler$IRadioPlayerQueueMessageCallback;->moveTo(IZ)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 53
    :sswitch_2
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueueMessageHandler;->mCallback:Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueueMessageHandler$IRadioPlayerQueueMessageCallback;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueueMessageHandler$IRadioPlayerQueueMessageCallback;->setPosition(II)V

    goto :goto_0

    .line 45
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_2
        0x9 -> :sswitch_0
        0xc -> :sswitch_1
    .end sparse-switch
.end method

.method public post(ILjava/lang/Object;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "data"    # Landroid/os/Bundle;

    .prologue
    .line 61
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueueMessageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 62
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0, p3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 63
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 64
    return-void
.end method
