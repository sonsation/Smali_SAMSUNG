.class public Lcom/sec/android/app/camera/menu/MenuResourceDepot;
.super Ljava/lang/Object;
.source "MenuResourceDepot.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MenuResourceDepot"


# instance fields
.field protected mCameraContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sec/android/app/camera/interfaces/CameraContext;",
            ">;"
        }
    .end annotation
.end field

.field private mResources:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/MenuResourceDepot;->mCameraContext:Ljava/lang/ref/WeakReference;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/MenuResourceDepot;->mResources:Landroid/util/SparseArray;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/MenuResourceDepot;->mCameraContext:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method protected delete(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/MenuResourceDepot;->mResources:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .locals 3

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/MenuResourceDepot;->mResources:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    if-eqz v0, :cond_0

    move-object v1, v0

    :goto_0
    return-object v1

    :cond_0
    sparse-switch p1, :sswitch_data_0

    :goto_1
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/MenuResourceDepot;->mResources:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    move-object v1, v0

    goto :goto_0

    :sswitch_0
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/BackCameraShootingModeResourceData;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/MenuResourceDepot;->mCameraContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/BackCameraShootingModeResourceData;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;)V

    goto :goto_1

    :sswitch_1
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/FrontCameraShootingModeResourceData;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/MenuResourceDepot;->mCameraContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/FrontCameraShootingModeResourceData;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;)V

    goto :goto_1

    :sswitch_2
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/FlashModeResourceData;

    invoke-direct {v0}, Lcom/sec/android/app/camera/resourcedata/FlashModeResourceData;-><init>()V

    goto :goto_1

    :sswitch_3
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/FrontFlashModeResourceData;

    invoke-direct {v0}, Lcom/sec/android/app/camera/resourcedata/FrontFlashModeResourceData;-><init>()V

    goto :goto_1

    :sswitch_4
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/EffectResourceData;

    invoke-direct {v0}, Lcom/sec/android/app/camera/resourcedata/EffectResourceData;-><init>()V

    goto :goto_1

    :sswitch_5
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/DualEffectResourceData;

    invoke-direct {v0}, Lcom/sec/android/app/camera/resourcedata/DualEffectResourceData;-><init>()V

    goto :goto_1

    :sswitch_6
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/FrontEffectResourceData;

    invoke-direct {v0}, Lcom/sec/android/app/camera/resourcedata/FrontEffectResourceData;-><init>()V

    goto :goto_1

    :sswitch_7
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ExternalEffectResourceData;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/MenuResourceDepot;->mCameraContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/ExternalEffectResourceData;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;)V

    goto :goto_1

    :sswitch_8
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ExposuremeterResourceData;

    invoke-direct {v0}, Lcom/sec/android/app/camera/resourcedata/ExposuremeterResourceData;-><init>()V

    goto :goto_1

    :sswitch_9
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ViewModeResourceData;

    invoke-direct {v0}, Lcom/sec/android/app/camera/resourcedata/ViewModeResourceData;-><init>()V

    goto :goto_1

    :sswitch_a
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/CameraHDRResourceData;

    invoke-direct {v0}, Lcom/sec/android/app/camera/resourcedata/CameraHDRResourceData;-><init>()V

    goto :goto_1

    :sswitch_b
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/SideQuickSettingResourceData;

    invoke-direct {v0}, Lcom/sec/android/app/camera/resourcedata/SideQuickSettingResourceData;-><init>()V

    goto :goto_1

    :sswitch_c
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ZoomValueResourceData;

    invoke-direct {v0}, Lcom/sec/android/app/camera/resourcedata/ZoomValueResourceData;-><init>()V

    goto :goto_1

    :sswitch_d
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/SoundAndShotModeResourceData;

    invoke-direct {v0}, Lcom/sec/android/app/camera/resourcedata/SoundAndShotModeResourceData;-><init>()V

    goto :goto_1

    :sswitch_e
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/EasyCameraFlashModeResourceData;

    invoke-direct {v0}, Lcom/sec/android/app/camera/resourcedata/EasyCameraFlashModeResourceData;-><init>()V

    goto :goto_1

    :sswitch_f
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/EasyCameraFrontFlashModeResourceData;

    invoke-direct {v0}, Lcom/sec/android/app/camera/resourcedata/EasyCameraFrontFlashModeResourceData;-><init>()V

    goto :goto_1

    :sswitch_10
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/GestureControlModeResourceData;

    invoke-direct {v0}, Lcom/sec/android/app/camera/resourcedata/GestureControlModeResourceData;-><init>()V

    goto/16 :goto_1

    :sswitch_11
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/AntifogLevelValueResourceData;

    invoke-direct {v0}, Lcom/sec/android/app/camera/resourcedata/AntifogLevelValueResourceData;-><init>()V

    goto/16 :goto_1

    :sswitch_12
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/FoodColorTuneResourceData;

    invoke-direct {v0}, Lcom/sec/android/app/camera/resourcedata/FoodColorTuneResourceData;-><init>()V

    goto/16 :goto_1

    :sswitch_13
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/VideoCollageTypeResourceData;

    invoke-direct {v0}, Lcom/sec/android/app/camera/resourcedata/VideoCollageTypeResourceData;-><init>()V

    goto/16 :goto_1

    :sswitch_14
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/VideoCollageRecTimeResourceData;

    invoke-direct {v0}, Lcom/sec/android/app/camera/resourcedata/VideoCollageRecTimeResourceData;-><init>()V

    goto/16 :goto_1

    :sswitch_15
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/VideoCollageSlowRecTimeResourceData;

    invoke-direct {v0}, Lcom/sec/android/app/camera/resourcedata/VideoCollageSlowRecTimeResourceData;-><init>()V

    goto/16 :goto_1

    :sswitch_16
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/BeautyMenuResourceData;

    invoke-direct {v0}, Lcom/sec/android/app/camera/resourcedata/BeautyMenuResourceData;-><init>()V

    goto/16 :goto_1

    :sswitch_17
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/BeautyLiteMenuResourceData;

    invoke-direct {v0}, Lcom/sec/android/app/camera/resourcedata/BeautyLiteMenuResourceData;-><init>()V

    goto/16 :goto_1

    :sswitch_18
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/BeautyLevelValueResourceData;

    invoke-direct {v0}, Lcom/sec/android/app/camera/resourcedata/BeautyLevelValueResourceData;-><init>()V

    goto/16 :goto_1

    :sswitch_19
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ColorTuneResourceData;

    invoke-direct {v0}, Lcom/sec/android/app/camera/resourcedata/ColorTuneResourceData;-><init>()V

    goto/16 :goto_1

    :sswitch_1a
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/MotionPanoramaModeResourceData;

    invoke-direct {v0}, Lcom/sec/android/app/camera/resourcedata/MotionPanoramaModeResourceData;-><init>()V

    goto/16 :goto_1

    :sswitch_1b
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/MotionWideSelfieModeResourceData;

    invoke-direct {v0}, Lcom/sec/android/app/camera/resourcedata/MotionWideSelfieModeResourceData;-><init>()V

    goto/16 :goto_1

    :sswitch_1c
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/FoodBlurTypeResourceData;

    invoke-direct {v0}, Lcom/sec/android/app/camera/resourcedata/FoodBlurTypeResourceData;-><init>()V

    goto/16 :goto_1

    :sswitch_1d
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/MultiAFModeResourceData;

    invoke-direct {v0}, Lcom/sec/android/app/camera/resourcedata/MultiAFModeResourceData;-><init>()V

    goto/16 :goto_1

    :sswitch_1e
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/RecordingMotionSpeedResourceData;

    invoke-direct {v0}, Lcom/sec/android/app/camera/resourcedata/RecordingMotionSpeedResourceData;-><init>()V

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_2
        0x8 -> :sswitch_4
        0xb -> :sswitch_8
        0xc -> :sswitch_a
        0x12 -> :sswitch_c
        0x17 -> :sswitch_9
        0x4d -> :sswitch_d
        0x54 -> :sswitch_10
        0x5a -> :sswitch_5
        0x64 -> :sswitch_1
        0x66 -> :sswitch_6
        0x71 -> :sswitch_18
        0x75 -> :sswitch_11
        0x77 -> :sswitch_19
        0x79 -> :sswitch_b
        0x7f -> :sswitch_7
        0x80 -> :sswitch_12
        0x81 -> :sswitch_16
        0x82 -> :sswitch_17
        0x83 -> :sswitch_13
        0x84 -> :sswitch_14
        0x85 -> :sswitch_15
        0x87 -> :sswitch_1a
        0x8d -> :sswitch_1c
        0x91 -> :sswitch_1d
        0x96 -> :sswitch_1e
        0xaa -> :sswitch_3
        0xad -> :sswitch_1b
        0xbc4 -> :sswitch_e
        0xbc5 -> :sswitch_f
        0xbe0 -> :sswitch_0
        0xbe1 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onDestroy()V
    .locals 6

    const/4 v5, 0x0

    const-string v3, "MenuResourceDepot"

    const-string v4, "onDestroy"

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v5, p0, Lcom/sec/android/app/camera/menu/MenuResourceDepot;->mCameraContext:Ljava/lang/ref/WeakReference;

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/MenuResourceDepot;->mResources:Landroid/util/SparseArray;

    if-eqz v3, :cond_2

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/MenuResourceDepot;->mResources:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/MenuResourceDepot;->mResources:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/MenuResourceDepot;->mResources:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->cleanUpResources()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/MenuResourceDepot;->mResources:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    iput-object v5, p0, Lcom/sec/android/app/camera/menu/MenuResourceDepot;->mResources:Landroid/util/SparseArray;

    :cond_2
    return-void
.end method
