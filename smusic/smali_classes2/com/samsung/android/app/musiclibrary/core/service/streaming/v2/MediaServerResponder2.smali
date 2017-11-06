.class public final Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2;
.super Ljava/lang/Object;
.source "MediaServerResponder2.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/OnFileLoadListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2$Header;
    }
.end annotation


# static fields
.field private static final ACCEPT_RANGES:[B

.field private static final BUFFER_SIZE:I = 0x20000

.field private static final BYTES_128K:I = 0x20000

.field private static final BYTES_1M:J = 0x100000L

.field private static final BYTES_200K:J = 0x32000L

.field private static final BYTES_8K:I = 0x2000

.field private static final BYTES_PARAM:Ljava/lang/String; = "bytes="

.field private static final CONNECTION_CLOSE:[B

.field private static final CONNECTION_HTTP_HEADER:Ljava/lang/String; = "Connection"

.field private static final CONTENT_LENGTH:[B

.field private static final CONTENT_LENGTH_HTTP_HEADER:Ljava/lang/String; = "Content-Length"

.field private static final CONTENT_RANGE:[B

.field private static final CONTENT_RANGE_HTTP_HEADER:Ljava/lang/String; = "Content-Range"

.field private static final CONTENT_TYPE_AAC:[B

.field private static final CONTENT_TYPE_HTTP_HEADER:Ljava/lang/String; = "Content-Type"

.field private static final CONTENT_TYPE_MP3:[B

.field private static final CONTENT_TYPE_MP4:[B

.field private static final CONTENT_TYPE_MULTIPART:[B

.field private static final DEBUG:Z = false

.field private static final FEATURE_PARTIAL_RESPONSE:Z = false

.field private static final HTTP_1_1:[B

.field private static final LINGER_TIME_OUT:I = 0x3c

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV-PlayerServer"

.field private static final MIME_TYPE_AAC:Ljava/lang/String; = "audio/aac"

.field private static final MIME_TYPE_MP3:Ljava/lang/String; = "audio/mpeg"

.field private static final MIME_TYPE_MP4:Ljava/lang/String; = "audio/mp4a-latm"

.field private static final NEW_LINE:Ljava/lang/String; = "\r\n"

.field private static final NEW_LINE_BYTES:[B

.field private static final RANGE_DASH:Ljava/lang/String; = "-"

.field private static final RANGE_HTTP_HEADER:Ljava/lang/String; = "Range"

.field private static final RESPONSE_CODE_200:[B

.field private static final RESPONSE_CODE_206:[B

.field private static final SUB_TAG:Ljava/lang/String; = "Responder> "

.field private static final TYPE_AAC:Ljava/lang/String; = "AAC"

.field private static final TYPE_MP3:Ljava/lang/String; = "MP3"

.field private static final TYPE_MP4:Ljava/lang/String; = "MP4"


# instance fields
.field private mIFile:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;

.field private mId:Ljava/lang/String;

.field private final mSocket:Ljava/net/Socket;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 438
    const-string v0, "\r\n"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2;->NEW_LINE_BYTES:[B

    .line 440
    const-string v0, "HTTP/1.1 "

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2;->HTTP_1_1:[B

    .line 442
    const-string v0, "200 OK\r\n"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2;->RESPONSE_CODE_200:[B

    .line 444
    const-string v0, "206 Partial content\r\n"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2;->RESPONSE_CODE_206:[B

    .line 448
    const-string v0, "Content-Length: "

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2;->CONTENT_LENGTH:[B

    .line 452
    const-string v0, "Content-Range: bytes "

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2;->CONTENT_RANGE:[B

    .line 470
    const-string v0, "Content-Type: multipart/byteranges; boundary=THIS_STRING_SEPARATES\r\n"

    .line 472
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2;->CONTENT_TYPE_MULTIPART:[B

    .line 474
    const-string v0, "Content-Type: audio/mpeg\r\n"

    .line 475
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2;->CONTENT_TYPE_MP3:[B

    .line 477
    const-string v0, "Content-Type: audio/mp4a-latm\r\n"

    .line 478
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2;->CONTENT_TYPE_MP4:[B

    .line 480
    const-string v0, "Content-Type: audio/aac\r\n"

    .line 481
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2;->CONTENT_TYPE_AAC:[B

    .line 483
    const-string v0, "Accept-Ranges: bytes\r\n"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2;->ACCEPT_RANGES:[B

    .line 487
    const-string v0, "Connection: close\r\n"

    .line 488
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2;->CONNECTION_CLOSE:[B

    .line 487
    return-void
.end method

.method public constructor <init>(Ljava/net/Socket;)V
    .locals 0
    .param p1, "socket"    # Ljava/net/Socket;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2;->mSocket:Ljava/net/Socket;

    .line 58
    return-void
.end method

.method private close(Ljava/net/Socket;)V
    .locals 3
    .param p1, "socket"    # Ljava/net/Socket;

    .prologue
    .line 90
    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->close()V

    .line 91
    const-string/jumbo v1, "socket closed."

    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2;->printInfoLog(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :goto_0
    return-void

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error during socket close. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2;->printErrorLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getContentType(Ljava/lang/String;)[B
    .locals 2
    .param p1, "contentType"    # Ljava/lang/String;

    .prologue
    .line 416
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 424
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2;->CONTENT_TYPE_MP3:[B

    :goto_1
    return-object v0

    .line 416
    :sswitch_0
    const-string v1, "MP3"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v1, "AAC"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "MP4"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    .line 418
    :pswitch_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2;->CONTENT_TYPE_MP3:[B

    goto :goto_1

    .line 420
    :pswitch_1
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2;->CONTENT_TYPE_AAC:[B

    goto :goto_1

    .line 422
    :pswitch_2
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2;->CONTENT_TYPE_MP4:[B

    goto :goto_1

    .line 416
    nop

    :sswitch_data_0
    .sparse-switch
        0xfc23 -> :sswitch_1
        0x12af0 -> :sswitch_0
        0x12af1 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private parseEndByte(Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2$Header;J)J
    .locals 8
    .param p1, "h"    # Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2$Header;
    .param p2, "totalBytes"    # J

    .prologue
    const-wide/16 v6, 0x1

    .line 212
    iget-object v4, p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2$Header;->range:Ljava/lang/String;

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 213
    .local v0, "dashPos":I
    iget-object v4, p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2$Header;->range:Ljava/lang/String;

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 214
    .local v1, "endByteString":Ljava/lang/String;
    const-wide/16 v4, 0x0

    cmp-long v4, p2, v4

    if-gtz v4, :cond_0

    .line 215
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    int-to-long v2, v4

    .line 223
    :goto_0
    return-wide v2

    .line 218
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 219
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v4, v4

    sub-long v6, p2, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .local v2, "endByte":J
    goto :goto_0

    .line 221
    .end local v2    # "endByte":J
    :cond_1
    sub-long v2, p2, v6

    .restart local v2    # "endByte":J
    goto :goto_0
.end method

.method private parseStartByte(Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2$Header;)I
    .locals 4
    .param p1, "h"    # Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2$Header;

    .prologue
    .line 227
    iget-object v2, p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2$Header;->range:Ljava/lang/String;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 228
    .local v0, "dashPos":I
    iget-object v2, p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2$Header;->range:Ljava/lang/String;

    const-string v3, "bytes="

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 229
    .local v1, "numberStartPos":I
    iget-object v2, p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2$Header;->range:Ljava/lang/String;

    const-string v3, "bytes="

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2
.end method

.method private printErrorLog(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 69
    const-string v0, "SMUSIC-SV-PlayerServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Responder> [id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    return-void
.end method

.method private printInfoLog(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 65
    const-string v0, "SMUSIC-SV-PlayerServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Responder> [id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    return-void
.end method

.method private printLog(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 61
    const-string v0, "SMUSIC-SV-PlayerServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Responder> [id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    return-void
.end method

.method private readHeader(Ljava/io/BufferedReader;)Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2$Header;
    .locals 6
    .param p1, "reader"    # Ljava/io/BufferedReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 108
    const/4 v0, 0x0

    .line 109
    .local v0, "get":Ljava/lang/String;
    const/4 v3, 0x0

    .line 111
    .local v3, "rangeLine":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .local v2, "log":Ljava/lang/StringBuilder;
    :cond_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, "line":Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 113
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    const/16 v4, 0xa

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 115
    const-string v4, "GET"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 116
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Header GET line = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2;->printInfoLog(Ljava/lang/String;)V

    .line 117
    move-object v0, v1

    .line 119
    :cond_1
    const-string v4, "Range"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 120
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Header RANGE line = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2;->printInfoLog(Ljava/lang/String;)V

    .line 121
    move-object v3, v1

    .line 125
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 129
    :cond_3
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2;->printLog(Ljava/lang/String;)V

    .line 131
    new-instance v4, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2$Header;

    invoke-direct {v4, v0, v3}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2$Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4
.end method

.method private response(Ljava/net/Socket;)V
    .locals 31
    .param p1, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 135
    invoke-virtual/range {p1 .. p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    .local v3, "socketOut":Ljava/io/OutputStream;
    const/16 v29, 0x0

    .line 136
    :try_start_0
    new-instance v20, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    .line 137
    invoke-virtual/range {p1 .. p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v12

    invoke-direct {v2, v12}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v20

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 135
    .local v20, "reader":Ljava/io/BufferedReader;
    const/16 v28, 0x0

    .line 138
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2;->readHeader(Ljava/io/BufferedReader;)Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2$Header;

    move-result-object v4

    .line 139
    .local v4, "h":Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2$Header;
    iget-object v2, v4, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2$Header;->get:Ljava/lang/String;

    if-nez v2, :cond_5

    .line 140
    const-string v2, "Header Unable to parse GET"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2;->printErrorLog(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 190
    if-eqz v20, :cond_0

    if-eqz v28, :cond_3

    :try_start_2
    invoke-virtual/range {v20 .. v20}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    if-eqz v29, :cond_4

    :try_start_3
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    .line 191
    :cond_1
    :goto_1
    return-void

    .line 190
    :catch_0
    move-exception v2

    :try_start_4
    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    .line 135
    .end local v4    # "h":Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2$Header;
    .end local v20    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v2

    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 190
    :catchall_0
    move-exception v12

    move-object/from16 v30, v12

    move-object v12, v2

    move-object/from16 v2, v30

    :goto_2
    if-eqz v3, :cond_2

    if-eqz v12, :cond_10

    :try_start_6
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_9

    :cond_2
    :goto_3
    throw v2

    .restart local v4    # "h":Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2$Header;
    .restart local v20    # "reader":Ljava/io/BufferedReader;
    :cond_3
    :try_start_7
    invoke-virtual/range {v20 .. v20}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_0

    .end local v4    # "h":Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2$Header;
    .end local v20    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v2

    move-object/from16 v12, v29

    goto :goto_2

    .restart local v4    # "h":Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2$Header;
    .restart local v20    # "reader":Ljava/io/BufferedReader;
    :catch_2
    move-exception v2

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    goto :goto_1

    .line 144
    :cond_5
    :try_start_8
    iget-object v2, v4, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2$Header;->get:Ljava/lang/String;

    iget-object v12, v4, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2$Header;->get:Ljava/lang/String;

    const/16 v13, 0x2f

    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    add-int/lit8 v12, v12, 0x1

    iget-object v13, v4, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2$Header;->get:Ljava/lang/String;

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v2, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2;->mId:Ljava/lang/String;

    .line 145
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2;->mId:Ljava/lang/String;

    invoke-virtual {v2, v12}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileManager;->request(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;

    move-result-object v5

    .line 146
    .local v5, "iFile":Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "requested to chain ["

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2;->mId:Ljava/lang/String;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v12, "] "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2;->printInfoLog(Ljava/lang/String;)V

    .line 147
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2;->mIFile:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;

    .line 148
    move-object/from16 v0, p0

    invoke-interface {v5, v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;->registerListener(Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/OnFileLoadListener;)V

    .line 149
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2;->waitUntilTotalBytesPrepared(Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;)V

    .line 150
    invoke-interface {v5}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;->getTotalBytes()J

    move-result-wide v6

    .line 152
    .local v6, "totalBytes":J
    iget-object v2, v4, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2$Header;->range:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 153
    invoke-interface {v5}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;->getAvailableBytes()J

    move-result-wide v8

    .line 154
    .local v8, "existBytes":J
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2;->parseStartByte(Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2$Header;)I

    move-result v2

    int-to-long v10, v2

    .line 155
    .local v10, "startByte":J
    cmp-long v2, v8, v10

    if-gez v2, :cond_9

    sub-long v12, v6, v10

    const-wide/32 v14, 0x32000

    cmp-long v2, v12, v14

    if-gez v2, :cond_9

    move-object/from16 v2, p0

    .line 159
    invoke-direct/range {v2 .. v11}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2;->temporaryPartialDownload(Ljava/io/OutputStream;Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2$Header;Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;JJJ)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 190
    if-eqz v20, :cond_6

    if-eqz v28, :cond_7

    :try_start_9
    invoke-virtual/range {v20 .. v20}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :cond_6
    :goto_4
    if-eqz v3, :cond_1

    if-eqz v29, :cond_8

    :try_start_a
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_3

    goto/16 :goto_1

    :catch_3
    move-exception v2

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :catch_4
    move-exception v2

    :try_start_b
    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_7
    invoke-virtual/range {v20 .. v20}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_4

    :cond_8
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    goto/16 :goto_1

    .line 165
    .end local v8    # "existBytes":J
    .end local v10    # "startByte":J
    :cond_9
    :try_start_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "request to chain ["

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2;->mId:Ljava/lang/String;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v12, "] and ready to send "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 166
    invoke-interface {v5}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;->getAvailableBytes()J

    move-result-wide v12

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v12, "/"

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 165
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2;->printInfoLog(Ljava/lang/String;)V

    .line 168
    iget-object v2, v4, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2$Header;->range:Ljava/lang/String;

    if-nez v2, :cond_b

    .line 169
    const-wide/16 v10, 0x0

    .line 178
    .restart local v10    # "startByte":J
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v6, v7}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2;->setupHeader(Ljava/io/OutputStream;J)V

    .line 185
    :goto_5
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 186
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "request to chain ["

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2;->mId:Ljava/lang/String;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v12, "] Head finished -----------------------"

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2;->printInfoLog(Ljava/lang/String;)V

    .line 187
    const-wide/16 v12, 0x1

    sub-long v26, v6, v12

    move-object/from16 v21, p0

    move-object/from16 v22, v5

    move-object/from16 v23, v3

    move-wide/from16 v24, v10

    invoke-direct/range {v21 .. v27}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2;->sendBody(Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;Ljava/io/OutputStream;JJ)V

    .line 188
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 189
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "request to chain ["

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2;->mId:Ljava/lang/String;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v12, "] Body finished -----------------------"

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2;->printInfoLog(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_6
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 190
    if-eqz v20, :cond_a

    if-eqz v28, :cond_d

    :try_start_d
    invoke-virtual/range {v20 .. v20}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_7
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :cond_a
    :goto_6
    if-eqz v3, :cond_1

    if-eqz v29, :cond_f

    :try_start_e
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_5

    goto/16 :goto_1

    :catch_5
    move-exception v2

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 181
    .end local v10    # "startByte":J
    :cond_b
    :try_start_f
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2;->parseStartByte(Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2$Header;)I

    move-result v2

    int-to-long v10, v2

    .line 182
    .restart local v10    # "startByte":J
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v6, v7}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2;->parseEndByte(Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2$Header;J)J

    move-result-wide v18

    .local v18, "endByte":J
    move-object/from16 v12, p0

    move-object v13, v3

    move-wide v14, v6

    move-wide/from16 v16, v10

    .line 183
    invoke-direct/range {v12 .. v19}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2;->setupPartialHeader(Ljava/io/OutputStream;JJJ)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_6
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    goto/16 :goto_5

    .line 135
    .end local v4    # "h":Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2$Header;
    .end local v5    # "iFile":Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;
    .end local v6    # "totalBytes":J
    .end local v10    # "startByte":J
    .end local v18    # "endByte":J
    :catch_6
    move-exception v2

    :try_start_10
    throw v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 190
    :catchall_2
    move-exception v12

    move-object/from16 v30, v12

    move-object v12, v2

    move-object/from16 v2, v30

    :goto_7
    if-eqz v20, :cond_c

    if-eqz v12, :cond_e

    :try_start_11
    invoke-virtual/range {v20 .. v20}, Ljava/io/BufferedReader;->close()V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_8
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    :cond_c
    :goto_8
    :try_start_12
    throw v2

    .restart local v4    # "h":Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2$Header;
    .restart local v5    # "iFile":Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;
    .restart local v6    # "totalBytes":J
    .restart local v10    # "startByte":J
    :catch_7
    move-exception v2

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_d
    invoke-virtual/range {v20 .. v20}, Ljava/io/BufferedReader;->close()V

    goto :goto_6

    .end local v4    # "h":Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2$Header;
    .end local v5    # "iFile":Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;
    .end local v6    # "totalBytes":J
    .end local v10    # "startByte":J
    :catch_8
    move-exception v13

    invoke-virtual {v12, v13}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_8

    :cond_e
    invoke-virtual/range {v20 .. v20}, Ljava/io/BufferedReader;->close()V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_1
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    goto :goto_8

    .restart local v4    # "h":Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2$Header;
    .restart local v5    # "iFile":Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;
    .restart local v6    # "totalBytes":J
    .restart local v10    # "startByte":J
    :cond_f
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    goto/16 :goto_1

    .end local v4    # "h":Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2$Header;
    .end local v5    # "iFile":Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;
    .end local v6    # "totalBytes":J
    .end local v10    # "startByte":J
    .end local v20    # "reader":Ljava/io/BufferedReader;
    :catch_9
    move-exception v13

    invoke-virtual {v12, v13}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_3

    :cond_10
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    goto/16 :goto_3

    .restart local v20    # "reader":Ljava/io/BufferedReader;
    :catchall_3
    move-exception v2

    move-object/from16 v12, v28

    goto :goto_7
.end method

.method private sendBody(Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;Ljava/io/OutputStream;JJ)V
    .locals 19
    .param p1, "iFile"    # Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "socketOut"    # Ljava/io/OutputStream;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "startByte"    # J
    .param p5, "endByte"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 291
    const-wide/32 v12, 0x20000

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12, v13}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2;->waitUntilBytesPrepared(Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;J)V

    .line 293
    invoke-interface/range {p1 .. p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;->obtainInputStream()Ljava/io/InputStream;

    move-result-object v7

    .local v7, "in":Ljava/io/InputStream;
    const/4 v13, 0x0

    .line 294
    move-wide/from16 v4, p3

    .line 295
    .local v4, "bytesSent":J
    const-wide/32 v14, 0x20000

    add-long/2addr v14, v4

    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14, v15}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2;->waitUntilBytesPrepared(Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;J)V

    .line 296
    const-wide/16 v14, 0x0

    cmp-long v12, p3, v14

    if-lez v12, :cond_2

    .line 297
    const/4 v6, 0x0

    .line 298
    .local v6, "bytesSkipped":I
    :cond_0
    int-to-long v14, v6

    cmp-long v12, v14, p3

    if-gez v12, :cond_2

    .line 299
    int-to-long v14, v6

    int-to-long v0, v6

    move-wide/from16 v16, v0

    sub-long v16, p3, v16

    move-wide/from16 v0, v16

    invoke-virtual {v7, v0, v1}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v16

    add-long v14, v14, v16

    long-to-int v6, v14

    .line 300
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "sendBody >> bytes skipped: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2;->printInfoLog(Ljava/lang/String;)V

    .line 301
    if-nez v6, :cond_0

    .line 302
    new-instance v12, Ljava/io/IOException;

    const-string v14, "Can\'t skip!"

    invoke-direct {v12, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 293
    .end local v6    # "bytesSkipped":I
    :catch_0
    move-exception v12

    :try_start_1
    throw v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 336
    :catchall_0
    move-exception v13

    move-object/from16 v18, v13

    move-object v13, v12

    move-object/from16 v12, v18

    :goto_0
    if-eqz v7, :cond_1

    if-eqz v13, :cond_7

    :try_start_2
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :cond_1
    :goto_1
    throw v12

    .line 308
    :cond_2
    const/high16 v12, 0x20000

    :try_start_3
    new-array v2, v12, [B

    .line 309
    .local v2, "buffer":[B
    :goto_2
    invoke-virtual {v7, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .local v3, "bytesRead":I
    const/4 v12, -0x1

    if-eq v3, v12, :cond_3

    .line 310
    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v12, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 311
    int-to-long v14, v3

    add-long/2addr v4, v14

    .line 312
    const-wide/32 v14, 0x20000

    add-long/2addr v14, v4

    cmp-long v12, p5, v14

    if-gez v12, :cond_5

    .line 313
    const-wide/16 v14, 0x1

    add-long v14, v14, p5

    sub-long v8, v14, v4

    .line 314
    .local v8, "lastByteLen":J
    const-wide/16 v14, 0x1

    add-long v14, v14, p5

    sub-long/2addr v14, v4

    add-long v10, v4, v14

    .line 315
    .local v10, "lastBytes":J
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v10, v11}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2;->waitUntilBytesPrepared(Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;J)V

    .line 316
    invoke-virtual {v7, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .line 317
    const/4 v12, 0x0

    long-to-int v14, v8

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v12, v14}, Ljava/io/OutputStream;->write([BII)V

    .line 318
    add-long/2addr v4, v8

    .line 334
    .end local v8    # "lastByteLen":J
    .end local v10    # "lastBytes":J
    :cond_3
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "sendBody >> bytes sent completed [sent byte:"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, "]"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2;->printInfoLog(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 336
    if-eqz v7, :cond_4

    if-eqz v13, :cond_6

    :try_start_4
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    .line 337
    :cond_4
    :goto_3
    return-void

    .line 326
    :cond_5
    const-wide/32 v14, 0x20000

    add-long/2addr v14, v4

    :try_start_5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14, v15}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2;->waitUntilBytesPrepared(Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;J)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    .line 336
    .end local v2    # "buffer":[B
    .end local v3    # "bytesRead":I
    :catchall_1
    move-exception v12

    goto :goto_0

    .restart local v2    # "buffer":[B
    .restart local v3    # "bytesRead":I
    :catch_1
    move-exception v12

    invoke-virtual {v13, v12}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_6
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    goto :goto_3

    .end local v2    # "buffer":[B
    .end local v3    # "bytesRead":I
    :catch_2
    move-exception v14

    invoke-virtual {v13, v14}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_7
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    goto/16 :goto_1
.end method

.method private setLinger(Ljava/net/Socket;)V
    .locals 3
    .param p1, "socket"    # Ljava/net/Socket;

    .prologue
    .line 99
    const/4 v1, 0x1

    const/16 v2, 0x3c

    :try_start_0
    invoke-virtual {p1, v1, v2}, Ljava/net/Socket;->setSoLinger(ZI)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :goto_0
    return-void

    .line 100
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ignore error during set linger."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2;->printInfoLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setupHeader(Ljava/io/OutputStream;J)V
    .locals 4
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "totalBytes"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 233
    sget-object v2, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2;->HTTP_1_1:[B

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 234
    sget-object v2, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2;->RESPONSE_CODE_200:[B

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 235
    const-string/jumbo v2, "setupHeader >> response code 200"

    invoke-direct {p0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2;->printInfoLog(Ljava/lang/String;)V

    .line 237
    move-wide v0, p2

    .line 238
    .local v0, "contentLength":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setupHeader >> contentLength "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2;->printInfoLog(Ljava/lang/String;)V

    .line 240
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 241
    sget-object v2, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2;->CONTENT_LENGTH:[B

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 242
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 243
    sget-object v2, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2;->NEW_LINE_BYTES:[B

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 246
    :cond_0
    const-string v2, "MP3"

    invoke-direct {p0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2;->getContentType(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 247
    const-string/jumbo v2, "setupHeader >> contentType MP3"

    invoke-direct {p0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2;->printLog(Ljava/lang/String;)V

    .line 248
    sget-object v2, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2;->ACCEPT_RANGES:[B

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 249
    sget-object v2, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2;->CONNECTION_CLOSE:[B

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 250
    sget-object v2, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2;->NEW_LINE_BYTES:[B

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 251
    return-void
.end method

.method private setupPartialHeader(Ljava/io/OutputStream;JJJ)V
    .locals 8
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "totalBytes"    # J
    .param p4, "startByte"    # J
    .param p6, "endByte"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 255
    const-wide/16 v4, 0x0

    cmp-long v3, p2, v4

    if-gtz v3, :cond_0

    .line 256
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Trying to response of partial request but total bytes is abnormal "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 260
    :cond_0
    sget-object v3, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2;->HTTP_1_1:[B

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write([B)V

    .line 261
    sget-object v3, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2;->RESPONSE_CODE_206:[B

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write([B)V

    .line 262
    const-string/jumbo v3, "setupPartialHeader >> response code 206"

    invoke-direct {p0, v3}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2;->printInfoLog(Ljava/lang/String;)V

    .line 264
    sub-long v4, p6, p4

    const-wide/16 v6, 0x1

    add-long v0, v4, v6

    .line 265
    .local v0, "contentLength":J
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setupPartialHeader >> contentLength "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2;->printInfoLog(Ljava/lang/String;)V

    .line 267
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-ltz v3, :cond_1

    .line 268
    sget-object v3, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2;->CONTENT_LENGTH:[B

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write([B)V

    .line 269
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write([B)V

    .line 270
    sget-object v3, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2;->NEW_LINE_BYTES:[B

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write([B)V

    .line 276
    :goto_0
    sget-object v3, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2;->CONTENT_RANGE:[B

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write([B)V

    .line 277
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p6, p7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 278
    .local v2, "range":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setupPartialHeader >> rangeLine "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2;->printInfoLog(Ljava/lang/String;)V

    .line 279
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write([B)V

    .line 280
    sget-object v3, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2;->NEW_LINE_BYTES:[B

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write([B)V

    .line 282
    const-string v3, "MP3"

    invoke-direct {p0, v3}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2;->getContentType(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write([B)V

    .line 283
    const-string/jumbo v3, "setupPartialHeader >> contentType MP3"

    invoke-direct {p0, v3}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2;->printLog(Ljava/lang/String;)V

    .line 284
    sget-object v3, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2;->ACCEPT_RANGES:[B

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write([B)V

    .line 285
    sget-object v3, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2;->CONNECTION_CLOSE:[B

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write([B)V

    .line 286
    sget-object v3, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2;->NEW_LINE_BYTES:[B

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write([B)V

    .line 287
    return-void

    .line 273
    .end local v2    # "range":Ljava/lang/String;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setupPartialHeader >> contentLength has error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2;->printErrorLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private temporaryPartialDownload(Ljava/io/OutputStream;Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2$Header;Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;JJJ)V
    .locals 12
    .param p1, "socketOut"    # Ljava/io/OutputStream;
    .param p2, "h"    # Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2$Header;
    .param p3, "iFile"    # Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;
    .param p4, "totalBytes"    # J
    .param p6, "existBytes"    # J
    .param p8, "startByte"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 195
    move-wide/from16 v0, p4

    invoke-direct {p0, p2, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2;->parseEndByte(Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2$Header;J)J

    move-result-wide v8

    .local v8, "endByte":J
    move-object v2, p0

    move-object v3, p1

    move-wide/from16 v4, p4

    move-wide/from16 v6, p8

    .line 196
    invoke-direct/range {v2 .. v9}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2;->setupPartialHeader(Ljava/io/OutputStream;JJJ)V

    .line 197
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 198
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "request to chain ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2;->mId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] Partial Head finished ----------------------- existBytes "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p6

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2;->printInfoLog(Ljava/lang/String;)V

    .line 200
    invoke-interface {p3}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;->getFileRequest()Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;

    move-result-object v11

    .line 201
    .local v11, "fileRequest":Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;
    invoke-virtual {v11}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;->getUrl()Ljava/lang/String;

    move-result-object v3

    .line 203
    .local v3, "url":Ljava/lang/String;
    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/HttpPartialDownloader;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v0, p8

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v4, p1

    move-wide/from16 v6, p8

    move-object v10, p3

    invoke-direct/range {v2 .. v10}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/HttpPartialDownloader;-><init>(Ljava/lang/String;Ljava/io/OutputStream;Ljava/lang/String;JJLcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;)V

    .line 205
    .local v2, "downloader":Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/HttpPartialDownloader;
    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/HttpPartialDownloader;->download()V

    .line 206
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 207
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "request to chain ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2;->mId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] Partial Body finished -----------------------"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2;->printInfoLog(Ljava/lang/String;)V

    .line 209
    return-void
.end method

.method private waitUntilBytesPrepared(Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;J)V
    .locals 8
    .param p1, "file"    # Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "bytesToBeSent"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 374
    monitor-enter p0

    .line 376
    :goto_0
    :try_start_0
    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;->isDead()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 377
    new-instance v3, Ljava/lang/IllegalAccessException;

    const-string v6, "File object already in dead."

    invoke-direct {v3, v6}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 412
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 379
    :cond_0
    :try_start_1
    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;->isLoadFinished()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 380
    monitor-exit p0

    .line 390
    :goto_1
    return-void

    .line 382
    :cond_1
    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;->getAvailableBytes()J

    move-result-wide v0

    .line 383
    .local v0, "available":J
    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;->getTotalBytes()J

    move-result-wide v4

    .line 384
    .local v4, "total":J
    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_2

    cmp-long v3, v0, v4

    if-nez v3, :cond_2

    .line 387
    monitor-exit p0

    goto :goto_1

    .line 389
    :cond_2
    cmp-long v3, v0, p2

    if-ltz v3, :cond_3

    .line 390
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 398
    :cond_3
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 407
    :goto_2
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "waitUntilBytesPrepared wake up ["

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 408
    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;->getAvailableBytes()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " / "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 409
    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;->getTotalBytes()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "]"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 407
    invoke-direct {p0, v3}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2;->printInfoLog(Ljava/lang/String;)V

    goto :goto_0

    .line 399
    :catch_0
    move-exception v2

    .line 400
    .local v2, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method

.method private waitUntilTotalBytesPrepared(Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;)V
    .locals 6
    .param p1, "file"    # Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 340
    monitor-enter p0

    .line 342
    :goto_0
    :try_start_0
    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;->isDead()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 343
    new-instance v1, Ljava/lang/IllegalAccessException;

    const-string v2, "File object already in dead."

    invoke-direct {v1, v2}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 369
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 345
    :cond_0
    :try_start_1
    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;->isLoadFinished()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 346
    monitor-exit p0

    .line 349
    :goto_1
    return-void

    .line 348
    :cond_1
    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;->getTotalBytes()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    .line 349
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 356
    :cond_2
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 364
    :goto_2
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "waitUntilBytesPrepared wake up ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 365
    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;->getAvailableBytes()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 366
    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;->getTotalBytes()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 364
    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2;->printInfoLog(Ljava/lang/String;)V

    goto :goto_0

    .line 357
    :catch_0
    move-exception v0

    .line 358
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method


# virtual methods
.method public onChangedFileLoad()V
    .locals 1

    .prologue
    .line 430
    monitor-enter p0

    .line 431
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 432
    monitor-exit p0

    .line 433
    return-void

    .line 432
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 75
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2;->mSocket:Ljava/net/Socket;

    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2;->setLinger(Ljava/net/Socket;)V

    .line 76
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2;->mSocket:Ljava/net/Socket;

    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2;->response(Ljava/net/Socket;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2;->mIFile:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;

    if-eqz v1, :cond_0

    .line 82
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2;->mIFile:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;

    invoke-interface {v1, p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;->unregisterListener(Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/OnFileLoadListener;)V

    .line 84
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2;->mSocket:Ljava/net/Socket;

    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2;->close(Ljava/net/Socket;)V

    .line 86
    :goto_0
    return-void

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 79
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2;->printErrorLog(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2;->mIFile:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;

    if-eqz v1, :cond_1

    .line 82
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2;->mIFile:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;

    invoke-interface {v1, p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;->unregisterListener(Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/OnFileLoadListener;)V

    .line 84
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2;->mSocket:Ljava/net/Socket;

    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2;->close(Ljava/net/Socket;)V

    goto :goto_0

    .line 81
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2;->mIFile:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;

    if-eqz v2, :cond_2

    .line 82
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2;->mIFile:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;

    invoke-interface {v2, p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;->unregisterListener(Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/OnFileLoadListener;)V

    .line 84
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2;->mSocket:Ljava/net/Socket;

    invoke-direct {p0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2;->close(Ljava/net/Socket;)V

    throw v1
.end method
