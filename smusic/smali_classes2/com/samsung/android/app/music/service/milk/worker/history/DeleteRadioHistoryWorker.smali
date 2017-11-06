.class public Lcom/samsung/android/app/music/service/milk/worker/history/DeleteRadioHistoryWorker;
.super Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;
.source "DeleteRadioHistoryWorker.java"


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
.field private static final LOG_TAG:Ljava/lang/String; = "DeleteRadioHistoryWorker"


# instance fields
.field private mHistoryArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkhistory/PlayHistory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;IILjava/util/ArrayList;Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appId"    # I
    .param p3, "reqId"    # I
    .param p5, "service"    # Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkhistory/PlayHistory;",
            ">;",
            "Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;",
            ")V"
        }
    .end annotation

    .prologue
    .line 30
    .local p4, "historyArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/milkhistory/PlayHistory;>;"
    const/16 v4, 0x13

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;-><init>(Landroid/content/Context;IIILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 32
    iput-object p4, p0, Lcom/samsung/android/app/music/service/milk/worker/history/DeleteRadioHistoryWorker;->mHistoryArray:Ljava/util/ArrayList;

    .line 33
    return-void
.end method

.method private deleteItems(Landroid/content/Context;Ljava/util/ArrayList;)I
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkhistory/PlayHistory;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 67
    .local p2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/milkhistory/PlayHistory;>;"
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 68
    :cond_0
    const/4 v0, 0x0

    .line 86
    :goto_0
    return v0

    .line 70
    :cond_1
    const/4 v1, 0x1

    .line 71
    .local v1, "isFirst":Z
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 72
    .local v3, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/common/model/milkhistory/PlayHistory;

    .line 73
    .local v2, "playHistory":Lcom/samsung/android/app/music/common/model/milkhistory/PlayHistory;
    if-eqz v1, :cond_2

    .line 74
    const/4 v1, 0x0

    .line 78
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "(track_id = \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/milkhistory/PlayHistory;->getTrackId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "station_id"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " = \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 80
    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/milkhistory/PlayHistory;->getStationId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "date"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " = \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 81
    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/milkhistory/PlayHistory;->getDateStamp()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\')"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 78
    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 76
    :cond_2
    const-string v5, " OR "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 85
    .end local v2    # "playHistory":Lcom/samsung/android/app/music/common/model/milkhistory/PlayHistory;
    :cond_3
    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$RadioHistory;->getContentUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {p1, v4, v5, v6}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->delete(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 86
    .local v0, "deleted":I
    goto/16 :goto_0
.end method


# virtual methods
.method protected doWorkInternal()Lrx/Observable;
    .locals 5
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
    const/4 v2, 0x0

    .line 37
    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/worker/history/DeleteRadioHistoryWorker;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/app/music/service/milk/LoginManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/LoginManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/app/music/service/milk/LoginManager;->getUserInfo()Lcom/samsung/android/app/music/common/model/UserInfo;

    move-result-object v1

    .line 38
    .local v1, "userInfo":Lcom/samsung/android/app/music/common/model/UserInfo;
    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/UserInfo;->getUserStatus()I

    move-result v3

    if-eqz v3, :cond_0

    .line 39
    new-instance v0, Lcom/samsung/android/app/music/common/model/milkreport/ReportInfo;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/model/milkreport/ReportInfo;-><init>()V

    .line 40
    .local v0, "info":Lcom/samsung/android/app/music/common/model/milkreport/ReportInfo;
    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/worker/history/DeleteRadioHistoryWorker;->mHistoryArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Lcom/samsung/android/app/music/common/model/milkreport/ReportInfo;->setReport(Ljava/util/ArrayList;)V

    .line 41
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/history/DeleteRadioHistoryWorker;->getRadioTransport()Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/app/music/service/milk/worker/history/DeleteRadioHistoryWorker;->mReqId:I

    invoke-interface {v3, v4, v2, v0}, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport;->deleteReport(ILjava/util/Map;Lcom/samsung/android/app/music/common/model/milkreport/ReportInfo;)Lrx/Observable;

    move-result-object v2

    .line 45
    .end local v0    # "info":Lcom/samsung/android/app/music/common/model/milkreport/ReportInfo;
    :goto_0
    return-object v2

    .line 43
    :cond_0
    const-string v3, "DeleteRadioHistoryWorker"

    const-string v4, "delete radio history from db only as the user hasn\'t been signed up."

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/worker/history/DeleteRadioHistoryWorker;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/app/music/service/milk/worker/history/DeleteRadioHistoryWorker;->mHistoryArray:Ljava/util/ArrayList;

    invoke-direct {p0, v3, v4}, Lcom/samsung/android/app/music/service/milk/worker/history/DeleteRadioHistoryWorker;->deleteItems(Landroid/content/Context;Ljava/util/ArrayList;)I

    goto :goto_0
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    const-string v0, "DeleteRadioHistoryWorker"

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
    .line 57
    invoke-super/range {p0 .. p5}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/ResponseModel;I)V

    .line 58
    if-nez p3, :cond_0

    .line 59
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/history/DeleteRadioHistoryWorker;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/worker/history/DeleteRadioHistoryWorker;->mHistoryArray:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/service/milk/worker/history/DeleteRadioHistoryWorker;->deleteItems(Landroid/content/Context;Ljava/util/ArrayList;)I

    .line 63
    :goto_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p3, p4, v0}, Lcom/samsung/android/app/music/service/milk/worker/history/DeleteRadioHistoryWorker;->invokeCallback(ILandroid/os/Parcelable;[Ljava/lang/Object;)V

    .line 64
    return-void

    .line 61
    :cond_0
    const-string v0, "DeleteRadioHistoryWorker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to delete radio history with error code : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

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

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/history/DeleteRadioHistoryWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/ResponseModel;I)V

    return-void
.end method
