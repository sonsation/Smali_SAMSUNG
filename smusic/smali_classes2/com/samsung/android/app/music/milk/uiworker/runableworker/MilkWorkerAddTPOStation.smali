.class public Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddTPOStation;
.super Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;
.source "MilkWorkerAddTPOStation.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/MilkConstants$IMilkUIConst;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MilkWorkerAddTPOStation"


# instance fields
.field protected mFragMngr:Landroid/app/FragmentManager;

.field protected mTPOcode:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;Landroid/app/FragmentManager;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;
    .param p3, "workerCallback"    # Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;
    .param p4, "fragmngr"    # Landroid/app/FragmentManager;
    .param p5, "tpoCode"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;)V

    .line 36
    iput-object p5, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddTPOStation;->mTPOcode:Ljava/lang/String;

    .line 37
    iput-object p4, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddTPOStation;->mFragMngr:Landroid/app/FragmentManager;

    .line 38
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddTPOStation;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddTPOStation;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddTPOStation;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddTPOStation;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddTPOStation;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddTPOStation;->onWorkerFinished(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected getProperRecommendStationID(Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkrecommend/RecommedStation;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 87
    .local p1, "stationList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milkrecommend/RecommedStation;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 88
    const/4 v3, 0x0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/music/common/model/milkrecommend/RecommedStation;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/milkrecommend/RecommedStation;->getStationID()Ljava/lang/String;

    move-result-object v3

    .line 95
    :goto_0
    return-object v3

    .line 90
    :cond_0
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 91
    .local v1, "ran":Ljava/util/Random;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 92
    .local v0, "index":I
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/common/model/milkrecommend/RecommedStation;

    .line 93
    .local v2, "station":Lcom/samsung/android/app/music/common/model/milkrecommend/RecommedStation;
    const-string v3, "MilkWorkerAddTPOStation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Recommend Station ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/milkrecommend/RecommedStation;->getStationTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") ID("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 94
    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/milkrecommend/RecommedStation;->getStationID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 93
    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/milkrecommend/RecommedStation;->getStationID()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    const-string v0, "MilkWorkerAddTPOStation"

    return-object v0
.end method

.method public onApiHandled(IIILjava/lang/Object;[Ljava/lang/Object;)V
    .locals 8
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I
    .param p3, "rspType"    # I
    .param p4, "rspData"    # Ljava/lang/Object;
    .param p5, "extra"    # [Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 58
    invoke-super/range {p0 .. p5}, Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;->onApiHandled(IIILjava/lang/Object;[Ljava/lang/Object;)V

    .line 59
    const/16 v0, 0xe4

    if-ne p2, v0, :cond_3

    .line 60
    const-string v0, "MilkWorkerAddTPOStation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onApiHandled] Receive Result "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    if-nez p3, :cond_2

    move-object v7, p4

    .line 62
    check-cast v7, Lcom/samsung/android/app/music/common/model/milkrecommend/RecommendStationResponseModel;

    .line 63
    .local v7, "station":Lcom/samsung/android/app/music/common/model/milkrecommend/RecommendStationResponseModel;
    if-eqz v7, :cond_1

    .line 64
    invoke-virtual {v7}, Lcom/samsung/android/app/music/common/model/milkrecommend/RecommendStationResponseModel;->getStationList()Ljava/util/List;

    move-result-object v6

    .line 65
    .local v6, "recommendStationList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milkrecommend/RecommedStation;>;"
    if-eqz v6, :cond_0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 66
    invoke-virtual {p0, v6}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddTPOStation;->getProperRecommendStationID(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 67
    .local v2, "stationId":Ljava/lang/String;
    const/4 v4, 0x1

    move-object v0, p0

    move-object v3, v1

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddTPOStation;->playStationForGenre(Lcom/samsung/android/app/music/common/model/Station;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 84
    .end local v2    # "stationId":Ljava/lang/String;
    .end local v6    # "recommendStationList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milkrecommend/RecommedStation;>;"
    .end local v7    # "station":Lcom/samsung/android/app/music/common/model/milkrecommend/RecommendStationResponseModel;
    :goto_0
    return-void

    .line 69
    .restart local v6    # "recommendStationList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milkrecommend/RecommedStation;>;"
    .restart local v7    # "station":Lcom/samsung/android/app/music/common/model/milkrecommend/RecommendStationResponseModel;
    :cond_0
    const-string v0, "MilkWorkerAddTPOStation"

    const-string v1, "ServerErrorType"

    const-string v3, "Does not get Items"

    invoke-virtual {p0, v5, v0, v1, v3}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddTPOStation;->onWorkerFinished(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 73
    .end local v6    # "recommendStationList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milkrecommend/RecommedStation;>;"
    :cond_1
    const-string v0, "MilkWorkerAddTPOStation"

    const-string v1, "ServerErrorType"

    const-string v3, "Does not get Items"

    invoke-virtual {p0, v5, v0, v1, v3}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddTPOStation;->onWorkerFinished(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 77
    .end local v7    # "station":Lcom/samsung/android/app/music/common/model/milkrecommend/RecommendStationResponseModel;
    :cond_2
    const-string v0, "MilkWorkerAddTPOStation"

    const-string v1, "ServerErrorType"

    const-string v3, "Server Error"

    invoke-virtual {p0, v5, v0, v1, v3}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddTPOStation;->onWorkerFinished(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 81
    :cond_3
    const-string v0, "MilkWorkerAddTPOStation"

    const-string v1, "ServerErrorType"

    const-string v3, "Server Error"

    invoke-virtual {p0, v5, v0, v1, v3}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddTPOStation;->onWorkerFinished(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected playStation(Lcom/samsung/android/app/music/common/model/Station;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 11
    .param p1, "station"    # Lcom/samsung/android/app/music/common/model/Station;
    .param p2, "stationId"    # Ljava/lang/String;
    .param p3, "trackId"    # Ljava/lang/String;
    .param p4, "shouldPlay"    # Z
    .param p5, "goRadioTab"    # Z

    .prologue
    .line 136
    const/4 v0, 0x0

    .line 138
    .local v0, "runnable":Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;
    if-eqz p1, :cond_0

    .line 139
    new-instance v0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation;

    .end local v0    # "runnable":Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddTPOStation;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddTPOStation;->mCallback:Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddTPOStation;->mRspToClient:Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddTPOStation;->mFragMngr:Landroid/app/FragmentManager;

    const/4 v8, 0x0

    const/4 v10, 0x1

    move-object v5, p1

    move-object v6, p3

    move v7, p4

    move/from16 v9, p5

    invoke-direct/range {v0 .. v10}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;Landroid/app/FragmentManager;Lcom/samsung/android/app/music/common/model/Station;Ljava/lang/String;ZZZZ)V

    .line 144
    .restart local v0    # "runnable":Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 145
    new-instance v0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation;

    .end local v0    # "runnable":Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddTPOStation;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddTPOStation;->mCallback:Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddTPOStation;->mRspToClient:Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddTPOStation;->mFragMngr:Landroid/app/FragmentManager;

    const/4 v8, 0x0

    const/4 v10, 0x1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    move/from16 v9, p5

    invoke-direct/range {v0 .. v10}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;Landroid/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;ZZZZ)V

    .line 149
    .restart local v0    # "runnable":Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;
    :cond_1
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddTPOStation;->mCallback:Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;

    if-eqz v1, :cond_2

    .line 150
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddTPOStation;->mCallback:Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;

    const-wide/16 v2, 0x0

    invoke-interface {v1, v0, v2, v3}, Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 158
    :goto_0
    return-void

    .line 152
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddTPOStation;->mCallback:Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;

    if-nez v1, :cond_3

    .line 153
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddTPOStation;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[run] Error is happend - Callback is null"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 155
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddTPOStation;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[run] Error is happend - Runnable is empty"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected playStationForGenre(Lcom/samsung/android/app/music/common/model/Station;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 5
    .param p1, "station"    # Lcom/samsung/android/app/music/common/model/Station;
    .param p2, "stationId"    # Ljava/lang/String;
    .param p3, "trackId"    # Ljava/lang/String;
    .param p4, "shouldPlay"    # Z
    .param p5, "goRadioTab"    # Z

    .prologue
    .line 101
    move-object v1, p2

    .line 102
    .local v1, "stationID":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    .line 103
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Station;->getStationId()Ljava/lang/String;

    move-result-object v1

    .line 106
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 107
    invoke-static {}, Lcom/samsung/android/app/music/milk/RadioControlHelper;->getCurrentStationId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddTPOStation;->mContext:Landroid/content/Context;

    .line 108
    invoke-static {v2, v1}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationResolver;->isVisibleStation(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 109
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddTPOStation;->getTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[playStationForGenre] StationID("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") is visible just move indication"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    move-object v0, v1

    .line 112
    .local v0, "finalStationID":Ljava/lang/String;
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddTPOStation$1;

    invoke-direct {v3, p0, v0}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddTPOStation$1;-><init>(Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddTPOStation;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 126
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 132
    .end local v0    # "finalStationID":Ljava/lang/String;
    :goto_0
    return-void

    .line 128
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddTPOStation;->getTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[playStationForGenre] StationID("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") is not visible Play Station"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-virtual/range {p0 .. p5}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddTPOStation;->playStation(Lcom/samsung/android/app/music/common/model/Station;Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 47
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddTPOStation;->mTPOcode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    const/4 v0, 0x0

    const-string v1, "MilkWorkerAddTPOStation"

    const-string v2, "NOT_DEFINE"

    const-string v3, "Parameter Error"

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddTPOStation;->onWorkerFinished(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :goto_0
    return-void

    .line 53
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddTPOStation;->getMilkService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddTPOStation;->mTPOcode:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getRecommendStationInfo(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/lang/String;)I

    goto :goto_0
.end method
