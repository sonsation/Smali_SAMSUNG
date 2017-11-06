.class Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl$2;
.super Ljava/lang/Object;
.source "NormalVolumeControlImpl.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->ensurePanel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl$2;->this$0:Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 175
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl$2;->this$0:Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->access$200(Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 190
    :goto_0
    return-void

    .line 179
    :cond_0
    if-eqz p3, :cond_1

    .line 180
    sget-boolean v0, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_FW_FINE_VOLUME:Z

    if-eqz v0, :cond_2

    .line 181
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl$2;->this$0:Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;

    invoke-static {v0, p2}, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->access$300(Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;I)V

    .line 186
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl$2;->this$0:Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->access$600(Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;I)V

    .line 187
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl$2;->this$0:Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;

    invoke-static {v0, p2}, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->access$700(Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;I)V

    .line 189
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl$2;->this$0:Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;

    invoke-static {v0, p3}, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->access$802(Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;Z)Z

    goto :goto_0

    .line 183
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl$2;->this$0:Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->access$400(Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;)Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->setVolume(I)V

    .line 184
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl$2;->this$0:Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;

    if-lez p2, :cond_3

    const/4 v0, 0x1

    :goto_2
    invoke-static {v1, v0}, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->access$500(Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;Z)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 194
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 198
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl$2;->this$0:Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->access$002(Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 199
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl$2;->this$0:Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->access$802(Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;Z)Z

    .line 202
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl$2;->this$0:Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->access$900(Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl$2;->this$0:Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->isShowingPanel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl$2;->this$0:Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->showPanel()V

    .line 205
    :cond_0
    return-void
.end method
