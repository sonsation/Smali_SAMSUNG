.class final Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/FlacTagParser;
.super Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/ParserChain;
.source "FlacTagParser.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "LyricsParser"


# instance fields
.field private final mFlacCommentFinder:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/FlacCommentFinder;

.field private mRandomAccessFile:Ljava/io/RandomAccessFile;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/ParserChain;-><init>()V

    .line 28
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/FlacCommentFinder;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/FlacCommentFinder;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/FlacTagParser;->mFlacCommentFinder:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/FlacCommentFinder;

    .line 32
    return-void
.end method

.method private parseFlacMeta(Ljava/io/RandomAccessFile;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;
    .locals 3
    .param p1, "file"    # Ljava/io/RandomAccessFile;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 72
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/FlacTagParser;->mFlacCommentFinder:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/FlacCommentFinder;

    const-string v2, "LYRICS="

    .line 73
    invoke-virtual {v1, p1, v2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/FlacCommentFinder;->findVorbisComment(Ljava/io/RandomAccessFile;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "lyrics":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 75
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsImpl;

    invoke-direct {v1, v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsImpl;-><init>(Ljava/lang/String;)V

    .line 77
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;->EMPTY_LYRICS:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    goto :goto_0
.end method


# virtual methods
.method protected canParse()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/FlacTagParser;->mFlacCommentFinder:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/FlacCommentFinder;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/FlacTagParser;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/FlacCommentFinder;->isFlac(Ljava/io/RandomAccessFile;)Z

    move-result v0

    return v0
.end method

.method protected close()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 60
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/FlacTagParser;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/FlacTagParser;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    :cond_0
    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/FlacTagParser;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    .line 68
    :goto_0
    return-void

    .line 63
    :catch_0
    move-exception v0

    .line 66
    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/FlacTagParser;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/FlacTagParser;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    throw v0
.end method

.method protected open(Ljava/lang/String;)Z
    .locals 3
    .param p1, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 38
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/FlacTagParser;->close()V

    .line 39
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {v1, p1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/FlacTagParser;->mRandomAccessFile:Ljava/io/RandomAccessFile;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 40
    :catch_0
    move-exception v0

    .line 41
    .local v0, "e":Ljava/io/FileNotFoundException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected parseLyrics()Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/FlacTagParser;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/FlacTagParser;->parseFlacMeta(Ljava/io/RandomAccessFile;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    move-result-object v0

    return-object v0
.end method
