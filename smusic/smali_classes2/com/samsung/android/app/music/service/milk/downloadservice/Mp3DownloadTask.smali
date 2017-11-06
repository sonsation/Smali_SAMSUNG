.class public Lcom/samsung/android/app/music/service/milk/downloadservice/Mp3DownloadTask;
.super Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadTask;
.source "Mp3DownloadTask.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;Lcom/samsung/android/app/music/service/milk/downloadservice/IMilkDownloadCallback;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "item"    # Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;
    .param p3, "callback"    # Lcom/samsung/android/app/music/service/milk/downloadservice/IMilkDownloadCallback;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadTask;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;Lcom/samsung/android/app/music/service/milk/downloadservice/IMilkDownloadCallback;)V

    .line 34
    return-void
.end method

.method private UpdatePurchasedTrack(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "localTrackId"    # Ljava/lang/String;
    .param p2, "quality"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 232
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/Mp3DownloadTask;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/Mp3DownloadTask;->mItem:Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;

    .line 233
    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->getTrackId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadQueueQueryUtils;->queryPurchasedTrackOrderId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 234
    .local v6, "orderId":Ljava/lang/String;
    const-string v7, ""

    .line 235
    .local v7, "localtrack":Ljava/lang/String;
    const-string v8, ""

    .line 237
    .local v8, "localtrack_320":Ljava/lang/String;
    const-string v1, "192"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 238
    move-object v7, p1

    .line 244
    :goto_0
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 245
    const-string v1, "DownloadTask"

    const-string v3, "UpdatePurchasedTrack"

    invoke-static {v1, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    new-instance v0, Lcom/samsung/android/app/music/service/milk/worker/purchase/UpdatePurchasedTrackWorker;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/Mp3DownloadTask;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/Mp3DownloadTask;->mItem:Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;

    .line 247
    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->getTrackId()Ljava/lang/String;

    move-result-object v5

    move v3, v2

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/app/music/service/milk/worker/purchase/UpdatePurchasedTrackWorker;-><init>(Landroid/content/Context;IILcom/samsung/android/app/music/service/milk/MilkServiceInterface;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    .local v0, "worker":Lcom/samsung/android/app/music/service/milk/worker/purchase/UpdatePurchasedTrackWorker;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/worker/purchase/UpdatePurchasedTrackWorker;->doWork()V

    .line 251
    .end local v0    # "worker":Lcom/samsung/android/app/music/service/milk/worker/purchase/UpdatePurchasedTrackWorker;
    :cond_0
    return-void

    .line 240
    :cond_1
    move-object v8, p1

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/service/milk/downloadservice/Mp3DownloadTask;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/milk/downloadservice/Mp3DownloadTask;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/service/milk/downloadservice/Mp3DownloadTask;->UpdatePurchasedTrack(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private appendMp3File(Ljava/io/File;Ljava/io/File;)V
    .locals 13
    .param p1, "first"    # Ljava/io/File;
    .param p2, "second"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadConstant$DownloadException;
        }
    .end annotation

    .prologue
    .line 178
    const-string v10, "DownloadTask"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "appendMp3File trackId : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/Mp3DownloadTask;->mItem:Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;

    invoke-virtual {v12}, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->getTrackId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_1

    .line 180
    :cond_0
    new-instance v10, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadConstant$DownloadedFileIncompletedError;

    invoke-direct {v10}, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadConstant$DownloadedFileIncompletedError;-><init>()V

    throw v10

    .line 183
    :cond_1
    iget-object v10, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/Mp3DownloadTask;->filePath:Ljava/io/File;

    iget-object v11, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/Mp3DownloadTask;->fileName:Ljava/lang/String;

    invoke-static {v10, v11}, Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadQueueFileUtils;->makeMusicFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    .line 184
    .local v8, "mergedFile":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 185
    const-string v10, "DownloadTask"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "appendFile trackId : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/Mp3DownloadTask;->mItem:Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;

    invoke-virtual {v12}, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->getTrackId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " already existed. delete prev file"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 190
    :cond_2
    const/4 v0, 0x0

    .line 191
    .local v0, "bisFirst":Ljava/io/BufferedInputStream;
    const/4 v2, 0x0

    .line 192
    .local v2, "bisSecond":Ljava/io/BufferedInputStream;
    const/4 v4, 0x0

    .line 195
    .local v4, "bos":Ljava/io/BufferedOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    .end local v0    # "bisFirst":Ljava/io/BufferedInputStream;
    .local v1, "bisFirst":Ljava/io/BufferedInputStream;
    :try_start_1
    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 197
    .end local v2    # "bisSecond":Ljava/io/BufferedInputStream;
    .local v3, "bisSecond":Ljava/io/BufferedInputStream;
    :try_start_2
    new-instance v5, Ljava/io/BufferedOutputStream;

    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v11, 0x2800

    invoke-direct {v5, v10, v11}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 200
    .end local v4    # "bos":Ljava/io/BufferedOutputStream;
    .local v5, "bos":Ljava/io/BufferedOutputStream;
    const/4 v9, 0x0

    .line 201
    .local v9, "read":I
    const/16 v10, 0x2800

    :try_start_3
    new-array v6, v10, [B

    .line 203
    .local v6, "bytes":[B
    :goto_0
    invoke-virtual {v1, v6}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_6

    .line 204
    const/4 v10, 0x0

    invoke-virtual {v5, v6, v10, v9}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 210
    .end local v6    # "bytes":[B
    :catch_0
    move-exception v7

    move-object v4, v5

    .end local v5    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v4    # "bos":Ljava/io/BufferedOutputStream;
    move-object v2, v3

    .end local v3    # "bisSecond":Ljava/io/BufferedInputStream;
    .restart local v2    # "bisSecond":Ljava/io/BufferedInputStream;
    move-object v0, v1

    .line 211
    .end local v1    # "bisFirst":Ljava/io/BufferedInputStream;
    .end local v9    # "read":I
    .restart local v0    # "bisFirst":Ljava/io/BufferedInputStream;
    .local v7, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_4
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 212
    new-instance v10, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadConstant$Id3TagTrackAppendError;

    invoke-direct {v10}, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadConstant$Id3TagTrackAppendError;-><init>()V

    throw v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 214
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    .line 215
    :goto_2
    if-eqz v0, :cond_3

    .line 216
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    .line 218
    :cond_3
    if-eqz v2, :cond_4

    .line 219
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    .line 221
    :cond_4
    if-eqz v4, :cond_5

    .line 222
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->flush()V

    .line 223
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 227
    :cond_5
    :goto_3
    throw v10

    .line 207
    .end local v0    # "bisFirst":Ljava/io/BufferedInputStream;
    .end local v2    # "bisSecond":Ljava/io/BufferedInputStream;
    .end local v4    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v1    # "bisFirst":Ljava/io/BufferedInputStream;
    .restart local v3    # "bisSecond":Ljava/io/BufferedInputStream;
    .restart local v5    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v6    # "bytes":[B
    .restart local v9    # "read":I
    :cond_6
    :goto_4
    :try_start_6
    invoke-virtual {v3, v6}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_7

    .line 208
    const/4 v10, 0x0

    invoke-virtual {v5, v6, v10, v9}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_4

    .line 214
    .end local v6    # "bytes":[B
    :catchall_1
    move-exception v10

    move-object v4, v5

    .end local v5    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v4    # "bos":Ljava/io/BufferedOutputStream;
    move-object v2, v3

    .end local v3    # "bisSecond":Ljava/io/BufferedInputStream;
    .restart local v2    # "bisSecond":Ljava/io/BufferedInputStream;
    move-object v0, v1

    .end local v1    # "bisFirst":Ljava/io/BufferedInputStream;
    .restart local v0    # "bisFirst":Ljava/io/BufferedInputStream;
    goto :goto_2

    .line 215
    .end local v0    # "bisFirst":Ljava/io/BufferedInputStream;
    .end local v2    # "bisSecond":Ljava/io/BufferedInputStream;
    .end local v4    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v1    # "bisFirst":Ljava/io/BufferedInputStream;
    .restart local v3    # "bisSecond":Ljava/io/BufferedInputStream;
    .restart local v5    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v6    # "bytes":[B
    :cond_7
    if-eqz v1, :cond_8

    .line 216
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 218
    :cond_8
    if-eqz v3, :cond_9

    .line 219
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    .line 221
    :cond_9
    if-eqz v5, :cond_a

    .line 222
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->flush()V

    .line 223
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 229
    :cond_a
    :goto_5
    return-void

    .line 225
    :catch_1
    move-exception v7

    .line 226
    .local v7, "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 225
    .end local v1    # "bisFirst":Ljava/io/BufferedInputStream;
    .end local v3    # "bisSecond":Ljava/io/BufferedInputStream;
    .end local v5    # "bos":Ljava/io/BufferedOutputStream;
    .end local v6    # "bytes":[B
    .end local v7    # "e":Ljava/io/IOException;
    .end local v9    # "read":I
    .restart local v0    # "bisFirst":Ljava/io/BufferedInputStream;
    .restart local v2    # "bisSecond":Ljava/io/BufferedInputStream;
    .restart local v4    # "bos":Ljava/io/BufferedOutputStream;
    :catch_2
    move-exception v7

    .line 226
    .restart local v7    # "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 214
    .end local v0    # "bisFirst":Ljava/io/BufferedInputStream;
    .end local v7    # "e":Ljava/io/IOException;
    .restart local v1    # "bisFirst":Ljava/io/BufferedInputStream;
    :catchall_2
    move-exception v10

    move-object v0, v1

    .end local v1    # "bisFirst":Ljava/io/BufferedInputStream;
    .restart local v0    # "bisFirst":Ljava/io/BufferedInputStream;
    goto :goto_2

    .end local v0    # "bisFirst":Ljava/io/BufferedInputStream;
    .end local v2    # "bisSecond":Ljava/io/BufferedInputStream;
    .restart local v1    # "bisFirst":Ljava/io/BufferedInputStream;
    .restart local v3    # "bisSecond":Ljava/io/BufferedInputStream;
    :catchall_3
    move-exception v10

    move-object v2, v3

    .end local v3    # "bisSecond":Ljava/io/BufferedInputStream;
    .restart local v2    # "bisSecond":Ljava/io/BufferedInputStream;
    move-object v0, v1

    .end local v1    # "bisFirst":Ljava/io/BufferedInputStream;
    .restart local v0    # "bisFirst":Ljava/io/BufferedInputStream;
    goto :goto_2

    .line 210
    :catch_3
    move-exception v7

    goto :goto_1

    .end local v0    # "bisFirst":Ljava/io/BufferedInputStream;
    .restart local v1    # "bisFirst":Ljava/io/BufferedInputStream;
    :catch_4
    move-exception v7

    move-object v0, v1

    .end local v1    # "bisFirst":Ljava/io/BufferedInputStream;
    .restart local v0    # "bisFirst":Ljava/io/BufferedInputStream;
    goto :goto_1

    .end local v0    # "bisFirst":Ljava/io/BufferedInputStream;
    .end local v2    # "bisSecond":Ljava/io/BufferedInputStream;
    .restart local v1    # "bisFirst":Ljava/io/BufferedInputStream;
    .restart local v3    # "bisSecond":Ljava/io/BufferedInputStream;
    :catch_5
    move-exception v7

    move-object v2, v3

    .end local v3    # "bisSecond":Ljava/io/BufferedInputStream;
    .restart local v2    # "bisSecond":Ljava/io/BufferedInputStream;
    move-object v0, v1

    .end local v1    # "bisFirst":Ljava/io/BufferedInputStream;
    .restart local v0    # "bisFirst":Ljava/io/BufferedInputStream;
    goto :goto_1
.end method

.method private downloadTag()Ljava/io/File;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadConstant$DownloadException;
        }
    .end annotation

    .prologue
    .line 127
    const-string v10, "DownloadTask"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "downloadTag trackId : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/Mp3DownloadTask;->mItem:Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;

    invoke-virtual {v12}, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->getTrackId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object v10, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/Mp3DownloadTask;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/Mp3DownloadTask;->mItem:Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;

    invoke-virtual {v11}, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->getTrackId()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadQueueFileUtils;->getTempTag(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    .line 129
    .local v9, "tempTag":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 130
    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v10

    iget-object v12, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/Mp3DownloadTask;->mItem:Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;

    invoke-virtual {v12}, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->getId3v2FileSize()J

    move-result-wide v12

    cmp-long v10, v10, v12

    if-nez v10, :cond_1

    .line 174
    :cond_0
    :goto_0
    return-object v9

    .line 133
    :cond_1
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 135
    :cond_2
    const/4 v6, 0x0

    .line 136
    .local v6, "is":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 138
    .local v4, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    const-string v10, "DownloadTask"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "downloadTag id3v2 : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/Mp3DownloadTask;->mItem:Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;

    invoke-virtual {v12}, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->getId3v2()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iget-object v10, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/Mp3DownloadTask;->mContext:Landroid/content/Context;

    .line 140
    invoke-static {v10}, Lcom/samsung/android/app/music/service/milk/net/transport/DownloadTransport$Proxy;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/net/transport/DownloadTransport;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/Mp3DownloadTask;->mItem:Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;

    invoke-virtual {v11}, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->getId3v2()Ljava/lang/String;

    move-result-object v11

    const-string v12, ""

    invoke-interface {v10, v11, v12}, Lcom/samsung/android/app/music/service/milk/net/transport/DownloadTransport;->downloadSync(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v10

    .line 141
    invoke-interface {v10}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object v8

    .line 142
    .local v8, "response":Lretrofit2/Response;, "Lretrofit2/Response<Lokhttp3/ResponseBody;>;"
    invoke-virtual {v8}, Lretrofit2/Response;->headers()Lokhttp3/Headers;

    move-result-object v10

    const-string v11, "Content-Length"

    invoke-virtual {v10, v11}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 143
    .local v2, "contentLength":Ljava/lang/String;
    invoke-virtual {v8}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/ResponseBody;

    .line 144
    .local v0, "body":Lokhttp3/ResponseBody;
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v6

    .line 145
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .local v5, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    iget-object v12, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/Mp3DownloadTask;->mContext:Landroid/content/Context;

    iget-object v13, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/Mp3DownloadTask;->mItem:Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;

    if-eqz v2, :cond_5

    .line 148
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 147
    :goto_1
    invoke-static {v12, v13, v10, v11}, Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadQueueQueryUtils;->updateDownloadTrackTagSize(Landroid/content/Context;Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;J)V

    .line 150
    const/16 v10, 0x1000

    new-array v1, v10, [B

    .line 152
    .local v1, "buf":[B
    :goto_2
    invoke-virtual {v6, v1}, Ljava/io/InputStream;->read([B)I

    move-result v7

    .local v7, "length":I
    const/4 v10, -0x1

    if-eq v7, v10, :cond_6

    .line 153
    const/4 v10, 0x0

    invoke-virtual {v5, v1, v10, v7}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    .line 155
    .end local v1    # "buf":[B
    .end local v7    # "length":I
    :catch_0
    move-exception v3

    move-object v4, v5

    .line 156
    .end local v0    # "body":Lokhttp3/ResponseBody;
    .end local v2    # "contentLength":Ljava/lang/String;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .end local v8    # "response":Lretrofit2/Response;, "Lretrofit2/Response<Lokhttp3/ResponseBody;>;"
    .local v3, "e":Ljava/io/IOException;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :goto_3
    :try_start_2
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 157
    new-instance v10, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadConstant$Id3TagDownloadError;

    invoke-direct {v10}, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadConstant$Id3TagDownloadError;-><init>()V

    throw v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 159
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v10

    .line 160
    :goto_4
    if-eqz v6, :cond_3

    .line 161
    :try_start_3
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 167
    :cond_3
    :goto_5
    if-eqz v4, :cond_4

    .line 168
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 172
    :cond_4
    :goto_6
    throw v10

    .line 148
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "body":Lokhttp3/ResponseBody;
    .restart local v2    # "contentLength":Ljava/lang/String;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "response":Lretrofit2/Response;, "Lretrofit2/Response<Lokhttp3/ResponseBody;>;"
    :cond_5
    const-wide/16 v10, -0x1

    goto :goto_1

    .line 160
    .restart local v1    # "buf":[B
    .restart local v7    # "length":I
    :cond_6
    if-eqz v6, :cond_7

    .line 161
    :try_start_5
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 167
    :cond_7
    :goto_7
    if-eqz v5, :cond_0

    .line 168
    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_0

    .line 170
    :catch_1
    move-exception v3

    .line 171
    .restart local v3    # "e":Ljava/io/IOException;
    const-string v10, "DownloadTask"

    const-string v11, "downloadTag() Failed to close fos"

    invoke-static {v10, v11}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 163
    .end local v3    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v3

    .line 164
    .restart local v3    # "e":Ljava/io/IOException;
    const-string v10, "DownloadTask"

    const-string v11, "downloadTag() Failed to close is"

    invoke-static {v10, v11}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 163
    .end local v0    # "body":Lokhttp3/ResponseBody;
    .end local v1    # "buf":[B
    .end local v2    # "contentLength":Ljava/lang/String;
    .end local v3    # "e":Ljava/io/IOException;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .end local v7    # "length":I
    .end local v8    # "response":Lretrofit2/Response;, "Lretrofit2/Response<Lokhttp3/ResponseBody;>;"
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v3

    .line 164
    .restart local v3    # "e":Ljava/io/IOException;
    const-string v11, "DownloadTask"

    const-string v12, "downloadTag() Failed to close is"

    invoke-static {v11, v12}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 170
    .end local v3    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v3

    .line 171
    .restart local v3    # "e":Ljava/io/IOException;
    const-string v11, "DownloadTask"

    const-string v12, "downloadTag() Failed to close fos"

    invoke-static {v11, v12}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 159
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "body":Lokhttp3/ResponseBody;
    .restart local v2    # "contentLength":Ljava/lang/String;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "response":Lretrofit2/Response;, "Lretrofit2/Response<Lokhttp3/ResponseBody;>;"
    :catchall_1
    move-exception v10

    move-object v4, v5

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 155
    .end local v0    # "body":Lokhttp3/ResponseBody;
    .end local v2    # "contentLength":Ljava/lang/String;
    .end local v8    # "response":Lretrofit2/Response;, "Lretrofit2/Response<Lokhttp3/ResponseBody;>;"
    :catch_5
    move-exception v3

    goto :goto_3
.end method


# virtual methods
.method downloadFile()I
    .locals 6

    .prologue
    .line 66
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/milk/downloadservice/Mp3DownloadTask;->downloadTag()Ljava/io/File;

    move-result-object v1

    .line 67
    .local v1, "tag":Ljava/io/File;
    const-string v3, "DownloadTask"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "doInBackground downloaded tag"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/downloadservice/Mp3DownloadTask;->downloadTrack()Ljava/io/File;

    move-result-object v2

    .line 70
    .local v2, "track":Ljava/io/File;
    if-nez v2, :cond_1

    .line 71
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/downloadservice/Mp3DownloadTask;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 72
    const/16 v3, 0x6d

    .line 83
    .end local v1    # "tag":Ljava/io/File;
    .end local v2    # "track":Ljava/io/File;
    :goto_0
    return v3

    .line 74
    .restart local v1    # "tag":Ljava/io/File;
    .restart local v2    # "track":Ljava/io/File;
    :cond_0
    const/16 v3, 0x68

    goto :goto_0

    .line 78
    :cond_1
    invoke-direct {p0, v1, v2}, Lcom/samsung/android/app/music/service/milk/downloadservice/Mp3DownloadTask;->appendMp3File(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadConstant$DownloadException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    const/4 v3, 0x0

    goto :goto_0

    .line 79
    .end local v1    # "tag":Ljava/io/File;
    .end local v2    # "track":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadConstant$DownloadException;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadConstant$DownloadException;->printStackTrace()V

    .line 81
    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadConstant$DownloadException;->getErrorCode()I

    move-result v3

    goto :goto_0
.end method

.method getDownloadUrl()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 39
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/Mp3DownloadTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/Mp3DownloadTask;->mItem:Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;

    .line 40
    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->getBitrate()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/Mp3DownloadTask;->mItem:Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->getCodec()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/Mp3DownloadTask;->mItem:Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;

    .line 41
    invoke-virtual {v5}, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->getTrackId()Ljava/lang/String;

    move-result-object v5

    .line 40
    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport;->getTrackDownloadUrl(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    .line 41
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v2

    invoke-virtual {v0, v2}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    new-instance v2, Lcom/samsung/android/app/music/service/milk/net/subscriber/BaseSubscriber;

    const/16 v3, 0x27df

    invoke-direct {v2, v1, v3, p0}, Lcom/samsung/android/app/music/service/milk/net/subscriber/BaseSubscriber;-><init>(IILcom/samsung/android/app/music/service/milk/net/OnApiCallback;)V

    invoke-virtual {v0, v2}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 44
    return-void
.end method

.method isDownloadUrlAvailable()Z
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 49
    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/Mp3DownloadTask;->mItem:Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;

    .line 50
    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->getExpireTimeLong()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/Mp3DownloadTask;->mItem:Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->getExpireTimeLong()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/downloadservice/Mp3DownloadTask;->getServerTime()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-gez v3, :cond_0

    move v0, v2

    .line 51
    .local v0, "isExpired":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 52
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

    .line 60
    :goto_1
    return v1

    .end local v0    # "isExpired":Z
    :cond_0
    move v0, v1

    .line 50
    goto :goto_0

    .line 55
    .restart local v0    # "isExpired":Z
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/Mp3DownloadTask;->mItem:Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->getDownloadUrl()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/Mp3DownloadTask;->mItem:Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->getId3v2()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    .line 56
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

    .line 60
    goto :goto_1
.end method

.method scanFile()V
    .locals 3

    .prologue
    .line 89
    new-instance v0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadedMediaScannerClient;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/Mp3DownloadTask;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadedMediaScannerClient;-><init>(Landroid/content/Context;)V

    .line 90
    .local v0, "scanner":Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadedMediaScannerClient;
    new-instance v1, Lcom/samsung/android/app/music/service/milk/downloadservice/Mp3DownloadTask$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/service/milk/downloadservice/Mp3DownloadTask$1;-><init>(Lcom/samsung/android/app/music/service/milk/downloadservice/Mp3DownloadTask;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadedMediaScannerClient;->setOnScanCompleteListener(Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadedMediaScannerClient$OnScanCompletedListener;)V

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/Mp3DownloadTask;->filePath:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/Mp3DownloadTask;->fileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadedMediaScannerClient;->run(Ljava/lang/String;)V

    .line 124
    return-void
.end method
