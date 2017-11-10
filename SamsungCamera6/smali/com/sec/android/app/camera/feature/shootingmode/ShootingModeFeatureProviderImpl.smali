.class public Lcom/sec/android/app/camera/feature/shootingmode/ShootingModeFeatureProviderImpl;
.super Ljava/lang/Object;
.source "ShootingModeFeatureProviderImpl.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/ShootingModeFeatureProvider;


# static fields
.field private static final TAG:Ljava/lang/String; = "SMFeatureProvider"


# instance fields
.field private mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

.field private mCurrentShootingModeId:I

.field private mPreviousShootingModeFeatureForRecording:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

.field private mShootingModeFeatureList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/feature/shootingmode/ShootingModeFeatureProviderImpl;->mShootingModeFeatureList:Landroid/util/SparseArray;

    iput-object v1, p0, Lcom/sec/android/app/camera/feature/shootingmode/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    iput-object v1, p0, Lcom/sec/android/app/camera/feature/shootingmode/ShootingModeFeatureProviderImpl;->mPreviousShootingModeFeatureForRecording:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/feature/shootingmode/ShootingModeFeatureProviderImpl;->mCurrentShootingModeId:I

    return-void
.end method

.method private clearInactiveShootingModeFeature()V
    .locals 5

    const-string v3, "SMFeatureProvider"

    const-string v4, "clearInactiveShootingModeFeature"

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/android/app/camera/feature/shootingmode/ShootingModeFeatureProviderImpl;->mShootingModeFeatureList:Landroid/util/SparseArray;

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

    iget-object v3, p0, Lcom/sec/android/app/camera/feature/shootingmode/ShootingModeFeatureProviderImpl;->mShootingModeFeatureList:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/feature/shootingmode/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/feature/shootingmode/ShootingModeFeatureProviderImpl;->mPreviousShootingModeFeatureForRecording:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/feature/shootingmode/ShootingModeFeatureProviderImpl;->mShootingModeFeatureList:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/feature/shootingmode/ShootingModeFeatureProviderImpl;->mPreviousShootingModeFeatureForRecording:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/feature/shootingmode/ShootingModeFeatureProviderImpl;->mShootingModeFeatureList:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->delete(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private loadShootingModeFeature(I)V
    .locals 4

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const-string v1, "SMFeatureProvider"

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
    new-instance v0, Lcom/sec/android/app/camera/feature/shootingmode/AnimatedGifFeature;

    invoke-direct {v0}, Lcom/sec/android/app/camera/feature/shootingmode/AnimatedGifFeature;-><init>()V

    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/camera/feature/shootingmode/ShootingModeFeatureProviderImpl;->mShootingModeFeatureList:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/feature/shootingmode/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/sec/android/app/camera/feature/shootingmode/AntiFogFeature;

    invoke-direct {v0}, Lcom/sec/android/app/camera/feature/shootingmode/AntiFogFeature;-><init>()V

    goto :goto_1

    :pswitch_3
    new-instance v0, Lcom/sec/android/app/camera/feature/shootingmode/AquaFeature;

    invoke-direct {v0}, Lcom/sec/android/app/camera/feature/shootingmode/AquaFeature;-><init>()V

    goto :goto_1

    :pswitch_4
    new-instance v0, Lcom/sec/android/app/camera/feature/shootingmode/AutoFeature;

    invoke-direct {v0}, Lcom/sec/android/app/camera/feature/shootingmode/AutoFeature;-><init>()V

    goto :goto_1

    :pswitch_5
    new-instance v0, Lcom/sec/android/app/camera/feature/shootingmode/BeautyFeature;

    invoke-direct {v0}, Lcom/sec/android/app/camera/feature/shootingmode/BeautyFeature;-><init>()V

    goto :goto_1

    :pswitch_6
    new-instance v0, Lcom/sec/android/app/camera/feature/shootingmode/BurstPanoramaFeature;

    invoke-direct {v0}, Lcom/sec/android/app/camera/feature/shootingmode/BurstPanoramaFeature;-><init>()V

    goto :goto_1

    :pswitch_7
    new-instance v0, Lcom/sec/android/app/camera/feature/shootingmode/ContinuousFeature;

    invoke-direct {v0}, Lcom/sec/android/app/camera/feature/shootingmode/ContinuousFeature;-><init>()V

    goto :goto_1

    :pswitch_8
    new-instance v0, Lcom/sec/android/app/camera/feature/shootingmode/ContinuousLiteFeature;

    invoke-direct {v0}, Lcom/sec/android/app/camera/feature/shootingmode/ContinuousLiteFeature;-><init>()V

    goto :goto_1

    :pswitch_9
    new-instance v0, Lcom/sec/android/app/camera/feature/shootingmode/DualFeature;

    invoke-direct {v0}, Lcom/sec/android/app/camera/feature/shootingmode/DualFeature;-><init>()V

    goto :goto_1

    :pswitch_a
    new-instance v0, Lcom/sec/android/app/camera/feature/shootingmode/TagShotFeature;

    invoke-direct {v0}, Lcom/sec/android/app/camera/feature/shootingmode/TagShotFeature;-><init>()V

    goto :goto_1

    :pswitch_b
    new-instance v0, Lcom/sec/android/app/camera/feature/shootingmode/FastMotionFeature;

    invoke-direct {v0}, Lcom/sec/android/app/camera/feature/shootingmode/FastMotionFeature;-><init>()V

    goto :goto_1

    :pswitch_c
    new-instance v0, Lcom/sec/android/app/camera/feature/shootingmode/FoodFeature;

    invoke-direct {v0}, Lcom/sec/android/app/camera/feature/shootingmode/FoodFeature;-><init>()V

    goto :goto_1

    :pswitch_d
    new-instance v0, Lcom/sec/android/app/camera/feature/shootingmode/HyperMotionFeature;

    invoke-direct {v0}, Lcom/sec/android/app/camera/feature/shootingmode/HyperMotionFeature;-><init>()V

    goto :goto_1

    :pswitch_e
    new-instance v0, Lcom/sec/android/app/camera/feature/shootingmode/MotionPanoramaFeature;

    invoke-direct {v0}, Lcom/sec/android/app/camera/feature/shootingmode/MotionPanoramaFeature;-><init>()V

    goto :goto_1

    :pswitch_f
    new-instance v0, Lcom/sec/android/app/camera/feature/shootingmode/NightFeature;

    invoke-direct {v0}, Lcom/sec/android/app/camera/feature/shootingmode/NightFeature;-><init>()V

    goto :goto_1

    :pswitch_10
    new-instance v0, Lcom/sec/android/app/camera/feature/shootingmode/NightSceneFeature;

    invoke-direct {v0}, Lcom/sec/android/app/camera/feature/shootingmode/NightSceneFeature;-><init>()V

    goto :goto_1

    :pswitch_11
    new-instance v0, Lcom/sec/android/app/camera/feature/shootingmode/ProFeature;

    invoke-direct {v0}, Lcom/sec/android/app/camera/feature/shootingmode/ProFeature;-><init>()V

    goto :goto_1

    :pswitch_12
    new-instance v0, Lcom/sec/android/app/camera/feature/shootingmode/ProLiteFeature;

    invoke-direct {v0}, Lcom/sec/android/app/camera/feature/shootingmode/ProLiteFeature;-><init>()V

    goto :goto_1

    :pswitch_13
    new-instance v0, Lcom/sec/android/app/camera/feature/shootingmode/RearSelfieFeature;

    invoke-direct {v0}, Lcom/sec/android/app/camera/feature/shootingmode/RearSelfieFeature;-><init>()V

    goto :goto_1

    :pswitch_14
    iget-object v1, p0, Lcom/sec/android/app/camera/feature/shootingmode/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    iput-object v1, p0, Lcom/sec/android/app/camera/feature/shootingmode/ShootingModeFeatureProviderImpl;->mPreviousShootingModeFeatureForRecording:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    new-instance v0, Lcom/sec/android/app/camera/feature/shootingmode/RecordingFeature;

    iget-object v1, p0, Lcom/sec/android/app/camera/feature/shootingmode/ShootingModeFeatureProviderImpl;->mPreviousShootingModeFeatureForRecording:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/feature/shootingmode/RecordingFeature;-><init>(Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;)V

    goto :goto_1

    :pswitch_15
    new-instance v0, Lcom/sec/android/app/camera/feature/shootingmode/RichToneFeature;

    invoke-direct {v0}, Lcom/sec/android/app/camera/feature/shootingmode/RichToneFeature;-><init>()V

    goto/16 :goto_1

    :pswitch_16
    new-instance v0, Lcom/sec/android/app/camera/feature/shootingmode/SelectiveFocusFeature;

    invoke-direct {v0}, Lcom/sec/android/app/camera/feature/shootingmode/SelectiveFocusFeature;-><init>()V

    goto/16 :goto_1

    :pswitch_17
    new-instance v0, Lcom/sec/android/app/camera/feature/shootingmode/SelfieFeature;

    invoke-direct {v0}, Lcom/sec/android/app/camera/feature/shootingmode/SelfieFeature;-><init>()V

    goto/16 :goto_1

    :pswitch_18
    new-instance v0, Lcom/sec/android/app/camera/feature/shootingmode/ShotAndMoreFeature;

    invoke-direct {v0}, Lcom/sec/android/app/camera/feature/shootingmode/ShotAndMoreFeature;-><init>()V

    goto/16 :goto_1

    :pswitch_19
    new-instance v0, Lcom/sec/android/app/camera/feature/shootingmode/SlowMotionFeature;

    invoke-direct {v0}, Lcom/sec/android/app/camera/feature/shootingmode/SlowMotionFeature;-><init>()V

    goto/16 :goto_1

    :pswitch_1a
    new-instance v0, Lcom/sec/android/app/camera/feature/shootingmode/SoundAndShotFeature;

    invoke-direct {v0}, Lcom/sec/android/app/camera/feature/shootingmode/SoundAndShotFeature;-><init>()V

    goto/16 :goto_1

    :pswitch_1b
    new-instance v0, Lcom/sec/android/app/camera/feature/shootingmode/SportsFeature;

    invoke-direct {v0}, Lcom/sec/android/app/camera/feature/shootingmode/SportsFeature;-><init>()V

    goto/16 :goto_1

    :pswitch_1c
    new-instance v0, Lcom/sec/android/app/camera/feature/shootingmode/VideoCollageFeature;

    invoke-direct {v0}, Lcom/sec/android/app/camera/feature/shootingmode/VideoCollageFeature;-><init>()V

    goto/16 :goto_1

    :pswitch_1d
    new-instance v0, Lcom/sec/android/app/camera/feature/shootingmode/VirtualShotFeature;

    invoke-direct {v0}, Lcom/sec/android/app/camera/feature/shootingmode/VirtualShotFeature;-><init>()V

    goto/16 :goto_1

    :pswitch_1e
    new-instance v0, Lcom/sec/android/app/camera/feature/shootingmode/WideSelfieFeature;

    invoke-direct {v0}, Lcom/sec/android/app/camera/feature/shootingmode/WideSelfieFeature;-><init>()V

    goto/16 :goto_1

    :pswitch_1f
    new-instance v0, Lcom/sec/android/app/camera/feature/shootingmode/MotionWideSelfieFeature;

    invoke-direct {v0}, Lcom/sec/android/app/camera/feature/shootingmode/MotionWideSelfieFeature;-><init>()V

    goto/16 :goto_1

    :pswitch_20
    new-instance v0, Lcom/sec/android/app/camera/feature/shootingmode/WideSelfieLiteFeature;

    invoke-direct {v0}, Lcom/sec/android/app/camera/feature/shootingmode/WideSelfieLiteFeature;-><init>()V

    goto/16 :goto_1

    :pswitch_21
    new-instance v0, Lcom/sec/android/app/camera/feature/shootingmode/ProductSearchFeature;

    invoke-direct {v0}, Lcom/sec/android/app/camera/feature/shootingmode/ProductSearchFeature;-><init>()V

    goto/16 :goto_1

    nop

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
        :pswitch_20
        :pswitch_1f
        :pswitch_21
    .end packed-switch
.end method


# virtual methods
.method public getFixedBackCameraResolution()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/feature/shootingmode/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->getFixedBackCameraResolution()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFixedFrontCameraResolution()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/feature/shootingmode/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->getFixedFrontCameraResolution()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isContinuousAFSupported()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/feature/shootingmode/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isContinuousAFSupported()Z

    move-result v0

    return v0
.end method

.method public isDivideAFAESupported()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/feature/shootingmode/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isDivideAFAESupported()Z

    move-result v0

    return v0
.end method

.method public isEffectSupported()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/feature/shootingmode/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isEffectSupported()Z

    move-result v0

    return v0
.end method

.method public isExternalMemorySupported()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/feature/shootingmode/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isExternalMemorySupported()Z

    move-result v0

    return v0
.end method

.method public isFaceDetectionSupported()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/feature/shootingmode/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isFaceDetectionSupported()Z

    move-result v0

    return v0
.end method

.method public isFloatingCameraButtonSupported()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/feature/shootingmode/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isFloatingCameraButtonSupported()Z

    move-result v0

    return v0
.end method

.method public isGestureControlSupported()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/feature/shootingmode/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isGestureControlSupported()Z

    move-result v0

    return v0
.end method

.method public isHandlingAudioFocus()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/feature/shootingmode/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isHandlingAudioFocus()Z

    move-result v0

    return v0
.end method

.method public isLowLightDetectionSupported()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/feature/shootingmode/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isLowLightDetectionSupported()Z

    move-result v0

    return v0
.end method

.method public isMultiInstanceCameraSupported()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/feature/shootingmode/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isMultiInstanceCameraSupported()Z

    move-result v0

    return v0
.end method

.method public isNeedToLockAEAWB()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/feature/shootingmode/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isNeedToLockAEAWB()Z

    move-result v0

    return v0
.end method

.method public isNeedToLockAWB()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/feature/shootingmode/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isNeedToLockAWB()Z

    move-result v0

    return v0
.end method

.method public isObjectTrackingSupported()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/feature/shootingmode/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isObjectTrackingSupported()Z

    move-result v0

    return v0
.end method

.method public isSuperResolutionZoomSupported()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/feature/shootingmode/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isSuperResolutionZoomSupported()Z

    move-result v0

    return v0
.end method

.method public isTouchAESupported()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/feature/shootingmode/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isTouchAESupported()Z

    move-result v0

    return v0
.end method

.method public isTouchAFSupported()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/feature/shootingmode/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isTouchAFSupported()Z

    move-result v0

    return v0
.end method

.method public isTouchEVSupported()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/feature/shootingmode/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isTouchEVSupported()Z

    move-result v0

    return v0
.end method

.method public isUsingCamcorderPreviewOnly()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/feature/shootingmode/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isUsingCamcorderPreviewOnly()Z

    move-result v0

    return v0
.end method

.method public isUsingThumbnailPictureCallback()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/feature/shootingmode/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isUsingThumbnailPictureCallback()Z

    move-result v0

    return v0
.end method

.method public isWatermarkSupported()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/feature/shootingmode/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isWatermarkSupported()Z

    move-result v0

    return v0
.end method

.method public isZoomSupported()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/feature/shootingmode/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isZoomSupported()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized onLowMemory(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/feature/shootingmode/ShootingModeFeatureProviderImpl;->clearInactiveShootingModeFeature()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onStop()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/feature/shootingmode/ShootingModeFeatureProviderImpl;->clearInactiveShootingModeFeature()V

    return-void
.end method

.method public setShootingMode(I)V
    .locals 4

    iget v1, p0, Lcom/sec/android/app/camera/feature/shootingmode/ShootingModeFeatureProviderImpl;->mCurrentShootingModeId:I

    if-eq v1, p1, :cond_0

    const-string v1, "SMFeatureProvider"

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

    iget-object v1, p0, Lcom/sec/android/app/camera/feature/shootingmode/ShootingModeFeatureProviderImpl;->mShootingModeFeatureList:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/feature/shootingmode/ShootingModeFeatureProviderImpl;->loadShootingModeFeature(I)V

    :goto_0
    iput p1, p0, Lcom/sec/android/app/camera/feature/shootingmode/ShootingModeFeatureProviderImpl;->mCurrentShootingModeId:I

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/feature/shootingmode/ShootingModeFeatureProviderImpl;->mPreviousShootingModeFeatureForRecording:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/feature/shootingmode/ShootingModeFeatureProviderImpl;->mPreviousShootingModeFeatureForRecording:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    :cond_2
    const/4 v1, 0x3

    if-ne p1, v1, :cond_3

    new-instance v0, Lcom/sec/android/app/camera/feature/shootingmode/RecordingFeature;

    iget-object v1, p0, Lcom/sec/android/app/camera/feature/shootingmode/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/feature/shootingmode/RecordingFeature;-><init>(Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;)V

    :cond_3
    iput-object v0, p0, Lcom/sec/android/app/camera/feature/shootingmode/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    goto :goto_0
.end method
