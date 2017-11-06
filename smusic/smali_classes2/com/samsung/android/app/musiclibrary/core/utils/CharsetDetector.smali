.class public Lcom/samsung/android/app/musiclibrary/core/utils/CharsetDetector;
.super Ljava/lang/Object;
.source "CharsetDetector.java"


# static fields
.field private static final BUF_SIZE:I = 0x1000

.field private static final CACHE_SIZE:I = 0x64

.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;

.field private static final sCache:Landroid/support/v4/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Ljava/nio/charset/Charset;",
            ">;"
        }
    .end annotation
.end field

.field private static final sSupportedCharsets:[Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 20
    const-class v0, Lcom/samsung/android/app/musiclibrary/core/utils/CharsetDetector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/utils/CharsetDetector;->TAG:Ljava/lang/String;

    .line 32
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/nio/charset/Charset;

    const/4 v1, 0x0

    const-string v2, "UTF-8"

    .line 33
    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "UTF-16"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "UTF-16BE"

    .line 34
    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "UTF-16LE"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "UTF-32"

    .line 35
    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "UTF-32BE"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "UTF-32LE"

    .line 36
    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "EUC-KR"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/utils/CharsetDetector;->sSupportedCharsets:[Ljava/nio/charset/Charset;

    .line 38
    new-instance v0, Landroid/support/v4/util/LruCache;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Landroid/support/v4/util/LruCache;-><init>(I)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/utils/CharsetDetector;->sCache:Landroid/support/v4/util/LruCache;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static findCharset(Ljava/io/BufferedInputStream;)Ljava/nio/charset/Charset;
    .locals 7
    .param p0, "reader"    # Ljava/io/BufferedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    const-wide/16 v4, 0x0

    .line 71
    .local v4, "preTick":J
    sget-object v6, Lcom/samsung/android/app/musiclibrary/core/utils/CharsetDetector;->sSupportedCharsets:[Ljava/nio/charset/Charset;

    array-length v3, v6

    .line 72
    .local v3, "length":I
    new-array v1, v3, [Ljava/nio/charset/CharsetDecoder;

    .line 73
    .local v1, "decoders":[Ljava/nio/charset/CharsetDecoder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 74
    sget-object v6, Lcom/samsung/android/app/musiclibrary/core/utils/CharsetDetector;->sSupportedCharsets:[Ljava/nio/charset/Charset;

    aget-object v6, v6, v2

    invoke-virtual {v6}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v6

    aput-object v6, v1, v2

    .line 73
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 77
    :cond_0
    invoke-static {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/utils/CharsetDetector;->findCharset(Ljava/io/InputStream;[Ljava/nio/charset/CharsetDecoder;)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 83
    .local v0, "charset":Ljava/nio/charset/Charset;
    if-nez v0, :cond_1

    .line 84
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    .line 86
    :cond_1
    return-object v0
.end method

.method private static findCharset(Ljava/io/InputStream;[Ljava/nio/charset/CharsetDecoder;)Ljava/nio/charset/Charset;
    .locals 12
    .param p0, "reader"    # Ljava/io/InputStream;
    .param p1, "decoders"    # [Ljava/nio/charset/CharsetDecoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 91
    array-length v4, p1

    .line 93
    .local v4, "length":I
    const/16 v9, 0x1000

    new-array v0, v9, [B

    .line 95
    .local v0, "buf":[B
    move v6, v4

    .line 96
    .local v6, "possibleCount":I
    const/4 v7, 0x0

    .line 97
    .local v7, "priority":I
    new-array v5, v6, [Z

    .line 98
    .local v5, "possible":[Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 99
    const/4 v9, 0x1

    aput-boolean v9, v5, v2

    .line 98
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 101
    :cond_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v8

    .local v8, "read":I
    if-lez v8, :cond_4

    .line 102
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v4, :cond_3

    .line 103
    aget-boolean v9, v5, v2

    if-nez v9, :cond_2

    .line 102
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 107
    :cond_2
    :try_start_0
    aget-object v9, p1, v2

    const/4 v10, 0x0

    invoke-static {v0, v10, v8}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    .line 108
    :catch_0
    move-exception v1

    .line 109
    .local v1, "e":Ljava/lang/Exception;
    :goto_3
    add-int/lit8 v6, v6, -0x1

    .line 110
    aput-boolean v11, v5, v2

    .line 111
    if-ne v2, v7, :cond_1

    .line 112
    add-int/lit8 v3, v2, 0x1

    .local v3, "j":I
    :goto_4
    if-ge v3, v4, :cond_1

    .line 113
    move v7, v3

    .line 114
    aget-boolean v9, v5, v7

    if-nez v9, :cond_1

    .line 112
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 121
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "j":I
    :cond_3
    if-nez v6, :cond_0

    .line 122
    const/4 v9, 0x0

    .line 125
    :goto_5
    return-object v9

    :cond_4
    aget-object v9, p1, v7

    invoke-virtual {v9}, Ljava/nio/charset/CharsetDecoder;->charset()Ljava/nio/charset/Charset;

    move-result-object v9

    goto :goto_5

    .line 108
    :catch_1
    move-exception v1

    goto :goto_3
.end method

.method public static findCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;
    .locals 6
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 41
    sget-object v2, Lcom/samsung/android/app/musiclibrary/core/utils/CharsetDetector;->sCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v2, p0}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/charset/Charset;

    .line 42
    .local v1, "charset":Ljava/nio/charset/Charset;
    if-eqz v1, :cond_0

    move-object v2, v1

    .line 53
    :goto_0
    return-object v2

    .line 45
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .local v0, "bis":Ljava/io/BufferedInputStream;
    const/4 v3, 0x0

    .line 46
    :try_start_1
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/utils/CharsetDetector;->findCharset(Ljava/io/BufferedInputStream;)Ljava/nio/charset/Charset;

    move-result-object v1

    .line 47
    sget-object v2, Lcom/samsung/android/app/musiclibrary/core/utils/CharsetDetector;->sCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v2, p0, v1}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 49
    if-eqz v0, :cond_1

    if-eqz v3, :cond_2

    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    :goto_1
    move-object v2, v1

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_3
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    :catch_1
    move-exception v2

    .line 53
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    goto :goto_0

    .line 49
    .restart local v0    # "bis":Ljava/io/BufferedInputStream;
    :cond_2
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 45
    :catch_2
    move-exception v2

    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 49
    :catchall_0
    move-exception v3

    move-object v5, v3

    move-object v3, v2

    move-object v2, v5

    :goto_2
    if-eqz v0, :cond_3

    if-eqz v3, :cond_4

    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    :cond_3
    :goto_3
    :try_start_7
    throw v2

    :catch_3
    move-exception v4

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_4
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_3

    :catchall_1
    move-exception v2

    goto :goto_2
.end method

.method public static findCharset([B)Ljava/nio/charset/Charset;
    .locals 6
    .param p0, "bytes"    # [B

    .prologue
    .line 58
    :try_start_0
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .local v0, "bis":Ljava/io/BufferedInputStream;
    const/4 v4, 0x0

    .line 59
    :try_start_1
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/utils/CharsetDetector;->findCharset(Ljava/io/BufferedInputStream;)Ljava/nio/charset/Charset;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 60
    .local v1, "charset":Ljava/nio/charset/Charset;
    if-eqz v0, :cond_0

    if-eqz v4, :cond_1

    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 63
    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    :cond_0
    :goto_0
    return-object v1

    .line 60
    .restart local v0    # "bis":Ljava/io/BufferedInputStream;
    :catch_0
    move-exception v3

    :try_start_3
    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .end local v1    # "charset":Ljava/nio/charset/Charset;
    :catch_1
    move-exception v2

    .line 61
    .local v2, "e":Ljava/io/IOException;
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    .restart local v1    # "charset":Ljava/nio/charset/Charset;
    goto :goto_0

    .line 60
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "bis":Ljava/io/BufferedInputStream;
    :cond_1
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 58
    .end local v1    # "charset":Ljava/nio/charset/Charset;
    :catch_2
    move-exception v4

    :try_start_5
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 60
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_2

    if-eqz v4, :cond_3

    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    :cond_2
    :goto_1
    :try_start_7
    throw v3

    :catch_3
    move-exception v5

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_1
.end method
