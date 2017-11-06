.class public final Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LrcFileParser;
.super Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/ParserChain;
.source "LrcFileParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LrcFileParser$SyncedLyricsImpl2;,
        Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LrcFileParser$Tags;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final LOG_TAG:Ljava/lang/String; = "LyricsParser"

.field private static final TAGS:[Ljava/lang/String;


# instance fields
.field private final mBaseTime:Ljava/util/Date;

.field private final mPatternTag:Ljava/util/regex/Pattern;

.field private mReader:Ljava/io/BufferedReader;

.field private final mTimeFormatter:Ljava/text/DateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 39
    invoke-static {}, Lcom/samsung/android/app/music/support/android/os/DebugCompat;->isProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LrcFileParser;->DEBUG:Z

    .line 41
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "ar"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "al"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "ti"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "au"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "length"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "by"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "offset"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "re"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "ve"

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LrcFileParser;->TAGS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/ParserChain;-><init>()V

    .line 54
    const-string v1, "\\[[^\\[\\]]+\\]"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LrcFileParser;->mPatternTag:Ljava/util/regex/Pattern;

    .line 55
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "mm:ss.SS"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LrcFileParser;->mTimeFormatter:Ljava/text/DateFormat;

    .line 57
    :try_start_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy:MM:dd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v2, "1970:01:01"

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LrcFileParser;->mBaseTime:Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    return-void

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Ljava/text/ParseException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "LrcFileParser creation failed !"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static fromString(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;
    .locals 6
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 64
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .local v1, "reader":Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .line 65
    :try_start_1
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LrcFileParser;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LrcFileParser;-><init>()V

    .line 66
    .local v0, "parser":Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LrcFileParser;
    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LrcFileParser;->parseLyrics(Ljava/io/BufferedReader;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    .line 67
    if-eqz v1, :cond_0

    if-eqz v3, :cond_1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 70
    .end local v0    # "parser":Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LrcFileParser;
    .end local v1    # "reader":Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    return-object v2

    .line 67
    .restart local v0    # "parser":Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LrcFileParser;
    .restart local v1    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v4

    :try_start_3
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .end local v0    # "parser":Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LrcFileParser;
    .end local v1    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v2

    .line 70
    sget-object v2, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;->EMPTY_LYRICS:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    goto :goto_0

    .line 67
    .restart local v0    # "parser":Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LrcFileParser;
    .restart local v1    # "reader":Ljava/io/BufferedReader;
    :cond_1
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 64
    .end local v0    # "parser":Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LrcFileParser;
    :catch_2
    move-exception v2

    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 67
    :catchall_0
    move-exception v3

    move-object v5, v3

    move-object v3, v2

    move-object v2, v5

    :goto_1
    if-eqz v1, :cond_2

    if-eqz v3, :cond_3

    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    :cond_2
    :goto_2
    :try_start_7
    throw v2

    :catch_3
    move-exception v4

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2

    :catchall_1
    move-exception v2

    goto :goto_1
.end method

.method private getTimeFromText(Ljava/lang/String;)J
    .locals 6
    .param p1, "texts"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 241
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LrcFileParser;->mTimeFormatter:Ljava/text/DateFormat;

    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 242
    .local v0, "parsedTime":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LrcFileParser;->mBaseTime:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    return-wide v2
.end method

.method private parseLyricLine(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;
    .locals 21
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 184
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v6

    .line 186
    .local v6, "length":I
    const/4 v10, 0x0

    .line 187
    .local v10, "lp":I
    :goto_0
    if-ge v10, v6, :cond_0

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v19

    const/16 v20, 0x5d

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_0

    .line 188
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 190
    :cond_0
    add-int/lit8 v10, v10, 0x1

    .line 192
    const/16 v19, 0x1

    add-int/lit8 v20, v10, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LrcFileParser;->getTimeFromText(Ljava/lang/String;)J

    move-result-wide v8

    .line 193
    .local v8, "lineTime":J
    move-wide v14, v8

    .line 195
    .local v14, "textTime":J
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 196
    .local v12, "textBuilder":Ljava/lang/StringBuilder;
    const/16 v17, 0x0

    .line 198
    .local v17, "timeBuilder":Ljava/lang/StringBuilder;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .local v7, "listText":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine$LyricText;>;"
    move-object v13, v12

    .end local v12    # "textBuilder":Ljava/lang/StringBuilder;
    .local v13, "textBuilder":Ljava/lang/StringBuilder;
    move v11, v10

    .line 199
    .end local v10    # "lp":I
    .local v11, "lp":I
    :goto_1
    if-ge v11, v6, :cond_6

    add-int/lit8 v10, v11, 0x1

    .end local v11    # "lp":I
    .restart local v10    # "lp":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .local v4, "ch":C
    const/16 v19, 0xd

    move/from16 v0, v19

    if-eq v4, v0, :cond_7

    const/16 v19, 0xa

    move/from16 v0, v19

    if-eq v4, v0, :cond_7

    .line 200
    const/16 v19, 0x3c

    move/from16 v0, v19

    if-ne v4, v0, :cond_2

    .line 201
    if-nez v17, :cond_1

    .line 202
    new-instance v17, Ljava/lang/StringBuilder;

    .end local v17    # "timeBuilder":Ljava/lang/StringBuilder;
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .restart local v17    # "timeBuilder":Ljava/lang/StringBuilder;
    move v11, v10

    .end local v10    # "lp":I
    .restart local v11    # "lp":I
    goto :goto_1

    .line 204
    .end local v11    # "lp":I
    .restart local v10    # "lp":I
    :cond_1
    const/16 v19, 0x3c

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v11, v10

    .line 206
    .end local v10    # "lp":I
    .restart local v11    # "lp":I
    goto :goto_1

    .line 207
    .end local v11    # "lp":I
    .restart local v10    # "lp":I
    :cond_2
    if-eqz v17, :cond_4

    const/16 v19, 0x3e

    move/from16 v0, v19

    if-ne v4, v0, :cond_4

    .line 208
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 210
    .local v18, "timeTexts":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    .line 211
    .local v16, "texts":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v19

    if-lez v19, :cond_3

    .line 213
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v14, v15, v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyricsImpl;->makeLyricText(JLjava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine$LyricText;

    move-result-object v19

    .line 212
    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LrcFileParser;->getTimeFromText(Ljava/lang/String;)J

    move-result-wide v14

    .line 216
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    .end local v13    # "textBuilder":Ljava/lang/StringBuilder;
    .end local v16    # "texts":Ljava/lang/String;
    .restart local v12    # "textBuilder":Ljava/lang/StringBuilder;
    :goto_2
    const/16 v17, 0x0

    move-object v13, v12

    .end local v12    # "textBuilder":Ljava/lang/StringBuilder;
    .restart local v13    # "textBuilder":Ljava/lang/StringBuilder;
    move v11, v10

    .line 221
    .end local v10    # "lp":I
    .restart local v11    # "lp":I
    goto :goto_1

    .line 217
    .end local v11    # "lp":I
    .restart local v10    # "lp":I
    :catch_0
    move-exception v5

    .line 218
    .local v5, "e":Ljava/text/ParseException;
    const/16 v19, 0x3c

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x3e

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object v12, v13

    .end local v13    # "textBuilder":Ljava/lang/StringBuilder;
    .restart local v12    # "textBuilder":Ljava/lang/StringBuilder;
    goto :goto_2

    .line 223
    .end local v5    # "e":Ljava/text/ParseException;
    .end local v12    # "textBuilder":Ljava/lang/StringBuilder;
    .end local v18    # "timeTexts":Ljava/lang/String;
    .restart local v13    # "textBuilder":Ljava/lang/StringBuilder;
    :cond_4
    if-eqz v17, :cond_5

    .line 224
    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v11, v10

    .end local v10    # "lp":I
    .restart local v11    # "lp":I
    goto/16 :goto_1

    .line 226
    .end local v11    # "lp":I
    .restart local v10    # "lp":I
    :cond_5
    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v11, v10

    .end local v10    # "lp":I
    .restart local v11    # "lp":I
    goto/16 :goto_1

    .end local v4    # "ch":C
    :cond_6
    move v10, v11

    .line 229
    .end local v11    # "lp":I
    .restart local v10    # "lp":I
    :cond_7
    if-eqz v17, :cond_8

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->length()I

    move-result v19

    if-lez v19, :cond_8

    .line 230
    const/16 v19, 0x3c

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    :cond_8
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v19

    if-lez v19, :cond_9

    .line 233
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v14, v15, v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyricsImpl;->makeLyricText(JLjava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine$LyricText;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    :cond_9
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    new-array v0, v0, [Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine$LyricText;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine$LyricText;

    .line 236
    move-object/from16 v0, v19

    invoke-static {v8, v9, v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyricsImpl;->makeLyricLine(J[Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine$LyricText;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;

    move-result-object v19

    return-object v19
.end method

.method private parseLyrics(Ljava/io/BufferedReader;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;
    .locals 14
    .param p1, "reader"    # Ljava/io/BufferedReader;

    .prologue
    .line 104
    if-nez p1, :cond_1

    .line 105
    sget-object v5, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;->EMPTY_LYRICS:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    .line 141
    :cond_0
    :goto_0
    return-object v5

    .line 107
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 108
    .local v8, "startTime":J
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 109
    .local v1, "headerExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 112
    .local v4, "lyricLines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;>;"
    const/4 v2, 0x1

    .line 114
    .local v2, "headerLine":Z
    :cond_2
    :goto_1
    :try_start_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, "line":Ljava/lang/String;
    if-eqz v3, :cond_4

    .line 115
    iget-object v7, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LrcFileParser;->mPatternTag:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 116
    .local v6, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 118
    if-eqz v2, :cond_3

    .line 119
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v1, v7}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LrcFileParser;->tryParseExtraInfo(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v2

    .line 121
    :cond_3
    if-nez v2, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->end()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v10

    if-lt v7, v10, :cond_2

    .line 123
    :try_start_1
    invoke-direct {p0, v3}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LrcFileParser;->parseLyricLine(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 124
    :catch_0
    move-exception v7

    goto :goto_1

    .line 130
    .end local v3    # "line":Ljava/lang/String;
    .end local v6    # "m":Ljava/util/regex/Matcher;
    :catch_1
    move-exception v0

    .line 131
    .local v0, "e":Ljava/lang/Exception;
    const-string v7, "LyricsParser"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LrcFileParser;->NAME:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": parseLyrics() : failed"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 132
    sget-object v5, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;->EMPTY_LYRICS:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    goto :goto_0

    .line 134
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v3    # "line":Ljava/lang/String;
    :cond_4
    new-instance v5, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LrcFileParser$SyncedLyricsImpl2;

    .line 135
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;

    .line 134
    invoke-static {v1, v7}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyricsImpl;->makeLyric(Ljava/util/Map;[Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyrics;

    move-result-object v7

    invoke-direct {v5, v7}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LrcFileParser$SyncedLyricsImpl2;-><init>(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyrics;)V

    .line 137
    .local v5, "lyrics":Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyrics;
    sget-boolean v7, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LrcFileParser;->DEBUG:Z

    if-eqz v7, :cond_0

    .line 138
    const-string v10, "LyricsParser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "parseFile : "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-nez v5, :cond_5

    const-string v7, "null"

    :goto_2
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string v7, "LyricsParser"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "parseFile : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v8

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "ms"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 138
    :cond_5
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_2
.end method

.method private tryParseExtraInfo(Ljava/util/Map;Ljava/lang/String;)Z
    .locals 11
    .param p2, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 159
    const/4 v8, 0x1

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {p2, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 160
    const-string v8, ":"

    invoke-virtual {p2, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 161
    .local v2, "keyAndValue":[Ljava/lang/String;
    const/4 v8, 0x0

    aget-object v8, v2, v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 162
    .local v1, "key":Ljava/lang/String;
    const/4 v8, 0x1

    aget-object v8, v2, v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 164
    .local v6, "value":Ljava/lang/String;
    sget-object v5, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LrcFileParser;->TAGS:[Ljava/lang/String;

    .line 165
    .local v5, "tags":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 166
    .local v3, "result":Z
    array-length v9, v5

    move v8, v7

    :goto_0
    if-ge v8, v9, :cond_0

    aget-object v4, v5, v8

    .line 167
    .local v4, "tag":Ljava/lang/String;
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 168
    const/4 v3, 0x1

    .line 169
    invoke-interface {p1, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    .end local v4    # "tag":Ljava/lang/String;
    :cond_0
    if-eqz v3, :cond_1

    .line 174
    const-string v8, "LyricsParser"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Extra key : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", value : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "keyAndValue":[Ljava/lang/String;
    .end local v3    # "result":Z
    .end local v5    # "tags":[Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/String;
    :cond_1
    :goto_1
    return v3

    .line 166
    .restart local v1    # "key":Ljava/lang/String;
    .restart local v2    # "keyAndValue":[Ljava/lang/String;
    .restart local v3    # "result":Z
    .restart local v4    # "tag":Ljava/lang/String;
    .restart local v5    # "tags":[Ljava/lang/String;
    .restart local v6    # "value":Ljava/lang/String;
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 177
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "keyAndValue":[Ljava/lang/String;
    .end local v3    # "result":Z
    .end local v4    # "tag":Ljava/lang/String;
    .end local v5    # "tags":[Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 178
    .local v0, "e":Ljava/lang/Exception;
    const-string v8, "LyricsParser"

    const-string/jumbo v9, "trying to parse header\'s tag and value was failed!"

    invoke-static {v8, v9}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v7

    .line 180
    goto :goto_1
.end method


# virtual methods
.method protected canParse()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 94
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LrcFileParser;->mReader:Ljava/io/BufferedReader;

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

    .line 146
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LrcFileParser;->mReader:Ljava/io/BufferedReader;

    if-eqz v0, :cond_0

    .line 148
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LrcFileParser;->mReader:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LrcFileParser;->mReader:Ljava/io/BufferedReader;

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 149
    :catch_0
    move-exception v0

    .line 152
    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LrcFileParser;->mReader:Ljava/io/BufferedReader;

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LrcFileParser;->mReader:Ljava/io/BufferedReader;

    throw v0
.end method

.method protected open(Ljava/lang/String;)Z
    .locals 8
    .param p1, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 76
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LrcFileParser;->close()V

    .line 78
    sget-object v4, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers;->LRC:Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher;

    invoke-virtual {v4, p1}, Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher;->matches(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 79
    .local v2, "lrcFileName":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 80
    .local v1, "lrcFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 82
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 83
    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/utils/CharsetDetector;->findCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LrcFileParser;->mReader:Ljava/io/BufferedReader;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    const/4 v3, 0x1

    .line 89
    :cond_0
    :goto_0
    return v3

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Ljava/io/FileNotFoundException;
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
    .line 100
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LrcFileParser;->mReader:Ljava/io/BufferedReader;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LrcFileParser;->parseLyrics(Ljava/io/BufferedReader;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    move-result-object v0

    return-object v0
.end method
