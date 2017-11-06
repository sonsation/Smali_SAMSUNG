.class public final Lcom/samsung/android/app/musiclibrary/core/player/util/GenrePlayUtils;
.super Ljava/lang/Object;
.source "GenrePlayUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method

.method public static getSongList(Landroid/content/Context;Ljava/lang/String;)[J
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "genreName"    # Ljava/lang/String;

    .prologue
    .line 18
    new-instance v6, Lcom/samsung/android/app/musiclibrary/ui/list/query/GenreTrackQueryArgs;

    invoke-direct {v6, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/query/GenreTrackQueryArgs;-><init>(Ljava/lang/String;)V

    .line 19
    .local v6, "args":Lcom/samsung/android/app/musiclibrary/ui/list/query/GenreTrackQueryArgs;
    iget-object v1, v6, Lcom/samsung/android/app/musiclibrary/ui/list/query/GenreTrackQueryArgs;->uri:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    iget-object v3, v6, Lcom/samsung/android/app/musiclibrary/ui/list/query/GenreTrackQueryArgs;->selection:Ljava/lang/String;

    iget-object v4, v6, Lcom/samsung/android/app/musiclibrary/ui/list/query/GenreTrackQueryArgs;->selectionArgs:[Ljava/lang/String;

    iget-object v5, v6, Lcom/samsung/android/app/musiclibrary/ui/list/query/GenreTrackQueryArgs;->orderBy:Ljava/lang/String;

    move-object v0, p0

    .line 20
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 19
    .local v7, "c":Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 22
    :try_start_0
    invoke-static {v7}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/AudioIdUtils;->getAudioIds(Landroid/database/Cursor;)[J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 23
    .local v8, "list":[J
    if-eqz v7, :cond_0

    if-eqz v1, :cond_1

    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 24
    :cond_0
    :goto_0
    return-object v8

    .line 23
    :catch_0
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 19
    .end local v8    # "list":[J
    :catch_1
    move-exception v1

    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 23
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    if-eqz v1, :cond_3

    :try_start_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
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
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method

.method public static play(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "genreName"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/player/util/GenrePlayUtils;->getSongList(Landroid/content/Context;Ljava/lang/String;)[J

    move-result-object v0

    .line 29
    .local v0, "list":[J
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/ServicePlayUtils;->play(Ljava/lang/String;[JI)V

    .line 30
    return-void
.end method
