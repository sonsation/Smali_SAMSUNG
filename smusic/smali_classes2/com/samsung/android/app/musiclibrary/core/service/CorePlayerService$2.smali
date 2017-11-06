.class Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$2;
.super Ljava/lang/Object;
.source "CorePlayerService.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$OnPlayerStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;

    .prologue
    .line 279
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrmRequest(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 315
    const-string v1, "play_ready_drm_acquire_type"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 334
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;

    invoke-static {v1, p1}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->access$1300(Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;Landroid/os/Bundle;)V

    .line 337
    :goto_0
    return-void

    .line 319
    :pswitch_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 320
    .local v0, "extra":Landroid/os/Bundle;
    const-string v1, "command"

    const-string/jumbo v2, "startRights"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;

    const-string v2, "com.samsung.android.app.music.core.state.DRM_REQUEST"

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->pushExtraStateUpdate(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 327
    .end local v0    # "extra":Landroid/os/Bundle;
    :pswitch_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 328
    .restart local v0    # "extra":Landroid/os/Bundle;
    const-string v1, "command"

    const-string/jumbo v2, "successRights"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;

    const-string v2, "com.samsung.android.app.music.core.state.DRM_REQUEST"

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->pushExtraStateUpdate(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 315
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onError(IILandroid/os/Bundle;)V
    .locals 1
    .param p1, "what"    # I
    .param p2, "extra"    # I
    .param p3, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 341
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->onPlayerError(IILandroid/os/Bundle;)V

    .line 342
    return-void
.end method

.method public onExtraDataChanged(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 346
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->onPlayerExtraDataChanged(Landroid/os/Bundle;)V

    .line 347
    return-void
.end method

.method public onPlayerStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 1
    .param p1, "state"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    .prologue
    .line 292
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->access$900(Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V

    .line 294
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->isSupposedToPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 295
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->access$1000(Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;)V

    .line 301
    :cond_0
    :goto_0
    return-void

    .line 297
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->access$1100(Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->isPausedByAudioFocus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->access$1200(Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;)V

    goto :goto_0
.end method

.method public onPrepared(Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;)V
    .locals 0
    .param p1, "player"    # Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    .prologue
    .line 283
    return-void
.end method

.method public onServerDied()V
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->play()V

    .line 311
    :cond_0
    return-void
.end method

.method public onTrackEnded(Z)V
    .locals 1
    .param p1, "isGaplessPlaying"    # Z

    .prologue
    .line 287
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->completePlayingInternal(Z)V

    .line 288
    return-void
.end method
