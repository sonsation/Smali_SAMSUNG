.class public final Lcom/samsung/android/app/music/common/util/FavoriteTracksUtils;
.super Ljava/lang/Object;
.source "FavoriteTracksUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FavoriteTracksUtils"

.field private static final rawQuery:Ljava/lang/String; = "SELECT audio_id, map_id FROM ( SELECT audio_id, count(audio_id) AS count_of_tracks, M._id AS map_id    FROM audio_playlists_map M, audio A    WHERE A._id = M.audio_id AND M.playlist_id = ?   GROUP BY audio_id ) WHERE count_of_tracks > 1;"

.field private static sFavoriteListId:J

.field private static final sFavoriteListToken:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/common/util/FavoriteTracksUtils;->sFavoriteListToken:Ljava/lang/Object;

    .line 28
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/samsung/android/app/music/common/util/FavoriteTracksUtils;->sFavoriteListId:J

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public static clearDuplicatedFavoriteTracks(Landroid/content/Context;J)V
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "favoriteListId"    # J

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 107
    const-string v0, "SELECT audio_id, map_id FROM ( SELECT audio_id, count(audio_id) AS count_of_tracks, M._id AS map_id    FROM audio_playlists_map M, audio A    WHERE A._id = M.audio_id AND M.playlist_id = ?   GROUP BY audio_id ) WHERE count_of_tracks > 1;"

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->getRawQueryAppendedUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 108
    .local v1, "uri":Landroid/net/Uri;
    new-array v4, v3, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    .line 109
    .local v4, "selectionArgs":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 111
    .local v7, "c":Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 112
    .local v8, "deleted":I
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    :try_start_0
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 113
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v11, v4

    .line 116
    .end local v4    # "selectionArgs":[Ljava/lang/String;
    .local v11, "selectionArgs":[Ljava/lang/String;
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 117
    .local v6, "audioId":Ljava/lang/String;
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 118
    .local v9, "mapId":Ljava/lang/String;
    const-string v10, "audio_id = ? AND _id != ?"

    .line 119
    .local v10, "selection":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v6, v4, v0

    const/4 v0, 0x1

    aput-object v9, v4, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 120
    .end local v11    # "selectionArgs":[Ljava/lang/String;
    .restart local v4    # "selectionArgs":[Ljava/lang/String;
    :try_start_2
    const-string v0, "local"

    .line 121
    invoke-static {p1, p2, v0}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists$Members;->getContentUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 120
    invoke-static {p0, v0, v10, v4}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->delete(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    add-int/2addr v8, v0

    .line 124
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    .end local v6    # "audioId":Ljava/lang/String;
    .end local v9    # "mapId":Ljava/lang/String;
    .end local v10    # "selection":Ljava/lang/String;
    :cond_1
    const-string v0, "FavoriteTracksUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearDuplicatedFavoriteTracks : deleted "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 128
    if-eqz v7, :cond_2

    .line 129
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 132
    :cond_2
    return-void

    .line 128
    :catchall_0
    move-exception v0

    :goto_0
    if-eqz v7, :cond_3

    .line 129
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 128
    .end local v4    # "selectionArgs":[Ljava/lang/String;
    .restart local v11    # "selectionArgs":[Ljava/lang/String;
    :catchall_1
    move-exception v0

    move-object v4, v11

    .end local v11    # "selectionArgs":[Ljava/lang/String;
    .restart local v4    # "selectionArgs":[Ljava/lang/String;
    goto :goto_0
.end method

.method public static getFavorietListId(Landroid/content/Context;)J
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/samsung/android/app/music/common/util/FavoriteTracksUtils;->getFavorietListId(Landroid/content/Context;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getFavorietListId(Landroid/content/Context;Z)J
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "makeIfNotExist"    # Z

    .prologue
    const-wide/16 v4, 0x0

    .line 35
    sget-wide v0, Lcom/samsung/android/app/music/common/util/FavoriteTracksUtils;->sFavoriteListId:J

    cmp-long v0, v0, v4

    if-gez v0, :cond_1

    .line 36
    sget-object v1, Lcom/samsung/android/app/music/common/util/FavoriteTracksUtils;->sFavoriteListToken:Ljava/lang/Object;

    monitor-enter v1

    .line 41
    :try_start_0
    sget-wide v2, Lcom/samsung/android/app/music/common/util/FavoriteTracksUtils;->sFavoriteListId:J

    cmp-long v0, v2, v4

    if-gez v0, :cond_0

    if-eqz p1, :cond_0

    .line 42
    if-nez p0, :cond_2

    .line 43
    const-string v0, "FavoriteTracksUtils"

    const-string/jumbo v2, "try to getFavorietListId but id is minus value and context is null. Please check your logic"

    invoke-static {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    :cond_1
    sget-wide v0, Lcom/samsung/android/app/music/common/util/FavoriteTracksUtils;->sFavoriteListId:J

    return-wide v0

    .line 46
    :cond_2
    :try_start_1
    invoke-static {p0}, Lcom/samsung/android/app/music/common/util/FavoriteTracksUtils;->makeFavoriteList(Landroid/content/Context;)V

    goto :goto_0

    .line 49
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static getFavoriteTrackCount(Landroid/content/Context;)I
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 232
    const/4 v7, 0x0

    .line 233
    .local v7, "count":I
    invoke-static {p0}, Lcom/samsung/android/app/music/common/util/FavoriteTracksUtils;->getFavorietListId(Landroid/content/Context;)J

    move-result-wide v8

    .line 234
    .local v8, "favoriteListId":J
    const-wide/16 v4, -0x1

    cmp-long v1, v8, v4

    if-nez v1, :cond_0

    .line 249
    :goto_0
    return v0

    .line 237
    :cond_0
    const-string v1, "local"

    .line 238
    invoke-static {v8, v9, v1}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists$Members;->getContentUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "count(*)"

    aput-object v4, v2, v0

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    .line 237
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 241
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 242
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 245
    :cond_1
    if-eqz v6, :cond_2

    .line 246
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move v0, v7

    .line 249
    goto :goto_0

    .line 245
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 246
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static hasFavoriteTracks([J)Z
    .locals 8
    .param p0, "playlistIds"    # [J

    .prologue
    const/4 v2, 0x0

    .line 223
    array-length v4, p0

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_0

    aget-wide v0, p0, v3

    .line 224
    .local v0, "playlistId":J
    const-wide/16 v6, -0xb

    cmp-long v5, v0, v6

    if-nez v5, :cond_1

    .line 225
    const/4 v2, 0x1

    .line 228
    .end local v0    # "playlistId":J
    :cond_0
    return v2

    .line 223
    .restart local v0    # "playlistId":J
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static isFavorite(Landroid/content/Context;J)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "audioId"    # J

    .prologue
    .line 189
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/samsung/android/app/music/common/util/FavoriteTracksUtils;->isFavorite(Landroid/content/Context;JZ)Z

    move-result v0

    return v0
.end method

.method public static isFavorite(Landroid/content/Context;JZ)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "audioId"    # J
    .param p3, "makeIfNotExist"    # Z

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 193
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    invoke-static {p0, p3}, Lcom/samsung/android/app/music/common/util/FavoriteTracksUtils;->getFavorietListId(Landroid/content/Context;Z)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    :cond_0
    move v8, v9

    .line 219
    :cond_1
    :goto_0
    return v8

    .line 197
    :cond_2
    const/4 v6, 0x0

    .line 198
    .local v6, "c":Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 201
    .local v8, "isFavorite":Z
    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/app/music/common/util/FavoriteTracksUtils;->getFavorietListId(Landroid/content/Context;)J

    move-result-wide v0

    const-string v2, "local"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists$Members;->getContentUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const-string v3, "audio_id=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 205
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    .line 200
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 206
    if-eqz v6, :cond_3

    .line 207
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 208
    .local v7, "count":I
    if-lez v7, :cond_4

    move v8, v10

    .line 209
    :goto_1
    if-le v7, v10, :cond_3

    .line 211
    const-string v0, "FavoriteTracksUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isFavorite : count "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    .end local v7    # "count":I
    :cond_3
    if-eqz v6, :cond_1

    .line 216
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .restart local v7    # "count":I
    :cond_4
    move v8, v9

    .line 208
    goto :goto_1

    .line 215
    .end local v7    # "count":I
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    .line 216
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method

.method public static isFavoritePlaylist(Ljava/lang/String;)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 55
    const-string v0, "FavoriteList#328795!432@1341"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static makeFavoriteList(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    const/4 v1, 0x0

    .line 67
    .local v1, "result":Landroid/net/Uri;
    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/app/music/common/util/FavoriteTracksUtils;->updateFavoriteListIdFromName(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 68
    const-string v3, "QuickList"

    const-string v4, "Playlist but there are no favorite list. So make it."

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    new-instance v2, Landroid/content/ContentValues;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 70
    .local v2, "value":Landroid/content/ContentValues;
    const-string v3, "name"

    const-string v4, "FavoriteList#328795!432@1341"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    sget-object v3, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->CONTENT_URI:Landroid/net/Uri;

    .line 72
    invoke-static {v3}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->getNotifyDisabledUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    .line 71
    invoke-static {p0, v3, v2}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->insert(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 82
    .end local v2    # "value":Landroid/content/ContentValues;
    :cond_0
    :goto_0
    return-void

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "FavoriteTracksUtils"

    const-string v4, "makeFavoriteList() - IllegalArgumentException!!"

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static updateFavoriteListIdFromAll(Landroid/content/Context;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 157
    const/4 v6, 0x0

    .line 159
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    const-string v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const-string v3, "_data LIKE \"%FavoriteList#328795!432@1341\""

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 163
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 164
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    sput-wide v0, Lcom/samsung/android/app/music/common/util/FavoriteTracksUtils;->sFavoriteListId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    if-eqz v6, :cond_0

    .line 169
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    move v0, v7

    .line 172
    :goto_0
    return v0

    .line 168
    :cond_1
    if-eqz v6, :cond_2

    .line 169
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move v0, v8

    .line 172
    goto :goto_0

    .line 168
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 169
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private static updateFavoriteListIdFromName(Landroid/content/Context;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 135
    const/4 v6, 0x0

    .line 137
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->CONTENT_URI_INCLUDE_NESTED:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const-string v3, "name= ?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v5, "FavoriteList#328795!432@1341"

    aput-object v5, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    .line 138
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 143
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 144
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 145
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    sput-wide v0, Lcom/samsung/android/app/music/common/util/FavoriteTracksUtils;->sFavoriteListId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    if-eqz v6, :cond_0

    .line 150
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    move v0, v7

    .line 153
    :goto_0
    return v0

    .line 149
    :cond_1
    if-eqz v6, :cond_2

    .line 150
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move v0, v8

    .line 153
    goto :goto_0

    .line 149
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 150
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private static updateFavoriteMediaType(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 176
    sget-wide v2, Lcom/samsung/android/app/music/common/util/FavoriteTracksUtils;->sFavoriteListId:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 177
    const-string v2, "external"

    .line 178
    invoke-static {v2}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->getNotifyDisabledUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 180
    .local v0, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/ContentValues;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 181
    .local v1, "value":Landroid/content/ContentValues;
    const-string v2, "media_type"

    const/4 v3, 0x4

    .line 182
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 181
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 183
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-wide v4, Lcom/samsung/android/app/music/common/util/FavoriteTracksUtils;->sFavoriteListId:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->update(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 186
    .end local v0    # "uri":Landroid/net/Uri;
    .end local v1    # "value":Landroid/content/ContentValues;
    :cond_0
    return-void
.end method
