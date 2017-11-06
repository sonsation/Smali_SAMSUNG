.class Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor$2;
.super Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback$Stub;
.source "LockScreenPlayControllerExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;

    .prologue
    .line 197
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor$2;->this$0:Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 261
    return-void
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 3
    .param p1, "metadata"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 200
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor$2;->this$0:Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;

    invoke-static {v0}, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;->access$400(Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor$2;->this$0:Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;

    invoke-static {v0}, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;->access$500(Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;)Lcom/samsung/android/app/musiclibrary/core/bixby/Command;

    move-result-object v0

    if-nez v0, :cond_1

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 203
    :cond_1
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/EmptyMusicMetadata;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 204
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor$2;->this$0:Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;->access$602(Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;Z)Z

    .line 206
    :cond_2
    invoke-static {}, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onMetadataChanged mMetaUpdated: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor$2;->this$0:Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;

    invoke-static {v2}, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;->access$600(Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 6
    .param p1, "state"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 212
    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor$2;->this$0:Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;

    invoke-static {v2}, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;->access$400(Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor$2;->this$0:Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;

    invoke-static {v2}, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;->access$500(Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;)Lcom/samsung/android/app/musiclibrary/core/bixby/Command;

    move-result-object v2

    if-nez v2, :cond_1

    .line 256
    :cond_0
    :goto_0
    return-void

    .line 216
    :cond_1
    invoke-static {}, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "onPlaybackStateChanged"

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor$2;->this$0:Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;

    invoke-static {v2}, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;->access$500(Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;)Lcom/samsung/android/app/musiclibrary/core/bixby/Command;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getState()Ljava/lang/String;

    move-result-object v0

    .line 219
    .local v0, "pathRuleState":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->isSupposedToPlaying()Z

    move-result v2

    if-nez v2, :cond_2

    .line 220
    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor$2;->this$0:Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;

    const-string v3, "CurrentSongInfo"

    const-string v4, "Exist"

    const-string v5, "no"

    invoke-static {v2, v0, v3, v4, v5}, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;->access$700(Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 225
    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getPlayerState()I

    move-result v1

    .line 226
    .local v1, "playerState":I
    invoke-static {}, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onPlaybackStateChanged() state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    const/4 v2, 0x6

    if-eq v1, v2, :cond_3

    .line 235
    invoke-static {}, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "onPlaybackStateChanged() - Wait to play..."

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 239
    :cond_3
    const-string v2, "Play"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 240
    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor$2;->this$0:Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;

    const-string v3, "PausedSong"

    const-string v4, "Exist"

    const-string/jumbo v5, "yes"

    invoke-static {v2, v0, v3, v4, v5}, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;->access$700(Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 245
    :cond_4
    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor$2;->this$0:Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;

    invoke-static {v2}, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;->access$600(Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 246
    invoke-static {}, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "onPlaybackStateChanged() - Metadata is not updated yet."

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 249
    :cond_5
    const-string v2, "PlayNextSong"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 250
    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor$2;->this$0:Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;

    const-string v3, "NextSong"

    const-string v4, "Exist"

    const-string/jumbo v5, "yes"

    invoke-static {v2, v0, v3, v4, v5}, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;->access$700(Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 252
    :cond_6
    const-string v2, "PlayPreviousSong"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 253
    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor$2;->this$0:Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;

    const-string v3, "PreviousSong"

    const-string v4, "Exist"

    const-string/jumbo v5, "yes"

    invoke-static {v2, v0, v3, v4, v5}, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;->access$700(Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onQueueChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "queue"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice;
    .param p2, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 267
    return-void
.end method
