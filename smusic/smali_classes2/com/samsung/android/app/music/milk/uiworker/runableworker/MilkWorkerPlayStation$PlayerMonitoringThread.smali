.class Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation$PlayerMonitoringThread;
.super Ljava/lang/Thread;
.source "MilkWorkerPlayStation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PlayerMonitoringThread"
.end annotation


# instance fields
.field private mStationID:Ljava/lang/String;

.field private mWaitCount:I

.field final synthetic this$0:Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation;Ljava/lang/String;)V
    .locals 1
    .param p2, "stationID"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x6

    .line 317
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation$PlayerMonitoringThread;->this$0:Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 315
    iput v0, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation$PlayerMonitoringThread;->mWaitCount:I

    .line 318
    iput-object p2, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation$PlayerMonitoringThread;->mStationID:Ljava/lang/String;

    .line 319
    iput v0, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation$PlayerMonitoringThread;->mWaitCount:I

    .line 320
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 324
    :goto_0
    iget v1, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation$PlayerMonitoringThread;->mWaitCount:I

    if-lez v1, :cond_1

    .line 325
    invoke-static {}, Lcom/samsung/android/app/music/milk/RadioControlHelper;->getCurrentStationId()Ljava/lang/String;

    move-result-object v0

    .line 327
    .local v0, "currentStationID":Ljava/lang/String;
    const-string v1, "MilkWorkerPlayStation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PlayerMonitoringThread : Target("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation$PlayerMonitoringThread;->mStationID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), Current("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation$PlayerMonitoringThread;->mStationID:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 331
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation$PlayerMonitoringThread;->this$0:Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation;

    const/4 v2, 0x1

    invoke-static {v1, v2, v4, v4, v4}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation;->access$000(Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    .end local v0    # "currentStationID":Ljava/lang/String;
    :goto_1
    return-void

    .line 340
    .restart local v0    # "currentStationID":Ljava/lang/String;
    :cond_0
    iget v1, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation$PlayerMonitoringThread;->mWaitCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation$PlayerMonitoringThread;->mWaitCount:I

    .line 342
    const-wide/16 v2, 0x1f4

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 343
    :catch_0
    move-exception v1

    goto :goto_0

    .line 348
    .end local v0    # "currentStationID":Ljava/lang/String;
    :cond_1
    const-string v1, "MilkWorkerPlayStation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PlayerMonitoringThread : Playing("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/app/music/milk/RadioControlHelper;->isPlaying()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") Target("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation$PlayerMonitoringThread;->mStationID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), Current("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 350
    invoke-static {}, Lcom/samsung/android/app/music/milk/RadioControlHelper;->getCurrentStationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 348
    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation$PlayerMonitoringThread;->this$0:Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation;

    const/4 v2, 0x0

    const-string v3, "MilkWorkerPlayStation"

    const-string v4, "PLAYER Error"

    const-string v5, "not Played"

    invoke-static {v1, v2, v3, v4, v5}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation;->access$100(Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
