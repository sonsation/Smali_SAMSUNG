.class Lcom/sec/android/app/camera/shootingmode/HyperMotion$2;
.super Ljava/lang/Object;
.source "HyperMotion.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/shootingmode/HyperMotion;->startSystemTimeTick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/HyperMotion;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/shootingmode/HyperMotion;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion$2;->this$0:Lcom/sec/android/app/camera/shootingmode/HyperMotion;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion$2;->this$0:Lcom/sec/android/app/camera/shootingmode/HyperMotion;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion$2;->this$0:Lcom/sec/android/app/camera/shootingmode/HyperMotion;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_STARTING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v1, v2, :cond_2

    :cond_1
    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion$2;->this$0:Lcom/sec/android/app/camera/shootingmode/HyperMotion;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion$2;->this$0:Lcom/sec/android/app/camera/shootingmode/HyperMotion;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_STARTING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v1, v2, :cond_3

    :cond_2
    return-void

    :catch_0
    move-exception v0

    const-string v1, "HyperMotion"

    const-string v2, "Failed systemTimeTick"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion$2;->this$0:Lcom/sec/android/app/camera/shootingmode/HyperMotion;

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->access$308(Lcom/sec/android/app/camera/shootingmode/HyperMotion;)I

    const-string v1, "HyperMotion"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "systemTimeTick : elapsedTime = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion$2;->this$0:Lcom/sec/android/app/camera/shootingmode/HyperMotion;

    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->access$300(Lcom/sec/android/app/camera/shootingmode/HyperMotion;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion$2;->this$0:Lcom/sec/android/app/camera/shootingmode/HyperMotion;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion$2;->this$0:Lcom/sec/android/app/camera/shootingmode/HyperMotion;

    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->access$300(Lcom/sec/android/app/camera/shootingmode/HyperMotion;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->access$400(Lcom/sec/android/app/camera/shootingmode/HyperMotion;I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion$2;->this$0:Lcom/sec/android/app/camera/shootingmode/HyperMotion;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->isRecordingControlAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion$2;->this$0:Lcom/sec/android/app/camera/shootingmode/HyperMotion;

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->access$500(Lcom/sec/android/app/camera/shootingmode/HyperMotion;)V

    goto :goto_0
.end method
