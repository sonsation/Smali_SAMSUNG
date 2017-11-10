.class Lcom/sec/android/app/camera/shootingmode/MotionPanorama$PanoramaHandler;
.super Landroid/os/Handler;
.source "MotionPanorama.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/shootingmode/MotionPanorama;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PanoramaHandler"
.end annotation


# instance fields
.field private final mMotionPanorama:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sec/android/app/camera/shootingmode/MotionPanorama;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/shootingmode/MotionPanorama;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama$PanoramaHandler;->mMotionPanorama:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/shootingmode/MotionPanorama$PanoramaHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama$PanoramaHandler;->clear()V

    return-void
.end method

.method private clear()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama$PanoramaHandler;->mMotionPanorama:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10

    const-wide/16 v8, 0x3e8

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama$PanoramaHandler;->mMotionPanorama:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    :try_start_0
    const-string v2, "MotionPanoramaApp"

    const-string v3, "Inactivity timer is expired. finish."

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->access$100(Lcom/sec/android/app/camera/shootingmode/MotionPanorama;)V

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->access$200(Lcom/sec/android/app/camera/shootingmode/MotionPanorama;)V

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->access$1100(Lcom/sec/android/app/camera/shootingmode/MotionPanorama;I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "MotionPanoramaApp"

    const-string v3, "MSG arrived after the onDestroy. Ignore exception"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_2
    const-string v2, "MotionPanoramaApp"

    const-string v3, "MESSAGE_PANORAMA_WARNING_LOW"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama$PanoramaHandler;->removeMessages(I)V

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama$PanoramaHandler;->removeMessages(I)V

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->access$1200(Lcom/sec/android/app/camera/shootingmode/MotionPanorama;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v4, v8, v9}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama$PanoramaHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :pswitch_3
    const-string v2, "MotionPanoramaApp"

    const-string v3, "MESSAGE_PANORAMA_WARNING_HIGH"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama$PanoramaHandler;->removeMessages(I)V

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama$PanoramaHandler;->removeMessages(I)V

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->access$1200(Lcom/sec/android/app/camera/shootingmode/MotionPanorama;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1, v6}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->access$1100(Lcom/sec/android/app/camera/shootingmode/MotionPanorama;I)V

    invoke-virtual {p0, v5, v8, v9}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama$PanoramaHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :pswitch_4
    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama$PanoramaHandler;->removeMessages(I)V

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->access$1300(Lcom/sec/android/app/camera/shootingmode/MotionPanorama;)V

    goto :goto_0

    :pswitch_5
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->access$1400(Lcom/sec/android/app/camera/shootingmode/MotionPanorama;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x9

    const-wide/16 v4, 0x32

    invoke-virtual {p0, v2, v4, v5}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama$PanoramaHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->access$1500(Lcom/sec/android/app/camera/shootingmode/MotionPanorama;)V

    goto :goto_0

    nop

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
