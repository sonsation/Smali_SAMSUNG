.class public Lcom/sec/android/app/camera/DimController;
.super Ljava/lang/Object;
.source "DimController.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/Engine$OnRequestQueueEmptyListener;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/DimController$DimArray;,
        Lcom/sec/android/app/camera/DimController$SettingValueReference;
    }
.end annotation


# static fields
.field public static final ANTI_FOG_LEVEL:I = 0x18

.field public static final CAMCORDER_ANTISHAKE:I = 0xf

.field public static final CAMCORDER_RESOLUTION:I = 0xc

.field public static final CAMERA_RESOLUTION:I = 0x6

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sec/android/app/camera/DimController;",
            ">;"
        }
    .end annotation
.end field

.field public static final EFFECT:I = 0x2

.field public static final EXPOSURE_VALUE:I = 0x5

.field public static final FLASH_MODE:I = 0x4

.field public static final FLIP:I = 0xe

.field public static final FLOATING_CAMERA_BUTTON:I = 0x23

.field public static final FOCUS_MODE:I = 0x22

.field public static final FRONT_FLASH_MODE:I = 0x1f

.field public static final GESTURE_CONTROL_MODE:I = 0x13

.field public static final GPS:I = 0x11

.field public static final GUIDELINE:I = 0xa

.field public static final HDR:I = 0x1

.field public static final HELP:I = 0x1c

.field public static final HRM_SHUTTER:I = 0x1e

.field public static final IMAGE_VIEWER:I = 0xb

.field public static final MANUAL_FOCUS:I = 0x15

.field public static final MOTION_PHOTO:I = 0x20

.field public static final MULTI_AF_MODE:I = 0x21

.field public static final NO_VALUE:I = -0x1

.field public static final NUM_OF_DIM_BUTTONS:I = 0x24

.field public static final OBJECT_TRACKING_AF:I = 0x14

.field public static final PICTURE_FORMAT:I = 0x19

.field public static final QRCODE_DETECTION:I = 0x1b

.field public static final REAR_LENS_DISTORTION_CORRECTION:I = 0x1a

.field public static final RESET:I = 0x16

.field public static final REVIEW:I = 0x8

.field public static final SHUTTER_SOUND:I = 0xd

.field public static final STORAGE:I = 0x9

.field private static final TAG:Ljava/lang/String; = "DimController"

.field public static final TAP_TO_TAKE_PICTURES:I = 0x1d

.field public static final TIMER:I = 0x7

.field public static final VIEWMODE:I = 0x12

.field public static final VOICECOMMAND:I = 0x10

.field public static final VOLUME_KEY:I = 0x17

.field public static final ZOOM:I = 0x3


# instance fields
.field private mButtonList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/glview/GLView;",
            ">;"
        }
    .end annotation
.end field

.field private mCameraContext:Lcom/sec/android/app/camera/Camera;

.field private mCurrentDimArray:[Z

.field private mDimArrayList:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/app/camera/DimController$DimArray;",
            ">;"
        }
    .end annotation
.end field

.field private mIsNeedSynchronizeDim:Z

.field private mUserSettingValueList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sec/android/app/camera/DimController$SettingValueReference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/camera/DimController$1;

    invoke-direct {v0}, Lcom/sec/android/app/camera/DimController$1;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/DimController;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Lcom/sec/android/app/camera/Camera;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x24

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/sec/android/app/camera/DimController;->mCurrentDimArray:[Z

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/DimController;->mUserSettingValueList:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/DimController;->mDimArrayList:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/DimController;->mButtonList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/DimController;->mIsNeedSynchronizeDim:Z

    iput-object p1, p0, Lcom/sec/android/app/camera/DimController;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/DimController;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/DimController;->mUserSettingValueList:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/DimController;)Lcom/sec/android/app/camera/Camera;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/DimController;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method private getkeyFromCommandId(I)I
    .locals 1

    const/4 v0, -0x1

    sparse-switch p1, :sswitch_data_0

    :goto_0
    return v0

    :sswitch_0
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_1
    const/16 v0, 0x1f

    goto :goto_0

    :sswitch_2
    const/4 v0, 0x6

    goto :goto_0

    :sswitch_3
    const/4 v0, 0x7

    goto :goto_0

    :sswitch_4
    const/16 v0, 0x8

    goto :goto_0

    :sswitch_5
    const/4 v0, 0x5

    goto :goto_0

    :sswitch_6
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_7
    const/16 v0, 0x15

    goto :goto_0

    :sswitch_8
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_9
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_a
    const/16 v0, 0x18

    goto :goto_0

    :sswitch_b
    const/16 v0, 0xa

    goto :goto_0

    :sswitch_c
    const/16 v0, 0x14

    goto :goto_0

    :sswitch_d
    const/16 v0, 0x9

    goto :goto_0

    :sswitch_e
    const/16 v0, 0xb

    goto :goto_0

    :sswitch_f
    const/16 v0, 0xc

    goto :goto_0

    :sswitch_10
    const/16 v0, 0xf

    goto :goto_0

    :sswitch_11
    const/16 v0, 0xe

    goto :goto_0

    :sswitch_12
    const/16 v0, 0x10

    goto :goto_0

    :sswitch_13
    const/16 v0, 0xd

    goto :goto_0

    :sswitch_14
    const/16 v0, 0x11

    goto :goto_0

    :sswitch_15
    const/16 v0, 0x12

    goto :goto_0

    :sswitch_16
    const/16 v0, 0x13

    goto :goto_0

    :sswitch_17
    const/16 v0, 0x17

    goto :goto_0

    :sswitch_18
    const/16 v0, 0x19

    goto :goto_0

    :sswitch_19
    const/16 v0, 0x20

    goto :goto_0

    :sswitch_1a
    const/16 v0, 0x21

    goto :goto_0

    :sswitch_1b
    const/16 v0, 0x1a

    goto :goto_0

    :sswitch_1c
    const/16 v0, 0x22

    goto :goto_0

    :sswitch_1d
    const/16 v0, 0x23

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x4 -> :sswitch_2
        0x5 -> :sswitch_1c
        0x6 -> :sswitch_3
        0x7 -> :sswitch_5
        0x8 -> :sswitch_6
        0xc -> :sswitch_8
        0x11 -> :sswitch_4
        0x12 -> :sswitch_9
        0x13 -> :sswitch_b
        0x14 -> :sswitch_14
        0x15 -> :sswitch_13
        0x16 -> :sswitch_d
        0x17 -> :sswitch_15
        0x18 -> :sswitch_c
        0x1d -> :sswitch_e
        0x1e -> :sswitch_19
        0x33 -> :sswitch_11
        0x47 -> :sswitch_12
        0x48 -> :sswitch_17
        0x51 -> :sswitch_7
        0x54 -> :sswitch_16
        0x75 -> :sswitch_a
        0x7f -> :sswitch_6
        0x86 -> :sswitch_18
        0x91 -> :sswitch_1a
        0x92 -> :sswitch_1b
        0xaa -> :sswitch_1
        0xb2 -> :sswitch_1d
        0xbb9 -> :sswitch_f
        0xbbf -> :sswitch_10
        0xbc4 -> :sswitch_0
    .end sparse-switch
.end method

.method private merge([Z)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x24

    if-ge v0, v1, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/camera/DimController;->mCurrentDimArray:[Z

    iget-object v1, p0, Lcom/sec/android/app/camera/DimController;->mCurrentDimArray:[Z

    aget-boolean v1, v1, v0

    if-nez v1, :cond_0

    aget-boolean v1, p1, v0

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_1
    aput-boolean v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    return-void
.end method

.method private varargs setSettingDefault([I)V
    .locals 7

    const/4 v6, 0x1

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/sec/android/app/camera/DimController;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    array-length v4, p1

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_0

    aget v1, p1, v2

    packed-switch v1, :pswitch_data_0

    :cond_2
    :goto_1
    :pswitch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :pswitch_1
    sget-boolean v5, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_FLASH:Z

    if-eqz v5, :cond_2

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFlashMode(I)V

    goto :goto_1

    :pswitch_2
    sget-boolean v5, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_FRONT_FLASH:Z

    if-nez v5, :cond_3

    sget-boolean v5, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SCREEN_FLASH_VI:Z

    if-eqz v5, :cond_2

    :cond_3
    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFrontFlashMode(I)V

    goto :goto_1

    :pswitch_3
    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraHDR(I)V

    goto :goto_1

    :pswitch_4
    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setExposureValue(I)V

    goto :goto_1

    :pswitch_5
    invoke-interface {v0, v3, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraEffect(IZ)V

    goto :goto_1

    :pswitch_6
    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setTimer(I)V

    goto :goto_1

    :pswitch_7
    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCamcorderAntiShake(I)V

    goto :goto_1

    :pswitch_8
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v5

    if-ne v5, v6, :cond_2

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setSelfFlip(I)V

    goto :goto_1

    :pswitch_9
    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraVoiceCommand(I)V

    goto :goto_1

    :pswitch_a
    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setGPS(I)V

    goto :goto_1

    :pswitch_b
    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setZoomValue(I)V

    goto :goto_1

    :pswitch_c
    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setGuideline(I)V

    goto :goto_1

    :pswitch_d
    invoke-interface {v0, v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraShutterSound(I)V

    goto :goto_1

    :pswitch_e
    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setStorage(I)V

    goto :goto_1

    :pswitch_f
    sget v5, Lcom/sec/android/app/camera/interfaces/CameraSettings;->DEFAULT_VIEW_MODE:I

    invoke-interface {v0, v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setViewMode(I)V

    goto :goto_1

    :pswitch_10
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v5

    if-ne v5, v6, :cond_2

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setGestureControlMode(I)V

    goto :goto_1

    :pswitch_11
    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setAntiFogLevel(I)V

    goto :goto_1

    :pswitch_12
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v5

    if-nez v5, :cond_2

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setObjectTrackingAF(I)V

    goto :goto_1

    :pswitch_13
    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setReview(I)V

    goto :goto_1

    :pswitch_14
    sget v5, Lcom/sec/android/app/camera/interfaces/CameraSettings;->DEFAULT_VOLUME_KEY_AS:I

    invoke-interface {v0, v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setVolumeKeyAs(I)V

    goto :goto_1

    :pswitch_15
    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setPictureFormat(I)V

    goto :goto_1

    :pswitch_16
    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setQRCodeDetection(I)V

    goto :goto_1

    :pswitch_17
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v5

    if-ne v5, v6, :cond_2

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setTapToTakePictures(I)V

    goto/16 :goto_1

    :pswitch_18
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v5

    if-ne v5, v6, :cond_2

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setHRMShutter(I)V

    goto/16 :goto_1

    :pswitch_19
    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setMotionPhoto(I)V

    goto/16 :goto_1

    :pswitch_1a
    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setMultiAFMode(I)V

    goto/16 :goto_1

    :pswitch_1b
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v5

    if-nez v5, :cond_2

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setRearLensDistortionCorrection(I)V

    goto/16 :goto_1

    :pswitch_1c
    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFloatingCameraButton(I)V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_5
        :pswitch_b
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_6
        :pswitch_13
        :pswitch_e
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_8
        :pswitch_7
        :pswitch_9
        :pswitch_a
        :pswitch_f
        :pswitch_10
        :pswitch_12
        :pswitch_0
        :pswitch_0
        :pswitch_14
        :pswitch_11
        :pswitch_15
        :pswitch_1b
        :pswitch_16
        :pswitch_0
        :pswitch_17
        :pswitch_18
        :pswitch_2
        :pswitch_19
        :pswitch_1a
        :pswitch_0
        :pswitch_1c
    .end packed-switch
.end method

.method private updateButtonDimState()V
    .locals 4

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x24

    if-ge v1, v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/DimController;->setDim(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/DimController;->mDimArrayList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/DimController$DimArray;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/DimController$DimArray;->getArray()[Z

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/DimController;->merge([Z)V

    goto :goto_1

    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/app/camera/DimController;->mIsNeedSynchronizeDim:Z

    iget-object v2, p0, Lcom/sec/android/app/camera/DimController;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object v2

    if-nez v2, :cond_3

    :cond_2
    :goto_2
    return-void

    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/camera/DimController;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->isEmptyRequestQueue()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/DimController;->synchronizeDim()V

    goto :goto_2
.end method


# virtual methods
.method public declared-synchronized addButton(Lcom/samsung/android/glview/GLView;)V
    .locals 3

    const/4 v2, -0x1

    monitor-enter p0

    :try_start_0
    instance-of v1, p1, Lcom/sec/android/app/camera/widget/gl/Item;

    if-eqz v1, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/camera/widget/gl/Item;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/gl/Item;->getCommandId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/DimController;->getkeyFromCommandId(I)I

    move-result v1

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/DimController;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getTag()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/DimController;->getkeyFromCommandId(I)I

    move-result v1

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/DimController;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized clear()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/DimController;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/sec/android/app/camera/DimController;->mDimArrayList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDimArray([Z)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/DimController;->mCurrentDimArray:[Z

    const/16 v1, 0x24

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public onEmpty()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/DimController;->synchronizeDim()V

    return-void
.end method

.method public declared-synchronized removeButton(Lcom/samsung/android/glview/GLView;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/DimController;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected resetDim()V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/camera/DimController;->mDimArrayList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    iget-object v1, p0, Lcom/sec/android/app/camera/DimController;->mUserSettingValueList:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x24

    if-ge v0, v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/DimController;->setDim(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public restoreUserSettingValues()V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/camera/DimController;->mDimArrayList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/DimController$DimArray;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->restoreUserSettingValues(Z)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/DimController;->mDimArrayList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method public declared-synchronized setButtonDim(II)V
    .locals 6

    const/4 v5, 0x1

    monitor-enter p0

    :try_start_0
    const-string v2, "DimController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setButtonDim : menuid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " modeid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/app/camera/DimController;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/sec/android/app/camera/DimController;->mDimArrayList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/DimController$DimArray;

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->restoreUserSettingValues(Z)V

    iget-object v2, p0, Lcom/sec/android/app/camera/DimController;->mDimArrayList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/DimController$DimArray;->getMenuId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    new-instance v1, Lcom/sec/android/app/camera/DimController$DimArray;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/camera/DimController$DimArray;-><init>(Lcom/sec/android/app/camera/DimController;I)V

    sparse-switch p1, :sswitch_data_0

    :cond_2
    :goto_1
    :pswitch_0
    iget-object v2, p0, Lcom/sec/android/app/camera/DimController;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->isMicrophoneEnabled()Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x10

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x10

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x10

    aput v4, v2, v3

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/camera/DimController;->mDimArrayList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/sec/android/app/camera/DimController;->updateButtonDimState()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :sswitch_0
    const/4 v2, -0x1

    if-eq p2, v2, :cond_2

    const/16 v2, 0x1a

    if-lt p2, v2, :cond_4

    const/4 v2, 0x2

    :try_start_2
    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/4 v4, 0x4

    aput v4, v2, v3

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    goto :goto_1

    :cond_4
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/4 v4, 0x5

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/4 v4, 0x5

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    goto :goto_1

    :sswitch_1
    if-ne p2, v5, :cond_2

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x8

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x8

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x8

    aput v4, v2, v3

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    goto/16 :goto_1

    :sswitch_2
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_GPU_EFFECT:Z

    if-eqz v2, :cond_6

    if-eqz p2, :cond_5

    const/4 v2, 0x3

    new-array v2, v2, [I

    fill-array-data v2, :array_2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    const/4 v2, 0x3

    new-array v2, v2, [I

    fill-array-data v2, :array_3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    const/4 v2, 0x3

    new-array v2, v2, [I

    fill-array-data v2, :array_4

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setAutoNightDetectionMode(I)V

    goto/16 :goto_1

    :cond_5
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isEasyCamera()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/camera/DimController;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getShootingModeFeature()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isLowLightDetectionSupported()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setAutoNightDetectionMode(I)V

    goto/16 :goto_1

    :cond_6
    if-eqz p2, :cond_2

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x13

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x13

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x13

    aput v4, v2, v3

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    goto/16 :goto_1

    :sswitch_3
    sparse-switch p2, :sswitch_data_1

    goto/16 :goto_1

    :sswitch_4
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_AUTO:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x13

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x13

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x13

    aput v4, v2, v3

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    goto/16 :goto_1

    :sswitch_5
    const/16 v2, 0xd

    new-array v2, v2, [I

    fill-array-data v2, :array_5

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    const/16 v2, 0xd

    new-array v2, v2, [I

    fill-array-data v2, :array_6

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    const/16 v2, 0xd

    new-array v2, v2, [I

    fill-array-data v2, :array_7

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_FIXED_BURST_RESOLUTION:Z

    if-eqz v2, :cond_7

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/4 v4, 0x6

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/4 v4, 0x6

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    sget-object v2, Lcom/sec/android/app/camera/feature/Feature;->BURST_RESOLUTION:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraResolution(I)Z

    :cond_7
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SUPPORT_FOCUSMODE_MENU:Z

    if-eqz v2, :cond_2

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isBackCamera()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x22

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x22

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFocusMode(I)V

    goto/16 :goto_1

    :sswitch_6
    const/16 v2, 0x12

    new-array v2, v2, [I

    fill-array-data v2, :array_8

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    const/16 v2, 0x11

    new-array v2, v2, [I

    fill-array-data v2, :array_9

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    const/16 v2, 0x10

    new-array v2, v2, [I

    fill-array-data v2, :array_a

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    const-string v2, "640x480"

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraResolution(I)Z

    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SUPPORT_FOCUSMODE_MENU:Z

    if-eqz v2, :cond_8

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isBackCamera()Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x22

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x22

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFocusMode(I)V

    :cond_8
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0xe

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0xe

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setSelfFlip(I)V

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraVoiceCommand(I)V

    goto/16 :goto_1

    :sswitch_7
    const/16 v2, 0xd

    new-array v2, v2, [I

    fill-array-data v2, :array_b

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    const/16 v2, 0xb

    new-array v2, v2, [I

    fill-array-data v2, :array_c

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    const/16 v2, 0xb

    new-array v2, v2, [I

    fill-array-data v2, :array_d

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    sget-object v2, Lcom/sec/android/app/camera/feature/Feature;->BURST_PANORAMA_RESOLUTION:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraResolution(I)Z

    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SUPPORT_FOCUSMODE_MENU:Z

    if-eqz v2, :cond_2

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isBackCamera()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x22

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x22

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFocusMode(I)V

    goto/16 :goto_1

    :sswitch_8
    const/16 v2, 0x9

    new-array v2, v2, [I

    fill-array-data v2, :array_e

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    const/16 v2, 0x8

    new-array v2, v2, [I

    fill-array-data v2, :array_f

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    const/16 v2, 0x8

    new-array v2, v2, [I

    fill-array-data v2, :array_10

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SUPPORT_FOCUSMODE_MENU:Z

    if-eqz v2, :cond_9

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isBackCamera()Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x22

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x22

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFocusMode(I)V

    :cond_9
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_LIVE_BEAUTY:Z

    if-eqz v2, :cond_2

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getBeautyLevel()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setBeautyLevel(I)V

    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_LIVE_BEAUTY_SLIMFACE:Z

    if-eqz v2, :cond_a

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSlimFaceLevel()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setSlimFaceLevel(I)V

    :cond_a
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_LIVE_BEAUTY_EYEENLARGE:Z

    if-eqz v2, :cond_2

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getEyeEnlargeLevel()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setEyeEnlargeLevel(I)V

    goto/16 :goto_1

    :sswitch_9
    const/16 v2, 0x8

    new-array v2, v2, [I

    fill-array-data v2, :array_11

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    const/4 v2, 0x7

    new-array v2, v2, [I

    fill-array-data v2, :array_12

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    const/4 v2, 0x7

    new-array v2, v2, [I

    fill-array-data v2, :array_13

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SUPPORT_FOCUSMODE_MENU:Z

    if-eqz v2, :cond_2

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isBackCamera()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x22

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x22

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFocusMode(I)V

    goto/16 :goto_1

    :sswitch_a
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_b

    const/16 v2, 0xa

    new-array v2, v2, [I

    fill-array-data v2, :array_14

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    const/16 v2, 0x9

    new-array v2, v2, [I

    fill-array-data v2, :array_15

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    const/16 v2, 0x9

    new-array v2, v2, [I

    fill-array-data v2, :array_16

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    goto/16 :goto_1

    :cond_b
    const/16 v2, 0x8

    new-array v2, v2, [I

    fill-array-data v2, :array_17

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    const/4 v2, 0x7

    new-array v2, v2, [I

    fill-array-data v2, :array_18

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    const/4 v2, 0x7

    new-array v2, v2, [I

    fill-array-data v2, :array_19

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    goto/16 :goto_1

    :sswitch_b
    const/16 v2, 0x8

    new-array v2, v2, [I

    fill-array-data v2, :array_1a

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    const/4 v2, 0x7

    new-array v2, v2, [I

    fill-array-data v2, :array_1b

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    const/4 v2, 0x7

    new-array v2, v2, [I

    fill-array-data v2, :array_1c

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SUPPORT_FOCUSMODE_MENU:Z

    if-eqz v2, :cond_2

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isBackCamera()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x22

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x22

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFocusMode(I)V

    goto/16 :goto_1

    :sswitch_c
    const/4 v2, 0x7

    new-array v2, v2, [I

    fill-array-data v2, :array_1d

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    const/4 v2, 0x6

    new-array v2, v2, [I

    fill-array-data v2, :array_1e

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    const/4 v2, 0x6

    new-array v2, v2, [I

    fill-array-data v2, :array_1f

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SUPPORT_FOCUSMODE_MENU:Z

    if-eqz v2, :cond_2

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isBackCamera()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x22

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x22

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFocusMode(I)V

    goto/16 :goto_1

    :sswitch_d
    const/16 v2, 0x9

    new-array v2, v2, [I

    fill-array-data v2, :array_20

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    const/16 v2, 0x8

    new-array v2, v2, [I

    fill-array-data v2, :array_21

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    const/4 v2, 0x6

    new-array v2, v2, [I

    fill-array-data v2, :array_22

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFlashMode(I)V

    const/4 v2, 0x2

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setVolumeKeyAs(I)V

    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SUPPORT_FOCUSMODE_MENU:Z

    if-eqz v2, :cond_2

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isBackCamera()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x22

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x22

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFocusMode(I)V

    goto/16 :goto_1

    :sswitch_e
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSoundAndShotMode()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setSoundAndShotMode(I)V

    const/16 v2, 0x9

    new-array v2, v2, [I

    fill-array-data v2, :array_23

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    const/16 v2, 0x8

    new-array v2, v2, [I

    fill-array-data v2, :array_24

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    const/16 v2, 0x8

    new-array v2, v2, [I

    fill-array-data v2, :array_25

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_SELFIE:Z

    if-nez v2, :cond_c

    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_BEAUTY_SHOT:Z

    if-eqz v2, :cond_2

    :cond_c
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x13

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x13

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x13

    aput v4, v2, v3

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    goto/16 :goto_1

    :sswitch_f
    const/16 v2, 0xd

    new-array v2, v2, [I

    fill-array-data v2, :array_26

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    const/16 v2, 0xb

    new-array v2, v2, [I

    fill-array-data v2, :array_27

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    const/16 v2, 0xa

    new-array v2, v2, [I

    fill-array-data v2, :array_28

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_d

    const-string v2, "1920x1080"

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraResolution(I)Z

    :goto_2
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SUPPORT_FOCUSMODE_MENU:Z

    if-eqz v2, :cond_2

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isBackCamera()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x22

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x22

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFocusMode(I)V

    goto/16 :goto_1

    :cond_d
    sget-object v2, Lcom/sec/android/app/camera/feature/Feature;->SHOT_AND_MORE_BACK_RESOLUTION:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraResolution(I)Z

    goto :goto_2

    :sswitch_10
    const/16 v2, 0x8

    new-array v2, v2, [I

    fill-array-data v2, :array_29

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    const/4 v2, 0x7

    new-array v2, v2, [I

    fill-array-data v2, :array_2a

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    const/4 v2, 0x7

    new-array v2, v2, [I

    fill-array-data v2, :array_2b

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SUPPORT_FOCUSMODE_MENU:Z

    if-eqz v2, :cond_2

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isBackCamera()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x22

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x22

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFocusMode(I)V

    goto/16 :goto_1

    :sswitch_11
    const/16 v2, 0x8

    new-array v2, v2, [I

    fill-array-data v2, :array_2c

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    const/4 v2, 0x6

    new-array v2, v2, [I

    fill-array-data v2, :array_2d

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    const/4 v2, 0x7

    new-array v2, v2, [I

    fill-array-data v2, :array_2e

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SUPPORT_FOCUSMODE_MENU:Z

    if-eqz v2, :cond_2

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isBackCamera()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x22

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x22

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFocusMode(I)V

    goto/16 :goto_1

    :sswitch_12
    const/16 v2, 0xb

    new-array v2, v2, [I

    fill-array-data v2, :array_2f

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    const/16 v2, 0x9

    new-array v2, v2, [I

    fill-array-data v2, :array_30

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    const/16 v2, 0xa

    new-array v2, v2, [I

    fill-array-data v2, :array_31

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SUPPORT_FOCUSMODE_MENU:Z

    if-eqz v2, :cond_2

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isBackCamera()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x22

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x22

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFocusMode(I)V

    goto/16 :goto_1

    :sswitch_13
    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_32

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x1b

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_33

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_LIVE_BEAUTY:Z

    if-eqz v2, :cond_2

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getBeautyLevel()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setBeautyLevel(I)V

    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_LIVE_BEAUTY_SLIMFACE:Z

    if-eqz v2, :cond_e

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSlimFaceLevel()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setSlimFaceLevel(I)V

    :cond_e
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_LIVE_BEAUTY_EYEENLARGE:Z

    if-eqz v2, :cond_2

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getEyeEnlargeLevel()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setEyeEnlargeLevel(I)V

    goto/16 :goto_1

    :sswitch_14
    const/16 v2, 0xb

    new-array v2, v2, [I

    fill-array-data v2, :array_34

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    const/16 v2, 0x9

    new-array v2, v2, [I

    fill-array-data v2, :array_35

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    const/16 v2, 0x9

    new-array v2, v2, [I

    fill-array-data v2, :array_36

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    sget-object v2, Lcom/sec/android/app/camera/feature/Feature;->WIDE_SELFIE_RESOLUTION:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraResolution(I)Z

    goto/16 :goto_1

    :sswitch_15
    const/16 v2, 0xe

    new-array v2, v2, [I

    fill-array-data v2, :array_37

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    const/16 v2, 0xc

    new-array v2, v2, [I

    fill-array-data v2, :array_38

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    const/16 v2, 0xc

    new-array v2, v2, [I

    fill-array-data v2, :array_39

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    const-string v2, "1280x720"

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraResolution(I)Z

    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SUPPORT_FOCUSMODE_MENU:Z

    if-eqz v2, :cond_2

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isBackCamera()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x22

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x22

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFocusMode(I)V

    goto/16 :goto_1

    :sswitch_16
    const/16 v2, 0xc

    new-array v2, v2, [I

    fill-array-data v2, :array_3a

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    const/16 v2, 0x9

    new-array v2, v2, [I

    fill-array-data v2, :array_3b

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    const/16 v2, 0x9

    new-array v2, v2, [I

    fill-array-data v2, :array_3c

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    const-string v2, "1280x720"

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraResolution(I)Z

    const-string v2, "1280x720"

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->overrideCamcorderResolution(I)V

    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SUPPORT_FOCUSMODE_MENU:Z

    if-eqz v2, :cond_2

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isBackCamera()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x22

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x22

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFocusMode(I)V

    goto/16 :goto_1

    :sswitch_17
    const/4 v2, 0x4

    new-array v2, v2, [I

    fill-array-data v2, :array_3d

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    const/4 v2, 0x4

    new-array v2, v2, [I

    fill-array-data v2, :array_3e

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    const/4 v2, 0x4

    new-array v2, v2, [I

    fill-array-data v2, :array_3f

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    goto/16 :goto_1

    :sswitch_18
    const/16 v2, 0xc

    new-array v2, v2, [I

    fill-array-data v2, :array_40

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    const/16 v2, 0x9

    new-array v2, v2, [I

    fill-array-data v2, :array_41

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    const/16 v2, 0x9

    new-array v2, v2, [I

    fill-array-data v2, :array_42

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    const-string v2, "1280x720"

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraResolution(I)Z

    const-string v2, "1280x720"

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->overrideCamcorderResolution(I)V

    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SUPPORT_FOCUSMODE_MENU:Z

    if-eqz v2, :cond_2

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isBackCamera()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x22

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x22

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFocusMode(I)V

    goto/16 :goto_1

    :sswitch_19
    const/16 v2, 0x9

    new-array v2, v2, [I

    fill-array-data v2, :array_43

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    const/4 v2, 0x7

    new-array v2, v2, [I

    fill-array-data v2, :array_44

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    const/16 v2, 0x8

    new-array v2, v2, [I

    fill-array-data v2, :array_45

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getAntiFogLevel()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setAntiFogLevel(I)V

    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SUPPORT_FOCUSMODE_MENU:Z

    if-eqz v2, :cond_2

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isBackCamera()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x22

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x22

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFocusMode(I)V

    goto/16 :goto_1

    :sswitch_1a
    const/16 v2, 0x8

    new-array v2, v2, [I

    fill-array-data v2, :array_46

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    const/4 v2, 0x7

    new-array v2, v2, [I

    fill-array-data v2, :array_47

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    const/4 v2, 0x7

    new-array v2, v2, [I

    fill-array-data v2, :array_48

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFoodColorTuneValue()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFoodColorTuneValue(I)V

    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SUPPORT_FOCUSMODE_MENU:Z

    if-eqz v2, :cond_2

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isBackCamera()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x22

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x22

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFocusMode(I)V

    goto/16 :goto_1

    :sswitch_1b
    const/16 v2, 0xe

    new-array v2, v2, [I

    fill-array-data v2, :array_49

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    const/16 v2, 0xd

    new-array v2, v2, [I

    fill-array-data v2, :array_4a

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    const/16 v2, 0xc

    new-array v2, v2, [I

    fill-array-data v2, :array_4b

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_f

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0xe

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0xe

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setSelfFlip(I)V

    :cond_f
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setVideoCollageResolution()V

    goto/16 :goto_1

    :sswitch_1c
    const/16 v2, 0xc

    new-array v2, v2, [I

    fill-array-data v2, :array_4c

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    const/16 v2, 0x9

    new-array v2, v2, [I

    fill-array-data v2, :array_4d

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    const/16 v2, 0x9

    new-array v2, v2, [I

    fill-array-data v2, :array_4e

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    const-string v2, "1920x1080"

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraResolution(I)Z

    const-string v2, "1920x1080"

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->overrideCamcorderResolution(I)V

    goto/16 :goto_1

    :sswitch_1d
    const/16 v2, 0xc

    new-array v2, v2, [I

    fill-array-data v2, :array_4f

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    const/16 v2, 0x9

    new-array v2, v2, [I

    fill-array-data v2, :array_50

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    const/16 v2, 0xa

    new-array v2, v2, [I

    fill-array-data v2, :array_51

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    goto/16 :goto_1

    :sswitch_1e
    packed-switch p2, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_1
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0xd

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0xd

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraShutterSound(I)V

    goto/16 :goto_1

    :sswitch_1f
    const/4 v2, 0x2

    if-ne p2, v2, :cond_2

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/4 v4, 0x5

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/4 v4, 0x5

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/4 v4, 0x5

    aput v4, v2, v3

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    goto/16 :goto_1

    :sswitch_20
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isKNOXMode()Z

    move-result v2

    if-nez v2, :cond_10

    iget-object v2, p0, Lcom/sec/android/app/camera/DimController;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/camera/util/RestrictionPolicyUtil;->isSdCardWriteRestricted(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_11

    :cond_10
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x9

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x9

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    :cond_11
    iget-object v2, p0, Lcom/sec/android/app/camera/DimController;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/Camera;->getStorageStatus(I)I

    move-result v2

    if-ne v2, v5, :cond_2

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x19

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x19

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x19

    aput v4, v2, v3

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    goto/16 :goto_1

    :sswitch_21
    if-ne p2, v5, :cond_12

    const/4 v2, 0x6

    new-array v2, v2, [I

    fill-array-data v2, :array_52

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_53

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    const/4 v2, 0x4

    new-array v2, v2, [I

    fill-array-data v2, :array_54

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    goto/16 :goto_1

    :cond_12
    const/4 v2, 0x2

    if-ne p2, v2, :cond_2

    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_GPU_EFFECT:Z

    if-eqz v2, :cond_14

    const/16 v2, 0xb

    new-array v2, v2, [I

    fill-array-data v2, :array_55

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    :goto_3
    const/16 v2, 0x8

    new-array v2, v2, [I

    fill-array-data v2, :array_56

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    const/16 v2, 0x8

    new-array v2, v2, [I

    fill-array-data v2, :array_57

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachVideoFixedResolution()Z

    move-result v2

    if-eqz v2, :cond_13

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0xc

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    :cond_13
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCamcorderResolution(I)Z

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setAutoNightDetectionMode(I)V

    goto/16 :goto_1

    :cond_14
    const/16 v2, 0xa

    new-array v2, v2, [I

    fill-array-data v2, :array_58

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    goto :goto_3

    :sswitch_22
    invoke-interface {v0, p2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCamcorderAntiShakeSupported(I)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0xf

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0xf

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0xf

    aput v4, v2, v3

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    goto/16 :goto_1

    :sswitch_23
    const/4 v2, 0x3

    if-ne p2, v2, :cond_2

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x14

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x14

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x14

    aput v4, v2, v3

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    goto/16 :goto_1

    :sswitch_24
    const/4 v2, -0x1

    if-eq p2, v2, :cond_2

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_59

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x14

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x14

    aput v4, v2, v3

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    goto/16 :goto_1

    :sswitch_25
    iget-object v2, p0, Lcom/sec/android/app/camera/DimController;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualFrontCameraId()I

    move-result v2

    if-ne p2, v2, :cond_15

    const/4 v2, 0x4

    new-array v2, v2, [I

    fill-array-data v2, :array_5a

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    const/4 v2, 0x4

    new-array v2, v2, [I

    fill-array-data v2, :array_5b

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    const/4 v2, 0x4

    new-array v2, v2, [I

    fill-array-data v2, :array_5c

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    goto/16 :goto_1

    :cond_15
    iget-object v2, p0, Lcom/sec/android/app/camera/DimController;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualBackCameraId()I

    move-result v2

    if-ne p2, v2, :cond_2

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_5d

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_5e

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_5f

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    goto/16 :goto_1

    :sswitch_26
    if-ne p2, v5, :cond_2

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0xf

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0xf

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0xf

    aput v4, v2, v3

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    goto/16 :goto_1

    :sswitch_27
    if-eqz p2, :cond_2

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0xf

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0xf

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0xf

    aput v4, v2, v3

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    goto/16 :goto_1

    :sswitch_28
    if-ne p2, v5, :cond_2

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/4 v4, 0x4

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/4 v4, 0x4

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFlashMode(I)V

    goto/16 :goto_1

    :sswitch_29
    if-ne p2, v5, :cond_2

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_60

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_61

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraVoiceCommand(I)V

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraShutterSound(I)V

    goto/16 :goto_1

    :sswitch_2a
    if-ne p2, v5, :cond_2

    const/16 v2, 0x8

    new-array v2, v2, [I

    fill-array-data v2, :array_62

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    const/16 v2, 0x8

    new-array v2, v2, [I

    fill-array-data v2, :array_63

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    const/16 v2, 0x8

    new-array v2, v2, [I

    fill-array-data v2, :array_64

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    goto/16 :goto_1

    :sswitch_2b
    if-ne p2, v5, :cond_2

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_65

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_66

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_67

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    goto/16 :goto_1

    :sswitch_2c
    if-ne p2, v5, :cond_2

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x17

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    goto/16 :goto_1

    :sswitch_2d
    if-eq p2, v5, :cond_16

    const/4 v2, 0x2

    if-eq p2, v2, :cond_16

    const/4 v2, 0x3

    if-ne p2, v2, :cond_2

    :cond_16
    const/4 v2, 0x3

    new-array v2, v2, [I

    fill-array-data v2, :array_68

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_69

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    const/4 v2, 0x3

    new-array v2, v2, [I

    fill-array-data v2, :array_6a

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/DimController;->setSettingDefault([I)V

    goto/16 :goto_1

    :sswitch_2e
    if-ne p2, v5, :cond_2

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x1c

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    goto/16 :goto_1

    :sswitch_2f
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x238c

    if-eq p2, v2, :cond_2

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0xe

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0xe

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSettingMulti([I)V

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setSelfFlip(I)V

    goto/16 :goto_1

    :sswitch_30
    if-eqz p2, :cond_2

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_6b

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/DimController$DimArray;->setDimMulti([I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_21
        0x1 -> :sswitch_3
        0x5 -> :sswitch_23
        0x8 -> :sswitch_2
        0xc -> :sswitch_1f
        0xe -> :sswitch_27
        0x16 -> :sswitch_20
        0x17 -> :sswitch_26
        0x18 -> :sswitch_24
        0x1f -> :sswitch_0
        0x24 -> :sswitch_25
        0x4d -> :sswitch_1e
        0x7f -> :sswitch_1
        0x83 -> :sswitch_2d
        0xa0 -> :sswitch_2f
        0x12c -> :sswitch_28
        0x136 -> :sswitch_29
        0x137 -> :sswitch_2a
        0x13d -> :sswitch_2e
        0x13e -> :sswitch_30
        0xbb9 -> :sswitch_22
        0x1770 -> :sswitch_2c
        0x1b58 -> :sswitch_2b
    .end sparse-switch

    :array_0
    .array-data 4
        0x5
        0x4
    .end array-data

    :array_1
    .array-data 4
        0x5
        0x4
    .end array-data

    :array_2
    .array-data 4
        0xf
        0x13
        0x20
    .end array-data

    :array_3
    .array-data 4
        0xf
        0x13
        0x20
    .end array-data

    :array_4
    .array-data 4
        0xf
        0x13
        0x20
    .end array-data

    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_4
        0x1 -> :sswitch_5
        0x2 -> :sswitch_7
        0x7 -> :sswitch_8
        0xe -> :sswitch_9
        0x11 -> :sswitch_5
        0x17 -> :sswitch_a
        0x23 -> :sswitch_e
        0x27 -> :sswitch_b
        0x28 -> :sswitch_c
        0x2a -> :sswitch_d
        0x2d -> :sswitch_11
        0x2e -> :sswitch_f
        0x2f -> :sswitch_10
        0x31 -> :sswitch_19
        0x34 -> :sswitch_14
        0x37 -> :sswitch_13
        0x38 -> :sswitch_12
        0x3a -> :sswitch_6
        0x3b -> :sswitch_17
        0x3e -> :sswitch_15
        0x3f -> :sswitch_16
        0x40 -> :sswitch_18
        0x44 -> :sswitch_1a
        0x45 -> :sswitch_1b
        0x48 -> :sswitch_7
        0x4a -> :sswitch_1c
        0x4b -> :sswitch_17
        0x4d -> :sswitch_14
        0x4e -> :sswitch_14
        0x4f -> :sswitch_1d
    .end sparse-switch

    :array_5
    .array-data 4
        0x1
        0x4
        0x14
        0x1b
        0x20
        0x7
        0x8
        0x1a
        0x10
        0x13
        0x1d
        0x1e
        0x23
    .end array-data

    :array_6
    .array-data 4
        0x1
        0x4
        0x14
        0x1b
        0x20
        0x7
        0x8
        0x1a
        0x10
        0x13
        0x1d
        0x1e
        0x23
    .end array-data

    :array_7
    .array-data 4
        0x1
        0x4
        0x14
        0x1b
        0x20
        0x7
        0x8
        0x1a
        0x10
        0x13
        0x1d
        0x1e
        0x23
    .end array-data

    :array_8
    .array-data 4
        0x1
        0x2
        0x10
        0x14
        0x4
        0x1f
        0x7
        0x9
        0x13
        0x8
        0x11
        0x1b
        0x6
        0x1d
        0x1e
        0x20
        0x1a
        0x23
    .end array-data

    :array_9
    .array-data 4
        0x1
        0x10
        0x14
        0x4
        0x1f
        0x7
        0x9
        0x13
        0x8
        0x11
        0x1b
        0x6
        0x1d
        0x1e
        0x20
        0x1a
        0x23
    .end array-data

    :array_a
    .array-data 4
        0x1
        0x14
        0x4
        0x1f
        0x10
        0x7
        0x9
        0x13
        0x8
        0x11
        0x1b
        0x1d
        0x1e
        0x20
        0x1a
        0x23
    .end array-data

    :array_b
    .array-data 4
        0x1
        0x2
        0x3
        0x14
        0x4
        0x6
        0x7
        0x8
        0x12
        0x1b
        0x20
        0x1a
        0x23
    .end array-data

    :array_c
    .array-data 4
        0x1
        0x14
        0x4
        0x6
        0x7
        0x8
        0x12
        0x1b
        0x20
        0x1a
        0x23
    .end array-data

    :array_d
    .array-data 4
        0x1
        0x3
        0x14
        0x4
        0x7
        0x8
        0x12
        0x1b
        0x20
        0x1a
        0x23
    .end array-data

    :array_e
    .array-data 4
        0x1
        0x2
        0x14
        0x4
        0x1f
        0x1b
        0x20
        0x1a
        0x23
    .end array-data

    :array_f
    .array-data 4
        0x1
        0x14
        0x4
        0x1f
        0x1b
        0x20
        0x1a
        0x23
    .end array-data

    :array_10
    .array-data 4
        0x1
        0x14
        0x4
        0x1f
        0x1b
        0x20
        0x1a
        0x23
    .end array-data

    :array_11
    .array-data 4
        0x1
        0x2
        0x4
        0x14
        0x1b
        0x20
        0x1a
        0x23
    .end array-data

    :array_12
    .array-data 4
        0x1
        0x4
        0x14
        0x1b
        0x20
        0x1a
        0x23
    .end array-data

    :array_13
    .array-data 4
        0x1
        0x4
        0x14
        0x1b
        0x20
        0x1a
        0x23
    .end array-data

    :array_14
    .array-data 4
        0x1
        0x2
        0x14
        0x4
        0x1f
        0x13
        0x1b
        0x20
        0x1a
        0x23
    .end array-data

    :array_15
    .array-data 4
        0x1
        0x14
        0x4
        0x1f
        0x13
        0x1b
        0x20
        0x1a
        0x23
    .end array-data

    :array_16
    .array-data 4
        0x1
        0x14
        0x4
        0x1f
        0x13
        0x1b
        0x20
        0x1a
        0x23
    .end array-data

    :array_17
    .array-data 4
        0x1
        0x2
        0x14
        0x4
        0x1b
        0x20
        0x1a
        0x23
    .end array-data

    :array_18
    .array-data 4
        0x1
        0x14
        0x4
        0x1b
        0x20
        0x1a
        0x23
    .end array-data

    :array_19
    .array-data 4
        0x1
        0x14
        0x4
        0x1b
        0x20
        0x1a
        0x23
    .end array-data

    :array_1a
    .array-data 4
        0x1
        0x2
        0x4
        0x14
        0x1b
        0x20
        0x1a
        0x23
    .end array-data

    :array_1b
    .array-data 4
        0x1
        0x4
        0x14
        0x1b
        0x20
        0x1a
        0x23
    .end array-data

    :array_1c
    .array-data 4
        0x1
        0x14
        0x4
        0x1b
        0x20
        0x1a
        0x23
    .end array-data

    :array_1d
    .array-data 4
        0x1
        0x2
        0x4
        0x1b
        0x20
        0x1a
        0x23
    .end array-data

    :array_1e
    .array-data 4
        0x1
        0x4
        0x1b
        0x20
        0x1a
        0x23
    .end array-data

    :array_1f
    .array-data 4
        0x1
        0x4
        0x1b
        0x20
        0x1a
        0x23
    .end array-data

    :array_20
    .array-data 4
        0x1
        0x2
        0x4
        0x14
        0x17
        0x1b
        0x20
        0x1a
        0x23
    .end array-data

    :array_21
    .array-data 4
        0x1
        0x4
        0x14
        0x17
        0x1b
        0x20
        0x1a
        0x23
    .end array-data

    :array_22
    .array-data 4
        0x1
        0x14
        0x1b
        0x20
        0x1a
        0x23
    .end array-data

    :array_23
    .array-data 4
        0x2
        0x10
        0x7
        0x1f
        0x8
        0x1b
        0x20
        0x1a
        0x23
    .end array-data

    :array_24
    .array-data 4
        0x10
        0x7
        0x1f
        0x8
        0x1b
        0x20
        0x1a
        0x23
    .end array-data

    :array_25
    .array-data 4
        0x10
        0x7
        0x1f
        0x8
        0x1b
        0x20
        0x1a
        0x23
    .end array-data

    :array_26
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x1f
        0x14
        0x7
        0x6
        0x8
        0x1b
        0x20
        0x1a
        0x23
    .end array-data

    :array_27
    .array-data 4
        0x1
        0x4
        0x1f
        0x14
        0x7
        0x6
        0x8
        0x1b
        0x20
        0x1a
        0x23
    .end array-data

    :array_28
    .array-data 4
        0x1
        0x3
        0x1f
        0x14
        0x7
        0x8
        0x1b
        0x20
        0x1a
        0x23
    .end array-data

    :array_29
    .array-data 4
        0x1
        0x2
        0x1f
        0xf
        0x8
        0x1b
        0x20
        0x23
    .end array-data

    :array_2a
    .array-data 4
        0x1
        0x1f
        0xf
        0x8
        0x1b
        0x20
        0x23
    .end array-data

    :array_2b
    .array-data 4
        0x1
        0x1f
        0xf
        0x8
        0x1b
        0x20
        0x23
    .end array-data

    :array_2c
    .array-data 4
        0x3
        0x2
        0x14
        0x4
        0x1b
        0x20
        0x1a
        0x23
    .end array-data

    :array_2d
    .array-data 4
        0x14
        0x4
        0x1b
        0x20
        0x1a
        0x23
    .end array-data

    :array_2e
    .array-data 4
        0x3
        0x14
        0x4
        0x1b
        0x20
        0x1a
        0x23
    .end array-data

    :array_2f
    .array-data 4
        0x1
        0x2
        0x4
        0x14
        0x7
        0x3
        0x10
        0x1b
        0x20
        0x1a
        0x23
    .end array-data

    :array_30
    .array-data 4
        0x1
        0x4
        0x14
        0x7
        0x10
        0x1b
        0x20
        0x1a
        0x23
    .end array-data

    :array_31
    .array-data 4
        0x1
        0x4
        0x14
        0x7
        0x3
        0x10
        0x1b
        0x20
        0x1a
        0x23
    .end array-data

    :array_32
    .array-data 4
        0x1b
        0x3
    .end array-data

    :array_33
    .array-data 4
        0x1b
        0x3
    .end array-data

    :array_34
    .array-data 4
        0x1
        0x2
        0x4
        0x1f
        0x14
        0x6
        0x1b
        0x3
        0x20
        0x1a
        0x23
    .end array-data

    :array_35
    .array-data 4
        0x1
        0x4
        0x1f
        0x14
        0x6
        0x1b
        0x20
        0x1a
        0x23
    .end array-data

    :array_36
    .array-data 4
        0x1
        0x4
        0x1f
        0x14
        0x1b
        0x3
        0x20
        0x1a
        0x23
    .end array-data

    :array_37
    .array-data 4
        0x1
        0x2
        0x4
        0x1f
        0x3
        0x14
        0x7
        0x6
        0x8
        0x13
        0x1b
        0x20
        0x1a
        0x23
    .end array-data

    :array_38
    .array-data 4
        0x1
        0x4
        0x1f
        0x14
        0x7
        0x6
        0x8
        0x13
        0x1b
        0x20
        0x1a
        0x23
    .end array-data

    :array_39
    .array-data 4
        0x1
        0x4
        0x1f
        0x3
        0x14
        0x7
        0x8
        0x13
        0x1b
        0x20
        0x1a
        0x23
    .end array-data

    :array_3a
    .array-data 4
        0x1
        0x2
        0x14
        0x6
        0xc
        0xf
        0x3
        0x8
        0x1b
        0x20
        0x1a
        0x23
    .end array-data

    :array_3b
    .array-data 4
        0x1
        0x14
        0x6
        0xf
        0x8
        0x1b
        0x20
        0x1a
        0x23
    .end array-data

    :array_3c
    .array-data 4
        0x1
        0x14
        0xf
        0x3
        0x8
        0x1b
        0x20
        0x1a
        0x23
    .end array-data

    :array_3d
    .array-data 4
        0x1
        0x1b
        0x20
        0x23
    .end array-data

    :array_3e
    .array-data 4
        0x1
        0x1b
        0x20
        0x23
    .end array-data

    :array_3f
    .array-data 4
        0x1
        0x1b
        0x20
        0x23
    .end array-data

    :array_40
    .array-data 4
        0x1
        0x2
        0x14
        0x6
        0xc
        0xf
        0x3
        0x8
        0x1b
        0x20
        0x1a
        0x23
    .end array-data

    :array_41
    .array-data 4
        0x1
        0x14
        0x6
        0xf
        0x8
        0x1b
        0x20
        0x1a
        0x23
    .end array-data

    :array_42
    .array-data 4
        0x1
        0x14
        0xf
        0x3
        0x8
        0x1b
        0x20
        0x1a
        0x23
    .end array-data

    :array_43
    .array-data 4
        0x1
        0x3
        0x2
        0x4
        0x14
        0x1b
        0x20
        0x1a
        0x23
    .end array-data

    :array_44
    .array-data 4
        0x1
        0x4
        0x14
        0x1b
        0x20
        0x1a
        0x23
    .end array-data

    :array_45
    .array-data 4
        0x1
        0x3
        0x4
        0x14
        0x1b
        0x20
        0x1a
        0x23
    .end array-data

    :array_46
    .array-data 4
        0x1
        0x7
        0x2
        0x4
        0x14
        0x1b
        0x20
        0x23
    .end array-data

    :array_47
    .array-data 4
        0x1
        0x7
        0x4
        0x14
        0x1b
        0x20
        0x23
    .end array-data

    :array_48
    .array-data 4
        0x1
        0x7
        0x4
        0x14
        0x1b
        0x20
        0x23
    .end array-data

    :array_49
    .array-data 4
        0x14
        0x7
        0x1f
        0x6
        0xc
        0xf
        0x8
        0x13
        0x1b
        0x1d
        0x1e
        0x20
        0x1a
        0x23
    .end array-data

    :array_4a
    .array-data 4
        0x14
        0x7
        0x1f
        0x6
        0xf
        0x8
        0x13
        0x1b
        0x1d
        0x1e
        0x20
        0x1a
        0x23
    .end array-data

    :array_4b
    .array-data 4
        0x14
        0x7
        0x1f
        0xf
        0x8
        0x13
        0x1b
        0x1d
        0x1e
        0x20
        0x1a
        0x23
    .end array-data

    :array_4c
    .array-data 4
        0x1
        0x2
        0x14
        0x6
        0xc
        0xf
        0x3
        0x8
        0x1b
        0x20
        0x1a
        0x23
    .end array-data

    :array_4d
    .array-data 4
        0x1
        0x14
        0x6
        0xf
        0x8
        0x1b
        0x20
        0x1a
        0x23
    .end array-data

    :array_4e
    .array-data 4
        0x1
        0x14
        0x3
        0x8
        0x1b
        0xf
        0x20
        0x1a
        0x23
    .end array-data

    :array_4f
    .array-data 4
        0x1
        0x7
        0x2
        0x14
        0xc
        0xf
        0x3
        0x8
        0x1b
        0x20
        0x1a
        0x23
    .end array-data

    :array_50
    .array-data 4
        0x1
        0x7
        0x14
        0xf
        0x8
        0x1b
        0x20
        0x1a
        0x23
    .end array-data

    :array_51
    .array-data 4
        0x1
        0x7
        0x14
        0xf
        0x3
        0x8
        0x1b
        0x20
        0x1a
        0x23
    .end array-data

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_52
    .array-data 4
        0xc
        0xf
        0x8
        0x14
        0x16
        0x20
    .end array-data

    :array_53
    .array-data 4
        0xc
        0xf
        0x8
        0x14
        0x20
    .end array-data

    :array_54
    .array-data 4
        0x8
        0x14
        0xf
        0x20
    .end array-data

    :array_55
    .array-data 4
        0x6
        0xf
        0x2
        0x13
        0x8
        0x14
        0x16
        0x1d
        0x1e
        0x20
        0x1a
    .end array-data

    :array_56
    .array-data 4
        0xf
        0x13
        0x8
        0x14
        0x1d
        0x1e
        0x20
        0x1a
    .end array-data

    :array_57
    .array-data 4
        0xf
        0x13
        0x8
        0x14
        0x1d
        0x1e
        0x20
        0x1a
    .end array-data

    :array_58
    .array-data 4
        0x6
        0xf
        0x13
        0x8
        0x14
        0x16
        0x1d
        0x1e
        0x20
        0x1a
    .end array-data

    :array_59
    .array-data 4
        0x21
        0x14
    .end array-data

    :array_5a
    .array-data 4
        0x4
        0xe
        0x13
        0x1e
    .end array-data

    :array_5b
    .array-data 4
        0x4
        0xe
        0x13
        0x1e
    .end array-data

    :array_5c
    .array-data 4
        0x4
        0xe
        0x13
        0x1e
    .end array-data

    :array_5d
    .array-data 4
        0x14
        0x1a
    .end array-data

    :array_5e
    .array-data 4
        0x14
        0x1a
    .end array-data

    :array_5f
    .array-data 4
        0x14
        0x1a
    .end array-data

    :array_60
    .array-data 4
        0xd
        0x10
    .end array-data

    :array_61
    .array-data 4
        0xd
        0x10
    .end array-data

    :array_62
    .array-data 4
        0x11
        0xa
        0x1
        0x10
        0x8
        0x7
        0x14
        0x20
    .end array-data

    :array_63
    .array-data 4
        0x11
        0xa
        0x1
        0x10
        0x8
        0x7
        0x14
        0x20
    .end array-data

    :array_64
    .array-data 4
        0x11
        0xa
        0x1
        0x10
        0x8
        0x7
        0x14
        0x20
    .end array-data

    :array_65
    .array-data 4
        0x2
        0x10
        0x11
        0x20
        0x9
    .end array-data

    :array_66
    .array-data 4
        0x2
        0x10
        0x11
        0x20
        0x9
    .end array-data

    :array_67
    .array-data 4
        0x2
        0x10
        0x11
        0x20
        0x9
    .end array-data

    :array_68
    .array-data 4
        0x1
        0x2
        0x3
    .end array-data

    :array_69
    .array-data 4
        0x1
        0x2
    .end array-data

    :array_6a
    .array-data 4
        0x1
        0x2
        0x3
    .end array-data

    :array_6b
    .array-data 4
        0x11
        0x20
    .end array-data
.end method

.method public declared-synchronized setDim(IZ)V
    .locals 1

    monitor-enter p0

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/DimController;->mCurrentDimArray:[Z

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/DimController;->mCurrentDimArray:[Z

    aput-boolean p2, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized synchronizeDim()V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-boolean v3, p0, Lcom/sec/android/app/camera/DimController;->mIsNeedSynchronizeDim:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    const/4 v1, 0x0

    :goto_1
    const/16 v3, 0x24

    if-ge v1, v3, :cond_4

    :try_start_1
    iget-object v3, p0, Lcom/sec/android/app/camera/DimController;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/glview/GLView;

    instance-of v3, v2, Lcom/sec/android/app/camera/widget/gl/Item;

    if-eqz v3, :cond_2

    move-object v0, v2

    check-cast v0, Lcom/sec/android/app/camera/widget/gl/Item;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sec/android/app/camera/widget/gl/Item;->getCommandId()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/DimController;->getkeyFromCommandId(I)I

    move-result v3

    if-ne v3, v1, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/camera/DimController;->mCurrentDimArray:[Z

    aget-boolean v3, v3, v1

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLView;->isDim()Z

    move-result v5

    if-eq v3, v5, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/camera/DimController;->mCurrentDimArray:[Z

    aget-boolean v3, v3, v1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLView;->setDim(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_2
    :try_start_2
    invoke-virtual {v2}, Lcom/samsung/android/glview/GLView;->getTag()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/DimController;->getkeyFromCommandId(I)I

    move-result v3

    if-ne v3, v1, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/camera/DimController;->mCurrentDimArray:[Z

    aget-boolean v3, v3, v1

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLView;->isDim()Z

    move-result v5

    if-eq v3, v5, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/camera/DimController;->mCurrentDimArray:[Z

    aget-boolean v3, v3, v1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLView;->setDim(Z)V

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sec/android/app/camera/DimController;->mIsNeedSynchronizeDim:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    return-void
.end method
