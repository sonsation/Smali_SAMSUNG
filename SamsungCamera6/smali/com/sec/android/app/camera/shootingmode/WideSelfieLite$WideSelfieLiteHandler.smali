.class Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$WideSelfieLiteHandler;
.super Landroid/os/Handler;
.source "WideSelfieLite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WideSelfieLiteHandler"
.end annotation


# instance fields
.field private final mWideSelfieLite:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$WideSelfieLiteHandler;->mWideSelfieLite:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$WideSelfieLiteHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$WideSelfieLiteHandler;->clear()V

    return-void
.end method

.method private clear()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$WideSelfieLiteHandler;->mWideSelfieLite:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10

    const/4 v9, 0x7

    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v6, 0x3

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$WideSelfieLiteHandler;->mWideSelfieLite:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "WideSelfieLite"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MainHandler handleMessage :: msg.what = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    :try_start_0
    const-string v2, "WideSelfieLite"

    const-string v3, "Inactivity timer is expired. finish."

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->access$1400(Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;)V

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->access$1500(Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;Z)V

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->access$100(Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isTouchToCaptureStarted()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->access$100(Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setTouchToCaptureStarted(Z)V

    :cond_2
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->access$1600(Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;)V

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->access$1700(Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;)V

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->access$100(Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v2

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->playCameraSound(II)V

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->access$1800(Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "WideSelfieLite"

    const-string v3, "MSG arrived after the onDestroy. Ignore exception"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    const-string v2, "WideSelfieLite"

    const-string v3, "MESSAGE_WIDE_SELFIE_WARNING_LOW"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v7}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$WideSelfieLiteHandler;->removeMessages(I)V

    invoke-virtual {p0, v6}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$WideSelfieLiteHandler;->removeMessages(I)V

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->access$100(Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->access$1900(Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v7, v2, v3}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$WideSelfieLiteHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :pswitch_2
    const-string v2, "WideSelfieLite"

    const-string v3, "MESSAGE_WIDE_SELFIE_WARNING_HIGH"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v6}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$WideSelfieLiteHandler;->removeMessages(I)V

    invoke-virtual {p0, v7}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$WideSelfieLiteHandler;->removeMessages(I)V

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->access$100(Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->access$1900(Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->access$100(Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v2

    invoke-interface {v2, v8, v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->playCameraSound(II)V

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->access$100(Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v6}, Lcom/sec/android/app/camera/haptic/HapticFeedback;->playHaptic(Landroid/content/Context;I)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v6, v2, v3}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$WideSelfieLiteHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$WideSelfieLiteHandler;->removeMessages(I)V

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->access$2000(Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;)V

    goto/16 :goto_0

    :pswitch_4
    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$WideSelfieLiteHandler;->removeMessages(I)V

    invoke-static {v1, v5}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->access$2102(Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;Z)Z

    goto/16 :goto_0

    :pswitch_5
    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$WideSelfieLiteHandler;->removeMessages(I)V

    invoke-static {v1, v5}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->access$2200(Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;Z)V

    goto/16 :goto_0

    :pswitch_6
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->access$100(Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->isCameraSwitchingAnimationRunning()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->access$2300(Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;)Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$WideSelfieLiteHandler;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v9}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$WideSelfieLiteHandler;->removeMessages(I)V

    const-wide/16 v2, 0x32

    invoke-virtual {p0, v9, v2, v3}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$WideSelfieLiteHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_3
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->access$1800(Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;)V

    goto/16 :goto_0

    :pswitch_7
    invoke-static {v1, v5}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->access$2400(Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;I)V

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->access$2500(Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;)Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->endShutterProgressWheel()V

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->access$400(Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;)Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->startFaceDetection()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
