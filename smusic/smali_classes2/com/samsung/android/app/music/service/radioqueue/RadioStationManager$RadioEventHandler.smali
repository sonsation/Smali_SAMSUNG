.class Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager$RadioEventHandler;
.super Landroid/os/Handler;
.source "RadioStationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RadioEventHandler"
.end annotation


# static fields
.field private static final DEFAULT_INTERVAL:I = 0x64

.field private static final MSG_LOAD_RADIO_QUEUE:I = 0x1

.field private static final MSG_LOAD_STATION:I = 0x0

.field private static final MSG_REMOVE_ALL:I = 0x2


# instance fields
.field private final mStationManager:Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;


# direct methods
.method constructor <init>(Landroid/os/Looper;Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;)V
    .locals 0
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "radioStationManager"    # Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;

    .prologue
    .line 360
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 361
    iput-object p2, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager$RadioEventHandler;->mStationManager:Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;

    .line 362
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 384
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 399
    :goto_0
    return-void

    .line 386
    :pswitch_0
    iget-object v1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager$RadioEventHandler;->mStationManager:Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;

    invoke-static {v1}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;->access$200(Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;)V

    goto :goto_0

    .line 389
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 390
    .local v0, "stationId":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager$RadioEventHandler;->mStationManager:Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;

    invoke-static {v1, v0}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;->access$300(Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;Ljava/lang/String;)V

    goto :goto_0

    .line 393
    .end local v0    # "stationId":Ljava/lang/String;
    :pswitch_2
    iget-object v1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager$RadioEventHandler;->mStationManager:Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;

    invoke-static {v1}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;->access$400(Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;)V

    .line 394
    invoke-static {}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;->access$500()Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager$IMediaChangeCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager$IMediaChangeCallback;->onMetadataChanged()V

    goto :goto_0

    .line 384
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method requestLoadRadioQueue(Ljava/lang/String;)V
    .locals 4
    .param p1, "stationId"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 370
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager$RadioEventHandler;->removeMessages(I)V

    .line 371
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 372
    .local v0, "msg":Landroid/os/Message;
    iput v1, v0, Landroid/os/Message;->what:I

    .line 373
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 374
    const-wide/16 v2, 0x64

    invoke-virtual {p0, v0, v2, v3}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager$RadioEventHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 375
    return-void
.end method

.method requestLoadStation()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 365
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager$RadioEventHandler;->removeMessages(I)V

    .line 366
    const-wide/16 v0, 0x64

    invoke-virtual {p0, v2, v0, v1}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager$RadioEventHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 367
    return-void
.end method

.method requestRemoveAll()V
    .locals 4

    .prologue
    .line 378
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager$RadioEventHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 379
    const/4 v0, 0x2

    const-wide/16 v2, 0x64

    invoke-virtual {p0, v0, v2, v3}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager$RadioEventHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 380
    return-void
.end method
