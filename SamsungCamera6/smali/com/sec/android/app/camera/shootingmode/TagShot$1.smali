.class Lcom/sec/android/app/camera/shootingmode/TagShot$1;
.super Ljava/lang/Object;
.source "TagShot.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/shootingmode/TagShot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/TagShot;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/shootingmode/TagShot;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot$1;->this$0:Lcom/sec/android/app/camera/shootingmode/TagShot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot$1;->this$0:Lcom/sec/android/app/camera/shootingmode/TagShot;

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/TagShot;->access$000(Lcom/sec/android/app/camera/shootingmode/TagShot;)I

    move-result v1

    if-gtz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot$1;->this$0:Lcom/sec/android/app/camera/shootingmode/TagShot;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/shootingmode/TagShot;->access$002(Lcom/sec/android/app/camera/shootingmode/TagShot;I)I

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot$1;->this$0:Lcom/sec/android/app/camera/shootingmode/TagShot;

    const/4 v2, 0x0

    aget v2, v0, v2

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/shootingmode/TagShot;->access$100(Lcom/sec/android/app/camera/shootingmode/TagShot;F)V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot$1;->this$0:Lcom/sec/android/app/camera/shootingmode/TagShot;

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/TagShot;->access$010(Lcom/sec/android/app/camera/shootingmode/TagShot;)I

    return-void
.end method
