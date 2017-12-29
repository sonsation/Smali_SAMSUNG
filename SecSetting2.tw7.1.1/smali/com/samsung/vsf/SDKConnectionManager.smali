.class public Lcom/samsung/vsf/SDKConnectionManager;
.super Ljava/lang/Object;
.source "SDKConnectionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/vsf/SDKConnectionManager$AsrServiceConnection;,
        Lcom/samsung/vsf/SDKConnectionManager$SDKHandler;
    }
.end annotation


# static fields
.field private static mServiceConnectionState:I


# instance fields
.field private clientParamsBundle:Landroid/os/Bundle;

.field private handlerThread:Landroid/os/HandlerThread;

.field private mConfig:Lcom/samsung/vsf/SpeechRecognizer$Config;

.field private mConnection:Lcom/samsung/vsf/SDKConnectionManager$AsrServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mResponse:Lcom/samsung/android/svoice/asrserviceinterface/IAsrResponse;

.field private mSdkHandler:Lcom/samsung/vsf/SDKConnectionManager$SDKHandler;

.field private mService:Lcom/samsung/android/svoice/asrserviceinterface/IAsrService;

.field private waitQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 62
    sput v0, Lcom/samsung/vsf/SDKConnectionManager;->mServiceConnectionState:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/samsung/vsf/SpeechRecognizer$Config;)V
    .locals 4
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "config"    # Lcom/samsung/vsf/SpeechRecognizer$Config;

    .prologue
    const/4 v1, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/samsung/vsf/SDKConnectionManager;->mContext:Landroid/content/Context;

    .line 69
    new-instance v0, Lcom/samsung/vsf/SDKConnectionManager$AsrServiceConnection;

    invoke-direct {v0, p0, v1}, Lcom/samsung/vsf/SDKConnectionManager$AsrServiceConnection;-><init>(Lcom/samsung/vsf/SDKConnectionManager;Lcom/samsung/vsf/SDKConnectionManager$1;)V

    iput-object v0, p0, Lcom/samsung/vsf/SDKConnectionManager;->mConnection:Lcom/samsung/vsf/SDKConnectionManager$AsrServiceConnection;

    .line 70
    iput-object p2, p0, Lcom/samsung/vsf/SDKConnectionManager;->mConfig:Lcom/samsung/vsf/SpeechRecognizer$Config;

    .line 71
    iput-object v1, p0, Lcom/samsung/vsf/SDKConnectionManager;->mService:Lcom/samsung/android/svoice/asrserviceinterface/IAsrService;

    .line 72
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/samsung/vsf/SDKConnectionManager;->waitQueue:Ljava/util/Queue;

    .line 73
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/vsf/SDKConnectionManager;->clientParamsBundle:Landroid/os/Bundle;

    .line 75
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "ASRServiceComm"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/samsung/vsf/SDKConnectionManager;->handlerThread:Landroid/os/HandlerThread;

    .line 77
    iget-object v0, p0, Lcom/samsung/vsf/SDKConnectionManager;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 78
    new-instance v0, Lcom/samsung/vsf/SDKConnectionManager$SDKHandler;

    iget-object v1, p0, Lcom/samsung/vsf/SDKConnectionManager;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/vsf/SDKConnectionManager$SDKHandler;-><init>(Lcom/samsung/vsf/SDKConnectionManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/vsf/SDKConnectionManager;->mSdkHandler:Lcom/samsung/vsf/SDKConnectionManager$SDKHandler;

    const/4 v0, 0x1

    .line 79
    sput v0, Lcom/samsung/vsf/SDKConnectionManager;->mServiceConnectionState:I

    .line 80
    iget-object v0, p0, Lcom/samsung/vsf/SDKConnectionManager;->mSdkHandler:Lcom/samsung/vsf/SDKConnectionManager$SDKHandler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/samsung/vsf/SDKConnectionManager$SDKHandler;->sendEmptyMessage(I)Z

    .line 81
    iget-object v0, p0, Lcom/samsung/vsf/SDKConnectionManager;->mSdkHandler:Lcom/samsung/vsf/SDKConnectionManager$SDKHandler;

    const/4 v1, 0x3

    new-instance v2, Lcom/samsung/android/svoice/asrserviceinterface/ResponseObject;

    iget-object v3, p0, Lcom/samsung/vsf/SDKConnectionManager;->mConfig:Lcom/samsung/vsf/SpeechRecognizer$Config;

    invoke-virtual {v3}, Lcom/samsung/vsf/SpeechRecognizer$Config;->getBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/android/svoice/asrserviceinterface/ResponseObject;-><init>(Landroid/os/Bundle;)V

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/vsf/SDKConnectionManager;->requestService(Landroid/os/Message;)V

    .line 82
    return-void
.end method

.method static synthetic access$102(Lcom/samsung/vsf/SDKConnectionManager;Lcom/samsung/android/svoice/asrserviceinterface/IAsrService;)Lcom/samsung/android/svoice/asrserviceinterface/IAsrService;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/vsf/SDKConnectionManager;
    .param p1, "x1"    # Lcom/samsung/android/svoice/asrserviceinterface/IAsrService;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/samsung/vsf/SDKConnectionManager;->mService:Lcom/samsung/android/svoice/asrserviceinterface/IAsrService;

    return-object p1
.end method

.method static synthetic access$202(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 30
    sput p0, Lcom/samsung/vsf/SDKConnectionManager;->mServiceConnectionState:I

    return p0
.end method

.method static synthetic access$300(Lcom/samsung/vsf/SDKConnectionManager;)Ljava/util/Queue;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/vsf/SDKConnectionManager;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/samsung/vsf/SDKConnectionManager;->waitQueue:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/vsf/SDKConnectionManager;)Lcom/samsung/vsf/SDKConnectionManager$SDKHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/vsf/SDKConnectionManager;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/samsung/vsf/SDKConnectionManager;->mSdkHandler:Lcom/samsung/vsf/SDKConnectionManager$SDKHandler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/vsf/SDKConnectionManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/vsf/SDKConnectionManager;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/samsung/vsf/SDKConnectionManager;->notifyConnectionError()V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/vsf/SDKConnectionManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/vsf/SDKConnectionManager;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/samsung/vsf/SDKConnectionManager;->cleanUpSDKComponents()V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/vsf/SDKConnectionManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/vsf/SDKConnectionManager;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/samsung/vsf/SDKConnectionManager;->connect()V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/vsf/SDKConnectionManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/vsf/SDKConnectionManager;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/samsung/vsf/SDKConnectionManager;->disconnect()V

    return-void
.end method

.method static synthetic access$900(Lcom/samsung/vsf/SDKConnectionManager;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/vsf/SDKConnectionManager;
    .param p1, "x1"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/samsung/vsf/SDKConnectionManager;->handleServiceControl(Landroid/os/Message;)V

    return-void
.end method

.method private cleanUpSDKComponents()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 127
    iget-object v0, p0, Lcom/samsung/vsf/SDKConnectionManager;->waitQueue:Ljava/util/Queue;

    if-nez v0, :cond_0

    .line 130
    :goto_0
    iput-object v1, p0, Lcom/samsung/vsf/SDKConnectionManager;->mService:Lcom/samsung/android/svoice/asrserviceinterface/IAsrService;

    .line 131
    return-void

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/samsung/vsf/SDKConnectionManager;->waitQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    goto :goto_0
.end method

.method private connect()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string/jumbo v1, "ASRClient-CM"

    const-string/jumbo v2, "connect"

    .line 112
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .local v0, "i":Landroid/content/Intent;
    const-string/jumbo v1, "com.samsung.android.svoice"

    const-string/jumbo v2, "com.samsung.android.svoice.asrservice.ASRService"

    .line 114
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    iget-object v1, p0, Lcom/samsung/vsf/SDKConnectionManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/vsf/SDKConnectionManager;->mConnection:Lcom/samsung/vsf/SDKConnectionManager$AsrServiceConnection;

    invoke-virtual {v1, v0, v2, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "ASRClient-CM"

    const-string/jumbo v2, "ASR service binding in progress"

    .line 121
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    sput v4, Lcom/samsung/vsf/SDKConnectionManager;->mServiceConnectionState:I

    .line 124
    :goto_0
    return-void

    :cond_0
    const-string/jumbo v1, "ASRClient-CM"

    const-string/jumbo v2, "ASR service binding failed"

    .line 116
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    sput v3, Lcom/samsung/vsf/SDKConnectionManager;->mServiceConnectionState:I

    .line 118
    invoke-direct {p0}, Lcom/samsung/vsf/SDKConnectionManager;->notifyConnectionError()V

    .line 119
    invoke-direct {p0}, Lcom/samsung/vsf/SDKConnectionManager;->cleanUpSDKComponents()V

    goto :goto_0
.end method

.method private disconnect()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string/jumbo v0, "ASRClient-CM"

    const-string/jumbo v1, "disconnect"

    .line 135
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    sget v0, Lcom/samsung/vsf/SDKConnectionManager;->mServiceConnectionState:I

    if-nez v0, :cond_0

    .line 139
    :goto_0
    sput v2, Lcom/samsung/vsf/SDKConnectionManager;->mServiceConnectionState:I

    .line 140
    iget-object v0, p0, Lcom/samsung/vsf/SDKConnectionManager;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 141
    invoke-direct {p0}, Lcom/samsung/vsf/SDKConnectionManager;->cleanUpSDKComponents()V

    const/4 v0, 0x0

    .line 142
    iput-object v0, p0, Lcom/samsung/vsf/SDKConnectionManager;->waitQueue:Ljava/util/Queue;

    .line 143
    return-void

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/samsung/vsf/SDKConnectionManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/vsf/SDKConnectionManager;->mConnection:Lcom/samsung/vsf/SDKConnectionManager$AsrServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_0
.end method

.method private handleServiceControl(Landroid/os/Message;)V
    .locals 2
    .param p1, "message"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 272
    iget-object v0, p0, Lcom/samsung/vsf/SDKConnectionManager;->mService:Lcom/samsung/android/svoice/asrserviceinterface/IAsrService;

    if-eqz v0, :cond_1

    .line 276
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 309
    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "ASRClient-CM"

    const-string/jumbo v1, "handleServiceControl, mService == null"

    .line 273
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    return-void

    .line 278
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/vsf/SDKConnectionManager;->mService:Lcom/samsung/android/svoice/asrserviceinterface/IAsrService;

    invoke-interface {v0}, Lcom/samsung/android/svoice/asrserviceinterface/IAsrService;->startListening()V

    .line 279
    return-void

    .line 281
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/vsf/SDKConnectionManager;->mService:Lcom/samsung/android/svoice/asrserviceinterface/IAsrService;

    invoke-interface {v0}, Lcom/samsung/android/svoice/asrserviceinterface/IAsrService;->stopListening()V

    goto :goto_0

    .line 284
    :pswitch_2
    iget-object v0, p0, Lcom/samsung/vsf/SDKConnectionManager;->mService:Lcom/samsung/android/svoice/asrserviceinterface/IAsrService;

    invoke-interface {v0}, Lcom/samsung/android/svoice/asrserviceinterface/IAsrService;->cancelRecognition()V

    goto :goto_0

    .line 287
    :pswitch_3
    iget-object v0, p0, Lcom/samsung/vsf/SDKConnectionManager;->mService:Lcom/samsung/android/svoice/asrserviceinterface/IAsrService;

    invoke-interface {v0}, Lcom/samsung/android/svoice/asrserviceinterface/IAsrService;->destroy()V

    goto :goto_0

    .line 290
    :pswitch_4
    iget-object v1, p0, Lcom/samsung/vsf/SDKConnectionManager;->mService:Lcom/samsung/android/svoice/asrserviceinterface/IAsrService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/svoice/asrserviceinterface/IAsrResponse;

    invoke-interface {v1, v0}, Lcom/samsung/android/svoice/asrserviceinterface/IAsrService;->registerResponseListener(Lcom/samsung/android/svoice/asrserviceinterface/IAsrResponse;)V

    goto :goto_0

    .line 293
    :pswitch_5
    iget-object v0, p0, Lcom/samsung/vsf/SDKConnectionManager;->mService:Lcom/samsung/android/svoice/asrserviceinterface/IAsrService;

    invoke-interface {v0}, Lcom/samsung/android/svoice/asrserviceinterface/IAsrService;->unregisterResponseListener()V

    goto :goto_0

    .line 296
    :pswitch_6
    if-eqz p1, :cond_0

    .line 297
    iget-object v1, p0, Lcom/samsung/vsf/SDKConnectionManager;->mService:Lcom/samsung/android/svoice/asrserviceinterface/IAsrService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    invoke-interface {v1, v0}, Lcom/samsung/android/svoice/asrserviceinterface/IAsrService;->sendAudio([B)V

    goto :goto_0

    .line 301
    :pswitch_7
    invoke-direct {p0}, Lcom/samsung/vsf/SDKConnectionManager;->setClientParams()V

    .line 302
    iget-object v0, p0, Lcom/samsung/vsf/SDKConnectionManager;->mService:Lcom/samsung/android/svoice/asrserviceinterface/IAsrService;

    iget-object v1, p0, Lcom/samsung/vsf/SDKConnectionManager;->clientParamsBundle:Landroid/os/Bundle;

    invoke-interface {v0, v1}, Lcom/samsung/android/svoice/asrserviceinterface/IAsrService;->setClientParams(Landroid/os/Bundle;)V

    .line 303
    if-eqz p1, :cond_0

    .line 304
    iget-object v1, p0, Lcom/samsung/vsf/SDKConnectionManager;->mService:Lcom/samsung/android/svoice/asrserviceinterface/IAsrService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/svoice/asrserviceinterface/ResponseObject;

    invoke-interface {v1, v0}, Lcom/samsung/android/svoice/asrserviceinterface/IAsrService;->setConfig(Lcom/samsung/android/svoice/asrserviceinterface/ResponseObject;)V

    goto :goto_0

    .line 276
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_7
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private notifyConnectionError()V
    .locals 3

    .prologue
    .line 224
    :try_start_0
    iget-object v1, p0, Lcom/samsung/vsf/SDKConnectionManager;->mResponse:Lcom/samsung/android/svoice/asrserviceinterface/IAsrResponse;

    if-nez v1, :cond_0

    .line 229
    :goto_0
    return-void

    .line 225
    :cond_0
    iget-object v1, p0, Lcom/samsung/vsf/SDKConnectionManager;->mResponse:Lcom/samsung/android/svoice/asrserviceinterface/IAsrResponse;

    const-string/jumbo v2, "internal error"

    invoke-interface {v1, v2}, Lcom/samsung/android/svoice/asrserviceinterface/IAsrResponse;->onError(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 228
    :catch_0
    move-exception v0

    .line 227
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private requestService(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    .line 191
    iget-object v1, p0, Lcom/samsung/vsf/SDKConnectionManager;->mService:Lcom/samsung/android/svoice/asrserviceinterface/IAsrService;

    if-eqz v1, :cond_1

    .line 217
    iget-object v1, p0, Lcom/samsung/vsf/SDKConnectionManager;->mSdkHandler:Lcom/samsung/vsf/SDKConnectionManager$SDKHandler;

    invoke-virtual {v1, p1}, Lcom/samsung/vsf/SDKConnectionManager$SDKHandler;->sendMessage(Landroid/os/Message;)Z

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    sget v1, Lcom/samsung/vsf/SDKConnectionManager;->mServiceConnectionState:I

    if-eqz v1, :cond_3

    .line 211
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/samsung/vsf/SDKConnectionManager;->waitQueue:Ljava/util/Queue;

    if-eqz v1, :cond_0

    .line 212
    iget-object v1, p0, Lcom/samsung/vsf/SDKConnectionManager;->waitQueue:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    .line 193
    :cond_3
    iget v0, p1, Landroid/os/Message;->what:I

    .local v0, "msgCode":I
    const-string/jumbo v1, "ASRClient-CM"

    .line 194
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ASR service is null and state disconnected , state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    if-eq v0, v4, :cond_4

    .line 205
    invoke-direct {p0}, Lcom/samsung/vsf/SDKConnectionManager;->cleanUpSDKComponents()V

    .line 207
    return-void

    .line 196
    :cond_4
    sput v4, Lcom/samsung/vsf/SDKConnectionManager;->mServiceConnectionState:I

    .line 197
    iget-object v1, p0, Lcom/samsung/vsf/SDKConnectionManager;->mSdkHandler:Lcom/samsung/vsf/SDKConnectionManager$SDKHandler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lcom/samsung/vsf/SDKConnectionManager$SDKHandler;->sendEmptyMessage(I)Z

    .line 198
    iget-object v1, p0, Lcom/samsung/vsf/SDKConnectionManager;->waitQueue:Ljava/util/Queue;

    if-eqz v1, :cond_2

    .line 199
    iget-object v1, p0, Lcom/samsung/vsf/SDKConnectionManager;->waitQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->clear()V

    .line 200
    iget-object v1, p0, Lcom/samsung/vsf/SDKConnectionManager;->waitQueue:Ljava/util/Queue;

    iget-object v2, p0, Lcom/samsung/vsf/SDKConnectionManager;->mSdkHandler:Lcom/samsung/vsf/SDKConnectionManager$SDKHandler;

    const/4 v3, 0x3

    new-instance v4, Lcom/samsung/android/svoice/asrserviceinterface/ResponseObject;

    iget-object v5, p0, Lcom/samsung/vsf/SDKConnectionManager;->mConfig:Lcom/samsung/vsf/SpeechRecognizer$Config;

    invoke-virtual {v5}, Lcom/samsung/vsf/SpeechRecognizer$Config;->getBundle()Landroid/os/Bundle;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/samsung/android/svoice/asrserviceinterface/ResponseObject;-><init>(Landroid/os/Bundle;)V

    invoke-static {v2, v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 201
    iget-object v1, p0, Lcom/samsung/vsf/SDKConnectionManager;->waitQueue:Ljava/util/Queue;

    iget-object v2, p0, Lcom/samsung/vsf/SDKConnectionManager;->mSdkHandler:Lcom/samsung/vsf/SDKConnectionManager$SDKHandler;

    const/4 v3, 0x7

    iget-object v4, p0, Lcom/samsung/vsf/SDKConnectionManager;->mResponse:Lcom/samsung/android/svoice/asrserviceinterface/IAsrResponse;

    invoke-static {v2, v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private setClientParams()V
    .locals 4

    .prologue
    .line 233
    :try_start_0
    iget-object v1, p0, Lcom/samsung/vsf/SDKConnectionManager;->clientParamsBundle:Landroid/os/Bundle;

    const-string/jumbo v2, "clientPackageName"

    iget-object v3, p0, Lcom/samsung/vsf/SDKConnectionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    :goto_0
    return-void

    .line 237
    :catch_0
    move-exception v0

    .line 236
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method destroy(Z)V
    .locals 3
    .param p1, "isForced"    # Z

    .prologue
    const-string/jumbo v0, "ASRClient-CM"

    .line 167
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "destroy isForced = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    if-eqz p1, :cond_0

    .line 173
    invoke-direct {p0}, Lcom/samsung/vsf/SDKConnectionManager;->disconnect()V

    .line 175
    :goto_0
    return-void

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/samsung/vsf/SDKConnectionManager;->mSdkHandler:Lcom/samsung/vsf/SDKConnectionManager$SDKHandler;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/vsf/SDKConnectionManager;->requestService(Landroid/os/Message;)V

    .line 171
    iget-object v0, p0, Lcom/samsung/vsf/SDKConnectionManager;->mSdkHandler:Lcom/samsung/vsf/SDKConnectionManager$SDKHandler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/samsung/vsf/SDKConnectionManager$SDKHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method registerResponseListener(Lcom/samsung/android/svoice/asrserviceinterface/IAsrResponse;)V
    .locals 3
    .param p1, "listener"    # Lcom/samsung/android/svoice/asrserviceinterface/IAsrResponse;

    .prologue
    const-string/jumbo v0, "ASRClient-CM"

    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerResponseListener listener = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iput-object p1, p0, Lcom/samsung/vsf/SDKConnectionManager;->mResponse:Lcom/samsung/android/svoice/asrserviceinterface/IAsrResponse;

    .line 180
    iget-object v0, p0, Lcom/samsung/vsf/SDKConnectionManager;->mSdkHandler:Lcom/samsung/vsf/SDKConnectionManager$SDKHandler;

    const/4 v1, 0x7

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/vsf/SDKConnectionManager;->requestService(Landroid/os/Message;)V

    .line 181
    return-void
.end method

.method startListening()V
    .locals 2

    .prologue
    const-string/jumbo v0, "ASRClient-CM"

    const-string/jumbo v1, "startListening"

    .line 148
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v0, p0, Lcom/samsung/vsf/SDKConnectionManager;->mSdkHandler:Lcom/samsung/vsf/SDKConnectionManager$SDKHandler;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/vsf/SDKConnectionManager;->requestService(Landroid/os/Message;)V

    .line 150
    return-void
.end method

.method stopListening()V
    .locals 2

    .prologue
    const-string/jumbo v0, "ASRClient-CM"

    const-string/jumbo v1, "stopListening"

    .line 153
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v0, p0, Lcom/samsung/vsf/SDKConnectionManager;->mSdkHandler:Lcom/samsung/vsf/SDKConnectionManager$SDKHandler;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/vsf/SDKConnectionManager;->requestService(Landroid/os/Message;)V

    .line 155
    return-void
.end method

.method unregisterResponseListener()V
    .locals 3

    .prologue
    const-string/jumbo v0, "ASRClient-CM"

    .line 184
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unregisterResponseListener listener = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/vsf/SDKConnectionManager;->mResponse:Lcom/samsung/android/svoice/asrserviceinterface/IAsrResponse;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 185
    iput-object v0, p0, Lcom/samsung/vsf/SDKConnectionManager;->mResponse:Lcom/samsung/android/svoice/asrserviceinterface/IAsrResponse;

    .line 186
    iget-object v0, p0, Lcom/samsung/vsf/SDKConnectionManager;->mSdkHandler:Lcom/samsung/vsf/SDKConnectionManager$SDKHandler;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/vsf/SDKConnectionManager;->requestService(Landroid/os/Message;)V

    .line 187
    return-void
.end method
