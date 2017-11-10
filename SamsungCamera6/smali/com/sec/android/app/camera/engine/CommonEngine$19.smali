.class Lcom/sec/android/app/camera/engine/CommonEngine$19;
.super Ljava/lang/Object;
.source "CommonEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/engine/CommonEngine;->stopVideoRecordingAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/engine/CommonEngine;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/engine/CommonEngine;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/16 v8, 0x1a

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "Recording Stop Thread"

    invoke-static {v3}, Lcom/sec/android/app/TraceWrapper;->traceBegin(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3, v8, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->requestSystemKeyEvent(IZ)Z

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3, v6, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->requestSystemKeyEvent(IZ)Z

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v4, 0xbb

    invoke-interface {v3, v4, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->requestSystemKeyEvent(IZ)Z

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3, v7, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->requestSystemKeyEvent(IZ)Z

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-static {v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$3200(Lcom/sec/android/app/camera/engine/CommonEngine;)Z

    move-result v3

    if-eqz v3, :cond_10

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-static {v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$1600(Lcom/sec/android/app/camera/engine/CommonEngine;)Landroid/media/MediaRecorder;

    move-result-object v3

    if-eqz v3, :cond_10

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-static {v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$2500(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/interfaces/Engine$RecordingEventListener;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-static {v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$2500(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/interfaces/Engine$RecordingEventListener;

    move-result-object v3

    const/16 v4, 0x14

    invoke-interface {v3, v4}, Lcom/sec/android/app/camera/interfaces/Engine$RecordingEventListener;->onStopRecordingProgress(I)V

    :cond_0
    :try_start_0
    const-string v3, "CommonEngine"

    const-string v4, "Stopping video recording..."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "Recording Stop"

    invoke-static {v3}, Lcom/sec/android/app/TraceWrapper;->traceBegin(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-static {v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$1600(Lcom/sec/android/app/camera/engine/CommonEngine;)Landroid/media/MediaRecorder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->stop()V

    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V

    const-string v3, "CommonEngine"

    const-string v4, "Video recording is stopped"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-static {v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$1800(Lcom/sec/android/app/camera/engine/CommonEngine;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-static {v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$3600(Lcom/sec/android/app/camera/engine/CommonEngine;)V

    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-static {v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$2500(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/interfaces/Engine$RecordingEventListener;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-static {v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$2500(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/interfaces/Engine$RecordingEventListener;

    move-result-object v3

    const/16 v4, 0x28

    invoke-interface {v3, v4}, Lcom/sec/android/app/camera/interfaces/Engine$RecordingEventListener;->onStopRecordingProgress(I)V

    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-static {v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$3700(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/util/ContentData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/util/ContentData;->getVideoFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-static {v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$3800(Lcom/sec/android/app/camera/engine/CommonEngine;)V

    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-static {v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$3700(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/util/ContentData;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-static {v4}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$3400(Lcom/sec/android/app/camera/engine/CommonEngine;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/util/ContentData;->setFilePath(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-static {v3, v2}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$3202(Lcom/sec/android/app/camera/engine/CommonEngine;Z)Z

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-static {v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$1700(Lcom/sec/android/app/camera/engine/CommonEngine;)V

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-static {v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$2500(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/interfaces/Engine$RecordingEventListener;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-static {v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$2500(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/interfaces/Engine$RecordingEventListener;

    move-result-object v3

    const/16 v4, 0x3c

    invoke-interface {v3, v4}, Lcom/sec/android/app/camera/interfaces/Engine$RecordingEventListener;->onStopRecordingProgress(I)V

    :cond_4
    invoke-static {}, Lcom/samsung/android/feature/SemGateConfig;->isGateEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "GATE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<GATE-M>VIDEO_RECORDED : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-static {v5}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$3700(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/util/ContentData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/util/ContentData;->getFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " </GATE-M>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-static {v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$3900(Lcom/sec/android/app/camera/engine/CommonEngine;)V

    :cond_6
    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-static {v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$2500(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/interfaces/Engine$RecordingEventListener;

    move-result-object v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-static {v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$2500(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/interfaces/Engine$RecordingEventListener;

    move-result-object v3

    const/16 v4, 0x50

    invoke-interface {v3, v4}, Lcom/sec/android/app/camera/interfaces/Engine$RecordingEventListener;->onStopRecordingProgress(I)V

    :cond_7
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$3402(Lcom/sec/android/app/camera/engine/CommonEngine;Ljava/lang/String;)Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->updateRemainCounter()V

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->onRecordingStopped()V

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-static {v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$2500(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/interfaces/Engine$RecordingEventListener;

    move-result-object v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-static {v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$2500(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/interfaces/Engine$RecordingEventListener;

    move-result-object v3

    const/16 v4, 0x64

    invoke-interface {v3, v4}, Lcom/sec/android/app/camera/interfaces/Engine$RecordingEventListener;->onStopRecordingProgress(I)V

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-static {v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$2500(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/interfaces/Engine$RecordingEventListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/Engine$RecordingEventListener;->onRecordingStopped()V

    :cond_8
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getChkKeyFromApp()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_e

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isPausing()Z

    move-result v3

    if-nez v3, :cond_e

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v3, v7}, Lcom/sec/android/app/camera/engine/CommonEngine;->changeEngineState(I)V

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/CeRequestQueue;

    const/16 v4, 0x6a

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->isFirstRequest(I)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/CeRequestQueue;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    :cond_9
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-static {v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$2600(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isUsingCamcorderPreviewOnly()Z

    move-result v3

    if-nez v3, :cond_e

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->needToResizeForCameraPreviewAspectRatio()Z

    move-result v3

    if-nez v3, :cond_a

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderAntiShake()I

    move-result v3

    if-ne v3, v1, :cond_11

    :cond_a
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isCoverOpen()Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCoverRecordingState()Z

    move-result v3

    if-nez v3, :cond_11

    :cond_b
    :goto_1
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableCamera()Z

    move-result v3

    if-eqz v3, :cond_12

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object v3

    invoke-interface {v3, v6}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->setPreviewAnimation(I)V

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->startPreviewAnimation([B)V

    :cond_c
    :goto_2
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->scheduleSwitchToCameraPreview()V

    if-nez v1, :cond_d

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableCamera()Z

    move-result v3

    if-eqz v3, :cond_e

    :cond_d
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->scheduleRequestNotifyPreviewStarted()V

    :cond_e
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3, v8, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->requestSystemKeyEvent(IZ)Z

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3, v6, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->requestSystemKeyEvent(IZ)Z

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v4, 0xbb

    invoke-interface {v3, v4, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->requestSystemKeyEvent(IZ)Z

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3, v7, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->requestSystemKeyEvent(IZ)Z

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-static {v3, v2}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$3502(Lcom/sec/android/app/camera/engine/CommonEngine;Z)Z

    const-string v2, "CommonEngine"

    const-string v3, "Stopping video recording async is completed!"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V

    :goto_3
    return-void

    :catch_0
    move-exception v0

    const-string v3, "CommonEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Recording stop failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-static {v3, v2}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$3202(Lcom/sec/android/app/camera/engine/CommonEngine;Z)Z

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-static {v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$1700(Lcom/sec/android/app/camera/engine/CommonEngine;)V

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-static {v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$3300(Lcom/sec/android/app/camera/engine/CommonEngine;)V

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$3402(Lcom/sec/android/app/camera/engine/CommonEngine;Ljava/lang/String;)Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->closeVideoFileDescriptor()V

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->onRecordingStopped()V

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-static {v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$2500(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/interfaces/Engine$RecordingEventListener;

    move-result-object v3

    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-static {v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$2500(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/interfaces/Engine$RecordingEventListener;

    move-result-object v3

    const/16 v4, 0x64

    invoke-interface {v3, v4}, Lcom/sec/android/app/camera/interfaces/Engine$RecordingEventListener;->onStopRecordingProgress(I)V

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-static {v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$2500(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/interfaces/Engine$RecordingEventListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/Engine$RecordingEventListener;->onRecordingStopped()V

    :cond_f
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3, v8, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->requestSystemKeyEvent(IZ)Z

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3, v6, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->requestSystemKeyEvent(IZ)Z

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v4, 0xbb

    invoke-interface {v3, v4, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->requestSystemKeyEvent(IZ)Z

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3, v7, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->requestSystemKeyEvent(IZ)Z

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-static {v3, v2}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$3502(Lcom/sec/android/app/camera/engine/CommonEngine;Z)Z

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/engine/CommonEngine;->mErrorMessageHandler:Lcom/sec/android/app/camera/engine/CommonEngine$ErrorMessageHandler;

    const/4 v3, -0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/engine/CommonEngine$ErrorMessageHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_3

    :cond_10
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-static {v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$3200(Lcom/sec/android/app/camera/engine/CommonEngine;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-static {v3, v2}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$3202(Lcom/sec/android/app/camera/engine/CommonEngine;Z)Z

    goto/16 :goto_0

    :cond_11
    move v1, v2

    goto/16 :goto_1

    :cond_12
    if-eqz v1, :cond_c

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object v3

    const/4 v4, 0x2

    invoke-interface {v3, v4}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->setPreviewAnimation(I)V

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->scheduleSetOneShotPreviewCallback()V

    goto/16 :goto_2
.end method
