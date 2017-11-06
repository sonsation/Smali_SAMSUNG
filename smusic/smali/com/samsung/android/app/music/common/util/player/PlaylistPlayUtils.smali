.class public final Lcom/samsung/android/app/music/common/util/player/PlaylistPlayUtils;
.super Ljava/lang/Object;
.source "PlaylistPlayUtils.java"


# static fields
.field private static final SELECTION_CONDITION:Ljava/lang/String; = " AND %1$s LIKE \"%%%2$s%%\""

.field private static final SELECTION_DEFAULT_CONDITION:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    .line 23
    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->buildCpAttrSelection(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/common/util/player/PlaylistPlayUtils;->SELECTION_DEFAULT_CONDITION:Ljava/lang/String;

    .line 22
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method private static filterSongs(Landroid/content/Context;[JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[J
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "list"    # [J
    .param p2, "album"    # Ljava/lang/String;
    .param p3, "artist"    # Ljava/lang/String;
    .param p4, "genre"    # Ljava/lang/String;
    .param p5, "title"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x2

    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 120
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v0, "_id"

    .line 121
    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->convertAudioIdsToSelection(Ljava/lang/String;[J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 122
    .local v7, "selectionBuilder":Ljava/lang/StringBuilder;
    if-eqz p5, :cond_0

    .line 123
    const-string v0, " AND %1$s LIKE \"%%%2$s%%\""

    new-array v1, v8, [Ljava/lang/Object;

    const-string/jumbo v2, "title"

    aput-object v2, v1, v3

    aput-object p5, v1, v5

    .line 124
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    :cond_0
    if-eqz p2, :cond_1

    .line 127
    const-string v0, " AND %1$s LIKE \"%%%2$s%%\""

    new-array v1, v8, [Ljava/lang/Object;

    const-string v2, "album"

    aput-object v2, v1, v3

    aput-object p2, v1, v5

    .line 128
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    :cond_1
    if-eqz p3, :cond_2

    .line 131
    const-string v0, " AND %1$s LIKE \"%%%2$s%%\""

    new-array v1, v8, [Ljava/lang/Object;

    const-string v2, "artist"

    aput-object v2, v1, v3

    aput-object p3, v1, v5

    .line 132
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 131
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    :cond_2
    if-eqz p4, :cond_3

    .line 135
    const-string v0, " AND %1$s LIKE \"%%%2$s%%\""

    new-array v1, v8, [Ljava/lang/Object;

    const-string v2, "genre_name"

    aput-object v2, v1, v3

    aput-object p4, v1, v5

    .line 136
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 135
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    :cond_3
    sget-object v0, Lcom/samsung/android/app/music/common/util/player/PlaylistPlayUtils;->SELECTION_DEFAULT_CONDITION:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v5, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v3

    .line 140
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v5, v4

    .line 139
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 141
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-static {v6}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/AudioIdUtils;->getAudioIds(Landroid/database/Cursor;)[J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 142
    if-eqz v6, :cond_4

    if-eqz v4, :cond_5

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_4
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v4, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 139
    :catch_1
    move-exception v4

    :try_start_2
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 142
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_6

    if-eqz v4, :cond_7

    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_6
    :goto_1
    throw v0

    :catch_2
    move-exception v1

    invoke-virtual {v4, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_7
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method

.method private static getPlaylistId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "playlistName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 69
    if-nez p1, :cond_0

    .line 84
    :goto_0
    return-object v5

    .line 72
    :cond_0
    const/4 v7, 0x0

    .line 74
    .local v7, "playlistId":Ljava/lang/String;
    invoke-static {p1}, Lcom/samsung/android/app/music/common/util/FavoriteTracksUtils;->isFavoritePlaylist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->CONTENT_URI_INCLUDE_NESTED:Landroid/net/Uri;

    :goto_1
    new-array v2, v4, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v8

    const-string v3, "name COLLATE NOCASE = ? "

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v8

    move-object v0, p0

    .line 73
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 80
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v7

    .line 83
    :cond_1
    if-eqz v6, :cond_2

    if-eqz v5, :cond_4

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    :goto_2
    move-object v5, v7

    .line 84
    goto :goto_0

    .line 74
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_3
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_1

    .line 83
    .restart local v6    # "c":Landroid/database/Cursor;
    :catch_0
    move-exception v0

    invoke-virtual {v5, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 73
    :catch_1
    move-exception v0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 83
    :catchall_0
    move-exception v1

    move-object v5, v0

    move-object v0, v1

    :goto_3
    if-eqz v6, :cond_5

    if-eqz v5, :cond_6

    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_5
    :goto_4
    throw v0

    :catch_2
    move-exception v1

    invoke-virtual {v5, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_6
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_3
.end method

.method public static getSongList(Landroid/content/Context;Ljava/lang/String;)[J
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "playlistId"    # Ljava/lang/String;

    .prologue
    .line 51
    if-nez p1, :cond_1

    .line 52
    const/4 v1, 0x0

    new-array v8, v1, [J

    .line 65
    :cond_0
    :goto_0
    return-object v8

    .line 56
    :cond_1
    new-instance v0, Lcom/samsung/android/app/music/list/local/query/PlaylistTrackQueryArgs;

    const-string/jumbo v3, "unknown"

    .line 57
    invoke-static {}, Lcom/samsung/android/app/music/common/util/ListUtils;->getActionableCpAttrs()I

    move-result v4

    const/4 v5, -0x1

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/list/local/query/PlaylistTrackQueryArgs;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    .line 60
    .local v0, "args":Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    iget-object v2, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->uri:Landroid/net/Uri;

    iget-object v3, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->projection:[Ljava/lang/String;

    iget-object v4, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selection:Ljava/lang/String;

    iget-object v5, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selectionArgs:[Ljava/lang/String;

    iget-object v6, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->orderBy:Ljava/lang/String;

    move-object v1, p0

    .line 61
    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 60
    .local v7, "c":Landroid/database/Cursor;
    const/4 v2, 0x0

    .line 63
    :try_start_0
    invoke-static {v7}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/AudioIdUtils;->getAudioIds(Landroid/database/Cursor;)[J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 64
    .local v8, "list":[J
    if-eqz v7, :cond_0

    if-eqz v2, :cond_2

    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 60
    .end local v8    # "list":[J
    :catch_1
    move-exception v2

    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 64
    :catchall_0
    move-exception v1

    if-eqz v7, :cond_3

    if-eqz v2, :cond_4

    :try_start_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_3
    :goto_1
    throw v1

    :catch_2
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method

.method public static play(Landroid/content/Context;Ljava/lang/String;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "playlistName"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/common/util/player/PlaylistPlayUtils;->getPlaylistId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 33
    .local v1, "playlistId":Ljava/lang/String;
    invoke-static {p0, v1}, Lcom/samsung/android/app/music/common/util/player/PlaylistPlayUtils;->getSongList(Landroid/content/Context;Ljava/lang/String;)[J

    move-result-object v0

    .line 34
    .local v0, "list":[J
    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/ServicePlayUtils;->play(Ljava/lang/String;[JI)V

    .line 35
    array-length v2, v0

    return v2
.end method

.method public static play(Landroid/content/Context;Ljava/lang/String;IZ)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "playlistId"    # Ljava/lang/String;
    .param p2, "position"    # I
    .param p3, "isMaintainSeekPosition"    # Z

    .prologue
    .line 45
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/common/util/player/PlaylistPlayUtils;->getSongList(Landroid/content/Context;Ljava/lang/String;)[J

    move-result-object v0

    .line 46
    .local v0, "list":[J
    invoke-static {p1, v0, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/ServicePlayUtils;->play(Ljava/lang/String;[JIZ)V

    .line 47
    array-length v1, v0

    return v1
.end method

.method public static play(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "playlist"    # Ljava/lang/String;
    .param p2, "album"    # Ljava/lang/String;
    .param p3, "artist"    # Ljava/lang/String;
    .param p4, "genre"    # Ljava/lang/String;
    .param p5, "title"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 102
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/common/util/player/PlaylistPlayUtils;->getPlaylistId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 103
    .local v6, "plid":Ljava/lang/String;
    invoke-static {p0, v6}, Lcom/samsung/android/app/music/common/util/player/PlaylistPlayUtils;->getSongList(Landroid/content/Context;Ljava/lang/String;)[J

    move-result-object v1

    .line 105
    .local v1, "list":[J
    if-nez p5, :cond_0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    if-eqz p4, :cond_1

    :cond_0
    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 106
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/music/common/util/player/PlaylistPlayUtils;->filterSongs(Landroid/content/Context;[JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[J

    move-result-object v1

    .line 108
    :cond_1
    if-eqz v1, :cond_2

    array-length v0, v1

    if-nez v0, :cond_3

    :cond_2
    move v0, v7

    .line 112
    :goto_0
    return v0

    .line 111
    :cond_3
    invoke-static {v6, v1, v7}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/ServicePlayUtils;->play(Ljava/lang/String;[JI)V

    .line 112
    const/4 v0, 0x1

    goto :goto_0
.end method
