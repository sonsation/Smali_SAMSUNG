.class Lcom/sec/android/app/camera/TemperatureManager$1;
.super Landroid/content/BroadcastReceiver;
.source "TemperatureManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/TemperatureManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/TemperatureManager;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/TemperatureManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/TemperatureManager$1;->this$0:Lcom/sec/android/app/camera/TemperatureManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TemperatureManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/camera/TemperatureManager$1;->this$0:Lcom/sec/android/app/camera/TemperatureManager;

    iget-object v1, v1, Lcom/sec/android/app/camera/TemperatureManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isDestroying()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/TemperatureManager$1;->this$0:Lcom/sec/android/app/camera/TemperatureManager;

    iget-object v1, v1, Lcom/sec/android/app/camera/TemperatureManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isPausing()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const-string v1, "TemperatureManager"

    const-string v2, "onReceive - ignore case, camera is stopping"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v1, "com.samsung.intent.action.SIOP_LEVEL_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/TemperatureManager$1;->this$0:Lcom/sec/android/app/camera/TemperatureManager;

    invoke-static {v1, p2}, Lcom/sec/android/app/camera/TemperatureManager;->access$000(Lcom/sec/android/app/camera/TemperatureManager;Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/TemperatureManager$1;->this$0:Lcom/sec/android/app/camera/TemperatureManager;

    invoke-static {v1, p2}, Lcom/sec/android/app/camera/TemperatureManager;->access$100(Lcom/sec/android/app/camera/TemperatureManager;Landroid/content/Intent;)V

    goto :goto_0
.end method
