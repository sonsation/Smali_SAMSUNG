.class public interface abstract Lcom/sec/android/app/camera/interfaces/CameraContext;
.super Ljava/lang/Object;
.source "CameraContext.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/ActivityContext;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/interfaces/CameraContext$PhaseAFListener;,
        Lcom/sec/android/app/camera/interfaces/CameraContext$MultiAFListener;,
        Lcom/sec/android/app/camera/interfaces/CameraContext$PreviewSizeChangedListener;,
        Lcom/sec/android/app/camera/interfaces/CameraContext$LayoutChangedListener;,
        Lcom/sec/android/app/camera/interfaces/CameraContext$HardwareFaceDetectionListener;,
        Lcom/sec/android/app/camera/interfaces/CameraContext$HRMShutterListener;,
        Lcom/sec/android/app/camera/interfaces/CameraContext$FocusStateListener;,
        Lcom/sec/android/app/camera/interfaces/CameraContext$FaceDetectionListener;,
        Lcom/sec/android/app/camera/interfaces/CameraContext$CameraDialogListener;
    }
.end annotation


# static fields
.field public static final ACCESSIBILITY_GUIDE_DLG:I = 0x1d2

.field public static final CAMERA_BUSY_DLG:I = 0x1dc

.field public static final CAPTURE_METHOD_BUTTON:I = 0x1

.field public static final CAPTURE_METHOD_HRM_SHUTTER:I = 0x6

.field public static final CAPTURE_METHOD_PALM_DETECTION:I = 0x5

.field public static final CAPTURE_METHOD_SCREEN_TOUCH:I = 0x4

.field public static final CAPTURE_METHOD_VOICE_COMMAND:I = 0x3

.field public static final CAPTURE_METHOD_VOLUME_KEY:I = 0x2

.field public static final CHANGE_DEFAULT_STORAGE_DLG:I = 0x1d6

.field public static final CHANGE_STORAGE_SETTING_DLG:I = 0x194

.field public static final CHECK_INSIDE_POCKET_DLG:I = 0x1e2

.field public static final CHECK_POCKET_FINISH_CAMERA_MSG:I = 0x28

.field public static final CONFIRM_RESET_DLG:I = 0x197

.field public static final DEFAULT_DLG:I = 0x64

.field public static final FINISH_ON_ERROR_DLG:I = 0x190

.field public static final FOCUS_STATE_FOCUSING:I = 0x1

.field public static final FOCUS_STATE_IDLE:I = 0x0

.field public static final GPS_EULA_CHINA_DLG:I = 0x1a1

.field public static final GPS_EULA_CHINA_DLG_FROM_SETTING:I = 0x1a3

.field public static final GPS_EULA_DLG:I = 0x1a0

.field public static final GPS_EULA_DLG_FROM_SETTING:I = 0x1a2

.field public static final INVALID_FIRMWARE_VERSION_DLG:I = 0x199

.field public static final KEY_FROM_APP:Ljava/lang/String; = "from_app"

.field public static final KEY_QUICK_VIEW:Ljava/lang/String; = "quickview"

.field public static final KEY_REVIEW_ON:Ljava/lang/String; = "reviewon"

.field public static final LOCATION_TAG_GUIDE:I = 0x19c

.field public static final LOCATION_TAG_GUIDE_FIRST_LAUNCH_CAMERA:I = 0x19d

.field public static final LOCATION_TAG_GUIDE_FROM_SETTING:I = 0x19f

.field public static final LOCATION_TAG_GUIDE_LAUNCH_CAMERA:I = 0x19e

.field public static final LOW_BATTERY_DLG:I = 0x1a4

.field public static final LOW_MEMORY_CRITICAL:I = 0xb

.field public static final LOW_MEMORY_WARNING:I = 0xa

.field public static final NETWORK_ENABLE_PERMISSION_DLG:I = 0x1e7

.field public static final NUM_OF_SOUND_ID:I = 0x11

.field public static final OPEN_FLIP_DLG:I = 0x195

.field public static final OVERHEAT_DLG:I = 0x1a6

.field public static final PLUGGED_LOW_BATTERY_DLG:I = 0x1a5

.field public static final QUICK_LAUNCH_DLG:I = 0x1d7

.field public static final REQUEST_ANIMATEDGIF_IMAGE:I = 0x7e8

.field public static final REQUEST_ATTACH_IMAGE:I = 0x7d1

.field public static final REQUEST_ATTACH_VIDEO:I = 0x7d2

.field public static final REQUEST_COVER_GALLERY:I = 0x7e1

.field public static final REQUEST_DRAMA_POST:I = 0x7e0

.field public static final REQUEST_LOCATION_PERMISSION:I = 0x7ea

.field public static final REQUEST_MORE_SETTING:I = 0x7e6

.field public static final REQUEST_SAMSUNG_APPS:I = 0x7df

.field public static final REQUEST_SEPARATED_SHOOTINGMODE:I = 0x7e3

.field public static final REQUEST_SHOT_AND_MORE_POST:I = 0x7e2

.field public static final REQUEST_STORAGE_MANAGER:I = 0x7e7

.field public static final REQUEST_UNINSTALL_EFFECT:I = 0x7eb

.field public static final REQUEST_VIDEO_COLLAGE_POST:I = 0x7e9

.field public static final REQUEST_WATERMARK_INPUT_TEXT:I = 0x7d3

.field public static final REQUEST_WECHATSIGHT_SHOOTINGMODE:I = 0x7e4

.field public static final RUNTIME_PERMISSIONS_DLG_ON_SECURE_LOCK:I = 0x1e1

.field public static final RUNTIME_PERMISSIONS_DLG_ON_SECURE_LOCK_IN_VIDEO_COLLAGE:I = 0x1e3

.field public static final RUNTIME_PERMISSION_DLG:I = 0x1e0

.field public static final RUNTIME_PERMISSION_LOCATION_DLG:I = 0x1e8

.field public static final SECURE_LOCK_IN_CONTACT_US:I = 0x1d8

.field public static final SECURE_LOCK_IN_DOWNLOAD_EFFECT:I = 0x1da

.field public static final SECURE_LOCK_IN_DOWNLOAD_SHOOTINGMODE:I = 0x1db

.field public static final SECURE_LOCK_IN_SHOOTINGMODE_SEPARATED:I = 0x1d9

.field public static final SHOOTING_MODE_INVALID_DEVICE_VERSION_DLG:I = 0xc9

.field public static final SHOOTING_MODE_INVALID_VERSION_DLG:I = 0xc8

.field public static final SHOOTING_MODE_UPDATED_MSG:I = 0x1f

.field public static final SOUND_ID_ANIMATEDGIF_SHUTTER:I = 0xc

.field public static final SOUND_ID_BURST_SHUTTER_HIGH_SPEED:I = 0x10

.field public static final SOUND_ID_BURST_SHUTTER_LOW_SPEED:I = 0xf

.field public static final SOUND_ID_LONG_EXPOSURE_SHUTTER_START:I = 0xd

.field public static final SOUND_ID_LONG_EXPOSURE_SHUTTER_STOP:I = 0xe

.field public static final SOUND_ID_PANORAMA_END:I = 0x3

.field public static final SOUND_ID_PANORAMA_START:I = 0x2

.field public static final SOUND_ID_PANORAMA_WARNING:I = 0x4

.field public static final SOUND_ID_RECORDING_START:I = 0x8

.field public static final SOUND_ID_RECORDING_STOP:I = 0x9

.field public static final SOUND_ID_SELFSHOT:I = 0x6

.field public static final SOUND_ID_SHORT_SINGLE_SHUTTER:I = 0x1

.field public static final SOUND_ID_SHOT_AND_MORE_END:I = 0x0

.field public static final SOUND_ID_SHOT_AND_MORE_START:I = 0x5

.field public static final SOUND_ID_SINGLE_SHUTTER:I = 0x0

.field public static final SOUND_ID_TIMER:I = 0xa

.field public static final SOUND_ID_TIMER_2SEC:I = 0xb

.field public static final SOUND_ID_WIDESELFIE_OVER_BOUNDARY:I = 0x7

.field public static final START_GESTURE_CONTROL_SHOT_MSG:I = 0x23

.field public static final STORAGE_STATUS_DLG:I = 0x191

.field public static final STORAGE_STATUS_LOW:I = 0x1

.field public static final STORAGE_STATUS_NONE:I = 0x2

.field public static final STORAGE_STATUS_OK:I = 0x0

.field public static final SUB_MENU_SOUND:I = 0x0

.field public static final TAG_SHOT_ENABLE_LOCATION_DLG:I = 0x1e6

.field public static final TAG_SHOT_FIRST_LAUNCH_DLG:I = 0x1e5

.field public static final TALK_BACK_GUIDE_DLG:I = 0x1d1

.field public static final UNABLE_TO_USE_CAMERA_DURING_CALL_DLG:I = 0x193

.field public static final UNABLE_TO_USE_CAMERA_DURING_VIDEOCALL_DLG:I = 0x192

.field public static final UNAVAILABLE_HRM_CAPTURE_GUIDE_DLG:I = 0x1e4

.field public static final VIDEO_COLLAGE_CANCEL_OR_DISCARD_RECORDING_DLG:I = 0x1df

.field public static final VIDEO_COLLAGE_DISCARD_OR_SAVE_RECORDING_DLG:I = 0x1dd

.field public static final VIDEO_COLLAGE_EXIST_SAVE_PROJECT_DLG:I = 0x1de

.field public static final VIDEO_STABILIZATION_DLG:I = 0x1ae


# virtual methods
.method public abstract addButtonToDimController(Lcom/samsung/android/glview/GLView;)V
.end method

.method public abstract addSnapshotUriListInSecureCamera(Landroid/net/Uri;)V
.end method

.method public abstract addUriListInSecureCamera(Landroid/net/Uri;)V
.end method

.method public abstract addUriListInSecureCamera(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract checkFlashRestriction()V
.end method

.method public abstract disableFaceRect(Z)V
.end method

.method public abstract dismissCameraDialog(I)V
.end method

.method public abstract finishOnError(I)V
.end method

.method public abstract getAvailableStorage()J
.end method

.method public abstract getBackgroundHandler()Landroid/os/Handler;
.end method

.method public abstract getBatteryLevel()I
.end method

.method public abstract getBrightnessValue()J
.end method

.method public abstract getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;
.end method

.method public abstract getChkKeyFromApp()Ljava/lang/String;
.end method

.method public abstract getCommandReceiver()Lcom/sec/android/app/camera/interfaces/CommandInterface;
.end method

.method public abstract getCoverRecordingState()Z
.end method

.method public abstract getCurrentLocation()Landroid/location/Location;
.end method

.method public abstract getCurrentTouchAfAePosition()Landroid/graphics/Point;
.end method

.method public abstract getCurrentWindowHeight()I
.end method

.method public abstract getCurrentWindowOrientation()I
.end method

.method public abstract getCurrentWindowWidth()I
.end method

.method public abstract getFaceCount()I
.end method

.method public abstract getFocusState()I
.end method

.method public abstract getGLSurfaceView()Landroid/opengl/GLSurfaceView;
.end method

.method public abstract getImageIDListHaveAddress()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLastTouchAfAePosition()Landroid/graphics/Point;
.end method

.method public abstract getLatestMedia()Lcom/sec/android/app/camera/util/LatestMedia;
.end method

.method public abstract getMainHandler()Landroid/os/Handler;
.end method

.method public abstract getMemoryStatus()I
.end method

.method public abstract getObjectTrackingRect()Landroid/graphics/Rect;
.end method

.method public abstract getPreviewAspectRatio()D
.end method

.method public abstract getPreviewSurfaceRect()Landroid/graphics/Rect;
.end method

.method public abstract getRemainCount()I
.end method

.method public abstract getRemainCount(I)I
.end method

.method public abstract getRemainRecordingTime()I
.end method

.method public abstract getShootingModeFeature()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
.end method

.method public abstract getStorageStatus(I)I
.end method

.method public abstract getUriListInSecureCamera()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getVideoIDListHaveAddress()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;
.end method

.method public abstract handleCoverCameraChanged(Z)V
.end method

.method public abstract handleCoverCameraClosed()V
.end method

.method public abstract handleKeyCancelled(I)V
.end method

.method public abstract handleShapeCorrectionModeChanged(I)V
.end method

.method public abstract handleShootingModeChanged(I)V
.end method

.method public abstract hideCoverCamera()V
.end method

.method public abstract installShootingModeShortcut(ILjava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract installShootingModeShortcut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract isAASManagerAvailable()Z
.end method

.method public abstract isBargeInEnabled()Z
.end method

.method public abstract isBatteryCharging()Z
.end method

.method public abstract isBurstCaptureAvailable()Z
.end method

.method public abstract isCameraDialogVisible(I)Z
.end method

.method public abstract isCapturing()Z
.end method

.method public abstract isCoverOpen()Z
.end method

.method public abstract isDivideAFDrag()Z
.end method

.method public abstract isDivideAFStarted()Z
.end method

.method public abstract isExternalMemoryAvailable()Z
.end method

.method public abstract isFromLockScreen()Z
.end method

.method public abstract isGPSProviderEnabled()Z
.end method

.method public abstract isImageCaptureIntent()Z
.end method

.method public abstract isLaunchGallery()Z
.end method

.method public abstract isLauncherCameraIntent()Z
.end method

.method public abstract isLowLightDetected()Z
.end method

.method public abstract isMicrophoneEnabled()Z
.end method

.method public abstract isMicrophonePlugged()Z
.end method

.method public abstract isNetworkLocationProviderEnabled()Z
.end method

.method public abstract isObjectTrackingEnabled()Z
.end method

.method public abstract isPopupCallSupported()Z
.end method

.method public abstract isScreenFlashAvailable()Z
.end method

.method public abstract isShootingModeActivated()Z
.end method

.method public abstract isShutterPressed()Z
.end method

.method public abstract isSquarePreviewAspectRatio()Z
.end method

.method public abstract isTouchAEDrag()Z
.end method

.method public abstract isTouchAutoFocusActive()Z
.end method

.method public abstract isTouchAutoFocusArea(II)Z
.end method

.method public abstract isTouchEVSupported()Z
.end method

.method public abstract isTouchToCaptureStarted()Z
.end method

.method public abstract isVideoCaptureIntent()Z
.end method

.method public abstract isWidePreviewAspectRatio()Z
.end method

.method public abstract isZoomAvailable()Z
.end method

.method public abstract needToResizeForCamcorderPreviewAspectRatio()Z
.end method

.method public abstract needToResizeForCameraPreviewAspectRatio()Z
.end method

.method public abstract onImageStoringCompleted()V
.end method

.method public abstract onLaunchGallery(Ljava/lang/String;)Z
.end method

.method public abstract onMultiFrameShotReset()V
.end method

.method public abstract onMultiFrameShotStarted()V
.end method

.method public abstract onRecordingPrepareStarted()V
.end method

.method public abstract onRecordingStopped()V
.end method

.method public abstract onShootingModeRecordKeyReleased()V
.end method

.method public abstract onStartingPreviewCompleted()V
.end method

.method public abstract onSwitchCameraCompleted()V
.end method

.method public abstract onSwitchCameraIdCompleted()V
.end method

.method public abstract onSwitchCameraSelected()V
.end method

.method public abstract onVideoStoringCompleted(Landroid/net/Uri;)V
.end method

.method public abstract playCameraSound(II)V
.end method

.method public abstract playSound(II)V
.end method

.method public abstract registerHRMShutterListener(Lcom/sec/android/app/camera/interfaces/CameraContext$HRMShutterListener;)V
.end method

.method public abstract registerLayoutChangedListener(Lcom/sec/android/app/camera/interfaces/CameraContext$LayoutChangedListener;)V
.end method

.method public abstract registerMultiAFListener(Lcom/sec/android/app/camera/interfaces/CameraContext$MultiAFListener;)V
.end method

.method public abstract registerPhaseAFListener(Lcom/sec/android/app/camera/interfaces/CameraContext$PhaseAFListener;)V
.end method

.method public abstract registerPreviewSizeChangedListener(Lcom/sec/android/app/camera/interfaces/CameraContext$PreviewSizeChangedListener;)V
.end method

.method public abstract removeAFmessage()V
.end method

.method public abstract removeButtonFromDimController(Lcom/samsung/android/glview/GLView;)V
.end method

.method public abstract removeHideFaceRectMessage()V
.end method

.method public abstract removeHideTouchEVMessage()V
.end method

.method public abstract removeMSGToStopTouchAE()V
.end method

.method public abstract resetFaceRect()V
.end method

.method public abstract resetPosIndicator()V
.end method

.method public abstract resetTouchAE(Z)V
.end method

.method public abstract resetTouchFocus()V
.end method

.method public abstract resizePreviewAspectRatio(I)Z
.end method

.method public abstract restartHideTouchEVMessage()V
.end method

.method public abstract restartInactivityTimer()V
.end method

.method public abstract restartTouchAF()V
.end method

.method public abstract restorePreviousShootingMode()V
.end method

.method public abstract sendBroadcastChangeSettings(II)V
.end method

.method public abstract sendBroadcastChangeSettings(ILjava/lang/String;)V
.end method

.method public abstract sendBroadcastChangeSettings(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setButtonDim(II)V
.end method

.method public abstract setCameraDialogListener(Lcom/sec/android/app/camera/interfaces/CameraContext$CameraDialogListener;)V
.end method

.method public abstract setCoverRecordingState(Z)V
.end method

.method public abstract setDivideAFStarted(Z)V
.end method

.method public abstract setFaceDetectionListener(Lcom/sec/android/app/camera/interfaces/CameraContext$FaceDetectionListener;)V
.end method

.method public abstract setFocusChangeListener(Lcom/sec/android/app/camera/interfaces/CameraContext$FocusStateListener;)V
.end method

.method public abstract setFocusState(I)V
.end method

.method public abstract setHardwareFaceDetectionListener(Lcom/sec/android/app/camera/interfaces/CameraContext$HardwareFaceDetectionListener;)V
.end method

.method public abstract setLCDFlashMode(Z)V
.end method

.method public abstract setStorageStatus(I)V
.end method

.method public abstract setTouchAutoFocusActive(Z)V
.end method

.method public abstract setTouchToCaptureStarted(Z)V
.end method

.method public abstract showApplicationDisabledPopup(Ljava/lang/String;)V
.end method

.method public abstract showCameraDialog(I)V
.end method

.method public abstract showCameraDialog(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract showEffectLayout(Z)V
.end method

.method public abstract showNoImagePopup()V
.end method

.method public abstract showSideQuickSettingToast(Ljava/lang/String;)V
.end method

.method public abstract startAttachActivity()V
.end method

.method public abstract startShareActivity(Landroid/net/Uri;)V
.end method

.method public abstract startVoiceRecognizer()V
.end method

.method public abstract startWechatSightMode()V
.end method

.method public abstract stopAFWaitTimer()V
.end method

.method public abstract stopCameraSound(I)V
.end method

.method public abstract stopInactivityTimer()V
.end method

.method public abstract stopSound(I)V
.end method

.method public abstract stopVoiceRecognizer()V
.end method

.method public abstract switchToRecordingMode()V
.end method

.method public abstract uninstallExternalEffectPackage(Ljava/lang/String;I)V
.end method

.method public abstract uninstallShootingModePackage(Ljava/lang/String;)V
.end method

.method public abstract uninstallShootingModeShortcut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract unregisterHRMShutterListener()V
.end method

.method public abstract unregisterLayoutChangedListener(Lcom/sec/android/app/camera/interfaces/CameraContext$LayoutChangedListener;)V
.end method

.method public abstract unregisterMultiAFListener()V
.end method

.method public abstract unregisterPhaseAFListener()V
.end method

.method public abstract unregisterPreviewSizeChangedListener(Lcom/sec/android/app/camera/interfaces/CameraContext$PreviewSizeChangedListener;)V
.end method

.method public abstract updateIfResolutionChanged()V
.end method

.method public abstract updateLatestMedia()V
.end method

.method public abstract updateRemainCounter()V
.end method

.method public abstract updateSecureUriList()V
.end method

.method public abstract updateStorage(Z)V
.end method

.method public abstract updateThumbnail()V
.end method

.method public abstract updateThumbnail(Landroid/graphics/Bitmap;IZ)V
.end method

.method public abstract updateTouchAEPosition(IIZ)Z
.end method

.method public abstract updateUIWhenResetSettings()V
.end method
