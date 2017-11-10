.class Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;
.super Landroid/os/Handler;
.source "VideoCollage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/shootingmode/VideoCollage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VideoCollageHandler"
.end annotation


# instance fields
.field private final mVideoCollage:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sec/android/app/camera/shootingmode/VideoCollage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/shootingmode/VideoCollage;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;->mVideoCollage:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;->clear()V

    return-void
.end method

.method private clear()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;->mVideoCollage:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;->mVideoCollage:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->access$3600(Lcom/sec/android/app/camera/shootingmode/VideoCollage;)V

    goto :goto_0

    :pswitch_1
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->access$3500(Lcom/sec/android/app/camera/shootingmode/VideoCollage;)V

    goto :goto_0

    :pswitch_2
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->access$3700(Lcom/sec/android/app/camera/shootingmode/VideoCollage;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->access$3800(Lcom/sec/android/app/camera/shootingmode/VideoCollage;)V

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->access$3900(Lcom/sec/android/app/camera/shootingmode/VideoCollage;)V

    goto :goto_0

    :pswitch_3
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->access$4000(Lcom/sec/android/app/camera/shootingmode/VideoCollage;)V

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->access$4100(Lcom/sec/android/app/camera/shootingmode/VideoCollage;)V

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->access$4200(Lcom/sec/android/app/camera/shootingmode/VideoCollage;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
