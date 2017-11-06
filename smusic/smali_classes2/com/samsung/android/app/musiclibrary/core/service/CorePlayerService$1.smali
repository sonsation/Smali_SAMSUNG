.class Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$1;
.super Ljava/lang/Object;
.source "CorePlayerService.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;
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
    .line 146
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExtraChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "extra"    # Landroid/os/Bundle;

    .prologue
    .line 217
    const-string v0, "com.samsung.android.app.music.core.state.queue.ERROR"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->access$300(Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 222
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->pushExtraStateUpdate(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 223
    return-void

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->access$100(Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onMetaChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;Z)V
    .locals 6
    .param p1, "item"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "isGaplessPlaying"    # Z

    .prologue
    .line 149
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->access$000(Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;)Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerAutoResumeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerAutoResumeManager;->clear()V

    .line 154
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->access$100(Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "extra.list_position"

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v3

    const-string v4, "com.google.android.music.mediasession.METADATA_KEY_QUEUE_POSITION"

    .line 155
    invoke-virtual {v3, v4}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    long-to-int v3, v4

    .line 154
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 156
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->access$100(Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "extra.list_length"

    .line 157
    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v3

    const-string v4, "com.google.android.music.mediasession.METADATA_KEY_QUEUE_SIZE"

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    long-to-int v3, v4

    .line 156
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 158
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;

    invoke-static {v1, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->access$200(Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;Z)V

    .line 160
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->access$300(Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 161
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->access$300(Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 162
    .local v0, "i":Landroid/content/Intent;
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->access$400(Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;)Lcom/samsung/android/app/musiclibrary/core/service/receiver/OnServiceCommandReceiver;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/samsung/android/app/musiclibrary/core/service/receiver/OnServiceCommandReceiver;->onStartCommand(Landroid/content/Intent;)Z

    goto :goto_0

    .line 164
    .end local v0    # "i":Landroid/content/Intent;
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->access$300(Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 166
    :cond_1
    return-void
.end method

.method public onMetaUpdated(Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)V
    .locals 2
    .param p1, "item"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 170
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->access$500(Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V

    .line 171
    return-void
.end method

.method public onNextMetaChanged(Landroid/net/Uri;Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)V
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "item"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    .prologue
    .line 175
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 176
    .local v0, "data":Landroid/os/Bundle;
    const-string v3, "has_next_song"

    if-eqz p1, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 177
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;

    iget-object v2, v2, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mServiceMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;

    const-string v3, "com.sec.android.app.music.NEXT_SONG_CHANGED"

    .line 178
    invoke-virtual {v2, v3, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->notifyExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 180
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;

    invoke-virtual {v2, p2}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->isSupportNextMediaPlayer(Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 181
    :cond_0
    const-string v2, "SV"

    const-string v3, "onNextMetaChanged but not supported."

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;

    iget-object v2, v2, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->requestSetNextDataSourceInBackground(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)V

    .line 189
    :goto_1
    return-void

    .line 176
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 184
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;

    invoke-static {v2, p2}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->access$600(Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    move-result-object v1

    .line 187
    .local v1, "source":Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;

    iget-object v2, v2, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    const/16 v3, 0x1f4

    invoke-virtual {v2, v1, v3}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->requestSetNextDataSourceInBackground(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;I)V

    goto :goto_1
.end method

.method public onQueueChanged([J)V
    .locals 0
    .param p1, "list"    # [J

    .prologue
    .line 194
    return-void
.end method

.method public onQueueComplete()V
    .locals 4

    .prologue
    .line 205
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->seek(J)J

    .line 206
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->pause()V

    .line 209
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->getActivePlayControl()Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;->next()Z

    .line 210
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->access$800(Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;)Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;->waitReady()V

    .line 212
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;

    const-string v1, "com.samsung.android.app.music.core.state.QUEUE_COMPLETED"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->pushExtraStateUpdate(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 213
    return-void
.end method

.method public onQueueComposed(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 1
    .param p2, "extras"    # Landroid/os/Bundle;
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
    .line 198
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->access$100(Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 199
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;

    invoke-static {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->access$700(Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;Ljava/util/List;Landroid/os/Bundle;)V

    .line 200
    return-void
.end method
