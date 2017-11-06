.class Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt$5;
.super Ljava/lang/Object;
.source "LockPlayerAlbumArt.java"

# interfaces
.implements Lcom/samsung/android/app/music/common/lyrics/LyricsCache$OnLyricsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;->onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;

    .prologue
    .line 273
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt$5;->this$0:Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLyricGetFinished(JLcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;Ljava/lang/Object;)V
    .locals 1
    .param p1, "audioId"    # J
    .param p3, "lyrics"    # Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;
    .param p4, "user"    # Ljava/lang/Object;

    .prologue
    .line 276
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt$5;->onLyricLoadFinished(JLcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;Ljava/lang/Object;)V

    .line 277
    return-void
.end method

.method public onLyricLoadFinished(JLcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;Ljava/lang/Object;)V
    .locals 3
    .param p1, "audioId"    # J
    .param p3, "lyrics"    # Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;
    .param p4, "user"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 281
    if-eqz p3, :cond_0

    sget-object v2, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;->EMPTY_LYRICS:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    if-eq p3, v2, :cond_0

    .line 283
    invoke-interface {p3}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v0, 0x1

    .line 284
    .local v0, "hasLyrics":Z
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt$5;->this$0:Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;->access$700(Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerAlbumArt;)Landroid/view/View;

    move-result-object v2

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 285
    return-void

    .end local v0    # "hasLyrics":Z
    :cond_0
    move v0, v1

    .line 283
    goto :goto_0

    .line 284
    .restart local v0    # "hasLyrics":Z
    :cond_1
    const/16 v1, 0x8

    goto :goto_1
.end method
