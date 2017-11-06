.class Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl$AdjustVolumeThreadHandler;
.super Landroid/os/Handler;
.source "NormalVolumeControlImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdjustVolumeThreadHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 373
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl$AdjustVolumeThreadHandler;->this$0:Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;

    .line 374
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 375
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 379
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 380
    .local v0, "fineVolume":I
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl$AdjustVolumeThreadHandler;->this$0:Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->access$1002(Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;Z)Z

    .line 381
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl$AdjustVolumeThreadHandler;->this$0:Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->access$400(Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;)Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->setVolume(I)V

    .line 382
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl$AdjustVolumeThreadHandler;->this$0:Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->access$1002(Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;Z)Z

    .line 383
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl$AdjustVolumeThreadHandler;->this$0:Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->access$1100(Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;)Landroid/widget/SeekBar;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 384
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl$AdjustVolumeThreadHandler;->this$0:Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->access$1100(Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;)Landroid/widget/SeekBar;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl$AdjustVolumeThreadHandler$1;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl$AdjustVolumeThreadHandler$1;-><init>(Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl$AdjustVolumeThreadHandler;I)V

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->post(Ljava/lang/Runnable;)Z

    .line 391
    :cond_0
    return-void
.end method
