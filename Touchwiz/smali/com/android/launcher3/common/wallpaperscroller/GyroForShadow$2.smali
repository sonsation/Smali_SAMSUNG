.class final Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow$2;
.super Ljava/lang/Thread;
.source "GyroForShadow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->startSensor()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 105
    invoke-static {}, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->access$100()Landroid/hardware/SensorManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 106
    invoke-static {}, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->access$100()Landroid/hardware/SensorManager;

    move-result-object v0

    invoke-static {}, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->access$200()Landroid/hardware/SensorEventListener;

    move-result-object v1

    invoke-static {}, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->access$100()Landroid/hardware/SensorManager;

    move-result-object v2

    const v3, 0x1002b

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 109
    :cond_0
    return-void
.end method
