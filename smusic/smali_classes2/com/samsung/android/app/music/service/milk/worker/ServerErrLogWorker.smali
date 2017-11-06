.class public Lcom/samsung/android/app/music/service/milk/worker/ServerErrLogWorker;
.super Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;
.source "ServerErrLogWorker.java"


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
.field private static final LOG_TAG:Ljava/lang/String; = "ServerErrLogWorker"


# instance fields
.field private mErrorLog:Lcom/samsung/android/app/music/common/model/ErrorLog;


# direct methods
.method public constructor <init>(Landroid/content/Context;IILcom/samsung/android/app/music/common/model/ErrorLog;Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appId"    # I
    .param p3, "reqId"    # I
    .param p4, "errorLog"    # Lcom/samsung/android/app/music/common/model/ErrorLog;
    .param p5, "service"    # Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;

    .prologue
    .line 23
    const/16 v4, 0x1f8

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;-><init>(Landroid/content/Context;IIILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 24
    iput-object p4, p0, Lcom/samsung/android/app/music/service/milk/worker/ServerErrLogWorker;->mErrorLog:Lcom/samsung/android/app/music/common/model/ErrorLog;

    .line 25
    return-void
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
    const/4 v1, 0x0

    .line 29
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/worker/ServerErrLogWorker;->mErrorLog:Lcom/samsung/android/app/music/common/model/ErrorLog;

    if-eqz v2, :cond_0

    .line 30
    new-instance v0, Lcom/samsung/android/app/music/common/model/ErrorLogRequest;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/model/ErrorLogRequest;-><init>()V

    .line 31
    .local v0, "req":Lcom/samsung/android/app/music/common/model/ErrorLogRequest;
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/worker/ServerErrLogWorker;->mErrorLog:Lcom/samsung/android/app/music/common/model/ErrorLog;

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/common/model/ErrorLogRequest;->addLog(Lcom/samsung/android/app/music/common/model/ErrorLog;)V

    .line 32
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/ServerErrLogWorker;->getRadioTransport()Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/app/music/service/milk/worker/ServerErrLogWorker;->mReqId:I

    invoke-interface {v2, v3, v1, v0}, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport;->serverErrLog(ILjava/util/Map;Lcom/samsung/android/app/music/common/model/ErrorLogRequest;)Lrx/Observable;

    move-result-object v1

    .line 34
    .end local v0    # "req":Lcom/samsung/android/app/music/common/model/ErrorLogRequest;
    :cond_0
    return-object v1
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    const-string v0, "ServerErrLogWorker"

    return-object v0
.end method
