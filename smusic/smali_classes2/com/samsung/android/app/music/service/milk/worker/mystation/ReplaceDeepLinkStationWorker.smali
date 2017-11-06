.class public Lcom/samsung/android/app/music/service/milk/worker/mystation/ReplaceDeepLinkStationWorker;
.super Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;
.source "ReplaceDeepLinkStationWorker.java"


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
.field private static final LOG_TAG:Ljava/lang/String; = "ReplaceDeepLinkStationWorker"


# instance fields
.field private mPlayStation:Z

.field private mStation:Lcom/samsung/android/app/music/common/model/Station;

.field private mTrackId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;IILcom/samsung/android/app/music/common/model/Station;Ljava/lang/String;ZLcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appId"    # I
    .param p3, "reqId"    # I
    .param p4, "station"    # Lcom/samsung/android/app/music/common/model/Station;
    .param p5, "trackId"    # Ljava/lang/String;
    .param p6, "playStation"    # Z
    .param p7, "service"    # Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;

    .prologue
    .line 28
    const/16 v4, 0xe0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;-><init>(Landroid/content/Context;IIILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 29
    iput-object p4, p0, Lcom/samsung/android/app/music/service/milk/worker/mystation/ReplaceDeepLinkStationWorker;->mStation:Lcom/samsung/android/app/music/common/model/Station;

    .line 30
    iput-object p5, p0, Lcom/samsung/android/app/music/service/milk/worker/mystation/ReplaceDeepLinkStationWorker;->mTrackId:Ljava/lang/String;

    .line 31
    iput-boolean p6, p0, Lcom/samsung/android/app/music/service/milk/worker/mystation/ReplaceDeepLinkStationWorker;->mPlayStation:Z

    .line 32
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/service/milk/worker/mystation/ReplaceDeepLinkStationWorker;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/milk/worker/mystation/ReplaceDeepLinkStationWorker;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/mystation/ReplaceDeepLinkStationWorker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/service/milk/worker/mystation/ReplaceDeepLinkStationWorker;)Lcom/samsung/android/app/music/common/model/Station;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/milk/worker/mystation/ReplaceDeepLinkStationWorker;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/mystation/ReplaceDeepLinkStationWorker;->mStation:Lcom/samsung/android/app/music/common/model/Station;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/service/milk/worker/mystation/ReplaceDeepLinkStationWorker;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/milk/worker/mystation/ReplaceDeepLinkStationWorker;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/mystation/ReplaceDeepLinkStationWorker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/service/milk/worker/mystation/ReplaceDeepLinkStationWorker;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/milk/worker/mystation/ReplaceDeepLinkStationWorker;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/mystation/ReplaceDeepLinkStationWorker;->mTrackId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/music/service/milk/worker/mystation/ReplaceDeepLinkStationWorker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/milk/worker/mystation/ReplaceDeepLinkStationWorker;

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/samsung/android/app/music/service/milk/worker/mystation/ReplaceDeepLinkStationWorker;->mPlayStation:Z

    return v0
.end method

.method static synthetic access$500(Lcom/samsung/android/app/music/service/milk/worker/mystation/ReplaceDeepLinkStationWorker;ILandroid/os/Parcelable;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/milk/worker/mystation/ReplaceDeepLinkStationWorker;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/os/Parcelable;
    .param p3, "x3"    # [Ljava/lang/Object;

    .prologue
    .line 19
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/service/milk/worker/mystation/ReplaceDeepLinkStationWorker;->invokeCallback(ILandroid/os/Parcelable;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public doWorkInternal()Lrx/Observable;
    .locals 2
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
    .line 36
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/app/music/service/milk/worker/mystation/ReplaceDeepLinkStationWorker$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/service/milk/worker/mystation/ReplaceDeepLinkStationWorker$1;-><init>(Lcom/samsung/android/app/music/service/milk/worker/mystation/ReplaceDeepLinkStationWorker;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 50
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 52
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    const-string v0, "ReplaceDeepLinkStationWorker"

    return-object v0
.end method
