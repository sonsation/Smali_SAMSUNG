.class Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter$1;
.super Ljava/lang/Object;
.source "GLAlbumArtAdapter.java"

# interfaces
.implements Lcom/samsung/android/app/music/common/lyrics/LyricsCache$OnLyricsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter$1;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLyricGetFinished(JLcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;Ljava/lang/Object;)V
    .locals 0
    .param p1, "audioId"    # J
    .param p3, "lyrics"    # Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;
    .param p4, "user"    # Ljava/lang/Object;

    .prologue
    .line 104
    return-void
.end method

.method public onLyricLoadFinished(JLcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;Ljava/lang/Object;)V
    .locals 5
    .param p1, "audioId"    # J
    .param p3, "lyrics"    # Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;
    .param p4, "user"    # Ljava/lang/Object;

    .prologue
    .line 109
    move-object v0, p4

    check-cast v0, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter$LyricsHolder;

    .line 110
    .local v0, "lh":Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter$LyricsHolder;
    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter$1;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;

    .line 111
    .local v1, "nc":Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;
    iget v3, v0, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter$LyricsHolder;->position:I

    invoke-virtual {v1, v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;->getOrderedPosition(I)I

    move-result v2

    .line 112
    .local v2, "shuffledPosition":I
    if-ltz v2, :cond_0

    .line 113
    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter$1;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;

    invoke-static {v3, p3, p1, p2, v2}, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;->access$000(Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;JI)V

    .line 115
    :cond_0
    return-void
.end method
