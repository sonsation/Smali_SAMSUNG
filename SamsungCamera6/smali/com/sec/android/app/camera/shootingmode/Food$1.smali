.class Lcom/sec/android/app/camera/shootingmode/Food$1;
.super Landroid/content/BroadcastReceiver;
.source "Food.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/shootingmode/Food;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/Food;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/shootingmode/Food;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Food$1;->this$0:Lcom/sec/android/app/camera/shootingmode/Food;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Food"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive: action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    :goto_1
    return-void

    :sswitch_0
    const-string v2, "camera.action.ACTION_ERROR_CAMERA_BUSY"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_1
    const-string v2, "camera.action.ACTION_ERROR_CAMERA_SERVER_DIED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food$1;->this$0:Lcom/sec/android/app/camera/shootingmode/Food;

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/Food;->access$000(Lcom/sec/android/app/camera/shootingmode/Food;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food$1;->this$0:Lcom/sec/android/app/camera/shootingmode/Food;

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/Food;->access$100(Lcom/sec/android/app/camera/shootingmode/Food;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Food$1;->this$0:Lcom/sec/android/app/camera/shootingmode/Food;

    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/Food;->access$000(Lcom/sec/android/app/camera/shootingmode/Food;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/util/CameraLocalBroadcastManager;->unregister(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food$1;->this$0:Lcom/sec/android/app/camera/shootingmode/Food;

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/Food;->access$200(Lcom/sec/android/app/camera/shootingmode/Food;)V

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7390e4de -> :sswitch_0
        -0x65a495e9 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
