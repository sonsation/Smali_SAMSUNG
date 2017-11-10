.class public Lcom/sec/android/app/camera/util/CameraParameters;
.super Ljava/lang/Object;
.source "CameraParameters.java"


# static fields
.field private static mFocusDistanceArray:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x5d

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sec/android/app/camera/util/CameraParameters;->mFocusDistanceArray:[I

    return-void

    :array_0
    .array-data 4
        0x3c
        0x3f
        0x43
        0x46
        0x49
        0x4d
        0x50
        0x53
        0x57
        0x5a
        0x5d
        0x61
        0x64
        0x67
        0x6b
        0x6e
        0x71
        0x75
        0x78
        0x7b
        0x7f
        0x82
        0x85
        0x89
        0x8c
        0x8f
        0x93
        0x96
        0x99
        0x9d
        0xa0
        0xa3
        0xa7
        0xaa
        0xad
        0xb1
        0xb4
        0xb7
        0xbb
        0xbe
        0xc3
        0xc8
        0xcd
        0xd2
        0xd7
        0xdc
        0xe1
        0xe6
        0xeb
        0xf0
        0xf5
        0xfa
        0x104
        0x10e
        0x118
        0x122
        0x12c
        0x136
        0x140
        0x14a
        0x154
        0x15e
        0x168
        0x172
        0x17c
        0x186
        0x190
        0x19a
        0x1a9
        0x1b8
        0x1c7
        0x1d6
        0x1e5
        0x1f4
        0x208
        0x21c
        0x230
        0x244
        0x262
        0x280
        0x29e
        0x2c6
        0x30c
        0x348
        0x384
        0x3d4
        0x4b0
        0x640
        0x834
        0x9c4
        0xaf0
        0x1388
        0x2710
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCameraHDRString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string v0, "off"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "auto"

    goto :goto_0

    :pswitch_1
    const-string v0, "off"

    goto :goto_0

    :pswitch_2
    const-string v0, "on"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static getDualEffectString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string v0, "none"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "normal"

    goto :goto_0

    :pswitch_1
    const-string v0, "cubism"

    goto :goto_0

    :pswitch_2
    const-string v0, "postcard"

    goto :goto_0

    :pswitch_3
    const-string v0, "blur"

    goto :goto_0

    :pswitch_4
    const-string v0, "heart"

    goto :goto_0

    :pswitch_5
    const-string v0, "split-view"

    goto :goto_0

    :pswitch_6
    const-string v0, "polaroid"

    goto :goto_0

    :pswitch_7
    const-string v0, "circle-lens"

    goto :goto_0

    :pswitch_8
    const-string v0, "flip"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public static getEffectString(I)Ljava/lang/String;
    .locals 1

    sparse-switch p0, :sswitch_data_0

    const-string v0, "none"

    :goto_0
    return-object v0

    :sswitch_0
    const-string v0, "none"

    goto :goto_0

    :sswitch_1
    const-string v0, "negative"

    goto :goto_0

    :sswitch_2
    const-string v0, "mono"

    goto :goto_0

    :sswitch_3
    const-string v0, "sepia"

    goto :goto_0

    :sswitch_4
    const-string v0, "solarize"

    goto :goto_0

    :sswitch_5
    const-string v0, "vintage-cold"

    goto :goto_0

    :sswitch_6
    const-string v0, "vintage-warm"

    goto :goto_0

    :sswitch_7
    const-string v0, "point-blue"

    goto :goto_0

    :sswitch_8
    const-string v0, "point-red-yellow"

    goto :goto_0

    :sswitch_9
    const-string v0, "point-green"

    goto :goto_0

    :sswitch_a
    const-string v0, "washed"

    goto :goto_0

    :sswitch_b
    const-string v0, "posterize"

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_3
        0x2 -> :sswitch_2
        0x3 -> :sswitch_1
        0x18 -> :sswitch_4
        0x19 -> :sswitch_6
        0x1a -> :sswitch_5
        0x1b -> :sswitch_b
        0x1c -> :sswitch_7
        0x1d -> :sswitch_8
        0x1e -> :sswitch_9
        0x1f -> :sswitch_a
    .end sparse-switch
.end method

.method public static getExposuremeterString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string v0, "center"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "center"

    goto :goto_0

    :pswitch_1
    const-string v0, "spot"

    goto :goto_0

    :pswitch_2
    const-string v0, "matrix"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getFlashModeString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string v0, "auto"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "auto"

    goto :goto_0

    :pswitch_1
    const-string v0, "on"

    goto :goto_0

    :pswitch_2
    const-string v0, "off"

    goto :goto_0

    :pswitch_3
    const-string v0, "torch"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public static getFocusModeString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string v0, "auto"

    :goto_0
    return-object v0

    :pswitch_0
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_INFINITY_FOCUS:Z

    if-eqz v0, :cond_0

    const-string v0, "infinity"

    goto :goto_0

    :cond_0
    const-string v0, "fixed"

    goto :goto_0

    :pswitch_1
    const-string v0, "auto"

    goto :goto_0

    :pswitch_2
    const-string v0, "manual"

    goto :goto_0

    :pswitch_3
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_FACE_PRIORITY_AF:Z

    if-eqz v0, :cond_1

    const-string v0, "face-priority"

    goto :goto_0

    :cond_1
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_CONTINUOUS_AF:Z

    if-eqz v0, :cond_2

    const-string v0, "continuous-picture"

    goto :goto_0

    :cond_2
    const-string v0, "auto"

    goto :goto_0

    :pswitch_4
    const-string v0, "continuous-video"

    goto :goto_0

    :pswitch_5
    const-string v0, "continuous-picture"

    goto :goto_0

    :pswitch_6
    const-string v0, "object-tracking-picture"

    goto :goto_0

    :pswitch_7
    const-string v0, "object-tracking-video"

    goto :goto_0

    :pswitch_8
    const-string v0, "macro"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public static getFrontFlashModeString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string v0, "off"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "auto"

    goto :goto_0

    :pswitch_1
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_FRONT_FLASH:Z

    if-eqz v0, :cond_0

    const-string v0, "torch"

    goto :goto_0

    :cond_0
    const-string v0, "on"

    goto :goto_0

    :pswitch_2
    const-string v0, "off"

    goto :goto_0

    :pswitch_3
    const-string v0, "torch"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public static getIsoString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string v0, "auto"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "auto"

    goto :goto_0

    :pswitch_1
    const-string v0, "50"

    goto :goto_0

    :pswitch_2
    const-string v0, "80"

    goto :goto_0

    :pswitch_3
    const-string v0, "100"

    goto :goto_0

    :pswitch_4
    const-string v0, "125"

    goto :goto_0

    :pswitch_5
    const-string v0, "160"

    goto :goto_0

    :pswitch_6
    const-string v0, "200"

    goto :goto_0

    :pswitch_7
    const-string v0, "250"

    goto :goto_0

    :pswitch_8
    const-string v0, "320"

    goto :goto_0

    :pswitch_9
    const-string v0, "400"

    goto :goto_0

    :pswitch_a
    const-string v0, "500"

    goto :goto_0

    :pswitch_b
    const-string v0, "640"

    goto :goto_0

    :pswitch_c
    const-string v0, "800"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method public static getKelvinValueString(I)Ljava/lang/String;
    .locals 1

    mul-int/lit8 v0, p0, 0x64

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getManualFocusValue(I)I
    .locals 2

    const/4 v0, 0x0

    if-ltz p0, :cond_0

    sget-object v1, Lcom/sec/android/app/camera/util/CameraParameters;->mFocusDistanceArray:[I

    array-length v1, v1

    if-gt p0, v1, :cond_0

    sget-object v1, Lcom/sec/android/app/camera/util/CameraParameters;->mFocusDistanceArray:[I

    aget v0, v1, p0

    :cond_0
    return v0
.end method

.method public static getModeString(I)Ljava/lang/String;
    .locals 1

    sparse-switch p0, :sswitch_data_0

    const-string v0, "unknown"

    :goto_0
    return-object v0

    :sswitch_0
    const-string v0, "scene-mode"

    goto :goto_0

    :sswitch_1
    const-string v0, "flash-mode"

    goto :goto_0

    :sswitch_2
    const-string v0, "picture-size"

    goto :goto_0

    :sswitch_3
    const-string v0, "focus-mode"

    goto :goto_0

    :sswitch_4
    const-string v0, "exposure-compensation"

    goto :goto_0

    :sswitch_5
    const-string v0, "effect"

    goto :goto_0

    :sswitch_6
    const-string v0, "wb-k"

    goto :goto_0

    :sswitch_7
    const-string v0, "whitebalance"

    goto :goto_0

    :sswitch_8
    const-string v0, "iso"

    goto :goto_0

    :sswitch_9
    const-string v0, "exposure-time"

    goto :goto_0

    :sswitch_a
    const-string v0, "jpeg-quality"

    goto :goto_0

    :sswitch_b
    const-string v0, "zoom"

    goto :goto_0

    :sswitch_c
    const-string v0, "metering"

    goto :goto_0

    :sswitch_d
    const-string v0, "rt-hdr"

    goto :goto_0

    :sswitch_e
    const-string v0, "video-size"

    goto :goto_0

    :sswitch_f
    const-string v0, "jpeg-quality"

    goto :goto_0

    :sswitch_10
    const-string v0, "video-stabilization"

    goto :goto_0

    :sswitch_11
    const-string v0, "fast-fps-mode"

    goto :goto_0

    :sswitch_12
    const-string v0, "motion-speed"

    goto :goto_0

    :sswitch_13
    const-string v0, "camera_id"

    goto :goto_0

    :sswitch_14
    const-string v0, "shot-mode"

    goto :goto_0

    :sswitch_15
    const-string v0, "focus-distance"

    goto :goto_0

    :sswitch_16
    const-string v0, "picture-format"

    goto :goto_0

    :sswitch_17
    const-string v0, "intensity"

    goto :goto_0

    :sswitch_18
    const-string v0, "vignette"

    goto :goto_0

    :sswitch_19
    const-string v0, "wb-level"

    goto :goto_0

    :sswitch_1a
    const-string v0, "multi-af"

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_14
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_2
        0x5 -> :sswitch_3
        0x7 -> :sswitch_4
        0x8 -> :sswitch_5
        0x9 -> :sswitch_7
        0xa -> :sswitch_8
        0xb -> :sswitch_c
        0xc -> :sswitch_d
        0x10 -> :sswitch_a
        0x12 -> :sswitch_b
        0x18 -> :sswitch_15
        0x1f -> :sswitch_9
        0x23 -> :sswitch_6
        0x24 -> :sswitch_13
        0x6a -> :sswitch_1
        0x6c -> :sswitch_1
        0x76 -> :sswitch_19
        0x91 -> :sswitch_1a
        0x97 -> :sswitch_17
        0x98 -> :sswitch_18
        0xaa -> :sswitch_1
        0x13b -> :sswitch_16
        0xbb9 -> :sswitch_e
        0xbba -> :sswitch_3
        0xbbb -> :sswitch_f
        0xbbf -> :sswitch_10
        0x170d -> :sswitch_12
        0x170e -> :sswitch_11
    .end sparse-switch
.end method

.method public static getMultiAFModeString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string v0, "off"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "on"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static getPictureFormatString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string v0, "jpeg"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "jpeg"

    goto :goto_0

    :pswitch_1
    const-string v0, "raw+jpeg"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getQualityValue(I)I
    .locals 1

    const/16 v0, 0x62

    packed-switch p0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    const/16 v0, 0x62

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x62

    goto :goto_0

    :pswitch_3
    const/16 v0, 0x62

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getRecordingMotionFPS(I)Ljava/lang/String;
    .locals 1

    sparse-switch p0, :sswitch_data_0

    const-string v0, "-1"

    :goto_0
    return-object v0

    :sswitch_0
    const-string v0, "1"

    goto :goto_0

    :sswitch_1
    const-string v0, "2"

    goto :goto_0

    :sswitch_2
    const-string v0, "3"

    goto :goto_0

    :sswitch_3
    const-string v0, "-1"

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_3
        0x3c -> :sswitch_0
        0x78 -> :sswitch_1
        0xf0 -> :sswitch_2
    .end sparse-switch
.end method

.method public static getRecordingMotionSpeed(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string v0, "-1"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "1"

    goto :goto_0

    :pswitch_1
    const-string v0, "2"

    goto :goto_0

    :pswitch_2
    const-string v0, "3"

    goto :goto_0

    :pswitch_3
    const-string v0, "4"

    goto :goto_0

    :pswitch_4
    const-string v0, "-1"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getSceneModeString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string v0, "auto"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "auto"

    goto :goto_0

    :pswitch_1
    const-string v0, "sports"

    goto :goto_0

    :pswitch_2
    const-string v0, "night"

    goto :goto_0

    :pswitch_3
    const-string v0, "aqua_scn"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public static getShutterSpeedString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string v0, "auto"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "auto"

    goto :goto_0

    :pswitch_1
    const-string v0, "42"

    goto :goto_0

    :pswitch_2
    const-string v0, "63"

    goto :goto_0

    :pswitch_3
    const-string v0, "83"

    goto :goto_0

    :pswitch_4
    const-string v0, "125"

    goto :goto_0

    :pswitch_5
    const-string v0, "167"

    goto :goto_0

    :pswitch_6
    const-string v0, "250"

    goto :goto_0

    :pswitch_7
    const-string v0, "333"

    goto :goto_0

    :pswitch_8
    const-string v0, "500"

    goto :goto_0

    :pswitch_9
    const-string v0, "667"

    goto :goto_0

    :pswitch_a
    const-string v0, "1000"

    goto :goto_0

    :pswitch_b
    const-string v0, "1333"

    goto :goto_0

    :pswitch_c
    const-string v0, "2000"

    goto :goto_0

    :pswitch_d
    const-string v0, "2857"

    goto :goto_0

    :pswitch_e
    const-string v0, "4000"

    goto :goto_0

    :pswitch_f
    const-string v0, "5556"

    goto :goto_0

    :pswitch_10
    const-string v0, "8000"

    goto :goto_0

    :pswitch_11
    const-string v0, "11111"

    goto :goto_0

    :pswitch_12
    const-string v0, "16667"

    goto :goto_0

    :pswitch_13
    const-string v0, "20000"

    goto :goto_0

    :pswitch_14
    const-string v0, "22222"

    goto :goto_0

    :pswitch_15
    const-string v0, "33333"

    goto :goto_0

    :pswitch_16
    const-string v0, "50000"

    goto :goto_0

    :pswitch_17
    const-string v0, "66667"

    goto :goto_0

    :pswitch_18
    const-string v0, "100000"

    goto :goto_0

    :pswitch_19
    const-string v0, "125000"

    goto :goto_0

    :pswitch_1a
    const-string v0, "166667"

    goto :goto_0

    :pswitch_1b
    const-string v0, "250000"

    goto :goto_0

    :pswitch_1c
    const-string v0, "300000"

    goto :goto_0

    :pswitch_1d
    const-string v0, "500000"

    goto :goto_0

    :pswitch_1e
    const-string v0, "1000000"

    goto :goto_0

    :pswitch_1f
    const-string v0, "2000000"

    goto :goto_0

    :pswitch_20
    const-string v0, "4000000"

    goto :goto_0

    :pswitch_21
    const-string v0, "8000000"

    goto :goto_0

    :pswitch_22
    const-string v0, "10000000"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
    .end packed-switch
.end method

.method public static getTouchMeteringModeString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string v0, "weighted-center"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "weighted-center"

    goto :goto_0

    :pswitch_1
    const-string v0, "weighted-spot"

    goto :goto_0

    :pswitch_2
    const-string v0, "weighted-matrix"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getWhitebalanceString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string v0, "auto"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "auto"

    goto :goto_0

    :pswitch_1
    const-string v0, "daylight"

    goto :goto_0

    :pswitch_2
    const-string v0, "cloudy-daylight"

    goto :goto_0

    :pswitch_3
    const-string v0, "incandescent"

    goto :goto_0

    :pswitch_4
    const-string v0, "fluorescent"

    goto :goto_0

    :pswitch_5
    const-string v0, "temperature"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_5
    .end packed-switch
.end method
