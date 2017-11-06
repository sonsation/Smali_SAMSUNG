.class public Lcom/samsung/android/app/music/service/milk/worker/search/seed/SeedSearchAutoCompletedWorker;
.super Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;
.source "SeedSearchAutoCompletedWorker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/service/milk/worker/BaseWorker",
        "<",
        "Lcom/samsung/android/app/music/common/model/milksearch/SearchSeed;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SeedSearchAutoCompletedWorker"


# instance fields
.field private mAdultYn:Ljava/lang/String;

.field private mAutoCompleteText:Ljava/lang/String;

.field private mExplicit:Ljava/lang/String;

.field private mSearchType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appId"    # I
    .param p3, "reqId"    # I
    .param p4, "autoCompleteText"    # Ljava/lang/String;
    .param p5, "searchType"    # Ljava/lang/String;
    .param p6, "service"    # Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;

    .prologue
    .line 29
    const/16 v4, 0x12e

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;-><init>(Landroid/content/Context;IIILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 30
    iput-object p5, p0, Lcom/samsung/android/app/music/service/milk/worker/search/seed/SeedSearchAutoCompletedWorker;->mSearchType:Ljava/lang/String;

    .line 31
    iput-object p4, p0, Lcom/samsung/android/app/music/service/milk/worker/search/seed/SeedSearchAutoCompletedWorker;->mAutoCompleteText:Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method public doWorkInternal()Lrx/Observable;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<",
            "Lcom/samsung/android/app/music/common/model/milksearch/SearchSeed;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 38
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/search/seed/SeedSearchAutoCompletedWorker;->getAdultSetting()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/search/seed/SeedSearchAutoCompletedWorker;->mAdultYn:Ljava/lang/String;

    .line 39
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/search/seed/SeedSearchAutoCompletedWorker;->getExplicitSetting()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/search/seed/SeedSearchAutoCompletedWorker;->mExplicit:Ljava/lang/String;

    .line 40
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/search/seed/SeedSearchAutoCompletedWorker;->getExtraTransport()Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport;->getHttpUrl()Ljava/lang/String;

    move-result-object v7

    .line 42
    .local v7, "extraUrl":Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/search/seed/SeedSearchAutoCompletedWorker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/net/NetworkUtils;->hasDataConnection(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 43
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    const-string v0, "SeedSearchAutoCompletedWorker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doWork : Connect to Extra Server ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ") "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/search/seed/SeedSearchAutoCompletedWorker;->getExtraTransport()Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/music/service/milk/worker/search/seed/SeedSearchAutoCompletedWorker;->mReqId:I

    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/worker/search/seed/SeedSearchAutoCompletedWorker;->mAdultYn:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/app/music/service/milk/worker/search/seed/SeedSearchAutoCompletedWorker;->mExplicit:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/app/music/service/milk/worker/search/seed/SeedSearchAutoCompletedWorker;->mSearchType:Ljava/lang/String;

    iget-object v6, p0, Lcom/samsung/android/app/music/service/milk/worker/search/seed/SeedSearchAutoCompletedWorker;->mAutoCompleteText:Ljava/lang/String;

    .line 46
    invoke-interface/range {v0 .. v6}, Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport;->seedSearchAutoComplete(ILjava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;

    move-result-object v8

    .line 58
    .local v8, "observable":Lrx/Observable;, "Lrx/Observable<Lcom/samsung/android/app/music/common/model/milksearch/SearchSeed;>;"
    :goto_0
    return-object v8

    .line 49
    .end local v8    # "observable":Lrx/Observable;, "Lrx/Observable<Lcom/samsung/android/app/music/common/model/milksearch/SearchSeed;>;"
    :cond_0
    const-string v0, "SeedSearchAutoCompletedWorker"

    const-string v1, "doWork : Connect to Radio Server"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/search/seed/SeedSearchAutoCompletedWorker;->getRadioTransport()Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/music/service/milk/worker/search/seed/SeedSearchAutoCompletedWorker;->mReqId:I

    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/worker/search/seed/SeedSearchAutoCompletedWorker;->mAdultYn:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/app/music/service/milk/worker/search/seed/SeedSearchAutoCompletedWorker;->mExplicit:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/app/music/service/milk/worker/search/seed/SeedSearchAutoCompletedWorker;->mSearchType:Ljava/lang/String;

    iget-object v6, p0, Lcom/samsung/android/app/music/service/milk/worker/search/seed/SeedSearchAutoCompletedWorker;->mAutoCompleteText:Ljava/lang/String;

    .line 51
    invoke-interface/range {v0 .. v6}, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport;->seedSearchAutoComplete(ILjava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;

    move-result-object v8

    .restart local v8    # "observable":Lrx/Observable;, "Lrx/Observable<Lcom/samsung/android/app/music/common/model/milksearch/SearchSeed;>;"
    goto :goto_0

    .line 55
    .end local v8    # "observable":Lrx/Observable;, "Lrx/Observable<Lcom/samsung/android/app/music/common/model/milksearch/SearchSeed;>;"
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/search/seed/SeedSearchAutoCompletedWorker;->getNoNetworkObservable()Lrx/Observable;

    move-result-object v8

    .restart local v8    # "observable":Lrx/Observable;, "Lrx/Observable<Lcom/samsung/android/app/music/common/model/milksearch/SearchSeed;>;"
    goto :goto_0
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    const-string v0, "SeedSearchAutoCompletedWorker"

    return-object v0
.end method

.method public bridge synthetic onApiHandled(IIILcom/samsung/android/app/music/common/model/ResponseModel;I)V
    .locals 6

    .prologue
    .line 20
    move-object v4, p4

    check-cast v4, Lcom/samsung/android/app/music/common/model/milksearch/SearchSeed;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/search/seed/SeedSearchAutoCompletedWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/milksearch/SearchSeed;I)V

    return-void
.end method

.method public onApiHandled(IIILcom/samsung/android/app/music/common/model/milksearch/SearchSeed;I)V
    .locals 4
    .param p1, "requestId"    # I
    .param p2, "requestType"    # I
    .param p3, "responseType"    # I
    .param p4, "successResult"    # Lcom/samsung/android/app/music/common/model/milksearch/SearchSeed;
    .param p5, "errorCode"    # I

    .prologue
    const/4 v3, 0x0

    .line 69
    invoke-super/range {p0 .. p5}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/ResponseModel;I)V

    .line 71
    if-nez p3, :cond_0

    .line 72
    new-array v0, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v3, p4, v0}, Lcom/samsung/android/app/music/service/milk/worker/search/seed/SeedSearchAutoCompletedWorker;->invokeCallback(ILandroid/os/Parcelable;[Ljava/lang/Object;)V

    .line 76
    :goto_0
    return-void

    .line 74
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, p3, v0, v1}, Lcom/samsung/android/app/music/service/milk/worker/search/seed/SeedSearchAutoCompletedWorker;->invokeCallback(ILandroid/os/Parcelable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public bridge synthetic onApiHandled(IIILjava/lang/Object;I)V
    .locals 6

    .prologue
    .line 20
    move-object v4, p4

    check-cast v4, Lcom/samsung/android/app/music/common/model/milksearch/SearchSeed;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/search/seed/SeedSearchAutoCompletedWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/milksearch/SearchSeed;I)V

    return-void
.end method
