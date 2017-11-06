.class public final Lcom/samsung/android/app/musiclibrary/core/player/util/FolderPlayUtils;
.super Ljava/lang/Object;
.source "FolderPlayUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method

.method public static getSongList(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;Ljava/lang/String;)[J
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "args"    # Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    .param p2, "bucketId"    # Ljava/lang/String;

    .prologue
    .line 33
    iget-object v1, p1, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->uri:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    iget-object v3, p1, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selection:Ljava/lang/String;

    iget-object v4, p1, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selectionArgs:[Ljava/lang/String;

    iget-object v5, p1, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->orderBy:Ljava/lang/String;

    move-object v0, p0

    .line 34
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 33
    .local v6, "c":Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 36
    :try_start_0
    invoke-static {v6}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/AudioIdUtils;->getAudioIds(Landroid/database/Cursor;)[J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 37
    .local v7, "list":[J
    if-eqz v6, :cond_0

    if-eqz v1, :cond_1

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 38
    :cond_0
    :goto_0
    return-object v7

    .line 37
    :catch_0
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 33
    .end local v7    # "list":[J
    :catch_1
    move-exception v1

    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 37
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    if-eqz v1, :cond_3

    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_2
    :goto_1
    throw v0

    :catch_2
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method

.method public static play(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "queryArgs"    # Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    .param p2, "bucketId"    # Ljava/lang/String;
    .param p3, "isMaintainSeekPosition"    # Z

    .prologue
    .line 18
    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/player/util/FolderPlayUtils;->playInternal(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;Ljava/lang/String;Z)Z

    .line 19
    return-void
.end method

.method private static playInternal(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;Ljava/lang/String;Z)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "queryArgs"    # Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    .param p2, "bucketId"    # Ljava/lang/String;
    .param p3, "isMaintainSeekPosition"    # Z

    .prologue
    const/4 v1, 0x0

    .line 23
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/player/util/FolderPlayUtils;->getSongList(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;Ljava/lang/String;)[J

    move-result-object v0

    .line 24
    .local v0, "list":[J
    if-eqz v0, :cond_0

    array-length v2, v0

    if-nez v2, :cond_1

    .line 28
    :cond_0
    :goto_0
    return v1

    .line 27
    :cond_1
    invoke-static {p2, v0, v1, p3}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/ServicePlayUtils;->play(Ljava/lang/String;[JIZ)V

    .line 28
    const/4 v1, 0x1

    goto :goto_0
.end method
