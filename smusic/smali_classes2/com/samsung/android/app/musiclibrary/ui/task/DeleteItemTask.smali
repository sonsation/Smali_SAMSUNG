.class public Lcom/samsung/android/app/musiclibrary/ui/task/DeleteItemTask;
.super Lcom/samsung/android/app/musiclibrary/ui/task/LoadingProgressTask;
.source "DeleteItemTask.java"


# static fields
.field private static final COLUMNS:[Ljava/lang/String;


# instance fields
.field private final mList:[J

.field private final mLyricsFileMatcher:Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 27
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_data"

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/task/DeleteItemTask;->COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;[JLcom/samsung/android/app/musiclibrary/ui/util/FileMatcher;Z)V
    .locals 0
    .param p1, "a"    # Landroid/app/Activity;
    .param p2, "list"    # [J
    .param p3, "lyricsFileMatcher"    # Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher;
    .param p4, "finish"    # Z

    .prologue
    .line 37
    invoke-direct {p0, p1, p4}, Lcom/samsung/android/app/musiclibrary/ui/task/LoadingProgressTask;-><init>(Landroid/app/Activity;Z)V

    .line 38
    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/ui/task/DeleteItemTask;->mLyricsFileMatcher:Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher;

    .line 39
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/task/DeleteItemTask;->mList:[J

    .line 40
    return-void
.end method

.method private deleteFile(Ljava/lang/String;)V
    .locals 8
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 115
    if-eqz p1, :cond_1

    .line 116
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 118
    .local v2, "f":Ljava/io/File;
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_0

    .line 122
    const/4 v4, 0x1

    sget-object v5, Lcom/samsung/android/app/musiclibrary/ui/task/LoadingProgressTask;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Failed to delete file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 124
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/task/DeleteItemTask;->mLyricsFileMatcher:Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher;

    if-eqz v4, :cond_1

    .line 125
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/task/DeleteItemTask;->mLyricsFileMatcher:Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher;

    invoke-virtual {v4, p1}, Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher;->matches(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 126
    .local v3, "lyricFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 127
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v0

    .line 128
    .local v0, "deleted":Z
    sget-object v4, Lcom/samsung/android/app/musiclibrary/ui/task/LoadingProgressTask;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Request lyric delete : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    .end local v0    # "deleted":Z
    .end local v2    # "f":Ljava/io/File;
    .end local v3    # "lyricFile":Ljava/io/File;
    :cond_1
    :goto_0
    return-void

    .line 132
    .restart local v2    # "f":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 133
    .local v1, "ex":Ljava/lang/SecurityException;
    invoke-virtual {v1}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0
.end method

.method private deleteItems(Landroid/content/Context;[J)I
    .locals 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "list"    # [J

    .prologue
    .line 65
    if-eqz p2, :cond_0

    move-object/from16 v0, p2

    array-length v2, v0

    if-nez v2, :cond_2

    .line 66
    :cond_0
    const/4 v3, 0x1

    const-string v4, "UiList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deleteItems() called with list array is "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz p2, :cond_1

    move-object/from16 v0, p2

    array-length v2, v0

    .line 67
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_0
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 66
    invoke-static {v3, v4, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 68
    const/4 v2, 0x0

    .line 107
    :goto_1
    return v2

    .line 67
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 71
    :cond_2
    const-string v2, "_id"

    .line 72
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/task/DeleteItemTask;->convertIdArray([J)[J

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->convertAudioIdsToSelection(Ljava/lang/String;[J)Ljava/lang/String;

    move-result-object v5

    .line 73
    .local v5, "selectedIds":Ljava/lang/String;
    sget-object v3, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/samsung/android/app/musiclibrary/ui/task/DeleteItemTask;->COLUMNS:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p1

    .line 74
    invoke-static/range {v2 .. v7}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 73
    .local v8, "c":Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 76
    if-eqz v8, :cond_6

    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 78
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v13

    .line 79
    .local v13, "size":I
    new-array v9, v13, [Ljava/lang/String;

    .line 81
    .local v9, "deletePath":[Ljava/lang/String;
    const/4 v11, 0x0

    .line 82
    .local v11, "i":I
    :goto_2
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_4

    .line 83
    const/4 v2, 0x1

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v9, v11

    .line 84
    add-int/lit8 v11, v11, 0x1

    .line 85
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_2

    .line 73
    .end local v9    # "deletePath":[Ljava/lang/String;
    .end local v11    # "i":I
    .end local v13    # "size":I
    :catch_0
    move-exception v2

    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    :catchall_0
    move-exception v3

    move-object/from16 v17, v3

    move-object v3, v2

    move-object/from16 v2, v17

    :goto_3
    if-eqz v8, :cond_3

    if-eqz v3, :cond_a

    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :cond_3
    :goto_4
    throw v2

    .line 88
    .restart local v9    # "deletePath":[Ljava/lang/String;
    .restart local v11    # "i":I
    .restart local v13    # "size":I
    :cond_4
    :try_start_3
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    .line 89
    move-object/from16 v0, p1

    invoke-static {v0, v2, v5, v4}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->delete(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    .line 90
    .local v10, "deleted":I
    move-object/from16 v0, p2

    array-length v2, v0

    if-eq v10, v2, :cond_5

    .line 91
    const/4 v2, 0x1

    sget-object v4, Lcom/samsung/android/app/musiclibrary/ui/task/DeleteItemTask;->TAG:Ljava/lang/String;

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v7, "deleteItems : delete result is different. list.length[%d], deleted[%d], c.getCount()[%d]"

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v16, v0

    .line 93
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x2

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    .line 91
    invoke-static {v6, v7, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v4, v6}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 97
    :cond_5
    array-length v4, v9

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v4, :cond_7

    aget-object v12, v9, v2

    .line 98
    .local v12, "path":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/samsung/android/app/musiclibrary/ui/task/DeleteItemTask;->deleteFile(Ljava/lang/String;)V

    .line 97
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 101
    .end local v9    # "deletePath":[Ljava/lang/String;
    .end local v10    # "deleted":I
    .end local v11    # "i":I
    .end local v12    # "path":Ljava/lang/String;
    .end local v13    # "size":I
    :cond_6
    const/4 v2, 0x1

    sget-object v4, Lcom/samsung/android/app/musiclibrary/ui/task/DeleteItemTask;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deleteItems : c is null or c.moveToFirst is failed. c : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v4, v6}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 103
    :cond_7
    if-eqz v8, :cond_8

    if-eqz v3, :cond_9

    :try_start_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    .line 106
    :cond_8
    :goto_6
    const-wide/16 v2, 0x578

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 107
    move-object/from16 v0, p2

    array-length v2, v0

    goto/16 :goto_1

    .line 103
    :catch_1
    move-exception v2

    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_9
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_6

    :catch_2
    move-exception v4

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_4

    :cond_a
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_4

    :catchall_1
    move-exception v2

    goto/16 :goto_3
.end method


# virtual methods
.method protected convertIdArray([J)[J
    .locals 0
    .param p1, "list"    # [J

    .prologue
    .line 111
    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/task/DeleteItemTask;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/task/DeleteItemTask;->mList:[J

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/task/DeleteItemTask;->deleteItems(Landroid/content/Context;[J)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/task/DeleteItemTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/task/DeleteItemTask;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/task/DeleteItemTask;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 45
    sget v0, Lcom/samsung/android/app/musiclibrary/R$string;->processing:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/task/DeleteItemTask;->showLoading(I)V

    .line 47
    :cond_0
    return-void
.end method

.method protected setLoadingProgress()Z
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x1

    return v0
.end method

.method protected setMessage(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 1
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    .line 56
    const/4 v0, 0x0

    return-object v0
.end method
