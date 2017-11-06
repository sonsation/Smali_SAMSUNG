.class public Lcom/samsung/android/app/music/common/lyrics/data/loader/CpMilkLyricsParser$InternalLyricsParser;
.super Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/ParserChain;
.source "CpMilkLyricsParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/lyrics/data/loader/CpMilkLyricsParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InternalLyricsParser"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/common/lyrics/data/loader/CpMilkLyricsParser$InternalLyricsParser$JsonLyrics;
    }
.end annotation


# static fields
.field private static final DEFAULT_CHARSET:Ljava/lang/String; = "UTF-8"

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mGson:Lcom/google/gson/Gson;

.field private mJsonLyrics:Lcom/samsung/android/app/music/common/lyrics/data/loader/CpMilkLyricsParser$InternalLyricsParser$JsonLyrics;

.field private mReader:Ljava/io/Reader;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cp-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/samsung/android/app/music/common/lyrics/data/loader/CpRadioLyricsParser;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/common/lyrics/data/loader/CpMilkLyricsParser$InternalLyricsParser;->TAG:Ljava/lang/String;

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SMUSIC-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/music/common/lyrics/data/loader/CpMilkLyricsParser$InternalLyricsParser;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/common/lyrics/data/loader/CpMilkLyricsParser$InternalLyricsParser;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/ParserChain;-><init>()V

    return-void
.end method

.method private makeLyricsInternal(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;
    .locals 2
    .param p1, "strLyrics"    # Ljava/lang/String;

    .prologue
    .line 173
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LrcFileParser;->fromString(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    move-result-object v0

    .line 174
    .local v0, "lyrics":Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;->EMPTY_LYRICS:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    if-eq v0, v1, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 177
    .end local v0    # "lyrics":Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;
    :goto_0
    return-object v0

    .restart local v0    # "lyrics":Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;
    :cond_0
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsImpl;

    .end local v0    # "lyrics":Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;
    invoke-direct {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsImpl;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected canParse()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 142
    iget-object v1, p0, Lcom/samsung/android/app/music/common/lyrics/data/loader/CpMilkLyricsParser$InternalLyricsParser;->mReader:Ljava/io/Reader;

    if-nez v1, :cond_0

    move v1, v2

    .line 152
    :goto_0
    return v1

    .line 146
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/music/common/lyrics/data/loader/CpMilkLyricsParser$InternalLyricsParser;->mGson:Lcom/google/gson/Gson;

    iget-object v3, p0, Lcom/samsung/android/app/music/common/lyrics/data/loader/CpMilkLyricsParser$InternalLyricsParser;->mReader:Ljava/io/Reader;

    const-class v4, Lcom/samsung/android/app/music/common/lyrics/data/loader/CpMilkLyricsParser$InternalLyricsParser$JsonLyrics;

    invoke-virtual {v1, v3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/common/lyrics/data/loader/CpMilkLyricsParser$InternalLyricsParser$JsonLyrics;

    iput-object v1, p0, Lcom/samsung/android/app/music/common/lyrics/data/loader/CpMilkLyricsParser$InternalLyricsParser;->mJsonLyrics:Lcom/samsung/android/app/music/common/lyrics/data/loader/CpMilkLyricsParser$InternalLyricsParser$JsonLyrics;

    .line 147
    sget-object v1, Lcom/samsung/android/app/music/common/lyrics/data/loader/CpMilkLyricsParser$InternalLyricsParser;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Json lyrics : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/common/lyrics/data/loader/CpMilkLyricsParser$InternalLyricsParser;->mJsonLyrics:Lcom/samsung/android/app/music/common/lyrics/data/loader/CpMilkLyricsParser$InternalLyricsParser$JsonLyrics;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    const/4 v1, 0x1

    goto :goto_0

    .line 148
    :catch_0
    move-exception v0

    .line 149
    .local v0, "e":Lcom/google/gson/JsonSyntaxException;
    sget-object v1, Lcom/samsung/android/app/music/common/lyrics/data/loader/CpMilkLyricsParser$InternalLyricsParser;->LOG_TAG:Ljava/lang/String;

    const-string v3, "canParse failed"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v2

    .line 150
    goto :goto_0
.end method

.method protected close()V
    .locals 1

    .prologue
    .line 182
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/lyrics/data/loader/CpMilkLyricsParser$InternalLyricsParser;->mJsonLyrics:Lcom/samsung/android/app/music/common/lyrics/data/loader/CpMilkLyricsParser$InternalLyricsParser$JsonLyrics;

    .line 183
    iget-object v0, p0, Lcom/samsung/android/app/music/common/lyrics/data/loader/CpMilkLyricsParser$InternalLyricsParser;->mReader:Ljava/io/Reader;

    if-eqz v0, :cond_0

    .line 185
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/lyrics/data/loader/CpMilkLyricsParser$InternalLyricsParser;->mReader:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 186
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected open(Ljava/lang/String;)Z
    .locals 4
    .param p1, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 130
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/lyrics/data/loader/CpMilkLyricsParser$InternalLyricsParser;->close()V

    .line 131
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/common/lyrics/data/loader/CpMilkLyricsParser$InternalLyricsParser;->mReader:Ljava/io/Reader;

    .line 132
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/app/music/common/lyrics/data/loader/CpMilkLyricsParser$InternalLyricsParser;->mGson:Lcom/google/gson/Gson;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lcom/samsung/android/app/music/common/lyrics/data/loader/CpMilkLyricsParser$InternalLyricsParser;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Open failed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 135
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected parseLyrics()Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;
    .locals 6
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 158
    iget-object v3, p0, Lcom/samsung/android/app/music/common/lyrics/data/loader/CpMilkLyricsParser$InternalLyricsParser;->mJsonLyrics:Lcom/samsung/android/app/music/common/lyrics/data/loader/CpMilkLyricsParser$InternalLyricsParser$JsonLyrics;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/app/music/common/lyrics/data/loader/CpMilkLyricsParser$InternalLyricsParser;->mJsonLyrics:Lcom/samsung/android/app/music/common/lyrics/data/loader/CpMilkLyricsParser$InternalLyricsParser$JsonLyrics;

    iget-object v3, v3, Lcom/samsung/android/app/music/common/lyrics/data/loader/CpMilkLyricsParser$InternalLyricsParser$JsonLyrics;->lyrics:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 159
    :cond_0
    sget-object v3, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;->EMPTY_LYRICS:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    .line 169
    :goto_0
    return-object v3

    .line 161
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/app/music/common/lyrics/data/loader/CpMilkLyricsParser$InternalLyricsParser;->mJsonLyrics:Lcom/samsung/android/app/music/common/lyrics/data/loader/CpMilkLyricsParser$InternalLyricsParser$JsonLyrics;

    iget-object v3, v3, Lcom/samsung/android/app/music/common/lyrics/data/loader/CpMilkLyricsParser$InternalLyricsParser$JsonLyrics;->lyrics:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 163
    .local v0, "bytes":[B
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const/4 v3, 0x0

    .line 164
    invoke-static {v0, v3}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-direct {v1, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 165
    .local v1, "decoded":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/common/lyrics/data/loader/CpMilkLyricsParser$InternalLyricsParser;->makeLyricsInternal(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 166
    .end local v1    # "decoded":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 167
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    sget-object v3, Lcom/samsung/android/app/music/common/lyrics/data/loader/CpMilkLyricsParser$InternalLyricsParser;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "parseLyrics failed : "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 169
    new-instance v3, Ljava/lang/String;

    invoke-static {v0, v5}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    invoke-direct {p0, v3}, Lcom/samsung/android/app/music/common/lyrics/data/loader/CpMilkLyricsParser$InternalLyricsParser;->makeLyricsInternal(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    move-result-object v3

    goto :goto_0
.end method
