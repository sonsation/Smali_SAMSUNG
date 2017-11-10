.class public Lcom/sec/android/app/camera/engine/CeRequest;
.super Ljava/lang/Object;
.source "CeRequest.java"


# static fields
.field protected static final CE_ACTIVATE_SHOOTING_MODE:I = 0x4e

.field protected static final CE_CANCEL_VIDEO_RECORDING:I = 0x6b

.field protected static final CE_CHANGE_PARAM:I = 0x7

.field protected static final CE_DO_AUTOFOCUS:I = 0x5

.field protected static final CE_DO_AUTOFOCUS_COMPLETED:I = 0x2

.field protected static final CE_DO_CAPTURE:I = 0x6

.field protected static final CE_DO_CAPTURE_COMPLETED:I = 0x3

.field protected static final CE_DO_HIDE_COVER_CAMERA:I = 0x35

.field protected static final CE_DO_SUPER_RESOLUTION_SHOT:I = 0x3f

.field protected static final CE_DO_TOUCH_AE:I = 0x3c

.field protected static final CE_DO_TOUCH_AE_COMPLETED:I = 0xe

.field protected static final CE_HIDE_COVER_COMPLETED:I = 0xd

.field protected static final CE_IMAGE_STORING_COMPLETED:I = 0x7

.field protected static final CE_INITIALIZE_SEMCAMERA_LISTENER:I = 0x2

.field protected static final CE_ONESHOT_PREVIEW_CALLBACK_COMPLETED:I = 0x10

.field protected static final CE_PAUSE_MULTI_TRACK_RECORDING:I = 0x71

.field protected static final CE_PAUSE_VIDEO_RECORDING:I = 0x67

.field protected static final CE_PREPARE_MULTI_TRACK_RECORDING:I = 0x6e

.field protected static final CE_PREPARE_RECORDING_COMPLETED:I = 0x65

.field protected static final CE_PREPARE_VIDEO_RECORDING:I = 0x65

.field protected static final CE_PREVIEW_SWITCH_COMPLETED:I = 0xa

.field protected static final CE_RELEASE_SHOOTING_MODE_RECORD_KEY:I = 0x6d

.field protected static final CE_REQUEST_NOTIFY_PREVIEW_STARTED:I = 0x53

.field protected static final CE_REQUEST_NOTIFY_PREVIEW_STARTED_COMPLETED:I = 0x15

.field protected static final CE_RESET_SETTINGS:I = 0x15

.field protected static final CE_RESET_SETTINGS_COMPLETED:I = 0x11

.field protected static final CE_RESUME_MULTI_TRACK_RECORDING:I = 0x72

.field protected static final CE_RESUME_VIDEO_RECORDING:I = 0x68

.field protected static final CE_SET_ALL_PARAM:I = 0xa

.field protected static final CE_SET_ANTI_FOG_LEVEL:I = 0x4a

.field protected static final CE_SET_CAMCORDER_PARAMETER:I = 0x2f

.field protected static final CE_SET_DUAL_EFFECT_LAYER_ORDER:I = 0x51

.field protected static final CE_SET_EFFECT_ORIENTATION:I = 0x31

.field protected static final CE_SET_EFFECT_PARAM:I = 0x4c

.field protected static final CE_SET_EYEENLARGE_LEVEL:I = 0x47

.field protected static final CE_SET_FACE_RETOUCH_LEVEL:I = 0x3a

.field protected static final CE_SET_MULTIPLE_PARAMS:I = 0x1f

.field protected static final CE_SET_ONESHOT_PREVIEW_CALLBACK:I = 0x44

.field protected static final CE_SET_SHOOTING_MODE:I = 0x4d

.field protected static final CE_SET_SHUTTER_SOUND:I = 0x2e

.field protected static final CE_SET_SINGLE_EFFECT:I = 0x24

.field protected static final CE_SET_SINGLE_EFFECT_SYNC:I = 0x33

.field protected static final CE_SET_SKINCOLOR_LEVEL:I = 0x48

.field protected static final CE_SET_SLIMFACE_LEVEL:I = 0x45

.field protected static final CE_SET_SPOTLIGHT_LEVEL:I = 0x46

.field protected static final CE_SMILE_DETECTION_COMPLETED:I = 0x5

.field protected static final CE_STANDBY_PREVIEW:I = 0x63

.field protected static final CE_START_BURST_CAPTURE:I = 0xe

.field protected static final CE_START_BURST_CAPTURE_COMPLETED:I = 0xb

.field protected static final CE_START_DUAL_CAMERA:I = 0x14

.field protected static final CE_START_ENGINE:I = 0x0

.field protected static final CE_START_ENGINE_COMPLETED:I = 0x0

.field protected static final CE_START_FACE_DETECTION:I = 0x3b

.field protected static final CE_START_MOTION_PANORAMA:I = 0x4f

.field protected static final CE_START_MOTION_PANORAMA_COMPLETED:I = 0x13

.field protected static final CE_START_MOTION_WIDE_SELFIE:I = 0x54

.field protected static final CE_START_MOTION_WIDE_SELFIE_COMPLETED:I = 0x16

.field protected static final CE_START_MULTIFRMAE_MODE:I = 0x32

.field protected static final CE_START_MULTI_TRACK_RECORDING:I = 0x6f

.field protected static final CE_START_PANORAMA:I = 0x10

.field protected static final CE_START_PANORAMA_COMPLETED:I = 0x9

.field protected static final CE_START_PREVIEW:I = 0x3

.field protected static final CE_START_PREVIEW_COMPLETED:I = 0x1

.field protected static final CE_START_PROGRESS_WHEEL_TIMER:I = 0x19

.field protected static final CE_START_PROGRESS_WHEEL_TIMER_COPMLETED:I = 0x12

.field protected static final CE_START_RECORDING_COMPLETED:I = 0x66

.field protected static final CE_START_SCREEN_FLASH:I = 0x52

.field protected static final CE_START_SCREEN_FLASH_COMPLETED:I = 0x14

.field protected static final CE_START_SHOT_AND_MORE:I = 0x37

.field protected static final CE_START_SHUTTER_TIMER:I = 0x9

.field protected static final CE_START_SHUTTER_TIMER_COPMLETED:I = 0x4

.field protected static final CE_START_VIDEO_RECORDING:I = 0x66

.field protected static final CE_START_VIRTUAL_SHOT:I = 0x40

.field protected static final CE_START_WIDE_SELFIE:I = 0x3d

.field protected static final CE_START_WIDE_SELFIE_COMPLETED:I = 0xf

.field protected static final CE_STOP_AND_RESTART_VIDEO_RECORDING:I = 0x6c

.field protected static final CE_STOP_AND_RESTART_VIDEO_RECORDING_COMPLETED:I = 0x67

.field protected static final CE_STOP_BURST_CAPTURE:I = 0xf

.field protected static final CE_STOP_BURST_CAPTURE_COMPLETED:I = 0xc

.field protected static final CE_STOP_ENGINE:I = 0x1

.field protected static final CE_STOP_MOTION_PANORAMA:I = 0x50

.field protected static final CE_STOP_MOTION_WIDE_SELFIE:I = 0x55

.field protected static final CE_STOP_MULTI_TRACK_RECORDING:I = 0x70

.field protected static final CE_STOP_PANORAMA:I = 0x11

.field protected static final CE_STOP_PREVIEW:I = 0x4

.field protected static final CE_STOP_SHOT_AND_MORE:I = 0x38

.field protected static final CE_STOP_VIDEO_RECORDING_ASYNC:I = 0x6a

.field protected static final CE_STOP_VIRTUAL_SHOT:I = 0x41

.field protected static final CE_STOP_WIDE_SELFIE:I = 0x3e

.field protected static final CE_SURFACE_CREATED:I = 0x64

.field protected static final CE_SWITCH_CAMERA:I = 0x13

.field protected static final CE_SWITCH_TO_CAMCORDER_PREVIEW:I = 0x21

.field protected static final CE_SWITCH_TO_CAMERA_PREVIEW:I = 0x20

.field protected static final CE_WAIT:I = 0xd

.field protected static final CE_WAIT_COMPLETED:I = 0x8

.field private static final REQUEST_POOL_SIZE:I = 0xa

.field private static mPool:[Lcom/sec/android/app/camera/engine/CeRequest;


# instance fields
.field private mParam:Ljava/lang/Object;

.field private mRequest:I

.field protected mReserved:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xa

    new-array v0, v0, [Lcom/sec/android/app/camera/engine/CeRequest;

    sput-object v0, Lcom/sec/android/app/camera/engine/CeRequest;->mPool:[Lcom/sec/android/app/camera/engine/CeRequest;

    return-void
.end method

.method public constructor <init>(ILjava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/engine/CeRequest;->mReserved:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/CeRequest;->mParam:Ljava/lang/Object;

    iput p1, p0, Lcom/sec/android/app/camera/engine/CeRequest;->mRequest:I

    iput-object p2, p0, Lcom/sec/android/app/camera/engine/CeRequest;->mParam:Ljava/lang/Object;

    return-void
.end method

.method public static obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/engine/CeRequest;
    .locals 4

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0xa

    if-ge v0, v2, :cond_2

    sget-object v2, Lcom/sec/android/app/camera/engine/CeRequest;->mPool:[Lcom/sec/android/app/camera/engine/CeRequest;

    aget-object v1, v2, v0

    if-nez v1, :cond_0

    new-instance v1, Lcom/sec/android/app/camera/engine/CeRequest;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/camera/engine/CeRequest;-><init>(ILjava/lang/Object;)V

    iput-boolean v3, v1, Lcom/sec/android/app/camera/engine/CeRequest;->mReserved:Z

    sget-object v2, Lcom/sec/android/app/camera/engine/CeRequest;->mPool:[Lcom/sec/android/app/camera/engine/CeRequest;

    aput-object v1, v2, v0

    move-object v2, v1

    :goto_1
    return-object v2

    :cond_0
    iget-boolean v2, v1, Lcom/sec/android/app/camera/engine/CeRequest;->mReserved:Z

    if-nez v2, :cond_1

    iput p0, v1, Lcom/sec/android/app/camera/engine/CeRequest;->mRequest:I

    iput-object p1, v1, Lcom/sec/android/app/camera/engine/CeRequest;->mParam:Ljava/lang/Object;

    iput-boolean v3, v1, Lcom/sec/android/app/camera/engine/CeRequest;->mReserved:Z

    move-object v2, v1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    new-instance v2, Lcom/sec/android/app/camera/engine/CeRequest;

    invoke-direct {v2, p0, p1}, Lcom/sec/android/app/camera/engine/CeRequest;-><init>(ILjava/lang/Object;)V

    goto :goto_1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_0

    check-cast p1, Lcom/sec/android/app/camera/engine/CeRequest;

    iget v1, p1, Lcom/sec/android/app/camera/engine/CeRequest;->mRequest:I

    iget v2, p0, Lcom/sec/android/app/camera/engine/CeRequest;->mRequest:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getParam()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CeRequest;->mParam:Ljava/lang/Object;

    return-object v0
.end method

.method public getRequest()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/engine/CeRequest;->mRequest:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/engine/CeRequest;->mRequest:I

    return v0
.end method

.method public setRequest(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/engine/CeRequest;->mRequest:I

    return-void
.end method
