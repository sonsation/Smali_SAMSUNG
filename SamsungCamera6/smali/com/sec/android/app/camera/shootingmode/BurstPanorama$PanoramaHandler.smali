.class Lcom/sec/android/app/camera/shootingmode/BurstPanorama$PanoramaHandler;
.super Landroid/os/Handler;
.source "BurstPanorama.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/shootingmode/BurstPanorama;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PanoramaHandler"
.end annotation


# instance fields
.field private final mBurstPanorama:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sec/android/app/camera/shootingmode/BurstPanorama;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/shootingmode/BurstPanorama;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama$PanoramaHandler;->mBurstPanorama:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/shootingmode/BurstPanorama$PanoramaHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama$PanoramaHandler;->clear()V

    return-void
.end method

.method private clear()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama$PanoramaHandler;->mBurstPanorama:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10

    const-wide/16 v8, 0x3e8

    const/4 v7, 0x4

    const/4 v6, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x2

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama$PanoramaHandler;->mBurstPanorama:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    :try_start_0
    const-string v2, "BurstPanorama"

    const-string v3, "Inactivity timer is expired. finish."

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->access$500(Lcom/sec/android/app/camera/shootingmode/BurstPanorama;)V

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->access$600(Lcom/sec/android/app/camera/shootingmode/BurstPanorama;)V

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->access$700(Lcom/sec/android/app/camera/shootingmode/BurstPanorama;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v2

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->playCameraSound(II)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "BurstPanorama"

    const-string v3, "MSG arrived after the onDestroy. Ignore exception"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_2
    const-string v2, "BurstPanorama"

    const-string v3, "MESSAGE_PANORAMA_WARNING_LOW"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama$PanoramaHandler;->removeMessages(I)V

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama$PanoramaHandler;->removeMessages(I)V

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->access$800(Lcom/sec/android/app/camera/shootingmode/BurstPanorama;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v4, v8, v9}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama$PanoramaHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :pswitch_3
    const-string v2, "BurstPanorama"

    const-string v3, "MESSAGE_PANORAMA_WARNING_HIGH"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama$PanoramaHandler;->removeMessages(I)V

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama$PanoramaHandler;->removeMessages(I)V

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->access$800(Lcom/sec/android/app/camera/shootingmode/BurstPanorama;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->access$700(Lcom/sec/android/app/camera/shootingmode/BurstPanorama;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v2

    invoke-interface {v2, v7, v6}, Lcom/sec/android/app/camera/interfaces/CameraContext;->playCameraSound(II)V

    invoke-virtual {p0, v5, v8, v9}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama$PanoramaHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :pswitch_4
    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama$PanoramaHandler;->removeMessages(I)V

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->access$900(Lcom/sec/android/app/camera/shootingmode/BurstPanorama;)V

    goto :goto_0

    :pswitch_5
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->access$700(Lcom/sec/android/app/camera/shootingmode/BurstPanorama;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->isCameraSwitchingAnimationRunning()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->access$1000(Lcom/sec/android/app/camera/shootingmode/BurstPanorama;)Lcom/sec/android/app/camera/shootingmode/BurstPanorama$PanoramaHandler;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->access$1000(Lcom/sec/android/app/camera/shootingmode/BurstPanorama;)Lcom/sec/android/app/camera/shootingmode/BurstPanorama$PanoramaHandler;

    move-result-object v2

    const/16 v3, 0x9

    const-wide/16 v4, 0x32

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama$PanoramaHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_2
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->access$1100(Lcom/sec/android/app/camera/shootingmode/BurstPanorama;)V

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->access$1202(Lcom/sec/android/app/camera/shootingmode/BurstPanorama;Z)Z

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method
