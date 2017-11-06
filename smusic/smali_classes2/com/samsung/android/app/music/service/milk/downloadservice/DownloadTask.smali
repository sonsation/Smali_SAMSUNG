.class public abstract Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadTask;
.super Landroid/os/AsyncTask;
.source "DownloadTask.java"

# interfaces
.implements Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadConstant;
.implements Lcom/samsung/android/app/music/service/milk/net/OnApiCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Long;",
        "Ljava/lang/Integer;",
        ">;",
        "Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadConstant;",
        "Lcom/samsung/android/app/music/service/milk/net/OnApiCallback",
        "<",
        "Lcom/samsung/android/app/music/common/model/purchase/DownloadTackList;",
        ">;"
    }
.end annotation


# static fields
.field protected static final LOG_TAG:Ljava/lang/String; = "DownloadTask"


# instance fields
.field protected bNeedStop:Z

.field protected fileName:Ljava/lang/String;

.field protected filePath:Ljava/io/File;

.field protected final mCallback:Lcom/samsung/android/app/music/service/milk/downloadservice/IMilkDownloadCallback;

.field protected mContext:Landroid/content/Context;

.field protected mItem:Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;

.field protected oldPercent:I


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;Lcom/samsung/android/app/music/service/milk/downloadservice/IMilkDownloadCallback;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "item"    # Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;
    .param p3, "callback"    # Lcom/samsung/android/app/music/service/milk/downloadservice/IMilkDownloadCallback;

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 35
    iput-boolean v0, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadTask;->bNeedStop:Z

    .line 37
    iput v0, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadTask;->oldPercent:I

    .line 57
    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadTask;->mContext:Landroid/content/Context;

    .line 58
    iput-object p2, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadTask;->mItem:Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;

    .line 59
    iput-object p3, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadTask;->mCallback:Lcom/samsung/android/app/music/service/milk/downloadservice/IMilkDownloadCallback;

    .line 61
    invoke-static {}, Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadQueueFileUtils;->getDownloadFilePath()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadTask;->filePath:Ljava/io/File;

    .line 62
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadTask;->mItem:Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadQueueFileUtils;->makeFileName(Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadTask;->fileName:Ljava/lang/String;

    .line 64
    const-string v0, "DownloadTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "DownloadTask track id : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadTask;->mItem:Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->getTrackId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string v0, "DownloadTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "download path : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadTask;->filePath:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string v0, "DownloadTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "download file name : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadTask;->fileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public static getDownloadTask(Landroid/content/Context;Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;Lcom/samsung/android/app/music/service/milk/downloadservice/IMilkDownloadCallback;)Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadTask;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "item"    # Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;
    .param p2, "callback"    # Lcom/samsung/android/app/music/service/milk/downloadservice/IMilkDownloadCallback;

    .prologue
    .line 49
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->getTrackType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 50
    new-instance v0, Lcom/samsung/android/app/music/service/milk/downloadservice/MDrmDownloadTask;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/app/music/service/milk/downloadservice/MDrmDownloadTask;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;Lcom/samsung/android/app/music/service/milk/downloadservice/IMilkDownloadCallback;)V

    .line 52
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/samsung/android/app/music/service/milk/downloadservice/Mp3DownloadTask;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/app/music/service/milk/downloadservice/Mp3DownloadTask;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;Lcom/samsung/android/app/music/service/milk/downloadservice/IMilkDownloadCallback;)V

    goto :goto_0
.end method

.method private openUrlStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 6
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "range"    # Ljava/lang/String;

    .prologue
    .line 258
    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 259
    .local v0, "connection":Ljava/net/URLConnection;
    const-string v3, "Range"

    invoke-virtual {v0, v3, p2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    const-string v3, "DownloadTask"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "address: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    const-string v3, "DownloadTask"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "range: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 269
    .end local v0    # "connection":Ljava/net/URLConnection;
    :goto_0
    return-object v3

    .line 264
    :catch_0
    move-exception v2

    .line 265
    .local v2, "mue":Ljava/net/MalformedURLException;
    const-string v3, "DownloadTask"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "openUrlStream Error! MalformedURLException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    .end local v2    # "mue":Ljava/net/MalformedURLException;
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 266
    :catch_1
    move-exception v1

    .line 267
    .local v1, "ioe":Ljava/io/IOException;
    const-string v3, "DownloadTask"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "openUrlStream Error! IOException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 3
    .param p1, "voids"    # [Ljava/lang/Void;

    .prologue
    .line 103
    const-string v0, "DownloadTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "doInBackground started trackId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadTask;->mItem:Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->getTrackId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadTask;->mCallback:Lcom/samsung/android/app/music/service/milk/downloadservice/IMilkDownloadCallback;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadTask;->mCallback:Lcom/samsung/android/app/music/service/milk/downloadservice/IMilkDownloadCallback;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadTask;->mItem:Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->getTrackId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/service/milk/downloadservice/IMilkDownloadCallback;->onStarted(Ljava/lang/String;)V

    .line 107
    :cond_0
    const-string v0, "DownloadTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "downloadFile"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadTask;->downloadFile()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 25
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method abstract downloadFile()I
.end method

.method protected downloadTrack()Ljava/io/File;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadConstant$DownloadException;
        }
    .end annotation

    .prologue
    .line 200
    const-string v8, "DownloadTask"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "downloadTrack trackId : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadTask;->mItem:Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;

    invoke-virtual {v10}, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->getTrackId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " downloadedSize : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadTask;->mItem:Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;

    .line 201
    invoke-virtual {v10}, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->getDownloadedSize()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 200
    invoke-static {v8, v9}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    iget-object v8, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadTask;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadTask;->mItem:Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;

    .line 203
    invoke-virtual {v9}, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->getTrackId()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadTask;->mItem:Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;

    invoke-virtual {v10}, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->getCodec()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadQueueFileUtils;->getTempTrack(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    .line 204
    .local v7, "tempFile":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 205
    iget-object v8, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadTask;->mItem:Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;

    invoke-virtual {v8}, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->getSize()J

    move-result-wide v8

    iget-object v10, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadTask;->mItem:Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;

    invoke-virtual {v10}, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->getDownloadedSize()J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-nez v8, :cond_1

    .line 252
    .end local v7    # "tempFile":Ljava/io/File;
    :cond_0
    :goto_0
    return-object v7

    .line 209
    .restart local v7    # "tempFile":Ljava/io/File;
    :cond_1
    iget-object v8, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadTask;->mItem:Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;

    invoke-virtual {v8}, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->getDownloadUrl()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadTask;->mItem:Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;

    .line 210
    invoke-virtual {v9}, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->getDownloadedSize()J

    move-result-wide v10

    long-to-int v9, v10

    invoke-static {v9}, Lcom/samsung/android/app/music/service/milk/net/http/HttpUtils;->getByteRangeRemainingRequest(I)Ljava/lang/String;

    move-result-object v9

    .line 209
    invoke-direct {p0, v8, v9}, Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadTask;->openUrlStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 212
    .local v4, "is":Ljava/io/InputStream;
    const-string v8, "DownloadTask"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "downloadTrack open url stream :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadTask;->mItem:Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;

    invoke-virtual {v10}, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->getDownloadUrl()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const/4 v6, 0x0

    .line 215
    .local v6, "os":Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadTask;->mItem:Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;

    invoke-virtual {v9}, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->getDownloadedSize()J

    move-result-wide v10

    invoke-static {v8, v10, v11}, Lcom/samsung/android/app/music/milk/store/IOUtils;->newFileOutputStream(Ljava/lang/String;J)Ljava/io/OutputStream;

    move-result-object v6

    .line 216
    const-string v8, "DownloadTask"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "newFileOutputStream  :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    const/16 v8, 0x2800

    new-array v0, v8, [B

    .line 219
    .local v0, "buf":[B
    :cond_2
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .local v5, "length":I
    const/4 v8, -0x1

    if-eq v5, v8, :cond_4

    .line 220
    const/4 v8, 0x0

    invoke-virtual {v6, v0, v8, v5}, Ljava/io/OutputStream;->write([BII)V

    .line 221
    iget-object v8, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadTask;->mItem:Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;

    invoke-virtual {v8}, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->getDownloadedSize()J

    move-result-wide v8

    int-to-long v10, v5

    add-long v2, v8, v10

    .line 222
    .local v2, "downloadedSize":J
    iget-object v8, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadTask;->mItem:Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;

    invoke-virtual {v8, v2, v3}, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->setDownloadedSize(J)V

    .line 223
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Long;

    const/4 v9, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {p0, v8}, Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadTask;->publishProgress([Ljava/lang/Object;)V

    .line 224
    iget-boolean v8, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadTask;->bNeedStop:Z

    if-eqz v8, :cond_2

    .line 225
    const-string v8, "DownloadTask"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "downloadTrack bNeedStop true. download stopped. downloadedSize : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iget-object v8, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadTask;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadTask;->mItem:Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;

    invoke-static {v8, v9}, Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadQueueQueryUtils;->updateDownloadTrackPause(Landroid/content/Context;Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    const/4 v7, 0x0

    .line 238
    .end local v7    # "tempFile":Ljava/io/File;
    if-eqz v4, :cond_3

    .line 239
    :try_start_1
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 245
    :cond_3
    :goto_1
    if-eqz v6, :cond_0

    .line 246
    :try_start_2
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 248
    :catch_0
    move-exception v1

    .line 249
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 241
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 242
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 238
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "downloadedSize":J
    .restart local v7    # "tempFile":Ljava/io/File;
    :cond_4
    if-eqz v4, :cond_5

    .line 239
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 245
    :cond_5
    :goto_2
    if-eqz v6, :cond_0

    .line 246
    :try_start_4
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 248
    :catch_2
    move-exception v1

    .line 249
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 241
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v1

    .line 242
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 233
    .end local v0    # "buf":[B
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v5    # "length":I
    :catch_4
    move-exception v1

    .line 234
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 235
    new-instance v8, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadConstant$TrackDownloadError;

    invoke-direct {v8}, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadConstant$TrackDownloadError;-><init>()V

    throw v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 237
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    .line 238
    if-eqz v4, :cond_6

    .line 239
    :try_start_6
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 245
    :cond_6
    :goto_3
    if-eqz v6, :cond_7

    .line 246
    :try_start_7
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    .line 250
    :cond_7
    :goto_4
    throw v8

    .line 241
    :catch_5
    move-exception v1

    .line 242
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 248
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_6
    move-exception v1

    .line 249
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4
.end method

.method abstract getDownloadUrl()V
.end method

.method public getItem()Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadTask;->mItem:Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;

    return-object v0
.end method

.method protected getServerTime()J
    .locals 2

    .prologue
    .line 78
    invoke-static {}, Lcom/samsung/android/app/music/common/util/ConvertSystemTime;->getServerTime()J

    move-result-wide v0

    return-wide v0
.end method

.method abstract isDownloadUrlAvailable()Z
.end method

.method public onApiCalled(II)V
    .locals 0
    .param p1, "requestId"    # I
    .param p2, "requestType"    # I

    .prologue
    .line 144
    return-void
.end method

.method public onApiHandled(IIILcom/samsung/android/app/music/common/model/purchase/DownloadTackList;I)V
    .locals 7
    .param p1, "requestId"    # I
    .param p2, "requestType"    # I
    .param p3, "responseType"    # I
    .param p4, "successResult"    # Lcom/samsung/android/app/music/common/model/purchase/DownloadTackList;
    .param p5, "errorCode"    # I

    .prologue
    const/16 v6, 0x6a

    const/4 v5, 0x0

    .line 150
    const-string v2, "DownloadTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onApiHandled requestId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " requestType : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " responseType : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const/16 v2, 0x27df

    if-eq p2, v2, :cond_0

    const/16 v2, 0x27eb

    if-ne p2, v2, :cond_1

    .line 155
    :cond_0
    if-nez p3, :cond_3

    .line 156
    invoke-virtual {p4}, Lcom/samsung/android/app/music/common/model/purchase/DownloadTackList;->getTrackDownloadList()Ljava/util/List;

    move-result-object v0

    .line 157
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;>;"
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 158
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;

    .line 159
    .local v1, "pitem":Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadTask;->mItem:Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->mergeDownloadInfo(Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;)V

    .line 160
    iput-object v1, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadTask;->mItem:Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;

    .line 161
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadTask;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadTask;->mItem:Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadQueueQueryUtils;->updateDownloadTrack(Landroid/content/Context;Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;)V

    .line 162
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadTask;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadTask;->mItem:Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadQueueQueryUtils;->startDownloadTrack(Landroid/content/Context;Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;)V

    .line 163
    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v3, v5, [Ljava/lang/Void;

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 165
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadTask;->mItem:Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;

    invoke-static {v2}, Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadQueueFileUtils;->makeFileName(Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadTask;->fileName:Ljava/lang/String;

    .line 166
    const-string v2, "DownloadTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "onApiHandled download file name : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadTask;->fileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    .end local v0    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;>;"
    .end local v1    # "pitem":Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;
    :cond_1
    :goto_0
    return-void

    .line 168
    .restart local v0    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;>;"
    :cond_2
    invoke-virtual {p0, v6}, Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadTask;->onFailed(I)V

    goto :goto_0

    .line 171
    .end local v0    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;>;"
    :cond_3
    const/16 v2, 0x21c1

    if-ne p5, v2, :cond_4

    .line 172
    const/16 v2, 0x6c

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadTask;->onFailed(I)V

    goto :goto_0

    .line 174
    :cond_4
    invoke-virtual {p0, v6}, Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadTask;->onFailed(I)V

    goto :goto_0
.end method

.method public bridge synthetic onApiHandled(IIILjava/lang/Object;I)V
    .locals 6

    .prologue
    .line 25
    move-object v4, p4

    check-cast v4, Lcom/samsung/android/app/music/common/model/purchase/DownloadTackList;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadTask;->onApiHandled(IIILcom/samsung/android/app/music/common/model/purchase/DownloadTackList;I)V

    return-void
.end method

.method protected onFailed(I)V
    .locals 2
    .param p1, "errorCode"    # I

    .prologue
    .line 273
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadTask;->mCallback:Lcom/samsung/android/app/music/service/milk/downloadservice/IMilkDownloadCallback;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadTask;->mCallback:Lcom/samsung/android/app/music/service/milk/downloadservice/IMilkDownloadCallback;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadTask;->mItem:Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->getTrackId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/app/music/service/milk/downloadservice/IMilkDownloadCallback;->onFailed(Ljava/lang/String;I)V

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadTask;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadTask;->mItem:Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadQueueQueryUtils;->updateDownloadTrackPause(Landroid/content/Context;Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;)V

    .line 278
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 6
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    const-wide/16 v4, 0x0

    .line 113
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 114
    const-string v0, "DownloadTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPostExecute result : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 117
    :sswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadTask;->scanFile()V

    .line 118
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadTask;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadTask;->mItem:Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadQueueFileUtils;->deleteTempFile(Landroid/content/Context;Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;)V

    goto :goto_0

    .line 121
    :sswitch_1
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadTask;->mCallback:Lcom/samsung/android/app/music/service/milk/downloadservice/IMilkDownloadCallback;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadTask;->mCallback:Lcom/samsung/android/app/music/service/milk/downloadservice/IMilkDownloadCallback;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadTask;->mItem:Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->getTrackId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadTask;->mItem:Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->getDownloadedSize()J

    move-result-wide v2

    iget-object v4, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadTask;->mItem:Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;

    .line 123
    invoke-virtual {v4}, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->getSize()J

    move-result-wide v4

    .line 122
    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/downloadservice/IMilkDownloadCallback;->onStopped(Ljava/lang/String;JJ)V

    goto :goto_0

    .line 130
    :sswitch_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadTask;->onFailed(I)V

    .line 131
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadTask;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadTask;->mItem:Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadQueueFileUtils;->deleteTempFile(Landroid/content/Context;Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;)V

    .line 132
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadTask;->mItem:Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;

    invoke-virtual {v0, v4, v5}, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->setDownloadedSize(J)V

    .line 133
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadTask;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadTask;->mItem:Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->getTrackId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadTask;->mItem:Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;

    .line 134
    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->getTrackType()I

    move-result v2

    .line 133
    invoke-static {v0, v1, v4, v5, v2}, Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadQueueQueryUtils;->updateDownloadedTrackSize(Landroid/content/Context;Ljava/lang/String;JI)V

    goto :goto_0

    .line 115
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x65 -> :sswitch_2
        0x66 -> :sswitch_2
        0x67 -> :sswitch_2
        0x68 -> :sswitch_1
        0x69 -> :sswitch_2
    .end sparse-switch
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 25
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Long;)V
    .locals 8
    .param p1, "values"    # [Ljava/lang/Long;

    .prologue
    const/4 v4, 0x0

    .line 182
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 183
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadTask;->mCallback:Lcom/samsung/android/app/music/service/milk/downloadservice/IMilkDownloadCallback;

    if-eqz v0, :cond_1

    .line 184
    aget-object v0, p1, v4

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-double v0, v0

    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadTask;->mItem:Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->getSize()J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v2

    double-to-int v7, v0

    .line 185
    .local v7, "percent":I
    iget v0, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadTask;->oldPercent:I

    add-int/lit8 v0, v0, 0xa

    if-lt v7, v0, :cond_1

    .line 186
    const-string v0, "DownloadTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProgressUpdate percent : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " values : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, p1, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " fileSize : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadTask;->mItem:Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;

    .line 187
    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->getSize()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 186
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const/16 v0, 0x64

    if-le v7, v0, :cond_0

    .line 190
    const/16 v7, 0x64

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadTask;->mCallback:Lcom/samsung/android/app/music/service/milk/downloadservice/IMilkDownloadCallback;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadTask;->mItem:Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->getTrackId()Ljava/lang/String;

    move-result-object v1

    aget-object v2, p1, v4

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadTask;->mItem:Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->getSize()J

    move-result-wide v4

    iget-object v6, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadTask;->mItem:Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;

    .line 193
    invoke-virtual {v6}, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->getTrackType()I

    move-result v6

    .line 192
    invoke-interface/range {v0 .. v7}, Lcom/samsung/android/app/music/service/milk/downloadservice/IMilkDownloadCallback;->onProgressUpdated(Ljava/lang/String;JJII)V

    .line 194
    iput v7, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadTask;->oldPercent:I

    .line 197
    .end local v7    # "percent":I
    :cond_1
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 25
    check-cast p1, [Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadTask;->onProgressUpdate([Ljava/lang/Long;)V

    return-void
.end method

.method abstract scanFile()V
.end method

.method public start()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 82
    const-string v0, "DownloadTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "start trackId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadTask;->mItem:Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->getTrackId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " expiredTime : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadTask;->mItem:Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;

    .line 83
    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->getExpireTimeLong()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " serverTime : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadTask;->getServerTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 82
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iput-boolean v4, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadTask;->bNeedStop:Z

    .line 87
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadTask;->isDownloadUrlAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    const-string v0, "DownloadTask"

    const-string/jumbo v1, "start paused item, start immediately"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadTask;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadTask;->mItem:Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadQueueQueryUtils;->startDownloadTrack(Landroid/content/Context;Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;)V

    .line 91
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v1, v4, [Ljava/lang/Void;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 95
    :goto_0
    return-void

    .line 93
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadTask;->getDownloadUrl()V

    goto :goto_0
.end method

.method public stop(Z)V
    .locals 3
    .param p1, "mayInterruptIfRunning"    # Z

    .prologue
    .line 70
    const-string v0, "DownloadTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "stop trackId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadTask;->mItem:Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;

    .line 71
    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->getTrackId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " title : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadTask;->mItem:Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->getTrackTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 70
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadTask;->bNeedStop:Z

    .line 73
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadTask;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadTask;->mItem:Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadQueueQueryUtils;->updateDownloadTrackPause(Landroid/content/Context;Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;)V

    .line 74
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadTask;->cancel(Z)Z

    .line 75
    return-void
.end method
