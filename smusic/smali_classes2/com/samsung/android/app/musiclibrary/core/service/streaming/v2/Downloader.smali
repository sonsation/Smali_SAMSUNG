.class final Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader;
.super Ljava/lang/Object;
.source "Downloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader$DownloadingFile;
    }
.end annotation


# static fields
.field private static final CACHE_CONTROL_NO_CACHE:Ljava/lang/String; = "no-cache"

.field private static final CONNECTION_TIME_OUT:I = 0x1388

.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV-PlayerServer"

.field private static final PROPERTY_CACHE_CONTROL:Ljava/lang/String; = "Cache-Control"

.field private static final READ_TIME_OUT:I = 0x2710

.field private static final REQUEST_METHOD_GET:Ljava/lang/String; = "GET"

.field private static final SUB_TAG:Ljava/lang/String; = "Downloader> "

.field private static sRandCount:I


# instance fields
.field private final mDownloaderManager:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/DownloaderManager;

.field private final mDownloadingFile:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader$DownloadingFile;

.field private final mRequest:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    sput v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader;->sRandCount:I

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/DownloaderManager;Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;)V
    .locals 3
    .param p1, "downloaderManager"    # Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/DownloaderManager;
    .param p2, "request"    # Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader;->mDownloaderManager:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/DownloaderManager;

    .line 46
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader;->mRequest:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;

    .line 47
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader$DownloadingFile;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader;->mRequest:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader;->mRequest:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;

    iget-object v2, v2, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;->id:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader$DownloadingFile;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader;->mDownloadingFile:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader$DownloadingFile;

    .line 48
    return-void
.end method

.method private printErrorLog(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 102
    const-string v0, "SMUSIC-SV-PlayerServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Downloader> [id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader;->mRequest:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;

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

    .line 103
    return-void
.end method

.method private printInfoLog(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 98
    const-string v0, "SMUSIC-SV-PlayerServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Downloader> [id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader;->mRequest:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;

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

    .line 99
    return-void
.end method

.method private printLog(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 94
    const-string v0, "SMUSIC-SV-PlayerServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Downloader> [id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader;->mRequest:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;

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

    .line 95
    return-void
.end method

.method private randomException(JJ)V
    .locals 3
    .param p1, "downloaded"    # J
    .param p3, "total"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    sget v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader;->sRandCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader;->sRandCount:I

    rem-int/lit8 v0, v0, 0x3

    int-to-long v0, v0

    mul-long/2addr v0, p1

    cmp-long v0, v0, p3

    if-lez v0, :cond_0

    .line 109
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Random exception during download"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_0
    return-void
.end method


# virtual methods
.method public getDownloadFile()Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader;->mDownloadingFile:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader$DownloadingFile;

    return-object v0
.end method

.method public run()V
    .locals 18

    .prologue
    .line 56
    const/4 v7, 0x0

    .line 58
    .local v7, "error":Z
    const/4 v8, 0x0

    .line 59
    .local v8, "log":Ljava/lang/StringBuilder;
    const-wide/16 v2, 0x0

    .line 67
    .local v2, "base":J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader;->mDownloadingFile:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader$DownloadingFile;

    invoke-virtual {v9}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader$DownloadingFile;->download()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader;->mDownloadingFile:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader$DownloadingFile;

    invoke-virtual {v9}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader$DownloadingFile;->getAvailableBytes()J

    move-result-wide v4

    .line 80
    .local v4, "current":J
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader;->mDownloadingFile:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader$DownloadingFile;

    invoke-virtual {v9}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader$DownloadingFile;->getTotalBytes()J

    move-result-wide v10

    .line 81
    .local v10, "total":J
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Finished! "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, "/"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, " path : "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader;->mDownloadingFile:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader$DownloadingFile;

    .line 82
    invoke-virtual {v12}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader$DownloadingFile;->getFilePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, " taken "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 83
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader;->mRequest:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;

    iget-wide v14, v14, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;->requestedTime:J

    sub-long/2addr v12, v14

    invoke-virtual {v9, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 81
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader;->printInfoLog(Ljava/lang/String;)V

    .line 84
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader;->mDownloadingFile:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader$DownloadingFile;

    invoke-virtual {v9, v7}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader$DownloadingFile;->finished(Z)V

    .line 85
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader;->mDownloadingFile:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader$DownloadingFile;

    invoke-virtual {v9}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader$DownloadingFile;->notifyChanges()V

    .line 86
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader;->mDownloadingFile:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader$DownloadingFile;

    invoke-virtual {v9}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader$DownloadingFile;->clearObservers()V

    .line 87
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader;->mDownloaderManager:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/DownloaderManager;

    if-eqz v9, :cond_0

    .line 88
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader;->mDownloaderManager:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/DownloaderManager;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader;->mRequest:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;

    invoke-virtual {v9, v12}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/DownloaderManager;->removeRequest(Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;)V

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 74
    .end local v4    # "current":J
    .end local v10    # "total":J
    :catch_0
    move-exception v6

    .line 75
    .local v6, "e":Ljava/io/IOException;
    const/4 v7, 0x1

    .line 76
    :try_start_1
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 77
    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader;->printErrorLog(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader;->mDownloadingFile:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader$DownloadingFile;

    invoke-virtual {v9}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader$DownloadingFile;->getAvailableBytes()J

    move-result-wide v4

    .line 80
    .restart local v4    # "current":J
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader;->mDownloadingFile:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader$DownloadingFile;

    invoke-virtual {v9}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader$DownloadingFile;->getTotalBytes()J

    move-result-wide v10

    .line 81
    .restart local v10    # "total":J
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Finished! "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, "/"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, " path : "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader;->mDownloadingFile:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader$DownloadingFile;

    .line 82
    invoke-virtual {v12}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader$DownloadingFile;->getFilePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, " taken "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 83
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader;->mRequest:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;

    iget-wide v14, v14, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;->requestedTime:J

    sub-long/2addr v12, v14

    invoke-virtual {v9, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 81
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader;->printInfoLog(Ljava/lang/String;)V

    .line 84
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader;->mDownloadingFile:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader$DownloadingFile;

    invoke-virtual {v9, v7}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader$DownloadingFile;->finished(Z)V

    .line 85
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader;->mDownloadingFile:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader$DownloadingFile;

    invoke-virtual {v9}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader$DownloadingFile;->notifyChanges()V

    .line 86
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader;->mDownloadingFile:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader$DownloadingFile;

    invoke-virtual {v9}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader$DownloadingFile;->clearObservers()V

    .line 87
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader;->mDownloaderManager:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/DownloaderManager;

    if-eqz v9, :cond_0

    .line 88
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader;->mDownloaderManager:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/DownloaderManager;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader;->mRequest:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;

    invoke-virtual {v9, v12}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/DownloaderManager;->removeRequest(Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;)V

    goto/16 :goto_0

    .line 79
    .end local v4    # "current":J
    .end local v6    # "e":Ljava/io/IOException;
    .end local v10    # "total":J
    :catchall_0
    move-exception v9

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader;->mDownloadingFile:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader$DownloadingFile;

    invoke-virtual {v12}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader$DownloadingFile;->getAvailableBytes()J

    move-result-wide v4

    .line 80
    .restart local v4    # "current":J
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader;->mDownloadingFile:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader$DownloadingFile;

    invoke-virtual {v12}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader$DownloadingFile;->getTotalBytes()J

    move-result-wide v10

    .line 81
    .restart local v10    # "total":J
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Finished! "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " path : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader;->mDownloadingFile:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader$DownloadingFile;

    .line 82
    invoke-virtual {v13}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader$DownloadingFile;->getFilePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " taken "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 83
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader;->mRequest:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;

    iget-wide v0, v13, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;->requestedTime:J

    move-wide/from16 v16, v0

    sub-long v14, v14, v16

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 81
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader;->printInfoLog(Ljava/lang/String;)V

    .line 84
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader;->mDownloadingFile:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader$DownloadingFile;

    invoke-virtual {v12, v7}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader$DownloadingFile;->finished(Z)V

    .line 85
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader;->mDownloadingFile:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader$DownloadingFile;

    invoke-virtual {v12}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader$DownloadingFile;->notifyChanges()V

    .line 86
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader;->mDownloadingFile:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader$DownloadingFile;

    invoke-virtual {v12}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader$DownloadingFile;->clearObservers()V

    .line 87
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader;->mDownloaderManager:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/DownloaderManager;

    if-eqz v12, :cond_1

    .line 88
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader;->mDownloaderManager:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/DownloaderManager;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/Downloader;->mRequest:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;

    invoke-virtual {v12, v13}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/DownloaderManager;->removeRequest(Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;)V

    .line 90
    :cond_1
    throw v9
.end method
