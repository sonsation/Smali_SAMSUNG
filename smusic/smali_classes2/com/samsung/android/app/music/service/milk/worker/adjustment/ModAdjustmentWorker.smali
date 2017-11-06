.class public Lcom/samsung/android/app/music/service/milk/worker/adjustment/ModAdjustmentWorker;
.super Lcom/samsung/android/app/music/service/milk/worker/adjustment/AdjustmentWorker;
.source "ModAdjustmentWorker.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/samsung/android/app/music/service/milk/worker/adjustment/ModAdjustmentWorker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/service/milk/worker/adjustment/ModAdjustmentWorker;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;JJ)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appId"    # I
    .param p3, "reqId"    # I
    .param p4, "sourceId"    # Ljava/lang/String;
    .param p5, "settlementExt"    # Ljava/lang/String;
    .param p6, "startDate"    # J
    .param p8, "currentPosition"    # J

    .prologue
    .line 22
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/app/music/service/milk/worker/adjustment/AdjustmentWorker;-><init>(Landroid/content/Context;IILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 24
    iput-object p4, p0, Lcom/samsung/android/app/music/service/milk/worker/adjustment/ModAdjustmentWorker;->mSourceId:Ljava/lang/String;

    .line 25
    iput-object p5, p0, Lcom/samsung/android/app/music/service/milk/worker/adjustment/ModAdjustmentWorker;->mSettlementExt:Ljava/lang/String;

    .line 26
    iput-wide p6, p0, Lcom/samsung/android/app/music/service/milk/worker/adjustment/ModAdjustmentWorker;->mStartDate:J

    .line 27
    iput-wide p8, p0, Lcom/samsung/android/app/music/service/milk/worker/adjustment/ModAdjustmentWorker;->mCurrentPosition:J

    .line 28
    return-void
.end method

.method private getTrackPlayList()Lcom/samsung/android/app/music/common/model/TrackPlayList;
    .locals 6

    .prologue
    .line 37
    invoke-super {p0}, Lcom/samsung/android/app/music/service/milk/worker/adjustment/AdjustmentWorker;->getTrackPlay()Lcom/samsung/android/app/music/common/model/TrackPlay;

    move-result-object v3

    .line 39
    .local v3, "trackPlay":Lcom/samsung/android/app/music/common/model/TrackPlay;
    new-instance v0, Lcom/samsung/android/app/music/common/model/AdjustmentEvent;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/model/AdjustmentEvent;-><init>()V

    .line 40
    .local v0, "event":Lcom/samsung/android/app/music/common/model/AdjustmentEvent;
    const-string v4, "08"

    invoke-virtual {v0, v4}, Lcom/samsung/android/app/music/common/model/AdjustmentEvent;->setEventType(Ljava/lang/String;)V

    .line 41
    invoke-static {}, Lcom/samsung/android/app/music/common/util/ConvertSystemTime;->getServerTimeString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/samsung/android/app/music/common/model/AdjustmentEvent;->setEventDate(Ljava/lang/String;)V

    .line 42
    iget-wide v4, p0, Lcom/samsung/android/app/music/service/milk/worker/adjustment/ModAdjustmentWorker;->mCurrentPosition:J

    invoke-virtual {v0, v4, v5}, Lcom/samsung/android/app/music/common/model/AdjustmentEvent;->setMillisElapsed(J)V

    .line 44
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .local v1, "listEvent":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/AdjustmentEvent;>;"
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    invoke-virtual {v3, v1}, Lcom/samsung/android/app/music/common/model/TrackPlay;->setEvents(Ljava/util/ArrayList;)V

    .line 48
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .local v2, "listTrackPlay":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/TrackPlay;>;"
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
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
    .line 32
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/adjustment/ModAdjustmentWorker;->getStoreTransport()Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/music/service/milk/worker/adjustment/ModAdjustmentWorker;->mReqId:I

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/samsung/android/app/music/service/milk/worker/adjustment/ModAdjustmentWorker;->getTrackPlayList()Lcom/samsung/android/app/music/common/model/TrackPlayList;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport;->adjustment(ILjava/util/Map;Lcom/samsung/android/app/music/common/model/TrackPlayList;)Lrx/Observable;

    move-result-object v0

    const-wide/16 v2, 0x3

    invoke-virtual {v0, v2, v3}, Lrx/Observable;->retry(J)Lrx/Observable;

    move-result-object v0

    .line 33
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/adjustment/ModAdjustmentWorker;->scheduler()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/samsung/android/app/music/service/milk/worker/adjustment/ModAdjustmentWorker;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method
