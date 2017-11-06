.class public Lcom/samsung/android/app/music/service/milk/worker/history/AddRadioHistoryWorker;
.super Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;
.source "AddRadioHistoryWorker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/service/milk/worker/BaseWorker",
        "<",
        "Lcom/samsung/android/app/music/common/model/ResponseModel;",
        ">;"
    }
.end annotation


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "AddRadioHistoryWorker"


# instance fields
.field private final mHistory:Lcom/samsung/android/app/music/common/model/milkhistory/PlayHistory;


# direct methods
.method public constructor <init>(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appId"    # I
    .param p3, "reqId"    # I
    .param p4, "trackId"    # Ljava/lang/String;
    .param p5, "stationId"    # Ljava/lang/String;

    .prologue
    .line 30
    const/16 v4, 0x12

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;-><init>(Landroid/content/Context;IIILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 31
    invoke-static {}, Lcom/samsung/android/app/music/common/util/AES;->getTime()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p4, p5, v0}, Lcom/samsung/android/app/music/common/model/milkhistory/PlayHistoryInfo;->createRadioHistory(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/common/model/milkhistory/PlayHistory;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/history/AddRadioHistoryWorker;->mHistory:Lcom/samsung/android/app/music/common/model/milkhistory/PlayHistory;

    .line 32
    return-void
.end method

.method private isValidHistory()Z
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/history/AddRadioHistoryWorker;->mHistory:Lcom/samsung/android/app/music/common/model/milkhistory/PlayHistory;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/history/AddRadioHistoryWorker;->mHistory:Lcom/samsung/android/app/music/common/model/milkhistory/PlayHistory;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/milkhistory/PlayHistory;->getTrack()Lcom/samsung/android/app/music/common/model/SimpleTrack;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/history/AddRadioHistoryWorker;->mHistory:Lcom/samsung/android/app/music/common/model/milkhistory/PlayHistory;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/milkhistory/PlayHistory;->getStation()Lcom/samsung/android/app/music/common/model/SimpleStation;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected doWorkInternal()Lrx/Observable;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<",
            "Lcom/samsung/android/app/music/common/model/ResponseModel;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 36
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/milk/worker/history/AddRadioHistoryWorker;->isValidHistory()Z

    move-result v4

    if-nez v4, :cond_1

    .line 37
    const-string v4, "AddRadioHistoryWorker"

    const-string/jumbo v5, "skip adding radio history as it\'s not vaild history"

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :cond_0
    :goto_0
    return-object v3

    .line 40
    :cond_1
    new-instance v1, Lcom/samsung/android/app/music/common/model/milkreport/ReportInfo;

    invoke-direct {v1}, Lcom/samsung/android/app/music/common/model/milkreport/ReportInfo;-><init>()V

    .line 41
    .local v1, "info":Lcom/samsung/android/app/music/common/model/milkreport/ReportInfo;
    iget-object v4, p0, Lcom/samsung/android/app/music/service/milk/worker/history/AddRadioHistoryWorker;->mHistory:Lcom/samsung/android/app/music/common/model/milkhistory/PlayHistory;

    invoke-virtual {v1, v4}, Lcom/samsung/android/app/music/common/model/milkreport/ReportInfo;->addReport(Lcom/samsung/android/app/music/common/model/milkhistory/PlayHistory;)V

    .line 42
    iget-object v4, p0, Lcom/samsung/android/app/music/service/milk/worker/history/AddRadioHistoryWorker;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/samsung/android/app/music/service/milk/worker/history/AddRadioHistoryWorker;->mHistory:Lcom/samsung/android/app/music/common/model/milkhistory/PlayHistory;

    .line 43
    invoke-virtual {v5}, Lcom/samsung/android/app/music/common/model/milkhistory/PlayHistory;->getTrack()Lcom/samsung/android/app/music/common/model/SimpleTrack;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->getTrackId()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/app/music/service/milk/worker/history/AddRadioHistoryWorker;->mHistory:Lcom/samsung/android/app/music/common/model/milkhistory/PlayHistory;

    invoke-virtual {v6}, Lcom/samsung/android/app/music/common/model/milkhistory/PlayHistory;->getStationId()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/app/music/service/milk/worker/history/AddRadioHistoryWorker;->mHistory:Lcom/samsung/android/app/music/common/model/milkhistory/PlayHistory;

    .line 44
    invoke-virtual {v7}, Lcom/samsung/android/app/music/common/model/milkhistory/PlayHistory;->getDateStamp()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/android/app/music/common/model/milkhistory/PlayHistory;->convertUtcToLocalTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 43
    invoke-static {v4, v5, v6, v7}, Lcom/samsung/android/app/music/milk/util/ResolverUtils$RadioHistory;->hasItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 45
    .local v0, "hasItem":Z
    if-nez v0, :cond_0

    .line 46
    iget-object v4, p0, Lcom/samsung/android/app/music/service/milk/worker/history/AddRadioHistoryWorker;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/app/music/service/milk/LoginManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/LoginManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/app/music/service/milk/LoginManager;->getUserInfo()Lcom/samsung/android/app/music/common/model/UserInfo;

    move-result-object v2

    .line 47
    .local v2, "userInfo":Lcom/samsung/android/app/music/common/model/UserInfo;
    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/UserInfo;->getUserStatus()I

    move-result v4

    if-eqz v4, :cond_2

    .line 48
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/history/AddRadioHistoryWorker;->getRadioTransport()Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport;

    move-result-object v4

    iget v5, p0, Lcom/samsung/android/app/music/service/milk/worker/history/AddRadioHistoryWorker;->mReqId:I

    invoke-interface {v4, v5, v3, v1}, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport;->report(ILjava/util/Map;Lcom/samsung/android/app/music/common/model/milkreport/ReportInfo;)Lrx/Observable;

    move-result-object v3

    goto :goto_0

    .line 50
    :cond_2
    iget-object v4, p0, Lcom/samsung/android/app/music/service/milk/worker/history/AddRadioHistoryWorker;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$RadioHistory;->getContentUri()Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/app/music/service/milk/worker/history/AddRadioHistoryWorker;->mHistory:Lcom/samsung/android/app/music/common/model/milkhistory/PlayHistory;

    .line 51
    invoke-virtual {v6}, Lcom/samsung/android/app/music/common/model/milkhistory/PlayHistory;->toContentValues()Landroid/content/ContentValues;

    move-result-object v6

    .line 50
    invoke-static {v4, v5, v6}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->insert(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_0
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    const-string v0, "AddRadioHistoryWorker"

    return-object v0
.end method

.method public onApiHandled(IIILcom/samsung/android/app/music/common/model/ResponseModel;I)V
    .locals 3
    .param p1, "requestId"    # I
    .param p2, "requestType"    # I
    .param p3, "responseType"    # I
    .param p4, "successResult"    # Lcom/samsung/android/app/music/common/model/ResponseModel;
    .param p5, "errorCode"    # I

    .prologue
    .line 65
    invoke-super/range {p0 .. p5}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/ResponseModel;I)V

    .line 66
    if-nez p3, :cond_0

    .line 67
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/history/AddRadioHistoryWorker;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$RadioHistory;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/worker/history/AddRadioHistoryWorker;->mHistory:Lcom/samsung/android/app/music/common/model/milkhistory/PlayHistory;

    .line 68
    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/milkhistory/PlayHistory;->toContentValues()Landroid/content/ContentValues;

    move-result-object v2

    .line 67
    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->insert(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 73
    :goto_0
    return-void

    .line 70
    :cond_0
    const-string v0, "AddRadioHistoryWorker"

    const-string v1, "Failed to report radio history to server"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic onApiHandled(IIILjava/lang/Object;I)V
    .locals 6

    .prologue
    .line 23
    move-object v4, p4

    check-cast v4, Lcom/samsung/android/app/music/common/model/ResponseModel;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/history/AddRadioHistoryWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/ResponseModel;I)V

    return-void
.end method
