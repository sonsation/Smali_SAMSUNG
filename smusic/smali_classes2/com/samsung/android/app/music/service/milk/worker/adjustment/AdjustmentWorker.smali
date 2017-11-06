.class public Lcom/samsung/android/app/music/service/milk/worker/adjustment/AdjustmentWorker;
.super Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;
.source "AdjustmentWorker.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field protected mCurrentPosition:J

.field protected mSettlementExt:Ljava/lang/String;

.field protected mSourceId:Ljava/lang/String;

.field protected mStartDate:J

.field protected mStationId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/samsung/android/app/music/service/milk/worker/adjustment/AdjustmentWorker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/service/milk/worker/adjustment/AdjustmentWorker;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appId"    # I
    .param p3, "reqId"    # I
    .param p4, "service"    # Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;

    .prologue
    .line 31
    const/16 v4, 0x1f6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;-><init>(Landroid/content/Context;IIILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 32
    return-void
.end method


# virtual methods
.method protected doWorkInternal()Lrx/Observable;
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/samsung/android/app/music/service/milk/worker/adjustment/AdjustmentWorker;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method protected getTrackPlay()Lcom/samsung/android/app/music/common/model/TrackPlay;
    .locals 4

    .prologue
    .line 35
    new-instance v0, Lcom/samsung/android/app/music/common/model/TrackPlay;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/model/TrackPlay;-><init>()V

    .line 36
    .local v0, "trackPlay":Lcom/samsung/android/app/music/common/model/TrackPlay;
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/worker/adjustment/AdjustmentWorker;->mSourceId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/common/model/TrackPlay;->setTrackId(Ljava/lang/String;)V

    .line 37
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/worker/adjustment/AdjustmentWorker;->mStationId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/common/model/TrackPlay;->setStationId(Ljava/lang/String;)V

    .line 38
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/worker/adjustment/AdjustmentWorker;->mSettlementExt:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/common/model/TrackPlay;->setSettlementExt(Ljava/lang/String;)V

    .line 39
    iget-wide v2, p0, Lcom/samsung/android/app/music/service/milk/worker/adjustment/AdjustmentWorker;->mStartDate:J

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/common/util/ConvertSystemTime;->getTime(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/common/model/TrackPlay;->setStartDate(Ljava/lang/String;)V

    .line 40
    invoke-static {}, Lcom/samsung/android/app/music/common/util/ConvertSystemTime;->getServerTimeString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/common/model/TrackPlay;->setEndDate(Ljava/lang/String;)V

    .line 41
    const-string v2, "01"

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/common/model/TrackPlay;->setPlayType(Ljava/lang/String;)V

    .line 42
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/worker/adjustment/AdjustmentWorker;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/app/music/service/milk/LoginManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/LoginManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/music/service/milk/LoginManager;->getUserInfo()Lcom/samsung/android/app/music/common/model/UserInfo;

    move-result-object v1

    .line 43
    .local v1, "userInfo":Lcom/samsung/android/app/music/common/model/UserInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/UserInfo;->getUserStatus()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 44
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/worker/adjustment/AdjustmentWorker;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/app/music/service/milk/LoginManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/LoginManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/music/service/milk/LoginManager;->getUserInfo()Lcom/samsung/android/app/music/common/model/UserInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/UserInfo;->getOrderId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/common/model/TrackPlay;->setOrderId(Ljava/lang/String;)V

    .line 47
    :cond_0
    return-object v0
.end method

.method public onApiHandled(IIILjava/lang/Object;I)V
    .locals 0
    .param p1, "requestId"    # I
    .param p2, "requestType"    # I
    .param p3, "responseType"    # I
    .param p4, "successResult"    # Ljava/lang/Object;
    .param p5, "errorCode"    # I

    .prologue
    .line 54
    return-void
.end method
