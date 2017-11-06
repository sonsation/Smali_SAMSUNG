.class public final Lcom/samsung/android/app/music/common/lyrics/LocalLyricLoader;
.super Ljava/lang/Object;
.source "LocalLyricLoader.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/meta/lyric/ILyricLoader;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mIsLyricCacheEnabled:Z

.field private final mOnLyricListener:Lcom/samsung/android/app/music/common/lyrics/LyricsCache$OnLyricsListener;

.field private mOnLyricLoadListener:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/ILyricLoader$OnLyricLoadListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/common/lyrics/LocalLyricLoader;->mIsLyricCacheEnabled:Z

    .line 50
    new-instance v0, Lcom/samsung/android/app/music/common/lyrics/LocalLyricLoader$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/common/lyrics/LocalLyricLoader$1;-><init>(Lcom/samsung/android/app/music/common/lyrics/LocalLyricLoader;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/lyrics/LocalLyricLoader;->mOnLyricListener:Lcom/samsung/android/app/music/common/lyrics/LyricsCache$OnLyricsListener;

    .line 18
    iput-object p1, p0, Lcom/samsung/android/app/music/common/lyrics/LocalLyricLoader;->mContext:Landroid/content/Context;

    .line 19
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/common/lyrics/LocalLyricLoader;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/ILyricLoader$OnLyricLoadListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/lyrics/LocalLyricLoader;

    .prologue
    .line 9
    iget-object v0, p0, Lcom/samsung/android/app/music/common/lyrics/LocalLyricLoader;->mOnLyricLoadListener:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/ILyricLoader$OnLyricLoadListener;

    return-object v0
.end method

.method private ensureLyricCacheEnabled()V
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/samsung/android/app/music/common/lyrics/LocalLyricLoader;->mIsLyricCacheEnabled:Z

    if-nez v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/samsung/android/app/music/common/lyrics/LocalLyricLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->init(Landroid/content/Context;)V

    .line 45
    invoke-static {}, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->getInstance()Lcom/samsung/android/app/music/common/lyrics/LyricsCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->registerObserver()V

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/music/common/lyrics/LocalLyricLoader;->mIsLyricCacheEnabled:Z

    .line 48
    :cond_0
    return-void
.end method


# virtual methods
.method public release()V
    .locals 1

    .prologue
    .line 39
    invoke-static {}, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->getInstance()Lcom/samsung/android/app/music/common/lyrics/LyricsCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->unregisterObserver()V

    .line 40
    return-void
.end method

.method public requestLyric(IJLcom/samsung/android/app/musiclibrary/core/meta/lyric/ILyricLoader$OnLyricLoadListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 8
    .param p1, "cpAttrs"    # I
    .param p2, "id"    # J
    .param p4, "l"    # Lcom/samsung/android/app/musiclibrary/core/meta/lyric/ILyricLoader$OnLyricLoadListener;
    .param p5, "title"    # Ljava/lang/String;
    .param p6, "artist"    # Ljava/lang/String;
    .param p7, "user"    # Ljava/lang/Object;

    .prologue
    .line 24
    instance-of v0, p7, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    if-eqz v0, :cond_1

    check-cast p7, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .end local p7    # "user":Ljava/lang/Object;
    move-object v7, p7

    .line 26
    .local v7, "m":Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    :goto_0
    iput-object p4, p0, Lcom/samsung/android/app/music/common/lyrics/LocalLyricLoader;->mOnLyricLoadListener:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/ILyricLoader$OnLyricLoadListener;

    .line 27
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/lyrics/LocalLyricLoader;->ensureLyricCacheEnabled()V

    .line 28
    invoke-static {}, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->getInstance()Lcom/samsung/android/app/music/common/lyrics/LyricsCache;

    move-result-object v0

    iget-object v4, p0, Lcom/samsung/android/app/music/common/lyrics/LocalLyricLoader;->mOnLyricListener:Lcom/samsung/android/app/music/common/lyrics/LyricsCache$OnLyricsListener;

    .line 29
    invoke-static {v7}, Lcom/samsung/android/app/music/common/lyrics/LyricsExtra;->convertToExtra(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Landroid/os/Bundle;

    move-result-object v5

    move v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->getLyrics(IJLcom/samsung/android/app/music/common/lyrics/LyricsCache$OnLyricsListener;Ljava/lang/Object;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    move-result-object v6

    .line 30
    .local v6, "lyrics":Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;
    if-eqz v6, :cond_0

    .line 31
    iget-object v0, p0, Lcom/samsung/android/app/music/common/lyrics/LocalLyricLoader;->mOnLyricLoadListener:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/ILyricLoader$OnLyricLoadListener;

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/samsung/android/app/music/common/lyrics/LocalLyricLoader;->mOnLyricLoadListener:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/ILyricLoader$OnLyricLoadListener;

    invoke-interface {v6}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p2, p3, v1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/ILyricLoader$OnLyricLoadListener;->onLyricLoad(JLjava/lang/String;)V

    .line 35
    :cond_0
    return-void

    .line 24
    .end local v6    # "lyrics":Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;
    .end local v7    # "m":Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    .restart local p7    # "user":Ljava/lang/Object;
    :cond_1
    const/4 v7, 0x0

    goto :goto_0
.end method
