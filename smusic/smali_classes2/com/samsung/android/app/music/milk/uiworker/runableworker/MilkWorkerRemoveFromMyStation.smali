.class public Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;
.super Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;
.source "MilkWorkerRemoveFromMyStation.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/MilkConstants$IMilkUIConst;
.implements Lcom/samsung/android/app/music/milk/dialog/ConfirmRemoveMyStationsDialog$ConfirmRemoveMyStationsListener;
.implements Lcom/samsung/android/app/music/milk/dialog/ConfirmRemovePersonalStationDialog$ConfirmRemovePersonalStationListener;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MilkWorkerRemoveFromMyStation"


# instance fields
.field protected mFragMngr:Landroid/app/FragmentManager;

.field protected mIndexOfMyStation:I

.field protected mIsContainCurrentPlayingStation:Z

.field protected mLoggingScreenID:Ljava/lang/String;

.field protected mShouldMoveSameGenreStation:Lcom/samsung/android/app/music/common/model/Station;

.field protected mStationIDs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;Landroid/app/FragmentManager;Ljava/util/List;)V
    .locals 2
    .param p1, "screenIDForLogging"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "callback"    # Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;
    .param p4, "response"    # Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;
    .param p5, "fragmngr"    # Landroid/app/FragmentManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;",
            "Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;",
            "Landroid/app/FragmentManager;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p6, "stationIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 66
    invoke-direct {p0, p2, p3, p4}, Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;)V

    .line 55
    iput-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;->mShouldMoveSameGenreStation:Lcom/samsung/android/app/music/common/model/Station;

    .line 59
    iput-boolean v1, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;->mIsContainCurrentPlayingStation:Z

    .line 68
    iput-object p5, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;->mFragMngr:Landroid/app/FragmentManager;

    .line 69
    iput-object p6, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;->mStationIDs:Ljava/util/List;

    .line 70
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;->mLoggingScreenID:Ljava/lang/String;

    .line 72
    iput-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;->mShouldMoveSameGenreStation:Lcom/samsung/android/app/music/common/model/Station;

    .line 73
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;->mIndexOfMyStation:I

    .line 74
    iput-boolean v1, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;->mIsContainCurrentPlayingStation:Z

    .line 75
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;->isContainsPersonalStation()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;->removeForceAllStation()V

    return-void
.end method

.method static synthetic access$1000(Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;->showLoadingProgress(Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;->onWorkerFinished(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;->showLoadingProgress(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;->onWorkerFinished(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;->onWorkerFinished(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;->removeForceAllGenreStation()V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;->showLoadingProgress(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;->showLoadingProgress(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;->moveToNextStation()V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;->onWorkerFinished(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;->onWorkerFinished(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private getCurrentPlayingStation()Lcom/samsung/android/app/music/common/model/Station;
    .locals 2

    .prologue
    .line 427
    invoke-static {}, Lcom/samsung/android/app/music/milk/RadioControlHelper;->getCurrentStationId()Ljava/lang/String;

    move-result-object v0

    .line 428
    .local v0, "currentPlayingStationId":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationResolver;->getStation(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/app/music/common/model/Station;

    move-result-object v1

    return-object v1
.end method

.method private getCurrentPlayingTrack()Lcom/samsung/android/app/music/common/model/Track;
    .locals 3

    .prologue
    .line 432
    invoke-static {}, Lcom/samsung/android/app/music/milk/RadioControlHelper;->getCurrentStationId()Ljava/lang/String;

    move-result-object v0

    .line 433
    .local v0, "currentPlayingStationId":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/app/music/milk/RadioControlHelper;->getCurrentTrackId()Ljava/lang/String;

    move-result-object v1

    .line 434
    .local v1, "currentPlayingTrackId":Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;->mContext:Landroid/content/Context;

    .line 435
    invoke-static {v2, v0, v1}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationResolver;->getTrack(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/common/model/Track;

    move-result-object v2

    return-object v2
.end method

.method private getIndexOfMyStation(Ljava/lang/String;)I
    .locals 5
    .param p1, "stationId"    # Ljava/lang/String;

    .prologue
    .line 439
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationResolver;->getMyStationList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 440
    .local v2, "myStationList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 441
    :cond_0
    const/4 v0, -0x1

    .line 452
    :cond_1
    return v0

    .line 444
    :cond_2
    const/4 v0, 0x0

    .line 445
    .local v0, "index":I
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 446
    .local v1, "myStationID":Ljava/lang/String;
    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 449
    add-int/lit8 v0, v0, 0x1

    .line 450
    goto :goto_0
.end method

.method private isContainsPersonalStation()Z
    .locals 3

    .prologue
    .line 403
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;->mStationIDs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 404
    .local v0, "stationId":Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationResolver;->isGenreStation(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 405
    const/4 v1, 0x1

    .line 409
    .end local v0    # "stationId":Ljava/lang/String;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isCurrentPlayingContaingSameStation(Lcom/samsung/android/app/music/common/model/Station;)Z
    .locals 4
    .param p1, "currentStation"    # Lcom/samsung/android/app/music/common/model/Station;

    .prologue
    .line 413
    if-eqz p1, :cond_1

    .line 414
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Station;->getStationId()Ljava/lang/String;

    move-result-object v0

    .line 416
    .local v0, "currStationID":Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;->mStationIDs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 417
    .local v1, "stationId":Ljava/lang/String;
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 418
    const/4 v2, 0x1

    .line 423
    .end local v0    # "currStationID":Ljava/lang/String;
    .end local v1    # "stationId":Ljava/lang/String;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private moveToNextStation()V
    .locals 4

    .prologue
    .line 456
    iget-boolean v2, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;->mIsContainCurrentPlayingStation:Z

    if-eqz v2, :cond_4

    .line 457
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationResolver;->getMyStationList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 459
    .local v0, "myStationList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 460
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationResolver;->getFirstSpotLightStationID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 469
    .local v1, "nextStationID":Ljava/lang/String;
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 470
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/samsung/android/app/music/milk/RadioControlHelper;->moveStation(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 477
    .end local v0    # "myStationList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "nextStationID":Ljava/lang/String;
    :goto_1
    return-void

    .line 462
    .restart local v0    # "myStationList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    iget v2, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;->mIndexOfMyStation:I

    if-ltz v2, :cond_2

    iget v2, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;->mIndexOfMyStation:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 463
    iget v2, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;->mIndexOfMyStation:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .restart local v1    # "nextStationID":Ljava/lang/String;
    goto :goto_0

    .line 465
    .end local v1    # "nextStationID":Ljava/lang/String;
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .restart local v1    # "nextStationID":Ljava/lang/String;
    goto :goto_0

    .line 472
    :cond_3
    const-string v2, "MilkWorkerRemoveFromMyStation"

    const-string v3, "moveToNextStation >>> next Station ID is empty"

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 475
    .end local v0    # "myStationList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "nextStationID":Ljava/lang/String;
    :cond_4
    const-string v2, "MilkWorkerRemoveFromMyStation"

    const-string v3, "moveToNextStation >>> Deleted Station is not current playing Station"

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private removeForceAllGenreStation()V
    .locals 6

    .prologue
    .line 384
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 385
    .local v0, "genreStationIDs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 387
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;->mStationIDs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 388
    .local v1, "stationId":Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;->mContext:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationResolver;->isGenreStation(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 389
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 393
    .end local v1    # "stationId":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;->getMilkService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 394
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;->getMilkService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v2

    invoke-virtual {v2, p0, v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->removeFavoriteStation(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/util/List;)I

    .line 400
    :goto_1
    return-void

    .line 396
    :cond_2
    const-string v2, "MilkWorkerRemoveFromMyStation"

    const-string/jumbo v3, "removeForceAllGenreStation : Milk service is empty"

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    const/4 v2, 0x0

    const-string v3, "MilkWorkerRemoveFromMyStation"

    const-string v4, "NOT_DEFINE"

    const-string v5, "not Initialized"

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;->onWorkerFinished(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private removeForceAllStation()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 284
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 285
    .local v0, "genreStationIDs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 287
    .local v1, "personalStationIDs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 288
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 290
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;->mStationIDs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 291
    .local v2, "stationId":Ljava/lang/String;
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;->mContext:Landroid/content/Context;

    invoke-static {v4, v2}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationResolver;->isGenreStation(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 292
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 294
    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 298
    .end local v2    # "stationId":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;->getMilkService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v3

    if-nez v3, :cond_2

    .line 299
    const-string v3, "MilkWorkerRemoveFromMyStation"

    const-string/jumbo v4, "removeForceAllStation : Milk service is empty"

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    const-string v3, "MilkWorkerRemoveFromMyStation"

    const-string v4, "NOT_DEFINE"

    const-string v5, "not Initialized"

    invoke-virtual {p0, v6, v3, v4, v5}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;->onWorkerFinished(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    :goto_1
    return-void

    .line 305
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_5

    .line 306
    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_4

    .line 307
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;->getMilkService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation$6;

    invoke-direct {v4, p0}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation$6;-><init>(Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;)V

    invoke-virtual {v3, v4, v1}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->removePersonalStation(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/util/List;)I

    goto :goto_1

    .line 335
    :cond_4
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;->mContext:Landroid/content/Context;

    const v4, 0x7f0a03f7

    invoke-static {v3, v4, v5}, Lcom/samsung/android/app/music/milk/MilkToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    .line 336
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 337
    const-string v3, "MilkWorkerRemoveFromMyStation"

    const-string v4, "NOT_DEFINE"

    const-string v5, "Parameter Error"

    invoke-virtual {p0, v6, v3, v4, v5}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;->onWorkerFinished(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 341
    :cond_5
    invoke-virtual {p0, v5}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;->showLoadingProgress(Z)V

    .line 342
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;->getMilkService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation$7;

    invoke-direct {v4, p0, v1}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation$7;-><init>(Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;Ljava/util/ArrayList;)V

    invoke-virtual {v3, v4, v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->removeFavoriteStation(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/util/List;)I

    goto :goto_1
.end method

.method private showingRemoveMultifulStations(Z)V
    .locals 9
    .param p1, "showAlertDialogType"    # Z

    .prologue
    const/4 v8, 0x1

    .line 220
    if-eqz p1, :cond_0

    .line 221
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0284

    new-array v5, v8, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;->mStationIDs:Ljava/util/List;

    .line 223
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 222
    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 224
    .local v2, "format":Ljava/lang/String;
    new-instance v3, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v3

    const-string v4, "906"

    .line 225
    invoke-virtual {v3, v4}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->setScreenId(Ljava/lang/String;)Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v3

    .line 226
    invoke-virtual {v3, v8}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->setCanceledOnTouchOutside(Z)Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v3

    .line 227
    invoke-virtual {v3, v8}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->setCancelable(Z)Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a040e

    const-string v5, "9097"

    new-instance v6, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation$3;

    invoke-direct {v6, p0}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation$3;-><init>(Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;)V

    .line 228
    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->setPositiveButton(ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a0304

    const-string v5, "9096"

    new-instance v6, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation$2;

    invoke-direct {v6, p0}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation$2;-><init>(Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;)V

    .line 234
    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->setNegativeButton(ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v3

    .line 240
    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->create()Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog;

    move-result-object v1

    .line 241
    .local v1, "dialog":Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog;
    invoke-virtual {v1, v8}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog;->setCancelable(Z)V

    .line 242
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;->mFragMngr:Landroid/app/FragmentManager;

    const-string v4, "DeleteMyStations"

    invoke-virtual {v1, v3, v4}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 251
    .end local v1    # "dialog":Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog;
    .end local v2    # "format":Ljava/lang/String;
    :goto_0
    return-void

    .line 244
    :cond_0
    new-instance v1, Lcom/samsung/android/app/music/milk/dialog/ConfirmRemoveMyStationsDialog;

    invoke-direct {v1}, Lcom/samsung/android/app/music/milk/dialog/ConfirmRemoveMyStationsDialog;-><init>()V

    .line 245
    .local v1, "dialog":Lcom/samsung/android/app/music/milk/dialog/ConfirmRemoveMyStationsDialog;
    invoke-virtual {v1, p0}, Lcom/samsung/android/app/music/milk/dialog/ConfirmRemoveMyStationsDialog;->setConfirmContainPersonalStationListener(Lcom/samsung/android/app/music/milk/dialog/ConfirmRemoveMyStationsDialog$ConfirmRemoveMyStationsListener;)V

    .line 246
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 247
    .local v0, "args":Landroid/os/Bundle;
    const-string v4, "DELETE_STATION_ID_LIST_TAG"

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;->mStationIDs:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 249
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;->mCallback:Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;->mFragMngr:Landroid/app/FragmentManager;

    const-string v5, "ConfirmRemoveMyStationsDialog"

    invoke-interface {v3, v4, v1, v5, v0}, Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;->launchDialog(Landroid/app/FragmentManager;Landroid/app/DialogFragment;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private showingRemovePersonalStation(Z)V
    .locals 7
    .param p1, "showAlertDialogType"    # Z

    .prologue
    const/4 v6, 0x1

    .line 254
    if-eqz p1, :cond_0

    .line 255
    new-instance v2, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0a0358

    .line 256
    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->setMessage(I)Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v2

    const-string v3, "906"

    .line 257
    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->setScreenId(Ljava/lang/String;)Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v2

    .line 258
    invoke-virtual {v2, v6}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->setCanceledOnTouchOutside(Z)Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v2

    .line 259
    invoke-virtual {v2, v6}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->setCancelable(Z)Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a0356

    const-string v4, "9097"

    new-instance v5, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation$5;

    invoke-direct {v5, p0}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation$5;-><init>(Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;)V

    .line 260
    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->setPositiveButton(ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a0304

    const-string v4, "9096"

    new-instance v5, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation$4;

    invoke-direct {v5, p0}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation$4;-><init>(Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;)V

    .line 266
    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->setNegativeButton(ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v2

    .line 272
    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->create()Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog;

    move-result-object v0

    .line 273
    .local v0, "dialog":Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog;
    invoke-virtual {v0, v6}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog;->setCancelable(Z)V

    .line 274
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;->mFragMngr:Landroid/app/FragmentManager;

    const-string v3, "DeletePersonalStation"

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 281
    .end local v0    # "dialog":Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog;
    :goto_0
    return-void

    .line 276
    :cond_0
    new-instance v1, Lcom/samsung/android/app/music/milk/dialog/ConfirmRemovePersonalStationDialog;

    invoke-direct {v1}, Lcom/samsung/android/app/music/milk/dialog/ConfirmRemovePersonalStationDialog;-><init>()V

    .line 277
    .local v1, "newFrag":Lcom/samsung/android/app/music/milk/dialog/ConfirmRemovePersonalStationDialog;
    invoke-virtual {v1, p0}, Lcom/samsung/android/app/music/milk/dialog/ConfirmRemovePersonalStationDialog;->setConfirmRemovePersonalStationListener(Lcom/samsung/android/app/music/milk/dialog/ConfirmRemovePersonalStationDialog$ConfirmRemovePersonalStationListener;)V

    .line 278
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;->mCallback:Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;->mFragMngr:Landroid/app/FragmentManager;

    const-string v4, "ConfirmRemovePersonalStationDialog"

    const/4 v5, 0x0

    invoke-interface {v2, v3, v1, v4, v5}, Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;->launchDialog(Landroid/app/FragmentManager;Landroid/app/DialogFragment;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method


# virtual methods
.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    const-string v0, "MilkWorkerRemoveFromMyStation"

    return-object v0
.end method

.method public onApiHandled(IIILjava/lang/Object;[Ljava/lang/Object;)V
    .locals 6
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I
    .param p3, "rspType"    # I
    .param p4, "rspData"    # Ljava/lang/Object;
    .param p5, "extra"    # [Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 134
    invoke-super/range {p0 .. p5}, Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;->onApiHandled(IIILjava/lang/Object;[Ljava/lang/Object;)V

    .line 136
    const/16 v1, 0xd5

    if-eq p2, v1, :cond_0

    const/16 v1, 0xcd

    if-ne p2, v1, :cond_1

    .line 138
    :cond_0
    const-string v1, "MilkWorkerRemoveFromMyStation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onApiHandled : Receive Result "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    if-nez p3, :cond_3

    .line 140
    const-string v1, "MilkWorkerRemoveFromMyStation"

    const-string v2, "onApiHandled : Removing stations from DB was successful."

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0385

    invoke-static {v1, v2, v4}, Lcom/samsung/android/app/music/milk/MilkToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 142
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 143
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;->mShouldMoveSameGenreStation:Lcom/samsung/android/app/music/common/model/Station;

    if-eqz v1, :cond_2

    .line 144
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.radio.action.jump.indication"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 145
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "StationID"

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;->mShouldMoveSameGenreStation:Lcom/samsung/android/app/music/common/model/Station;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/Station;->getStationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/samsung/android/app/music/milk/compat/BroadcastCompat;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 150
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    invoke-virtual {p0, v4, v5, v5, v5}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;->onWorkerFinished(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    :cond_1
    :goto_1
    return-void

    .line 148
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;->moveToNextStation()V

    goto :goto_0

    .line 152
    :cond_3
    const-string v1, "MilkWorkerRemoveFromMyStation"

    const-string v2, "onApiHandled : Removing stations from DB was unsuccessful."

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;->mContext:Landroid/content/Context;

    const v2, 0x7f0a03f7

    invoke-static {v1, v2, v4}, Lcom/samsung/android/app/music/milk/MilkToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 154
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 155
    const/4 v1, 0x0

    const-string v2, "MilkWorkerRemoveFromMyStation"

    const-string v3, "DataBaseError"

    const-string v4, "Database Process error"

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;->onWorkerFinished(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onDialogNegativeClick()V
    .locals 4

    .prologue
    .line 211
    const/4 v0, 0x0

    const-string v1, "ConfirmRemoveMyStationsDialog"

    const-string v2, "DialogButtonType"

    const-string v3, "USER_PRESS_CANCEL"

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;->onWorkerFinished(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;->mLoggingScreenID:Ljava/lang/String;

    const-string v1, "905"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;->mLoggingScreenID:Ljava/lang/String;

    const-string v2, "9083"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    :cond_0
    return-void
.end method

.method public onDialogPositiveClick()V
    .locals 4

    .prologue
    .line 195
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;->getMilkService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 196
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;->getMilkService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;->mStationIDs:Ljava/util/List;

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->removePersonalStation(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/util/List;)I

    .line 203
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;->mLoggingScreenID:Ljava/lang/String;

    const-string v1, "905"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;->mLoggingScreenID:Ljava/lang/String;

    const-string v2, "9084"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    :cond_0
    return-void

    .line 198
    :cond_1
    const-string v0, "MilkWorkerRemoveFromMyStation"

    const-string v1, "onDialogPositiveClick : Not initialize"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const/4 v0, 0x0

    const-string v1, "MilkWorkerRemoveFromMyStation"

    const-string v2, "NOT_DEFINE"

    const-string v3, "not Initialized"

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;->onWorkerFinished(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onRemoveMyStationsDialogNegativeClick()V
    .locals 4

    .prologue
    .line 184
    const/4 v0, 0x0

    const-string v1, "ConfirmRemoveMyStationsDialog"

    const-string v2, "DialogButtonType"

    const-string v3, "USER_PRESS_CANCEL"

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;->onWorkerFinished(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;->mLoggingScreenID:Ljava/lang/String;

    const-string v1, "905"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;->mLoggingScreenID:Ljava/lang/String;

    const-string v2, "9083"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    :cond_0
    return-void
.end method

.method public onRemoveMyStationsDialogPositiveClick(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 163
    .local p1, "deleteStationIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation$1;-><init>(Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 174
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 176
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;->mLoggingScreenID:Ljava/lang/String;

    const-string v1, "905"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;->mLoggingScreenID:Ljava/lang/String;

    const-string v2, "9083"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    :cond_0
    return-void
.end method

.method public run()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 84
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;->mStationIDs:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;->mStationIDs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 85
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;->getTag()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "run : Station ID is empty"

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const/4 v2, 0x0

    const-string v3, "MilkWorkerRemoveFromMyStation"

    const-string v4, "NOT_DEFINE"

    const-string v5, "Parameter Error"

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;->onWorkerFinished(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    :goto_0
    return-void

    .line 91
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;->getCurrentPlayingStation()Lcom/samsung/android/app/music/common/model/Station;

    move-result-object v0

    .line 92
    .local v0, "currentStation":Lcom/samsung/android/app/music/common/model/Station;
    if-nez v0, :cond_3

    .line 93
    const-string v2, "MilkWorkerRemoveFromMyStation"

    const-string/jumbo v3, "run : Current Station is null"

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;->mStationIDs:Ljava/util/List;

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;->mStationIDs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;->getIndexOfMyStation(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;->mIndexOfMyStation:I

    .line 111
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;->mStationIDs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v4, :cond_4

    .line 112
    invoke-direct {p0, v4}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;->showingRemoveMultifulStations(Z)V

    goto :goto_0

    .line 95
    :cond_3
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;->isCurrentPlayingContaingSameStation(Lcom/samsung/android/app/music/common/model/Station;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;->mIsContainCurrentPlayingStation:Z

    .line 96
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/Station;->isGenreStation()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 97
    const-string v2, "MilkWorkerRemoveFromMyStation"

    const-string/jumbo v3, "run : Genre Station"

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/Station;->getIsMyStation()I

    move-result v2

    if-ne v2, v4, :cond_2

    iget-boolean v2, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;->mIsContainCurrentPlayingStation:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;->mContext:Landroid/content/Context;

    .line 100
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/Station;->getStationId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationResolver;->isVisibleStation(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 101
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;->getCurrentPlayingTrack()Lcom/samsung/android/app/music/common/model/Track;

    move-result-object v1

    .line 102
    .local v1, "currentTrack":Lcom/samsung/android/app/music/common/model/Track;
    if-eqz v1, :cond_2

    .line 103
    const-string v2, "MilkWorkerRemoveFromMyStation"

    const-string/jumbo v3, "run : Move from station of mystation to one of genre"

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iput-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;->mShouldMoveSameGenreStation:Lcom/samsung/android/app/music/common/model/Station;

    goto :goto_1

    .line 114
    .end local v1    # "currentTrack":Lcom/samsung/android/app/music/common/model/Track;
    :cond_4
    const-string v2, "MilkWorkerRemoveFromMyStation"

    const-string/jumbo v3, "run : Remove Station"

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-direct {p0, v4}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;->showingRemovePersonalStation(Z)V

    goto :goto_0
.end method
