.class public Lcom/samsung/android/app/music/service/milk/downloadservice/MDrmDownloadTask;
.super Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadTask;
.source "MDrmDownloadTask.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;Lcom/samsung/android/app/music/service/milk/downloadservice/IMilkDownloadCallback;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "item"    # Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;
    .param p3, "callback"    # Lcom/samsung/android/app/music/service/milk/downloadservice/IMilkDownloadCallback;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadTask;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;Lcom/samsung/android/app/music/service/milk/downloadservice/IMilkDownloadCallback;)V

    .line 29
    return-void
.end method

.method private makeDrmFile(Ljava/io/File;)V
    .locals 5
    .param p1, "tempDrm"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadConstant$DownloadException;
        }
    .end annotation

    .prologue
    .line 126
    const-string v2, "DownloadTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "makeDrmFile trackId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MDrmDownloadTask;->mItem:Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->getTrackId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 129
    new-instance v2, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadConstant$DownloadedFileIncompletedError;

    invoke-direct {v2}, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadConstant$DownloadedFileIncompletedError;-><init>()V

    throw v2

    .line 132
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MDrmDownloadTask;->filePath:Ljava/io/File;

    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MDrmDownloadTask;->fileName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadQueueFileUtils;->makeMusicFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 134
    .local v0, "drm":Ljava/io/File;
    :try_start_0
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadQueueFileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    :goto_0
    return-void

    .line 135
    :catch_0
    move-exception v1

    .line 136
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 137
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    throw v2
.end method


# virtual methods
.method downloadFile()I
    .locals 3

    .prologue
    .line 61
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/downloadservice/MDrmDownloadTask;->downloadTrack()Ljava/io/File;

    move-result-object v1

    .line 62
    .local v1, "track":Ljava/io/File;
    if-nez v1, :cond_1

    .line 63
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/downloadservice/MDrmDownloadTask;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 64
    const/16 v2, 0x6d

    .line 75
    .end local v1    # "track":Ljava/io/File;
    :goto_0
    return v2

    .line 66
    .restart local v1    # "track":Ljava/io/File;
    :cond_0
    const/16 v2, 0x68

    goto :goto_0

    .line 70
    :cond_1
    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/service/milk/downloadservice/MDrmDownloadTask;->makeDrmFile(Ljava/io/File;)V
    :try_end_0
    .catch Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadConstant$DownloadException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    const/4 v2, 0x0

    goto :goto_0

    .line 71
    .end local v1    # "track":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadConstant$DownloadException;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadConstant$DownloadException;->printStackTrace()V

    .line 73
    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadConstant$DownloadException;->getErrorCode()I

    move-result v2

    goto :goto_0
.end method

.method getDownloadUrl()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 34
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MDrmDownloadTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MDrmDownloadTask;->mItem:Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;

    .line 35
    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->getBitrate()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MDrmDownloadTask;->mItem:Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->getCodec()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MDrmDownloadTask;->mItem:Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;

    .line 36
    invoke-virtual {v5}, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->getOrderId()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MDrmDownloadTask;->mItem:Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;

    invoke-virtual {v6}, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->getTrackId()Ljava/lang/String;

    move-result-object v6

    .line 35
    invoke-interface/range {v0 .. v6}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport;->getDrmTrackDownloadUrl(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    .line 36
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v2

    invoke-virtual {v0, v2}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    new-instance v2, Lcom/samsung/android/app/music/service/milk/net/subscriber/BaseSubscriber;

    const/16 v3, 0x27eb

    invoke-direct {v2, v1, v3, p0}, Lcom/samsung/android/app/music/service/milk/net/subscriber/BaseSubscriber;-><init>(IILcom/samsung/android/app/music/service/milk/net/OnApiCallback;)V

    .line 37
    invoke-virtual {v0, v2}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 39
    return-void
.end method

.method isDownloadUrlAvailable()Z
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 44
    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MDrmDownloadTask;->mItem:Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;

    .line 45
    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->getExpireTimeLong()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MDrmDownloadTask;->mItem:Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->getExpireTimeLong()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/downloadservice/MDrmDownloadTask;->getServerTime()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-gez v3, :cond_0

    move v0, v2

    .line 46
    .local v0, "isExpired":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 47
    const-string v2, "DownloadTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "start expireTime over, need to get downloadUrl again"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :goto_1
    return v1

    .end local v0    # "isExpired":Z
    :cond_0
    move v0, v1

    .line 45
    goto :goto_0

    .line 50
    .restart local v0    # "isExpired":Z
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MDrmDownloadTask;->mItem:Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->getDownloadUrl()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    .line 51
    const-string v2, "DownloadTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "start download size 0, request downloadUrl"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move v1, v2

    .line 55
    goto :goto_1
.end method

.method scanFile()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 80
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MDrmDownloadTask;->filePath:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MDrmDownloadTask;->fileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 81
    .local v1, "fullPath":Ljava/lang/String;
    new-instance v0, Lcom/samsung/android/app/music/common/model/purchase/DrmDownloadComplete;

    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MDrmDownloadTask;->mItem:Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->getTrackId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MDrmDownloadTask;->mItem:Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->getDrmType()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MDrmDownloadTask;->mItem:Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;

    .line 82
    invoke-virtual {v4}, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->getDeleteUrl()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Lcom/samsung/android/app/music/common/model/purchase/DrmDownloadComplete;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .local v0, "drm":Lcom/samsung/android/app/music/common/model/purchase/DrmDownloadComplete;
    const-string v2, "DownloadTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Download complete : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/purchase/DrmDownloadComplete;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MDrmDownloadTask;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MDrmDownloadTask;->mItem:Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;

    .line 86
    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->getOrderId()Ljava/lang/String;

    move-result-object v3

    .line 87
    invoke-static {v0}, Lcom/samsung/android/app/music/common/model/purchase/DrmDownloadCompleteArray;->create(Lcom/samsung/android/app/music/common/model/purchase/DrmDownloadComplete;)Lcom/samsung/android/app/music/common/model/purchase/DrmDownloadCompleteArray;

    move-result-object v4

    .line 86
    invoke-interface {v2, v5, v6, v3, v4}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport;->completeDrmTrackDownload(ILjava/util/Map;Ljava/lang/String;Lcom/samsung/android/app/music/common/model/purchase/DrmDownloadCompleteArray;)Lrx/Observable;

    move-result-object v2

    .line 87
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/app/music/service/milk/net/subscriber/BaseSubscriber;

    const/16 v4, 0x27ee

    invoke-direct {v3, v5, v4, v6}, Lcom/samsung/android/app/music/service/milk/net/subscriber/BaseSubscriber;-><init>(IILcom/samsung/android/app/music/service/milk/net/OnApiCallback;)V

    .line 88
    invoke-virtual {v2, v3}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 92
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MDrmDownloadTask;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/app/music/provider/sync/SyncMdrmContent;->init(Landroid/content/Context;)V

    .line 93
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MDrmDownloadTask;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    aput-object v1, v3, v5

    new-instance v4, Lcom/samsung/android/app/music/service/milk/downloadservice/MDrmDownloadTask$1;

    invoke-direct {v4, p0, v1}, Lcom/samsung/android/app/music/service/milk/downloadservice/MDrmDownloadTask$1;-><init>(Lcom/samsung/android/app/music/service/milk/downloadservice/MDrmDownloadTask;Ljava/lang/String;)V

    invoke-static {v2, v3, v6, v4}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 123
    return-void
.end method
