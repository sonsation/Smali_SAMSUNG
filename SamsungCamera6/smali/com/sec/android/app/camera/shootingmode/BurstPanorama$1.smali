.class Lcom/sec/android/app/camera/shootingmode/BurstPanorama$1;
.super Ljava/lang/Object;
.source "BurstPanorama.java"

# interfaces
.implements Lcom/samsung/android/glview/GLView$ClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->createPanoramaView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/BurstPanorama;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/shootingmode/BurstPanorama;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama$1;->this$0:Lcom/sec/android/app/camera/shootingmode/BurstPanorama;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/samsung/android/glview/GLView;)Z
    .locals 3

    const/4 v2, 0x1

    const-string v0, "BurstPanorama"

    const-string v1, "onClick - CaptureStopButton"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama$1;->this$0:Lcom/sec/android/app/camera/shootingmode/BurstPanorama;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->access$100(Lcom/sec/android/app/camera/shootingmode/BurstPanorama;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama$1;->this$0:Lcom/sec/android/app/camera/shootingmode/BurstPanorama;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->access$200(Lcom/sec/android/app/camera/shootingmode/BurstPanorama;)I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    const-string v0, "BurstPanorama"

    const-string v1, "panorama can be saved at least two shot"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v2

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama$1;->this$0:Lcom/sec/android/app/camera/shootingmode/BurstPanorama;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->access$300(Lcom/sec/android/app/camera/shootingmode/BurstPanorama;)Lcom/samsung/android/glview/GLButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama$1;->this$0:Lcom/sec/android/app/camera/shootingmode/BurstPanorama;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->access$400(Lcom/sec/android/app/camera/shootingmode/BurstPanorama;)V

    goto :goto_0
.end method
