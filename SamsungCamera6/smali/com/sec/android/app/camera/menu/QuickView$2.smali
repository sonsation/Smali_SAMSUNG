.class Lcom/sec/android/app/camera/menu/QuickView$2;
.super Ljava/lang/Object;
.source "QuickView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/menu/QuickView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/menu/QuickView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/menu/QuickView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/menu/QuickView$2;->this$0:Lcom/sec/android/app/camera/menu/QuickView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "QuickView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLaunchGalleryRunnable : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/QuickView$2;->this$0:Lcom/sec/android/app/camera/menu/QuickView;

    invoke-static {v2}, Lcom/sec/android/app/camera/menu/QuickView;->access$100(Lcom/sec/android/app/camera/menu/QuickView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView$2;->this$0:Lcom/sec/android/app/camera/menu/QuickView;

    invoke-static {v0}, Lcom/sec/android/app/camera/menu/QuickView;->access$200(Lcom/sec/android/app/camera/menu/QuickView;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView$2;->this$0:Lcom/sec/android/app/camera/menu/QuickView;

    invoke-static {v0}, Lcom/sec/android/app/camera/menu/QuickView;->access$200(Lcom/sec/android/app/camera/menu/QuickView;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView$2;->this$0:Lcom/sec/android/app/camera/menu/QuickView;

    invoke-static {v0}, Lcom/sec/android/app/camera/menu/QuickView;->access$200(Lcom/sec/android/app/camera/menu/QuickView;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/QuickView$2;->this$0:Lcom/sec/android/app/camera/menu/QuickView;

    invoke-static {v1}, Lcom/sec/android/app/camera/menu/QuickView;->access$100(Lcom/sec/android/app/camera/menu/QuickView;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->onLaunchGallery(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "QuickView"

    const-string v1, "mLaunchGalleryRunnable : fail to launch Gallery"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView$2;->this$0:Lcom/sec/android/app/camera/menu/QuickView;

    const-string v1, "quickview"

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/menu/QuickView;->access$102(Lcom/sec/android/app/camera/menu/QuickView;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView$2;->this$0:Lcom/sec/android/app/camera/menu/QuickView;

    invoke-static {v0}, Lcom/sec/android/app/camera/menu/QuickView;->access$200(Lcom/sec/android/app/camera/menu/QuickView;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    const/16 v1, 0x1d

    const/16 v2, 0x1c20

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->sendBroadcastChangeSettings(II)V

    goto :goto_0
.end method
