.class public Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadedMediaScannerClient;
.super Ljava/lang/Object;
.source "MilkDownloadedMediaScannerClient.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadedMediaScannerClient$OnScanCompletedListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MilkDownloadedMediaScannerClient"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFullPath:Ljava/lang/String;

.field private mListener:Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadedMediaScannerClient$OnScanCompletedListener;

.field private mMs:Landroid/media/MediaScannerConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadedMediaScannerClient;->mContext:Landroid/content/Context;

    .line 26
    return-void
.end method

.method private getLocalTrackId(Ljava/io/File;)Ljava/lang/String;
    .locals 17
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 58
    const/4 v1, 0x3

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "track"

    aput-object v2, v3, v1

    const/4 v1, 0x1

    const-string v2, "_size"

    aput-object v2, v3, v1

    const/4 v1, 0x2

    const-string v2, "duration"

    aput-object v2, v3, v1

    .line 64
    .local v3, "proj":[Ljava/lang/String;
    const-string v4, "_data = ?"

    .line 65
    .local v4, "selection":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    .line 67
    .local v5, "selectionFile":[Ljava/lang/String;
    const/4 v11, 0x0

    .line 68
    .local v11, "localTrackId":Ljava/lang/String;
    const/4 v7, 0x0

    .line 70
    .local v7, "cur":Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadedMediaScannerClient;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 73
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 74
    :cond_0
    const-string v1, "MilkDownloadedMediaScannerClient"

    const-string v2, "getLocalTrackId Cursor is null."

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    :goto_0
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 99
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 102
    :cond_1
    :goto_1
    return-object v11

    .line 76
    :cond_2
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_3

    .line 77
    const-string v1, "MilkDownloadedMediaScannerClient"

    const-string v2, "getLocalTrackId Cursor should not bigger than 1!"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 81
    const-string/jumbo v1, "track"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 82
    .local v15, "trackColumn":I
    const-string v1, "_size"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 83
    .local v13, "sizeColumn":I
    const-string v1, "duration"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 85
    .local v9, "durationColumn":I
    invoke-interface {v7, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 86
    .local v14, "track":Ljava/lang/String;
    invoke-interface {v7, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 87
    .local v12, "size":Ljava/lang/String;
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 89
    .local v8, "duration":Ljava/lang/String;
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%s@%s@%s"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v14, v6, v16

    const/16 v16, 0x1

    aput-object v12, v6, v16

    const/16 v16, 0x2

    aput-object v8, v6, v16

    invoke-static {v1, v2, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 90
    const-string v1, "MilkDownloadedMediaScannerClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getLocalTrackId localTrackId = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 95
    .end local v8    # "duration":Ljava/lang/String;
    .end local v9    # "durationColumn":I
    .end local v12    # "size":Ljava/lang/String;
    .end local v13    # "sizeColumn":I
    .end local v14    # "track":Ljava/lang/String;
    .end local v15    # "trackColumn":I
    :catch_0
    move-exception v10

    .line 96
    .local v10, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v1, "MilkDownloadedMediaScannerClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getLocalTrackId Error! "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 98
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 99
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 92
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_4
    :try_start_3
    const-string v1, "MilkDownloadedMediaScannerClient"

    const-string v2, "getLocalTrackId Error! failed to moveToFirst"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 98
    :catchall_0
    move-exception v1

    if-eqz v7, :cond_5

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_5

    .line 99
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v1
.end method


# virtual methods
.method public onMediaScannerConnected()V
    .locals 3

    .prologue
    .line 43
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadedMediaScannerClient;->mMs:Landroid/media/MediaScannerConnection;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadedMediaScannerClient;->mFullPath:Ljava/lang/String;

    const-string v2, "audio/mp4a-latm"

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 48
    const-string v1, "MilkDownloadedMediaScannerClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onScanCompleted path = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", uri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadedMediaScannerClient;->mMs:Landroid/media/MediaScannerConnection;

    invoke-virtual {v1}, Landroid/media/MediaScannerConnection;->disconnect()V

    .line 51
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 52
    .local v0, "file":Ljava/io/File;
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadedMediaScannerClient;->mListener:Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadedMediaScannerClient$OnScanCompletedListener;

    if-eqz v1, :cond_0

    .line 53
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadedMediaScannerClient;->mListener:Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadedMediaScannerClient$OnScanCompletedListener;

    if-eqz p2, :cond_1

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadedMediaScannerClient;->getLocalTrackId(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-interface {v2, v1, p1, p2}, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadedMediaScannerClient$OnScanCompletedListener;->onScanCompleted(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 55
    :cond_0
    return-void

    .line 53
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public run(Ljava/lang/String;)V
    .locals 3
    .param p1, "fullPath"    # Ljava/lang/String;

    .prologue
    .line 33
    const-string v0, "MilkDownloadedMediaScannerClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "run file : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadedMediaScannerClient;->mFullPath:Ljava/lang/String;

    .line 36
    new-instance v0, Landroid/media/MediaScannerConnection;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadedMediaScannerClient;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadedMediaScannerClient;->mMs:Landroid/media/MediaScannerConnection;

    .line 37
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadedMediaScannerClient;->mMs:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->connect()V

    .line 38
    return-void
.end method

.method public setOnScanCompleteListener(Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadedMediaScannerClient$OnScanCompletedListener;)V
    .locals 0
    .param p1, "l"    # Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadedMediaScannerClient$OnScanCompletedListener;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadedMediaScannerClient;->mListener:Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadedMediaScannerClient$OnScanCompletedListener;

    .line 30
    return-void
.end method
