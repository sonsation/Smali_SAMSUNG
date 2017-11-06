.class public final Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/HttpPartialDownloader;
.super Ljava/lang/Object;
.source "HttpPartialDownloader.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x20000

.field private static final BYTES_128K:I = 0x20000

.field private static final CACHE_CONTROL_NO_CACHE:Ljava/lang/String; = "no-cache"

.field private static final CONNECTION_TIME_OUT:I = 0x1388

.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV-PlayerServer"

.field private static final PROPERTY_CACHE_CONTROL:Ljava/lang/String; = "Cache-Control"

.field private static final PROPERTY_RANGE:Ljava/lang/String; = "Range"

.field private static final READ_TIME_OUT:I = 0x2710

.field private static final REQUEST_METHOD_GET:Ljava/lang/String; = "GET"

.field private static final SUB_TAG:Ljava/lang/String; = "HttpDownloader> "


# instance fields
.field private final mEndByte:J

.field private final mIFile:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;

.field private final mOutputStream:Ljava/io/OutputStream;

.field private final mPartialRange:Ljava/lang/String;

.field private final mStartByte:J

.field private final mUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/io/OutputStream;Ljava/lang/String;JJLcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "outputStream"    # Ljava/io/OutputStream;
    .param p3, "partialRange"    # Ljava/lang/String;
    .param p4, "startByte"    # J
    .param p6, "endByte"    # J
    .param p8, "iFile"    # Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/HttpPartialDownloader;->mUrl:Ljava/lang/String;

    .line 53
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/HttpPartialDownloader;->mOutputStream:Ljava/io/OutputStream;

    .line 54
    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/HttpPartialDownloader;->mPartialRange:Ljava/lang/String;

    .line 55
    iput-wide p4, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/HttpPartialDownloader;->mStartByte:J

    .line 56
    iput-wide p6, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/HttpPartialDownloader;->mEndByte:J

    .line 57
    iput-object p8, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/HttpPartialDownloader;->mIFile:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;

    .line 58
    return-void
.end method

.method private prepare(Ljava/net/HttpURLConnection;)V
    .locals 4
    .param p1, "connection"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 106
    const-string v1, "Range"

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/HttpPartialDownloader;->mPartialRange:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 108
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    .line 110
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 111
    .local v0, "responseCode":I
    const/16 v1, 0xc8

    if-eq v0, v1, :cond_0

    const/16 v1, 0xce

    if-eq v0, v1, :cond_0

    .line 113
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HTTP response error code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 120
    :cond_0
    return-void
.end method

.method private write(Ljava/io/InputStream;Ljava/io/OutputStream;JJ)V
    .locals 9
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "outputStream"    # Ljava/io/OutputStream;
    .param p3, "startByte"    # J
    .param p5, "endByte"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 125
    move-wide v2, p3

    .line 126
    .local v2, "bytesReadToSend":J
    const/high16 v6, 0x20000

    new-array v0, v6, [B

    .line 127
    .local v0, "buffer":[B
    :cond_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "bytesRead":I
    const/4 v6, -0x1

    if-eq v1, v6, :cond_1

    .line 128
    invoke-virtual {p2, v0, v8, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 129
    int-to-long v6, v1

    add-long/2addr v2, v6

    .line 130
    const-wide/32 v6, 0x20000

    add-long/2addr v6, v2

    cmp-long v6, p5, v6

    if-gez v6, :cond_0

    .line 131
    const-wide/16 v6, 0x1

    add-long/2addr v6, p5

    sub-long v4, v6, v2

    .line 132
    .local v4, "lastByteLen":J
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 133
    long-to-int v6, v4

    invoke-virtual {p2, v0, v8, v6}, Ljava/io/OutputStream;->write([BII)V

    .line 134
    add-long/2addr v2, v4

    .line 143
    .end local v4    # "lastByteLen":J
    :cond_1
    return-void
.end method


# virtual methods
.method download()V
    .locals 11
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 62
    new-instance v10, Ljava/net/URL;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/HttpPartialDownloader;->mUrl:Ljava/lang/String;

    invoke-direct {v10, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 63
    .local v10, "url":Ljava/net/URL;
    const/4 v2, 0x0

    .line 64
    .local v2, "connection":Ljava/net/HttpURLConnection;
    const/4 v4, 0x0

    .line 66
    .local v4, "inputStream":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {v10}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v2, v0

    .line 67
    const/16 v3, 0x1388

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 68
    const/16 v3, 0x2710

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 69
    const-string v3, "GET"

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 71
    const-string v3, "Cache-Control"

    const-string v5, "no-cache"

    invoke-virtual {v2, v3, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 74
    invoke-direct {p0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/HttpPartialDownloader;->prepare(Ljava/net/HttpURLConnection;)V

    .line 75
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 80
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/HttpPartialDownloader;->mOutputStream:Ljava/io/OutputStream;

    iget-wide v6, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/HttpPartialDownloader;->mStartByte:J

    iget-wide v8, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/HttpPartialDownloader;->mEndByte:J

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/HttpPartialDownloader;->write(Ljava/io/InputStream;Ljava/io/OutputStream;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    if-eqz v2, :cond_0

    .line 87
    :try_start_1
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 89
    :cond_0
    if-eqz v4, :cond_1

    .line 90
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2

    .line 103
    :cond_1
    :goto_0
    return-void

    .line 85
    :catchall_0
    move-exception v3

    .line 86
    if-eqz v2, :cond_2

    .line 87
    :try_start_2
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 89
    :cond_2
    if-eqz v4, :cond_3

    .line 90
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    .line 98
    :cond_3
    :goto_1
    throw v3

    .line 95
    :catch_0
    move-exception v5

    goto :goto_1

    .line 92
    :catch_1
    move-exception v5

    goto :goto_1

    .line 95
    :catch_2
    move-exception v3

    goto :goto_0

    .line 92
    :catch_3
    move-exception v3

    goto :goto_0
.end method
