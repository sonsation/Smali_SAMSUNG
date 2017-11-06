.class public Lcom/samsung/android/app/music/service/milk/worker/search/store/GetSearchPresetsWorker;
.super Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;
.source "GetSearchPresetsWorker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/service/milk/worker/BaseWorker",
        "<",
        "Lcom/samsung/android/app/music/common/model/milksearch/SearchPresetInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final CACHE_NAME:Ljava/lang/String; = "preset_cache"

.field private static final CACHE_SIZE:I = 0x19000

.field private static final KEY:Ljava/lang/String; = "key_preset_info"

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field mCache:Lcom/samsung/android/app/music/milk/store/model/ParcelDiskCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/samsung/android/app/music/service/milk/worker/search/store/GetSearchPresetsWorker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/service/milk/worker/search/store/GetSearchPresetsWorker;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appId"    # I
    .param p3, "reqId"    # I
    .param p4, "service"    # Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;

    .prologue
    .line 38
    const/16 v4, 0x4e85

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;-><init>(Landroid/content/Context;IIILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/service/milk/worker/search/store/GetSearchPresetsWorker;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/milk/worker/search/store/GetSearchPresetsWorker;

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/search/store/GetSearchPresetsWorker;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/samsung/android/app/music/service/milk/worker/search/store/GetSearchPresetsWorker;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/service/milk/worker/search/store/GetSearchPresetsWorker;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/milk/worker/search/store/GetSearchPresetsWorker;

    .prologue
    .line 24
    iget v0, p0, Lcom/samsung/android/app/music/service/milk/worker/search/store/GetSearchPresetsWorker;->mReqId:I

    return v0
.end method


# virtual methods
.method public doWorkInternal()Lrx/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<",
            "Lcom/samsung/android/app/music/common/model/milksearch/SearchPresetInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    const/4 v0, 0x0

    .line 45
    .local v0, "observable":Lrx/Observable;, "Lrx/Observable<Lcom/samsung/android/app/music/common/model/milksearch/SearchPresetInfo;>;"
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/worker/search/store/GetSearchPresetsWorker;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/app/music/service/milk/net/NetworkUtils;->hasDataConnection(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/search/store/GetSearchPresetsWorker;->getStoreTransport()Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/search/store/GetSearchPresetsWorker;->getRequestId()I

    move-result v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport;->getSearchPresets(ILjava/util/Map;)Lrx/Observable;

    move-result-object v0

    .line 51
    :goto_0
    return-object v0

    .line 48
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/search/store/GetSearchPresetsWorker;->getNoNetworkObservable()Lrx/Observable;

    move-result-object v0

    goto :goto_0
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lcom/samsung/android/app/music/service/milk/worker/search/store/GetSearchPresetsWorker;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method protected getNoNetworkObservable()Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<",
            "Lcom/samsung/android/app/music/common/model/milksearch/SearchPresetInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    new-instance v0, Lcom/samsung/android/app/music/service/milk/worker/search/store/GetSearchPresetsWorker$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/service/milk/worker/search/store/GetSearchPresetsWorker$1;-><init>(Lcom/samsung/android/app/music/service/milk/worker/search/store/GetSearchPresetsWorker;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onApiHandled(IIILcom/samsung/android/app/music/common/model/ResponseModel;I)V
    .locals 6

    .prologue
    .line 24
    move-object v4, p4

    check-cast v4, Lcom/samsung/android/app/music/common/model/milksearch/SearchPresetInfo;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/search/store/GetSearchPresetsWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/milksearch/SearchPresetInfo;I)V

    return-void
.end method

.method public onApiHandled(IIILcom/samsung/android/app/music/common/model/milksearch/SearchPresetInfo;I)V
    .locals 6
    .param p1, "requestId"    # I
    .param p2, "requestType"    # I
    .param p3, "responseType"    # I
    .param p4, "successResult"    # Lcom/samsung/android/app/music/common/model/milksearch/SearchPresetInfo;
    .param p5, "errorCode"    # I

    .prologue
    .line 96
    invoke-super/range {p0 .. p5}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/ResponseModel;I)V

    .line 98
    packed-switch p3, :pswitch_data_0

    .line 114
    :goto_0
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, p3, p4, v1}, Lcom/samsung/android/app/music/service/milk/worker/search/store/GetSearchPresetsWorker;->invokeCallback(ILandroid/os/Parcelable;[Ljava/lang/Object;)V

    .line 115
    return-void

    .line 100
    :pswitch_0
    sget-object v1, Lcom/samsung/android/app/music/service/milk/worker/search/store/GetSearchPresetsWorker;->LOG_TAG:Ljava/lang/String;

    const-string v2, "onApiHandled : success"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/search/store/GetSearchPresetsWorker;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/samsung/android/app/music/common/model/milksearch/SearchPresetInfo;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const-string v3, "preset_cache"

    const-wide/32 v4, 0x19000

    invoke-static {v1, v2, v3, v4, v5}, Lcom/samsung/android/app/music/milk/store/model/ParcelDiskCache;->open(Landroid/content/Context;Ljava/lang/ClassLoader;Ljava/lang/String;J)Lcom/samsung/android/app/music/milk/store/model/ParcelDiskCache;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/service/milk/worker/search/store/GetSearchPresetsWorker;->mCache:Lcom/samsung/android/app/music/milk/store/model/ParcelDiskCache;

    .line 105
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/worker/search/store/GetSearchPresetsWorker;->mCache:Lcom/samsung/android/app/music/milk/store/model/ParcelDiskCache;

    const-string v2, "key_preset_info"

    invoke-virtual {v1, v2, p4}, Lcom/samsung/android/app/music/milk/store/model/ParcelDiskCache;->set(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/worker/search/store/GetSearchPresetsWorker;->mCache:Lcom/samsung/android/app/music/milk/store/model/ParcelDiskCache;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/store/IOUtils;->close(Ljava/io/Closeable;)V

    goto :goto_0

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/worker/search/store/GetSearchPresetsWorker;->mCache:Lcom/samsung/android/app/music/milk/store/model/ParcelDiskCache;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/store/IOUtils;->close(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/worker/search/store/GetSearchPresetsWorker;->mCache:Lcom/samsung/android/app/music/milk/store/model/ParcelDiskCache;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/store/IOUtils;->close(Ljava/io/Closeable;)V

    throw v1

    .line 98
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic onApiHandled(IIILjava/lang/Object;I)V
    .locals 6

    .prologue
    .line 24
    move-object v4, p4

    check-cast v4, Lcom/samsung/android/app/music/common/model/milksearch/SearchPresetInfo;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/search/store/GetSearchPresetsWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/milksearch/SearchPresetInfo;I)V

    return-void
.end method
