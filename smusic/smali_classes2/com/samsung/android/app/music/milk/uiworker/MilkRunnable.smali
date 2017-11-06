.class public abstract Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;
.super Ljava/lang/Object;
.source "MilkRunnable.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/MilkConstants$IMilkUIConst;
.implements Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;
.implements Ljava/lang/Runnable;


# static fields
.field protected static final DEFAULT_RETRY_COUNT:I = 0x5

.field protected static final NOT_SET_RETRY_COUNT:I = -0x1869f


# instance fields
.field protected mCallback:Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;

.field protected mContext:Landroid/content/Context;

.field protected mRspToClient:Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;
    .param p3, "workerCallback"    # Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;->mContext:Landroid/content/Context;

    .line 21
    iput-object p2, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;->mCallback:Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;

    .line 22
    iput-object p3, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;->mRspToClient:Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;

    .line 23
    return-void
.end method


# virtual methods
.method public getMilkService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;->mCallback:Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;->mCallback:Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;

    invoke-interface {v0}, Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;->getRadioService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    .line 40
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract getTag()Ljava/lang/String;
.end method

.method public onApiCalled(II)V
    .locals 1
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I

    .prologue
    .line 45
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;->showLoadingProgress(Z)V

    .line 46
    return-void
.end method

.method public onApiHandled(IIILjava/lang/Object;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I
    .param p3, "rspType"    # I
    .param p4, "rspData"    # Ljava/lang/Object;
    .param p5, "extra"    # [Ljava/lang/Object;

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onApiHandled : Receive Result from Service ID("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") Type("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;->showLoadingProgress(Z)V

    .line 52
    return-void
.end method

.method protected onWorkerFinished(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "isSuccess"    # Z
    .param p2, "loc"    # Ljava/lang/String;
    .param p3, "rspType"    # Ljava/lang/String;
    .param p4, "rspCode"    # Ljava/lang/String;

    .prologue
    .line 61
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;->mRspToClient:Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;

    if-eqz v1, :cond_0

    .line 62
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 63
    .local v0, "res_arg":Landroid/os/Bundle;
    const-string v1, "LocationTag"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string v1, "ResType"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string v1, "ResCode"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    if-eqz p1, :cond_1

    .line 67
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;->mRspToClient:Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;

    const/4 v2, 0x1

    invoke-interface {v1, v2, v0}, Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;->onWorkerFinished(ZLandroid/os/Bundle;)V

    .line 72
    .end local v0    # "res_arg":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 69
    .restart local v0    # "res_arg":Landroid/os/Bundle;
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;->mRspToClient:Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;->onWorkerFinished(ZLandroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected showLoadingProgress(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 55
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;->mRspToClient:Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;->mRspToClient:Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;->showLoadingProgress(Z)V

    .line 58
    :cond_0
    return-void
.end method
