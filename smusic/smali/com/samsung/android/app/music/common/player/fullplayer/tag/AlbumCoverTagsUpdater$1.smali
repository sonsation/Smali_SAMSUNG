.class Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$1;
.super Ljava/lang/Object;
.source "AlbumCoverTagsUpdater.java"

# interfaces
.implements Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$MediaEventCollector$OnMediaEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$1;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlbumSizeChanged(II)V
    .locals 1
    .param p1, "albumWidth"    # I
    .param p2, "albumHeight"    # I

    .prologue
    .line 120
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$1;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;

    invoke-static {v0, p1, p2}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->access$1100(Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;II)V

    .line 121
    return-void
.end method

.method public onBeginCollected()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 90
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$1;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;

    invoke-static {v0, v2}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->access$002(Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;Z)Z

    .line 94
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$1;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->access$102(Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;I)I

    .line 95
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$1;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->access$202(Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;I)I

    .line 96
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$1;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;

    invoke-static {v0, v2}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->access$300(Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;Z)V

    .line 97
    return-void
.end method

.method public onEndCollected(Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$MediaEventCollector$CollectedEventsArgs;)V
    .locals 4
    .param p1, "args"    # Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$MediaEventCollector$CollectedEventsArgs;

    .prologue
    .line 101
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$1;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;

    invoke-static {v1, p1}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->access$402(Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$MediaEventCollector$CollectedEventsArgs;)Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$MediaEventCollector$CollectedEventsArgs;

    .line 102
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$1;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;

    .line 103
    invoke-static {v1}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->access$500(Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;)Landroid/util/SparseArray;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagWidget$TagObservable;

    .line 104
    .local v0, "privateObservable":Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagWidget$TagObservable;
    if-eqz v0, :cond_0

    .line 105
    iget-object v1, p1, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$MediaEventCollector$CollectedEventsArgs;->m:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isPrivate()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagWidget$TagObservable;->set(Ljava/lang/Object;)V

    .line 108
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$1;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;

    iget-object v2, p1, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$MediaEventCollector$CollectedEventsArgs;->m:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    iget-object v3, p1, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$MediaEventCollector$CollectedEventsArgs;->data:Landroid/os/Bundle;

    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->access$600(Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Landroid/os/Bundle;)V

    .line 109
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$1;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;

    iget-object v2, p1, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$MediaEventCollector$CollectedEventsArgs;->lyrics:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->access$700(Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;)V

    .line 110
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$1;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;

    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$1;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->access$800(Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->access$900(Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;Landroid/content/Context;)V

    .line 111
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$1;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;

    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$1;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->access$800(Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->access$1000(Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;Landroid/content/Context;)V

    .line 112
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$1;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;

    iget v2, p1, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$MediaEventCollector$CollectedEventsArgs;->albumWidth:I

    iget v3, p1, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$MediaEventCollector$CollectedEventsArgs;->albumHeight:I

    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->access$1100(Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;II)V

    .line 114
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$1;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->access$002(Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;Z)Z

    .line 115
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$1;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->access$1200(Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;)V

    .line 116
    return-void
.end method

.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 146
    const-string v0, "com.samsung.android.app.music.core.state.PLAYER_EXTRA"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$1;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->access$400(Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;)Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$MediaEventCollector$CollectedEventsArgs;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$1;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$1;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->access$400(Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;)Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$MediaEventCollector$CollectedEventsArgs;

    move-result-object v1

    iget-object v1, v1, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$MediaEventCollector$CollectedEventsArgs;->m:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    invoke-static {v0, v1, p2}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->access$600(Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Landroid/os/Bundle;)V

    .line 149
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$1;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->access$1200(Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;)V

    .line 152
    :cond_0
    return-void
.end method

.method public onLyricGetFinished(JLcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;Ljava/lang/Object;)V
    .locals 0
    .param p1, "audioId"    # J
    .param p3, "lyrics"    # Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;
    .param p4, "user"    # Ljava/lang/Object;

    .prologue
    .line 162
    return-void
.end method

.method public onLyricLoadFinished(JLcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;Ljava/lang/Object;)V
    .locals 1
    .param p1, "audioId"    # J
    .param p3, "lyrics"    # Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;
    .param p4, "user"    # Ljava/lang/Object;

    .prologue
    .line 156
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$1;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;

    invoke-static {v0, p3}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->access$700(Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;)V

    .line 157
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$1;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->access$1200(Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;)V

    .line 158
    return-void
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 2
    .param p1, "m"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$1;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->access$300(Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;Z)V

    .line 126
    return-void
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 2
    .param p1, "s"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$1;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->access$1300(Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;)I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getPlayerType()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$1;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->access$1400(Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;)I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getSoundPath()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$1;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getPlayerType()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->access$1302(Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;I)I

    .line 137
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$1;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getSoundPath()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->access$1402(Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;I)I

    .line 138
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$1;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$1;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->access$800(Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->access$900(Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;Landroid/content/Context;)V

    .line 139
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$1;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$1;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->access$800(Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->access$1000(Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;Landroid/content/Context;)V

    .line 140
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater$1;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->access$1200(Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;)V

    .line 142
    :cond_1
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
    .line 131
    .local p1, "queue":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    return-void
.end method
