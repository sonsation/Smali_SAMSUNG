.class final Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;
.super Ljava/lang/Object;
.source "CacheFile.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;
.implements Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/OnFileLoadListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile$DownloadFailException;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x1000

.field private static final BYTES_1MB:J = 0x100000L

.field private static final DEBUG:Z = false

.field private static final DEBUG_LIFECYCLE:Z = false

.field private static final LIFECYCLE:Ljava/lang/String; = "LifeCycle: "

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV-PlayerServer"

.field private static final MAX_ERROR_COUNT:I = 0x3

.field private static final NOTIFY_BYTE_THRESHHOLD:J = 0x100000L

.field private static final POST_FIX_TEMP:Ljava/lang/String; = "TEMP"

.field private static final SUB_TAG:Ljava/lang/String; = "CacheManager> "

.field private static final WAIT_TIME_OUT:I = 0x1388

.field private static final WAIT_TIME_OUT_WHEN_DOWNLOAD_FAIL:I = 0x1f4


# instance fields
.field private mBytesPrepared:Z

.field private mCacheData:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager$CacheData;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mDecryptedPath:Ljava/lang/String;

.field private mDownloadingFile:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;

.field private mErrorCount:I

.field private mExistBytes:J

.field private final mFileRequest:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;

.field private mHasExplicitRequest:Z

.field private mIsActive:Z

.field private mIsContentLoadFinished:Z

.field private mIsDead:Z

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

.field private final mSecure:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/secure/ISecure;

.field private mSkippableCacheFile:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;

.field private mUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager$CacheData;Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/secure/ISecure;Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "request"    # Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;
    .param p3, "data"    # Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager$CacheData;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "secure"    # Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/secure/ISecure;
    .param p5, "basePath"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileLoadObservable;

    invoke-direct {v1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileLoadObservable;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->mOnFileLoadListeners:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileLoadObservable;

    .line 69
    iput v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->mErrorCount:I

    .line 71
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->mExistBytes:J

    .line 73
    iput-boolean v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->mIsContentLoadFinished:Z

    .line 75
    iput-boolean v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->mBytesPrepared:Z

    .line 77
    iput-boolean v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->mIsActive:Z

    .line 79
    iput-boolean v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->mHasExplicitRequest:Z

    .line 81
    iput-boolean v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->mIsDead:Z

    .line 85
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->mContext:Landroid/content/Context;

    .line 86
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->mFileRequest:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;

    .line 87
    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->mCacheData:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager$CacheData;

    .line 88
    iput-object p4, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->mSecure:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/secure/ISecure;

    .line 89
    if-nez p3, :cond_0

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p2, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;->id:Ljava/lang/String;

    .line 91
    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;->parseCp(Ljava/lang/String;)I

    move-result v2

    invoke-static {p5, v2}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager;->getBaseCachePath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->mDecryptedPath:Ljava/lang/String;

    .line 104
    :goto_0
    return-void

    .line 94
    :cond_0
    invoke-direct {p0, p3}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->getPurePath(Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager$CacheData;)Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, "purePath":Ljava/lang/String;
    iget-boolean v1, p3, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager$CacheData;->isSameQuality:Z

    if-eqz v1, :cond_1

    .line 96
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->mDecryptedPath:Ljava/lang/String;

    goto :goto_0

    .line 98
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "TEMP"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->mDecryptedPath:Ljava/lang/String;

    goto :goto_0
.end method

.method private decryptBytes(Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager$CacheData;)Z
    .locals 17
    .param p1, "cacheData"    # Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager$CacheData;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 360
    :try_start_0
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->mSecure:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/secure/ISecure;

    .line 361
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->getPurePath(Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager$CacheData;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheSaver;->getCacheId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager$CacheData;->path:Ljava/lang/String;

    invoke-interface {v8, v9, v10}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/secure/ISecure;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v6

    .line 360
    .local v6, "in":Ljava/io/InputStream;
    const/4 v10, 0x0

    .line 362
    :try_start_1
    new-instance v7, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->mDecryptedPath:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 360
    .local v7, "out":Ljava/io/OutputStream;
    const/4 v9, 0x0

    .line 364
    const/4 v4, 0x0

    .line 365
    .local v4, "bytesReadToSend":I
    const/16 v8, 0x1000

    :try_start_2
    new-array v2, v8, [B

    .line 366
    .local v2, "buffer":[B
    :cond_0
    :goto_0
    invoke-virtual {v6, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .local v3, "bytesRead":I
    const/4 v8, -0x1

    if-eq v3, v8, :cond_3

    .line 367
    const/4 v8, 0x0

    invoke-virtual {v7, v2, v8, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 368
    add-int/2addr v4, v3

    .line 369
    int-to-long v12, v4

    const-wide/32 v14, 0x100000

    cmp-long v8, v12, v14

    if-ltz v8, :cond_0

    .line 370
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->mExistBytes:J

    int-to-long v14, v4

    add-long/2addr v12, v14

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->mExistBytes:J

    .line 371
    const/4 v4, 0x0

    .line 372
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->notifyChanges()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    goto :goto_0

    .line 360
    .end local v2    # "buffer":[B
    .end local v3    # "bytesRead":I
    :catch_0
    move-exception v8

    :try_start_3
    throw v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 379
    :catchall_0
    move-exception v9

    move-object/from16 v16, v9

    move-object v9, v8

    move-object/from16 v8, v16

    :goto_1
    if-eqz v7, :cond_1

    if-eqz v9, :cond_8

    :try_start_4
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_1
    :goto_2
    :try_start_5
    throw v8
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 360
    .end local v4    # "bytesReadToSend":I
    .end local v7    # "out":Ljava/io/OutputStream;
    :catch_1
    move-exception v8

    :try_start_6
    throw v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 379
    :catchall_1
    move-exception v9

    move-object/from16 v16, v9

    move-object v9, v8

    move-object/from16 v8, v16

    :goto_3
    if-eqz v6, :cond_2

    if-eqz v9, :cond_a

    :try_start_7
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    :cond_2
    :goto_4
    :try_start_8
    throw v8
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .end local v6    # "in":Ljava/io/InputStream;
    :catch_2
    move-exception v5

    .line 384
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 385
    const/4 v8, 0x0

    .line 387
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_5
    return v8

    .line 375
    .restart local v2    # "buffer":[B
    .restart local v3    # "bytesRead":I
    .restart local v4    # "bytesReadToSend":I
    .restart local v6    # "in":Ljava/io/InputStream;
    .restart local v7    # "out":Ljava/io/OutputStream;
    :cond_3
    int-to-long v12, v4

    const-wide/32 v14, 0x100000

    cmp-long v8, v12, v14

    if-gez v8, :cond_4

    .line 376
    :try_start_9
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->mExistBytes:J

    int-to-long v14, v4

    add-long/2addr v12, v14

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->mExistBytes:J

    .line 377
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->notifyChanges()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 379
    :cond_4
    if-eqz v7, :cond_5

    if-eqz v9, :cond_7

    :try_start_a
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :cond_5
    :goto_6
    if-eqz v6, :cond_6

    if-eqz v10, :cond_9

    :try_start_b
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_5
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    .line 387
    :cond_6
    :goto_7
    const/4 v8, 0x1

    goto :goto_5

    .line 379
    :catch_3
    move-exception v8

    :try_start_c
    invoke-virtual {v9, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6

    .end local v2    # "buffer":[B
    .end local v3    # "bytesRead":I
    .end local v4    # "bytesReadToSend":I
    .end local v7    # "out":Ljava/io/OutputStream;
    :catchall_2
    move-exception v8

    move-object v9, v10

    goto :goto_3

    .restart local v2    # "buffer":[B
    .restart local v3    # "bytesRead":I
    .restart local v4    # "bytesReadToSend":I
    .restart local v7    # "out":Ljava/io/OutputStream;
    :cond_7
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    goto :goto_6

    .end local v2    # "buffer":[B
    .end local v3    # "bytesRead":I
    :catch_4
    move-exception v11

    invoke-virtual {v9, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_8
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    goto :goto_2

    .restart local v2    # "buffer":[B
    .restart local v3    # "bytesRead":I
    :catch_5
    move-exception v8

    :try_start_d
    invoke-virtual {v10, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_7

    :cond_9
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    goto :goto_7

    .end local v2    # "buffer":[B
    .end local v3    # "bytesRead":I
    .end local v4    # "bytesReadToSend":I
    .end local v7    # "out":Ljava/io/OutputStream;
    :catch_6
    move-exception v10

    invoke-virtual {v9, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_a
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2

    goto :goto_4

    .restart local v4    # "bytesReadToSend":I
    .restart local v7    # "out":Ljava/io/OutputStream;
    :catchall_3
    move-exception v8

    goto :goto_1
.end method

.method private delete(Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 470
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 471
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 472
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 474
    :cond_0
    return-void
.end method

.method private deleteFileIfNotUse()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 460
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->mExistBytes:J

    .line 461
    iput-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->mIsContentLoadFinished:Z

    .line 462
    iput-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->mBytesPrepared:Z

    .line 463
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->mDecryptedPath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->delete(Ljava/lang/String;)V

    .line 467
    return-void
.end method

.method private getPurePath(Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager$CacheData;)Ljava/lang/String;
    .locals 3
    .param p1, "data"    # Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager$CacheData;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 108
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager$CacheData;->path:Ljava/lang/String;

    .line 109
    .local v0, "encryptedPath":Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->mSecure:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/secure/ISecure;

    invoke-interface {v2}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/secure/ISecure;->getPostFix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 110
    .local v1, "index":I
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private hasClient()Z
    .locals 1

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->mIsActive:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->mOnFileLoadListeners:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileLoadObservable;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileLoadObservable;->hasObserver()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isCachingCondition(Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;)Z
    .locals 4
    .param p1, "fileRequest"    # Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;
    .param p2, "file"    # Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;

    .prologue
    .line 452
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;->options:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest$Options;

    iget-boolean v0, v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest$Options;->saveFullCacheOnly:Z

    if-eqz v0, :cond_0

    .line 453
    invoke-interface {p2}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;->getTotalBytes()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    invoke-interface {p2}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;->getAvailableBytes()J

    move-result-wide v0

    invoke-interface {p2}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;->getTotalBytes()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isExistFile()Z
    .locals 6

    .prologue
    .line 313
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 314
    .local v0, "decryptedFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->getAvailableBytes()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isNeedToDownloadRemainBytes(Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;)Z
    .locals 4
    .param p1, "fileRequest"    # Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;
    .param p2, "downloadFile"    # Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;

    .prologue
    .line 447
    if-eqz p2, :cond_0

    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;->options:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest$Options;

    iget-boolean v0, v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest$Options;->partialDownload:Z

    if-eqz v0, :cond_1

    .line 448
    invoke-interface {p2}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;->getAvailableBytes()J

    move-result-wide v0

    invoke-interface {p2}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;->getTotalBytes()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyChanges()V
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->mOnFileLoadListeners:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileLoadObservable;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileLoadObservable;->hasObserver()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->mOnFileLoadListeners:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileLoadObservable;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileLoadObservable;->notifyObservers()V

    .line 310
    :cond_0
    return-void
.end method

.method private printErrorLog(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 497
    const-string v0, "SMUSIC-SV-PlayerServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CacheManager> [id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->mFileRequest:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;

    iget-object v2, v2, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;->id:Ljava/lang/String;

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

    .line 498
    return-void
.end method

.method private printErrorWithCallStackLog(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 501
    const-string v0, "SMUSIC-SV-PlayerServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CacheManager> [id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->mFileRequest:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;

    iget-object v2, v2, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 502
    return-void
.end method

.method private printInfoLog(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 489
    const-string v0, "SMUSIC-SV-PlayerServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CacheManager> [id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->mFileRequest:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;

    iget-object v2, v2, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;->id:Ljava/lang/String;

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

    .line 490
    return-void
.end method

.method private printLifeCycleLog(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 505
    const-string v0, "SMUSIC-SV-PlayerServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CacheManager> LifeCycle: [id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->mFileRequest:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;

    iget-object v2, v2, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    return-void
.end method

.method private printLifeCycleLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 509
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CacheManager> LifeCycle: [id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->mFileRequest:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;

    iget-object v3, v3, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 510
    .local v1, "prefix":Ljava/lang/String;
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v3, "%-50s | %-20s | %s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    aput-object p2, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 511
    .local v0, "log":Ljava/lang/String;
    const-string v2, "SMUSIC-SV-PlayerServer"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    return-void
.end method

.method private printLog(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 485
    const-string v0, "SMUSIC-SV-PlayerServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CacheManager> [id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->mFileRequest:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;

    iget-object v2, v2, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;->id:Ljava/lang/String;

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

    .line 486
    return-void
.end method

.method private printWarningLog(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 493
    const-string v0, "SMUSIC-SV-PlayerServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CacheManager> [id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->mFileRequest:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;

    iget-object v2, v2, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    return-void
.end method

.method private requestDecrypt(Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;)V
    .locals 6
    .param p1, "fileRequest"    # Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile$DownloadFailException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    .line 321
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->mCacheData:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager$CacheData;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->decryptBytes(Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager$CacheData;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->mBytesPrepared:Z

    .line 331
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->mBytesPrepared:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->mCacheData:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager$CacheData;

    iget-wide v0, v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager$CacheData;->totalBytes:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->mExistBytes:J

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->mCacheData:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager$CacheData;

    iget-wide v2, v2, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager$CacheData;->totalBytes:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 332
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cached data is wrong, delete it and cache it again. total bytes "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->mCacheData:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager$CacheData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->printErrorLog(Ljava/lang/String;)V

    .line 334
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->mDecryptedPath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->delete(Ljava/lang/String;)V

    .line 335
    iput-wide v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->mExistBytes:J

    .line 336
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->retryCache(Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;)V

    .line 348
    :cond_1
    :goto_0
    return-void

    .line 338
    :cond_2
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->mExistBytes:J

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->mCacheData:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager$CacheData;

    iget-wide v2, v2, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager$CacheData;->totalBytes:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 339
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->mIsContentLoadFinished:Z

    goto :goto_0

    .line 340
    :cond_3
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->mExistBytes:J

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->mCacheData:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager$CacheData;

    iget-wide v2, v2, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager$CacheData;->totalBytes:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 341
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->mCacheData:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager$CacheData;

    iget-boolean v0, v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager$CacheData;->isSameQuality:Z

    if-eqz v0, :cond_4

    .line 342
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->requestDownload(Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;)V

    goto :goto_0

    .line 344
    :cond_4
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->retryCache(Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;)V

    goto :goto_0
.end method

.method private requestDownload(Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;)V
    .locals 11
    .param p1, "fileRequest"    # Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile$DownloadFailException;
        }
    .end annotation

    .prologue
    .line 391
    const-string/jumbo v0, "start download"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->printLifeCycleLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;->id:Ljava/lang/String;

    iget-object v1, p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;->urlRetriever:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest$UrlRetriever;

    iget-wide v2, p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;->totalBytes:J

    iget v4, p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;->secureType:I

    iget-object v5, p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;->serverTimeStamp:Ljava/lang/String;

    iget-object v6, p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;->options:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest$Options;

    .line 393
    invoke-static/range {v0 .. v6}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;->obtain(Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest$UrlRetriever;JILjava/lang/String;Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest$Options;)Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;

    move-result-object v7

    .line 395
    .local v7, "decryptedFile":Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;
    const/4 v8, 0x0

    .line 396
    .local v8, "downloadFile":Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader$DownloadingFile;
    :goto_0
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->mIsActive:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, v8}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->isNeedToDownloadRemainBytes(Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 397
    new-instance v8, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader$DownloadingFile;

    .end local v8    # "downloadFile":Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader$DownloadingFile;
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->mDecryptedPath:Ljava/lang/String;

    invoke-direct {v8, v7, v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader$DownloadingFile;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;Ljava/lang/String;)V

    .line 398
    .restart local v8    # "downloadFile":Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader$DownloadingFile;
    iput-object v8, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->mDownloadingFile:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;

    .line 399
    invoke-virtual {v8, p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader$DownloadingFile;->registerListener(Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/OnFileLoadListener;)V

    .line 401
    :try_start_0
    invoke-virtual {v8}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader$DownloadingFile;->download()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 412
    invoke-virtual {v8, p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader$DownloadingFile;->unregisterListener(Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/OnFileLoadListener;)V

    goto :goto_0

    .line 402
    :catch_0
    move-exception v9

    .line 403
    .local v9, "e":Ljava/io/IOException;
    :try_start_1
    const-string v0, "failed download"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 404
    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 403
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->printLifeCycleLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    .line 406
    invoke-direct {p0, v8}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->throwDownloadExceptionIfExceedMaxCount(Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader$DownloadingFile;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 412
    invoke-virtual {v8, p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader$DownloadingFile;->unregisterListener(Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/OnFileLoadListener;)V

    goto :goto_0

    .line 407
    .end local v9    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v9

    .line 409
    .local v9, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :try_start_2
    const-string v0, "ArrayIndexOutOfBoundsException but this seems okhttp bug."

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 410
    invoke-virtual {v9}, Ljava/lang/ArrayIndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 409
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->printLifeCycleLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 412
    invoke-virtual {v8, p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader$DownloadingFile;->unregisterListener(Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/OnFileLoadListener;)V

    goto :goto_0

    .end local v9    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :catchall_0
    move-exception v0

    invoke-virtual {v8, p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader$DownloadingFile;->unregisterListener(Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/OnFileLoadListener;)V

    throw v0

    .line 415
    :cond_0
    const-string v0, "finished download"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->printLifeCycleLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    if-eqz v8, :cond_2

    invoke-direct {p0, p1, v8}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->isCachingCondition(Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 417
    new-instance v10, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheSaver;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->mSecure:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/secure/ISecure;

    invoke-direct {v10, v0, p1, v1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheSaver;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/secure/ISecure;)V

    .line 418
    .local v10, "saver":Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheSaver;
    const-string/jumbo v0, "start encrypt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->printLifeCycleLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    invoke-virtual {v10, v8}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheSaver;->encrypt(Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;)Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager$CacheData;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->mCacheData:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager$CacheData;

    .line 420
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->mCacheData:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager$CacheData;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager$CacheData;->isSkippableFile()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 421
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/SkippableCacheFile;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->mCacheData:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager$CacheData;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->mSecure:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/secure/ISecure;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/SkippableCacheFile;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager$CacheData;Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/secure/ISecure;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->mSkippableCacheFile:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;

    .line 423
    :cond_1
    const-string v0, "finished encrypt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->printLifeCycleLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    .end local v10    # "saver":Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheSaver;
    :cond_2
    return-void
.end method

.method private retryCache(Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;)V
    .locals 1
    .param p1, "fileRequest"    # Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile$DownloadFailException;
        }
    .end annotation

    .prologue
    .line 351
    const-string v0, "Abnormal cache file, delete original one and download again."

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->printErrorLog(Ljava/lang/String;)V

    .line 352
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->mCacheData:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager$CacheData;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager$CacheData;->path:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->delete(Ljava/lang/String;)V

    .line 353
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->deleteFileIfNotUse()V

    .line 354
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->mCacheData:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager$CacheData;

    .line 355
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->requestDownload(Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;)V

    .line 356
    return-void
.end method

.method private throwDownloadExceptionIfExceedMaxCount(Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader$DownloadingFile;)V
    .locals 2
    .param p1, "downloadFile"    # Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader$DownloadingFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile$DownloadFailException;
        }
    .end annotation

    .prologue
    .line 429
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->mErrorCount:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 431
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->mIsDead:Z

    .line 432
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile$DownloadFailException;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile$DownloadFailException;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader$DownloadingFile;)V

    throw v0

    .line 434
    :cond_0
    monitor-enter p0

    .line 436
    const-wide/16 v0, 0x1f4

    :try_start_0
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    .line 437
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->mIsDead:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->mIsActive:Z

    if-nez v0, :cond_2

    .line 438
    :cond_1
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile$DownloadFailException;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile$DownloadFailException;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader$DownloadingFile;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 440
    :catch_0
    move-exception v0

    .line 442
    :cond_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 443
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->mErrorCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->mErrorCount:I

    .line 444
    return-void

    .line 442
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private waitNewClient()V
    .locals 2

    .prologue
    .line 171
    monitor-enter p0

    .line 172
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->mIsActive:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->mOnFileLoadListeners:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileLoadObservable;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileLoadObservable;->hasObserver()Z

    move-result v1

    if-nez v1, :cond_1

    .line 173
    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->mHasExplicitRequest:Z

    if-eqz v1, :cond_0

    .line 178
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    :goto_1
    return-void

    .line 184
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 185
    :catch_0
    move-exception v0

    .line 186
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 189
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method private waitNewClientInSecond()V
    .locals 4

    .prologue
    .line 193
    monitor-enter p0

    .line 194
    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->mIsActive:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->mOnFileLoadListeners:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileLoadObservable;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileLoadObservable;->hasObserver()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 199
    const-wide/16 v2, 0x1388

    :try_start_1
    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 204
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit p0

    .line 205
    return-void

    .line 200
    :catch_0
    move-exception v0

    .line 201
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 204
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private waitNoClient()V
    .locals 2

    .prologue
    .line 152
    monitor-enter p0

    .line 153
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->hasClient()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->isExistFile()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 159
    :catch_0
    move-exception v0

    .line 160
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 163
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 164
    return-void
.end method


# virtual methods
.method public active(Z)V
    .locals 2
    .param p1, "active"    # Z

    .prologue
    .line 289
    monitor-enter p0

    .line 293
    :try_start_0
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->mIsActive:Z

    .line 295
    if-eqz p1, :cond_1

    .line 296
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->mHasExplicitRequest:Z

    .line 302
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 303
    monitor-exit p0

    .line 304
    return-void

    .line 298
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->mDownloadingFile:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->mDownloadingFile:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;->active(Z)V

    goto :goto_0

    .line 303
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAvailableBytes()J
    .locals 2

    .prologue
    .line 250
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->mSkippableCacheFile:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->mExistBytes:J

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->mSkippableCacheFile:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;->getAvailableBytes()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->mSkippableCacheFile:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->mDecryptedPath:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->mSkippableCacheFile:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;->getFilePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getFileRequest()Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->mFileRequest:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;

    return-object v0
.end method

.method public getPlayingUri()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 281
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 282
    const-string v0, "cache"

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileChain$PlayingUri;->obtain(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->mUri:Landroid/net/Uri;

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getTotalBytes()J
    .locals 2

    .prologue
    .line 244
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->mCacheData:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager$CacheData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->mCacheData:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager$CacheData;

    iget-wide v0, v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager$CacheData;->totalBytes:J

    .line 245
    :goto_0
    return-wide v0

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->mDownloadingFile:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->mDownloadingFile:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;

    .line 245
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;->getTotalBytes()J

    move-result-wide v0

    goto :goto_0
.end method

.method public isDead()Z
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->mSkippableCacheFile:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->mIsDead:Z

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->mSkippableCacheFile:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;->isDead()Z

    move-result v0

    goto :goto_0
.end method

.method public isLoadFinished()Z
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->mSkippableCacheFile:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->mIsContentLoadFinished:Z

    .line 234
    :goto_0
    return v0

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->mSkippableCacheFile:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;

    .line 234
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;->isLoadFinished()Z

    move-result v0

    goto :goto_0
.end method

.method public obtainInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 227
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->mSkippableCacheFile:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->mDecryptedPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 228
    :goto_0
    return-object v0

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->mSkippableCacheFile:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;

    .line 228
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;->obtainInputStream()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0
.end method

.method public onChangedFileLoad()V
    .locals 2

    .prologue
    .line 478
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->mDownloadingFile:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;

    if-eqz v0, :cond_0

    .line 479
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->mDownloadingFile:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;->getAvailableBytes()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->mExistBytes:J

    .line 481
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->notifyChanges()V

    .line 482
    return-void
.end method

.method public registerListener(Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/OnFileLoadListener;)V
    .locals 1
    .param p1, "l"    # Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/OnFileLoadListener;

    .prologue
    .line 258
    monitor-enter p0

    .line 259
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->mHasExplicitRequest:Z

    .line 260
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->mOnFileLoadListeners:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileLoadObservable;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileLoadObservable;->registerObserver(Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/OnFileLoadListener;)V

    .line 261
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 262
    monitor-exit p0

    .line 263
    return-void

    .line 262
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 116
    :cond_0
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->mIsActive:Z

    if-eqz v1, :cond_1

    .line 117
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->waitNewClient()V

    .line 118
    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->mIsActive:Z
    :try_end_0
    .catch Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile$DownloadFailException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    .line 146
    :cond_1
    iput-boolean v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->mIsDead:Z

    .line 147
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->notifyChanges()V

    .line 149
    :goto_1
    return-void

    .line 124
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->mCacheData:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager$CacheData;

    if-nez v1, :cond_4

    .line 125
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->mFileRequest:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;

    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->requestDownload(Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;)V

    .line 131
    :goto_2
    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->mHasExplicitRequest:Z

    if-eqz v1, :cond_3

    .line 132
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->mHasExplicitRequest:Z

    .line 133
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->waitNewClientInSecond()V

    .line 135
    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->waitNoClient()V

    .line 136
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->hasClient()Z

    move-result v1

    if-nez v1, :cond_0

    .line 137
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->deleteFileIfNotUse()V
    :try_end_1
    .catch Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile$DownloadFailException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile$DownloadFailException;
    :try_start_2
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile$DownloadFailException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->printErrorLog(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 146
    iput-boolean v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->mIsDead:Z

    .line 147
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->notifyChanges()V

    goto :goto_1

    .line 126
    .end local v0    # "e":Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile$DownloadFailException;
    :cond_4
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->mCacheData:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager$CacheData;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager$CacheData;->isSkippableFile()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 127
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/SkippableCacheFile;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->mCacheData:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager$CacheData;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->mSecure:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/secure/ISecure;

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/SkippableCacheFile;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager$CacheData;Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/secure/ISecure;)V

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->mSkippableCacheFile:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;
    :try_end_3
    .catch Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile$DownloadFailException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 143
    :catchall_0
    move-exception v1

    .line 146
    iput-boolean v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->mIsDead:Z

    .line 147
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->notifyChanges()V

    throw v1

    .line 129
    :cond_5
    :try_start_4
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->mFileRequest:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;

    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->requestDecrypt(Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;)V
    :try_end_4
    .catch Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile$DownloadFailException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 209
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 210
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mIsContentLoadFinished: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->mIsContentLoadFinished:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mIsActive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->mIsActive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " hashCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 211
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 212
    .local v0, "log":Ljava/lang/String;
    return-object v0
.end method

.method public unregisterListener(Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/OnFileLoadListener;)V
    .locals 1
    .param p1, "l"    # Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/OnFileLoadListener;

    .prologue
    .line 270
    monitor-enter p0

    .line 271
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->mOnFileLoadListeners:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileLoadObservable;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileLoadObservable;->unregisterObserver(Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/OnFileLoadListener;)V

    .line 272
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->mOnFileLoadListeners:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileLoadObservable;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileLoadObservable;->hasObserver()Z

    move-result v0

    if-nez v0, :cond_0

    .line 273
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;->mHasExplicitRequest:Z

    .line 275
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 276
    monitor-exit p0

    .line 277
    return-void

    .line 276
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
