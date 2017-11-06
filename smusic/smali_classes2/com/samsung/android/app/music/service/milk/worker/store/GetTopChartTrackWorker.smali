.class public Lcom/samsung/android/app/music/service/milk/worker/store/GetTopChartTrackWorker;
.super Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;
.source "GetTopChartTrackWorker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/service/milk/worker/BaseWorker",
        "<",
        "Lcom/samsung/android/app/music/common/model/SimpleTrackList;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mDisplayId:Ljava/lang/String;

.field private mDisplayType:Ljava/lang/String;

.field private mPage:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/samsung/android/app/music/service/milk/worker/store/GetTopChartTrackWorker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/service/milk/worker/store/GetTopChartTrackWorker;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;ILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appId"    # I
    .param p3, "reqId"    # I
    .param p4, "displayId"    # Ljava/lang/String;
    .param p5, "displayType"    # Ljava/lang/String;
    .param p6, "page"    # I
    .param p7, "service"    # Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;

    .prologue
    .line 32
    const/16 v4, 0x2b5e

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;-><init>(Landroid/content/Context;IIILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 33
    iput-object p4, p0, Lcom/samsung/android/app/music/service/milk/worker/store/GetTopChartTrackWorker;->mDisplayId:Ljava/lang/String;

    .line 34
    iput-object p5, p0, Lcom/samsung/android/app/music/service/milk/worker/store/GetTopChartTrackWorker;->mDisplayType:Ljava/lang/String;

    .line 35
    iput p6, p0, Lcom/samsung/android/app/music/service/milk/worker/store/GetTopChartTrackWorker;->mPage:I

    .line 36
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/samsung/android/app/music/service/milk/worker/store/GetTopChartTrackWorker;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/service/milk/worker/store/GetTopChartTrackWorker;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/milk/worker/store/GetTopChartTrackWorker;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/store/GetTopChartTrackWorker;->mDisplayType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/service/milk/worker/store/GetTopChartTrackWorker;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/milk/worker/store/GetTopChartTrackWorker;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/store/GetTopChartTrackWorker;->mDisplayId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/samsung/android/app/music/service/milk/worker/store/GetTopChartTrackWorker;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/milk/worker/store/GetTopChartTrackWorker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/worker/store/GetTopChartTrackWorker;->mDisplayId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/service/milk/worker/store/GetTopChartTrackWorker;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/milk/worker/store/GetTopChartTrackWorker;

    .prologue
    .line 24
    iget v0, p0, Lcom/samsung/android/app/music/service/milk/worker/store/GetTopChartTrackWorker;->mPage:I

    return v0
.end method


# virtual methods
.method protected doWorkInternal()Lrx/Observable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<",
            "Lcom/samsung/android/app/music/common/model/SimpleTrackList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    const/4 v0, 0x0

    .line 41
    .local v0, "observable":Lrx/Observable;, "Lrx/Observable<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/worker/store/GetTopChartTrackWorker;->mDisplayId:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 42
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/store/GetTopChartTrackWorker;->getStoreTransport()Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport;

    move-result-object v1

    const/4 v2, -0x1

    const-string v3, "2"

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport;->getStoreTopNewUpdate(ILjava/lang/String;Ljava/util/Map;)Lrx/Observable;

    move-result-object v1

    .line 43
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/store/GetTopChartTrackWorker;->scheduler()Lrx/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/music/service/milk/worker/store/GetTopChartTrackWorker$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/service/milk/worker/store/GetTopChartTrackWorker$1;-><init>(Lcom/samsung/android/app/music/service/milk/worker/store/GetTopChartTrackWorker;)V

    .line 44
    invoke-virtual {v1, v2}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    .line 62
    :goto_0
    new-instance v1, Lcom/samsung/android/app/music/service/milk/worker/store/GetTopChartTrackWorker$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/service/milk/worker/store/GetTopChartTrackWorker$3;-><init>(Lcom/samsung/android/app/music/service/milk/worker/store/GetTopChartTrackWorker;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/music/service/milk/worker/store/GetTopChartTrackWorker$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/service/milk/worker/store/GetTopChartTrackWorker$2;-><init>(Lcom/samsung/android/app/music/service/milk/worker/store/GetTopChartTrackWorker;)V

    .line 69
    invoke-virtual {v1, v2}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v1

    return-object v1

    .line 60
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/worker/store/GetTopChartTrackWorker;->mDisplayId:Ljava/lang/String;

    invoke-static {v1}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/store/GetTopChartTrackWorker;->scheduler()Lrx/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    goto :goto_0
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    sget-object v0, Lcom/samsung/android/app/music/service/milk/worker/store/GetTopChartTrackWorker;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic onApiHandled(IIILcom/samsung/android/app/music/common/model/ResponseModel;I)V
    .locals 6

    .prologue
    .line 24
    move-object v4, p4

    check-cast v4, Lcom/samsung/android/app/music/common/model/SimpleTrackList;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/store/GetTopChartTrackWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/SimpleTrackList;I)V

    return-void
.end method

.method public onApiHandled(IIILcom/samsung/android/app/music/common/model/SimpleTrackList;I)V
    .locals 3
    .param p1, "requestId"    # I
    .param p2, "requestType"    # I
    .param p3, "responseType"    # I
    .param p4, "successResult"    # Lcom/samsung/android/app/music/common/model/SimpleTrackList;
    .param p5, "errorCode"    # I

    .prologue
    .line 101
    invoke-super/range {p0 .. p5}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/ResponseModel;I)V

    .line 102
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, p3, p4, v0}, Lcom/samsung/android/app/music/service/milk/worker/store/GetTopChartTrackWorker;->invokeCallback(ILandroid/os/Parcelable;[Ljava/lang/Object;)V

    .line 103
    return-void
.end method

.method public bridge synthetic onApiHandled(IIILjava/lang/Object;I)V
    .locals 6

    .prologue
    .line 24
    move-object v4, p4

    check-cast v4, Lcom/samsung/android/app/music/common/model/SimpleTrackList;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/store/GetTopChartTrackWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/SimpleTrackList;I)V

    return-void
.end method
