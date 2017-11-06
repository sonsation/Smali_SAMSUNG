.class public Lcom/samsung/android/app/music/service/milk/worker/adjustment/AdjustmentMusicVideoWorker;
.super Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;
.source "AdjustmentMusicVideoWorker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/service/milk/worker/BaseWorker",
        "<",
        "Lcom/samsung/android/app/music/common/model/ResponseModel;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPlayPos:J

.field private mStartTIme:J

.field private mVideoPlay:Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoPlay;


# direct methods
.method public constructor <init>(Landroid/content/Context;IIJJLcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoPlay;Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appId"    # I
    .param p3, "reqId"    # I
    .param p4, "startTime"    # J
    .param p6, "playPos"    # J
    .param p8, "videoPlay"    # Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoPlay;
    .param p9, "service"    # Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;

    .prologue
    .line 34
    const/16 v4, 0x2a32

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p9

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;-><init>(Landroid/content/Context;IIILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 36
    iput-object p8, p0, Lcom/samsung/android/app/music/service/milk/worker/adjustment/AdjustmentMusicVideoWorker;->mVideoPlay:Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoPlay;

    .line 37
    iput-wide p4, p0, Lcom/samsung/android/app/music/service/milk/worker/adjustment/AdjustmentMusicVideoWorker;->mStartTIme:J

    .line 38
    iput-wide p6, p0, Lcom/samsung/android/app/music/service/milk/worker/adjustment/AdjustmentMusicVideoWorker;->mPlayPos:J

    .line 39
    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/worker/adjustment/AdjustmentMusicVideoWorker;->mContext:Landroid/content/Context;

    .line 40
    return-void
.end method

.method private getTrackPlayList()Lcom/samsung/android/app/music/common/model/TrackPlayList;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 48
    new-instance v3, Lcom/samsung/android/app/music/common/model/TrackPlay;

    invoke-direct {v3}, Lcom/samsung/android/app/music/common/model/TrackPlay;-><init>()V

    .line 49
    .local v3, "trackPlay":Lcom/samsung/android/app/music/common/model/TrackPlay;
    iget-object v4, p0, Lcom/samsung/android/app/music/service/milk/worker/adjustment/AdjustmentMusicVideoWorker;->mVideoPlay:Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoPlay;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoPlay;->getMvId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/music/common/model/TrackPlay;->setTrackId(Ljava/lang/String;)V

    .line 50
    invoke-virtual {v3, v6}, Lcom/samsung/android/app/music/common/model/TrackPlay;->setStationId(Ljava/lang/String;)V

    .line 51
    iget-object v4, p0, Lcom/samsung/android/app/music/service/milk/worker/adjustment/AdjustmentMusicVideoWorker;->mVideoPlay:Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoPlay;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoPlay;->getSettlementExt()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/music/common/model/TrackPlay;->setSettlementExt(Ljava/lang/String;)V

    .line 52
    iget-object v4, p0, Lcom/samsung/android/app/music/service/milk/worker/adjustment/AdjustmentMusicVideoWorker;->mContext:Landroid/content/Context;

    const-string v5, "com.samsung.radio.countrycode"

    invoke-static {v4, v5, v6}, Lcom/samsung/android/app/music/common/preferences/Pref;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/music/common/model/TrackPlay;->setCountry(Ljava/lang/String;)V

    .line 53
    iget-wide v4, p0, Lcom/samsung/android/app/music/service/milk/worker/adjustment/AdjustmentMusicVideoWorker;->mStartTIme:J

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/common/util/ConvertSystemTime;->getTime(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/music/common/model/TrackPlay;->setStartDate(Ljava/lang/String;)V

    .line 54
    invoke-static {}, Lcom/samsung/android/app/music/common/util/ConvertSystemTime;->getServerTimeString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/music/common/model/TrackPlay;->setEndDate(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v3, v6}, Lcom/samsung/android/app/music/common/model/TrackPlay;->setPlayedFromType(Ljava/lang/String;)V

    .line 56
    const-string v4, "01"

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/music/common/model/TrackPlay;->setPlayType(Ljava/lang/String;)V

    .line 57
    invoke-virtual {v3, v6}, Lcom/samsung/android/app/music/common/model/TrackPlay;->setUserTier(Ljava/lang/String;)V

    .line 58
    iget-object v4, p0, Lcom/samsung/android/app/music/service/milk/worker/adjustment/AdjustmentMusicVideoWorker;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/app/music/service/milk/LoginManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/LoginManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/app/music/service/milk/LoginManager;->getUserInfo()Lcom/samsung/android/app/music/common/model/UserInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/app/music/common/model/UserInfo;->getOrderId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/music/common/model/TrackPlay;->setOrderId(Ljava/lang/String;)V

    .line 60
    new-instance v0, Lcom/samsung/android/app/music/common/model/AdjustmentEvent;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/model/AdjustmentEvent;-><init>()V

    .line 61
    .local v0, "event":Lcom/samsung/android/app/music/common/model/AdjustmentEvent;
    const-string v4, "07"

    invoke-virtual {v0, v4}, Lcom/samsung/android/app/music/common/model/AdjustmentEvent;->setEventType(Ljava/lang/String;)V

    .line 62
    invoke-static {}, Lcom/samsung/android/app/music/common/util/ConvertSystemTime;->getServerTimeString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/samsung/android/app/music/common/model/AdjustmentEvent;->setEventDate(Ljava/lang/String;)V

    .line 63
    iget-wide v4, p0, Lcom/samsung/android/app/music/service/milk/worker/adjustment/AdjustmentMusicVideoWorker;->mPlayPos:J

    invoke-virtual {v0, v4, v5}, Lcom/samsung/android/app/music/common/model/AdjustmentEvent;->setMillisElapsed(J)V

    .line 65
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .local v1, "listEvent":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/AdjustmentEvent;>;"
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    invoke-virtual {v3, v1}, Lcom/samsung/android/app/music/common/model/TrackPlay;->setEvents(Ljava/util/ArrayList;)V

    .line 69
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .local v2, "listTrackPlay":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/TrackPlay;>;"
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    new-instance v4, Lcom/samsung/android/app/music/common/model/TrackPlayList;

    invoke-direct {v4, v2}, Lcom/samsung/android/app/music/common/model/TrackPlayList;-><init>(Ljava/util/List;)V

    return-object v4
.end method


# virtual methods
.method protected doWorkInternal()Lrx/Observable;
    .locals 4
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
    .line 44
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/adjustment/AdjustmentMusicVideoWorker;->getStoreTransport()Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/adjustment/AdjustmentMusicVideoWorker;->getRequestId()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/samsung/android/app/music/service/milk/worker/adjustment/AdjustmentMusicVideoWorker;->getTrackPlayList()Lcom/samsung/android/app/music/common/model/TrackPlayList;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport;->adjustment(ILjava/util/Map;Lcom/samsung/android/app/music/common/model/TrackPlayList;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    const-class v0, Lcom/samsung/android/app/music/service/milk/worker/adjustment/AdjustmentMusicVideoWorker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

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
    .line 83
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/adjustment/AdjustmentMusicVideoWorker;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onApiHandled : requestId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " requestType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " responseType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    packed-switch p3, :pswitch_data_0

    .line 90
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/adjustment/AdjustmentMusicVideoWorker;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onApiHandled : Unknown type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :pswitch_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p3, p4, v0}, Lcom/samsung/android/app/music/service/milk/worker/adjustment/AdjustmentMusicVideoWorker;->invokeCallback(ILandroid/os/Parcelable;[Ljava/lang/Object;)V

    .line 95
    return-void

    .line 86
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
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

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/adjustment/AdjustmentMusicVideoWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/ResponseModel;I)V

    return-void
.end method
