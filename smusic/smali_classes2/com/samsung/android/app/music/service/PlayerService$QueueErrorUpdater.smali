.class Lcom/samsung/android/app/music/service/PlayerService$QueueErrorUpdater;
.super Ljava/lang/Object;
.source "PlayerService.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/service/PlayerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QueueErrorUpdater"
.end annotation


# instance fields
.field private final mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

.field private final mService:Lcom/samsung/android/app/music/service/PlayerService;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/PlayerService;Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;)V
    .locals 0
    .param p1, "s"    # Lcom/samsung/android/app/music/service/PlayerService;
    .param p2, "player"    # Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    .prologue
    .line 1166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1167
    iput-object p1, p0, Lcom/samsung/android/app/music/service/PlayerService$QueueErrorUpdater;->mService:Lcom/samsung/android/app/music/service/PlayerService;

    .line 1168
    iput-object p2, p0, Lcom/samsung/android/app/music/service/PlayerService$QueueErrorUpdater;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    .line 1169
    return-void
.end method


# virtual methods
.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    const/16 v2, -0xd

    const/16 v3, -0x2bc

    .line 1186
    const-string v1, "com.samsung.android.app.music.core.state.queue.ERROR"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1187
    if-nez p2, :cond_1

    .line 1208
    :cond_0
    :goto_0
    return-void

    .line 1191
    :cond_1
    const-string v1, "error_type"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1193
    .local v0, "err":I
    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 1194
    iget-object v1, p0, Lcom/samsung/android/app/music/service/PlayerService$QueueErrorUpdater;->mService:Lcom/samsung/android/app/music/service/PlayerService;

    invoke-static {v1, v3, v2}, Lcom/samsung/android/app/music/service/PlayerService;->access$1600(Lcom/samsung/android/app/music/service/PlayerService;II)V

    .line 1204
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/app/music/service/PlayerService$QueueErrorUpdater;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    if-eqz v1, :cond_0

    .line 1205
    iget-object v1, p0, Lcom/samsung/android/app/music/service/PlayerService$QueueErrorUpdater;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->pause()V

    goto :goto_0

    .line 1196
    :cond_3
    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    .line 1197
    iget-object v1, p0, Lcom/samsung/android/app/music/service/PlayerService$QueueErrorUpdater;->mService:Lcom/samsung/android/app/music/service/PlayerService;

    const/16 v2, -0xc

    invoke-static {v1, v3, v2}, Lcom/samsung/android/app/music/service/PlayerService;->access$1600(Lcom/samsung/android/app/music/service/PlayerService;II)V

    goto :goto_1

    .line 1199
    :cond_4
    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    .line 1200
    iget-object v1, p0, Lcom/samsung/android/app/music/service/PlayerService$QueueErrorUpdater;->mService:Lcom/samsung/android/app/music/service/PlayerService;

    invoke-static {v1, v3, v2}, Lcom/samsung/android/app/music/service/PlayerService;->access$1600(Lcom/samsung/android/app/music/service/PlayerService;II)V

    goto :goto_1
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 0
    .param p1, "m"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .prologue
    .line 1173
    return-void
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 0
    .param p1, "s"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    .prologue
    .line 1177
    return-void
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
    .line 1182
    .local p1, "queue":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    return-void
.end method
