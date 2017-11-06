.class final Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UsltTagParser;
.super Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/ParserChain;
.source "Id3UsltTagParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UsltTagParser$ID3TagUSLT;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final ENCODE_EUC_KR:Ljava/lang/String; = "EUC-KR"

.field private static final ENCODE_JPN:Ljava/lang/String; = "SHIFT-JIS"

.field private static final ENCODE_UNICODE_BIG_ENDIAN:Ljava/lang/String; = "UTF-16BE"

.field private static final ENCODE_UNICODE_LITTLE_ENDIAN:Ljava/lang/String; = "UTF-16LE"

.field private static final MARK_NULL:Ljava/lang/String; = "0000"

.field private static final ORDER_MARK_UNICODE_BIG_ENDIAN:Ljava/lang/String; = "FEFF"

.field private static final ORDER_MARK_UNICODE_LITTLE_ENDIAN:Ljava/lang/String; = "FFFE"

.field private static final TAG:Ljava/lang/String; = "LyricsParser"


# instance fields
.field private final mID3TagFinder:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder;

.field private mRandomAccessFile:Ljava/io/RandomAccessFile;

.field private mUsltTagFrame:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$ID3TagFields;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/ParserChain;-><init>()V

    .line 61
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UsltTagParser;->mID3TagFinder:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder;

    .line 69
    return-void
.end method

.method private static getHexString(B)Ljava/lang/String;
    .locals 1
    .param p0, "b"    # B

    .prologue
    .line 288
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/utils/HexUtils;->getHexString(B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getHexString([B)Ljava/lang/String;
    .locals 1
    .param p0, "bytes"    # [B

    .prologue
    .line 292
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/utils/HexUtils;->getHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getString([BLjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "bytes"    # [B
    .param p1, "enc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 296
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method private static getStringWithNewLine([BLjava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "bytes"    # [B
    .param p1, "enc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 300
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v4, v6, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .local v2, "reader":Ljava/io/BufferedReader;
    const/4 v6, 0x0

    .line 302
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 304
    .local v3, "sb":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, "line":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 305
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 300
    .end local v1    # "line":Ljava/lang/String;
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v4

    :try_start_2
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 310
    :catchall_0
    move-exception v6

    move-object v8, v6

    move-object v6, v4

    move-object v4, v8

    :goto_1
    if-eqz v2, :cond_0

    if-eqz v6, :cond_4

    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_0
    :goto_2
    :try_start_4
    throw v4
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .end local v2    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v0

    .line 311
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "LyricsParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getStringWithNewLine "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v5

    .line 313
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    :goto_3
    return-object v4

    .line 308
    .restart local v1    # "line":Ljava/lang/String;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    :try_start_5
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 309
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v4

    .line 310
    if-eqz v2, :cond_1

    if-eqz v5, :cond_3

    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_3

    :catch_2
    move-exception v7

    :try_start_7
    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    goto :goto_3

    .end local v1    # "line":Ljava/lang/String;
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :catch_3
    move-exception v7

    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2

    :catchall_1
    move-exception v4

    move-object v6, v5

    goto :goto_1
.end method

.method private isDescripto([B)Z
    .locals 4
    .param p1, "input"    # [B

    .prologue
    .line 198
    const-string v1, "LyricsParser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UsltTagParser;->NAME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isDescripto"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UsltTagParser;->getHexString([B)Ljava/lang/String;

    move-result-object v0

    .line 201
    .local v0, "descripto":Ljava/lang/String;
    const-string v1, "FFFE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "FEFF"

    .line 202
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isKiesLyric([B)Z
    .locals 10
    .param p1, "content"    # [B

    .prologue
    .line 248
    const-string v7, "LyricsParser"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UsltTagParser;->NAME:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " isKiesLyric"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    const/4 v4, 0x0

    .line 253
    .local v4, "isKiesLyric":Z
    array-length v0, p1

    .line 254
    .local v0, "contentLength":I
    const/16 v7, 0x8

    if-le v0, v7, :cond_0

    const/4 v7, 0x0

    aget-byte v7, p1, v7

    if-nez v7, :cond_0

    const/4 v7, 0x1

    aget-byte v7, p1, v7

    const/16 v8, 0x5b

    if-ne v7, v8, :cond_0

    const/4 v7, 0x2

    aget-byte v7, p1, v7

    const/16 v8, 0x4d

    if-ne v7, v8, :cond_0

    const/4 v7, 0x3

    aget-byte v7, p1, v7

    const/16 v8, 0x5f

    if-ne v7, v8, :cond_0

    const/4 v7, 0x4

    aget-byte v7, p1, v7

    const/16 v8, 0x43

    if-ne v7, v8, :cond_0

    const/4 v7, 0x5

    aget-byte v7, p1, v7

    const/16 v8, 0x49

    if-ne v7, v8, :cond_0

    const/4 v7, 0x6

    aget-byte v7, p1, v7

    const/16 v8, 0x54

    if-ne v7, v8, :cond_0

    const/4 v7, 0x7

    aget-byte v7, p1, v7

    const/16 v8, 0x59

    if-ne v7, v8, :cond_0

    const/16 v7, 0x8

    aget-byte v7, p1, v7

    const/16 v8, 0x5d

    if-ne v7, v8, :cond_0

    .line 257
    const/4 v4, 0x1

    .line 261
    :cond_0
    const/16 v7, 0x10

    if-le v0, v7, :cond_2

    .line 263
    :try_start_0
    const-string v7, "EUC-KR"

    invoke-static {p1, v7}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UsltTagParser;->getString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 264
    .local v6, "strContent":Ljava/lang/String;
    if-eqz v6, :cond_3

    .line 265
    const/16 v7, 0x5b

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 266
    .local v5, "start":I
    const/16 v7, 0x5d

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 267
    .local v2, "end":I
    if-lez v5, :cond_2

    if-lez v2, :cond_2

    if-ge v5, v2, :cond_2

    sub-int v7, v2, v5

    const/4 v8, 0x2

    if-lt v7, v8, :cond_2

    .line 268
    add-int/lit8 v3, v2, 0x1

    .local v3, "i":I
    :goto_0
    const/16 v7, 0x10

    if-ge v3, v7, :cond_2

    .line 269
    aget-byte v7, p1, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v7, :cond_1

    .line 270
    const/4 v4, 0x1

    .line 268
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 272
    :cond_1
    const/4 v4, 0x0

    .line 284
    .end local v2    # "end":I
    .end local v3    # "i":I
    .end local v5    # "start":I
    .end local v6    # "strContent":Ljava/lang/String;
    :cond_2
    :goto_1
    return v4

    .line 278
    .restart local v6    # "strContent":Ljava/lang/String;
    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    .line 280
    .end local v6    # "strContent":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 281
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private isNull([B)Z
    .locals 3
    .param p1, "input"    # [B

    .prologue
    .line 207
    const-string v0, "LyricsParser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UsltTagParser;->NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isNull"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    const-string v0, "0000"

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UsltTagParser;->getHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private nonUnicodeParsing(Ljava/io/RandomAccessFile;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UsltTagParser$ID3TagUSLT;I)Ljava/lang/String;
    .locals 7
    .param p1, "file"    # Ljava/io/RandomAccessFile;
    .param p2, "tag"    # Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UsltTagParser$ID3TagUSLT;
    .param p3, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 215
    const-string v3, "LyricsParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UsltTagParser;->NAME:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " nonUnicodeParsing"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    iget-object v3, p2, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UsltTagParser$ID3TagUSLT;->nonUnicodDescripto:[B

    invoke-virtual {p1, v3}, Ljava/io/RandomAccessFile;->read([B)I

    .line 220
    iget-object v3, p2, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UsltTagParser$ID3TagUSLT;->nonUnicodDescripto:[B

    array-length v3, v3

    sub-int v1, p3, v3

    .line 221
    .local v1, "contentSize":I
    if-gtz v1, :cond_0

    .line 222
    const/4 v2, 0x0

    .line 243
    :goto_0
    return-object v2

    .line 225
    :cond_0
    new-array v0, v1, [B

    .line 227
    .local v0, "content":[B
    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->read([B)I

    .line 229
    const/4 v2, 0x0

    .line 230
    .local v2, "lyric":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UsltTagParser;->isKiesLyric([B)Z

    move-result v3

    if-nez v3, :cond_1

    .line 231
    sget-boolean v3, Lcom/samsung/android/app/musiclibrary/ui/feature/CscFeatures;->SUPPORT_CONFIG_EXTRALYRIC_JP:Z

    if-eqz v3, :cond_2

    .line 232
    const-string v3, "SHIFT-JIS"

    invoke-static {v0, v3}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UsltTagParser;->getStringWithNewLine([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 238
    :cond_1
    :goto_1
    const-string v3, "LyricsParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UsltTagParser;->NAME:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Encoding:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p2, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UsltTagParser$ID3TagUSLT;->encoding:[B

    const/4 v6, 0x0

    aget-byte v5, v5, v6

    invoke-static {v5}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UsltTagParser;->getHexString(B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Lan:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p2, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UsltTagParser$ID3TagUSLT;->language:[B

    .line 239
    invoke-static {v5}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UsltTagParser;->getHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n non-unicode descripto:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p2, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UsltTagParser$ID3TagUSLT;->nonUnicodDescripto:[B

    .line 240
    invoke-static {v5}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UsltTagParser;->getHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 238
    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    const-string v3, "LyricsParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UsltTagParser;->NAME:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n Lyric: \n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 234
    :cond_2
    const-string v3, "EUC-KR"

    invoke-static {v0, v3}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UsltTagParser;->getStringWithNewLine([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private unicodeParsing(Ljava/io/RandomAccessFile;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UsltTagParser$ID3TagUSLT;I)Ljava/lang/String;
    .locals 10
    .param p1, "file"    # Ljava/io/RandomAccessFile;
    .param p2, "tag"    # Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UsltTagParser$ID3TagUSLT;
    .param p3, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 143
    const-string v5, "LyricsParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UsltTagParser;->NAME:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " unicodeParsing"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const/4 v5, 0x2

    new-array v3, v5, [B

    .line 146
    .local v3, "tempDescripto":[B
    array-length v4, v3

    .line 147
    .local v4, "tempDescriptoLength":I
    :cond_0
    :goto_0
    invoke-virtual {p1, v3}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    .line 148
    sub-int/2addr p3, v4

    .line 150
    const-string v5, "LyricsParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UsltTagParser;->NAME:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " tempDescripto : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UsltTagParser;->getHexString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-direct {p0, v3}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UsltTagParser;->isDescripto([B)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 153
    invoke-virtual {v3}, [B->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    iput-object v5, p2, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UsltTagParser$ID3TagUSLT;->unicodDescripto:[B

    goto :goto_0

    .line 156
    :cond_1
    invoke-direct {p0, v3}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UsltTagParser;->isNull([B)Z

    move-result v5

    if-nez v5, :cond_0

    .line 161
    add-int/2addr p3, v4

    .line 162
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v6

    int-to-long v8, v4

    sub-long/2addr v6, v8

    invoke-virtual {p1, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 166
    :cond_2
    if-gtz p3, :cond_3

    .line 167
    const/4 v2, 0x0

    .line 193
    :goto_1
    return-object v2

    .line 170
    :cond_3
    new-array v0, p3, [B

    .line 172
    .local v0, "content":[B
    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->read([B)I

    .line 174
    const/4 v2, 0x0

    .line 180
    .local v2, "lyric":Ljava/lang/String;
    iget-object v5, p2, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UsltTagParser$ID3TagUSLT;->unicodDescripto:[B

    invoke-static {v5}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UsltTagParser;->getHexString([B)Ljava/lang/String;

    move-result-object v1

    .line 181
    .local v1, "descripto":Ljava/lang/String;
    const-string v5, "FFFE"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 182
    const-string v5, "UTF-16LE"

    invoke-static {v0, v5}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UsltTagParser;->getStringWithNewLine([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 187
    :cond_4
    :goto_2
    const-string v5, "LyricsParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UsltTagParser;->NAME:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Encoding:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p2, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UsltTagParser$ID3TagUSLT;->encoding:[B

    const/4 v8, 0x0

    aget-byte v7, v7, v8

    .line 188
    invoke-static {v7}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UsltTagParser;->getHexString(B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n Lan:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p2, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UsltTagParser$ID3TagUSLT;->language:[B

    .line 189
    invoke-static {v7}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UsltTagParser;->getHexString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n unicode descripto:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p2, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UsltTagParser$ID3TagUSLT;->unicodDescripto:[B

    .line 190
    invoke-static {v7}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UsltTagParser;->getHexString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 187
    invoke-static {v5, v6}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const-string v5, "LyricsParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UsltTagParser;->NAME:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n Lyric: \n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 183
    :cond_5
    const-string v5, "FEFF"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 184
    const-string v5, "UTF-16BE"

    invoke-static {v0, v5}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UsltTagParser;->getStringWithNewLine([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2
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
    .line 85
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UsltTagParser;->mID3TagFinder:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UsltTagParser;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    const-string v2, "USLT"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder;->findTag(Ljava/io/RandomAccessFile;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$ID3TagFields;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UsltTagParser;->mUsltTagFrame:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$ID3TagFields;

    .line 86
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UsltTagParser;->mUsltTagFrame:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$ID3TagFields;

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

    .line 130
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UsltTagParser;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UsltTagParser;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    :cond_0
    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UsltTagParser;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    .line 138
    :goto_0
    return-void

    .line 133
    :catch_0
    move-exception v0

    .line 136
    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UsltTagParser;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UsltTagParser;->mRandomAccessFile:Ljava/io/RandomAccessFile;

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
    .line 75
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UsltTagParser;->close()V

    .line 76
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {v1, p1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UsltTagParser;->mRandomAccessFile:Ljava/io/RandomAccessFile;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Ljava/io/FileNotFoundException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected parseLyrics()Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;
    .locals 8
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 92
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UsltTagParser;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    if-nez v4, :cond_0

    .line 93
    sget-object v4, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;->EMPTY_LYRICS:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    .line 124
    :goto_0
    return-object v4

    .line 95
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UsltTagParser;->mUsltTagFrame:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$ID3TagFields;

    if-nez v4, :cond_1

    .line 96
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UsltTagParser;->mID3TagFinder:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder;

    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UsltTagParser;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    const-string v6, "USLT"

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder;->findTag(Ljava/io/RandomAccessFile;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$ID3TagFields;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UsltTagParser;->mUsltTagFrame:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$ID3TagFields;

    .line 97
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UsltTagParser;->mUsltTagFrame:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$ID3TagFields;

    if-nez v4, :cond_1

    .line 98
    sget-object v4, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;->EMPTY_LYRICS:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    goto :goto_0

    .line 102
    :cond_1
    const-string v4, "LyricsParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UsltTagParser;->NAME:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " parsingLyric frame size : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UsltTagParser;->mUsltTagFrame:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$ID3TagFields;

    invoke-virtual {v6}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$ID3TagFields;->getTagSize()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UsltTagParser;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UsltTagParser;->mUsltTagFrame:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$ID3TagFields;

    invoke-virtual {v5}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$ID3TagFields;->getOffset()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 106
    new-instance v3, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UsltTagParser$ID3TagUSLT;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UsltTagParser$ID3TagUSLT;-><init>(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UsltTagParser$1;)V

    .line 108
    .local v3, "tag":Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UsltTagParser$ID3TagUSLT;
    iget-object v0, v3, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UsltTagParser$ID3TagUSLT;->encoding:[B

    .line 109
    .local v0, "encoding":[B
    iget-object v1, v3, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UsltTagParser$ID3TagUSLT;->language:[B

    .line 110
    .local v1, "language":[B
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UsltTagParser;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v4, v0}, Ljava/io/RandomAccessFile;->read([B)I

    .line 111
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UsltTagParser;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v4, v1}, Ljava/io/RandomAccessFile;->read([B)I

    .line 112
    const/4 v2, 0x0

    .line 114
    .local v2, "lyric":Ljava/lang/String;
    const-string v4, "01"

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UsltTagParser;->getHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 115
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UsltTagParser;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UsltTagParser;->mUsltTagFrame:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$ID3TagFields;

    .line 116
    invoke-virtual {v5}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$ID3TagFields;->getTagSize()I

    move-result v5

    array-length v6, v0

    array-length v7, v1

    add-int/2addr v6, v7

    sub-int/2addr v5, v6

    .line 115
    invoke-direct {p0, v4, v3, v5}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UsltTagParser;->unicodeParsing(Ljava/io/RandomAccessFile;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UsltTagParser$ID3TagUSLT;I)Ljava/lang/String;

    move-result-object v2

    .line 121
    :cond_2
    :goto_1
    if-eqz v2, :cond_4

    .line 122
    new-instance v4, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsImpl;

    invoke-direct {v4, v2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsImpl;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 117
    :cond_3
    const-string v4, "00"

    iget-object v5, v3, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UsltTagParser$ID3TagUSLT;->encoding:[B

    invoke-static {v5}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UsltTagParser;->getHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 118
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UsltTagParser;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UsltTagParser;->mUsltTagFrame:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$ID3TagFields;

    .line 119
    invoke-virtual {v5}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$ID3TagFields;->getTagSize()I

    move-result v5

    array-length v6, v0

    array-length v7, v1

    add-int/2addr v6, v7

    sub-int/2addr v5, v6

    .line 118
    invoke-direct {p0, v4, v3, v5}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UsltTagParser;->nonUnicodeParsing(Ljava/io/RandomAccessFile;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UsltTagParser$ID3TagUSLT;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 124
    :cond_4
    sget-object v4, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;->EMPTY_LYRICS:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    goto/16 :goto_0
.end method
