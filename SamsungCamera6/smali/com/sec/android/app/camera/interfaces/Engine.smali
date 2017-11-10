.class public interface abstract Lcom/sec/android/app/camera/interfaces/Engine;
.super Ljava/lang/Object;
.source "Engine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/interfaces/Engine$VideoContentsLoggingListener;,
        Lcom/sec/android/app/camera/interfaces/Engine$TimerEventListener;,
        Lcom/sec/android/app/camera/interfaces/Engine$SuperResolutionZoomEventListener;,
        Lcom/sec/android/app/camera/interfaces/Engine$SingleCaptureEventListener;,
        Lcom/sec/android/app/camera/interfaces/Engine$ShutterEventListener;,
        Lcom/sec/android/app/camera/interfaces/Engine$ScreenFlashEventListener;,
        Lcom/sec/android/app/camera/interfaces/Engine$RecordingEventListener;,
        Lcom/sec/android/app/camera/interfaces/Engine$PrepareStartingPreviewListener;,
        Lcom/sec/android/app/camera/interfaces/Engine$PrepareSetShootingModeListener;,
        Lcom/sec/android/app/camera/interfaces/Engine$PictureTakenListener;,
        Lcom/sec/android/app/camera/interfaces/Engine$OnRequestQueueEmptyListener;,
        Lcom/sec/android/app/camera/interfaces/Engine$MultiFrameEventListener;,
        Lcom/sec/android/app/camera/interfaces/Engine$LowLightEventListener;,
        Lcom/sec/android/app/camera/interfaces/Engine$ImageStoringListener;,
        Lcom/sec/android/app/camera/interfaces/Engine$ImageContentsLoggingListener;,
        Lcom/sec/android/app/camera/interfaces/Engine$EngineStateListener;,
        Lcom/sec/android/app/camera/interfaces/Engine$EffectProcessorListener;,
        Lcom/sec/android/app/camera/interfaces/Engine$DBUpdateListener;,
        Lcom/sec/android/app/camera/interfaces/Engine$BurstCaptureEventListener;,
        Lcom/sec/android/app/camera/interfaces/Engine$AutoFocusListener;,
        Lcom/sec/android/app/camera/interfaces/Engine$ActivateShootingModeListener;
    }
.end annotation


# static fields
.field public static final BURST_CAPTURE_FPS_LEVEL_MAX:I = 0x1

.field public static final BURST_CAPTURE_FPS_LEVEL_MIN:I = 0x0

.field public static final CE_STATE_END_OF_DEF:I = 0x6

.field public static final CE_STATE_IDLE:I = 0x0

.field public static final CE_STATE_INITIALIZED:I = 0x2

.field public static final CE_STATE_INITIALIZING:I = 0x1

.field public static final CE_STATE_PREVIEWING:I = 0x4

.field public static final CE_STATE_RECORDING:I = 0x5

.field public static final CE_STATE_SHUTDOWN:I = 0x6

.field public static final CE_STATE_STARTING_PREVIEW:I = 0x3

.field public static final EFFECT_PROCESSOR_COLOR_TUNE:I = 0x3

.field public static final EFFECT_PROCESSOR_EFFECT:I = 0x1

.field public static final EFFECT_PROCESSOR_ENHANCED_SELFIE:I = 0x2

.field public static final EFFECT_PROCESSOR_FOOD_LENS:I = 0x5

.field public static final EFFECT_PROCESSOR_NONE:I = 0x0

.field public static final EFFECT_PROCESSOR_VIDEO_COLLAGE:I = 0x4

.field public static final ERROR_BUFFER_OVERFLOW_FROM_RECORDER:I = -0x6

.field public static final ERROR_CAMCORDER_OPEN:I = -0x2

.field public static final ERROR_CAMERA_BUSY:I = -0xe

.field public static final ERROR_CAMERA_OPEN:I = -0x1

.field public static final ERROR_CAMERA_SERVER_DIED:I = -0xf

.field public static final ERROR_INVALID_FIRMWARE_VERSION:I = -0x7

.field public static final ERROR_MEDIA_SERVER_DIED:I = -0x8

.field public static final ERROR_PREVIEW_TIMEOUT:I = -0xb

.field public static final ERROR_RECORDING:I = -0x4

.field public static final ERROR_RECORDING_START_FAIL:I = -0xc

.field public static final ERROR_RUNTIME_EXCEPTION:I = -0x9

.field public static final ERROR_START_PREVIEW:I = -0x3

.field public static final ERROR_UNKNOWN_CALLBACK_FROM_DEVICE:I = -0x5

.field public static final ERROR_UNKNOWN_EXCEPTION:I = -0xa

.field public static final MAX_VIDEO_FILE_SIZE:J = 0xffffffffL

.field public static final MULTIFRAME_END:I = 0x0

.field public static final MULTIFRAME_MODE_AUTO:I = 0x0

.field public static final MULTIFRAME_MODE_NIGHT:I = 0x1

.field public static final MULTIFRAME_MODE_SELFIE_NIGHT:I = 0x2

.field public static final MULTIFRAME_MODE_SR:I = 0x3

.field public static final MULTIFRAME_START:I = 0x1

.field public static final OBJECT_TRACKING_AREA_OFFSET:I = 0x1

.field public static final PREVIEW_CALLBACK_FORMAT_NV21:I = 0x0

.field public static final PREVIEW_CALLBACK_FORMAT_RGBA:I = 0x1

.field public static final PREVIEW_SURFACE_CHANGED:I = 0x2

.field public static final PREVIEW_SURFACE_CREATED:I = 0x1

.field public static final PREVIEW_SURFACE_DESTROYED:I = 0x0

.field public static final PREVIEW_SURFACE_WILLBE_DESTROYED:I = 0x3

.field public static final RECORDING_MODE_FAST_MOTION:I = 0x2

.field public static final RECORDING_MODE_HYPER_MOTION:I = 0x5

.field public static final RECORDING_MODE_NORMAL:I = 0x0

.field public static final RECORDING_MODE_SLOW_MOTION:I = 0x1

.field public static final TOUCH_AE_LOCKED:I = 0x1

.field public static final TOUCH_AE_LOCKED_SCENE_DEPENDENTLY:I = 0x2

.field public static final TOUCH_AE_UNLOCKED:I


# virtual methods
.method public abstract burstCaptureCompleted()V
.end method

.method public abstract calculateOrientationForPicture(I)I
.end method

.method public abstract cancelAutoFocus()V
.end method

.method public abstract cancelBurstCapture()V
.end method

.method public abstract cancelIntervalCapture()V
.end method

.method public abstract cancelMotionPanorama()V
.end method

.method public abstract cancelMotionWideSelfie()V
.end method

.method public abstract cancelMultiTrackRecording()V
.end method

.method public abstract cancelShotAndMore()V
.end method

.method public abstract cancelShutterAction()V
.end method

.method public abstract cancelShutterTimer()V
.end method

.method public abstract cancelTakePicture()V
.end method

.method public abstract cancelVideoRecordingSync()V
.end method

.method public abstract cancelWideSelfie()V
.end method

.method public abstract captureCompleted()V
.end method

.method public abstract changeParameterSync(II)V
.end method

.method public abstract clearCaptureData()V
.end method

.method public abstract clearLastContentData()V
.end method

.method public abstract clearLastContentUri()V
.end method

.method public abstract clearTimer()V
.end method

.method public abstract closeCamera()V
.end method

.method public abstract closeVideoFileDescriptor()V
.end method

.method public abstract completeWaitAsync()V
.end method

.method public abstract coordinateSyncForDual(FFFFFFFFZ)V
.end method

.method public abstract coordinateSyncForDual(FFFFIIZ)V
.end method

.method public abstract createVideoDirectory()Ljava/lang/String;
.end method

.method public abstract disableChangeBurstShootingMode()V
.end method

.method public abstract enableAntiFogMode(I)V
.end method

.method public abstract enableCameraCurrentSet(Z)V
.end method

.method public abstract enableFlashAutoCallback(Z)V
.end method

.method public abstract enableHdrAutoCallback(Z)V
.end method

.method public abstract enableLightConditionDetect(Z)V
.end method

.method public abstract enableMotionPanoramaMode(Z)V
.end method

.method public abstract enableMotionWideSelfieMode(Z)V
.end method

.method public abstract enableMultiAF(Z)V
.end method

.method public abstract enableRawPictureFormat(Z)V
.end method

.method public abstract enableTimerInterval(Z)V
.end method

.method public abstract enableWatermark(Z)V
.end method

.method public abstract getAddressValue()Ljava/lang/String;
.end method

.method public abstract getAudioBitRateFromProfile()I
.end method

.method public abstract getBackCameraId()I
.end method

.method public abstract getBurstCaptureFPSRange()[I
.end method

.method public abstract getCameraDisplayOrientation()I
.end method

.method public abstract getCurrentStateId()I
.end method

.method public abstract getCurrentThumbnailSize()[I
.end method

.method public abstract getDualBackCameraId()I
.end method

.method public abstract getDualFrontCameraId()I
.end method

.method public abstract getFrontCameraId()I
.end method

.method public abstract getIntervalCaptureCount()I
.end method

.method public abstract getLastContentData()Lcom/sec/android/app/camera/util/ContentData;
.end method

.method public abstract getLastContentDateTaken()J
.end method

.method public abstract getLastContentFilePath()Ljava/lang/String;
.end method

.method public abstract getLastContentOrientation()I
.end method

.method public abstract getLastContentUri()Landroid/net/Uri;
.end method

.method public abstract getLastOrientation()I
.end method

.method public abstract getLocationAltitude()I
.end method

.method public abstract getMaxVideoFileSize()J
.end method

.method public abstract getMaxZoomLevel()I
.end method

.method public abstract getMaxZoomRatio()I
.end method

.method public abstract getNumberOfCameras()I
.end method

.method public abstract getOrientationOnTake()I
.end method

.method public abstract getOriginalViewFinderHeight()I
.end method

.method public abstract getOriginalViewFinderWidth()I
.end method

.method public abstract getPreviewHeight()I
.end method

.method public abstract getPreviewWidth()I
.end method

.method public abstract getRemainTime()I
.end method

.method public abstract getTouchAeLockState()I
.end method

.method public abstract getVideoBitRateFromProfile()I
.end method

.method public abstract getVideoFileDescriptor()Landroid/os/ParcelFileDescriptor;
.end method

.method public abstract getViewAngle()[F
.end method

.method public abstract handleBurstShutterPressed()V
.end method

.method public abstract handleBurstShutterReleased(I)V
.end method

.method public abstract handleSingleShutterReleased(I)V
.end method

.method public abstract handleTimer(I)Z
.end method

.method public abstract insertUTCToSEF(JLjava/io/File;)V
.end method

.method public abstract isAutoFocusSupported()Z
.end method

.method public abstract isAutoFocusing()Z
.end method

.method public abstract isBurstCaptureAvailableFPS()Z
.end method

.method public abstract isChangeParametersRequested()Z
.end method

.method public abstract isConstantGrowthRateZoomSupported()Z
.end method

.method public abstract isContinuousAutoFocusSupported()Z
.end method

.method public abstract isCurrentState(I)Z
.end method

.method public abstract isEffectProcessing()Z
.end method

.method public abstract isEmptyRequestQueue()Z
.end method

.method public abstract isEngineStarted()Z
.end method

.method public abstract isFinishOneShotPreviewCallback()Z
.end method

.method public abstract isFlashConditionDetected()Z
.end method

.method public abstract isHalfShutter()Z
.end method

.method public abstract isLastContentVideoType()Z
.end method

.method public abstract isLowLightDetected()Z
.end method

.method public abstract isObjectTrackingAFStarted()Z
.end method

.method public abstract isPreviewStarted()Z
.end method

.method public abstract isProgressWheelTimer()Z
.end method

.method public abstract isRawPictureFormatEnabled()Z
.end method

.method public abstract isRecorderStarting()Z
.end method

.method public abstract isRecorderStopping()Z
.end method

.method public abstract isRecording()Z
.end method

.method public abstract isRecordingForcedToStop()Z
.end method

.method public abstract isStartingEngine()Z
.end method

.method public abstract isStartingPreview()Z
.end method

.method public abstract isStopPreviewPending()Z
.end method

.method public abstract isSwitchToCamcorderPreview()Z
.end method

.method public abstract isSwitchToCameraPreview()Z
.end method

.method public abstract isSwitchingCamera()Z
.end method

.method public abstract isThumbnailPictureCallbackAvailable()Z
.end method

.method public abstract isTimerCounting()Z
.end method

.method public abstract isTouchAEProcessing()Z
.end method

.method public abstract isWideSelfieStopping()Z
.end method

.method public abstract lockAE()V
.end method

.method public abstract lockAEAWB()V
.end method

.method public abstract lockAWB()V
.end method

.method public abstract onPause()V
.end method

.method public abstract onResume()V
.end method

.method public abstract progressWheelTimerCompleted()V
.end method

.method public abstract registerRequestQueueEmptyListener(Lcom/sec/android/app/camera/interfaces/Engine$OnRequestQueueEmptyListener;)V
.end method

.method public abstract removeAfRequest()V
.end method

.method public abstract removeResetTouchFocusMessage()V
.end method

.method public abstract removeTouchAeRequest()V
.end method

.method public abstract renamePostSavingFile(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract requestBurstCaptureString()V
.end method

.method public abstract resetOriginalViewFinderSize()V
.end method

.method public abstract resetTouchAeParameter(Z)V
.end method

.method public abstract resetTouchFocus()V
.end method

.method public abstract resumeMultiTrackRecording()V
.end method

.method public abstract scheduleActivateShootingMode()V
.end method

.method public abstract scheduleAutoFocus()V
.end method

.method public abstract scheduleCancelVideoRecording()V
.end method

.method public abstract scheduleChangeParameter(II)V
.end method

.method public abstract scheduleHideCoverCamera()V
.end method

.method public abstract scheduleInitializeSemCameraListener()V
.end method

.method public abstract schedulePauseMultiTrackRecording()V
.end method

.method public abstract schedulePauseVideoRecording()V
.end method

.method public abstract schedulePrepareMultiTrackRecording()V
.end method

.method public abstract schedulePrepareVideoRecording()V
.end method

.method public abstract scheduleReleaseShootingModeRecordKey()V
.end method

.method public abstract scheduleRequestNotifyPreviewStarted()V
.end method

.method public abstract scheduleResetSettings()V
.end method

.method public abstract scheduleResumeMultiTrackRecording()V
.end method

.method public abstract scheduleResumeVideoRecording()V
.end method

.method public abstract scheduleSetAllParameters()V
.end method

.method public abstract scheduleSetCamcorderPreviewParameters()V
.end method

.method public abstract scheduleSetDualEffectLayerOrder()V
.end method

.method public abstract scheduleSetEffectParameter(Ljava/lang/String;)V
.end method

.method public abstract scheduleSetOneShotPreviewCallback()V
.end method

.method public abstract scheduleSetShootingMode()V
.end method

.method public abstract scheduleSetShutterSound(I)V
.end method

.method public abstract scheduleStandbyPreview()V
.end method

.method public abstract scheduleStartEngine()V
.end method

.method public abstract scheduleStartMotionPanorama()V
.end method

.method public abstract scheduleStartMotionWideSelfie()V
.end method

.method public abstract scheduleStartMultiTrackRecording()V
.end method

.method public abstract scheduleStartPanorama()V
.end method

.method public abstract scheduleStartPreview()V
.end method

.method public abstract scheduleStartShotAndMore()V
.end method

.method public abstract scheduleStartShutterTimer(I)V
.end method

.method public abstract scheduleStartVideoRecording()V
.end method

.method public abstract scheduleStartVirtualShot()V
.end method

.method public abstract scheduleStartWideSelfie()V
.end method

.method public abstract scheduleStopAndRestartVideoRecording()V
.end method

.method public abstract scheduleStopEngine()V
.end method

.method public abstract scheduleStopMotionPanorama()V
.end method

.method public abstract scheduleStopMotionWideSelfie()V
.end method

.method public abstract scheduleStopMultiTrackRecording()V
.end method

.method public abstract scheduleStopPanorama()V
.end method

.method public abstract scheduleStopPreview()V
.end method

.method public abstract scheduleStopShotAndMore()V
.end method

.method public abstract scheduleStopVideoRecordingAsync()V
.end method

.method public abstract scheduleStopVirtualShot()V
.end method

.method public abstract scheduleStopWideSelfie()V
.end method

.method public abstract scheduleSwitchCamera()V
.end method

.method public abstract scheduleSwitchToCamcorderPreview()V
.end method

.method public abstract scheduleSwitchToCameraPreview()V
.end method

.method public abstract scheduleTakePicture()V
.end method

.method public abstract scheduleTouchAE(I)V
.end method

.method public abstract scheduleWait(I)V
.end method

.method public abstract searchLastImageContentUri()V
.end method

.method public abstract sendOrientationInfoToHAL()V
.end method

.method public abstract setAEAWBLockParameter(Z)V
.end method

.method public abstract setAddressValue(Ljava/lang/String;)V
.end method

.method public abstract setAntiFogLevelSync(I)V
.end method

.method public abstract setAntiFogListener(Lcom/samsung/android/camera/core/SemCamera$HazeRemovalEventListener;)V
.end method

.method public abstract setAutoFocusListener(Lcom/sec/android/app/camera/interfaces/Engine$AutoFocusListener;)V
.end method

.method public abstract setBeautyListener(Lcom/samsung/android/camera/core/SemCamera$BeautyEventListener;)V
.end method

.method public abstract setBurstCaptureEventListener(Lcom/sec/android/app/camera/interfaces/Engine$BurstCaptureEventListener;)V
.end method

.method public abstract setBurstCaptureSound(I)V
.end method

.method public abstract setBurstCaptureStoringFilePath(Ljava/lang/String;)V
.end method

.method public abstract setCameraCurrentSettingListener(Lcom/samsung/android/camera/core/SemCamera$CameraSensorDataListener;)V
.end method

.method public abstract setCameraPreviewParameters()V
.end method

.method public abstract setCaptureFlipPhotoMode()V
.end method

.method public abstract setDualEffectLayerOrder()V
.end method

.method public abstract setDualEffectSync(I)V
.end method

.method public abstract setEffectOrientationSync(I)V
.end method

.method public abstract setEffectParameter(Ljava/lang/String;)V
.end method

.method public abstract setEffectParameter(Ljava/lang/String;I)V
.end method

.method public abstract setEffectProcessorListener(Lcom/sec/android/app/camera/interfaces/Engine$EffectProcessorListener;)V
.end method

.method public abstract setEffectVisibleForRecording(Z)V
.end method

.method public abstract setEngineStateListener(Lcom/sec/android/app/camera/interfaces/Engine$EngineStateListener;)V
.end method

.method public abstract setEyeEnlargeLevelSync(I)V
.end method

.method public abstract setFaceDistortionCompensation(Z)V
.end method

.method public abstract setFaceRelight(Z)V
.end method

.method public abstract setFaceRetouchLevelSync(I)V
.end method

.method public abstract setFlashConditionDetected(Z)V
.end method

.method public abstract setFlashMode(Ljava/lang/String;)V
.end method

.method public abstract setFocusMode(I)V
.end method

.method public abstract setFoodBlurPosition(II)V
.end method

.method public abstract setFoodShotEventListener(Lcom/samsung/android/camera/core/SemCamera$FoodShotEventListener;)V
.end method

.method public abstract setFrontSensorMirror(I)V
.end method

.method public abstract setGestureControlMode(I)V
.end method

.method public abstract setHalfShutter(Z)V
.end method

.method public abstract setImageContentsLoggingListener(Lcom/sec/android/app/camera/interfaces/Engine$ImageContentsLoggingListener;)V
.end method

.method public abstract setLastContentData(Lcom/sec/android/app/camera/util/ContentData;)V
.end method

.method public abstract setLastContentFilePath(Ljava/lang/String;)V
.end method

.method public abstract setLastContentOrientation(I)V
.end method

.method public abstract setLastContentTitle(Ljava/lang/String;)V
.end method

.method public abstract setLastContentUri(Landroid/net/Uri;)V
.end method

.method public abstract setLowLightEventListener(Lcom/sec/android/app/camera/interfaces/Engine$LowLightEventListener;)V
.end method

.method public abstract setMaxVideoFileSize()V
.end method

.method public abstract setMediaRecorderListener(Ljava/lang/Object;)V
.end method

.method public abstract setMotionPanoramaListener(Lcom/samsung/android/camera/core/SemCamera$MotionPanoramaEventListener;)V
.end method

.method public abstract setMotionWideSelfieListener(Lcom/samsung/android/camera/core/SemCamera$WideMotionSelfieEventListener;)V
.end method

.method public abstract setMultiFrameEventListener(Lcom/sec/android/app/camera/interfaces/Engine$MultiFrameEventListener;)V
.end method

.method public abstract setMultiTrackMode(Z)V
.end method

.method public abstract setNightShot(I)V
.end method

.method public abstract setOriginalViewFinderHeight(I)V
.end method

.method public abstract setOriginalViewFinderWidth(I)V
.end method

.method public abstract setOutputFile(Ljava/lang/String;)V
.end method

.method public abstract setPanoramaListener(Lcom/samsung/android/camera/core/SemCamera$PanoramaEventListener;)V
.end method

.method public abstract setPictureTakenListener(Lcom/sec/android/app/camera/interfaces/Engine$PictureTakenListener;)V
.end method

.method public abstract setPrepareDBUpdateListener(Lcom/sec/android/app/camera/interfaces/Engine$DBUpdateListener;)V
.end method

.method public abstract setPrepareImageStoringListener(Lcom/sec/android/app/camera/interfaces/Engine$ImageStoringListener;)V
.end method

.method public abstract setPrepareSetShootingModeListener(Lcom/sec/android/app/camera/interfaces/Engine$PrepareSetShootingModeListener;)V
.end method

.method public abstract setPrepareStartingPreviewListener(Lcom/sec/android/app/camera/interfaces/Engine$PrepareStartingPreviewListener;)V
.end method

.method public abstract setPreviewSurfaceState(I)V
.end method

.method public abstract setProcessorParameter(Ljava/lang/String;)V
.end method

.method public abstract setQRCodeDetectEventListener(Lcom/samsung/android/camera/core/SemCamera$QrCodeDetectionEventListener;)V
.end method

.method public abstract setRecordingEventListener(Lcom/sec/android/app/camera/interfaces/Engine$RecordingEventListener;)V
.end method

.method public abstract setRelightEventListener(Lcom/samsung/android/camera/core/SemCamera$RelightEventListener;)V
.end method

.method public abstract setRichToneListener(Lcom/samsung/android/camera/core/SemCamera$HdrEventListener;)V
.end method

.method public abstract setRichToneMode(Z)V
.end method

.method public abstract setRichTonePictureMode(I)V
.end method

.method public abstract setScreenFlashEventListener(Lcom/sec/android/app/camera/interfaces/Engine$ScreenFlashEventListener;)V
.end method

.method public abstract setSecImagingEventListener(Lcom/samsung/android/camera/core/SemCamera$ImageEffectEventListener;)V
.end method

.method public abstract setSelectiveFocusListener(Lcom/samsung/android/camera/core/SemCamera$SelectiveFocusEventListener;)V
.end method

.method public abstract setShootingMode(I)V
.end method

.method public abstract setShotAndMoreEventListener(Lcom/samsung/android/camera/core/SemCamera$ShotAndMoreEventListener;)V
.end method

.method public abstract setShutterEventListener(Lcom/sec/android/app/camera/interfaces/Engine$ShutterEventListener;)V
.end method

.method public abstract setShutterSound(I)V
.end method

.method public abstract setSingleCaptureEventListener(Lcom/sec/android/app/camera/interfaces/Engine$SingleCaptureEventListener;)V
.end method

.method public abstract setSkinColorLevelSync(I)V
.end method

.method public abstract setSlimFaceLevelSync(I)V
.end method

.method public abstract setSlowMotionEventListener(Lcom/samsung/android/camera/core/SemCamera$SlowMotionEventListener;)V
.end method

.method public abstract setSpotlightLevelSync(I)V
.end method

.method public abstract setSpotlightPosition(II)V
.end method

.method public abstract setSuperResolutionZoomEventListener(Lcom/sec/android/app/camera/interfaces/Engine$SuperResolutionZoomEventListener;)V
.end method

.method public abstract setTimerEventListener(Lcom/sec/android/app/camera/interfaces/Engine$TimerEventListener;)V
.end method

.method public abstract setTouchAeLockState(I)V
.end method

.method public abstract setTouchFocusPosition(II)V
.end method

.method public abstract setVideoContentsLoggingListener(Lcom/sec/android/app/camera/interfaces/Engine$VideoContentsLoggingListener;)V
.end method

.method public abstract setVideoFilePath(Ljava/lang/String;)V
.end method

.method public abstract setVideoFilename(Ljava/lang/String;)V
.end method

.method public abstract setVirtualShotListener(Lcom/samsung/android/camera/core/SemCamera$InteractiveShotEventListener;)V
.end method

.method public abstract setWatermarkPosition(II)V
.end method

.method public abstract setWideSelfieListener(Lcom/samsung/android/camera/core/SemCamera$WideSelfieEventListener;)V
.end method

.method public abstract setZoomValue(I)V
.end method

.method public abstract startDualCamera()V
.end method

.method public abstract startFaceDetection()V
.end method

.method public abstract startMotionPhoto()V
.end method

.method public abstract startObjectTrackingAF(FF)V
.end method

.method public abstract startQRCodeDetection()V
.end method

.method public abstract startResetTouchAeTimer()V
.end method

.method public abstract startResetTouchFocusTimer()V
.end method

.method public abstract startThumbnailPreviewCallback()V
.end method

.method public abstract startZoom()V
.end method

.method public abstract stopDualCamera()V
.end method

.method public abstract stopFaceDetection()V
.end method

.method public abstract stopMotionPhoto()V
.end method

.method public abstract stopMotionWideSelfie()V
.end method

.method public abstract stopMultiTrackRecording()V
.end method

.method public abstract stopObjectTrackingAF()V
.end method

.method public abstract stopPanorama()V
.end method

.method public abstract stopPreview()V
.end method

.method public abstract stopQRCodeDetection()V
.end method

.method public abstract stopThumbnailPreviewCallback()V
.end method

.method public abstract stopTouchAutoFocus()V
.end method

.method public abstract stopVideoRecordingForced()V
.end method

.method public abstract stopWideSelfie()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract stopZoom()V
.end method

.method public abstract switchVideoCollageCamera()V
.end method

.method public abstract terminateBurstCapture()V
.end method

.method public abstract unlockAEAWB()V
.end method

.method public abstract unlockAWB()V
.end method

.method public abstract unregisterRequestQueueEmptyListener(Lcom/sec/android/app/camera/interfaces/Engine$OnRequestQueueEmptyListener;)V
.end method

.method public abstract waitForEngineStartingThread()V
.end method

.method public abstract waitForMotionPanoramaStartThreadComplete()V
.end method

.method public abstract waitForMotionWideSelfieStartThreadComplete()V
.end method

.method public abstract waitForPanoramaStartThreadComplete()V
.end method

.method public abstract waitForPictureSavingThread()V
.end method

.method public abstract waitForPrepareAndStartRecordingThreadComplete()V
.end method

.method public abstract waitForStartPreviewThreadComplete()V
.end method

.method public abstract waitForStopRecordingThreadComplete()V
.end method

.method public abstract waitForUpdateThumbnailThreadComplete()V
.end method

.method public abstract waitForWideSelfieStartThreadComplete()V
.end method
