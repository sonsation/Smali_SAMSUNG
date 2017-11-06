.class public Lcom/samsung/android/app/music/service/milk/worker/LyricWorker;
.super Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;
.source "LyricWorker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/service/milk/worker/BaseWorker",
        "<",
        "Lcom/samsung/android/app/music/common/model/milklyric/LyricResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LyricWorker"


# instance fields
.field private lyricType:I

.field private lyricUrl:Ljava/lang/String;

.field private trackId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;ILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appId"    # I
    .param p3, "reqId"    # I
    .param p4, "trackId"    # Ljava/lang/String;
    .param p5, "lyricUrl"    # Ljava/lang/String;
    .param p6, "lyricType"    # I
    .param p7, "service"    # Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;

    .prologue
    .line 30
    const/16 v4, 0x6d

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;-><init>(Landroid/content/Context;IIILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 31
    iput-object p4, p0, Lcom/samsung/android/app/music/service/milk/worker/LyricWorker;->trackId:Ljava/lang/String;

    .line 32
    iput-object p5, p0, Lcom/samsung/android/app/music/service/milk/worker/LyricWorker;->lyricUrl:Ljava/lang/String;

    .line 33
    iput p6, p0, Lcom/samsung/android/app/music/service/milk/worker/LyricWorker;->lyricType:I

    .line 34
    return-void
.end method


# virtual methods
.method protected doWorkInternal()Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<",
            "Lcom/samsung/android/app/music/common/model/milklyric/LyricResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/LyricWorker;->getDownloadTransport()Lcom/samsung/android/app/music/service/milk/net/transport/DownloadTransport;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/worker/LyricWorker;->lyricUrl:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/service/milk/net/transport/DownloadTransport;->requestLyric(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    const-string v0, "LyricWorker"

    return-object v0
.end method

.method public bridge synthetic onApiHandled(IIILcom/samsung/android/app/music/common/model/ResponseModel;I)V
    .locals 6

    .prologue
    .line 19
    move-object v4, p4

    check-cast v4, Lcom/samsung/android/app/music/common/model/milklyric/LyricResponse;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/LyricWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/milklyric/LyricResponse;I)V

    return-void
.end method

.method public onApiHandled(IIILcom/samsung/android/app/music/common/model/milklyric/LyricResponse;I)V
    .locals 4
    .param p1, "requestId"    # I
    .param p2, "requestType"    # I
    .param p3, "responseType"    # I
    .param p4, "successResult"    # Lcom/samsung/android/app/music/common/model/milklyric/LyricResponse;
    .param p5, "errorCode"    # I

    .prologue
    .line 49
    invoke-super/range {p0 .. p5}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/ResponseModel;I)V

    .line 50
    if-nez p3, :cond_0

    .line 51
    const-string v1, "LyricWorker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onApiHandled >>> successResult.getLyrics() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p4}, Lcom/samsung/android/app/music/common/model/milklyric/LyricResponse;->getLyrics()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-virtual {p4}, Lcom/samsung/android/app/music/common/model/milklyric/LyricResponse;->getDecodedLyrics()Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "lyricData":Ljava/lang/String;
    const-string v1, "LyricWorker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onApiHandled >>> lyricData : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .end local v0    # "lyricData":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, p3, p4, v1}, Lcom/samsung/android/app/music/service/milk/worker/LyricWorker;->invokeCallback(ILandroid/os/Parcelable;[Ljava/lang/Object;)V

    .line 58
    return-void
.end method

.method public bridge synthetic onApiHandled(IIILjava/lang/Object;I)V
    .locals 6

    .prologue
    .line 19
    move-object v4, p4

    check-cast v4, Lcom/samsung/android/app/music/common/model/milklyric/LyricResponse;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/LyricWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/milklyric/LyricResponse;I)V

    return-void
.end method
