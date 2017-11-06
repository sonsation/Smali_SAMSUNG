.class public Lcom/samsung/android/app/music/service/milk/worker/mystation/SyncAllPersonalStationWorker;
.super Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;
.source "SyncAllPersonalStationWorker.java"


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
.field private static final LOG_TAG:Ljava/lang/String; = "SyncAllPersonalStationWorker"


# direct methods
.method public constructor <init>(Landroid/content/Context;IILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appId"    # I
    .param p3, "reqId"    # I
    .param p4, "service"    # Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;

    .prologue
    .line 20
    const/16 v4, 0xdd

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;-><init>(Landroid/content/Context;IIILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 21
    return-void
.end method


# virtual methods
.method public doWorkInternal()Lrx/Observable;
    .locals 3
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
    const/4 v0, 0x0

    .line 25
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/mystation/SyncAllPersonalStationWorker;->isDeviceUser()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 26
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/mystation/SyncAllPersonalStationWorker;->getRadioTransport()Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/app/music/service/milk/worker/mystation/SyncAllPersonalStationWorker;->mReqId:I

    invoke-interface {v1, v2, v0}, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport;->syncDeviceMyStation(ILjava/util/Map;)Lrx/Observable;

    move-result-object v0

    .line 29
    :cond_0
    return-object v0
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    const-string v0, "SyncAllPersonalStationWorker"

    return-object v0
.end method
