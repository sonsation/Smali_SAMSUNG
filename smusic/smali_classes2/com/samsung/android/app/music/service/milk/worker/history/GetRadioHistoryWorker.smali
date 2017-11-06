.class public Lcom/samsung/android/app/music/service/milk/worker/history/GetRadioHistoryWorker;
.super Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;
.source "GetRadioHistoryWorker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/service/milk/worker/BaseWorker",
        "<",
        "Lcom/samsung/android/app/music/common/model/milkhistory/PlayHistoryInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "GetRadioHistoryWorker"


# direct methods
.method public constructor <init>(Landroid/content/Context;IILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appId"    # I
    .param p3, "reqId"    # I
    .param p4, "service"    # Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;

    .prologue
    .line 21
    const/4 v4, 0x7

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;-><init>(Landroid/content/Context;IIILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 22
    return-void
.end method


# virtual methods
.method protected doWorkInternal()Lrx/Observable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkhistory/PlayHistoryInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/history/GetRadioHistoryWorker;->getRadioTransport()Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/music/service/milk/worker/history/GetRadioHistoryWorker;->mReqId:I

    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/worker/history/GetRadioHistoryWorker;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    .line 27
    invoke-static {v2, v3}, Lcom/samsung/android/app/music/service/milk/net/CommonQueryMap;->getShopBasicQuery(Landroid/content/Context;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    const-string v3, "limit"

    const/16 v4, 0x1f4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport;->getRadioHistory(ILjava/util/Map;Ljava/lang/String;I)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    const-string v0, "GetRadioHistoryWorker"

    return-object v0
.end method

.method public bridge synthetic onApiHandled(IIILcom/samsung/android/app/music/common/model/ResponseModel;I)V
    .locals 6

    .prologue
    .line 16
    move-object v4, p4

    check-cast v4, Lcom/samsung/android/app/music/common/model/milkhistory/PlayHistoryInfo;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/history/GetRadioHistoryWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/milkhistory/PlayHistoryInfo;I)V

    return-void
.end method

.method public onApiHandled(IIILcom/samsung/android/app/music/common/model/milkhistory/PlayHistoryInfo;I)V
    .locals 3
    .param p1, "requestId"    # I
    .param p2, "requestType"    # I
    .param p3, "responseType"    # I
    .param p4, "successResult"    # Lcom/samsung/android/app/music/common/model/milkhistory/PlayHistoryInfo;
    .param p5, "errorCode"    # I

    .prologue
    .line 40
    if-nez p3, :cond_0

    .line 41
    invoke-virtual {p4}, Lcom/samsung/android/app/music/common/model/milkhistory/PlayHistoryInfo;->toContentValuesArray()[Landroid/content/ContentValues;

    move-result-object v0

    .line 42
    .local v0, "values":[Landroid/content/ContentValues;
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 43
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/worker/history/GetRadioHistoryWorker;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$RadioHistory;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->bulkInsert(Landroid/content/Context;Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 46
    .end local v0    # "values":[Landroid/content/ContentValues;
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/ResponseModel;I)V

    .line 47
    return-void
.end method

.method public bridge synthetic onApiHandled(IIILjava/lang/Object;I)V
    .locals 6

    .prologue
    .line 16
    move-object v4, p4

    check-cast v4, Lcom/samsung/android/app/music/common/model/milkhistory/PlayHistoryInfo;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/history/GetRadioHistoryWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/milkhistory/PlayHistoryInfo;I)V

    return-void
.end method
