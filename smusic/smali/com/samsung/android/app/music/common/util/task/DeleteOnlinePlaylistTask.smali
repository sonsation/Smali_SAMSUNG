.class public Lcom/samsung/android/app/music/common/util/task/DeleteOnlinePlaylistTask;
.super Lcom/samsung/android/app/music/common/util/task/DeleteMilkBaseTask;
.source "DeleteOnlinePlaylistTask.java"


# direct methods
.method public constructor <init>(Landroid/app/Activity;[JZ)V
    .locals 7
    .param p1, "a"    # Landroid/app/Activity;
    .param p2, "list"    # [J
    .param p3, "finish"    # Z

    .prologue
    .line 16
    sget-object v3, Lcom/samsung/android/app/music/provider/MilkContents$Playlists;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "_id"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/app/music/common/util/task/DeleteMilkBaseTask;-><init>(Landroid/app/Activity;[JLandroid/net/Uri;Ljava/lang/String;ZLcom/samsung/android/app/music/common/util/task/DeleteMilkBaseTask$OnTaskFinishListener;)V

    .line 17
    return-void
.end method

.method private deleteShortcuts(Landroid/content/Context;[J)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "list"    # [J

    .prologue
    .line 20
    array-length v4, p2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_1

    aget-wide v0, p2, v3

    .line 21
    .local v0, "id":J
    const-wide/16 v6, 0x0

    cmp-long v5, v0, v6

    if-gez v5, :cond_0

    .line 20
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 24
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 25
    .local v2, "playlistId":Ljava/lang/String;
    const v5, 0x100050

    .line 26
    invoke-direct {p0, p1, v2}, Lcom/samsung/android/app/music/common/util/task/DeleteOnlinePlaylistTask;->getPlaylistTitle(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 25
    invoke-static {p1, v5, v2, v6}, Lcom/samsung/android/app/music/common/util/ShortCutUtils;->uninstallShortcutIcon(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 28
    .end local v0    # "id":J
    .end local v2    # "playlistId":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private getPlaylistTitle(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "playlistId"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 31
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 32
    .local v1, "uri":Landroid/net/Uri;
    const/4 v7, 0x0

    .line 33
    .local v7, "name":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "name"

    aput-object v0, v2, v4

    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    .line 34
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 37
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v7

    .line 40
    :cond_0
    if-eqz v6, :cond_1

    if-eqz v3, :cond_2

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 41
    :cond_1
    :goto_0
    return-object v7

    .line 40
    :catch_0
    move-exception v0

    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 33
    :catch_1
    move-exception v0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 40
    :catchall_0
    move-exception v2

    move-object v3, v0

    move-object v0, v2

    :goto_1
    if-eqz v6, :cond_3

    if-eqz v3, :cond_4

    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_3
    :goto_2
    throw v0

    :catch_2
    move-exception v2

    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 2
    .param p1, "arg0"    # [Ljava/lang/Void;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/samsung/android/app/music/common/util/task/DeleteOnlinePlaylistTask;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/util/task/DeleteOnlinePlaylistTask;->mList:[J

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/common/util/task/DeleteOnlinePlaylistTask;->deleteShortcuts(Landroid/content/Context;[J)V

    .line 47
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/common/util/task/DeleteMilkBaseTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/common/util/task/DeleteOnlinePlaylistTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
