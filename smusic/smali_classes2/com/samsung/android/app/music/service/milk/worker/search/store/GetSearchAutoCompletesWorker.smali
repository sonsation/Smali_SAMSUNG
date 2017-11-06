.class public Lcom/samsung/android/app/music/service/milk/worker/search/store/GetSearchAutoCompletesWorker;
.super Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;
.source "GetSearchAutoCompletesWorker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/service/milk/worker/BaseWorker",
        "<",
        "Lcom/samsung/android/app/music/common/model/milksearch/SearchAutoCompleteInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mKeyword:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/samsung/android/app/music/service/milk/worker/search/store/GetSearchAutoCompletesWorker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/service/milk/worker/search/store/GetSearchAutoCompletesWorker;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILjava/lang/String;Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appId"    # I
    .param p3, "reqId"    # I
    .param p4, "keyword"    # Ljava/lang/String;
    .param p5, "service"    # Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;

    .prologue
    .line 25
    const/16 v4, 0x4e86

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;-><init>(Landroid/content/Context;IIILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 26
    iput-object p4, p0, Lcom/samsung/android/app/music/service/milk/worker/search/store/GetSearchAutoCompletesWorker;->mKeyword:Ljava/lang/String;

    .line 27
    return-void
.end method


# virtual methods
.method public doWorkInternal()Lrx/Observable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<",
            "Lcom/samsung/android/app/music/common/model/milksearch/SearchAutoCompleteInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 31
    const/4 v1, 0x0

    .line 32
    .local v1, "observable":Lrx/Observable;, "Lrx/Observable<Lcom/samsung/android/app/music/common/model/milksearch/SearchAutoCompleteInfo;>;"
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/worker/search/store/GetSearchAutoCompletesWorker;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/app/music/service/milk/net/NetworkUtils;->hasDataConnection(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 33
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/search/store/GetSearchAutoCompletesWorker;->getExtraTransport()Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport;->getHttpUrl()Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, "extraUrl":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 35
    sget-object v2, Lcom/samsung/android/app/music/service/milk/worker/search/store/GetSearchAutoCompletesWorker;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doWork : Connect to Extra Server ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/search/store/GetSearchAutoCompletesWorker;->getExtraTransport()Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/search/store/GetSearchAutoCompletesWorker;->getRequestId()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/app/music/service/milk/worker/search/store/GetSearchAutoCompletesWorker;->mKeyword:Ljava/lang/String;

    invoke-interface {v2, v3, v5, v4}, Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport;->getSearchAutoCompletes(ILjava/util/Map;Ljava/lang/String;)Lrx/Observable;

    move-result-object v1

    .line 46
    .end local v0    # "extraUrl":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 38
    .restart local v0    # "extraUrl":Ljava/lang/String;
    :cond_0
    sget-object v2, Lcom/samsung/android/app/music/service/milk/worker/search/store/GetSearchAutoCompletesWorker;->LOG_TAG:Ljava/lang/String;

    const-string v3, "doWork : Connect to Store Server"

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/search/store/GetSearchAutoCompletesWorker;->getStoreTransport()Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/search/store/GetSearchAutoCompletesWorker;->getRequestId()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/app/music/service/milk/worker/search/store/GetSearchAutoCompletesWorker;->mKeyword:Ljava/lang/String;

    invoke-interface {v2, v3, v5, v4}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport;->getSearchAutoCompletes(ILjava/util/Map;Ljava/lang/String;)Lrx/Observable;

    move-result-object v1

    goto :goto_0

    .line 43
    .end local v0    # "extraUrl":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/search/store/GetSearchAutoCompletesWorker;->getNoNetworkObservable()Lrx/Observable;

    move-result-object v1

    goto :goto_0
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/samsung/android/app/music/service/milk/worker/search/store/GetSearchAutoCompletesWorker;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic onApiHandled(IIILcom/samsung/android/app/music/common/model/ResponseModel;I)V
    .locals 6

    .prologue
    .line 18
    move-object v4, p4

    check-cast v4, Lcom/samsung/android/app/music/common/model/milksearch/SearchAutoCompleteInfo;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/search/store/GetSearchAutoCompletesWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/milksearch/SearchAutoCompleteInfo;I)V

    return-void
.end method

.method public onApiHandled(IIILcom/samsung/android/app/music/common/model/milksearch/SearchAutoCompleteInfo;I)V
    .locals 2
    .param p1, "requestId"    # I
    .param p2, "requestType"    # I
    .param p3, "responseType"    # I
    .param p4, "successResult"    # Lcom/samsung/android/app/music/common/model/milksearch/SearchAutoCompleteInfo;
    .param p5, "errorCode"    # I

    .prologue
    .line 56
    invoke-super/range {p0 .. p5}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/ResponseModel;I)V

    .line 58
    packed-switch p3, :pswitch_data_0

    .line 63
    :goto_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p3, p4, v0}, Lcom/samsung/android/app/music/service/milk/worker/search/store/GetSearchAutoCompletesWorker;->invokeCallback(ILandroid/os/Parcelable;[Ljava/lang/Object;)V

    .line 64
    return-void

    .line 60
    :pswitch_0
    sget-object v0, Lcom/samsung/android/app/music/service/milk/worker/search/store/GetSearchAutoCompletesWorker;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onApiHandled : success"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 58
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic onApiHandled(IIILjava/lang/Object;I)V
    .locals 6

    .prologue
    .line 18
    move-object v4, p4

    check-cast v4, Lcom/samsung/android/app/music/common/model/milksearch/SearchAutoCompleteInfo;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/search/store/GetSearchAutoCompletesWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/milksearch/SearchAutoCompleteInfo;I)V

    return-void
.end method
