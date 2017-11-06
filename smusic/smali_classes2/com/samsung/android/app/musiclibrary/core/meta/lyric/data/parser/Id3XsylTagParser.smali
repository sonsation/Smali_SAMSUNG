.class final Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser;
.super Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/ParserChain;
.source "Id3XsylTagParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$FieldsBytes;,
        Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-LyricsParser"

.field private static final TAG:Ljava/lang/String; = "LyricsParser"


# instance fields
.field private final mID3TagFinder:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder;

.field private mRandomAccessFile:Ljava/io/RandomAccessFile;

.field private mXyslTagFrame:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$ID3TagFields;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/ParserChain;-><init>()V

    .line 64
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser;->mID3TagFinder:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder;

    return-void
.end method

.method private getCharset(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame$Header;)Ljava/nio/charset/Charset;
    .locals 3
    .param p1, "header"    # Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame$Header;

    .prologue
    .line 218
    iget-byte v0, p1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame$Header;->encoding:B

    const/16 v1, 0x61

    if-ne v0, v1, :cond_0

    .line 219
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    return-object v0

    .line 221
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown encoding : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame$Header;->encoding:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getSyncSafeInt(Ljava/io/RandomAccessFile;)I
    .locals 2
    .param p1, "file"    # Ljava/io/RandomAccessFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 201
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 202
    .local v0, "bytes":[B
    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->read([B)I

    .line 203
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser;->getSyncSafeInt([B)I

    move-result v1

    return v1
.end method

.method private getSyncSafeInt([B)I
    .locals 5
    .param p1, "bytes"    # [B

    .prologue
    .line 207
    array-length v1, p1

    .line 208
    .local v1, "length":I
    const/4 v2, 0x0

    .line 210
    .local v2, "value":I
    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 211
    aget-byte v3, p1, v0

    and-int/lit8 v3, v3, 0x7f

    sub-int v4, v1, v0

    add-int/lit8 v4, v4, -0x1

    mul-int/lit8 v4, v4, 0x7

    shl-int/2addr v3, v4

    or-int/2addr v2, v3

    .line 210
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 214
    :cond_0
    return v2
.end method

.method private makeLyrics(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;
    .locals 6
    .param p1, "frame"    # Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 166
    iget-object v3, p1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame;->header:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame$Header;

    iget v3, v3, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame$Header;->entryCount:I

    if-nez v3, :cond_0

    .line 167
    sget-object v3, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;->EMPTY_LYRICS:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    .line 175
    :goto_0
    return-object v3

    .line 170
    :cond_0
    iget-object v3, p1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame;->header:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame$Header;

    iget v3, v3, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame$Header;->entryCount:I

    new-array v2, v3, [Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;

    .line 171
    .local v2, "lyricLines":[Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame;->header:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame$Header;

    iget v3, v3, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame$Header;->entryCount:I

    if-ge v1, v3, :cond_1

    .line 172
    iget-object v3, p1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame;->contents:[Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame$Content;

    aget-object v0, v3, v1

    .line 173
    .local v0, "content":Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame$Content;
    iget v3, v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame$Content;->time:I

    int-to-long v4, v3

    iget-object v3, v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame$Content;->text:Ljava/lang/String;

    invoke-static {v4, v5, v3}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyricsImpl;->makeLyricLine(JLjava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;

    move-result-object v3

    aput-object v3, v2, v1

    .line 171
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 175
    .end local v0    # "content":Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame$Content;
    :cond_1
    const/4 v3, 0x0

    invoke-static {v3, v2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyricsImpl;->makeLyric(Ljava/util/Map;[Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyrics;

    move-result-object v3

    goto :goto_0
.end method

.method private skipSGR(Ljava/io/RandomAccessFile;)I
    .locals 6
    .param p1, "file"    # Ljava/io/RandomAccessFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 183
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v0

    .line 184
    .local v0, "byteSGR":B
    const/4 v1, 0x0

    .line 185
    .local v1, "skipped":I
    const-string v2, "LyricsParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SGR : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/utils/HexUtils;->getHexString(B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    const/16 v2, -0x3e

    if-ne v0, v2, :cond_1

    .line 187
    add-int/lit8 v1, v1, 0x1

    .line 188
    :goto_0
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v0

    const/16 v2, 0x6d

    if-eq v0, v2, :cond_0

    .line 189
    const-string v2, "LyricsParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SGR : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/utils/HexUtils;->getHexString(B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 192
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 196
    :goto_1
    const-string v2, "LyricsParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SGR : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/utils/HexUtils;->getHexString(B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", skipped : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    return v1

    .line 194
    :cond_1
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    invoke-virtual {p1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    goto :goto_1
.end method


# virtual methods
.method protected canParse()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser;->mID3TagFinder:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    const-string v2, "XSYL"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder;->findTag(Ljava/io/RandomAccessFile;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$ID3TagFields;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser;->mXyslTagFrame:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$ID3TagFields;

    .line 85
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser;->mXyslTagFrame:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$ID3TagFields;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected close()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 154
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    :cond_0
    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    .line 162
    :goto_0
    return-void

    .line 157
    :catch_0
    move-exception v0

    .line 160
    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser;->mRandomAccessFile:Ljava/io/RandomAccessFile;

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
    .line 74
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser;->close()V

    .line 75
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {v1, p1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser;->mRandomAccessFile:Ljava/io/RandomAccessFile;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Ljava/io/FileNotFoundException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected parseLyrics()Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;
    .locals 14
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 94
    iget-object v10, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    if-nez v10, :cond_0

    .line 95
    sget-object v10, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;->EMPTY_LYRICS:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    .line 148
    :goto_0
    return-object v10

    .line 97
    :cond_0
    iget-object v10, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser;->mXyslTagFrame:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$ID3TagFields;

    if-nez v10, :cond_1

    .line 98
    iget-object v10, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser;->mID3TagFinder:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder;

    iget-object v11, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    const-string v12, "XSYL"

    invoke-virtual {v10, v11, v12}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder;->findTag(Ljava/io/RandomAccessFile;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$ID3TagFields;

    move-result-object v10

    iput-object v10, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser;->mXyslTagFrame:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$ID3TagFields;

    .line 99
    iget-object v10, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser;->mXyslTagFrame:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$ID3TagFields;

    if-nez v10, :cond_1

    .line 100
    sget-object v10, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;->EMPTY_LYRICS:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    goto :goto_0

    .line 103
    :cond_1
    iget-object v10, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    iget-object v11, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser;->mXyslTagFrame:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$ID3TagFields;

    invoke-virtual {v11}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$ID3TagFields;->getOffset()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 105
    new-instance v5, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame;

    invoke-direct {v5}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame;-><init>()V

    .line 106
    .local v5, "frame":Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame;
    iget-object v10, v5, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame;->header:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame$Header;

    iget-object v11, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v11

    iput v11, v10, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame$Header;->frameSize:I

    .line 107
    iget-object v10, v5, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame;->header:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame$Header;

    iget-object v11, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->readShort()S

    move-result v11

    iput-short v11, v10, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame$Header;->flags:S

    .line 108
    iget-object v10, v5, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame;->header:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame$Header;

    iget-object v11, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v11

    iput-byte v11, v10, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame$Header;->encoding:B

    .line 110
    const/4 v10, 0x3

    new-array v0, v10, [B

    .line 111
    .local v0, "bytesLang":[B
    iget-object v10, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v10, v0}, Ljava/io/RandomAccessFile;->read([B)I

    .line 112
    iget-object v10, v5, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame;->header:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame$Header;

    new-instance v11, Ljava/lang/String;

    invoke-direct {v11, v0}, Ljava/lang/String;-><init>([B)V

    iput-object v11, v10, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame$Header;->language:Ljava/lang/String;

    .line 114
    const/16 v10, 0x80

    new-array v1, v10, [B

    .line 115
    .local v1, "bytesMimeType":[B
    const/4 v6, 0x0

    .line 116
    .local v6, "i":I
    :goto_1
    iget-object v10, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v10

    aput-byte v10, v1, v6

    if-eqz v10, :cond_2

    .line 117
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 119
    :cond_2
    iget-object v10, v5, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame;->header:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame$Header;

    new-instance v11, Ljava/lang/String;

    invoke-direct {v11, v1}, Ljava/lang/String;-><init>([B)V

    iput-object v11, v10, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame$Header;->mimeType:Ljava/lang/String;

    .line 120
    iget-object v10, v5, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame;->header:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame$Header;

    iget-object v11, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v11}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser;->getSyncSafeInt(Ljava/io/RandomAccessFile;)I

    move-result v11

    iput v11, v10, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame$Header;->entryCount:I

    .line 121
    iget-object v10, v5, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame;->header:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame$Header;

    iget v10, v10, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame$Header;->entryCount:I

    new-array v10, v10, [Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame$Content;

    iput-object v10, v5, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame;->contents:[Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame$Content;

    .line 123
    const-string v10, "SMUSIC-LyricsParser"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser;->NAME:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " Header encoding : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v5, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame;->header:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame$Header;

    iget-byte v12, v12, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame$Header;->encoding:B

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", entry : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v5, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame;->header:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame$Header;

    iget v12, v12, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame$Header;->entryCount:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v10, v5, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame;->header:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame$Header;

    invoke-direct {p0, v10}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser;->getCharset(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame$Header;)Ljava/nio/charset/Charset;

    move-result-object v3

    .line 126
    .local v3, "charset":Ljava/nio/charset/Charset;
    const/4 v6, 0x0

    :goto_2
    iget-object v10, v5, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame;->header:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame$Header;

    iget v10, v10, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame$Header;->entryCount:I

    if-ge v6, v10, :cond_3

    .line 127
    new-instance v4, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame$Content;

    invoke-direct {v4}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame$Content;-><init>()V

    .line 128
    .local v4, "content":Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame$Content;
    iget-object v10, v5, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame;->contents:[Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame$Content;

    aput-object v4, v10, v6

    .line 131
    iget-object v10, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v10}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser;->getSyncSafeInt(Ljava/io/RandomAccessFile;)I

    move-result v10

    add-int/lit8 v7, v10, -0x8

    .line 132
    .local v7, "length":I
    iput v7, v4, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame$Content;->length:I

    .line 134
    iget-object v10, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v10}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser;->getSyncSafeInt(Ljava/io/RandomAccessFile;)I

    move-result v10

    int-to-double v8, v10

    .line 135
    .local v8, "time":D
    double-to-int v10, v8

    iput v10, v4, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame$Content;->time:I

    .line 138
    iget-object v10, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v10}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser;->skipSGR(Ljava/io/RandomAccessFile;)I

    move-result v10

    sub-int/2addr v7, v10

    .line 140
    new-array v2, v7, [B

    .line 141
    .local v2, "bytesText":[B
    iget-object v10, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v10, v2}, Ljava/io/RandomAccessFile;->read([B)I

    .line 142
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iput-object v10, v4, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame$Content;->text:Ljava/lang/String;

    .line 126
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 148
    .end local v2    # "bytesText":[B
    .end local v4    # "content":Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame$Content;
    .end local v7    # "length":I
    .end local v8    # "time":D
    :cond_3
    invoke-direct {p0, v5}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser;->makeLyrics(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    move-result-object v10

    goto/16 :goto_0
.end method
