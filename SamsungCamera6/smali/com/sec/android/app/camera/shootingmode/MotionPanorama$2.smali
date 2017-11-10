.class Lcom/sec/android/app/camera/shootingmode/MotionPanorama$2;
.super Ljava/lang/Object;
.source "MotionPanorama.java"

# interfaces
.implements Lcom/samsung/android/glview/GLView$ClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->createPanoramaView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/MotionPanorama;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/shootingmode/MotionPanorama;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama$2;->this$0:Lcom/sec/android/app/camera/shootingmode/MotionPanorama;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/samsung/android/glview/GLView;)Z
    .locals 3

    const/4 v2, 0x1

    const-string v0, "MotionPanoramaApp"

    const-string v1, "onClick - CaptureStopButton"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama$2;->this$0:Lcom/sec/android/app/camera/shootingmode/MotionPanorama;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama$2;->this$0:Lcom/sec/android/app/camera/shootingmode/MotionPanorama;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->access$600(Lcom/sec/android/app/camera/shootingmode/MotionPanorama;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama$2;->this$0:Lcom/sec/android/app/camera/shootingmode/MotionPanorama;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->access$700(Lcom/sec/android/app/camera/shootingmode/MotionPanorama;)I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    const-string v0, "MotionPanoramaApp"

    const-string v1, "panorama can be saved at least two shot"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama$2;->this$0:Lcom/sec/android/app/camera/shootingmode/MotionPanorama;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->access$800(Lcom/sec/android/app/camera/shootingmode/MotionPanorama;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "MotionPanoramaApp"

    const-string v1, "onClick - stopping now. so returned"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama$2;->this$0:Lcom/sec/android/app/camera/shootingmode/MotionPanorama;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->access$900(Lcom/sec/android/app/camera/shootingmode/MotionPanorama;)Lcom/samsung/android/glview/GLButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama$2;->this$0:Lcom/sec/android/app/camera/shootingmode/MotionPanorama;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->access$1000(Lcom/sec/android/app/camera/shootingmode/MotionPanorama;)V

    goto :goto_0
.end method
