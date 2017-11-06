.class Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor$1;
.super Ljava/lang/Object;
.source "PlayControllerExecutor.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor$1;->this$0:Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 221
    return-void
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 2
    .param p1, "m"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .prologue
    .line 153
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor$1;->this$0:Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor;

    invoke-static {v0}, Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor;->access$000(Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor$1;->this$0:Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor;

    invoke-static {v0}, Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor;->access$100(Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor;)Lcom/samsung/android/app/musiclibrary/core/bixby/Command;

    move-result-object v0

    if-nez v0, :cond_1

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    invoke-static {}, Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onMetadataChanged()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor$1;->this$0:Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor;->access$302(Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor;Z)Z

    goto :goto_0
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 7
    .param p1, "s"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    .prologue
    const/4 v6, 0x1

    .line 162
    iget-object v3, p0, Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor$1;->this$0:Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor;

    invoke-static {v3}, Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor;->access$000(Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor$1;->this$0:Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor;

    invoke-static {v3}, Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor;->access$100(Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor;)Lcom/samsung/android/app/musiclibrary/core/bixby/Command;

    move-result-object v3

    if-nez v3, :cond_1

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor$1;->this$0:Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor;

    invoke-static {v3}, Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor;->access$100(Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor;)Lcom/samsung/android/app/musiclibrary/core/bixby/Command;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getState()Ljava/lang/String;

    move-result-object v2

    .line 166
    .local v2, "state":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor;->access$200()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onPlaybackStateChanged() - state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->isSupposedToPlaying()Z

    move-result v3

    if-nez v3, :cond_2

    .line 170
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

    invoke-direct {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;-><init>(Ljava/lang/String;)V

    .line 171
    .local v0, "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    const-string v3, "CurrentSongInfo"

    const-string v4, "Exist"

    const-string v5, "no"

    invoke-virtual {v0, v3, v4, v5}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iget-object v3, p0, Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor$1;->this$0:Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor;

    invoke-static {v3}, Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor;->access$400(Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor;)Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;

    invoke-direct {v4, v6, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/Nlg;)V

    invoke-interface {v3, v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/Result;)V

    .line 174
    iget-object v3, p0, Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor$1;->this$0:Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor;

    invoke-static {v3}, Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor;->access$500(Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor;)V

    goto :goto_0

    .line 178
    .end local v0    # "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getPlayerState()I

    move-result v1

    .line 179
    .local v1, "playerState":I
    const/4 v3, 0x3

    if-eq v1, v3, :cond_3

    .line 180
    invoke-static {}, Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor;->access$200()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onPlaybackStateChanged() - Wait to play... state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 184
    :cond_3
    const-string v3, "Play"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 185
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

    invoke-direct {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;-><init>(Ljava/lang/String;)V

    .line 186
    .restart local v0    # "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    const-string v3, "PausedSong"

    const-string v4, "Exist"

    const-string/jumbo v5, "yes"

    invoke-virtual {v0, v3, v4, v5}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    iget-object v3, p0, Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor$1;->this$0:Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor;

    invoke-static {v3}, Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor;->access$400(Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor;)Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;

    invoke-direct {v4, v6, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/Nlg;)V

    invoke-interface {v3, v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/Result;)V

    .line 189
    iget-object v3, p0, Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor$1;->this$0:Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor;

    invoke-static {v3}, Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor;->access$500(Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor;)V

    goto/16 :goto_0

    .line 193
    .end local v0    # "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    :cond_4
    iget-object v3, p0, Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor$1;->this$0:Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor;

    invoke-static {v3}, Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor;->access$300(Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 194
    invoke-static {}, Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor;->access$200()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "onPlaybackStateChanged() - Metadata is not updated yet."

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 197
    :cond_5
    const-string v3, "PlayNextSong"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 198
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

    invoke-direct {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;-><init>(Ljava/lang/String;)V

    .line 199
    .restart local v0    # "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    const-string v3, "NextSong"

    const-string v4, "Exist"

    const-string/jumbo v5, "yes"

    invoke-virtual {v0, v3, v4, v5}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    iget-object v3, p0, Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor$1;->this$0:Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor;

    invoke-static {v3}, Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor;->access$400(Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor;)Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;

    invoke-direct {v4, v6, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/Nlg;)V

    invoke-interface {v3, v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/Result;)V

    .line 202
    iget-object v3, p0, Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor$1;->this$0:Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor;

    invoke-static {v3}, Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor;->access$500(Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor;)V

    goto/16 :goto_0

    .line 203
    .end local v0    # "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    :cond_6
    const-string v3, "PlayPreviousSong"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 204
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

    invoke-direct {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;-><init>(Ljava/lang/String;)V

    .line 205
    .restart local v0    # "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    const-string v3, "PreviousSong"

    const-string v4, "Exist"

    const-string/jumbo v5, "yes"

    invoke-virtual {v0, v3, v4, v5}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    iget-object v3, p0, Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor$1;->this$0:Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor;

    invoke-static {v3}, Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor;->access$400(Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor;)Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;

    invoke-direct {v4, v6, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/Nlg;)V

    invoke-interface {v3, v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/Result;)V

    .line 208
    iget-object v3, p0, Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor$1;->this$0:Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor;

    invoke-static {v3}, Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor;->access$500(Lcom/samsung/android/app/music/bixby/executor/player/global/PlayControllerExecutor;)V

    goto/16 :goto_0
.end method

.method public onQueueChanged(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "extras"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 216
    .local p1, "queue":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    return-void
.end method
