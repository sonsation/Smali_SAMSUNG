.class Lcom/sec/android/app/camera/DimController$DimArray;
.super Ljava/lang/Object;
.source "DimController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/DimController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DimArray"
.end annotation


# instance fields
.field private mChangeArray:[Z

.field private mDimArray:[Z

.field private final mMenuId:I

.field final synthetic this$0:Lcom/sec/android/app/camera/DimController;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/DimController;I)V
    .locals 4

    const/4 v3, 0x0

    const/16 v2, 0x24

    iput-object p1, p0, Lcom/sec/android/app/camera/DimController$DimArray;->this$0:Lcom/sec/android/app/camera/DimController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v1, v2, [Z

    iput-object v1, p0, Lcom/sec/android/app/camera/DimController$DimArray;->mDimArray:[Z

    new-array v1, v2, [Z

    iput-object v1, p0, Lcom/sec/android/app/camera/DimController$DimArray;->mChangeArray:[Z

    iput p2, p0, Lcom/sec/android/app/camera/DimController$DimArray;->mMenuId:I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/DimController$DimArray;->mDimArray:[Z

    aput-boolean v3, v1, v0

    iget-object v1, p0, Lcom/sec/android/app/camera/DimController$DimArray;->mChangeArray:[Z

    aput-boolean v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getArray()[Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/DimController$DimArray;->mDimArray:[Z

    return-object v0
.end method

.method public getMenuId()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/DimController$DimArray;->mMenuId:I

    return v0
.end method

.method public getSavedSettingValue(I)I
    .locals 3

    iget-object v2, p0, Lcom/sec/android/app/camera/DimController$DimArray;->this$0:Lcom/sec/android/app/camera/DimController;

    invoke-static {v2}, Lcom/sec/android/app/camera/DimController;->access$000(Lcom/sec/android/app/camera/DimController;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/DimController$SettingValueReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/camera/DimController$SettingValueReference;->getReferenceCount()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/DimController$SettingValueReference;->getSettingsValue()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/DimController$DimArray;->this$0:Lcom/sec/android/app/camera/DimController;

    invoke-static {v2}, Lcom/sec/android/app/camera/DimController;->access$000(Lcom/sec/android/app/camera/DimController;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/camera/DimController$SettingValueReference;->decreaseReferenceCount()V

    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public restoreUserSettingValues(Z)V
    .locals 10

    const/16 v9, 0xaa

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, -0x1

    iget-object v3, p0, Lcom/sec/android/app/camera/DimController$DimArray;->this$0:Lcom/sec/android/app/camera/DimController;

    invoke-static {v3}, Lcom/sec/android/app/camera/DimController;->access$100(Lcom/sec/android/app/camera/DimController;)Lcom/sec/android/app/camera/Camera;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    const/16 v3, 0x24

    if-ge v1, v3, :cond_8

    if-eqz p1, :cond_0

    if-ne v1, v8, :cond_0

    invoke-virtual {p0, v7}, Lcom/sec/android/app/camera/DimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    if-eq v2, v5, :cond_0

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFlashMode(I)V

    :cond_0
    if-eqz p1, :cond_1

    const/16 v3, 0x1f

    if-ne v1, v3, :cond_1

    sget-boolean v3, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_FRONT_FLASH:Z

    if-nez v3, :cond_1

    sget-boolean v3, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SCREEN_FLASH_VI:Z

    if-eqz v3, :cond_1

    invoke-virtual {p0, v9}, Lcom/sec/android/app/camera/DimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    if-eq v2, v5, :cond_1

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFrontFlashMode(I)V

    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/camera/DimController$DimArray;->mChangeArray:[Z

    aget-boolean v3, v3, v1

    if-nez v3, :cond_3

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    :pswitch_1
    const/16 v3, 0xc

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/DimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    if-eq v2, v5, :cond_2

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraHDR(I)V

    goto :goto_1

    :pswitch_2
    const/16 v3, 0xbbf

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/DimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    if-eq v2, v5, :cond_2

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCamcorderAntiShake(I)V

    goto :goto_1

    :pswitch_3
    const/16 v3, 0x75

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/DimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    if-eq v2, v5, :cond_2

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setAntiFogLevel(I)V

    goto :goto_1

    :pswitch_4
    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/DimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    if-eq v2, v5, :cond_2

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getWhiteBalance()I

    move-result v3

    if-nez v3, :cond_4

    invoke-interface {v0, v2, v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraEffect(IZ)V

    goto :goto_1

    :cond_4
    invoke-interface {v0, v6, v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraEffect(IZ)V

    goto :goto_1

    :pswitch_5
    const/16 v3, 0x12

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/DimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    if-eq v2, v5, :cond_2

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setZoomValue(I)V

    goto :goto_1

    :pswitch_6
    if-nez p1, :cond_2

    invoke-virtual {p0, v7}, Lcom/sec/android/app/camera/DimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    if-eq v2, v5, :cond_2

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFlashMode(I)V

    goto :goto_1

    :pswitch_7
    if-nez p1, :cond_2

    sget-boolean v3, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_FRONT_FLASH:Z

    if-nez v3, :cond_2

    sget-boolean v3, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SCREEN_FLASH_VI:Z

    if-eqz v3, :cond_2

    invoke-virtual {p0, v9}, Lcom/sec/android/app/camera/DimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    if-eq v2, v5, :cond_2

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFrontFlashMode(I)V

    goto :goto_1

    :pswitch_8
    const/4 v3, 0x7

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/DimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    if-eq v2, v5, :cond_2

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setExposureValue(I)V

    goto :goto_1

    :pswitch_9
    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/DimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isDualBackCamera()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSupportedBackCameraResolutionFeature(I)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraResolution(I)Z

    goto/16 :goto_1

    :cond_5
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isDualFrontCamera()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSupportedFrontCameraResolutionFeature(I)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraResolution(I)Z

    goto/16 :goto_1

    :cond_6
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isBackCamera()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSupportedBackCameraResolutionFeature(I)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eq v2, v5, :cond_2

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraResolution(I)Z

    goto/16 :goto_1

    :cond_7
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSupportedFrontCameraResolutionFeature(I)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eq v2, v5, :cond_2

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraResolution(I)Z

    goto/16 :goto_1

    :pswitch_a
    const/4 v3, 0x6

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/DimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    if-eq v2, v5, :cond_2

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setTimer(I)V

    goto/16 :goto_1

    :pswitch_b
    const/16 v3, 0x11

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/DimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    if-eq v2, v5, :cond_2

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setReview(I)V

    goto/16 :goto_1

    :pswitch_c
    const/16 v3, 0x16

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/DimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    if-eq v2, v5, :cond_2

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setStorage(I)V

    goto/16 :goto_1

    :pswitch_d
    const/16 v3, 0xbb9

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/DimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    if-eq v2, v5, :cond_2

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCamcorderResolution(I)Z

    goto/16 :goto_1

    :pswitch_e
    const/16 v3, 0x15

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/DimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    if-eq v2, v5, :cond_2

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraShutterSound(I)V

    goto/16 :goto_1

    :pswitch_f
    const/16 v3, 0x26

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/DimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    if-eq v2, v5, :cond_2

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setSelfFlip(I)V

    goto/16 :goto_1

    :pswitch_10
    const/16 v3, 0x47

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/DimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    const-string v3, "DimController"

    const-string v4, "Voice Command"

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v2, v5, :cond_2

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraVoiceCommand(I)V

    goto/16 :goto_1

    :pswitch_11
    const/16 v3, 0x13

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/DimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    if-eq v2, v5, :cond_2

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setGuideline(I)V

    goto/16 :goto_1

    :pswitch_12
    const/16 v3, 0x17

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/DimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    if-eq v2, v5, :cond_2

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setObjectTrackingAF(I)V

    goto/16 :goto_1

    :pswitch_13
    const/16 v3, 0x14

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/DimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    if-eq v2, v5, :cond_2

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setGPS(I)V

    goto/16 :goto_1

    :pswitch_14
    const/16 v3, 0x138

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/DimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    if-eq v2, v5, :cond_2

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setViewMode(I)V

    goto/16 :goto_1

    :pswitch_15
    const/16 v3, 0x7d

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/DimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    if-eq v2, v5, :cond_2

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setGestureControlMode(I)V

    goto/16 :goto_1

    :pswitch_16
    const/16 v3, 0x49

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/DimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    if-eq v2, v5, :cond_2

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setVolumeKeyAs(I)V

    goto/16 :goto_1

    :pswitch_17
    const/16 v3, 0x13b

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/DimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    if-eq v2, v5, :cond_2

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setPictureFormat(I)V

    goto/16 :goto_1

    :pswitch_18
    const/16 v3, 0x13c

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/DimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    if-eq v2, v5, :cond_2

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setQRCodeDetection(I)V

    goto/16 :goto_1

    :pswitch_19
    const/16 v3, 0x73

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/DimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    if-eq v2, v5, :cond_2

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setTapToTakePictures(I)V

    goto/16 :goto_1

    :pswitch_1a
    const/16 v3, 0x74

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/DimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    if-eq v2, v5, :cond_2

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setHRMShutter(I)V

    goto/16 :goto_1

    :pswitch_1b
    const/16 v3, 0x2a

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/DimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    if-eq v2, v5, :cond_2

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setMotionPhoto(I)V

    goto/16 :goto_1

    :pswitch_1c
    const/16 v3, 0x91

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/DimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    if-eq v2, v5, :cond_2

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setMultiAFMode(I)V

    goto/16 :goto_1

    :pswitch_1d
    const/16 v3, 0x33

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/DimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    if-eq v2, v5, :cond_2

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setRearLensDistortionCorrection(I)V

    goto/16 :goto_1

    :pswitch_1e
    const/4 v3, 0x5

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/DimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    if-eq v2, v5, :cond_2

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFocusMode(I)V

    goto/16 :goto_1

    :pswitch_1f
    const/16 v3, 0xb5

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/DimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    if-eq v2, v5, :cond_2

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFloatingCameraButton(I)V

    goto/16 :goto_1

    :cond_8
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_11
        :pswitch_0
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_2
        :pswitch_10
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_12
        :pswitch_0
        :pswitch_0
        :pswitch_16
        :pswitch_3
        :pswitch_17
        :pswitch_1d
        :pswitch_18
        :pswitch_0
        :pswitch_19
        :pswitch_1a
        :pswitch_7
        :pswitch_1b
        :pswitch_1c
        :pswitch_1e
        :pswitch_1f
    .end packed-switch
.end method

.method public saveSetting(II)Z
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/camera/DimController$DimArray;->this$0:Lcom/sec/android/app/camera/DimController;

    invoke-static {v1}, Lcom/sec/android/app/camera/DimController;->access$000(Lcom/sec/android/app/camera/DimController;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/DimController$SettingValueReference;

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/DimController$DimArray;->this$0:Lcom/sec/android/app/camera/DimController;

    invoke-static {v1}, Lcom/sec/android/app/camera/DimController;->access$000(Lcom/sec/android/app/camera/DimController;)Landroid/util/SparseArray;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/DimController$SettingValueReference;

    invoke-direct {v2, p2}, Lcom/sec/android/app/camera/DimController$SettingValueReference;-><init>(I)V

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/camera/DimController$SettingValueReference;->increaseReferenceCount()V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public varargs saveSettingMulti([I)V
    .locals 7

    const/4 v6, 0x1

    array-length v3, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget v1, p1, v2

    iget-object v4, p0, Lcom/sec/android/app/camera/DimController$DimArray;->this$0:Lcom/sec/android/app/camera/DimController;

    invoke-static {v4}, Lcom/sec/android/app/camera/DimController;->access$100(Lcom/sec/android/app/camera/DimController;)Lcom/sec/android/app/camera/Camera;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    if-eqz v0, :cond_0

    if-ltz v1, :cond_0

    const/16 v4, 0x24

    if-lt v1, v4, :cond_1

    :cond_0
    return-void

    :cond_1
    packed-switch v1, :pswitch_data_0

    :cond_2
    :goto_1
    :pswitch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :pswitch_1
    const/16 v4, 0xc

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraHDR()I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSetting(II)Z

    goto :goto_1

    :pswitch_2
    const/16 v4, 0x8

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraSingleEffect()I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSetting(II)Z

    const/16 v4, 0x5a

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraDualEffect()I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSetting(II)Z

    goto :goto_1

    :pswitch_3
    const/16 v4, 0x12

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getZoomValue()I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSetting(II)Z

    goto :goto_1

    :pswitch_4
    const/4 v4, 0x3

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFlashMode()I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSetting(II)Z

    goto :goto_1

    :pswitch_5
    sget-boolean v4, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_FRONT_FLASH:Z

    if-nez v4, :cond_2

    sget-boolean v4, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SCREEN_FLASH_VI:Z

    if-eqz v4, :cond_2

    const/16 v4, 0xaa

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFrontFlashMode()I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSetting(II)Z

    goto :goto_1

    :pswitch_6
    const/4 v4, 0x7

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getExposureValue()I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSetting(II)Z

    goto :goto_1

    :pswitch_7
    const/16 v4, 0x75

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getAntiFogLevel()I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSetting(II)Z

    goto :goto_1

    :pswitch_8
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v4

    if-ne v4, v6, :cond_2

    const/16 v4, 0x7d

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getGestureControlMode()I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSetting(II)Z

    goto :goto_1

    :pswitch_9
    const/4 v4, 0x4

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraResolution()I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSetting(II)Z

    goto :goto_1

    :pswitch_a
    const/4 v4, 0x6

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getTimer()I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSetting(II)Z

    goto :goto_1

    :pswitch_b
    const/16 v4, 0x11

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getReview()I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_1

    :pswitch_c
    const/16 v4, 0x2a

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getMotionPhoto()I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_1

    :pswitch_d
    const/16 v4, 0x16

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStorage()I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_1

    :pswitch_e
    const/16 v4, 0x13

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getGuideline()I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_1

    :pswitch_f
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v4

    if-nez v4, :cond_2

    const/16 v4, 0x17

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getObjectTrackingAF()I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_1

    :pswitch_10
    const/16 v4, 0xbb9

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_1

    :pswitch_11
    const/16 v4, 0xbbf

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderAntiShake()I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_1

    :pswitch_12
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v4

    if-ne v4, v6, :cond_2

    const/16 v4, 0x26

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSelfFlip()I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_1

    :pswitch_13
    const/16 v4, 0x47

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraVoiceCommand()I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_1

    :pswitch_14
    const/16 v4, 0x15

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraShutterSound()I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_1

    :pswitch_15
    const/16 v4, 0x14

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getGPS()I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_1

    :pswitch_16
    const/16 v4, 0x138

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getViewMode()I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_1

    :pswitch_17
    const/16 v4, 0x49

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getVolumeKeyAs()I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_1

    :pswitch_18
    const/16 v4, 0x13b

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getPictureFormat()I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_1

    :pswitch_19
    const/16 v4, 0x13c

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getQRCodeDetection()I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_1

    :pswitch_1a
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v4

    if-ne v4, v6, :cond_2

    const/16 v4, 0x73

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getTapToTakePictures()I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_1

    :pswitch_1b
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v4

    if-ne v4, v6, :cond_2

    const/16 v4, 0x74

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getHRMShutter()I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_1

    :pswitch_1c
    const/16 v4, 0x91

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getMultiAFMode()I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_1

    :pswitch_1d
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v4

    if-nez v4, :cond_2

    const/16 v4, 0x33

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getRearLensDistortionCorrection()I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_1

    :pswitch_1e
    const/4 v4, 0x5

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFocusMode()I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_1

    :pswitch_1f
    const/16 v4, 0xb5

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFloatingCameraButton()I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_d
        :pswitch_e
        :pswitch_0
        :pswitch_10
        :pswitch_14
        :pswitch_12
        :pswitch_11
        :pswitch_13
        :pswitch_15
        :pswitch_16
        :pswitch_8
        :pswitch_f
        :pswitch_0
        :pswitch_0
        :pswitch_17
        :pswitch_7
        :pswitch_18
        :pswitch_1d
        :pswitch_19
        :pswitch_0
        :pswitch_1a
        :pswitch_1b
        :pswitch_5
        :pswitch_c
        :pswitch_1c
        :pswitch_1e
        :pswitch_1f
    .end packed-switch
.end method

.method public set(IZ)V
    .locals 2

    const/4 v1, 0x1

    if-ltz p1, :cond_0

    const/16 v0, 0x24

    if-lt p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/DimController$DimArray;->mDimArray:[Z

    aput-boolean v1, v0, p1

    iget-object v0, p0, Lcom/sec/android/app/camera/DimController$DimArray;->mChangeArray:[Z

    aput-boolean v1, v0, p1

    goto :goto_0
.end method

.method public varargs setDimMulti([I)V
    .locals 4

    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget v0, p1, v1

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/DimController$DimArray;->set(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
