.class public Lcom/samsung/android/app/music/service/milk/worker/StartClientWorker;
.super Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;
.source "StartClientWorker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/service/milk/worker/BaseWorker",
        "<",
        "Lcom/samsung/android/app/music/common/model/StartClientInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/samsung/android/app/music/service/milk/worker/StartClientWorker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/service/milk/worker/StartClientWorker;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appId"    # I
    .param p3, "msgId"    # I
    .param p4, "service"    # Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;

    .prologue
    .line 39
    const/4 v4, 0x2

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;-><init>(Landroid/content/Context;IIILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 40
    return-void
.end method


# virtual methods
.method protected doWorkInternal()Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<",
            "Lcom/samsung/android/app/music/common/model/StartClientInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    sget-object v0, Lcom/samsung/android/app/music/service/milk/worker/StartClientWorker;->LOG_TAG:Ljava/lang/String;

    const-string v1, "doWorkInternal"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-static {}, Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable;->get()Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable;->startInit()V

    .line 46
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/StartClientWorker;->getRequestId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/service/milk/worker/StartClientWorker;->time(I)Lrx/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/StartClientWorker;->scheduler()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/service/milk/worker/StartClientWorker$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/service/milk/worker/StartClientWorker$1;-><init>(Lcom/samsung/android/app/music/service/milk/worker/StartClientWorker;)V

    .line 47
    invoke-virtual {v0, v1}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/samsung/android/app/music/service/milk/worker/StartClientWorker;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method public onApiCalled(II)V
    .locals 0
    .param p1, "requestId"    # I
    .param p2, "requestType"    # I

    .prologue
    .line 78
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;->onApiCalled(II)V

    .line 79
    return-void
.end method

.method public bridge synthetic onApiHandled(IIILcom/samsung/android/app/music/common/model/ResponseModel;I)V
    .locals 6

    .prologue
    .line 35
    move-object v4, p4

    check-cast v4, Lcom/samsung/android/app/music/common/model/StartClientInfo;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/StartClientWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/StartClientInfo;I)V

    return-void
.end method

.method public onApiHandled(IIILcom/samsung/android/app/music/common/model/StartClientInfo;I)V
    .locals 11
    .param p1, "requestId"    # I
    .param p2, "requestType"    # I
    .param p3, "responseType"    # I
    .param p4, "successResult"    # Lcom/samsung/android/app/music/common/model/StartClientInfo;
    .param p5, "errorCode"    # I

    .prologue
    .line 84
    invoke-super/range {p0 .. p5}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/ResponseModel;I)V

    .line 85
    packed-switch p2, :pswitch_data_0

    .line 125
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 87
    :pswitch_1
    if-nez p3, :cond_2

    .line 88
    move-object v7, p4

    .line 90
    .local v7, "info":Lcom/samsung/android/app/music/common/model/StartClientInfo;
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/StartClientWorker;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.radio.countrycode"

    invoke-virtual {v7}, Lcom/samsung/android/app/music/common/model/StartClientInfo;->getCountryCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/common/preferences/Pref;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/StartClientWorker;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.radio.shopid"

    invoke-virtual {v7}, Lcom/samsung/android/app/music/common/model/StartClientInfo;->getShopId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/common/preferences/Pref;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/StartClientWorker;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.radio.channelid"

    invoke-virtual {v7}, Lcom/samsung/android/app/music/common/model/StartClientInfo;->getChannelId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/common/preferences/Pref;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/StartClientWorker;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.radio.clearcachedate"

    const/4 v2, 0x0

    .line 94
    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/common/preferences/Pref;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 95
    .local v8, "lastClearDate":Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/StartClientWorker;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.radio.clearcachedate"

    invoke-virtual {v7}, Lcom/samsung/android/app/music/common/model/StartClientInfo;->getClearCacheDate()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/common/preferences/Pref;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-virtual {v7}, Lcom/samsung/android/app/music/common/model/StartClientInfo;->getClearCacheDate()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 97
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/StartClientWorker;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "should_clear_prefetch_cache"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/common/preferences/Pref;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/StartClientWorker;->mContext:Landroid/content/Context;

    .line 100
    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy;

    .line 101
    .local v9, "proxy":Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy;
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/StartClientWorker;->mContext:Landroid/content/Context;

    .line 102
    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;

    .line 103
    .local v10, "storeProxy":Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/StartClientWorker;->mContext:Landroid/content/Context;

    .line 104
    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport$Proxy;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport$Proxy;

    .line 105
    .local v6, "extraProxy":Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport$Proxy;
    invoke-virtual {v7}, Lcom/samsung/android/app/music/common/model/StartClientInfo;->getHttpProxyServer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy;->init(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v7}, Lcom/samsung/android/app/music/common/model/StartClientInfo;->getModHttpServer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;->init(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v7}, Lcom/samsung/android/app/music/common/model/StartClientInfo;->getExtraHttpServer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport$Proxy;->init(Ljava/lang/String;)V

    .line 108
    invoke-static {}, Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable;->get()Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable;->initDone()V

    .line 109
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/StartClientWorker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/LoginManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/LoginManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/worker/StartClientWorker;->mContext:Landroid/content/Context;

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/LoginManager;->requestLogin(Landroid/content/Context;IIZZ)V

    .line 110
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/StartClientWorker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/prefetch/PrefetchManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/prefetch/IPrefetchManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/music/service/milk/prefetch/IPrefetchManager;->startPrefetch()V

    .line 116
    .end local v6    # "extraProxy":Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport$Proxy;
    .end local v7    # "info":Lcom/samsung/android/app/music/common/model/StartClientInfo;
    .end local v8    # "lastClearDate":Ljava/lang/String;
    .end local v9    # "proxy":Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy;
    .end local v10    # "storeProxy":Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;
    :goto_1
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p3, p4, v0}, Lcom/samsung/android/app/music/service/milk/worker/StartClientWorker;->invokeCallback(ILandroid/os/Parcelable;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 113
    :cond_2
    invoke-static {}, Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable;->get()Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable;->initFail()V

    .line 114
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/StartClientWorker;->mContext:Landroid/content/Context;

    const-string v1, "network_transport_init_failed"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/MilkDialogLauncher;->launchDialog(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 119
    :pswitch_2
    if-eqz p3, :cond_0

    .line 120
    invoke-static {}, Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable;->get()Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable;->initFail()V

    .line 121
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/StartClientWorker;->mContext:Landroid/content/Context;

    const-string v1, "network_transport_init_failed"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/MilkDialogLauncher;->launchDialog(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 85
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic onApiHandled(IIILjava/lang/Object;I)V
    .locals 6

    .prologue
    .line 35
    move-object v4, p4

    check-cast v4, Lcom/samsung/android/app/music/common/model/StartClientInfo;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/StartClientWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/StartClientInfo;I)V

    return-void
.end method

.method public scheduler()Lrx/Scheduler;
    .locals 1

    .prologue
    .line 68
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v0

    return-object v0
.end method

.method public time(I)Lrx/Observable;
    .locals 1
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lrx/Observable",
            "<",
            "Lcom/samsung/android/app/music/common/model/ServerTime;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/StartClientWorker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/net/transport/InitTransport$Factory;->create(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/net/transport/InitTransport;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/app/music/service/milk/net/transport/InitTransport;->time(I)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method
