.class public Lcom/samsung/android/app/music/common/util/task/PlaylistItemTask;
.super Lcom/samsung/android/app/musiclibrary/ui/task/LoadingProgressTask;
.source "PlaylistItemTask.java"


# static fields
.field private static final MAX_BULK_ITEM:I = 0x3e8

.field private static volatile sContentValuesCache:[Landroid/content/ContentValues;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/app/music/common/util/task/PlaylistItemTask;->sContentValuesCache:[Landroid/content/ContentValues;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 0
    .param p1, "a"    # Landroid/app/Activity;
    .param p2, "finish"    # Z

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/task/LoadingProgressTask;-><init>(Landroid/app/Activity;Z)V

    .line 37
    return-void
.end method

.method public static declared-synchronized addToPlaylistInternal(Landroid/content/Context;[JJ)I
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ids"    # [J
    .param p2, "playlistId"    # J

    .prologue
    .line 41
    const-class v6, Lcom/samsung/android/app/music/common/util/task/PlaylistItemTask;

    monitor-enter v6

    :try_start_0
    sget-object v5, Lcom/samsung/android/app/music/common/util/task/PlaylistItemTask;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addToPlaylistInternal play list id : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const/4 v2, 0x0

    .line 43
    .local v2, "numinserted":I
    if-nez p1, :cond_1

    .line 46
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SMUSIC-"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v7, Lcom/samsung/android/app/music/common/util/task/PlaylistItemTask;->TAG:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "ListSelection null"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    :cond_0
    monitor-exit v6

    return v2

    .line 48
    :cond_1
    :try_start_1
    const-string/jumbo v5, "unknown"

    .line 49
    invoke-static {p2, p3, v5}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists$Members;->getContentUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 50
    .local v4, "uri":Landroid/net/Uri;
    array-length v3, p1

    .line 51
    .local v3, "size":I
    invoke-static {p0, p2, p3}, Lcom/samsung/android/app/music/common/util/task/PlaylistItemTask;->getPlaylistMaxOrder(Landroid/content/Context;J)I

    move-result v5

    add-int/lit8 v0, v5, 0x1

    .line 52
    .local v0, "baseOrder":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 53
    const/16 v5, 0x3e8

    invoke-static {p1, v1, v5, v0}, Lcom/samsung/android/app/music/common/util/task/PlaylistItemTask;->makeInsertItems([JIII)V

    .line 54
    sget-object v5, Lcom/samsung/android/app/music/common/util/task/PlaylistItemTask;->sContentValuesCache:[Landroid/content/ContentValues;

    invoke-static {p0, v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->bulkInsert(Landroid/content/Context;Landroid/net/Uri;[Landroid/content/ContentValues;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    add-int/2addr v2, v5

    .line 52
    add-int/lit16 v1, v1, 0x3e8

    goto :goto_0

    .line 41
    .end local v0    # "baseOrder":I
    .end local v1    # "i":I
    .end local v2    # "numinserted":I
    .end local v3    # "size":I
    .end local v4    # "uri":Landroid/net/Uri;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method private static getPlaylistMaxOrder(Landroid/content/Context;J)I
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "playlistId"    # J

    .prologue
    .line 85
    const-string/jumbo v0, "unknown"

    .line 86
    invoke-static {p1, p2, v0}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists$Members;->getContentUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 87
    .local v1, "uri":Landroid/net/Uri;
    const/4 v7, 0x0

    .line 88
    .local v7, "playOrder":I
    const/4 v6, 0x0

    .line 90
    .local v6, "c":Landroid/database/Cursor;
    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "max(play_order)"

    aput-object v3, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    .line 91
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 93
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 97
    :cond_0
    if-eqz v6, :cond_1

    .line 98
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 101
    :cond_1
    return v7

    .line 97
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 98
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method protected static getPlaylistSongCount(Landroid/content/Context;J)I
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "playlistId"    # J

    .prologue
    .line 63
    const-string/jumbo v0, "unknown"

    .line 64
    invoke-static {p1, p2, v0}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists$Members;->getContentUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 65
    .local v1, "uri":Landroid/net/Uri;
    const/4 v7, 0x0

    .line 66
    .local v7, "count":I
    const/4 v6, 0x0

    .line 68
    .local v6, "c":Landroid/database/Cursor;
    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "count(*)"

    aput-object v3, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    .line 69
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 71
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 75
    :cond_0
    if-eqz v6, :cond_1

    .line 76
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 79
    :cond_1
    return v7

    .line 75
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 76
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method private static makeInsertItems([JIII)V
    .locals 6
    .param p0, "ids"    # [J
    .param p1, "offset"    # I
    .param p2, "len"    # I
    .param p3, "base"    # I

    .prologue
    .line 115
    add-int v1, p1, p2

    array-length v2, p0

    if-le v1, v2, :cond_0

    .line 116
    array-length v1, p0

    sub-int p2, v1, p1

    .line 120
    :cond_0
    sget-object v1, Lcom/samsung/android/app/music/common/util/task/PlaylistItemTask;->sContentValuesCache:[Landroid/content/ContentValues;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/samsung/android/app/music/common/util/task/PlaylistItemTask;->sContentValuesCache:[Landroid/content/ContentValues;

    array-length v1, v1

    if-eq v1, p2, :cond_4

    .line 121
    :cond_1
    const-class v2, Lcom/samsung/android/app/music/common/util/task/PlaylistItemTask;

    monitor-enter v2

    .line 122
    :try_start_0
    sget-object v1, Lcom/samsung/android/app/music/common/util/task/PlaylistItemTask;->sContentValuesCache:[Landroid/content/ContentValues;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/samsung/android/app/music/common/util/task/PlaylistItemTask;->sContentValuesCache:[Landroid/content/ContentValues;

    array-length v1, v1

    if-eq v1, p2, :cond_3

    .line 123
    :cond_2
    new-array v1, p2, [Landroid/content/ContentValues;

    sput-object v1, Lcom/samsung/android/app/music/common/util/task/PlaylistItemTask;->sContentValuesCache:[Landroid/content/ContentValues;

    .line 125
    :cond_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    :cond_4
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_6

    .line 129
    sget-object v1, Lcom/samsung/android/app/music/common/util/task/PlaylistItemTask;->sContentValuesCache:[Landroid/content/ContentValues;

    aget-object v1, v1, v0

    if-nez v1, :cond_5

    .line 130
    sget-object v1, Lcom/samsung/android/app/music/common/util/task/PlaylistItemTask;->sContentValuesCache:[Landroid/content/ContentValues;

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    aput-object v2, v1, v0

    .line 132
    :cond_5
    sget-object v1, Lcom/samsung/android/app/music/common/util/task/PlaylistItemTask;->sContentValuesCache:[Landroid/content/ContentValues;

    aget-object v1, v1, v0

    const-string/jumbo v2, "play_order"

    add-int v3, p3, p1

    add-int/2addr v3, v0

    .line 133
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 134
    sget-object v1, Lcom/samsung/android/app/music/common/util/task/PlaylistItemTask;->sContentValuesCache:[Landroid/content/ContentValues;

    aget-object v1, v1, v0

    const-string v2, "audio_id"

    add-int v3, p1, v0

    aget-wide v4, p0, v3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 128
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 125
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 136
    .restart local v0    # "i":I
    :cond_6
    return-void
.end method


# virtual methods
.method protected setLoadingProgress()Z
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x0

    return v0
.end method

.method protected setMessage(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 1
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    .line 145
    const/4 v0, 0x0

    return-object v0
.end method
