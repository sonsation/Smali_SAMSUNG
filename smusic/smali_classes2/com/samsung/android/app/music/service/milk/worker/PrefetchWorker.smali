.class public Lcom/samsung/android/app/music/service/milk/worker/PrefetchWorker;
.super Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;
.source "PrefetchWorker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/service/milk/worker/BaseWorker",
        "<",
        "Lcom/samsung/android/app/music/common/model/PrefetchInfo;",
        ">;"
    }
.end annotation


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "PrefetchWorker"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mShouldClearCache:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;IILcom/samsung/android/app/music/service/milk/MilkServiceInterface;Z)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appId"    # I
    .param p3, "reqId"    # I
    .param p4, "service"    # Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;
    .param p5, "shouldClearCache"    # Z

    .prologue
    .line 32
    const/4 v4, 0x6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;-><init>(Landroid/content/Context;IIILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/service/milk/worker/PrefetchWorker;->mShouldClearCache:Z

    .line 33
    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/worker/PrefetchWorker;->mContext:Landroid/content/Context;

    .line 34
    iput-boolean p5, p0, Lcom/samsung/android/app/music/service/milk/worker/PrefetchWorker;->mShouldClearCache:Z

    .line 35
    return-void
.end method

.method private startPrefetch()Lrx/Observable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<",
            "Lcom/samsung/android/app/music/common/model/PrefetchInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/PrefetchWorker;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.radio.prefetch.manager.prefetch_is_requesting"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/common/preferences/Pref;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 114
    const-string v0, "PrefetchWorker"

    const-string/jumbo v1, "startPrefetch >> KEY_PREFETCH_IS_REQUESTING from GIN"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/PrefetchWorker;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.radio.prefetch.manager.prefetch_last_warm_start"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/app/music/common/preferences/Pref;->putLong(Landroid/content/Context;Ljava/lang/String;J)V

    .line 116
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/PrefetchWorker;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.radio.prefetch.manager.prefetch_old_update_date"

    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/worker/PrefetchWorker;->mContext:Landroid/content/Context;

    const-string v3, "com.samsung.radio.prefetch.manager.prefetch_new_update_date"

    const-string v4, "NEW"

    .line 117
    invoke-static {v2, v3, v4}, Lcom/samsung/android/app/music/common/preferences/Pref;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 116
    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/common/preferences/Pref;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/PrefetchWorker;->getRadioTransport()Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/music/service/milk/worker/PrefetchWorker;->mReqId:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport;->prefetch(ILjava/util/Map;)Lrx/Observable;

    move-result-object v0

    const-wide/16 v2, 0x3

    invoke-virtual {v0, v2, v3}, Lrx/Observable;->retry(J)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected doWorkInternal()Lrx/Observable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<",
            "Lcom/samsung/android/app/music/common/model/PrefetchInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 39
    const-string v2, "PrefetchWorker"

    const-string v3, "doWorkInternal >> is called"

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    iget-boolean v2, p0, Lcom/samsung/android/app/music/service/milk/worker/PrefetchWorker;->mShouldClearCache:Z

    if-eqz v2, :cond_0

    .line 42
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/PrefetchWorker;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager;->clearCache(Landroid/content/Context;)V

    .line 43
    const-string v2, "PrefetchWorker"

    const-string v3, "doWorkInternal >> Call CacheManager.clearCache() "

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/worker/PrefetchWorker;->mContext:Landroid/content/Context;

    const-string v3, "com.samsung.radio.prefetch.manager.prefetch_delayed"

    invoke-static {v2, v3, v4}, Lcom/samsung/android/app/music/common/preferences/Pref;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 46
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/worker/PrefetchWorker;->mContext:Landroid/content/Context;

    const-string v3, "com.samsung.radio.prefetch.manager.prefetch_stations_fetched"

    invoke-static {v2, v3, v4}, Lcom/samsung/android/app/music/common/preferences/Pref;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 47
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/worker/PrefetchWorker;->mContext:Landroid/content/Context;

    const-string v3, "com.samsung.radio.prefetch.manager.prefetch_delayed_chunk_urls"

    invoke-static {v2, v3, v1}, Lcom/samsung/android/app/music/common/preferences/Pref;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/worker/PrefetchWorker;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "should_clear_prefetch_cache"

    invoke-static {v2, v3, v4}, Lcom/samsung/android/app/music/common/preferences/Pref;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 49
    const-string v2, "PrefetchWorker"

    const-string v3, "doWorkInternal >> initialize pref for prefetch again."

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/worker/PrefetchWorker;->mContext:Landroid/content/Context;

    const-string v3, "com.samsung.radio.prefetch.manager.prefetch_delayed_chunk_urls"

    invoke-static {v2, v3, v1}, Lcom/samsung/android/app/music/common/preferences/Pref;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 52
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/milk/worker/PrefetchWorker;->startPrefetch()Lrx/Observable;

    move-result-object v1

    .line 60
    :goto_0
    return-object v1

    .line 54
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/worker/PrefetchWorker;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/app/music/service/milk/prefetch/PrefetchFactory;->getManager(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/prefetch/IPrefetchManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/app/music/service/milk/prefetch/IPrefetchManager;->loadPrefetchUrls()Ljava/util/ArrayList;

    move-result-object v0

    .line 55
    .local v0, "chunkUrls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v0, :cond_2

    .line 56
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/worker/PrefetchWorker;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/app/music/service/milk/prefetch/PrefetchFactory;->getManager(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/prefetch/IPrefetchManager;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/samsung/android/app/music/service/milk/prefetch/IPrefetchManager;->doPrefetchChunkData(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 58
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/milk/worker/PrefetchWorker;->startPrefetch()Lrx/Observable;

    move-result-object v1

    goto :goto_0
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    const-string v0, "PrefetchWorker"

    return-object v0
.end method

.method public onApiCalled(II)V
    .locals 3
    .param p1, "requestId"    # I
    .param p2, "requestType"    # I

    .prologue
    .line 70
    const-string v0, "PrefetchWorker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onApiCalled >> requestType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public onApiHandled(IIILcom/samsung/android/app/music/common/model/PrefetchInfo;I)V
    .locals 4
    .param p1, "requestId"    # I
    .param p2, "requestType"    # I
    .param p3, "responseType"    # I
    .param p4, "successResult"    # Lcom/samsung/android/app/music/common/model/PrefetchInfo;
    .param p5, "errorCode"    # I

    .prologue
    .line 76
    const-string v2, "PrefetchWorker"

    const-string v3, "onApiHandled >> onApiHandled is called "

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-super/range {p0 .. p5}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/ResponseModel;I)V

    .line 78
    packed-switch p2, :pswitch_data_0

    .line 110
    :goto_0
    :pswitch_0
    return-void

    .line 80
    :pswitch_1
    packed-switch p3, :pswitch_data_1

    goto :goto_0

    .line 82
    :pswitch_2
    const-string v2, "PrefetchWorker"

    const-string v3, "onApiHandled >> Request Succeed "

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    move-object v0, p4

    .line 84
    .local v0, "info":Lcom/samsung/android/app/music/common/model/PrefetchInfo;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/PrefetchInfo;->setTrackInfo()V

    .line 85
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/PrefetchInfo;->getPrefetchData()Ljava/util/ArrayList;

    move-result-object v1

    .line 87
    .local v1, "prefetchData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/PrefetchData;>;"
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/worker/PrefetchWorker;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/app/music/service/milk/prefetch/PrefetchFactory;->getManager(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/prefetch/IPrefetchManager;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/samsung/android/app/music/service/milk/prefetch/IPrefetchManager;->prefetchDataList(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 95
    .end local v0    # "info":Lcom/samsung/android/app/music/common/model/PrefetchInfo;
    .end local v1    # "prefetchData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/PrefetchData;>;"
    :pswitch_3
    const-string v2, "PrefetchWorker"

    const-string v3, "onApiHandled >> Request Canceled "

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 98
    :pswitch_4
    const-string v2, "PrefetchWorker"

    const-string v3, "onApiHandled >> Response time out"

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 78
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
    .end packed-switch

    .line 80
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public bridge synthetic onApiHandled(IIILcom/samsung/android/app/music/common/model/ResponseModel;I)V
    .locals 6

    .prologue
    .line 23
    move-object v4, p4

    check-cast v4, Lcom/samsung/android/app/music/common/model/PrefetchInfo;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/PrefetchWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/PrefetchInfo;I)V

    return-void
.end method

.method public bridge synthetic onApiHandled(IIILjava/lang/Object;I)V
    .locals 6

    .prologue
    .line 23
    move-object v4, p4

    check-cast v4, Lcom/samsung/android/app/music/common/model/PrefetchInfo;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/PrefetchWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/PrefetchInfo;I)V

    return-void
.end method
