.class public Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;
.super Landroid/os/Handler;
.source "MilkUIWorkerHandler.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/MilkConstants$IMilkUIConst;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler$UIWorkerMsg;,
        Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler$IUIWorkerHandler;
    }
.end annotation


# static fields
.field public static final INTENT_MOVE_TAB:Ljava/lang/String; = "com.samsung.common.uiworker.MOVE_TAB"

.field public static final INTENT_RE_INITIALIZE:Ljava/lang/String; = "com.samsung.common.uiworker.REINITIALIZE"

.field private static final LOG_TAG:Ljava/lang/String; = "MilkUIWorkerHandler"

.field private static final RETRY_MSG_ID:I = -0x1869f

.field private static final UI_WORKER_CONFIG_RETRY_COUNT:I = 0x14

.field private static final UI_WORKER_CONFIG_WAIT_TIMER:I = 0x1f4


# instance fields
.field private mCallback:Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;

    .prologue
    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 32
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;->mContext:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;->mCallback:Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;

    .line 34
    return-void
.end method

.method private internalCheckConnectingService(ZZLjava/lang/Runnable;ILcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler$IUIWorkerHandler;)V
    .locals 8
    .param p1, "needMilkService"    # Z
    .param p2, "needRadioPlaybackService"    # Z
    .param p3, "worker"    # Ljava/lang/Runnable;
    .param p4, "reTryCount"    # I
    .param p5, "handlerCallback"    # Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler$IUIWorkerHandler;

    .prologue
    .line 112
    new-instance v7, Landroid/os/Message;

    invoke-direct {v7}, Landroid/os/Message;-><init>()V

    .line 113
    .local v7, "msg":Landroid/os/Message;
    const v0, -0x1869f

    iput v0, v7, Landroid/os/Message;->what:I

    .line 114
    new-instance v0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler$UIWorkerMsg;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler$UIWorkerMsg;-><init>(Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;ZZLjava/lang/Runnable;ILcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler$IUIWorkerHandler;)V

    iput-object v0, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 116
    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, v7, v0, v1}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 117
    return-void
.end method


# virtual methods
.method public excuteAfterConnectingService(ZZLjava/lang/Runnable;Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler$IUIWorkerHandler;)V
    .locals 6
    .param p1, "needMilkService"    # Z
    .param p2, "needRadioPlaybackService"    # Z
    .param p3, "worker"    # Ljava/lang/Runnable;
    .param p4, "handlerCallback"    # Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler$IUIWorkerHandler;

    .prologue
    .line 120
    const/16 v4, 0x14

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;->internalCheckConnectingService(ZZLjava/lang/Runnable;ILcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler$IUIWorkerHandler;)V

    .line 121
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v10, 0x0

    const v9, -0x1869f

    .line 39
    if-eqz p1, :cond_0

    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v9, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler$UIWorkerMsg;

    if-eqz v0, :cond_0

    .line 40
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler$UIWorkerMsg;

    .line 41
    .local v8, "worker":Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler$UIWorkerMsg;
    iget-boolean v1, v8, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler$UIWorkerMsg;->mNeedMilkService:Z

    .line 42
    .local v1, "needMilkService":Z
    iget-boolean v2, v8, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler$UIWorkerMsg;->mNeedRadioPlaybackService:Z

    .line 43
    .local v2, "needRadioPlaybackService":Z
    iget-object v5, v8, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler$UIWorkerMsg;->mHandlerCallback:Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler$IUIWorkerHandler;

    .line 45
    .local v5, "handlerCallback":Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler$IUIWorkerHandler;
    iget v0, v8, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler$UIWorkerMsg;->mRetryCount:I

    if-gez v0, :cond_1

    .line 46
    const-string v0, "MilkUIWorkerHandler"

    const-string v3, "handleMessage : request retry count is over .. just finish"

    invoke-static {v0, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .end local v1    # "needMilkService":Z
    .end local v2    # "needRadioPlaybackService":Z
    .end local v5    # "handlerCallback":Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler$IUIWorkerHandler;
    .end local v8    # "worker":Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler$UIWorkerMsg;
    :cond_0
    :goto_0
    return-void

    .line 50
    .restart local v1    # "needMilkService":Z
    .restart local v2    # "needRadioPlaybackService":Z
    .restart local v5    # "handlerCallback":Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler$IUIWorkerHandler;
    .restart local v8    # "worker":Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler$UIWorkerMsg;
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;->mCallback:Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;

    if-nez v0, :cond_2

    .line 51
    iget v0, v8, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler$UIWorkerMsg;->mRetryCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, v8, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler$UIWorkerMsg;->mRetryCount:I

    .line 52
    const-string v0, "MilkUIWorkerHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage : Callback is not registered ... Retry Count ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v8, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler$UIWorkerMsg;->mRetryCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iput-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 54
    invoke-virtual {p0, v9}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;->removeMessages(I)V

    .line 55
    iget-object v3, v8, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler$UIWorkerMsg;->mWorker:Ljava/lang/Runnable;

    iget v4, v8, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler$UIWorkerMsg;->mRetryCount:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;->internalCheckConnectingService(ZZLjava/lang/Runnable;ILcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler$IUIWorkerHandler;)V

    goto :goto_0

    .line 59
    :cond_2
    if-eqz v1, :cond_3

    .line 60
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;->mCallback:Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;

    invoke-interface {v0}, Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;->getRadioService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v6

    .line 61
    .local v6, "helper":Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;
    if-nez v6, :cond_6

    .line 62
    iget v0, v8, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler$UIWorkerMsg;->mRetryCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, v8, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler$UIWorkerMsg;->mRetryCount:I

    .line 63
    const-string v0, "MilkUIWorkerHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage : Radio Service is not initialized ... Retry Count ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v8, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler$UIWorkerMsg;->mRetryCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iput-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 65
    invoke-virtual {p0, v9}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;->removeMessages(I)V

    .line 66
    iget-object v3, v8, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler$UIWorkerMsg;->mWorker:Ljava/lang/Runnable;

    iget v4, v8, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler$UIWorkerMsg;->mRetryCount:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;->internalCheckConnectingService(ZZLjava/lang/Runnable;ILcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler$IUIWorkerHandler;)V

    .line 68
    new-instance v7, Landroid/content/Intent;

    const-string v0, "com.samsung.common.uiworker.REINITIALIZE"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 69
    .local v7, "intent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;->mContext:Landroid/content/Context;

    invoke-static {v0, v7}, Lcom/samsung/android/app/music/milk/compat/BroadcastCompat;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 80
    .end local v6    # "helper":Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;
    .end local v7    # "intent":Landroid/content/Intent;
    :cond_3
    if-eqz v2, :cond_4

    .line 94
    :cond_4
    if-eqz v5, :cond_5

    invoke-interface {v5}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler$IUIWorkerHandler;->canExecutable()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 95
    :cond_5
    iget-object v0, v8, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler$UIWorkerMsg;->mWorker:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, v8, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler$UIWorkerMsg;->mWorker:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;->post(Ljava/lang/Runnable;)Z

    .line 98
    iput-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 99
    invoke-virtual {p0, v9}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;->removeMessages(I)V

    goto/16 :goto_0

    .line 70
    .restart local v6    # "helper":Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;
    :cond_6
    invoke-virtual {v6}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->isConnected()Z

    move-result v0

    if-nez v0, :cond_3

    .line 71
    iget v0, v8, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler$UIWorkerMsg;->mRetryCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, v8, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler$UIWorkerMsg;->mRetryCount:I

    .line 72
    const-string v0, "MilkUIWorkerHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage : Radio Service is not connected ... Retry Count ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v8, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler$UIWorkerMsg;->mRetryCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iput-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 74
    invoke-virtual {p0, v9}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;->removeMessages(I)V

    .line 75
    iget-object v3, v8, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler$UIWorkerMsg;->mWorker:Ljava/lang/Runnable;

    iget v4, v8, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler$UIWorkerMsg;->mRetryCount:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;->internalCheckConnectingService(ZZLjava/lang/Runnable;ILcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler$IUIWorkerHandler;)V

    goto/16 :goto_0

    .line 102
    .end local v6    # "helper":Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;
    :cond_7
    iget v0, v8, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler$UIWorkerMsg;->mRetryCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, v8, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler$UIWorkerMsg;->mRetryCount:I

    .line 103
    const-string v0, "MilkUIWorkerHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage : Runnable is not excutablbe.. Retry Count ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v8, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler$UIWorkerMsg;->mRetryCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iput-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 105
    invoke-virtual {p0, v9}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;->removeMessages(I)V

    .line 106
    iget-object v3, v8, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler$UIWorkerMsg;->mWorker:Ljava/lang/Runnable;

    iget v4, v8, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler$UIWorkerMsg;->mRetryCount:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;->internalCheckConnectingService(ZZLjava/lang/Runnable;ILcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler$IUIWorkerHandler;)V

    goto/16 :goto_0
.end method
