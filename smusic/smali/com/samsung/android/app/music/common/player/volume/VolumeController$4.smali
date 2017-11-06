.class Lcom/samsung/android/app/music/common/player/volume/VolumeController$4;
.super Landroid/os/Handler;
.source "VolumeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/player/volume/VolumeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/player/volume/VolumeController;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/player/volume/VolumeController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/player/volume/VolumeController;

    .prologue
    .line 349
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/volume/VolumeController$4;->this$0:Lcom/samsung/android/app/music/common/player/volume/VolumeController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 352
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/volume/VolumeController$4;->this$0:Lcom/samsung/android/app/music/common/player/volume/VolumeController;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/player/volume/VolumeController;->access$1200(Lcom/samsung/android/app/music/common/player/volume/VolumeController;)Lcom/samsung/android/app/music/common/player/volume/IVolumeControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/music/common/player/volume/IVolumeControl;->hidePanel()V

    .line 353
    return-void
.end method
