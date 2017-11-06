.class Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistDetailFilterableImpl;
.super Ljava/lang/Object;
.source "PlaylistDetailFragment.java"

# interfaces
.implements Lcom/samsung/android/app/music/list/common/FilterOptionManager$Filterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PlaylistDetailFilterableImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;)V
    .locals 0

    .prologue
    .line 1230
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistDetailFilterableImpl;->this$0:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;
    .param p2, "x1"    # Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$1;

    .prologue
    .line 1230
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistDetailFilterableImpl;-><init>(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;)V

    return-void
.end method


# virtual methods
.method public getFilterOptionFromSettings(Landroid/content/SharedPreferences;)I
    .locals 14
    .param p1, "uiPreferences"    # Landroid/content/SharedPreferences;

    .prologue
    .line 1239
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistDetailFilterableImpl;->getFilterOptions()[I

    move-result-object v4

    const/4 v5, 0x1

    aget v7, v4, v5

    .line 1241
    .local v7, "defaultFilterOption":I
    iget-object v4, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistDetailFilterableImpl;->this$0:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1242
    .local v0, "context":Landroid/content/Context;
    iget-object v4, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistDetailFilterableImpl;->this$0:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "args_playlist_id"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 1243
    .local v10, "playlistId":J
    const-wide/16 v4, -0xb

    cmp-long v4, v10, v4

    if-nez v4, :cond_3

    const/4 v9, 0x1

    .line 1245
    .local v9, "isFavorite":Z
    :goto_0
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->CONTENT_URI:Landroid/net/Uri;

    .line 1246
    .local v1, "uri":Landroid/net/Uri;
    if-eqz v9, :cond_0

    .line 1247
    invoke-static {v0}, Lcom/samsung/android/app/music/common/util/FavoriteTracksUtils;->getFavorietListId(Landroid/content/Context;)J

    move-result-wide v10

    .line 1248
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    const-string/jumbo v5, "secFilter"

    const-string v12, "include"

    invoke-virtual {v4, v5, v12}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 1250
    :cond_0
    const/4 v4, 0x1

    new-array v2, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "sort_by"

    aput-object v5, v2, v4

    .line 1251
    .local v2, "projection":[Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1253
    .local v3, "selection":Ljava/lang/String;
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1254
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1253
    .local v6, "c":Landroid/database/Cursor;
    const/4 v5, 0x0

    .line 1255
    if-eqz v6, :cond_4

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1256
    const/4 v4, 0x0

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 1257
    .local v8, "filterOption":I
    const/4 v4, -0x1

    if-ne v8, v4, :cond_1

    .line 1258
    move v8, v7

    .line 1259
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v8}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistDetailFilterableImpl;->saveFilterOptionToSettings(Landroid/content/SharedPreferences;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1265
    :cond_1
    :goto_1
    if-eqz v6, :cond_2

    if-eqz v5, :cond_6

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 1266
    :cond_2
    :goto_2
    return v8

    .line 1243
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v3    # "selection":Ljava/lang/String;
    .end local v6    # "c":Landroid/database/Cursor;
    .end local v8    # "filterOption":I
    .end local v9    # "isFavorite":Z
    :cond_3
    const/4 v9, 0x0

    goto :goto_0

    .line 1262
    .restart local v1    # "uri":Landroid/net/Uri;
    .restart local v2    # "projection":[Ljava/lang/String;
    .restart local v3    # "selection":Ljava/lang/String;
    .restart local v6    # "c":Landroid/database/Cursor;
    .restart local v9    # "isFavorite":Z
    :cond_4
    move v8, v7

    .line 1263
    .restart local v8    # "filterOption":I
    const/4 v4, 0x0

    :try_start_2
    invoke-virtual {p0, v4, v8}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistDetailFilterableImpl;->saveFilterOptionToSettings(Landroid/content/SharedPreferences;I)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 1253
    .end local v8    # "filterOption":I
    :catch_0
    move-exception v4

    :try_start_3
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1265
    :catchall_0
    move-exception v5

    move-object v13, v5

    move-object v5, v4

    move-object v4, v13

    :goto_3
    if-eqz v6, :cond_5

    if-eqz v5, :cond_7

    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    :cond_5
    :goto_4
    throw v4

    .restart local v8    # "filterOption":I
    :catch_1
    move-exception v4

    invoke-virtual {v5, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_6
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .end local v8    # "filterOption":I
    :catch_2
    move-exception v12

    invoke-virtual {v5, v12}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_7
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :catchall_1
    move-exception v4

    goto :goto_3
.end method

.method public getFilterOptions()[I
    .locals 1

    .prologue
    .line 1234
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x2
        0x4
    .end array-data
.end method

.method public saveFilterOptionToSettings(Landroid/content/SharedPreferences;I)V
    .locals 11
    .param p1, "uiPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "filterBy"    # I

    .prologue
    .line 1271
    iget-object v8, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistDetailFilterableImpl;->this$0:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-virtual {v8}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1272
    .local v0, "context":Landroid/content/Context;
    iget-object v8, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistDetailFilterableImpl;->this$0:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-virtual {v8}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "args_playlist_id"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 1273
    .local v4, "playlistId":J
    const-wide/16 v8, -0xb

    cmp-long v8, v4, v8

    if-nez v8, :cond_2

    const/4 v2, 0x1

    .line 1275
    .local v2, "isFavorite":Z
    :goto_0
    sget-object v3, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->CONTENT_URI:Landroid/net/Uri;

    .line 1276
    .local v3, "uri":Landroid/net/Uri;
    if-eqz v2, :cond_0

    .line 1277
    invoke-static {v0}, Lcom/samsung/android/app/music/common/util/FavoriteTracksUtils;->getFavorietListId(Landroid/content/Context;)J

    move-result-wide v4

    .line 1278
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v8

    const-string/jumbo v9, "secFilter"

    const-string v10, "include"

    invoke-virtual {v8, v9, v10}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 1280
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "_id = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1281
    .local v7, "where":Ljava/lang/String;
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 1282
    .local v6, "values":Landroid/content/ContentValues;
    const-string/jumbo v8, "sort_by"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1283
    const/4 v8, 0x0

    invoke-static {v0, v3, v6, v7, v8}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->update(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1285
    if-eqz v2, :cond_1

    .line 1286
    iget-object v8, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistDetailFilterableImpl;->this$0:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-virtual {v8}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    new-instance v9, Landroid/content/Intent;

    const-string v10, "com.samsung.android.app.music.core.state.FAVORITE_CHANGED"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1290
    :cond_1
    iget-object v8, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistDetailFilterableImpl;->this$0:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-virtual {v8}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const/4 v9, 0x6

    invoke-static {v8, v9}, Lcom/samsung/android/app/music/provider/sync/MusicSyncService;->sync(Landroid/content/Context;I)V

    .line 1293
    const/4 v8, 0x4

    if-ne p2, v8, :cond_3

    const-string v1, "Custom order"

    .line 1296
    .local v1, "eventDetail":Ljava/lang/String;
    :goto_1
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistDetailFilterableImpl;->this$0:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-virtual {v9}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getScreenId()Ljava/lang/String;

    move-result-object v9

    const-string v10, "1541"

    invoke-virtual {v8, v9, v10, v1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1298
    return-void

    .line 1273
    .end local v1    # "eventDetail":Ljava/lang/String;
    .end local v2    # "isFavorite":Z
    .end local v3    # "uri":Landroid/net/Uri;
    .end local v6    # "values":Landroid/content/ContentValues;
    .end local v7    # "where":Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 1293
    .restart local v2    # "isFavorite":Z
    .restart local v3    # "uri":Landroid/net/Uri;
    .restart local v6    # "values":Landroid/content/ContentValues;
    .restart local v7    # "where":Ljava/lang/String;
    :cond_3
    const-string v1, "Name"

    goto :goto_1
.end method
