.class final Lcom/sec/android/app/camera/engine/CommonEngine$JpegPictureCallback;
.super Ljava/lang/Object;
.source "CommonEngine.java"

# interfaces
.implements Lcom/samsung/android/camera/core/SemCamera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/engine/CommonEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "JpegPictureCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/engine/CommonEngine;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/engine/CommonEngine;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$JpegPictureCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLcom/samsung/android/camera/core/SemCamera;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string v0, "TakePicture Wait Callback"

    invoke-static {v0, v5}, Lcom/sec/android/app/TraceWrapper;->asyncTraceEnd(Ljava/lang/String;I)V

    const-string v0, "CommonEngine"

    const-string v1, "JpegPictureCallback.onPictureTaken"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "AXLOG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Shot2Shot-TakePicture**EndU["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]**"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$JpegPictureCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCurrentState:Lcom/sec/android/app/camera/engine/AbstractCeState;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/AbstractCeState;->getId()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$JpegPictureCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-static {v0, p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$5200(Lcom/sec/android/app/camera/engine/CommonEngine;[B)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$JpegPictureCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-static {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$5300(Lcom/sec/android/app/camera/engine/CommonEngine;)I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$JpegPictureCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-static {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$5300(Lcom/sec/android/app/camera/engine/CommonEngine;)I

    move-result v0

    if-eq v0, v4, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$JpegPictureCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-static {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$5300(Lcom/sec/android/app/camera/engine/CommonEngine;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$JpegPictureCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->handleSetShootingMode()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$JpegPictureCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-static {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$5300(Lcom/sec/android/app/camera/engine/CommonEngine;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$JpegPictureCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->onMultiFrameShotReset()V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$JpegPictureCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/engine/CommonEngine;->enableLightConditionDetect(Z)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$JpegPictureCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-static {v0, v5}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$5400(Lcom/sec/android/app/camera/engine/CommonEngine;I)V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$JpegPictureCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getChkKeyFromApp()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$JpegPictureCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isTouchToCaptureStarted()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$JpegPictureCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setTouchToCaptureStarted(Z)V

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$JpegPictureCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getGestureControlMode()I

    move-result v0

    if-ne v0, v4, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$JpegPictureCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/engine/CommonEngine;->setGestureControlMode(I)V

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$JpegPictureCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->isEffectProcessing()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$JpegPictureCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-static {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$3000(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/samsung/android/secimaging/SecEffectProcessor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/secimaging/SecEffectProcessor;->takepicture([B)V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$JpegPictureCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-static {v0, p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$5200(Lcom/sec/android/app/camera/engine/CommonEngine;[B)V

    const-string v0, "AXLOG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Shot2Shot-JpegPictureCallback.onPictureTaken**EndU["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]**"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
