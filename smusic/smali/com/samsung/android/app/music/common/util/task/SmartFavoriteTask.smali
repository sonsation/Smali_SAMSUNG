.class public Lcom/samsung/android/app/music/common/util/task/SmartFavoriteTask;
.super Lcom/samsung/android/app/music/common/util/task/PlaylistItemTask;
.source "SmartFavoriteTask.java"


# static fields
.field public static final MAX_FAVORITE_ITEM:I = 0x3e8


# instance fields
.field private final mBeAdded:Z

.field private final mInitialItemLength:I

.field private mItemIds:[J

.field private mShowToast:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;[JZZZ)V
    .locals 1
    .param p1, "a"    # Landroid/app/Activity;
    .param p2, "itemIds"    # [J
    .param p3, "beAdded"    # Z
    .param p4, "showToast"    # Z
    .param p5, "finish"    # Z

    .prologue
    .line 44
    invoke-direct {p0, p1, p5}, Lcom/samsung/android/app/music/common/util/task/PlaylistItemTask;-><init>(Landroid/app/Activity;Z)V

    .line 45
    array-length v0, p2

    iput v0, p0, Lcom/samsung/android/app/music/common/util/task/SmartFavoriteTask;->mInitialItemLength:I

    .line 46
    iput-object p2, p0, Lcom/samsung/android/app/music/common/util/task/SmartFavoriteTask;->mItemIds:[J

    .line 47
    iput-boolean p3, p0, Lcom/samsung/android/app/music/common/util/task/SmartFavoriteTask;->mBeAdded:Z

    .line 48
    iput-boolean p4, p0, Lcom/samsung/android/app/music/common/util/task/SmartFavoriteTask;->mShowToast:Z

    .line 49
    return-void
.end method

.method private static checkFavorites(Landroid/content/Context;[J)[J
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "itemIds"    # [J

    .prologue
    const/4 v13, 0x0

    const/4 v2, 0x1

    const/4 v12, 0x0

    .line 153
    const/4 v7, 0x0

    .line 157
    .local v7, "favoriteSelectionIds":[J
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 158
    .local v10, "value":Landroid/content/ContentValues;
    const-string v0, "is_favorite"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 159
    const-string v11, "_id in (select audio_id from audio_playlists_map where playlist_id = ?)"

    .line 161
    .local v11, "where":Ljava/lang/String;
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->CONTENT_URI:Landroid/net/Uri;

    .line 162
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->getNotifyDisabledUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/String;

    .line 163
    invoke-static {p0}, Lcom/samsung/android/app/music/common/util/FavoriteTracksUtils;->getFavorietListId(Landroid/content/Context;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v12

    .line 161
    invoke-static {p0, v0, v10, v11, v1}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->update(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 166
    const-string v0, "_id"

    .line 167
    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->convertAudioIdsToSelection(Ljava/lang/String;[J)Ljava/lang/String;

    move-result-object v9

    .line 168
    .local v9, "selection":Ljava/lang/String;
    const/4 v6, 0x0

    .line 170
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "is_favorite = 0 AND "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 173
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v7, v0, [J

    .line 175
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v8, v0, :cond_0

    .line 176
    invoke-interface {v6, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 177
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    aput-wide v0, v7, v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 181
    .end local v8    # "i":I
    :cond_0
    if-eqz v6, :cond_1

    .line 182
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 187
    :cond_1
    const-string v0, "is_favorite"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 189
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->CONTENT_URI:Landroid/net/Uri;

    .line 190
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->getNotifyDisabledUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "is_favorite = 1"

    .line 189
    invoke-static {p0, v0, v10, v1, v13}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->update(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 194
    return-object v7

    .line 181
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 182
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public static isFavoriteMaximumReached(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 198
    sget-boolean v2, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-nez v2, :cond_1

    .line 202
    :cond_0
    :goto_0
    return v1

    .line 201
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/app/music/common/util/FavoriteTracksUtils;->getFavorietListId(Landroid/content/Context;)J

    move-result-wide v2

    invoke-static {p0, v2, v3}, Lcom/samsung/android/app/music/common/util/task/SmartFavoriteTask;->getPlaylistSongCount(Landroid/content/Context;J)I

    move-result v0

    .line 202
    .local v0, "base":I
    const/16 v2, 0x3e8

    if-lt v0, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private makeSongListToAdd(Landroid/content/Context;[J)Z
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ids"    # [J

    .prologue
    const/4 v4, 0x0

    .line 206
    sget-boolean v5, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/samsung/android/app/music/common/util/task/SmartFavoriteTask;->mBeAdded:Z

    if-eqz v5, :cond_0

    .line 207
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/common/util/task/SmartFavoriteTask;->checkFavorites(Landroid/content/Context;[J)[J

    move-result-object p2

    .line 208
    if-nez p2, :cond_1

    move v3, v4

    .line 210
    .local v3, "size":I
    :goto_0
    invoke-static {p1}, Lcom/samsung/android/app/music/common/util/FavoriteTracksUtils;->getFavorietListId(Landroid/content/Context;)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/samsung/android/app/music/common/util/task/SmartFavoriteTask;->getPlaylistSongCount(Landroid/content/Context;J)I

    move-result v0

    .line 211
    .local v0, "base":I
    add-int v5, v0, v3

    const/16 v6, 0x3e8

    if-le v5, v6, :cond_2

    .line 214
    rsub-int v1, v0, 0x3e8

    .line 215
    .local v1, "maxSize":I
    new-array v2, v1, [J

    .line 216
    .local v2, "newIds":[J
    invoke-static {p2, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 217
    iput-object v2, p0, Lcom/samsung/android/app/music/common/util/task/SmartFavoriteTask;->mItemIds:[J

    .line 219
    const/4 v4, 0x1

    .line 225
    .end local v0    # "base":I
    .end local v1    # "maxSize":I
    .end local v2    # "newIds":[J
    .end local v3    # "size":I
    :cond_0
    :goto_1
    return v4

    .line 208
    :cond_1
    array-length v3, p2

    goto :goto_0

    .line 221
    .restart local v0    # "base":I
    .restart local v3    # "size":I
    :cond_2
    if-eqz p2, :cond_0

    .line 222
    iput-object p2, p0, Lcom/samsung/android/app/music/common/util/task/SmartFavoriteTask;->mItemIds:[J

    goto :goto_1
.end method

.method public static setMessage(Landroid/content/Context;ZII)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "addItems"    # Z
    .param p2, "size"    # I
    .param p3, "itemLength"    # I

    .prologue
    .line 103
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 104
    .local v1, "res":Landroid/content/res/Resources;
    const/4 v0, 0x0

    .line 106
    .local v0, "message":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 107
    if-nez p2, :cond_1

    .line 108
    const v2, 0x7f0a0075

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 117
    :cond_0
    :goto_0
    return-object v0

    .line 109
    :cond_1
    if-ge p2, p3, :cond_0

    .line 110
    const v2, 0x7f0c0003

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, p2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private setSmartFavorites(Landroid/content/Context;[J)I
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "itemIds"    # [J

    .prologue
    .line 86
    iget-boolean v2, p0, Lcom/samsung/android/app/music/common/util/task/SmartFavoriteTask;->mBeAdded:Z

    if-eqz v2, :cond_0

    .line 87
    iget-object v2, p0, Lcom/samsung/android/app/music/common/util/task/SmartFavoriteTask;->mContext:Landroid/content/Context;

    invoke-static {v2, p2}, Lcom/samsung/android/app/music/common/util/task/SmartFavoriteTask;->checkFavorites(Landroid/content/Context;[J)[J

    move-result-object v2

    .line 88
    invoke-static {p1}, Lcom/samsung/android/app/music/common/util/FavoriteTracksUtils;->getFavorietListId(Landroid/content/Context;)J

    move-result-wide v4

    .line 87
    invoke-static {p1, v2, v4, v5}, Lcom/samsung/android/app/music/common/util/task/SmartFavoriteTask;->addToPlaylistInternal(Landroid/content/Context;[JJ)I

    move-result v0

    .line 89
    .local v0, "result":I
    invoke-static {p1}, Lcom/samsung/android/app/music/common/util/ListUtils;->saveFavoritePlaylistToPref(Landroid/content/Context;)V

    .line 98
    :goto_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.android.app.music.core.state.FAVORITE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 99
    return v0

    .line 92
    .end local v0    # "result":I
    :cond_0
    const-string v2, "audio_id"

    .line 93
    invoke-static {v2, p2}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->convertAudioIdsToSelection(Ljava/lang/String;[J)Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, "selection":Ljava/lang/String;
    invoke-static {p1}, Lcom/samsung/android/app/music/common/util/FavoriteTracksUtils;->getFavorietListId(Landroid/content/Context;)J

    move-result-wide v2

    const-string v4, "local"

    invoke-static {v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists$Members;->getContentUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    .line 94
    invoke-static {p1, v2, v1, v3}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->delete(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .restart local v0    # "result":I
    goto :goto_0
.end method

.method public static toggleFavorites(Landroid/content/Context;JZZ)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "audioId"    # J
    .param p3, "isFavorite"    # Z
    .param p4, "showToast"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 122
    new-array v0, v3, [J

    aput-wide p1, v0, v4

    .line 124
    .local v0, "ids":[J
    if-nez p3, :cond_1

    .line 125
    invoke-static {p0}, Lcom/samsung/android/app/music/common/util/FavoriteTracksUtils;->getFavorietListId(Landroid/content/Context;)J

    move-result-wide v6

    invoke-static {p0, v0, v6, v7}, Lcom/samsung/android/app/music/common/util/task/SmartFavoriteTask;->addToPlaylistInternal(Landroid/content/Context;[JJ)I

    .line 126
    invoke-static {p0}, Lcom/samsung/android/app/music/common/util/ListUtils;->saveFavoritePlaylistToPref(Landroid/content/Context;)V

    .line 134
    :goto_0
    if-eqz p4, :cond_0

    .line 135
    if-nez p3, :cond_2

    move v2, v3

    :goto_1
    array-length v5, v0

    array-length v6, v0

    invoke-static {p0, v2, v5, v6}, Lcom/samsung/android/app/music/common/util/task/SmartFavoriteTask;->setMessage(Landroid/content/Context;ZII)Ljava/lang/String;

    move-result-object v1

    .line 136
    .local v1, "message":Ljava/lang/String;
    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 138
    .end local v1    # "message":Ljava/lang/String;
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.samsung.android.app.music.core.state.FAVORITE_CHANGED"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 139
    if-nez p3, :cond_3

    :goto_2
    return v3

    .line 129
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/app/music/common/util/FavoriteTracksUtils;->getFavorietListId(Landroid/content/Context;)J

    move-result-wide v6

    const-string v2, "local"

    invoke-static {v6, v7, v2}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists$Members;->getContentUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "audio_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 128
    invoke-static {p0, v2, v5, v6}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->delete(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move v2, v4

    .line 135
    goto :goto_1

    :cond_3
    move v3, v4

    .line 139
    goto :goto_2
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/16 v2, 0x3e8

    const/4 v3, 0x0

    .line 53
    iget-object v0, p0, Lcom/samsung/android/app/music/common/util/task/SmartFavoriteTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/util/task/SmartFavoriteTask;->isFavoriteMaximumReached(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    const-string v0, "1"

    iget-boolean v1, p0, Lcom/samsung/android/app/music/common/util/task/SmartFavoriteTask;->mFinish:Z

    .line 55
    invoke-static {v0, v2, v1}, Lcom/samsung/android/app/music/milk/dialog/FavoriteMaximumReachedDialog;->getInstance(Ljava/lang/String;IZ)Lcom/samsung/android/app/music/milk/dialog/FavoriteMaximumReachedDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/common/util/task/SmartFavoriteTask;->mActivity:Landroid/app/Activity;

    .line 56
    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "FavoriteMaximumReachedDialog"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/milk/dialog/FavoriteMaximumReachedDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 57
    iput-boolean v3, p0, Lcom/samsung/android/app/music/common/util/task/SmartFavoriteTask;->mShowToast:Z

    .line 58
    iput-boolean v3, p0, Lcom/samsung/android/app/music/common/util/task/SmartFavoriteTask;->mFinish:Z

    .line 59
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 67
    :goto_0
    return-object v0

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/util/task/SmartFavoriteTask;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/util/task/SmartFavoriteTask;->mItemIds:[J

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/common/util/task/SmartFavoriteTask;->makeSongListToAdd(Landroid/content/Context;[J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    const-string v0, "1"

    iget-boolean v1, p0, Lcom/samsung/android/app/music/common/util/task/SmartFavoriteTask;->mFinish:Z

    .line 62
    invoke-static {v0, v2, v1}, Lcom/samsung/android/app/music/milk/dialog/FavoriteMaximumReachedDialog;->getInstance(Ljava/lang/String;IZ)Lcom/samsung/android/app/music/milk/dialog/FavoriteMaximumReachedDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/common/util/task/SmartFavoriteTask;->mActivity:Landroid/app/Activity;

    .line 63
    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "FavoriteMaximumReachedDialog"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/milk/dialog/FavoriteMaximumReachedDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 64
    iput-boolean v3, p0, Lcom/samsung/android/app/music/common/util/task/SmartFavoriteTask;->mShowToast:Z

    .line 65
    iput-boolean v3, p0, Lcom/samsung/android/app/music/common/util/task/SmartFavoriteTask;->mFinish:Z

    .line 67
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/common/util/task/SmartFavoriteTask;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/util/task/SmartFavoriteTask;->mItemIds:[J

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/common/util/task/SmartFavoriteTask;->setSmartFavorites(Landroid/content/Context;[J)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/common/util/task/SmartFavoriteTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected setLoadingProgress()Z
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method protected setMessage(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 4
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/samsung/android/app/music/common/util/task/SmartFavoriteTask;->mShowToast:Z

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/samsung/android/app/music/common/util/task/SmartFavoriteTask;->mContext:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/samsung/android/app/music/common/util/task/SmartFavoriteTask;->mBeAdded:Z

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, p0, Lcom/samsung/android/app/music/common/util/task/SmartFavoriteTask;->mInitialItemLength:I

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/app/music/common/util/task/SmartFavoriteTask;->setMessage(Landroid/content/Context;ZII)Ljava/lang/String;

    move-result-object v0

    .line 75
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
