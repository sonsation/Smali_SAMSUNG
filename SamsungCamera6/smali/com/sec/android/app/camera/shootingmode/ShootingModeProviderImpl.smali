.class public Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;
.super Ljava/lang/Object;
.source "ShootingModeProviderImpl.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;
.implements Lcom/sec/android/app/camera/interfaces/Engine$PrepareSetShootingModeListener;
.implements Lcom/sec/android/app/camera/interfaces/Engine$PrepareStartingPreviewListener;
.implements Lcom/sec/android/app/camera/interfaces/Engine$SingleCaptureEventListener;
.implements Lcom/sec/android/app/camera/interfaces/Engine$TimerEventListener;


# static fields
.field private static final STATE_ACTIVATED:I = 0x2

.field private static final STATE_ACTIVATING:I = 0x1

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_INACTIVATING:I = 0x3

.field protected static final TAG:Ljava/lang/String; = "ShootingModeProvider"


# instance fields
.field private mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private mCurrentShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingMode;

.field private mCurrentShootingModeId:I

.field private mCurrentShootingModeState:I

.field private mIsSingleCapturing:Z

.field private mShootingModeList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sec/android/app/camera/interfaces/ShootingMode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingMode;

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeId:I

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeState:I

    iput-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mIsSingleCapturing:Z

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mShootingModeList:Landroid/util/SparseArray;

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    return-void
.end method

.method private clearInactiveShootingMode()V
    .locals 6

    const-string v3, "ShootingModeProvider"

    const-string v4, "clearInactiveShootingMode"

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mShootingModeList:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v2

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mShootingModeList:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingMode;

    if-eq v3, v4, :cond_0

    const-string v3, "ShootingModeProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "clearing shooting mode class - id : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mShootingModeList:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->delete(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private loadShootingMode(I)V
    .locals 4

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const-string v1, "ShootingModeProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wrong shooting mode id, Failed! : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_1
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V

    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mShootingModeList:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingMode;

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/Antifog;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/Antifog;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V

    goto :goto_1

    :pswitch_3
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/Aqua;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/Aqua;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V

    goto :goto_1

    :pswitch_4
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/Auto;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/Auto;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V

    goto :goto_1

    :pswitch_5
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/Beauty;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/Beauty;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V

    goto :goto_1

    :pswitch_6
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V

    goto :goto_1

    :pswitch_7
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/Continuous;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/Continuous;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V

    goto :goto_1

    :pswitch_8
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/ContinuousLite;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/ContinuousLite;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V

    goto :goto_1

    :pswitch_9
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/Dual;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/Dual;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V

    goto :goto_1

    :pswitch_a
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/TagShot;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/TagShot;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V

    goto :goto_1

    :pswitch_b
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/FastMotion;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/FastMotion;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V

    goto :goto_1

    :pswitch_c
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/Food;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/Food;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V

    goto :goto_1

    :pswitch_d
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/HyperMotion;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V

    goto :goto_1

    :pswitch_e
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V

    goto/16 :goto_1

    :pswitch_f
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/Night;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/Night;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V

    goto/16 :goto_1

    :pswitch_10
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/NightScene;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/NightScene;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V

    goto/16 :goto_1

    :pswitch_11
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/Pro;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/Pro;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V

    goto/16 :goto_1

    :pswitch_12
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/ProLite;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/ProLite;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V

    goto/16 :goto_1

    :pswitch_13
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/RearSelfie;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V

    goto/16 :goto_1

    :pswitch_14
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/Recording;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/Recording;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V

    goto/16 :goto_1

    :pswitch_15
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/RichTone;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/RichTone;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V

    goto/16 :goto_1

    :pswitch_16
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V

    goto/16 :goto_1

    :pswitch_17
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/Selfie;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/Selfie;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V

    goto/16 :goto_1

    :pswitch_18
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V

    goto/16 :goto_1

    :pswitch_19
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/SlowMotion;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V

    goto/16 :goto_1

    :pswitch_1a
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V

    goto/16 :goto_1

    :pswitch_1b
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/Sports;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/Sports;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V

    goto/16 :goto_1

    :pswitch_1c
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V

    goto/16 :goto_1

    :pswitch_1d
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V

    goto/16 :goto_1

    :pswitch_1e
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V

    goto/16 :goto_1

    :pswitch_1f
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V

    goto/16 :goto_1

    :pswitch_20
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V

    goto/16 :goto_1

    :pswitch_21
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/ProductSearch;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/ProductSearch;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_8
        :pswitch_6
        :pswitch_14
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_15
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_f
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
        :pswitch_1a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_10
        :pswitch_1b
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_16
        :pswitch_18
        :pswitch_9
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1e
        :pswitch_0
        :pswitch_0
        :pswitch_17
        :pswitch_13
        :pswitch_0
        :pswitch_1
        :pswitch_11
        :pswitch_0
        :pswitch_0
        :pswitch_1d
        :pswitch_19
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_c
        :pswitch_1c
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_0
        :pswitch_d
        :pswitch_12
        :pswitch_0
        :pswitch_1f
        :pswitch_20
        :pswitch_21
    .end packed-switch
.end method


# virtual methods
.method public isActivated()Z
    .locals 2

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isActivating()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeState:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCapturing()Z
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mIsSingleCapturing:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingMode;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/ShootingMode;->isCapturing()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isChangingShootingModeDisabled()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingMode;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingMode;->isChangingShootingModeDisabled()Z

    move-result v0

    goto :goto_0
.end method

.method public isZoomDisabled()Z
    .locals 2

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingMode;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingMode;->isZoomDisabled()Z

    move-result v0

    goto :goto_0
.end method

.method public onActivate(Lcom/sec/android/app/camera/interfaces/Engine;)V
    .locals 4

    const/4 v3, 0x2

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeState:I

    if-ne v0, v3, :cond_0

    const-string v0, "ShootingModeProvider"

    const-string v1, "ShootingMode can not activate because it was already activated."

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string v0, "ShootingModeProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivate - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeState:I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingMode;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/ShootingMode;->onActivate(Lcom/sec/android/app/camera/interfaces/Engine;)V

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeState:I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "camera.action.SHOOTING_MODE_ACTIVATED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/CameraLocalBroadcastManager;->send(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingMode;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/ShootingMode;->onActivityTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onChangeShootingModeParameters(Lcom/samsung/android/camera/core/SemCamera$Parameters;)V
    .locals 0

    return-void
.end method

.method public onCreateView(Lcom/samsung/android/glview/GLContext;Lcom/samsung/android/glview/GLViewGroup;Lcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/interfaces/BaseMenuController;Lcom/sec/android/app/camera/interfaces/MenuManager;)V
    .locals 6

    const-string v0, "ShootingModeProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreateView - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingMode;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/sec/android/app/camera/interfaces/ShootingMode;->onCreateView(Lcom/samsung/android/glview/GLContext;Lcom/samsung/android/glview/GLViewGroup;Lcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/interfaces/BaseMenuController;Lcom/sec/android/app/camera/interfaces/MenuManager;)V

    return-void
.end method

.method public onImageStoringCompleted()Z
    .locals 2

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingMode;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingMode;->onImageStoringCompleted()Z

    move-result v0

    goto :goto_0
.end method

.method public onInactivate()V
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const-string v0, "ShootingModeProvider"

    const-string v1, "ShootingMode can not inactivate because it was not activated."

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string v0, "ShootingModeProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInactivate - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeState:I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingMode;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingMode;->onInactivate()V

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeState:I

    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mIsSingleCapturing:Z

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingMode;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/app/camera/interfaces/ShootingMode;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingMode;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/app/camera/interfaces/ShootingMode;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public declared-synchronized onLowMemory(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->clearInactiveShootingMode()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onMenuSelected(II)Z
    .locals 2

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingMode;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/app/camera/interfaces/ShootingMode;->onMenuSelected(II)Z

    move-result v0

    goto :goto_0
.end method

.method public onRecordKeyReleased()Z
    .locals 2

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const-string v0, "ShootingModeProvider"

    const-string v1, "onRecordKeyReleased"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingMode;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingMode;->onRecordKeyReleased()Z

    move-result v0

    goto :goto_0
.end method

.method public onSetShootingModePrepared(Lcom/sec/android/app/camera/interfaces/Engine;)V
    .locals 2

    const-string v0, "ShootingModeProvider"

    const-string v1, "onSetShootingModePrepared"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeId:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const-string v0, "ShootingModeProvider"

    const-string v1, "Recording mode does not Engine.setShootingMode at this time."

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeId:I

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/Engine;->setShootingMode(I)V

    goto :goto_0
.end method

.method public onShutterKeyLongPressed()Z
    .locals 2

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const-string v0, "ShootingModeProvider"

    const-string v1, "onShutterKeyLongPressed"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingMode;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingMode;->onShutterKeyLongPressed()Z

    move-result v0

    goto :goto_0
.end method

.method public onShutterKeyPressed()Z
    .locals 2

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingMode;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingMode;->onShutterKeyPressed()Z

    move-result v0

    goto :goto_0
.end method

.method public onShutterKeyReleased(I)Z
    .locals 3

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const-string v0, "ShootingModeProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onShutterKeyReleased - capture method : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingMode;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/ShootingMode;->onShutterKeyReleased(I)Z

    move-result v0

    goto :goto_0
.end method

.method public onSingleCaptureCancelCompleted()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mIsSingleCapturing:Z

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingMode;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/ShootingMode;->onSingleCaptureEvent(I)V

    goto :goto_0
.end method

.method public onSingleCaptureCompleted()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mIsSingleCapturing:Z

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingMode;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/ShootingMode;->onSingleCaptureEvent(I)V

    goto :goto_0
.end method

.method public onSingleCaptureEvent(I)V
    .locals 0

    return-void
.end method

.method public onSingleCaptureRequestCancelled()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mIsSingleCapturing:Z

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingMode;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/ShootingMode;->onSingleCaptureEvent(I)V

    goto :goto_0
.end method

.method public onSingleCaptureRequested()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mIsSingleCapturing:Z

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingMode;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/ShootingMode;->onSingleCaptureEvent(I)V

    goto :goto_0
.end method

.method public onSingleCaptureStarted()V
    .locals 2

    const/4 v1, 0x2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mIsSingleCapturing:Z

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeState:I

    if-eq v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingMode;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/ShootingMode;->onSingleCaptureEvent(I)V

    goto :goto_0
.end method

.method public onStartingPreviewPrepared(Lcom/samsung/android/camera/core/SemCamera$Parameters;)V
    .locals 2

    const-string v0, "ShootingModeProvider"

    const-string v1, "onStartingPreviewPrepared"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingMode;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/ShootingMode;->onChangeShootingModeParameters(Lcom/samsung/android/camera/core/SemCamera$Parameters;)V

    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->clearInactiveShootingMode()V

    return-void
.end method

.method public onTimerEvent(I)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingMode;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/ShootingMode;->onTimerEvent(I)V

    goto :goto_0
.end method

.method public onVideoStoringCompleted()Z
    .locals 2

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingMode;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingMode;->onVideoStoringCompleted()Z

    move-result v0

    goto :goto_0
.end method

.method public setShootingMode(I)V
    .locals 4

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeId:I

    if-eq v1, p1, :cond_0

    const-string v1, "ShootingModeProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setShootingMode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mShootingModeList:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/interfaces/ShootingMode;

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->loadShootingMode(I)V

    :goto_0
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeId:I

    :cond_0
    return-void

    :cond_1
    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingMode;

    goto :goto_0
.end method
