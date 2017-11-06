.class Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader$DownloadingFile;
.super Ljava/lang/Object;
.source "Downloader.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DownloadingFile"
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x20000

.field private static final BYTES_128K:I = 0x20000

.field private static final BYTES_3M:I = 0x300000

.field private static final BYTES_4K:I = 0x1000

.field private static final DOWNLOAD_BYTES_LIMIT_AT_ONCE:I = 0x300000

.field private static final NOTIFY_BYTE_THRESHHOLD:I = 0x20000

.field private static final PROPERTY_RANGE:Ljava/lang/String; = "Range"

.field private static final TEST_SLOW_NETWORK:Z = false

.field private static final VALUE_FORMAT_RANGE_BYTES:Ljava/lang/String; = "bytes=%d-"

.field private static final VALUE_FORMAT_RANGE_BYTES_FROM_TO:Ljava/lang/String; = "bytes=%d-%d"


# instance fields
.field private mExistBytes:J

.field private mFinished:Z

.field private mHasError:Z

.field private mIsActive:Z

.field private final mOnFileLoadListeners:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileLoadObservable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileLoadObservable",
            "<",
            "Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/OnFileLoadListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mPath:Ljava/lang/String;

.field private final mRequest:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;

.field private mTotalBytes:J

.field private mUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;Ljava/lang/String;)V
    .locals 4
    .param p1, "r"    # Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileLoadObservable;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileLoadObservable;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader$DownloadingFile;->mOnFileLoadListeners:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileLoadObservable;

    .line 144
    iput-wide v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader$DownloadingFile;->mExistBytes:J

    .line 146
    iput-wide v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader$DownloadingFile;->mTotalBytes:J

    .line 148
    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader$DownloadingFile;->mFinished:Z

    .line 150
    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader$DownloadingFile;->mHasError:Z

    .line 152
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader$DownloadingFile;->mIsActive:Z

    .line 155
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader$DownloadingFile;->mRequest:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;

    .line 156
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader$DownloadingFile;->mPath:Ljava/lang/String;

    .line 157
    iget-wide v0, p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;->totalBytes:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 158
    iget-wide v0, p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;->totalBytes:J

    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader$DownloadingFile;->mTotalBytes:J

    .line 160
    :cond_0
    return-void
.end method

.method private getDownloadPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader$DownloadingFile;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method private prepare(Ljava/net/HttpURLConnection;)V
    .locals 22
    .param p1, "connection"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 277
    new-instance v3, Ljava/io/File;

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader$DownloadingFile;->getDownloadPath()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v3, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 278
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 279
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 280
    .local v4, "fileSize":J
    const-wide/16 v14, 0x0

    cmp-long v13, v4, v14

    if-lez v13, :cond_0

    .line 281
    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader$DownloadingFile;->mExistBytes:J

    .line 297
    .end local v4    # "fileSize":J
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader$DownloadingFile;->mTotalBytes:J

    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-gtz v13, :cond_1

    .line 299
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader$DownloadingFile;->mRequest:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;

    iget-object v13, v13, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;->urlRetriever:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest$UrlRetriever;

    invoke-interface {v13}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest$UrlRetriever;->getTotalBytes()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader$DownloadingFile;->mTotalBytes:J

    .line 301
    :cond_1
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader$DownloadingFile;->mTotalBytes:J

    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-nez v13, :cond_3

    const/4 v12, 0x1

    .line 302
    .local v12, "unknownTotalBytes":Z
    :goto_1
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader$DownloadingFile;->mTotalBytes:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader$DownloadingFile;->mExistBytes:J

    move-wide/from16 v16, v0

    sub-long v8, v14, v16

    .line 303
    .local v8, "remain":J
    if-nez v12, :cond_4

    const-wide/16 v14, 0x0

    cmp-long v13, v8, v14

    if-nez v13, :cond_4

    .line 304
    new-instance v13, Ljava/io/IOException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "bytes was wrong mTotalBytes "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader$DownloadingFile;->mTotalBytes:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " mExistBytes "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader$DownloadingFile;->mExistBytes:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 284
    .end local v8    # "remain":J
    .end local v12    # "unknownTotalBytes":Z
    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    .line 285
    .local v6, "parent":Ljava/io/File;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    move-result v13

    if-eqz v13, :cond_0

    goto :goto_0

    .line 301
    .end local v6    # "parent":Ljava/io/File;
    :cond_3
    const/4 v12, 0x0

    goto :goto_1

    .line 309
    .restart local v8    # "remain":J
    .restart local v12    # "unknownTotalBytes":Z
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader$DownloadingFile;->mRequest:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;

    iget-object v13, v13, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;->options:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest$Options;

    iget-boolean v13, v13, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest$Options;->partialDownload:Z

    if-eqz v13, :cond_5

    const-wide/32 v14, 0x300000

    cmp-long v13, v8, v14

    if-lez v13, :cond_5

    .line 310
    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v14, "bytes=%d-%d"

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader$DownloadingFile;->mExistBytes:J

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader$DownloadingFile;->mExistBytes:J

    move-wide/from16 v18, v0

    const-wide/32 v20, 0x300000

    add-long v18, v18, v20

    .line 311
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v15, v16

    .line 310
    invoke-static {v13, v14, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 315
    .local v2, "bytesRange":Ljava/lang/String;
    :goto_2
    const-string v13, "Range"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    const/4 v13, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 322
    invoke-virtual/range {p1 .. p1}, Ljava/net/HttpURLConnection;->connect()V

    .line 324
    invoke-virtual/range {p1 .. p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    .line 325
    .local v7, "responseCode":I
    const/16 v13, 0xc8

    if-eq v7, v13, :cond_6

    const/16 v13, 0xce

    if-eq v7, v13, :cond_6

    .line 327
    new-instance v13, Ljava/io/IOException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "HTTP response error code: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 313
    .end local v2    # "bytesRange":Ljava/lang/String;
    .end local v7    # "responseCode":I
    :cond_5
    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v14, "bytes=%d-"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader$DownloadingFile;->mExistBytes:J

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v13, v14, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "bytesRange":Ljava/lang/String;
    goto :goto_2

    .line 330
    .restart local v7    # "responseCode":I
    :cond_6
    if-eqz v12, :cond_7

    .line 332
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader$DownloadingFile;->mExistBytes:J

    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-lez v13, :cond_8

    .line 333
    invoke-virtual/range {p1 .. p1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v13

    int-to-long v14, v13

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader$DownloadingFile;->mExistBytes:J

    move-wide/from16 v16, v0

    add-long v10, v14, v16

    .line 337
    .local v10, "totalBytes":J
    :goto_3
    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader$DownloadingFile;->mTotalBytes:J

    .line 343
    .end local v10    # "totalBytes":J
    :cond_7
    return-void

    .line 335
    :cond_8
    invoke-virtual/range {p1 .. p1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v13

    int-to-long v10, v13

    .restart local v10    # "totalBytes":J
    goto :goto_3
.end method

.method private testSleep(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 375
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 379
    :goto_0
    return-void

    .line 376
    :catch_0
    move-exception v0

    .line 377
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method private writeToFile(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 12
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "targetPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/high16 v10, 0x20000

    .line 347
    new-instance v3, Ljava/io/FileOutputStream;

    const/4 v4, 0x1

    invoke-direct {v3, p2, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    .line 346
    .local v3, "outputStream":Ljava/io/OutputStream;
    const/4 v5, 0x0

    .line 349
    const/4 v2, 0x0

    .line 350
    .local v2, "bytesReadToSend":I
    const/high16 v4, 0x20000

    :try_start_0
    new-array v0, v4, [B

    .line 351
    .local v0, "buffer":[B
    :cond_0
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "bytesRead":I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    .line 352
    iget-boolean v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader$DownloadingFile;->mIsActive:Z

    if-nez v4, :cond_4

    .line 366
    :cond_1
    if-ge v2, v10, :cond_2

    .line 367
    iget-wide v6, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader$DownloadingFile;->mExistBytes:J

    int-to-long v8, v2

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader$DownloadingFile;->mExistBytes:J

    .line 368
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader$DownloadingFile;->notifyChanges()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 370
    :cond_2
    if-eqz v3, :cond_3

    if-eqz v5, :cond_6

    :try_start_1
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 371
    :cond_3
    :goto_1
    return-void

    .line 355
    :cond_4
    const/4 v4, 0x0

    :try_start_2
    invoke-virtual {v3, v0, v4, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 356
    add-int/2addr v2, v1

    .line 357
    if-lt v2, v10, :cond_0

    .line 358
    iget-wide v6, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader$DownloadingFile;->mExistBytes:J

    int-to-long v8, v2

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader$DownloadingFile;->mExistBytes:J

    .line 359
    const/4 v2, 0x0

    .line 360
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader$DownloadingFile;->notifyChanges()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 346
    .end local v0    # "buffer":[B
    .end local v1    # "bytesRead":I
    :catch_0
    move-exception v4

    :try_start_3
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 370
    :catchall_0
    move-exception v5

    move-object v11, v5

    move-object v5, v4

    move-object v4, v11

    :goto_2
    if-eqz v3, :cond_5

    if-eqz v5, :cond_7

    :try_start_4
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    :cond_5
    :goto_3
    throw v4

    .restart local v0    # "buffer":[B
    .restart local v1    # "bytesRead":I
    :catch_1
    move-exception v4

    invoke-virtual {v5, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_6
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    goto :goto_1

    .end local v0    # "buffer":[B
    .end local v1    # "bytesRead":I
    :catch_2
    move-exception v6

    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_7
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    goto :goto_3

    :catchall_1
    move-exception v4

    goto :goto_2
.end method


# virtual methods
.method public active(Z)V
    .locals 0
    .param p1, "active"    # Z

    .prologue
    .line 179
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader$DownloadingFile;->mIsActive:Z

    .line 180
    return-void
.end method

.method clearObservers()V
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader$DownloadingFile;->mOnFileLoadListeners:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileLoadObservable;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileLoadObservable;->clear()V

    .line 383
    return-void
.end method

.method download()V
    .locals 6
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 243
    new-instance v3, Ljava/net/URL;

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader$DownloadingFile;->getDownloadingUrl()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 244
    .local v3, "url":Ljava/net/URL;
    const/4 v1, 0x0

    .line 245
    .local v1, "connection":Ljava/net/HttpURLConnection;
    const/4 v2, 0x0

    .line 247
    .local v2, "inputStream":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    .line 248
    const/16 v4, 0x1388

    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 249
    const/16 v4, 0x2710

    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 250
    const-string v4, "GET"

    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 252
    const-string v4, "Cache-Control"

    const-string v5, "no-cache"

    invoke-virtual {v1, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 255
    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader$DownloadingFile;->prepare(Ljava/net/HttpURLConnection;)V

    .line 256
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 257
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader$DownloadingFile;->getDownloadPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v4}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader$DownloadingFile;->writeToFile(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    if-eqz v1, :cond_0

    .line 261
    :try_start_1
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 263
    :cond_0
    if-eqz v2, :cond_1

    .line 264
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2

    .line 274
    :cond_1
    :goto_0
    return-void

    .line 259
    :catchall_0
    move-exception v4

    .line 260
    if-eqz v1, :cond_2

    .line 261
    :try_start_2
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 263
    :cond_2
    if-eqz v2, :cond_3

    .line 264
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    .line 272
    :cond_3
    :goto_1
    throw v4

    .line 269
    :catch_0
    move-exception v5

    goto :goto_1

    .line 266
    :catch_1
    move-exception v5

    goto :goto_1

    .line 269
    :catch_2
    move-exception v4

    goto :goto_0

    .line 266
    :catch_3
    move-exception v4

    goto :goto_0
.end method

.method finished(Z)V
    .locals 1
    .param p1, "hasError"    # Z

    .prologue
    .line 386
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader$DownloadingFile;->mFinished:Z

    .line 387
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader$DownloadingFile;->mHasError:Z

    .line 388
    return-void
.end method

.method public getAvailableBytes()J
    .locals 2

    .prologue
    .line 214
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader$DownloadingFile;->mExistBytes:J

    return-wide v0
.end method

.method getDownloadingUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader$DownloadingFile;->mRequest:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader$DownloadingFile;->getDownloadPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFileRequest()Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader$DownloadingFile;->mRequest:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;

    return-object v0
.end method

.method public getPlayingUri()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader$DownloadingFile;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 171
    const-string v0, "download"

    .line 172
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader$DownloadingFile;->getDownloadPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileChain$PlayingUri;->obtain(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader$DownloadingFile;->mUri:Landroid/net/Uri;

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader$DownloadingFile;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getTotalBytes()J
    .locals 2

    .prologue
    .line 209
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader$DownloadingFile;->mTotalBytes:J

    return-wide v0
.end method

.method hasError()Z
    .locals 1

    .prologue
    .line 391
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader$DownloadingFile;->mHasError:Z

    return v0
.end method

.method public isDead()Z
    .locals 1

    .prologue
    .line 184
    const/4 v0, 0x0

    return v0
.end method

.method public isLoadFinished()Z
    .locals 1

    .prologue
    .line 199
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader$DownloadingFile;->mFinished:Z

    return v0
.end method

.method notifyChanges()V
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader$DownloadingFile;->mOnFileLoadListeners:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileLoadObservable;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileLoadObservable;->hasObserver()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader$DownloadingFile;->mOnFileLoadListeners:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileLoadObservable;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileLoadObservable;->notifyObservers()V

    .line 231
    :cond_0
    return-void
.end method

.method public obtainInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 194
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader$DownloadingFile;->mPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public registerListener(Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/OnFileLoadListener;)V
    .locals 1
    .param p1, "l"    # Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/OnFileLoadListener;

    .prologue
    .line 219
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader$DownloadingFile;->mOnFileLoadListeners:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileLoadObservable;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileLoadObservable;->registerObserver(Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/OnFileLoadListener;)V

    .line 220
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    .line 165
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unregisterListener(Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/OnFileLoadListener;)V
    .locals 1
    .param p1, "l"    # Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/OnFileLoadListener;

    .prologue
    .line 224
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader$DownloadingFile;->mOnFileLoadListeners:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileLoadObservable;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileLoadObservable;->unregisterObserver(Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/OnFileLoadListener;)V

    .line 225
    return-void
.end method
