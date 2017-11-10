.class public Lcom/sec/android/app/camera/util/CameraResolution;
.super Ljava/lang/Object;
.source "CameraResolution.java"


# static fields
.field public static final CIF_ASPECT_RATIO_TYPE:I = 0x3

.field public static final NORMAL_ASPECT_RATIO_TYPE:I = 0x1

.field public static final RESOLUTION_1024X576:I = 0x27

.field public static final RESOLUTION_1024X768:I = 0x25

.field public static final RESOLUTION_1066X800:I = 0x45

.field public static final RESOLUTION_1072X1072:I = 0x2f

.field public static final RESOLUTION_1088X1088:I = 0x3c

.field public static final RESOLUTION_1248X672:I = 0x1d

.field public static final RESOLUTION_1280X720:I = 0xe

.field public static final RESOLUTION_1280X800:I = 0x16

.field public static final RESOLUTION_1280X960:I = 0xa

.field public static final RESOLUTION_1392X1392:I = 0x18

.field public static final RESOLUTION_1440X1080:I = 0x1f

.field public static final RESOLUTION_1440X1440:I = 0x34

.field public static final RESOLUTION_1536X1536:I = 0x4b

.field public static final RESOLUTION_1536X864:I = 0x1c

.field public static final RESOLUTION_1600X1200:I = 0x8

.field public static final RESOLUTION_1600X900:I = 0x48

.field public static final RESOLUTION_1600X960:I = 0x9

.field public static final RESOLUTION_1616X1212:I = 0x47

.field public static final RESOLUTION_1632X880:I = 0x1b

.field public static final RESOLUTION_176X144:I = 0x13

.field public static final RESOLUTION_1836X1836:I = 0x4e

.field public static final RESOLUTION_1920X1080:I = 0xd

.field public static final RESOLUTION_1920X1080_60FPS:I = 0x2a

.field public static final RESOLUTION_1920X1440:I = 0x35

.field public static final RESOLUTION_1920X1920:I = 0x3b

.field public static final RESOLUTION_1936X1936:I = 0x3a

.field public static final RESOLUTION_2048X1104:I = 0x1a

.field public static final RESOLUTION_2048X1152:I = 0x17

.field public static final RESOLUTION_2048X1232:I = 0x7

.field public static final RESOLUTION_2048X1536:I = 0x6

.field public static final RESOLUTION_2160X2160:I = 0x44

.field public static final RESOLUTION_2448X2448:I = 0x30

.field public static final RESOLUTION_2560X1440:I = 0x15

.field public static final RESOLUTION_2560X1536:I = 0x5

.field public static final RESOLUTION_2560X1920:I = 0x4

.field public static final RESOLUTION_2576X1932:I = 0x3d

.field public static final RESOLUTION_2592X1458:I = 0x37

.field public static final RESOLUTION_2592X1944:I = 0x19

.field public static final RESOLUTION_2592X2592:I = 0x33

.field public static final RESOLUTION_2880X2160:I = 0x42

.field public static final RESOLUTION_2976X2976:I = 0x2e

.field public static final RESOLUTION_3024X3024:I = 0x43

.field public static final RESOLUTION_3072X1856:I = 0x3

.field public static final RESOLUTION_3072X2304:I = 0x2

.field public static final RESOLUTION_3088X3088:I = 0x4f

.field public static final RESOLUTION_3096X3096:I = 0x2b

.field public static final RESOLUTION_320X240:I = 0x12

.field public static final RESOLUTION_3264X1836:I = 0x14

.field public static final RESOLUTION_3264X1968:I = 0x1

.field public static final RESOLUTION_3264X2448:I = 0x0

.field public static final RESOLUTION_3344X3344:I = 0x39

.field public static final RESOLUTION_3456X2592:I = 0x32

.field public static final RESOLUTION_3456X3456:I = 0x4a

.field public static final RESOLUTION_352X288:I = 0x11

.field public static final RESOLUTION_3840X2160:I = 0x28

.field public static final RESOLUTION_3984X2988:I = 0x2d

.field public static final RESOLUTION_400X240:I = 0x10

.field public static final RESOLUTION_4032X2268:I = 0x41

.field public static final RESOLUTION_4032X3024:I = 0x40

.field public static final RESOLUTION_4096X2304:I = 0x24

.field public static final RESOLUTION_4096X3072:I = 0x1e

.field public static final RESOLUTION_4128X2322:I = 0x21

.field public static final RESOLUTION_4128X3096:I = 0x20

.field public static final RESOLUTION_4608X2592:I = 0x31

.field public static final RESOLUTION_4608X3456:I = 0x3f

.field public static final RESOLUTION_5312X2988:I = 0x2c

.field public static final RESOLUTION_540X540:I = 0x4d

.field public static final RESOLUTION_640X360:I = 0x29

.field public static final RESOLUTION_640X480:I = 0xb

.field public static final RESOLUTION_720X480:I = 0xf

.field public static final RESOLUTION_720X540:I = 0x4c

.field public static final RESOLUTION_720X720:I = 0x49

.field public static final RESOLUTION_800X450:I = 0x23

.field public static final RESOLUTION_800X480:I = 0xc

.field public static final RESOLUTION_800X800:I = 0x46

.field public static final RESOLUTION_960X540:I = 0x26

.field public static final RESOLUTION_960X720:I = 0x22

.field public static final RESOLUTION_960X960:I = 0x3e

.field public static final RESOLUTION_MMS:I = 0x64

.field public static final SQUARE_ASPECT_RATIO_TYPE:I = 0x2

.field public static final WIDE_ASPECT_RATIO_TYPE:I


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compare(II)I
    .locals 4

    invoke-static {p0}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntWidth(I)I

    move-result v2

    invoke-static {p1}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntWidth(I)I

    move-result v3

    sub-int v1, v2, v3

    invoke-static {p0}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntHeight(I)I

    move-result v2

    invoke-static {p1}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntHeight(I)I

    move-result v3

    sub-int v0, v2, v3

    if-lez v1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-nez v1, :cond_0

    if-lez v0, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getAspectRatio(I)D
    .locals 4

    invoke-static {p0}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntWidth(I)I

    move-result v0

    int-to-double v0, v0

    invoke-static {p0}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntHeight(I)I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static getAspectRatioType(I)I
    .locals 1

    invoke-static {p0}, Lcom/sec/android/app/camera/util/CameraResolution;->isWideResolution(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/sec/android/app/camera/util/CameraResolution;->isSquareResolution(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getCamcorderProfileQualityLevel(I)I
    .locals 1

    sparse-switch p0, :sswitch_data_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :sswitch_0
    const/4 v0, 0x6

    goto :goto_0

    :sswitch_1
    const/4 v0, 0x5

    goto :goto_0

    :sswitch_2
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_3
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const/4 v0, 0x7

    goto :goto_0

    :sswitch_5
    const/4 v0, 0x2

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0xd -> :sswitch_0
        0xe -> :sswitch_1
        0xf -> :sswitch_2
        0x11 -> :sswitch_3
        0x12 -> :sswitch_4
        0x13 -> :sswitch_5
        0x2a -> :sswitch_0
    .end sparse-switch
.end method

.method public static getIntHeight(I)I
    .locals 5

    const/16 v1, 0x990

    const/16 v2, 0x72c

    const/16 v3, 0x1e0

    const/16 v4, 0x90

    const/16 v0, 0x870

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    :pswitch_1
    return v0

    :pswitch_2
    const/16 v0, 0xd10

    goto :goto_0

    :pswitch_3
    const/16 v0, 0xc18

    goto :goto_0

    :pswitch_4
    const/16 v0, 0xc00

    goto :goto_0

    :pswitch_5
    const/16 v0, 0xbac

    goto :goto_0

    :pswitch_6
    const/16 v0, 0xba0

    goto :goto_0

    :pswitch_7
    const/16 v0, 0x78c

    goto :goto_0

    :pswitch_8
    const/16 v0, 0x440

    goto :goto_0

    :pswitch_9
    const/16 v0, 0xa20

    goto :goto_0

    :pswitch_a
    move v0, v1

    goto :goto_0

    :pswitch_b
    const/16 v0, 0x912

    goto :goto_0

    :pswitch_c
    const/16 v0, 0x900

    goto :goto_0

    :pswitch_d
    const/16 v0, 0x7b0

    goto :goto_0

    :pswitch_e
    const/16 v0, 0x798

    goto :goto_0

    :pswitch_f
    const/16 v0, 0x790

    goto :goto_0

    :pswitch_10
    const/16 v0, 0x780

    goto :goto_0

    :pswitch_11
    const/16 v0, 0x740

    goto :goto_0

    :pswitch_12
    move v0, v2

    goto :goto_0

    :pswitch_13
    const/16 v0, 0x600

    goto :goto_0

    :pswitch_14
    const/16 v0, 0x5b2

    goto :goto_0

    :pswitch_15
    const/16 v0, 0x5a0

    goto :goto_0

    :pswitch_16
    const/16 v0, 0x4d0

    goto :goto_0

    :pswitch_17
    const/16 v0, 0x4b0

    goto :goto_0

    :pswitch_18
    const/16 v0, 0x4bc

    goto :goto_0

    :pswitch_19
    const/16 v0, 0x384

    goto :goto_0

    :pswitch_1a
    const/16 v0, 0x570

    goto :goto_0

    :pswitch_1b
    const/16 v0, 0x480

    goto :goto_0

    :pswitch_1c
    const/16 v0, 0x450

    goto :goto_0

    :pswitch_1d
    const/16 v0, 0x438

    goto :goto_0

    :pswitch_1e
    const/16 v0, 0x3c0

    goto :goto_0

    :pswitch_1f
    const/16 v0, 0x370

    goto :goto_0

    :pswitch_20
    const/16 v0, 0x360

    goto :goto_0

    :pswitch_21
    const/16 v0, 0x320

    goto :goto_0

    :pswitch_22
    const/16 v0, 0x21c

    goto :goto_0

    :pswitch_23
    move v0, v3

    goto :goto_0

    :pswitch_24
    const/16 v0, 0x1c2

    goto :goto_0

    :pswitch_25
    const/16 v0, 0x2d0

    goto :goto_0

    :pswitch_26
    const/16 v0, 0x2a0

    goto :goto_0

    :pswitch_27
    move v0, v3

    goto :goto_0

    :pswitch_28
    const/16 v0, 0x168

    goto :goto_0

    :pswitch_29
    const/16 v0, 0xf0

    goto :goto_0

    :pswitch_2a
    move v0, v4

    goto :goto_0

    :pswitch_2b
    const/16 v0, 0x300

    goto :goto_0

    :pswitch_2c
    const/16 v0, 0x240

    goto :goto_0

    :pswitch_2d
    const/16 v0, 0x430

    goto :goto_0

    :pswitch_2e
    move v0, v1

    goto/16 :goto_0

    :pswitch_2f
    const/16 v0, 0xbd0

    goto/16 :goto_0

    :pswitch_30
    const/16 v0, 0x8dc

    goto/16 :goto_0

    :pswitch_31
    const/16 v0, 0xbd0

    goto/16 :goto_0

    :pswitch_32
    const/16 v0, 0xd80

    goto/16 :goto_0

    :pswitch_33
    move v0, v2

    goto/16 :goto_0

    :pswitch_34
    const/16 v0, 0xc10

    goto/16 :goto_0

    :pswitch_35
    move v0, v4

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_d
        :pswitch_c
        :pswitch_11
        :pswitch_10
        :pswitch_13
        :pswitch_13
        :pswitch_16
        :pswitch_17
        :pswitch_1e
        :pswitch_1e
        :pswitch_23
        :pswitch_23
        :pswitch_1d
        :pswitch_25
        :pswitch_27
        :pswitch_29
        :pswitch_0
        :pswitch_29
        :pswitch_2a
        :pswitch_12
        :pswitch_15
        :pswitch_21
        :pswitch_1b
        :pswitch_1a
        :pswitch_e
        :pswitch_1c
        :pswitch_1f
        :pswitch_20
        :pswitch_26
        :pswitch_4
        :pswitch_1d
        :pswitch_3
        :pswitch_b
        :pswitch_25
        :pswitch_24
        :pswitch_c
        :pswitch_2b
        :pswitch_22
        :pswitch_2c
        :pswitch_1
        :pswitch_28
        :pswitch_1d
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_2d
        :pswitch_2e
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_15
        :pswitch_15
        :pswitch_0
        :pswitch_14
        :pswitch_0
        :pswitch_2
        :pswitch_f
        :pswitch_10
        :pswitch_8
        :pswitch_7
        :pswitch_1e
        :pswitch_32
        :pswitch_2f
        :pswitch_30
        :pswitch_1
        :pswitch_31
        :pswitch_1
        :pswitch_21
        :pswitch_21
        :pswitch_18
        :pswitch_19
        :pswitch_25
        :pswitch_32
        :pswitch_13
        :pswitch_22
        :pswitch_22
        :pswitch_33
        :pswitch_34
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_35
    .end packed-switch
.end method

.method public static getIntWidth(I)I
    .locals 1

    const/16 v0, 0xb0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    :pswitch_1
    return v0

    :pswitch_2
    const/16 v0, 0x14c0

    goto :goto_0

    :pswitch_3
    const/16 v0, 0x1200

    goto :goto_0

    :pswitch_4
    const/16 v0, 0x1020

    goto :goto_0

    :pswitch_5
    const/16 v0, 0x1000

    goto :goto_0

    :pswitch_6
    const/16 v0, 0xfc0

    goto :goto_0

    :pswitch_7
    const/16 v0, 0xf90

    goto :goto_0

    :pswitch_8
    const/16 v0, 0xd80

    goto :goto_0

    :pswitch_9
    const/16 v0, 0xd10

    goto :goto_0

    :pswitch_a
    const/16 v0, 0xcc0

    goto :goto_0

    :pswitch_b
    const/16 v0, 0xc18

    goto :goto_0

    :pswitch_c
    const/16 v0, 0xc00

    goto :goto_0

    :pswitch_d
    const/16 v0, 0xb40

    goto :goto_0

    :pswitch_e
    const/16 v0, 0xba0

    goto :goto_0

    :pswitch_f
    const/16 v0, 0xa20

    goto :goto_0

    :pswitch_10
    const/16 v0, 0xa10

    goto :goto_0

    :pswitch_11
    const/16 v0, 0xa00

    goto :goto_0

    :pswitch_12
    const/16 v0, 0x800

    goto :goto_0

    :pswitch_13
    const/16 v0, 0x790

    goto :goto_0

    :pswitch_14
    const/16 v0, 0x780

    goto :goto_0

    :pswitch_15
    const/16 v0, 0x660

    goto :goto_0

    :pswitch_16
    const/16 v0, 0x640

    goto :goto_0

    :pswitch_17
    const/16 v0, 0x650

    goto :goto_0

    :pswitch_18
    const/16 v0, 0x600

    goto :goto_0

    :pswitch_19
    const/16 v0, 0x5a0

    goto :goto_0

    :pswitch_1a
    const/16 v0, 0x42a

    goto :goto_0

    :pswitch_1b
    const/16 v0, 0x570

    goto :goto_0

    :pswitch_1c
    const/16 v0, 0x500

    goto :goto_0

    :pswitch_1d
    const/16 v0, 0x4e0

    goto :goto_0

    :pswitch_1e
    const/16 v0, 0x3c0

    goto :goto_0

    :pswitch_1f
    const/16 v0, 0x320

    goto :goto_0

    :pswitch_20
    const/16 v0, 0x2d0

    goto :goto_0

    :pswitch_21
    const/16 v0, 0x280

    goto :goto_0

    :pswitch_22
    const/16 v0, 0x190

    goto :goto_0

    :pswitch_23
    const/16 v0, 0x140

    goto :goto_0

    :pswitch_24
    const/16 v0, 0x400

    goto :goto_0

    :pswitch_25
    const/16 v0, 0xf00

    goto :goto_0

    :pswitch_26
    const/16 v0, 0x430

    goto :goto_0

    :pswitch_27
    const/16 v0, 0x990

    goto :goto_0

    :pswitch_28
    const/16 v0, 0x440

    goto :goto_0

    :pswitch_29
    const/16 v0, 0xbd0

    goto :goto_0

    :pswitch_2a
    const/16 v0, 0x870

    goto :goto_0

    :pswitch_2b
    const/16 v0, 0x21c

    goto :goto_0

    :pswitch_2c
    const/16 v0, 0x72c

    goto/16 :goto_0

    :pswitch_2d
    const/16 v0, 0xc10

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_a
        :pswitch_c
        :pswitch_c
        :pswitch_11
        :pswitch_11
        :pswitch_12
        :pswitch_12
        :pswitch_16
        :pswitch_16
        :pswitch_1c
        :pswitch_21
        :pswitch_1f
        :pswitch_14
        :pswitch_1c
        :pswitch_20
        :pswitch_22
        :pswitch_0
        :pswitch_23
        :pswitch_1
        :pswitch_a
        :pswitch_11
        :pswitch_1c
        :pswitch_12
        :pswitch_1b
        :pswitch_f
        :pswitch_12
        :pswitch_15
        :pswitch_18
        :pswitch_1d
        :pswitch_5
        :pswitch_19
        :pswitch_4
        :pswitch_4
        :pswitch_1e
        :pswitch_1f
        :pswitch_5
        :pswitch_24
        :pswitch_1e
        :pswitch_24
        :pswitch_25
        :pswitch_21
        :pswitch_14
        :pswitch_b
        :pswitch_2
        :pswitch_7
        :pswitch_e
        :pswitch_26
        :pswitch_27
        :pswitch_3
        :pswitch_8
        :pswitch_f
        :pswitch_19
        :pswitch_14
        :pswitch_0
        :pswitch_f
        :pswitch_0
        :pswitch_9
        :pswitch_13
        :pswitch_14
        :pswitch_28
        :pswitch_10
        :pswitch_1e
        :pswitch_3
        :pswitch_6
        :pswitch_6
        :pswitch_d
        :pswitch_29
        :pswitch_2a
        :pswitch_1a
        :pswitch_1f
        :pswitch_17
        :pswitch_16
        :pswitch_20
        :pswitch_8
        :pswitch_18
        :pswitch_20
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getMegaPixelString(I)Ljava/lang/String;
    .locals 5

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {p0}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntWidth(I)I

    move-result v1

    invoke-static {p0}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntHeight(I)I

    move-result v2

    mul-int/2addr v1, v2

    int-to-float v1, v1

    const v2, 0x49742400    # 1000000.0f

    div-float v0, v1, v2

    const/high16 v1, 0x41200000    # 10.0f

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_0

    const-string v1, "%2.0f"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_1

    const-string v1, "%1.1f"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, "%.2f"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getPictureSizeFullString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/util/CameraResolution;->getPictureSizeString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionSubString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPictureSizeString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const-string v0, "176x144"

    :goto_0
    return-object v0

    :pswitch_1
    const v0, 0x7f0a0079

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    const-string v0, "4:3 (13M)"

    goto :goto_0

    :pswitch_3
    const v0, 0x7f0a0077

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    const v0, 0x7f0a0076

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    const v0, 0x7f0a0075

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    const v0, 0x7f0a0074

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_7
    const-string v0, "4:3 (9M)"

    goto :goto_0

    :pswitch_8
    const-string v0, "1:1 (9.1M)"

    goto :goto_0

    :pswitch_9
    const v0, 0x7f0a006d

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_a
    const-string v0, "16:9 (9.6M)"

    goto :goto_0

    :pswitch_b
    const-string v0, "4:3 (13.0M)"

    goto :goto_0

    :pswitch_c
    const-string v0, "16:9 (9.4M)"

    goto :goto_0

    :pswitch_d
    const v0, 0x7f0a0072

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_e
    const v0, 0x7f0a0071

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_f
    const-string v0, "16:9 (6.5M)"

    goto :goto_0

    :pswitch_10
    const v0, 0x7f0a0070

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_11
    const-string v0, "4:3 (7.1M)"

    goto :goto_0

    :pswitch_12
    const-string v0, "16:9 (5.7M)"

    goto :goto_0

    :pswitch_13
    const v0, 0x7f0a006c

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_14
    const-string v0, "1:1 (6.7M)"

    goto :goto_0

    :pswitch_15
    const v0, 0x7f0a006b

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_16
    const v0, 0x7f0a0069

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_17
    const v0, 0x7f0a006a

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_18
    const v0, 0x7f0a0068

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_19
    const-string v0, "16:9 (4.0M)"

    goto/16 :goto_0

    :pswitch_1a
    const v0, 0x7f0a0067

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_1b
    const v0, 0x7f0a0064

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_1c
    const-string v0, "16:9 (2.6M)"

    goto/16 :goto_0

    :pswitch_1d
    const v0, 0x7f0a0063

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_1e
    const-string v0, "16:9 (2.3M)"

    goto/16 :goto_0

    :pswitch_1f
    const v0, 0x7f0a0062

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_20
    const v0, 0x7f0a0061

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_21
    const-string v0, "4:3 (2.8M)"

    goto/16 :goto_0

    :pswitch_22
    const v0, 0x7f0a0060

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_23
    const-string v0, "16:9 (1.5M)"

    goto/16 :goto_0

    :pswitch_24
    const v0, 0x7f0a005d

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_25
    const-string v0, "16:9 (1.6M)"

    goto/16 :goto_0

    :pswitch_26
    const v0, 0x7f0a005f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_27
    const v0, 0x7f0a005e

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_28
    const-string v0, "16:9 (1.4M)"

    goto/16 :goto_0

    :pswitch_29
    const-string v0, "1:1 (1.9M)"

    goto/16 :goto_0

    :pswitch_2a
    const-string v0, "1:1 (2.1M)"

    goto/16 :goto_0

    :pswitch_2b
    const v0, 0x7f0a005b

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_2c
    const v0, 0x7f0a005a

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_2d
    const v0, 0x7f0a0058

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_2e
    const-string v0, "16:9 (1.0M)"

    goto/16 :goto_0

    :pswitch_2f
    const-string v0, "16:9 (0.5M)"

    goto/16 :goto_0

    :pswitch_30
    const-string v0, "16:9 (0.4M)"

    goto/16 :goto_0

    :pswitch_31
    const-string v0, "16:9 (0.4M)"

    goto/16 :goto_0

    :pswitch_32
    const v0, 0x7f0a007a

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_33
    const-string v0, "16:9 (0.3M)"

    goto/16 :goto_0

    :pswitch_34
    const-string v0, "16:9 (0.8M)"

    goto/16 :goto_0

    :pswitch_35
    const v0, 0x7f0a0059

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_36
    const-string v0, "4:3 (0.8M)"

    goto/16 :goto_0

    :pswitch_37
    const-string v0, "4:3 (0.7M)"

    goto/16 :goto_0

    :pswitch_38
    const-string v0, "4:3 (0.4M)"

    goto/16 :goto_0

    :pswitch_39
    const-string v0, "400x240"

    goto/16 :goto_0

    :pswitch_3a
    const-string v0, "320x240"

    goto/16 :goto_0

    :pswitch_3b
    const-string v0, "176x144"

    goto/16 :goto_0

    :pswitch_3c
    const v0, 0x7f0a0066

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_3d
    const v0, 0x7f0a006e

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_3e
    const v0, 0x7f0a0065

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_3f
    const v0, 0x7f0a0078

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_40
    const v0, 0x7f0a0073

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_41
    const v0, 0x7f0a005c

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_42
    const-string v0, "1:1 (3.4M)"

    goto/16 :goto_0

    :pswitch_43
    const v0, 0x7f0a006f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_f
        :pswitch_11
        :pswitch_12
        :pswitch_18
        :pswitch_19
        :pswitch_1b
        :pswitch_1c
        :pswitch_24
        :pswitch_25
        :pswitch_2c
        :pswitch_32
        :pswitch_30
        :pswitch_22
        :pswitch_35
        :pswitch_38
        :pswitch_39
        :pswitch_0
        :pswitch_3a
        :pswitch_3b
        :pswitch_10
        :pswitch_1a
        :pswitch_2e
        :pswitch_1d
        :pswitch_29
        :pswitch_15
        :pswitch_1e
        :pswitch_23
        :pswitch_28
        :pswitch_34
        :pswitch_b
        :pswitch_2b
        :pswitch_2
        :pswitch_a
        :pswitch_37
        :pswitch_31
        :pswitch_c
        :pswitch_36
        :pswitch_2f
        :pswitch_0
        :pswitch_0
        :pswitch_33
        :pswitch_22
        :pswitch_8
        :pswitch_1
        :pswitch_6
        :pswitch_9
        :pswitch_2d
        :pswitch_3c
        :pswitch_3
        :pswitch_7
        :pswitch_14
        :pswitch_2a
        :pswitch_21
        :pswitch_0
        :pswitch_17
        :pswitch_0
        :pswitch_d
        :pswitch_1f
        :pswitch_20
        :pswitch_0
        :pswitch_16
        :pswitch_0
        :pswitch_3f
        :pswitch_4
        :pswitch_5
        :pswitch_13
        :pswitch_3d
        :pswitch_3e
        :pswitch_0
        :pswitch_0
        :pswitch_26
        :pswitch_27
        :pswitch_0
        :pswitch_40
        :pswitch_41
        :pswitch_0
        :pswitch_0
        :pswitch_42
        :pswitch_43
    .end packed-switch
.end method

.method public static getResolutionID(Ljava/lang/String;)I
    .locals 1

    const-string v0, "4128x3096"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x20

    :goto_0
    return v0

    :cond_0
    const-string v0, "5312x2988"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x2c

    goto :goto_0

    :cond_1
    const-string v0, "4608x2592"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x31

    goto :goto_0

    :cond_2
    const-string v0, "3984x2988"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x2d

    goto :goto_0

    :cond_3
    const-string v0, "3456x2592"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x32

    goto :goto_0

    :cond_4
    const-string v0, "2976x2976"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0x2e

    goto :goto_0

    :cond_5
    const-string v0, "1088x1088"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v0, 0x3c

    goto :goto_0

    :cond_6
    const-string v0, "3096x3096"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x2b

    goto :goto_0

    :cond_7
    const-string v0, "4128x2322"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x21

    goto :goto_0

    :cond_8
    const-string v0, "4096x3072"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x1e

    goto :goto_0

    :cond_9
    const-string v0, "4096x2304"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 v0, 0x24

    goto :goto_0

    :cond_a
    const-string v0, "3344x3344"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 v0, 0x39

    goto :goto_0

    :cond_b
    const-string v0, "3264x2448"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_c
    const-string v0, "3264x1968"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_d
    const-string v0, "3264x1836"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/16 v0, 0x14

    goto/16 :goto_0

    :cond_e
    const-string v0, "3072x2304"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x2

    goto/16 :goto_0

    :cond_f
    const-string v0, "3072x1856"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x3

    goto/16 :goto_0

    :cond_10
    const-string v0, "2880x2160"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/16 v0, 0x42

    goto/16 :goto_0

    :cond_11
    const-string v0, "2592x2592"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v0, 0x33

    goto/16 :goto_0

    :cond_12
    const-string v0, "2592x1944"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/16 v0, 0x19

    goto/16 :goto_0

    :cond_13
    const-string v0, "2592x1458"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/16 v0, 0x37

    goto/16 :goto_0

    :cond_14
    const-string v0, "2576x1932"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/16 v0, 0x3d

    goto/16 :goto_0

    :cond_15
    const-string v0, "2560x1920"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x4

    goto/16 :goto_0

    :cond_16
    const-string v0, "2560x1536"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 v0, 0x5

    goto/16 :goto_0

    :cond_17
    const-string v0, "2560x1440"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/16 v0, 0x15

    goto/16 :goto_0

    :cond_18
    const-string v0, "2048x1536"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v0, 0x6

    goto/16 :goto_0

    :cond_19
    const-string v0, "2048x1232"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x7

    goto/16 :goto_0

    :cond_1a
    const-string v0, "2048x1152"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const/16 v0, 0x17

    goto/16 :goto_0

    :cond_1b
    const-string v0, "2048x1104"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/16 v0, 0x1a

    goto/16 :goto_0

    :cond_1c
    const-string v0, "1936x1936"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const/16 v0, 0x3a

    goto/16 :goto_0

    :cond_1d
    const-string v0, "1920x1920"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/16 v0, 0x3b

    goto/16 :goto_0

    :cond_1e
    const-string v0, "1920x1440"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const/16 v0, 0x35

    goto/16 :goto_0

    :cond_1f
    const-string v0, "1920x1080"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    const/16 v0, 0xd

    goto/16 :goto_0

    :cond_20
    const-string v0, "1920x1080_60FPS"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    const/16 v0, 0x2a

    goto/16 :goto_0

    :cond_21
    const-string v0, "1440x1080"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const/16 v0, 0x1f

    goto/16 :goto_0

    :cond_22
    const-string v0, "1632x880"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    const/16 v0, 0x1b

    goto/16 :goto_0

    :cond_23
    const-string v0, "1600x1200"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    const/16 v0, 0x8

    goto/16 :goto_0

    :cond_24
    const-string v0, "1600x960"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    const/16 v0, 0x9

    goto/16 :goto_0

    :cond_25
    const-string v0, "1616x1212"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    const/16 v0, 0x47

    goto/16 :goto_0

    :cond_26
    const-string v0, "1600x900"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    const/16 v0, 0x48

    goto/16 :goto_0

    :cond_27
    const-string v0, "1536x864"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    const/16 v0, 0x1c

    goto/16 :goto_0

    :cond_28
    const-string v0, "1392x1392"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    const/16 v0, 0x18

    goto/16 :goto_0

    :cond_29
    const-string v0, "1280x960"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    const/16 v0, 0xa

    goto/16 :goto_0

    :cond_2a
    const-string v0, "960x960"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    const/16 v0, 0x3e

    goto/16 :goto_0

    :cond_2b
    const-string v0, "960x720"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    const/16 v0, 0x22

    goto/16 :goto_0

    :cond_2c
    const-string v0, "800x480"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    const/16 v0, 0xc

    goto/16 :goto_0

    :cond_2d
    const-string v0, "800x450"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    const/16 v0, 0x23

    goto/16 :goto_0

    :cond_2e
    const-string v0, "640x480"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    const/16 v0, 0xb

    goto/16 :goto_0

    :cond_2f
    const-string v0, "640x360"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    const/16 v0, 0x29

    goto/16 :goto_0

    :cond_30
    const-string v0, "1280x800"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    const/16 v0, 0x16

    goto/16 :goto_0

    :cond_31
    const-string v0, "1280x720"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    const/16 v0, 0xe

    goto/16 :goto_0

    :cond_32
    const-string v0, "1248x672"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    const/16 v0, 0x1d

    goto/16 :goto_0

    :cond_33
    const-string v0, "720x480"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    const/16 v0, 0xf

    goto/16 :goto_0

    :cond_34
    const-string v0, "400x240"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    const/16 v0, 0x10

    goto/16 :goto_0

    :cond_35
    const-string v0, "320x240"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    const/16 v0, 0x12

    goto/16 :goto_0

    :cond_36
    const-string v0, "176x144"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    const/16 v0, 0x13

    goto/16 :goto_0

    :cond_37
    const-string v0, "1024x768"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    const/16 v0, 0x25

    goto/16 :goto_0

    :cond_38
    const-string v0, "1024x576"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    const/16 v0, 0x27

    goto/16 :goto_0

    :cond_39
    const-string v0, "960x540"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    const/16 v0, 0x26

    goto/16 :goto_0

    :cond_3a
    const-string v0, "3840x2160"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    const/16 v0, 0x28

    goto/16 :goto_0

    :cond_3b
    const-string v0, "1072x1072"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    const/16 v0, 0x2f

    goto/16 :goto_0

    :cond_3c
    const-string v0, "2448x2448"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    const/16 v0, 0x30

    goto/16 :goto_0

    :cond_3d
    const-string v0, "1440x1440"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    const/16 v0, 0x34

    goto/16 :goto_0

    :cond_3e
    const-string v0, "4032x3024"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    const/16 v0, 0x40

    goto/16 :goto_0

    :cond_3f
    const-string v0, "4032x2268"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    const/16 v0, 0x41

    goto/16 :goto_0

    :cond_40
    const-string v0, "3024x3024"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    const/16 v0, 0x43

    goto/16 :goto_0

    :cond_41
    const-string v0, "2160x2160"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    const/16 v0, 0x44

    goto/16 :goto_0

    :cond_42
    const-string v0, "1066x800"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    const/16 v0, 0x45

    goto/16 :goto_0

    :cond_43
    const-string v0, "800x800"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    const/16 v0, 0x46

    goto/16 :goto_0

    :cond_44
    const-string v0, "720x720"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    const/16 v0, 0x49

    goto/16 :goto_0

    :cond_45
    const-string v0, "4608x3456"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    const/16 v0, 0x3f

    goto/16 :goto_0

    :cond_46
    const-string v0, "3456x3456"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    const/16 v0, 0x4a

    goto/16 :goto_0

    :cond_47
    const-string v0, "1536x1536"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    const/16 v0, 0x4b

    goto/16 :goto_0

    :cond_48
    const-string v0, "720x540"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    const/16 v0, 0x4c

    goto/16 :goto_0

    :cond_49
    const-string v0, "540x540"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    const/16 v0, 0x4d

    goto/16 :goto_0

    :cond_4a
    const-string v0, "1836x1836"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    const/16 v0, 0x4e

    goto/16 :goto_0

    :cond_4b
    const-string v0, "3088x3088"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    const/16 v0, 0x4f

    goto/16 :goto_0

    :cond_4c
    const/4 v0, -0x1

    goto/16 :goto_0
.end method

.method public static getResolutionString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string v0, "176x144"

    :goto_0
    return-object v0

    :pswitch_1
    const-string v0, "5312x2988"

    goto :goto_0

    :pswitch_2
    const-string v0, "4608x2592"

    goto :goto_0

    :pswitch_3
    const-string v0, "4128x3096"

    goto :goto_0

    :pswitch_4
    const-string v0, "3456x2592"

    goto :goto_0

    :pswitch_5
    const-string v0, "3096x3096"

    goto :goto_0

    :pswitch_6
    const-string v0, "4128x2322"

    goto :goto_0

    :pswitch_7
    const-string v0, "4096x3072"

    goto :goto_0

    :pswitch_8
    const-string v0, "4096x2304"

    goto :goto_0

    :pswitch_9
    const-string v0, "3984x2988"

    goto :goto_0

    :pswitch_a
    const-string v0, "3344x3344"

    goto :goto_0

    :pswitch_b
    const-string v0, "3264x2448"

    goto :goto_0

    :pswitch_c
    const-string v0, "3264x1968"

    goto :goto_0

    :pswitch_d
    const-string v0, "3264x1836"

    goto :goto_0

    :pswitch_e
    const-string v0, "3072x2304"

    goto :goto_0

    :pswitch_f
    const-string v0, "3072x1856"

    goto :goto_0

    :pswitch_10
    const-string v0, "2880x2160"

    goto :goto_0

    :pswitch_11
    const-string v0, "2976x2976"

    goto :goto_0

    :pswitch_12
    const-string v0, "2592x2592"

    goto :goto_0

    :pswitch_13
    const-string v0, "2592x1944"

    goto :goto_0

    :pswitch_14
    const-string v0, "2592x1458"

    goto :goto_0

    :pswitch_15
    const-string v0, "2576x1932"

    goto :goto_0

    :pswitch_16
    const-string v0, "2560x1920"

    goto :goto_0

    :pswitch_17
    const-string v0, "2560x1536"

    goto :goto_0

    :pswitch_18
    const-string v0, "2560x1440"

    goto :goto_0

    :pswitch_19
    const-string v0, "2048x1536"

    goto :goto_0

    :pswitch_1a
    const-string v0, "2048x1232"

    goto :goto_0

    :pswitch_1b
    const-string v0, "2048x1152"

    goto :goto_0

    :pswitch_1c
    const-string v0, "2048x1104"

    goto :goto_0

    :pswitch_1d
    const-string v0, "1920x1440"

    goto :goto_0

    :pswitch_1e
    const-string v0, "1936x1936"

    goto :goto_0

    :pswitch_1f
    const-string v0, "1920x1920"

    goto :goto_0

    :pswitch_20
    const-string v0, "1920x1080"

    goto :goto_0

    :pswitch_21
    const-string v0, "1632x880"

    goto :goto_0

    :pswitch_22
    const-string v0, "1600x1200"

    goto :goto_0

    :pswitch_23
    const-string v0, "1600x960"

    goto :goto_0

    :pswitch_24
    const-string v0, "1616x1212"

    goto :goto_0

    :pswitch_25
    const-string v0, "1600x900"

    goto :goto_0

    :pswitch_26
    const-string v0, "1536x864"

    goto :goto_0

    :pswitch_27
    const-string v0, "1392x1392"

    goto :goto_0

    :pswitch_28
    const-string v0, "1440x1080"

    goto :goto_0

    :pswitch_29
    const-string v0, "1440x1440"

    goto :goto_0

    :pswitch_2a
    const-string v0, "1280x960"

    goto :goto_0

    :pswitch_2b
    const-string v0, "1280x800"

    goto/16 :goto_0

    :pswitch_2c
    const-string v0, "960x540"

    goto/16 :goto_0

    :pswitch_2d
    const-string v0, "800x480"

    goto/16 :goto_0

    :pswitch_2e
    const-string v0, "800x450"

    goto/16 :goto_0

    :pswitch_2f
    const-string v0, "640x480"

    goto/16 :goto_0

    :pswitch_30
    const-string v0, "640x360"

    goto/16 :goto_0

    :pswitch_31
    const-string v0, "1248x672"

    goto/16 :goto_0

    :pswitch_32
    const-string v0, "1280x720"

    goto/16 :goto_0

    :pswitch_33
    const-string v0, "960x960"

    goto/16 :goto_0

    :pswitch_34
    const-string v0, "960x720"

    goto/16 :goto_0

    :pswitch_35
    const-string v0, "720x480"

    goto/16 :goto_0

    :pswitch_36
    const-string v0, "400x240"

    goto/16 :goto_0

    :pswitch_37
    const-string v0, "320x240"

    goto/16 :goto_0

    :pswitch_38
    const-string v0, "176x144"

    goto/16 :goto_0

    :pswitch_39
    const-string v0, "1024x768"

    goto/16 :goto_0

    :pswitch_3a
    const-string v0, "1024x576"

    goto/16 :goto_0

    :pswitch_3b
    const-string v0, "3840x2160"

    goto/16 :goto_0

    :pswitch_3c
    const-string v0, "1072x1072"

    goto/16 :goto_0

    :pswitch_3d
    const-string v0, "2448x2448"

    goto/16 :goto_0

    :pswitch_3e
    const-string v0, "1088x1088"

    goto/16 :goto_0

    :pswitch_3f
    const-string v0, "4032x3024"

    goto/16 :goto_0

    :pswitch_40
    const-string v0, "4032x2268"

    goto/16 :goto_0

    :pswitch_41
    const-string v0, "3024x3024"

    goto/16 :goto_0

    :pswitch_42
    const-string v0, "2160x2160"

    goto/16 :goto_0

    :pswitch_43
    const-string v0, "1066x800"

    goto/16 :goto_0

    :pswitch_44
    const-string v0, "800x800"

    goto/16 :goto_0

    :pswitch_45
    const-string v0, "720x720"

    goto/16 :goto_0

    :pswitch_46
    const-string v0, "4608x3456"

    goto/16 :goto_0

    :pswitch_47
    const-string v0, "3456x3456"

    goto/16 :goto_0

    :pswitch_48
    const-string v0, "1536x1536"

    goto/16 :goto_0

    :pswitch_49
    const-string v0, "1836x1836"

    goto/16 :goto_0

    :pswitch_4a
    const-string v0, "3088x3088"

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_c
        :pswitch_e
        :pswitch_f
        :pswitch_16
        :pswitch_17
        :pswitch_19
        :pswitch_1a
        :pswitch_22
        :pswitch_23
        :pswitch_2a
        :pswitch_2f
        :pswitch_2d
        :pswitch_20
        :pswitch_32
        :pswitch_35
        :pswitch_36
        :pswitch_0
        :pswitch_37
        :pswitch_38
        :pswitch_d
        :pswitch_18
        :pswitch_2b
        :pswitch_1b
        :pswitch_27
        :pswitch_13
        :pswitch_1c
        :pswitch_21
        :pswitch_26
        :pswitch_31
        :pswitch_7
        :pswitch_28
        :pswitch_3
        :pswitch_6
        :pswitch_34
        :pswitch_2e
        :pswitch_8
        :pswitch_39
        :pswitch_2c
        :pswitch_3a
        :pswitch_3b
        :pswitch_30
        :pswitch_20
        :pswitch_5
        :pswitch_1
        :pswitch_9
        :pswitch_11
        :pswitch_3c
        :pswitch_3d
        :pswitch_2
        :pswitch_4
        :pswitch_12
        :pswitch_29
        :pswitch_1d
        :pswitch_0
        :pswitch_14
        :pswitch_0
        :pswitch_a
        :pswitch_1e
        :pswitch_1f
        :pswitch_3e
        :pswitch_15
        :pswitch_33
        :pswitch_46
        :pswitch_3f
        :pswitch_40
        :pswitch_10
        :pswitch_41
        :pswitch_42
        :pswitch_43
        :pswitch_44
        :pswitch_24
        :pswitch_25
        :pswitch_45
        :pswitch_47
        :pswitch_48
        :pswitch_0
        :pswitch_0
        :pswitch_49
        :pswitch_4a
    .end packed-switch
.end method

.method public static getResolutionSubString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4

    const-string v0, "%dx%d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntWidth(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntHeight(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVideoSizeFullString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/util/CameraResolution;->getVideoSizeString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionSubString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVideoSizeString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1

    const v0, 0x7f0a02a9

    sparse-switch p1, :sswitch_data_0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :sswitch_0
    const v0, 0x7f0a02ad

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_1
    const v0, 0x7f0a02ab

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_2
    const v0, 0x7f0a02aa

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_3
    const v0, 0x7f0a007c

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_4
    const v0, 0x7f0a007b

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_5
    const v0, 0x7f0a02a8

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_6
    const v0, 0x7f0a02ae

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_7
    const v0, 0x7f0a02ac

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_8
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_6
        0xd -> :sswitch_2
        0xe -> :sswitch_5
        0x12 -> :sswitch_7
        0x13 -> :sswitch_8
        0x15 -> :sswitch_1
        0x28 -> :sswitch_0
        0x2a -> :sswitch_3
        0x2f -> :sswitch_4
        0x34 -> :sswitch_4
    .end sparse-switch
.end method

.method public static isNormalResolution(I)Z
    .locals 1

    sparse-switch p0, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_0
        0x4 -> :sswitch_0
        0x6 -> :sswitch_0
        0x8 -> :sswitch_0
        0xa -> :sswitch_0
        0xb -> :sswitch_0
        0x12 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1e -> :sswitch_0
        0x1f -> :sswitch_0
        0x20 -> :sswitch_0
        0x22 -> :sswitch_0
        0x2d -> :sswitch_0
        0x32 -> :sswitch_0
        0x35 -> :sswitch_0
        0x3d -> :sswitch_0
        0x3f -> :sswitch_0
        0x40 -> :sswitch_0
        0x42 -> :sswitch_0
        0x47 -> :sswitch_0
    .end sparse-switch
.end method

.method public static isSquareResolution(I)Z
    .locals 1

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2b
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static isWideResolution(I)Z
    .locals 1

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
